Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst.typst.6bcdb96655de51b1-cgu.0?download=true
inline.NumInlined: 14587
inline.NumDeleted: 6611
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_RINvMs3_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB6_11VirtualPath3newReECs9fPPV5zPXBl_5typst:bb.a

bb.n:                                             ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i
  %lhsc1.i.i.i = load i8, ptr %.sroa.0.1.i.i.i.i.i, align 1, !noalias !5306
  %i.bp = icmp eq i8 %lhsc1.i.i.i, 46
  br i1 %i.bp, label %.thread.i, label %bb.p

bb.o:                                             ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i
  %i.bq = load i16, ptr %.sroa.0.1.i.i.i.i.i, align 1
  %i.br = icmp ne i16 %i.bq, 11822
  %i.bs = zext i1 %i.br to i32
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5306
  invoke void @_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_7Segment3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i)
          to label %.noexc24.i unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5299

.noexc24.i:                                       ; preds = %bb.p
  %i.bu = load i64, ptr %i.b, align 8, !range !33, !noalias !5306, !noundef !28
  %i.bv = trunc nuw i64 %i.bu to i1
  br i1 %i.bv, label %.split95.i, label %bb.s

.split95.i:                                       ; preds = %.noexc24.i, %.noexc24.us.us.i
  %i.bw = load i64, ptr %i.z, align 8, !noalias !5306, !noundef !28
  %i.bx = icmp eq i64 %i.bw, 1
  br i1 %i.bx, label %bb.q, label %bb.r, !prof !43

bb.q:                                             ; preds = %.split95.i
  %i.by = load ptr, ptr %i.y, align 8, !noalias !5306, !nonnull !28, !noundef !28
  %lhsc.i.i.i = load i8, ptr %i.by, align 1, !noalias !5306
  %i.bz = icmp eq i8 %lhsc.i.i.i, 92
  br i1 %i.bz, label %bb.t, label %bb.r, !prof !43

bb.r:                                             ; preds = %bb.q, %.split95.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #65
          to label %.noexc25.i unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5299

.noexc25.i:                                       ; preds = %bb.r
  unreachable

.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %.thread.i, %bb.p, %bb.r, %.thread.us.us.i, %bb.e
  %lpad.loopexit.split-lp43 = landingpad { ptr, i32 }
          cleanup
  %.val22.i = load ptr, ptr %i.e, align 8, !alias.scope !5312, !noalias !5299
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 15
  %.val23.i = load i8, ptr %i.ca, align 1, !alias.scope !5312, !noalias !5299, !noundef !28
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4path8SegmentsECs9fPPV5zPXBl_5typst(ptr %.val22.i, i8 %.val23.i) #62
          to label %bb.y unwind label %bb.x, !noalias !5299

bb.s:                                             ; preds = %.noexc24.i
  %i.cb = load ptr, ptr %i.y, align 8, !noalias !5306, !nonnull !28, !noundef !28
  %i.cc = load i64, ptr %i.z, align 8, !noalias !5306, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5306
  %i.cd = ptrtoint ptr %i.cb to i64               ; 2 uses
  %.sroa.829.0.extract.trunc.i = trunc i64 %i.cd to i8
  %.sroa.829.1.extract.shift.i = lshr i64 %i.cd, 8
  %.sroa.829.1.extract.trunc.i = trunc nuw i64 %.sroa.829.1.extract.shift.i to i56
  br label %.thread.i

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5306
  br label %.split100.i

.thread.i:                                        ; preds = %bb.s, %bb.o, %bb.n, %bb.m
  %.sroa.829.1.extract.trunc46.i = phi i56 [ %.sroa.829.1.extract.trunc.i, %bb.s ], [ 0, %bb.o ], [ 0, %bb.m ], [ 0, %bb.n ]
  %.sroa.829.0.extract.trunc45.i = phi i8 [ %.sroa.829.0.extract.trunc.i, %bb.s ], [ undef, %bb.o ], [ undef, %bb.m ], [ undef, %bb.n ]
  %.sroa.0.0.ph44.i = phi i64 [ 3, %bb.s ], [ 2, %bb.o ], [ %spec.select.i.i, %bb.m ], [ 1, %bb.n ]
  %.sroa.11.0.ph43.i = phi i64 [ %i.cc, %bb.s ], [ undef, %bb.o ], [ undef, %bb.m ], [ undef, %bb.n ]
  store i64 %.sroa.0.0.ph44.i, ptr %i.c, align 8, !noalias !5299
  store i8 %.sroa.829.0.extract.trunc45.i, ptr %.sroa.610.0..sroa_idx11.i, align 8, !noalias !5299
  store i56 %.sroa.829.1.extract.trunc46.i, ptr %.sroa.8.0..sroa_idx13.i, align 1, !noalias !5299
  store i64 %.sroa.11.0.ph43.i, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx13.sroa_idx.i, align 8, !noalias !5299
  %i.ce = invoke noundef i8 @_RNvMs7_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_8Segments14push_component(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5299 ; 2 uses

bb.u:                                             ; preds = %.thread.i
  %.not20.i = icmp eq i8 %i.ce, 2
  br i1 %.not20.i, label %.split.i, label %.split100.i

.split100.i:                                      ; preds = %bb.u, %bb.t, %bb.g
  %.us-phi104.sink.i = phi i8 [ 1, %bb.t ], [ %i.ao, %bb.g ], [ %i.ce, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5299
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !5312, !noalias !5299 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 15
  %.val21.i = load i8, ptr %i.cf, align 1, !alias.scope !5312, !noalias !5299, !noundef !28
  %.not.i.i.i.i.i = icmp sgt i8 %.val21.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.z

bb.v:                                             ; preds = %.split100.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %.not.i.i.i.i.i.i26.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  %i.cg = getelementptr inbounds i8, ptr %.val.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i26.i, label %bb.z, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.ch = atomicrmw add ptr %i.cg, i64 -1 release, align 8, !noalias !5313
  %.not.i.i.i.i.i27.i = icmp eq i64 %i.ch, 1
  br i1 %.not.i.i.i.i.i27.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i, label %bb.z

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5313
  %i.ci = getelementptr i8, ptr %.val.i, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ci, align 8, !noalias !5313, !noundef !28 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i, label %bb.w, !prof !43

bb.w:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i
  call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #61, !noalias !5313
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i
  %i.cj = add nuw nsw i64 %.val.i.i.i.i.i.i.i, 16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.cg, ptr %i.ck, align 8, !noalias !5313
  store i64 8, ptr %i.a, align 8, !noalias !5313
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.cj, ptr %i.cl, align 8, !noalias !5313
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !5313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5313
  br label %bb.z

bb.x:                                             ; preds = %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !5299
  unreachable

bb.y:                                             ; preds = %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp43

bb.z:                                             ; preds = %bb.v, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i, %.split100.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.us-phi104.sink.i, ptr %i.cn, align 1
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.aa

.loopexit:                                        ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i, %.split.i, %bb.g, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.us.lr.ph.i, %.split.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5299
  %.sroa.8.8..sroa_idx4 = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 6 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.8.8..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !noalias !5314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 6 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.7.8..sroa_idx, ptr noundef nonnull align 2 dereferenceable(16) %.sroa.8.8..sroa_idx4, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 2 dereferenceable(16) %.sroa.7.8..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  store i8 0, ptr %0, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit, %bb.z
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1P_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB1N_3map11MapConsumerIB5J_IB5J_INtNtB1N_10while_some17WhileSomeConsumerNtNtB1N_6extend15ListVecConsumerENCINvNvXs2_NtB1P_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB1N_20FromParallelIteratorIB7S_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB9u_7compile16write_virtual_fss_0ENvMs0_B3q_B3n_4refsEE0NCB1G_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBbX_3vec3VecB9q_EEBbQ_E0TBbQ_BbQ_EEB9u_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [200 x i8], align 8               ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5325)
  %i.b = tail call noundef nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtBd_8Registry14in_worker_cold10LOCK_LATCH0s_023___RUST_STD_INTERNAL_VAL)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5326
  store ptr %i.b, ptr %i.a, align 8, !noalias !5326
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(136) %2, i64 136, i1 false), !noalias !5327
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 3 uses
  store i64 0, ptr %i.d, align 8, !noalias !5326
  invoke void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB2Z_3map11MapConsumerIB6V_IB6V_INtNtB2Z_10while_some17WhileSomeConsumerNtNtB2Z_6extend15ListVecConsumerENCINvNvXs2_NtB31_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB2Z_20FromParallelIteratorIB94_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtBaG_7compile16write_virtual_fss_0ENvMs0_B4C_B4z_4refsEE0NCB2S_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBd9_3vec3VecBaC_EEBd2_E0TBd2_Bd2_EE00Bey_ENtB5_3Job7executeBaG_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.d, !noalias !5326, !inline_history !5324

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !noalias !5326, !noundef !28
  invoke void @_RNvMs3_NtCsf1gSX8u3EQ2_10rayon_core5latchNtB5_9LockLatch14wait_and_reset(ptr noundef nonnull align 4 %i.e)
          to label %bb.c unwind label %bb.d, !noalias !5326, !inline_history !5324

bb.c:                                             ; preds = %bb.b
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %i.d, align 8, !noalias !5326
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.f = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !5326 ; 3 uses
  switch i64 %.sroa.3.0.copyload.i.i.i, label %default.unreachable1.i.i.i.i.i [
    i64 0, label %.noexc.i.i.i
    i64 1, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsf1gSX8u3EQ2_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB3e_3map11MapConsumerIB7a_IB7a_INtNtB3e_10while_some17WhileSomeConsumerNtNtB3e_6extend15ListVecConsumerENCINvNvXs2_NtB3g_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB3e_20FromParallelIteratorIB9j_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtBaV_7compile16write_virtual_fss_0ENvMs0_B4R_B4O_4refsEE0NCB37_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBdo_3vec3VecBaR_EEBdh_E0TBdh_Bdh_EE0BeN_EBaV_.exit
    i64 2, label %.noexc6.i.i.i
  ], !prof !59

default.unreachable1.i.i.i.i.i:                   ; preds = %bb.c
  unreachable

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @579) #65, !noalias !5326, !inline_history !5324
  unreachable

.noexc6.i.i.i:                                    ; preds = %bb.c
  %i.g = extractelement <2 x ptr> %i.f, i64 0     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = extractelement <2 x ptr> %i.f, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  call void @_RNvNtCsf1gSX8u3EQ2_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h) #61, !noalias !5326, !inline_history !5324
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB3t_3map11MapConsumerIB7p_IB7p_INtNtB3t_10while_some17WhileSomeConsumerNtNtB3t_6extend15ListVecConsumerENCINvNvXs2_NtB3v_6resultINtNtB4_6result6ResultppEINtB3t_20FromParallelIteratorIB9y_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtBaU_7compile16write_virtual_fss_0ENvMs0_B56_B53_4refsEE0NCB3m_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBdn_3vec3VecBaQ_EEBdg_E0TBdg_Bdg_EE00BeM_EEBaU_.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm.i.i.i

bb.d:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultTINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEB1l_EEEB2J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB3t_3map11MapConsumerIB7p_IB7p_INtNtB3t_10while_some17WhileSomeConsumerNtNtB3t_6extend15ListVecConsumerENCINvNvXs2_NtB3v_6resultINtNtB4_6result6ResultppEINtB3t_20FromParallelIteratorIB9y_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtBaU_7compile16write_virtual_fss_0ENvMs0_B56_B53_4refsEE0NCB3m_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBdn_3vec3VecBaQ_EEBdg_E0TBdg_Bdg_EE00BeM_EEBaU_.exit.i.i.i unwind label %bb.e, !noalias !5326, !inline_history !5324

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !5326, !inline_history !5324
  unreachable

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsf1gSX8u3EQ2_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB3e_3map11MapConsumerIB7a_IB7a_INtNtB3e_10while_some17WhileSomeConsumerNtNtB3e_6extend15ListVecConsumerENCINvNvXs2_NtB3g_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB3e_20FromParallelIteratorIB9j_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtBaV_7compile16write_virtual_fss_0ENvMs0_B4R_B4O_4refsEE0NCB37_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBdo_3vec3VecBaR_EEBdh_E0TBdh_Bdh_EE0BeN_EBaV_.exit: ; preds = %bb.c
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i, i64 32, i1 false), !noalias !5328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5326
  store <2 x ptr> %i.f, ptr %0, align 8, !alias.scope !5325
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1P_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB1N_3map11MapConsumerIB4d_INtNtB1N_10while_some17WhileSomeConsumerNtNtB1N_6extend15ListVecConsumerENCINvNvXs2_NtB1P_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB1N_20FromParallelIteratorIB6h_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB7T_7compile12export_images_0EE0NCB1G_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB9Y_3vec3VecB7P_EEB9R_E0TB9R_B9R_EEB7T_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5339)
  %i.b = tail call noundef nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtBd_8Registry14in_worker_cold10LOCK_LATCH0s_023___RUST_STD_INTERNAL_VAL)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5340
  store ptr %i.b, ptr %i.a, align 8, !noalias !5340
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.c, ptr noundef nonnull align 8 dereferenceable(120) %2, i64 120, i1 false), !noalias !5341
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 3 uses
  store i64 0, ptr %i.d, align 8, !noalias !5340
  invoke void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB2Z_3map11MapConsumerIB5p_INtNtB2Z_10while_some17WhileSomeConsumerNtNtB2Z_6extend15ListVecConsumerENCINvNvXs2_NtB31_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB2Z_20FromParallelIteratorIB7t_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB95_7compile12export_images_0EE0NCB2S_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBba_3vec3VecB91_EEBb3_E0TBb3_Bb3_EE00Bcz_ENtB5_3Job7executeB95_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.d, !noalias !5340, !inline_history !5338

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !noalias !5340, !noundef !28
  invoke void @_RNvMs3_NtCsf1gSX8u3EQ2_10rayon_core5latchNtB5_9LockLatch14wait_and_reset(ptr noundef nonnull align 4 %i.e)
          to label %bb.c unwind label %bb.d, !noalias !5340, !inline_history !5338

bb.c:                                             ; preds = %bb.b
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %i.d, align 8, !noalias !5340
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.f = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !5340 ; 3 uses
  switch i64 %.sroa.3.0.copyload.i.i.i, label %default.unreachable1.i.i.i.i.i [
    i64 0, label %.noexc.i.i.i
    i64 1, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsf1gSX8u3EQ2_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB3e_3map11MapConsumerIB5E_INtNtB3e_10while_some17WhileSomeConsumerNtNtB3e_6extend15ListVecConsumerENCINvNvXs2_NtB3g_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB3e_20FromParallelIteratorIB7I_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB9k_7compile12export_images_0EE0NCB37_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBbp_3vec3VecB9g_EEBbi_E0TBbi_Bbi_EE0BcO_EB9k_.exit
    i64 2, label %.noexc6.i.i.i
  ], !prof !59

default.unreachable1.i.i.i.i.i:                   ; preds = %bb.c
  unreachable

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @579) #65, !noalias !5340, !inline_history !5338
  unreachable

.noexc6.i.i.i:                                    ; preds = %bb.c
  %i.g = extractelement <2 x ptr> %i.f, i64 0     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = extractelement <2 x ptr> %i.f, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  call void @_RNvNtCsf1gSX8u3EQ2_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h) #61, !noalias !5340, !inline_history !5338
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB3t_3map11MapConsumerIB5T_INtNtB3t_10while_some17WhileSomeConsumerNtNtB3t_6extend15ListVecConsumerENCINvNvXs2_NtB3v_6resultINtNtB4_6result6ResultppEINtB3t_20FromParallelIteratorIB7X_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB9j_7compile12export_images_0EE0NCB3m_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBbo_3vec3VecB9f_EEBbh_E0TBbh_Bbh_EE00BcN_EEB9j_.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm.i.i.i

bb.d:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultTINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEB1l_EEEB2J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB3t_3map11MapConsumerIB5T_INtNtB3t_10while_some17WhileSomeConsumerNtNtB3t_6extend15ListVecConsumerENCINvNvXs2_NtB3v_6resultINtNtB4_6result6ResultppEINtB3t_20FromParallelIteratorIB7X_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB9j_7compile12export_images_0EE0NCB3m_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBbo_3vec3VecB9f_EEBbh_E0TBbh_Bbh_EE00BcN_EEB9j_.exit.i.i.i unwind label %bb.e, !noalias !5340, !inline_history !5338

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !5340, !inline_history !5338
  unreachable

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsf1gSX8u3EQ2_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB3e_3map11MapConsumerIB5E_INtNtB3e_10while_some17WhileSomeConsumerNtNtB3e_6extend15ListVecConsumerENCINvNvXs2_NtB3g_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB3e_20FromParallelIteratorIB7I_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB9k_7compile12export_images_0EE0NCB37_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBbp_3vec3VecB9g_EEBbi_E0TBbi_Bbi_EE0BcO_EB9k_.exit: ; preds = %bb.c
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i, i64 32, i1 false), !noalias !5342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5340
  store <2 x ptr> %i.f, ptr %0, align 8, !alias.scope !5339
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1Q_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB1O_3map11MapConsumerIB5K_IB5K_INtNtB1O_10while_some17WhileSomeConsumerNtNtB1O_6extend15ListVecConsumerENCINvNvXs2_NtB1Q_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB1O_20FromParallelIteratorIB7T_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB9v_7compile16write_virtual_fss_0ENvMs0_B3r_B3o_4refsEE0NCB1H_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBbY_3vec3VecB9r_EEBbR_E0TBbR_BbR_EEB9v_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noundef nonnull align 128 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [224 x i8], align 8               ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.d = load i64, ptr %i.c, align 128, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 200 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(136) %3, i64 136, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 3 uses
  store i64 0, ptr %i.f, align 8
  invoke void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB2I_3map11MapConsumerIB6E_IB6E_INtNtB2I_10while_some17WhileSomeConsumerNtNtB2I_6extend15ListVecConsumerENCINvNvXs2_NtB2K_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB2I_20FromParallelIteratorIB8N_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtBap_7compile16write_virtual_fss_0ENvMs0_B4l_B4i_4refsEE0NCB2B_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBcS_3vec3VecBal_EEBcL_E0TBcL_BcL_EE0Beh_ENtB5_3Job7executeBap_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.c, !prof !43

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs8_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.i = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx13, align 8 ; 3 uses
  switch i64 %.sroa.3.0.copyload, label %default.unreachable1.i.i [
    i64 0, label %.noexc
    i64 1, label %bb.e
    i64 2, label %.noexc11
  ], !prof !59

default.unreachable1.i.i:                         ; preds = %bb.d
  unreachable

.noexc:                                           ; preds = %bb.d
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @579) #65
  unreachable

.noexc11:                                         ; preds = %bb.d
  %i.j = extractelement <2 x ptr> %i.i, i64 0     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = extractelement <2 x ptr> %i.i, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  call void @_RNvNtCsf1gSX8u3EQ2_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k) #61
  unreachable

bb.e:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store <2 x ptr> %i.i, ptr %0, align 8, !alias.scope !5348
  %.sroa.5.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx15, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB3b_3map11MapConsumerIB77_IB77_INtNtB3b_10while_some17WhileSomeConsumerNtNtB3b_6extend15ListVecConsumerENCINvNvXs2_NtB3d_6resultINtNtB4_6result6ResultppEINtB3b_20FromParallelIteratorIB9g_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtBaC_7compile16write_virtual_fss_0ENvMs0_B4O_B4L_4refsEE0NCB34_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBd5_3vec3VecBay_EEBcY_E0TBcY_BcY_EE0Beu_EEBaC_.exit: ; preds = %bb.f
  resume { ptr, i32 } %lpad.thr_comm

bb.f:                                             ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultTINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEB1l_EEEB2J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB3b_3map11MapConsumerIB77_IB77_INtNtB3b_10while_some17WhileSomeConsumerNtNtB3b_6extend15ListVecConsumerENCINvNvXs2_NtB3d_6resultINtNtB4_6result6ResultppEINtB3b_20FromParallelIteratorIB9g_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtBaC_7compile16write_virtual_fss_0ENvMs0_B4O_B4L_4refsEE0NCB34_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBd5_3vec3VecBay_EEBcY_E0TBcY_BcY_EE0Beu_EEBaC_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1Q_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB1O_3map11MapConsumerIB4e_INtNtB1O_10while_some17WhileSomeConsumerNtNtB1O_6extend15ListVecConsumerENCINvNvXs2_NtB1Q_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB1O_20FromParallelIteratorIB6i_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB7U_7compile12export_images_0EE0NCB1H_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB9Z_3vec3VecB7Q_EEB9S_E0TB9S_B9S_EEB7U_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noundef nonnull align 128 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.d = load i64, ptr %i.c, align 128, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(120) %3, i64 120, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 3 uses
  store i64 0, ptr %i.f, align 8
  invoke void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB2I_3map11MapConsumerIB58_INtNtB2I_10while_some17WhileSomeConsumerNtNtB2I_6extend15ListVecConsumerENCINvNvXs2_NtB2K_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB2I_20FromParallelIteratorIB7c_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB8O_7compile12export_images_0EE0NCB2B_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBaT_3vec3VecB8K_EEBaM_E0TBaM_BaM_EE0Bci_ENtB5_3Job7executeB8O_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.c, !prof !43

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs8_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.i = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx13, align 8 ; 3 uses
  switch i64 %.sroa.3.0.copyload, label %default.unreachable1.i.i [
    i64 0, label %.noexc
    i64 1, label %bb.e
    i64 2, label %.noexc11
  ], !prof !59

default.unreachable1.i.i:                         ; preds = %bb.d
  unreachable

.noexc:                                           ; preds = %bb.d
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @579) #65
  unreachable

.noexc11:                                         ; preds = %bb.d
  %i.j = extractelement <2 x ptr> %i.i, i64 0     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = extractelement <2 x ptr> %i.i, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  call void @_RNvNtCsf1gSX8u3EQ2_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k) #61
  unreachable

bb.e:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <2 x ptr> %i.i, ptr %0, align 8, !alias.scope !5354
  %.sroa.5.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx15, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB3b_3map11MapConsumerIB5B_INtNtB3b_10while_some17WhileSomeConsumerNtNtB3b_6extend15ListVecConsumerENCINvNvXs2_NtB3d_6resultINtNtB4_6result6ResultppEINtB3b_20FromParallelIteratorIB7F_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB91_7compile12export_images_0EE0NCB34_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBb6_3vec3VecB8X_EEBaZ_E0TBaZ_BaZ_EE0Bcv_EEB91_.exit: ; preds = %bb.f
  resume { ptr, i32 } %lpad.thr_comm

bb.f:                                             ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultTINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEB1l_EEEB2J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB3b_3map11MapConsumerIB5B_INtNtB3b_10while_some17WhileSomeConsumerNtNtB3b_6extend15ListVecConsumerENCINvNvXs2_NtB3d_6resultINtNtB4_6result6ResultppEINtB3b_20FromParallelIteratorIB7F_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB91_7compile12export_images_0EE0NCB34_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBb6_3vec3VecB8X_EEBaZ_E0TBaZ_BaZ_EE0Bcv_EEB91_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc i64 @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtCsc4241EHy6Do_9typst_kit5files8FileSlotEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1y_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !5381)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5381, !noundef !28 ; 6 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !5381, !noundef !28 ; 6 uses
  %i.i = icmp ult i64 %i.h, 8
  %i.j = add i64 %i.h, 1
  %i.k = lshr i64 %i.j, 3
  %i.l = mul nuw i64 %i.k, 7
  %.sroa.03.0.i = select i1 %i.i, i64 %i.h, i64 %i.l ; 2 uses
  %i.m = lshr i64 %.sroa.03.0.i, 1
  %.not.i.not = icmp ult i64 %i.e, %i.m
  br i1 %.not.i.not, label %bb.h, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !5382
  %i.o = extractvalue { i64, i64 } %i.n, 0
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs9fPPV5zPXBl_5typst.exit

bb.d:                                             ; preds = %bb.b
  %i.p = call i64 @llvm.umax.i64(i64 %.sroa.03.0.i, i64 %i.e)
  %..i = add nuw i64 %i.p, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !5383)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5384
  call fastcc void @_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 24, 81) 80, i64 noundef %..i) #60
  %i.q = load ptr, ptr %i.a, align 8, !noalias !5384, !noundef !28 ; 9 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noalias !5384 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !5384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5384
  br i1 %i.r, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs9fPPV5zPXBl_5typst.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = ptrtoint ptr %i.q to i64
  %i.x = load ptr, ptr %0, align 8, !alias.scope !5385, !nonnull !28, !noundef !28 ; 5 uses
  %i.y = icmp eq i64 %i.e, 0
  br i1 %i.y, label %._crit_edge26, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.e
  %.val515 = load <16 x i8>, ptr %i.x, align 16
  %i.z = icmp sgt <16 x i8> %.val515, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.025 = phi ptr [ %.sroa.0.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.x, %.preheader.preheader ] ; 2 uses
  %.sroa.5.024 = phi i64 [ %.sroa.5.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.023 = phi i64 [ %i.az, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.e, %.preheader.preheader ]
  %.sroa.13.022 = phi i16 [ %i.ax, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.aa, %.preheader.preheader ] ; 2 uses
  %.not.i117 = icmp eq i16 %.sroa.13.022, 0
  br i1 %.not.i117, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.119 = phi ptr [ %i.ab, %.noexc2 ], [ %.sroa.0.025, %.preheader ] ; 2 uses
  %.sroa.5.118 = phi i64 [ %i.ae, %.noexc2 ], [ %.sroa.5.024, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.119) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.119, i64 16 ; 3 uses
  %.val416 = load <16 x i8>, ptr %i.ab, align 16
  %i.ac = icmp sgt <16 x i8> %.val416, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %i.ae = add i64 %.sroa.5.118, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.ad, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge26:                                    ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %bb.e
  %i.af = sub i64 %i.v, %i.e
  store i64 %i.w, ptr %0, align 8, !alias.scope !5386, !noalias !5387
  store i64 %i.t, ptr %i.g, align 8, !alias.scope !5388, !noalias !5387
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.af, ptr %i.ag, align 8, !alias.scope !5389, !noalias !5387
  %i.ah = icmp eq i64 %i.h, 0
  br i1 %i.ah, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs9fPPV5zPXBl_5typst.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge26
  %i.ai = mul i64 %i.h, 80                        ; 2 uses
  %i.aj = add i64 %i.ai, 80
  %i.ak = add i64 %i.ai, 95                       ; 2 uses
  %i.al = icmp uge i64 %i.ak, %i.aj
  call void @llvm.assume(i1 %i.al), !noalias !5387
  %i.am = and i64 %i.ak, -16                      ; 3 uses
  %i.an = add i64 %i.h, 17
  %i.ao = add i64 %i.an, %i.am                    ; 4 uses
  %i.ap = icmp uge i64 %i.ao, %i.am
  %i.aq = icmp ult i64 %i.ao, 9223372036854775793
  call void @llvm.assume(i1 %i.ap), !noalias !5387
  call void @llvm.assume(i1 %i.aq), !noalias !5387
  %i.ar = icmp eq i64 %i.ao, 0
  br i1 %i.ar, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs9fPPV5zPXBl_5typst.exit, label %bb.f

bb.f:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.as = sub nsw i64 0, %i.am
  %i.at = getelementptr inbounds i8, ptr %i.x, i64 %i.as
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !5390
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs9fPPV5zPXBl_5typst.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.022, %.preheader ], [ %i.ad, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.024, %.preheader ], [ %i.ae, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.025, %.preheader ], [ %i.ab, %.noexc2 ]
  %i.au = add i16 %.sroa.13.1.lcssa, -1
  %i.av = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = and i16 %i.au, %.sroa.13.1.lcssa
  %i.ay = add i64 %.sroa.5.1.lcssa, %i.aw         ; 2 uses
  %i.az = add i64 %.sroa.9.023, -1                ; 2 uses
  %i.ba = sub nsw i64 0, %i.ay
  %i.bb = getelementptr inbounds [80 x i8], ptr %i.x, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -80
  %.val.i = load i16, ptr %i.bc, align 2, !range !30, !alias.scope !5391, !noalias !5392, !noundef !28
  %i.bd = zext i16 %.val.i to i64
  %i.be = mul i64 %i.bd, -1065810590584100411     ; 2 uses
  %i.bf = call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 26) ; 2 uses
  %.sroa.0.07.i = and i64 %i.bf, %i.t             ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bg, align 1, !noalias !5393
  %i.bh = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bi = bitcast <16 x i1> %i.bh to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bi, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !44

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i8, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bi, %._crit_edge ], [ %i.bz, %.lr.ph.i ]
  %i.bj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = add i64 %.sroa.0.0.lcssa.i, %i.bk
  %i.bm = and i64 %i.bl, %i.t                     ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noundef !28
  %i.bp = icmp sgt i8 %i.bo, -1
  br i1 %i.bp, label %bb.g, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !38

bb.g:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.q, align 16
  %i.bq = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.br, 0
  %i.bs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.br, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i8, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.bu = phi i64 [ %i.bv, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.bv = add i64 %i.bu, 16                       ; 2 uses
  %i.bw = add i64 %i.bv, %.sroa.0.010.i
  %.sroa.0.0.i8 = and i64 %i.bw, %i.t             ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i8
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bx, align 1, !noalias !5393
  %i.by = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.bz = bitcast <16 x i1> %i.by to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.bz, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !45

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bt, %bb.g ], [ %i.bm, %._crit_edge.i ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i
end_hunk_0
begin_hunk_1_@_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtCsc4241EHy6Do_9typst_kit5files8FileSlotEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0E0Cs9fPPV5zPXBl_5typst:bb.a
  %i.a = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.b = sub nsw i64 0, %2
  %i.c = getelementptr inbounds [80 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -80
  %.val = load i16, ptr %i.d, align 2, !range !30, !alias.scope !24643, !noalias !24644, !noundef !28
  %i.e = zext i16 %.val to i64
  %i.f = mul i64 %i.e, -1065810590584100411       ; 2 uses
  %i.g = tail call noundef i64 @llvm.fshl.i64(i64 %i.f, i64 %i.f, i64 26)
  ret i64 %i.g
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCsaL1QbXo9JQH_3std4path7PathBufbEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0E0Cs9fPPV5zPXBl_5typst(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #19 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.b = sub nsw i64 0, %2
  %i.c = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -32
  %i.e = tail call fastcc noundef i64 @_RINvYNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtNtCsaL1QbXo9JQH_3std4path7PathBufECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
  ret i64 %i.e
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCsaL1QbXo9JQH_3std4path7PathBufuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0E0Cs9fPPV5zPXBl_5typst(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #19 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.b = sub nsw i64 0, %2
  %i.c = getelementptr inbounds [24 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -24
  %i.e = tail call fastcc noundef i64 @_RINvYNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtNtCsaL1QbXo9JQH_3std4path7PathBufECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
  ret i64 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef range(i32 0, 256) i32 @_RNCINvNtCsaL1QbXo9JQH_3std2rt10lang_startNtNtB6_7process8ExitCodeE0Cs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !noundef !28
  %i.b = tail call fastcc noundef i8 @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceFENtNtB6_7process8ExitCodeB19_ECs9fPPV5zPXBl_5typst(ptr noundef nonnull %i.a) #63
  %i.c = zext i8 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCsf1gSX8u3EQ2_10rayon_core4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtBY_3map11MapConsumerIB4U_IB4U_INtNtBY_10while_some17WhileSomeConsumerNtNtBY_6extend15ListVecConsumerENCINvNvXs2_NtB10_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtBY_20FromParallelIteratorIB70_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB8B_7compile16write_virtual_fss_0ENvMs0_B2B_B2y_4refsEE0NCBR_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBb3_3vec3VecB8x_EEBaW_E0B8B_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %1, ptr noundef nonnull align 128 %2, i1 noundef zeroext %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %.sroa.0 = alloca ptr, align 8                  ; 4 uses
  %.sroa.4 = alloca ptr, align 8                  ; 3 uses
  %.sroa.5 = alloca i64, align 8                  ; 4 uses
  %i.c = alloca [136 x i8], align 8               ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 16               ; 13 uses
  %i.f = alloca [136 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.i = load i64, ptr %i.h, align 128, !noundef !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  store ptr %i.g, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  store i64 0, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 264
  %i.o = load atomic i64, ptr %i.n monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %i.q = load atomic i64, ptr %i.p seq_cst, align 8
  %i.r = sub i64 %i.o, %i.q
  %i.s = icmp slt i64 %i.r, 1
  %i.t = load ptr, ptr %i.l, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 264
  %i.v = load atomic i64, ptr %i.u monotonic, align 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 256
  %i.x = load atomic i64, ptr %i.w acquire, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !noundef !28 ; 3 uses
  %i.aa = sub i64 %i.v, %i.x
  %.not.i = icmp slt i64 %i.aa, %i.z
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sink.sroa.gep148 = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !43

.thread:                                          ; preds = %bb.k, %bb.b, %.sink.split.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.ac = shl i64 %i.z, 1
  invoke fastcc void @_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE6resizeCs9fPPV5zPXBl_5typst(ptr noundef nonnull align 8 %i.l, i64 noundef %i.ac)
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.b
  %i.ad = load i64, ptr %i.y, align 8, !noundef !28
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.a
  %.sroa.02.0.i = phi i64 [ %i.ad, %.noexc ], [ %i.z, %bb.a ]
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 288
  %.sroa.01.0.i = load ptr, ptr %i.ae, align 32, !noundef !28
  %i.af = add i64 %.sroa.02.0.i, -1
  %i.ag = and i64 %i.af, %i.v
  %i.ah = getelementptr inbounds [16 x i8], ptr %.sroa.01.0.i, i64 %i.ag ; 2 uses
  store volatile ptr @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3W_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB3U_3map11MapConsumerIB7Q_IB7Q_INtNtB3U_10while_some17WhileSomeConsumerNtNtB3U_6extend15ListVecConsumerENCINvNvXs2_NtB3W_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB3U_20FromParallelIteratorIB9Z_ppEE13from_par_iter2okB39_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3d_7compile16write_virtual_fss_0ENvMs0_B5x_B5u_4refsEEs_0E0B1P_ENtB5_3Job7executeB3d_, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store volatile ptr %i.f, ptr %i.ai, align 8
  fence release
  %i.aj = load ptr, ptr %i.l, align 8, !nonnull !28, !noundef !28
  %i.ak = add i64 %i.v, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 264
  store atomic i64 %i.ak, ptr %i.al release, align 8
  %i.am = load ptr, ptr %i.g, align 16, !nonnull !28, !noundef !28 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 472
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 496 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.ap = load atomic i64, ptr %i.ao seq_cst, align 8 ; 4 uses
  %i.aq = and i64 %i.ap, 4294967296
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.e, label %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs9fPPV5zPXBl_5typst.exit.i

bb.e:                                             ; preds = %bb.d
  %i.as = or disjoint i64 %i.ap, 4294967296       ; 2 uses
  %i.at = cmpxchg ptr %i.ao, i64 %i.ap, i64 %i.as seq_cst monotonic, align 8
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.at, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs9fPPV5zPXBl_5typst.exit.i, label %bb.d

_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs9fPPV5zPXBl_5typst.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i = phi i64 [ %i.as, %bb.e ], [ %i.ap, %bb.d ] ; 2 uses
  %i.au = and i64 %.sroa.0.0.i.i, 65535           ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs9fPPV5zPXBl_5typst.exit.i
  br i1 %i.s, label %bb.g, label %.sink.split.i, !prof !43

.sink.split.i:                                    ; preds = %bb.g, %bb.f
  invoke void @_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.an, i32 noundef 1)
          to label %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.g:                                             ; preds = %bb.f
  %i.aw = lshr i64 %.sroa.0.0.i.i, 16
  %i.ax = and i64 %i.aw, 65535
  %i.ay = icmp eq i64 %i.ax, %i.au
  br i1 %i.ay, label %.sink.split.i, label %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !38

_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.g, %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs9fPPV5zPXBl_5typst.exit.i, %.sink.split.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.079.0.copyload = load ptr, ptr %i.az, align 8, !nonnull !28, !noundef !28
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.480.0.copyload = load ptr, ptr %.sroa.480.0..sroa_idx, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.581.0.copyload = load i64, ptr %.sroa.581.0..sroa_idx, align 8
  %.sroa.682.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.682.sroa.0.0.copyload = load i64, ptr %.sroa.682.0..sroa_idx, align 8
  %.sroa.682.sroa.4.0..sroa.682.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ba = load i64, ptr %.sroa.079.0.copyload, align 8, !noalias !24673, !noundef !28
  %i.bb = load i64, ptr %.sroa.480.0.copyload, align 8, !noalias !24673, !noundef !28
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.480.0.copyload, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !24673, !noundef !28
  %i.be = inttoptr i64 %.sroa.581.0.copyload to ptr
  invoke fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB6_3map11MapConsumerIB41_IB41_INtNtB6_10while_some17WhileSomeConsumerNtNtB6_6extend15ListVecConsumerENCINvNvXs2_NtB8_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB6_20FromParallelIteratorIB66_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB7H_7compile16write_virtual_fss_0ENvMs0_B1I_B1F_4refsEEB7H_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.ba, i1 noundef zeroext %3, i64 noundef %i.bb, i64 noundef %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.be, i64 noundef %.sroa.682.sroa.0.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(32) %.sroa.682.sroa.4.0..sroa.682.0..sroa_idx.sroa_idx)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  %i.bh = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bg)
          to label %bb.k unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #64
  unreachable

bb.j:                                             ; preds = %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.595.0.copyload = load i64, ptr %.sroa.595.0..sroa_idx, align 16
  %i.bj = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store <2 x ptr> %i.bj, ptr %i.e, align 16
  store i64 %.sroa.595.0.copyload, ptr %.sink.sroa.gep148, align 16
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.bk = extractvalue { ptr, ptr } %i.bh, 0      ; 2 uses
  %i.bl = extractvalue { ptr, ptr } %i.bh, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvNtCsf1gSX8u3EQ2_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.j, ptr noundef nonnull %i.bk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bl) #61
          to label %bb.af unwind label %.thread

.thread122.thread:                                ; preds = %bb.r, %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEEB1Y_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #62
  br label %bb.ag

bb.l:                                             ; preds = %bb.j, %bb.r
  %i.bm = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bn = icmp eq i64 %i.bm, 3
  br i1 %i.bn, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = invoke fastcc { ptr, ptr } @_RNvMs8_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_12WorkerThread14take_local_job(ptr noundef nonnull align 128 %2)
          to label %bb.p unwind label %.thread122.thread ; 2 uses

.loopexit:                                        ; preds = %bb.l, %bb.ac, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 16
  store ptr %.sroa.0.0.copyload, ptr %.sroa.0, align 8
  %.sroa.5.0.copyload = load i64, ptr %.sink.sroa.gep148, align 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5, align 8
  %.sroa.065.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.466.0.copyload = load ptr, ptr %.sroa.466.0..sroa_idx, align 8 ; 3 uses
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.567.0.copyload = load ptr, ptr %.sroa.567.0..sroa_idx, align 8 ; 3 uses
  switch i64 %.sroa.065.0.copyload, label %default.unreachable1.i.i [
    i64 0, label %bb.n
    i64 1, label %_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3W_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB3U_3map11MapConsumerIB7Q_IB7Q_INtNtB3U_10while_some17WhileSomeConsumerNtNtB3U_6extend15ListVecConsumerENCINvNvXs2_NtB3W_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB3U_20FromParallelIteratorIB9Z_ppEE13from_par_iter2okB39_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3d_7compile16write_virtual_fss_0ENvMs0_B5x_B5u_4refsEEs_0E0B1P_E11into_resultB3d_.exit
    i64 2, label %bb.o
  ], !prof !59

default.unreachable1.i.i:                         ; preds = %.loopexit
  unreachable

bb.n:                                             ; preds = %.loopexit
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @579) #65
          to label %.noexc49 unwind label %bb.ad

.noexc49:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %.loopexit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.466.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.567.0.copyload) ]
  invoke void @_RNvNtCsf1gSX8u3EQ2_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.466.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.567.0.copyload) #61
          to label %.noexc50 unwind label %bb.ad

.noexc50:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.bp = extractvalue { ptr, ptr } %i.bo, 0      ; 3 uses
  %i.bq = extractvalue { ptr, ptr } %i.bo, 1      ; 2 uses
  %.not = icmp eq ptr %i.bp, null
  br i1 %.not, label %bb.ab, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = icmp eq ptr %i.f, %i.bq
  %i.bs = icmp eq ptr %i.bp, @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3W_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB3U_3map11MapConsumerIB7Q_IB7Q_INtNtB3U_10while_some17WhileSomeConsumerNtNtB3U_6extend15ListVecConsumerENCINvNvXs2_NtB3W_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB3U_20FromParallelIteratorIB9Z_ppEE13from_par_iter2okB39_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3d_7compile16write_virtual_fss_0ENvMs0_B5x_B5u_4refsEEs_0E0B1P_ENtB5_3Job7executeB3d_
  %or.cond = and i1 %i.br, %i.bs
  br i1 %or.cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void %i.bp(ptr noundef %i.bq)
          to label %bb.l unwind label %.thread122.thread

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(136) %i.f, i64 136, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !24674)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.0.0.copyload.i51 = load ptr, ptr %i.bt, align 8, !alias.scope !24674 ; 2 uses
  %.not.i52 = icmp eq ptr %.sroa.0.0.copyload.i51, null
  br i1 %.not.i52, label %bb.u, label %bb.t, !prof !38

bb.t:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.3.i.sroa.6.0.copyload = load i64, ptr %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !24675
  %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.3.i.sroa.5.0.copyload = load ptr, ptr %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !24675, !nonnull !28, !noundef !28
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.3.i.sroa.4.0.copyload = load ptr, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !24675, !nonnull !28, !noundef !28 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.3.i.sroa.0.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !24675, !nonnull !28, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24676
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i64 32, i1 false)
  %i.bv = load i64, ptr %.sroa.0.0.copyload.i51, align 8, !noalias !24676, !noundef !28
  %i.bw = load i64, ptr %.sroa.3.i.sroa.0.0.copyload, align 8, !noalias !24676, !noundef !28
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = load i64, ptr %.sroa.3.i.sroa.4.0.copyload, align 8, !noalias !24676, !noundef !28
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.3.i.sroa.4.0.copyload, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !24676, !noundef !28
  invoke fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB6_3map11MapConsumerIB41_IB41_INtNtB6_10while_some17WhileSomeConsumerNtNtB6_6extend15ListVecConsumerENCINvNvXs2_NtB8_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB6_20FromParallelIteratorIB66_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB7H_7compile16write_virtual_fss_0ENvMs0_B1I_B1F_4refsEEB7H_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %i.bx, i1 noundef zeroext %3, i64 noundef %i.by, i64 noundef %i.ca, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.3.i.sroa.5.0.copyload, i64 noundef %.sroa.3.i.sroa.6.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.x unwind label %bb.v, !inline_history !24657

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @565) #61
          to label %bb.w unwind label %bb.v, !noalias !24677, !inline_history !24658

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEEEB2I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB4n_3map11MapConsumerIB8j_IB8j_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIBas_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile16write_virtual_fss_0ENvMs0_B60_B5X_4refsEEs_0E0B2i_EEB3G_.exit.sink.split unwind label %bb.y

bb.w:                                             ; preds = %bb.u
  unreachable

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24676
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEEEB2I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.c)
          to label %bb.z unwind label %.thread122

bb.y:                                             ; preds = %bb.v
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !24677, !inline_history !24658
  unreachable

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aa

bb.aa:                                            ; preds = %_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3W_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB3U_3map11MapConsumerIB7Q_IB7Q_INtNtB3U_10while_some17WhileSomeConsumerNtNtB3U_6extend15ListVecConsumerENCINvNvXs2_NtB3W_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB3U_20FromParallelIteratorIB9Z_ppEE13from_par_iter2okB39_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3d_7compile16write_virtual_fss_0ENvMs0_B5x_B5u_4refsEEs_0E0B1P_E11into_resultB3d_.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.ab:                                            ; preds = %bb.p
  %i.ce = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.cf = icmp eq i64 %i.ce, 3
  br i1 %i.cf, label %.loopexit, label %bb.ac, !prof !43

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs8_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit unwind label %.thread122.thread143

.thread122.thread143:                             ; preds = %bb.ac
  %lpad.loopexit.split-lp144 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEEB1Y_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #62
  br label %bb.ag

bb.ad:                                            ; preds = %bb.o, %bb.n
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB4n_3map11MapConsumerIB8j_IB8j_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIBas_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile16write_virtual_fss_0ENvMs0_B60_B5X_4refsEEs_0E0B2i_EEB3G_.exit.sink.split

_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3W_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB3U_3map11MapConsumerIB7Q_IB7Q_INtNtB3U_10while_some17WhileSomeConsumerNtNtB3U_6extend15ListVecConsumerENCINvNvXs2_NtB3W_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB3U_20FromParallelIteratorIB9Z_ppEE13from_par_iter2okB39_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3d_7compile16write_virtual_fss_0ENvMs0_B5x_B5u_4refsEEs_0E0B1P_E11into_resultB3d_.exit: ; preds = %.loopexit
  %.sroa.6.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx68, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.466.0.copyload, ptr %i.ch, align 8
  %.sroa.4.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.567.0.copyload, ptr %.sroa.4.0..sroa_idx63, align 8
  %.sroa.5.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.6.0.copyload, ptr %.sroa.5.0..sroa_idx64, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.aa

bb.ae:                                            ; preds = %bb.ag
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

.thread122:                                       ; preds = %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB4n_3map11MapConsumerIB8j_IB8j_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIBas_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile16write_virtual_fss_0ENvMs0_B60_B5X_4refsEEs_0E0B2i_EEB3G_.exit.sink.split

bb.af:                                            ; preds = %bb.k
  unreachable

bb.ag:                                            ; preds = %.thread122.thread143, %.thread122.thread, %.thread
  %.pn46115 = phi { ptr, i32 } [ %i.ab, %.thread ], [ %lpad.loopexit.split-lp144, %.thread122.thread143 ], [ %lpad.loopexit, %.thread122.thread ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEEEB2I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB4n_3map11MapConsumerIB8j_IB8j_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIBas_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile16write_virtual_fss_0ENvMs0_B60_B5X_4refsEEs_0E0B2i_EEB3G_.exit unwind label %bb.ae

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB4n_3map11MapConsumerIB8j_IB8j_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIBas_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile16write_virtual_fss_0ENvMs0_B60_B5X_4refsEEs_0E0B2i_EEB3G_.exit.sink.split: ; preds = %bb.v, %bb.ad, %.thread122
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %.thread122 ], [ %.sroa.4, %bb.ad ], [ %.sink.sroa.gep, %bb.v ]
  %.sink.sroa.phi147 = phi ptr [ %.sink.sroa.gep148, %.thread122 ], [ %.sroa.5, %bb.ad ], [ %.sink.sroa.gep148, %bb.v ] ; 2 uses
  %.sink = phi ptr [ %i.e, %.thread122 ], [ %.sroa.0, %bb.ad ], [ %i.e, %bb.v ] ; 2 uses
  %.pn46114.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.thread122 ], [ %i.cg, %bb.ad ], [ %i.cb, %bb.v ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24678)
  call void @llvm.experimental.noalias.scope.decl(metadata !24679)
  %.promoted.i.i = load ptr, ptr %.sink, align 8, !alias.scope !24680 ; 2 uses
  %.not22.i.i = icmp eq ptr %.promoted.i.i, null
  br i1 %.not22.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB4n_3map11MapConsumerIB8j_IB8j_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIBas_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile16write_virtual_fss_0ENvMs0_B60_B5X_4refsEEs_0E0B2i_EEB3G_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB4n_3map11MapConsumerIB8j_IB8j_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIBas_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile16write_virtual_fss_0ENvMs0_B60_B5X_4refsEEs_0E0B2i_EEB3G_.exit.sink.split
  %.promoted21.i.i = load i64, ptr %.sink.sroa.phi147, align 1, !alias.scope !24680
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.am, %.lr.ph.preheader.i.i
  %i.cj = phi ptr [ %i.cm, %bb.am ], [ %.promoted.i.i, %.lr.ph.preheader.i.i ] ; 5 uses
  %i.ck = phi i64 [ %i.co, %bb.am ], [ %.promoted21.i.i, %.lr.ph.preheader.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !24680, !noundef !28 ; 4 uses
  store ptr %i.cm, ptr %.sink, align 8, !alias.scope !24680
  %.not3.i.i = icmp eq ptr %i.cm, null            ; 2 uses
  br i1 %.not3.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  store ptr null, ptr %i.cn, align 8, !noalias !24680
  br label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.i.i
  store ptr null, ptr %.sink.sroa.phi, align 8, !alias.scope !24680
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.co = add i64 %i.ck, -1                       ; 2 uses
  store i64 %i.co, ptr %.sink.sroa.phi147, align 8, !alias.scope !24680
  call void @llvm.experimental.noalias.scope.decl(metadata !24681)
  call void @llvm.experimental.noalias.scope.decl(metadata !24682)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.val.i.i.i.i7.i.i = load ptr, ptr %i.cp, align 8, !alias.scope !24683, !noalias !24680, !nonnull !28, !noundef !28 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.val1.i.i.i.i8.i.i = load i64, ptr %i.cq, align 8, !alias.scope !24683, !noalias !24680, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24684)
  %i.cr = icmp eq i64 %.val1.i.i.i.i8.i.i, 0
  br i1 %i.cr, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i12.i.i, label %.lr.ph.i.i.i.i.i.i9.i.i

.lr.ph.i.i.i.i.i.i9.i.i:                          ; preds = %bb.aj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i.i.i11.i.i
  %.sroa.0.09.i.i.i.i.i.i10.i.i = phi i64 [ %i.ct, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i.i.i11.i.i ], [ 0, %bb.aj ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i7.i.i, i64 %.sroa.0.09.i.i.i.i.i.i10.i.i ; 2 uses
  %i.ct = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i10.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24685)
  %i.cu = load i64, ptr %i.cs, align 8, !range !55, !alias.scope !24686, !noalias !24687, !noundef !28 ; 2 uses
  %i.cv = icmp sgt i64 %i.cu, 0
  br i1 %i.cv, label %bb.ak, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i.i.i11.i.i

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i.i9.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.val1.i.i.i.i.i.i.i15.i.i = load ptr, ptr %i.cw, align 8, !alias.scope !24686, !noalias !24687, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i15.i.i, i64 noundef %i.cu, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !24688
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i.i.i11.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i.i.i11.i.i: ; preds = %bb.ak, %.lr.ph.i.i.i.i.i.i9.i.i
  %i.cx = icmp eq i64 %i.ct, %.val1.i.i.i.i8.i.i
  br i1 %i.cx, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i12.i.i, label %.lr.ph.i.i.i.i.i.i9.i.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i12.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i.i.i11.i.i, %bb.aj
  %.val2.i.i.i.i13.i.i = load i64, ptr %i.cj, align 8, !range !37, !alias.scope !24683, !noalias !24680, !noundef !28 ; 2 uses
  %i.cy = icmp eq i64 %.val2.i.i.i.i13.i.i, 0
  br i1 %i.cy, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i12.i.i
  %i.cz = mul nuw i64 %.val2.i.i.i.i13.i.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i7.i.i, i64 noundef %i.cz, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !24687
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i12.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cj, i64 noundef 40, i64 noundef 8) #56, !noalias !24680
  br i1 %.not3.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB4n_3map11MapConsumerIB8j_IB8j_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIBas_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile16write_virtual_fss_0ENvMs0_B60_B5X_4refsEEs_0E0B2i_EEB3G_.exit, label %.lr.ph.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB4n_3map11MapConsumerIB8j_IB8j_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIBas_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile16write_virtual_fss_0ENvMs0_B60_B5X_4refsEEs_0E0B2i_EEB3G_.exit: ; preds = %bb.am, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB4n_3map11MapConsumerIB8j_IB8j_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIBas_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile16write_virtual_fss_0ENvMs0_B60_B5X_4refsEEs_0E0B2i_EEB3G_.exit.sink.split, %bb.ag
  %.pn46114 = phi { ptr, i32 } [ %.pn46115, %bb.ag ], [ %.pn46114.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB4n_3map11MapConsumerIB8j_IB8j_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIBas_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile16write_virtual_fss_0ENvMs0_B60_B5X_4refsEEs_0E0B2i_EEB3G_.exit.sink.split ], [ %.pn46114.ph, %bb.am ]
  resume { ptr, i32 } %.pn46114
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCsf1gSX8u3EQ2_10rayon_core4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtBY_3map11MapConsumerIB3o_INtNtBY_10while_some17WhileSomeConsumerNtNtBY_6extend15ListVecConsumerENCINvNvXs2_NtB10_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtBY_20FromParallelIteratorIB5p_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB70_7compile12export_images_0EE0NCBR_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB94_3vec3VecB6W_EEB8X_E0B70_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %1, ptr noundef nonnull align 128 %2, i1 noundef zeroext %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %.sroa.0 = alloca ptr, align 8                  ; 4 uses
  %.sroa.4 = alloca ptr, align 8                  ; 3 uses
  %.sroa.5 = alloca i64, align 8                  ; 4 uses
  %i.c = alloca [128 x i8], align 8               ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 16               ; 13 uses
  %i.f = alloca [128 x i8], align 8               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.i = load i64, ptr %i.h, align 128, !noundef !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  store ptr %i.g, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 3 uses
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 264
  %i.o = load atomic i64, ptr %i.n monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %i.q = load atomic i64, ptr %i.p seq_cst, align 8
  %i.r = sub i64 %i.o, %i.q
  %i.s = icmp slt i64 %i.r, 1
  %i.t = load ptr, ptr %i.l, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 264
  %i.v = load atomic i64, ptr %i.u monotonic, align 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 256
  %i.x = load atomic i64, ptr %i.w acquire, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !noundef !28 ; 3 uses
  %i.aa = sub i64 %i.v, %i.x
  %.not.i = icmp slt i64 %i.aa, %i.z
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sink.sroa.gep148 = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !43

.thread:                                          ; preds = %bb.k, %bb.b, %.sink.split.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.ac = shl i64 %i.z, 1
  invoke fastcc void @_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE6resizeCs9fPPV5zPXBl_5typst(ptr noundef nonnull align 8 %i.l, i64 noundef %i.ac)
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.b
  %i.ad = load i64, ptr %i.y, align 8, !noundef !28
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.a
  %.sroa.02.0.i = phi i64 [ %i.ad, %.noexc ], [ %i.z, %bb.a ]
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 288
  %.sroa.01.0.i = load ptr, ptr %i.ae, align 32, !noundef !28
  %i.af = add i64 %.sroa.02.0.i, -1
  %i.ag = and i64 %i.af, %i.v
  %i.ah = getelementptr inbounds [16 x i8], ptr %.sroa.01.0.i, i64 %i.ag ; 2 uses
  store volatile ptr @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3W_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB3U_3map11MapConsumerIB6k_INtNtB3U_10while_some17WhileSomeConsumerNtNtB3U_6extend15ListVecConsumerENCINvNvXs2_NtB3W_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB3U_20FromParallelIteratorIB8o_ppEE13from_par_iter2okB39_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3d_7compile12export_images_0EEs_0E0B1P_ENtB5_3Job7executeB3d_, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store volatile ptr %i.f, ptr %i.ai, align 8
  fence release
  %i.aj = load ptr, ptr %i.l, align 8, !nonnull !28, !noundef !28
  %i.ak = add i64 %i.v, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 264
  store atomic i64 %i.ak, ptr %i.al release, align 8
  %i.am = load ptr, ptr %i.g, align 16, !nonnull !28, !noundef !28 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 472
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 496 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.ap = load atomic i64, ptr %i.ao seq_cst, align 8 ; 4 uses
  %i.aq = and i64 %i.ap, 4294967296
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.e, label %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs9fPPV5zPXBl_5typst.exit.i

bb.e:                                             ; preds = %bb.d
  %i.as = or disjoint i64 %i.ap, 4294967296       ; 2 uses
  %i.at = cmpxchg ptr %i.ao, i64 %i.ap, i64 %i.as seq_cst monotonic, align 8
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.at, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs9fPPV5zPXBl_5typst.exit.i, label %bb.d

_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs9fPPV5zPXBl_5typst.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i = phi i64 [ %i.as, %bb.e ], [ %i.ap, %bb.d ] ; 2 uses
  %i.au = and i64 %.sroa.0.0.i.i, 65535           ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs9fPPV5zPXBl_5typst.exit.i
  br i1 %i.s, label %bb.g, label %.sink.split.i, !prof !43

.sink.split.i:                                    ; preds = %bb.g, %bb.f
  invoke void @_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.an, i32 noundef 1)
          to label %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.g:                                             ; preds = %bb.f
  %i.aw = lshr i64 %.sroa.0.0.i.i, 16
  %i.ax = and i64 %i.aw, 65535
  %i.ay = icmp eq i64 %i.ax, %i.au
  br i1 %i.ay, label %.sink.split.i, label %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !38

_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.g, %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs9fPPV5zPXBl_5typst.exit.i, %.sink.split.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.079.0.copyload = load ptr, ptr %i.az, align 8, !nonnull !28, !noundef !28
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.480.0.copyload = load ptr, ptr %.sroa.480.0..sroa_idx, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.581.0.copyload = load i64, ptr %.sroa.581.0..sroa_idx, align 8
  %.sroa.682.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.682.sroa.0.0.copyload = load i64, ptr %.sroa.682.0..sroa_idx, align 8
  %.sroa.682.sroa.4.0..sroa.682.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ba = load i64, ptr %.sroa.079.0.copyload, align 8, !noalias !24717, !noundef !28
  %i.bb = load i64, ptr %.sroa.480.0.copyload, align 8, !noalias !24717, !noundef !28
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.480.0.copyload, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !24717, !noundef !28
  %i.be = inttoptr i64 %.sroa.581.0.copyload to ptr
  invoke fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB6_3map11MapConsumerIB2v_INtNtB6_10while_some17WhileSomeConsumerNtNtB6_6extend15ListVecConsumerENCINvNvXs2_NtB8_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB6_20FromParallelIteratorIB4v_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB66_7compile12export_images_0EEB66_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.ba, i1 noundef zeroext %3, i64 noundef %i.bb, i64 noundef %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.be, i64 noundef %.sroa.682.sroa.0.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %.sroa.682.sroa.4.0..sroa.682.0..sroa_idx.sroa_idx)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  %i.bh = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bg)
          to label %bb.k unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #64
  unreachable

bb.j:                                             ; preds = %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.595.0.copyload = load i64, ptr %.sroa.595.0..sroa_idx, align 16
  %i.bj = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store <2 x ptr> %i.bj, ptr %i.e, align 16
  store i64 %.sroa.595.0.copyload, ptr %.sink.sroa.gep148, align 16
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.bk = extractvalue { ptr, ptr } %i.bh, 0      ; 2 uses
  %i.bl = extractvalue { ptr, ptr } %i.bh, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvNtCsf1gSX8u3EQ2_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.j, ptr noundef nonnull %i.bk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bl) #61
          to label %bb.af unwind label %.thread

.thread122.thread:                                ; preds = %bb.r, %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEEB1Y_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #62
  br label %bb.ag

bb.l:                                             ; preds = %bb.j, %bb.r
  %i.bm = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bn = icmp eq i64 %i.bm, 3
  br i1 %i.bn, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = invoke fastcc { ptr, ptr } @_RNvMs8_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_12WorkerThread14take_local_job(ptr noundef nonnull align 128 %2)
          to label %bb.p unwind label %.thread122.thread ; 2 uses

.loopexit:                                        ; preds = %bb.l, %bb.ac, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 16
  store ptr %.sroa.0.0.copyload, ptr %.sroa.0, align 8
  %.sroa.5.0.copyload = load i64, ptr %.sink.sroa.gep148, align 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5, align 8
  %.sroa.3.0.copyload = load i64, ptr %i.k, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.sroa.466.0.copyload = load ptr, ptr %.sroa.466.0..sroa_idx, align 8 ; 3 uses
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.sroa.567.0.copyload = load ptr, ptr %.sroa.567.0..sroa_idx, align 8 ; 3 uses
  switch i64 %.sroa.3.0.copyload, label %default.unreachable1.i.i [
    i64 0, label %bb.n
    i64 1, label %_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3W_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB3U_3map11MapConsumerIB6k_INtNtB3U_10while_some17WhileSomeConsumerNtNtB3U_6extend15ListVecConsumerENCINvNvXs2_NtB3W_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB3U_20FromParallelIteratorIB8o_ppEE13from_par_iter2okB39_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3d_7compile12export_images_0EEs_0E0B1P_E11into_resultB3d_.exit
    i64 2, label %bb.o
  ], !prof !59

default.unreachable1.i.i:                         ; preds = %.loopexit
  unreachable

bb.n:                                             ; preds = %.loopexit
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @579) #65
          to label %.noexc49 unwind label %bb.ad

.noexc49:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %.loopexit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.466.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.567.0.copyload) ]
  invoke void @_RNvNtCsf1gSX8u3EQ2_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.466.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.567.0.copyload) #61
          to label %.noexc50 unwind label %bb.ad

.noexc50:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.bp = extractvalue { ptr, ptr } %i.bo, 0      ; 3 uses
  %i.bq = extractvalue { ptr, ptr } %i.bo, 1      ; 2 uses
  %.not = icmp eq ptr %i.bp, null
  br i1 %.not, label %bb.ab, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = icmp eq ptr %i.f, %i.bq
  %i.bs = icmp eq ptr %i.bp, @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3W_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB3U_3map11MapConsumerIB6k_INtNtB3U_10while_some17WhileSomeConsumerNtNtB3U_6extend15ListVecConsumerENCINvNvXs2_NtB3W_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB3U_20FromParallelIteratorIB8o_ppEE13from_par_iter2okB39_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3d_7compile12export_images_0EEs_0E0B1P_ENtB5_3Job7executeB3d_
  %or.cond = and i1 %i.br, %i.bs
  br i1 %or.cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void %i.bp(ptr noundef %i.bq)
          to label %bb.l unwind label %.thread122.thread

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull align 8 dereferenceable(128) %i.f, i64 128, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !24718)
  %.sroa.0.0.copyload.i51 = load ptr, ptr %i.c, align 8, !alias.scope !24718 ; 2 uses
  %.not.i52 = icmp eq ptr %.sroa.0.0.copyload.i51, null
  br i1 %.not.i52, label %bb.u, label %bb.t, !prof !38

bb.t:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.3.i.sroa.6.0.copyload = load i64, ptr %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !24719
  %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.3.i.sroa.5.0.copyload = load ptr, ptr %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !24719, !nonnull !28, !noundef !28
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.i.sroa.4.0.copyload = load ptr, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !24719, !nonnull !28, !noundef !28 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.3.i.sroa.0.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !24719, !nonnull !28, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false)
  %i.bu = load i64, ptr %.sroa.0.0.copyload.i51, align 8, !noalias !24720, !noundef !28
  %i.bv = load i64, ptr %.sroa.3.i.sroa.0.0.copyload, align 8, !noalias !24720, !noundef !28
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = load i64, ptr %.sroa.3.i.sroa.4.0.copyload, align 8, !noalias !24720, !noundef !28
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.3.i.sroa.4.0.copyload, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !noalias !24720, !noundef !28
  invoke fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB6_3map11MapConsumerIB2v_INtNtB6_10while_some17WhileSomeConsumerNtNtB6_6extend15ListVecConsumerENCINvNvXs2_NtB8_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB6_20FromParallelIteratorIB4v_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB66_7compile12export_images_0EEB66_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %i.bw, i1 noundef zeroext %3, i64 noundef %i.bx, i64 noundef %i.bz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.3.i.sroa.5.0.copyload, i64 noundef %.sroa.3.i.sroa.6.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.x unwind label %bb.v, !inline_history !24701

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @565) #61
          to label %bb.w unwind label %bb.v, !noalias !24721, !inline_history !24702

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEEEB2I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cb)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB4n_3map11MapConsumerIB6N_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIB8R_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile12export_images_0EEs_0E0B2i_EEB3G_.exit.sink.split unwind label %bb.y

bb.w:                                             ; preds = %bb.u
  unreachable

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24720
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEEEB2I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cc)
          to label %bb.z unwind label %.thread122

bb.y:                                             ; preds = %bb.v
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !24721, !inline_history !24702
  unreachable

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aa

bb.aa:                                            ; preds = %_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3W_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB3U_3map11MapConsumerIB6k_INtNtB3U_10while_some17WhileSomeConsumerNtNtB3U_6extend15ListVecConsumerENCINvNvXs2_NtB3W_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB3U_20FromParallelIteratorIB8o_ppEE13from_par_iter2okB39_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3d_7compile12export_images_0EEs_0E0B1P_E11into_resultB3d_.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.ab:                                            ; preds = %bb.p
  %i.cf = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.cg = icmp eq i64 %i.cf, 3
  br i1 %i.cg, label %.loopexit, label %bb.ac, !prof !43

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs8_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit unwind label %.thread122.thread143

.thread122.thread143:                             ; preds = %bb.ac
  %lpad.loopexit.split-lp144 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEEB1Y_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #62
  br label %bb.ag

bb.ad:                                            ; preds = %bb.o, %bb.n
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB4n_3map11MapConsumerIB6N_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIB8R_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile12export_images_0EEs_0E0B2i_EEB3G_.exit.sink.split

_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3W_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB3U_3map11MapConsumerIB6k_INtNtB3U_10while_some17WhileSomeConsumerNtNtB3U_6extend15ListVecConsumerENCINvNvXs2_NtB3W_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB3U_20FromParallelIteratorIB8o_ppEE13from_par_iter2okB39_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3d_7compile12export_images_0EEs_0E0B1P_E11into_resultB3d_.exit: ; preds = %.loopexit
  %.sroa.6.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx68, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.466.0.copyload, ptr %i.ci, align 8
  %.sroa.4.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.567.0.copyload, ptr %.sroa.4.0..sroa_idx63, align 8
  %.sroa.5.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.6.0.copyload, ptr %.sroa.5.0..sroa_idx64, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.aa

bb.ae:                                            ; preds = %bb.ag
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

.thread122:                                       ; preds = %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB4n_3map11MapConsumerIB6N_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIB8R_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile12export_images_0EEs_0E0B2i_EEB3G_.exit.sink.split

bb.af:                                            ; preds = %bb.k
  unreachable

bb.ag:                                            ; preds = %.thread122.thread143, %.thread122.thread, %.thread
  %.pn46115 = phi { ptr, i32 } [ %i.ab, %.thread ], [ %lpad.loopexit.split-lp144, %.thread122.thread143 ], [ %lpad.loopexit, %.thread122.thread ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEEEB2I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB4n_3map11MapConsumerIB6N_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIB8R_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile12export_images_0EEs_0E0B2i_EEB3G_.exit unwind label %bb.ae

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB4n_3map11MapConsumerIB6N_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIB8R_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile12export_images_0EEs_0E0B2i_EEB3G_.exit.sink.split: ; preds = %bb.v, %bb.ad, %.thread122
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %.thread122 ], [ %.sroa.4, %bb.ad ], [ %.sink.sroa.gep, %bb.v ]
  %.sink.sroa.phi147 = phi ptr [ %.sink.sroa.gep148, %.thread122 ], [ %.sroa.5, %bb.ad ], [ %.sink.sroa.gep148, %bb.v ] ; 2 uses
  %.sink = phi ptr [ %i.e, %.thread122 ], [ %.sroa.0, %bb.ad ], [ %i.e, %bb.v ] ; 2 uses
  %.pn46114.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.thread122 ], [ %i.ch, %bb.ad ], [ %i.ca, %bb.v ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24722)
  call void @llvm.experimental.noalias.scope.decl(metadata !24723)
  %.promoted.i.i = load ptr, ptr %.sink, align 8, !alias.scope !24724 ; 2 uses
  %.not22.i.i = icmp eq ptr %.promoted.i.i, null
  br i1 %.not22.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB4n_3map11MapConsumerIB6N_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIB8R_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile12export_images_0EEs_0E0B2i_EEB3G_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4p_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB4n_3map11MapConsumerIB6N_INtNtB4n_10while_some17WhileSomeConsumerNtNtB4n_6extend15ListVecConsumerENCINvNvXs2_NtB4p_6resultINtNtB4_6result6ResultppEINtB4n_20FromParallelIteratorIB8R_ppEE13from_par_iter2okB3C_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3G_7compile12export_images_0EEs_0E0B2i_EEB3G_.exit.sink.split
  %.promoted21.i.i = load i64, ptr %.sink.sroa.phi147, align 1, !alias.scope !24724
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.am, %.lr.ph.preheader.i.i
  %i.ck = phi ptr [ %i.cn, %bb.am ], [ %.promoted.i.i, %.lr.ph.preheader.i.i ] ; 5 uses
  %i.cl = phi i64 [ %i.cp, %bb.am ], [ %.promoted21.i.i, %.lr.ph.preheader.i.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !24724, !noundef !28 ; 4 uses
  store ptr %i.cn, ptr %.sink, align 8, !alias.scope !24724
  %.not3.i.i = icmp eq ptr %i.cn, null            ; 2 uses
  br i1 %.not3.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  store ptr null, ptr %i.co, align 8, !noalias !24724
  br label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.i.i
  store ptr null, ptr %.sink.sroa.phi, align 8, !alias.scope !24724
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.cp = add i64 %i.cl, -1                       ; 2 uses
  store i64 %i.cp, ptr %.sink.sroa.phi147, align 8, !alias.scope !24724
  call void @llvm.experimental.noalias.scope.decl(metadata !24725)
  call void @llvm.experimental.noalias.scope.decl(metadata !24726)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.val.i.i.i.i7.i.i = load ptr, ptr %i.cq, align 8, !alias.scope !24727, !noalias !24724, !nonnull !28, !noundef !28 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %.val1.i.i.i.i8.i.i = load i64, ptr %i.cr, align 8, !alias.scope !24727, !noalias !24724, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24728)
  %i.cs = icmp eq i64 %.val1.i.i.i.i8.i.i, 0
  br i1 %i.cs, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i12.i.i, label %.lr.ph.i.i.i.i.i.i9.i.i

.lr.ph.i.i.i.i.i.i9.i.i:                          ; preds = %bb.aj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i.i.i11.i.i
  %.sroa.0.09.i.i.i.i.i.i10.i.i = phi i64 [ %i.cu, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i.i.i11.i.i ], [ 0, %bb.aj ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i7.i.i, i64 %.sroa.0.09.i.i.i.i.i.i10.i.i ; 2 uses
  %i.cu = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i10.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24729)
  %i.cv = load i64, ptr %i.ct, align 8, !range !55, !alias.scope !24730, !noalias !24731, !noundef !28 ; 2 uses
  %i.cw = icmp sgt i64 %i.cv, 0
  br i1 %i.cw, label %bb.ak, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_.exit.i.i.i.i.i.i11.i.i

end_hunk_1
begin_hunk_2_@_RNCNvNtCs9fPPV5zPXBl_5typst5query19deprecation_warning0B5_:bb.a
  unreachable

bb.t:                                             ; preds = %bb.u, %bb.j
  %.pn47 = phi { ptr, i32 } [ %i.ek, %bb.u ], [ %.pn, %bb.j ]
  resume { ptr, i32 } %.pn47

bb.u:                                             ; preds = %bb.w, %_RNvNtCs5PEMdK7bMAG_12typst_syntax5lexer8is_ident.exit
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #62
          to label %bb.t unwind label %bb.s

bb.v:                                             ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax5lexer8is_ident.exit
  br i1 %i.dy, label %bb.w, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit, !prof !38

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @502, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @515, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @435) #65
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.w
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.r
}

; Function Attrs: cold inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  br i1 %3, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread5, label %.preheader8

.preheader8:                                      ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !noundef !28
  %i.b = getelementptr i8, ptr %i.a, i64 %1       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !28 ; 6 uses
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !28, !noundef !28 ; 5 uses
  %i.g = icmp samesign ult i64 %i.e, 4
  %i.h = getelementptr i8, ptr %i.f, i64 %i.e
  %i.i = getelementptr i8, ptr %i.h, i64 -4
  br i1 %i.g, label %.preheader.us.preheader, label %.preheader8.split

.preheader.us.preheader:                          ; preds = %.preheader8
  %exitcond.not.i.us22 = icmp eq i64 %i.e, 0      ; 3 uses
  %exitcond.not.i.us = icmp eq i64 %i.e, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %exitcond.not.i.us.1 = icmp eq i64 %i.e, 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.010.us = phi i16 [ %i.z, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader.us.preheader ] ; 2 uses
  %i.l = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.010.us, i1 true) ; 2 uses
  %i.m = zext nneg i16 %i.l to i64
  %i.n = getelementptr i8, ptr %i.b, i64 %i.m     ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25323)
  br i1 %exitcond.not.i.us22, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread5, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  br i1 %exitcond.not.i.us, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread5, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.b
  %i.p = getelementptr i8, ptr %i.n, i64 2
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !25322, !noundef !28
  %i.r = load i8, ptr %i.j, align 1, !alias.scope !25323, !noundef !28
  %.not17.i.us.1 = icmp eq i8 %i.q, %i.r
  br i1 %.not17.i.us.1, label %bb.c, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

bb.c:                                             ; preds = %.lr.ph.1
  br i1 %exitcond.not.i.us.1, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread5, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.n, i64 3
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !25322, !noundef !28
  %i.u = load i8, ptr %i.k, align 1, !alias.scope !25323, !noundef !28
  %.not17.i.us.2 = icmp eq i8 %i.t, %i.u
  br i1 %.not17.i.us.2, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread5, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

.lr.ph:                                           ; preds = %.preheader.us
  %i.v = load i8, ptr %i.o, align 1, !alias.scope !25322, !noundef !28
  %i.w = load i8, ptr %i.f, align 1, !alias.scope !25323, !noundef !28
  %.not17.i.us = icmp eq i8 %i.v, %i.w
  br i1 %.not17.i.us, label %bb.b, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %i.x = shl nuw i16 1, %i.l
  %i.y = xor i16 %i.x, -1
  %i.z = and i16 %.sroa.0.010.us, %i.y            ; 2 uses
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread5, label %.preheader.us

.preheader8.split:                                ; preds = %.preheader8, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread
  %.sroa.0.010 = phi i16 [ %i.ao, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread ], [ %2, %.preheader8 ] ; 2 uses
  %i.ab = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.010, i1 true) ; 2 uses
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = getelementptr i8, ptr %i.b, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25323)
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.e
  %i.ag = getelementptr i8, ptr %i.af, i64 -4     ; 3 uses
  %i.ah = icmp ult ptr %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader8.split, %bb.d
  %.sroa.04.027.i = phi ptr [ %i.ai, %bb.d ], [ %i.ae, %.preheader8.split ] ; 2 uses
  %.sroa.08.026.i = phi ptr [ %i.aj, %bb.d ], [ %i.f, %.preheader8.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.027.i, align 1, !alias.scope !25322
  %.sroa.012.0.copyload.i = load i32, ptr %.sroa.08.026.i, align 1, !alias.scope !25323
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.012.0.copyload.i
  br i1 %.not.i, label %bb.d, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread

bb.d:                                             ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.027.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.026.i, i64 4
  %i.ak = icmp ult ptr %i.ai, %i.ag
  br i1 %i.ak, label %.lr.ph.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.d, %.preheader8.split
  %.sroa.013.0.copyload.i = load i32, ptr %i.ag, align 1, !alias.scope !25322
  %.sroa.014.0.copyload.i = load i32, ptr %i.i, align 1, !alias.scope !25323
  %i.al = icmp eq i32 %.sroa.013.0.copyload.i, %.sroa.014.0.copyload.i
  br i1 %i.al, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread5, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread5: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %.preheader.us, %.lr.ph.2, %bb.b, %bb.c, %bb.a
  %.sroa.03.0 = phi i1 [ true, %.lr.ph.2 ], [ false, %bb.a ], [ %exitcond.not.i.us22, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %bb.c ], [ true, %bb.b ], [ %exitcond.not.i.us22, %.preheader.us ], [ false, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread ], [ true, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit ]
  ret i1 %.sroa.03.0

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread: ; preds = %.lr.ph.i, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit
  %i.am = shl nuw i16 1, %i.ab
  %i.an = xor i16 %i.am, -1
  %i.ao = and i16 %.sroa.0.010, %i.an             ; 2 uses
  %i.ap = icmp eq i16 %i.ao, 0
  br i1 %i.ap, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread5, label %.preheader8.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtNtCs9fPPV5zPXBl_5typst7compile15output_template6format0B7_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [104 x i8], align 8               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 13 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !28 ; 2 uses
  switch i64 %i.n, label %bb.j [
    i64 3, label %bb.b
    i64 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %2, align 8, !nonnull !28, !noundef !28 ; 9 uses
  %i.p = load i16, ptr %i.o, align 1
  %i.q = xor i16 %i.p, 28795
  %i.r = getelementptr i8, ptr %i.o, i64 2
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i16
  %i.u = xor i16 %i.t, 125
  %i.v = or i16 %i.q, %i.u
  %i.w = icmp ne i16 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %.0.val, ptr %i.j, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noundef nonnull @95, ptr noundef nonnull %i.j)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9fPPV5zPXBl_5typst.exit unwind label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %2, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = icmp ne i32 %i.aa, 2104504443
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.h, %bb.d
  %.val.i26 = phi ptr [ %i.o, %bb.h ], [ %i.z, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.ae = load i64, ptr %.8.val, align 8, !noundef !28 ; 4 uses
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %_RNvNvNtNtCs9fPPV5zPXBl_5typst7compile15output_template6format5width.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = icmp ugt i64 %i.ae, 9999999999          ; 2 uses
  %i.ag = udiv i64 %i.ae, 10000000000
  %.sroa.05.0.i.i = select i1 %i.af, i32 10, i32 0 ; 2 uses
  %.sroa.0.0.i.i = select i1 %i.af, i64 %i.ag, i64 %i.ae ; 3 uses
  %i.ah = icmp samesign ugt i64 %.sroa.0.0.i.i, 99999
  br i1 %i.ah, label %bb.g, label %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ai = udiv i64 %.sroa.0.0.i.i, 100000
  %i.aj = or disjoint i32 %.sroa.05.0.i.i, 5
  br label %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit.i

_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.05.1.i.i = phi i32 [ %i.aj, %bb.g ], [ %.sroa.05.0.i.i, %bb.f ]
  %.sroa.0.1.i.i = phi i64 [ %i.ai, %bb.g ], [ %.sroa.0.0.i.i, %bb.f ]
  %i.ak = trunc nuw nsw i64 %.sroa.0.1.i.i to i32 ; 4 uses
  %i.al = add nuw nsw i32 %i.ak, 393206
  %i.am = add nuw nsw i32 %i.ak, 524188
  %i.an = and i32 %i.al, %i.am
  %i.ao = add nuw nsw i32 %i.ak, 916504
  %i.ap = add nuw nsw i32 %i.ak, 514288
  %i.aq = and i32 %i.ao, %i.ap
  %i.ar = xor i32 %i.an, %i.aq
  %i.as = lshr i32 %i.ar, 17
  %i.at = add nuw nsw i32 %i.as, %.sroa.05.1.i.i  ; 2 uses
  %i.au = icmp samesign ult i32 %i.at, 20
  tail call void @llvm.assume(i1 %i.au)
  %i.av = trunc nuw nsw i32 %i.at to i16
  %i.aw = add nuw nsw i16 %i.av, 1
  br label %_RNvNvNtNtCs9fPPV5zPXBl_5typst7compile15output_template6format5width.exit

bb.h:                                             ; preds = %bb.b
  %i.ax = load i16, ptr %i.o, align 1
  %i.ay = xor i16 %i.ax, 28283
  %i.az = getelementptr i8, ptr %i.o, i64 2
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i16
  %i.bc = xor i16 %i.bb, 125
  %i.bd = or i16 %i.ay, %i.bc
  %i.be = icmp ne i16 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.e, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = load i16, ptr %i.o, align 1
  %i.bi = xor i16 %i.bh, 29819
  %i.bj = getelementptr i8, ptr %i.o, i64 2
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = zext i8 %i.bk to i16
  %i.bm = xor i16 %i.bl, 125
  %i.bn = or i16 %i.bi, %i.bm
  %i.bo = icmp ne i16 %i.bn, 0
  %i.bp = zext i1 %i.bo to i32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.k, label %bb.j, !prof !43

bb.j:                                             ; preds = %bb.a, %bb.d, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.l, ptr %i.e, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRReNtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.42.0..sroa_idx, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @480, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @481) #61
          to label %bb.n unwind label %bb.m

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.8.val, ptr %i.f, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @95, ptr noundef nonnull %i.f)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9fPPV5zPXBl_5typst.exit40 unwind label %bb.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit44: ; preds = %bb.z, %.body, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.m ], [ %lpad.loopexit.split-lp35, %.body ], [ %lpad.loopexit.split-lp35, %bb.z ]
  call void @llvm.experimental.noalias.scope.decl(metadata !25361)
  call void @llvm.experimental.noalias.scope.decl(metadata !25362)
  %.val.i.i = load i64, ptr %1, align 8, !range !37, !alias.scope !25363, !noundef !28 ; 2 uses
  %i.br = icmp eq i64 %.val.i.i, 0
  br i1 %i.br, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit44
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i = load ptr, ptr %i.bs, align 8, !alias.scope !25363, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !25363
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit

bb.m:                                             ; preds = %_RNvNvNtNtCs9fPPV5zPXBl_5typst7compile15output_template6format5width.exit, %bb.k, %bb.c, %bb.j
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit44

bb.n:                                             ; preds = %bb.j
  unreachable

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9fPPV5zPXBl_5typst.exit40: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.0.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.o

bb.o:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9fPPV5zPXBl_5typst.exit, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9fPPV5zPXBl_5typst.exit41, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9fPPV5zPXBl_5typst.exit40
  %.val.i = phi ptr [ %i.o, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9fPPV5zPXBl_5typst.exit ], [ %.val.i26, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9fPPV5zPXBl_5typst.exit41 ], [ %i.o, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9fPPV5zPXBl_5typst.exit40 ]
  %.sroa.10.0 = phi i64 [ %.sroa.10.0.copyload10, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9fPPV5zPXBl_5typst.exit ], [ %.sroa.10.0.copyload8, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9fPPV5zPXBl_5typst.exit41 ], [ %.sroa.10.0.copyload, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9fPPV5zPXBl_5typst.exit40 ] ; 5 uses
  %.sroa.7.0 = phi ptr [ %.sroa.7.0.copyload6, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9fPPV5zPXBl_5typst.exit ], [ %.sroa.7.0.copyload4, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9fPPV5zPXBl_5typst.exit41 ], [ %.sroa.7.0.copyload, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9fPPV5zPXBl_5typst.exit40 ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload2, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9fPPV5zPXBl_5typst.exit ], [ %.sroa.0.0.copyload1, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9fPPV5zPXBl_5typst.exit41 ], [ %.sroa.0.0.copyload, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9fPPV5zPXBl_5typst.exit40 ] ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !28, !noundef !28 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !28 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !25364
  store i64 0, ptr %i.d, align 8, !noalias !25364
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !25364
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  store i64 0, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !25364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25364
  invoke void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bv, i64 noundef %i.bx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %i.n)
          to label %_RNvXss_NtNtCs3oUPovFnLWP_4core3str7patternRReNtB5_7Pattern13into_searcher.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !25365

_RNvXss_NtNtCs3oUPovFnLWP_4core3str7patternRReNtB5_7Pattern13into_searcher.exit.i: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !25364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 104, i1 false), !noalias !25364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25364
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.not.i28.i = icmp eq i64 %.sroa.10.0, 0
  br label %bb.p

bb.p:                                             ; preds = %bb.y, %_RNvXss_NtNtCs3oUPovFnLWP_4core3str7patternRReNtB5_7Pattern13into_searcher.exit.i
  %i.ca = phi ptr [ inttoptr (i64 1 to ptr), %_RNvXss_NtNtCs3oUPovFnLWP_4core3str7patternRReNtB5_7Pattern13into_searcher.exit.i ], [ %i.ds, %bb.y ] ; 2 uses
  %i.cb = phi ptr [ inttoptr (i64 1 to ptr), %_RNvXss_NtNtCs3oUPovFnLWP_4core3str7patternRReNtB5_7Pattern13into_searcher.exit.i ], [ %i.dt, %bb.y ] ; 2 uses
  %i.cc = phi ptr [ inttoptr (i64 1 to ptr), %_RNvXss_NtNtCs3oUPovFnLWP_4core3str7patternRReNtB5_7Pattern13into_searcher.exit.i ], [ %i.du, %bb.y ] ; 2 uses
  %i.cd = phi i64 [ 0, %_RNvXss_NtNtCs3oUPovFnLWP_4core3str7patternRReNtB5_7Pattern13into_searcher.exit.i ], [ %i.dw, %bb.y ] ; 10 uses
  %.sroa.04.0.i = phi i64 [ 0, %_RNvXss_NtNtCs3oUPovFnLWP_4core3str7patternRReNtB5_7Pattern13into_searcher.exit.i ], [ %i.cs, %bb.y ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25364
  invoke fastcc void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(104) %i.c)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !25365

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i29.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i24.i, %bb.p, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i, %bb.o
  %lpad.loopexit.split-lp35 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25366)
  call void @llvm.experimental.noalias.scope.decl(metadata !25367)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !37, !alias.scope !25368, !noalias !25364, !noundef !28 ; 2 uses
  %i.ce = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ce, label %.body, label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val1.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !25368, !noalias !25364, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !25369
  br label %.body

bb.r:                                             ; preds = %bb.p
  %i.cf = load i64, ptr %i.a, align 8, !range !33, !noalias !25364, !noundef !28
  %i.cg = trunc nuw i64 %i.cf to i1
  br i1 %i.cg, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !25364
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.04.0.i
  %gepdiff.i = sub nuw nsw i64 %i.bx, %.sroa.04.0.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25370)
  %i.ci = load i64, ptr %i.d, align 8, !range !37, !alias.scope !25371, !noalias !25364, !noundef !28
  %i.cj = sub i64 %i.ci, %i.cd
  %i.ck = icmp ugt i64 %gepdiff.i, %i.cj
  br i1 %i.ck, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i.i, !prof !38

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i: ; preds = %bb.s
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.cd, i64 noundef %gepdiff.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !25365

.noexc.i:                                         ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i
  %i.cl = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !25370, !noalias !25364, !noundef !28 ; 2 uses
  %i.cm = icmp sgt i64 %i.cl, -1
  call void @llvm.assume(i1 %i.cm)
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !25370, !noalias !25364
  br label %bb.t

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %bb.s
  %i.cn = icmp sgt i64 %i.cd, -1
  call void @llvm.assume(i1 %i.cn)
  %.not.i.i = icmp eq i64 %i.bx, %.sroa.04.0.i
  br i1 %.not.i.i, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i.i, %.noexc.i
  %i.co = phi ptr [ %.pre.i, %.noexc.i ], [ %i.cc, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i.i ]
end_hunk_2
begin_hunk_3_@_RNvMNtCs9fPPV5zPXBl_5typst5worldNtB2_11SystemWorld3new:bb.a
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.pv)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i unwind label %bb.eo

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %bb.cy, %bb.cx, %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit.i.i, %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !27458
  br label %_RNCNvMs1_NtCs9fPPV5zPXBl_5typst5worldNtB7_11SystemFiles3new0B9_.exit.i

bb.cz:                                            ; preds = %bb.ct
  %i.pw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !27455
  unreachable

_RNCNvMs1_NtCs9fPPV5zPXBl_5typst5worldNtB7_11SystemFiles3new0B9_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i.i
  %.sroa.0139.0.i = phi i64 [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i ], [ 4, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i.i ]
  %.sroa.5140.0.i = phi i64 [ %i.os, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i ], [ %i.ox, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i.i ] ; 2 uses
  %.sroa.8.0.i = phi ptr [ %.sroa.5.0.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i ], [ undef, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !27454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !27454
  %.sroa.15.sroa.0.0.extract.trunc173 = trunc i64 %.sroa.5140.0.i to i8
  %.sroa.15.sroa.9.0.extract.shift180 = lshr i64 %.sroa.5140.0.i, 8
  %.sroa.15.sroa.9.0.extract.trunc181 = trunc nuw i64 %.sroa.15.sroa.9.0.extract.shift180 to i56
  br label %bb.ep

bb.da:                                            ; preds = %.noexc105
  %.sroa.5151.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5151.0.copyload.i = load i64, ptr %.sroa.5151.0..sroa_idx.i, align 8, !noalias !27454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !27454
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cm, %bb.cl
  %.sroa.15.0.i = phi i64 [ %.sroa.5151.0.copyload.i, %bb.da ], [ undef, %bb.cm ], [ undef, %bb.cl ] ; 2 uses
  %.sroa.10.0.i = phi ptr [ %i.ow, %bb.da ], [ undef, %bb.cm ], [ undef, %bb.cl ] ; 10 uses
  %.sroa.0.0.i98 = phi i64 [ %i.ot, %bb.da ], [ -1, %bb.cm ], [ -1, %bb.cl ] ; 8 uses
  %i.px = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.py = load i64, ptr %i.px, align 8, !range !55, !alias.scope !27453, !noundef !28
  %.not65.i = icmp eq i64 %i.py, -1
  %i.pz = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.qa = load ptr, ptr %i.pz, align 8, !alias.scope !27453, !nonnull !28
  %i.qb = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.qc = load i64, ptr %i.qb, align 8, !alias.scope !27453
  br i1 %.not65.i, label %bb.dc, label %bb.dg

bb.dc:                                            ; preds = %bb.db
  %.not.i.i.i102 = icmp eq i64 %.sroa.0.0.i98, -1
  br i1 %.not.i.i.i102, label %bb.dg, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.i) ]
  %i.qd = invoke { ptr, i64 } @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.10.0.i, i64 noundef %.sroa.15.0.i)
          to label %.noexc.i103 unwind label %bb.df, !noalias !27454 ; 2 uses

.noexc.i103:                                      ; preds = %bb.dd
  %i.qe = extractvalue { ptr, i64 } %i.qd, 0
  %i.qf = extractvalue { ptr, i64 } %i.qd, 1
  br label %bb.dg

.body.i:                                          ; preds = %bb.em, %bb.ej, %bb.ei, %bb.dx, %bb.dm, %bb.df
  %.pn70.i = phi { ptr, i32 } [ %i.rb, %bb.dm ], [ %i.sa, %bb.ei ], [ %i.qh, %bb.df ], [ %i.sa, %bb.ej ], [ %i.rn, %bb.dx ], [ %i.rn, %bb.em ] ; 2 uses
  %i.qg = icmp sgt i64 %.sroa.0.0.i98, 0
  br i1 %i.qg, label %bb.de, label %.body107

bb.de:                                            ; preds = %.body.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i, i64 noundef %.sroa.0.0.i98, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !27460
  br label %.body107

bb.df:                                            ; preds = %bb.dq, %bb.dg, %bb.dd
  %i.qh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.dg:                                            ; preds = %.noexc.i103, %bb.dc, %bb.db
  %.pn4.i.i = phi ptr [ %i.qa, %bb.db ], [ %i.qe, %.noexc.i103 ], [ null, %bb.dc ] ; 2 uses
  %.pn2.i.i = phi i64 [ %i.qc, %bb.db ], [ %i.qf, %.noexc.i103 ], [ undef, %bb.dc ]
  %.not66.i = icmp eq ptr %.pn4.i.i, null         ; 2 uses
  %spec.select.i = select i1 %.not66.i, i64 1, i64 %.pn2.i.i ; 2 uses
  %spec.select72.i = select i1 %.not66.i, ptr @91, ptr %.pn4.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !27454
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std3sys2fs12canonicalize(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %spec.select72.i, i64 noundef %spec.select.i)
          to label %_RINvNtCsaL1QbXo9JQH_3std2fs12canonicalizeRNtNtB4_4path4PathECs9fPPV5zPXBl_5typst.exit.i unwind label %bb.df, !noalias !27454

_RINvNtCsaL1QbXo9JQH_3std2fs12canonicalizeRNtNtB4_4path4PathECs9fPPV5zPXBl_5typst.exit.i: ; preds = %bb.dg
  %i.qi = load i64, ptr %i.m, align 8, !range !55, !noalias !27454, !noundef !28 ; 8 uses
  %i.qj = icmp eq i64 %i.qi, -1
  %i.qk = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ql = load ptr, ptr %i.qk, align 8, !noalias !27454 ; 15 uses
  br i1 %i.qj, label %bb.dh, label %bb.ds

bb.dh:                                            ; preds = %_RINvNtCsaL1QbXo9JQH_3std2fs12canonicalizeRNtNtB4_4path4PathECs9fPPV5zPXBl_5typst.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !27454
  store ptr %i.ql, ptr %i.g, align 8, !noalias !27461
  %i.qm = ptrtoint ptr %i.ql to i64               ; 5 uses
  %i.qn = and i64 %i.qm, 3                        ; 2 uses
  switch i64 %i.qn, label %default.unreachable [
    i64 2, label %bb.di
    i64 3, label %bb.dj
    i64 0, label %bb.dk
    i64 1, label %bb.dl
  ], !prof !66

bb.di:                                            ; preds = %bb.dh
  %i.qo = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i92.i unwind label %bb.dm, !noalias !27461

.noexc.i92.i:                                     ; preds = %bb.di
  %i.qp = lshr i64 %i.qm, 32
  %i.qq = trunc nuw i64 %i.qp to i32
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.qs = load ptr, ptr %i.qr, align 8, !noalias !27461, !nonnull !28, !noundef !28
  %i.qt = invoke noundef i8 %i.qs(i32 noundef %i.qq)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i87.i unwind label %bb.dm, !noalias !27461, !inline_history !20

bb.dj:                                            ; preds = %bb.dh
  %i.qu = lshr i64 %i.qm, 32
  %i.qv = icmp ult ptr %i.ql, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i91.i = trunc i64 %i.qu to i8 ; 2 uses
  %i.qw = icmp ne i8 %switch.idx.cast.i.i.i.i91.i, -1
  call void @llvm.assume(i1 %i.qv)
  call void @llvm.assume(i1 %i.qw)
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i87.i

bb.dk:                                            ; preds = %bb.dh
  %i.qx = getelementptr inbounds nuw i8, ptr %i.ql, i64 16
  %i.qy = load i8, ptr %i.qx, align 8, !range !123, !noalias !27461, !noundef !28
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i87.i

bb.dl:                                            ; preds = %bb.dh
  %i.qz = getelementptr i8, ptr %i.ql, i64 31
  %i.ra = load i8, ptr %i.qz, align 8, !range !123, !noalias !27461, !noundef !28
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i87.i

bb.dm:                                            ; preds = %bb.dn, %.noexc.i92.i, %bb.di
  %i.rb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #62
          to label %.body.i unwind label %bb.dr, !noalias !27462

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i87.i: ; preds = %bb.dl, %bb.dk, %bb.dj, %.noexc.i92.i
  %.sroa.0.0.i.i88.i = phi i8 [ %i.ra, %bb.dl ], [ %switch.idx.cast.i.i.i.i91.i, %bb.dj ], [ %i.qy, %bb.dk ], [ %i.qt, %.noexc.i92.i ]
  %i.rc = icmp eq i8 %.sroa.0.0.i.i88.i, 0
  br i1 %i.rc, label %bb.dn, label %bb.en

bb.dn:                                            ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i87.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !27461
  invoke void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %spec.select72.i, i64 noundef %spec.select.i)
          to label %bb.do unwind label %bb.dm, !noalias !27462

bb.do:                                            ; preds = %bb.dn
  %.sroa.5156.8.copyload157.i = load ptr, ptr %i.f, align 8, !noalias !27463
  %.sroa.8158.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.8158.sroa.0.0.copyload.i = load ptr, ptr %.sroa.8158.8..sroa_idx.i, align 8, !noalias !27463
  %.sroa.8158.sroa.4.0..sroa.8158.8..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.8158.sroa.4.0.copyload.i = load i64, ptr %.sroa.8158.sroa.4.0..sroa.8158.8..sroa_idx.sroa_idx.i, align 8, !noalias !27463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !27461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !27464
  switch i64 %i.qn, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i89.i
    i64 3, label %bb.dp
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i89.i
    i64 1, label %bb.dq
  ], !prof !66

bb.dp:                                            ; preds = %bb.do
  %i.rd = icmp ult ptr %i.ql, inttoptr (i64 188978561024 to ptr)
  %i.re = and i64 %i.qm, 1095216660480
  %i.rf = icmp ne i64 %i.re, 1095216660480
  call void @llvm.assume(i1 %i.rd)
  call void @llvm.assume(i1 %i.rf)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i89.i

bb.dq:                                            ; preds = %bb.do
  %i.rg = getelementptr i8, ptr %i.ql, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rg) ]
  %i.rh = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.rg, ptr %i.rh, align 8, !alias.scope !27465, !noalias !27464
  store i8 3, ptr %i.e, align 8, !alias.scope !27465, !noalias !27464
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.rh)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i89.i unwind label %bb.df, !noalias !27454

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i89.i: ; preds = %bb.dq, %bb.dp, %bb.do, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !27464
  %.pre.i = ptrtoint ptr %.sroa.5156.8.copyload157.i to i64
  br label %bb.en

bb.dr:                                            ; preds = %bb.dm
  %i.ri = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !27462
  unreachable

bb.ds:                                            ; preds = %_RINvNtCsaL1QbXo9JQH_3std2fs12canonicalizeRNtNtB4_4path4PathECs9fPPV5zPXBl_5typst.exit.i
  %.sroa.4163.sroa.4.0..sroa.4163.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.4163.sroa.4.0.copyload.i = load i64, ptr %.sroa.4163.sroa.4.0..sroa.4163.0..sroa_idx.sroa_idx.i, align 8, !noalias !27454 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !27454
  %.not67.i = icmp eq i64 %.sroa.0.0.i98, -1
  br i1 %.not67.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !27454
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ql) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.i) ]
  invoke void @_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_11VirtualPath10virtualize(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ql, i64 noundef %.sroa.4163.sroa.4.0.copyload.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.10.0.i, i64 noundef %.sroa.15.0.i)
          to label %bb.dv unwind label %bb.dx, !noalias !27454

bb.du:                                            ; preds = %bb.ds
  br i1 %.not.i97, label %bb.ee, label %bb.ed

bb.dv:                                            ; preds = %bb.dt
  %i.rj = load i8, ptr %i.j, align 8, !range !67, !noalias !27454, !noundef !28 ; 3 uses
  %.not68.i = icmp eq i8 %i.rj, -1
  br i1 %.not68.i, label %bb.dw, label %bb.ea

bb.dw:                                            ; preds = %bb.dv
  %i.rk = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.rl = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rl, ptr noundef nonnull align 8 dereferenceable(16) %i.rk, i64 16, i1 false), !noalias !27454
  store i64 0, ptr %i.l, align 8, !noalias !27454
  %i.rm = invoke noundef i16 @_RNvMNtCs5PEMdK7bMAG_12typst_syntax4pathNtB2_10RootedPath6intern(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.l)
          to label %bb.dy unwind label %bb.dx, !noalias !27454

bb.dx:                                            ; preds = %bb.eh, %bb.ef, %bb.dw, %bb.dt
  %i.rn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ro = icmp eq i64 %i.qi, 0
  br i1 %i.ro, label %.body.i, label %bb.em

bb.dy:                                            ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !27454
  br label %bb.dz

bb.dz:                                            ; preds = %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE5force0ECs9fPPV5zPXBl_5typst.exit.i, %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE5force0ECs9fPPV5zPXBl_5typst.exit102.i, %bb.dy
  %.sroa.030.0.i = phi i16 [ %i.rm, %bb.dy ], [ %i.ry, %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE5force0ECs9fPPV5zPXBl_5typst.exit102.i ], [ %i.rz, %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE5force0ECs9fPPV5zPXBl_5typst.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !27454
  %i.rp = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke fastcc void @_RNvNtCs9fPPV5zPXBl_5typst8packages6system(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.rp)
          to label %bb.ek unwind label %bb.ei, !noalias !27466

bb.ea:                                            ; preds = %bb.dv
  %.sroa.457.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.sroa.15.sroa.9.sroa.0.0.copyload = load i56, ptr %.sroa.457.0..sroa_idx.i, align 1, !noalias !27467 ; 2 uses
  %.sroa.20.17..sroa.457.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.20.17.copyload = load ptr, ptr %.sroa.20.17..sroa.457.0..sroa_idx.i.sroa_idx, align 8, !noalias !27467 ; 2 uses
  %.sroa.23.17..sroa.457.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.23.17.copyload = load i64, ptr %.sroa.23.17..sroa.457.0..sroa_idx.i.sroa_idx, align 8, !noalias !27467 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !27454
  %i.rq = icmp eq i64 %i.qi, 0
  br i1 %i.rq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs9fPPV5zPXBl_5typst.exit.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ql, i64 noundef %i.qi, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !27468
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs9fPPV5zPXBl_5typst.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs9fPPV5zPXBl_5typst.exit.i: ; preds = %bb.en, %bb.eb, %bb.ea
  %.sroa.15.sroa.9.sroa.0.0 = phi i56 [ %.sroa.15.sroa.9.0.extract.trunc179, %bb.en ], [ %.sroa.15.sroa.9.sroa.0.0.copyload, %bb.ea ], [ %.sroa.15.sroa.9.sroa.0.0.copyload, %bb.eb ] ; 2 uses
  %.sroa.15.sroa.0.0 = phi i8 [ %.sroa.15.sroa.0.0.extract.trunc172, %bb.en ], [ %i.rj, %bb.ea ], [ %i.rj, %bb.eb ] ; 2 uses
  %.sroa.23.0 = phi i64 [ %.sroa.8158.sroa.4.0.i, %bb.en ], [ %.sroa.23.17.copyload, %bb.ea ], [ %.sroa.23.17.copyload, %bb.eb ] ; 2 uses
  %.sroa.20.0 = phi ptr [ %.sroa.8158.sroa.0.0.i, %bb.en ], [ %.sroa.20.17.copyload, %bb.ea ], [ %.sroa.20.17.copyload, %bb.eb ] ; 2 uses
  %.sroa.9164.0 = phi i64 [ %.sroa.0155.0.i, %bb.en ], [ 1, %bb.ea ], [ 1, %bb.eb ] ; 2 uses
  %i.rr = icmp sgt i64 %.sroa.0.0.i98, 0
  br i1 %i.rr, label %bb.ec, label %bb.ep

bb.ec:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs9fPPV5zPXBl_5typst.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i, i64 noundef %.sroa.0.0.i98, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !27469
  br label %bb.ep

bb.ed:                                            ; preds = %bb.du
  %i.rs = load i64, ptr %1, align 8, !range !55, !alias.scope !27452, !noundef !28
  %i.rt = icmp eq i64 %i.rs, -1
  br i1 %i.rt, label %bb.eg, label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.du
  %i.ru = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs9fPPV5zPXBl_5typst5world8EMPTY_ID, i64 8) acquire, align 8, !noalias !27454
  %i.rv = icmp eq i32 %i.ru, 0
  br i1 %i.rv, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE5force0ECs9fPPV5zPXBl_5typst.exit.i, label %bb.ef, !prof !43

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !27454
  store ptr @_RNvNtCs9fPPV5zPXBl_5typst5world8EMPTY_ID, ptr %i.d, align 8, !noalias !27454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !27454
  store ptr %i.d, ptr %i.c, align 8, !noalias !27454
  invoke void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs9fPPV5zPXBl_5typst5world8EMPTY_ID, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @124, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114)
          to label %.noexc100.i unwind label %bb.dx, !noalias !27454

.noexc100.i:                                      ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !27454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !27454
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE5force0ECs9fPPV5zPXBl_5typst.exit.i

bb.eg:                                            ; preds = %bb.ed
  %i.rw = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs9fPPV5zPXBl_5typst5world8STDIN_ID, i64 8) acquire, align 8, !noalias !27454
  %i.rx = icmp eq i32 %i.rw, 0
  br i1 %i.rx, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE5force0ECs9fPPV5zPXBl_5typst.exit102.i, label %bb.eh, !prof !43

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27454
  store ptr @_RNvNtCs9fPPV5zPXBl_5typst5world8STDIN_ID, ptr %i.b, align 8, !noalias !27454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27454
  store ptr %i.b, ptr %i.a, align 8, !noalias !27454
  invoke void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs9fPPV5zPXBl_5typst5world8STDIN_ID, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @124, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114)
          to label %.noexc101.i unwind label %bb.dx, !noalias !27454

.noexc101.i:                                      ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27454
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE5force0ECs9fPPV5zPXBl_5typst.exit102.i

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE5force0ECs9fPPV5zPXBl_5typst.exit102.i: ; preds = %.noexc101.i, %bb.eg
  %i.ry = load i16, ptr @_RNvNtCs9fPPV5zPXBl_5typst5world8STDIN_ID, align 8, !range !30, !noalias !27454, !noundef !28
  br label %bb.dz

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE5force0ECs9fPPV5zPXBl_5typst.exit.i: ; preds = %.noexc100.i, %bb.ee
  %i.rz = load i16, ptr @_RNvNtCs9fPPV5zPXBl_5typst5world8EMPTY_ID, align 8, !range !30, !noalias !27454, !noundef !28
  br label %bb.dz

bb.ei:                                            ; preds = %bb.dz
  %i.sa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sb = icmp eq i64 %i.qi, 0
  br i1 %i.sb, label %.body.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ql) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ql, i64 noundef %i.qi, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !27470
  br label %.body.i

bb.ek:                                            ; preds = %bb.dz
  %.sroa.20.24.copyload = load ptr, ptr %i.k, align 8, !noalias !27467
  %.sroa.23.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.23.24.copyload = load i64, ptr %.sroa.23.24..sroa_idx, align 8, !noalias !27467
  %.sroa.25.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.25, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.25.24..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !27454
  %i.sc = ptrtoint ptr %i.ql to i64
  %i.sd = icmp sgt i64 %.sroa.0.0.i98, 0
  br i1 %i.sd, label %bb.el, label %bb.eq

bb.el:                                            ; preds = %bb.ek
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i, i64 noundef %.sroa.0.0.i98, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !27471
  br label %bb.eq

bb.em:                                            ; preds = %bb.dx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ql) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ql, i64 noundef %i.qi, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !27472
  br label %.body.i

bb.en:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i89.i, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i87.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i89.i ], [ %i.qm, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i87.i ] ; 2 uses
  %.sroa.0155.0.i = phi i64 [ 2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i89.i ], [ 4, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i87.i ]
  %.sroa.8158.sroa.0.0.i = phi ptr [ %.sroa.8158.sroa.0.0.copyload.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i89.i ], [ undef, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i87.i ]
  %.sroa.8158.sroa.4.0.i = phi i64 [ %.sroa.8158.sroa.4.0.copyload.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i89.i ], [ undef, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i87.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !27454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !27454
  %.sroa.15.sroa.0.0.extract.trunc172 = trunc i64 %.pre-phi.i to i8
  %.sroa.15.sroa.9.0.extract.shift178 = lshr i64 %.pre-phi.i, 8
  %.sroa.15.sroa.9.0.extract.trunc179 = trunc nuw i64 %.sroa.15.sroa.9.0.extract.shift178 to i56
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs9fPPV5zPXBl_5typst.exit.i

bb.eo:                                            ; preds = %bb.cy, %bb.cn
  %i.se = landingpad { ptr, i32 }
          cleanup
  br label %.body107

.body107:                                         ; preds = %bb.ct, %.body.i, %bb.de, %bb.eo
  %eh.lpad-body108 = phi { ptr, i32 } [ %i.se, %bb.eo ], [ %i.pm, %bb.ct ], [ %.pn70.i, %bb.de ], [ %.pn70.i, %.body.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock8LazyLockNtNtCsc4241EHy6Do_9typst_kit5fonts9FontStoreINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1o_NtNtB4_6marker4SendNtB3m_4SyncEL_EEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 16 dereferenceable(112) %i.ak) #62
          to label %bb.cj unwind label %bb.ey

bb.ep:                                            ; preds = %bb.ec, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs9fPPV5zPXBl_5typst.exit.i, %_RNCNvMs1_NtCs9fPPV5zPXBl_5typst5worldNtB7_11SystemFiles3new0B9_.exit.i
  %.sroa.15.sroa.9.sroa.0.1.ph = phi i56 [ %.sroa.15.sroa.9.0.extract.trunc181, %_RNCNvMs1_NtCs9fPPV5zPXBl_5typst5worldNtB7_11SystemFiles3new0B9_.exit.i ], [ %.sroa.15.sroa.9.sroa.0.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs9fPPV5zPXBl_5typst.exit.i ], [ %.sroa.15.sroa.9.sroa.0.0, %bb.ec ]
  %.sroa.15.sroa.0.1.ph = phi i8 [ %.sroa.15.sroa.0.0.extract.trunc173, %_RNCNvMs1_NtCs9fPPV5zPXBl_5typst5worldNtB7_11SystemFiles3new0B9_.exit.i ], [ %.sroa.15.sroa.0.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs9fPPV5zPXBl_5typst.exit.i ], [ %.sroa.15.sroa.0.0, %bb.ec ]
  %.sroa.23.1.ph = phi i64 [ %i.os, %_RNCNvMs1_NtCs9fPPV5zPXBl_5typst5worldNtB7_11SystemFiles3new0B9_.exit.i ], [ %.sroa.23.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs9fPPV5zPXBl_5typst.exit.i ], [ %.sroa.23.0, %bb.ec ]
  %.sroa.20.1.ph = phi ptr [ %.sroa.8.0.i, %_RNCNvMs1_NtCs9fPPV5zPXBl_5typst5worldNtB7_11SystemFiles3new0B9_.exit.i ], [ %.sroa.20.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs9fPPV5zPXBl_5typst.exit.i ], [ %.sroa.20.0, %bb.ec ]
  %.sroa.9164.1.ph = phi i64 [ %.sroa.0139.0.i, %_RNCNvMs1_NtCs9fPPV5zPXBl_5typst5worldNtB7_11SystemFiles3new0B9_.exit.i ], [ %.sroa.9164.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs9fPPV5zPXBl_5typst.exit.i ], [ %.sroa.9164.0, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.15.sroa.9.0.insert.ext = zext i56 %.sroa.15.sroa.9.sroa.0.1.ph to i64
  %.sroa.15.sroa.9.0.insert.shift = shl nuw i64 %.sroa.15.sroa.9.0.insert.ext, 8
  %.sroa.15.sroa.0.0.insert.ext = zext i8 %.sroa.15.sroa.0.1.ph to i64
  %.sroa.15.sroa.0.0.insert.insert = or disjoint i64 %.sroa.15.sroa.9.0.insert.shift, %.sroa.15.sroa.0.0.insert.ext
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9164.1.ph, ptr %i.sf, align 8
  %.sroa.4227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.15.sroa.0.0.insert.insert, ptr %.sroa.4227.0..sroa_idx, align 16
  %.sroa.5228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.20.1.ph, ptr %.sroa.5228.0..sroa_idx, align 8
  %.sroa.6229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.23.1.ph, ptr %.sroa.6229.0..sroa_idx, align 16
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %i.sg, align 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock8LazyLockNtNtCsc4241EHy6Do_9typst_kit5fonts9FontStoreINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1o_NtNtB4_6marker4SendNtB3m_4SyncEL_EEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 16 dereferenceable(112) %i.ak)
          to label %bb.et unwind label %bb.es

bb.eq:                                            ; preds = %bb.ek, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.4225.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4225, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.4225.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @12, i64 32, i1 false)
  %.sroa.11.sroa.6.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.11.sroa.6.0..sroa.11.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.12, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %.sroa.023, ptr noundef nonnull align 16 dereferenceable(240) %i.al, i64 240, i1 false)
  %.sroa.023.240..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.023, i64 240
end_hunk_3
begin_hunk_4_@_RNvXNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst:bb.a
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [72 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.not = icmp eq ptr %.sroa.06.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.58.0.copyload = load i64, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.47.0.copyload = load i64, ptr %.sroa.47.0..sroa_idx, align 8 ; 2 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.06.0.copyload, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.47.0.copyload, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx, align 8
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.06.0.copyload, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx, align 8
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.47.0.copyload, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink36 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %.sroa.58.0.copyload.sink = phi i64 [ %.sroa.58.0.copyload, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink36, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sink36, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.sroa.58.0.copyload.sink, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36921
  call fastcc void @_RNvMsz_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE10dying_nextCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c), !inline_history !36912
  %i.f = load ptr, ptr %i.b, align 8, !noalias !36921, !noundef !28 ; 2 uses
  %.not.i35 = icmp eq ptr %i.f, null
  br i1 %.not.i35, label %_RNvXsy_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_RNvMsT_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs9fPPV5zPXBl_5typst.exit.i
  %i.g = phi ptr [ %i.f, %.lr.ph ], [ %i.m, %_RNvMsT_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs9fPPV5zPXBl_5typst.exit.i ] ; 2 uses
  %.sroa.432.0.copyload = load i64, ptr %.sroa.432.0..sroa_idx, align 8, !noalias !36921 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36921
  store ptr %i.c, ptr %i.a, align 8, !noalias !36921
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.432.0.copyload ; 2 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %.sroa.432.0.copyload
  call void @llvm.experimental.noalias.scope.decl(metadata !36922)
  call void @llvm.experimental.noalias.scope.decl(metadata !36923), !noalias !36924
  %.val.i.i = load i64, ptr %i.i, align 8, !range !37, !alias.scope !36925, !noalias !36924, !noundef !28 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i, 0
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val1.i.i = load ptr, ptr %i.l, align 8, !alias.scope !36925, !noalias !36924, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !36926
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.e, %bb.d
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs52A7LXK8cJh_4toml5value5ValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(32) %i.j)
          to label %_RNvMsT_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs9fPPV5zPXBl_5typst.exit.i unwind label %.body.i, !inline_history !36919

_RNvMsT_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs9fPPV5zPXBl_5typst.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36921
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36921
  call fastcc void @_RNvMsz_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE10dying_nextCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c), !inline_history !36912
  %i.m = load ptr, ptr %i.b, align 8, !noalias !36921, !noundef !28 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_RNvXsy_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit, label %bb.d

.body.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RNvXNvXsy_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB8_8IntoIterpppENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtBe_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueNtNtBe_5alloc6GlobalEB1e_4dropCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXsy_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtBQ_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueNtNtBQ_5alloc6GlobalEECs9fPPV5zPXBl_5typst.exit.i unwind label %bb.f, !inline_history !36920

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXsy_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtBQ_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueNtNtBQ_5alloc6GlobalEECs9fPPV5zPXBl_5typst.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.n

bb.f:                                             ; preds = %.body.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !inline_history !36912
  unreachable

_RNvXsy_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit: ; preds = %_RNvMsT_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs9fPPV5zPXBl_5typst.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvCs6xpQEr8gLsQ_11typst_utils7displayINtB2_7WrapperNCNCNvNtCs9fPPV5zPXBl_5typst5fonts10write_axis00ENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtBZ_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !28, !align !39, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36929
  store ptr %0, ptr %i.a, align 8, !noalias !36929
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs0_NtNtNtCsdaEETE4DqmE_13typst_library4text4font10variationsNtB5_9AxisValueNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !36929
  %i.c = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @374, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36929
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvCs6xpQEr8gLsQ_11typst_utils7displayINtB2_7WrapperNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variant0ENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtBX_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28 ; 2 uses
  %i.b = load ptr, ptr %.val, align 8, !noalias !36932, !noundef !28 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noalias !36932, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36932
  store ptr %i.b, ptr %i.a, align 8, !noalias !36932
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.d, ptr %i.e, align 8, !noalias !36932
  %i.f = call noundef zeroext i1 @_RNvXs1b_NtCsaL1QbXo9JQH_3std4pathNtB6_7DisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36932
  br label %_RNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variant0B5_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @430, i64 noundef 10)
  br label %_RNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variant0B5_.exit

_RNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variant0B5_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvCs6xpQEr8gLsQ_11typst_utils7displayINtB2_7WrapperNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants0_0ENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtBX_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [64 x i8], align 8                ; 11 uses
  %i.g = alloca [2 x i8], align 2                 ; 4 uses
  %i.h = alloca [2 x i8], align 2                 ; 4 uses
  %i.i = alloca [2 x i8], align 2                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [64 x i8], align 8                ; 11 uses
  %i.l = alloca [2 x i8], align 2                 ; 4 uses
  %i.m = alloca [2 x i8], align 2                 ; 4 uses
  %i.n = alloca [2 x i8], align 2                 ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [64 x i8], align 8                ; 11 uses
  %i.q = alloca [4 x i8], align 4                 ; 4 uses
  %i.r = alloca [4 x i8], align 4                 ; 4 uses
  %i.s = alloca [4 x i8], align 4                 ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [64 x i8], align 8                ; 11 uses
  %i.v = alloca [4 x i8], align 4                 ; 4 uses
  %i.w = alloca [4 x i8], align 4                 ; 4 uses
  %i.x = alloca [4 x i8], align 4                 ; 4 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [64 x i8], align 8                ; 11 uses
  %i.aa = alloca [4 x i8], align 4                ; 4 uses
  %i.ab = alloca [4 x i8], align 4                ; 4 uses
  %i.ac = alloca [4 x i8], align 4                ; 4 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !28, !align !83, !noundef !28 ; 34 uses
  %.val1 = load ptr, ptr %1, align 8              ; 12 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.af, align 8           ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36958)
  %i.ag = load i8, ptr %.val, align 4, !alias.scope !36958, !noundef !28
  switch i8 %i.ag, label %bb.b [
    i8 105, label %bb.c
    i8 115, label %bb.d
    i8 119, label %bb.e
    i8 111, label %bb.f
  ]

bb.b:                                             ; preds = %bb.j, %bb.i, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !36958
  call void @_RNvMNtNtNtCsdaEETE4DqmE_13typst_library4text4font3tagNtB2_3Tag12to_str_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %.val)
  %i.ah = load i64, ptr %i.ae, align 8, !range !55, !noalias !36958, !noundef !28 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !36958 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noalias !36958
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !36959)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !36958
  store ptr %i.aj, ptr %i.ad, align 8, !noalias !36960
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.al, ptr %i.am, align 8, !noalias !36960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !36960
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.ao = load float, ptr %i.an, align 4, !alias.scope !36961, !noundef !28
  store float %i.ao, ptr %i.ac, align 4, !noalias !36960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !36960
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !alias.scope !36961, !noundef !28
  store float %i.aq, ptr %i.ab, align 4, !noalias !36960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !36960
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.as = load float, ptr %i.ar, align 4, !alias.scope !36961, !noundef !28
  store float %i.as, ptr %i.aa, align 4, !noalias !36960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !36960
  store ptr %i.ad, ptr %i.z, align 8, !noalias !36960
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !36960
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.ac, ptr %i.at, align 8, !noalias !36960
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr @_RNvXs0_NtNtNtCsdaEETE4DqmE_13typst_library4text4font10variationsNtB5_9AxisValueNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i.i.i, align 8, !noalias !36960
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %i.ab, ptr %i.au, align 8, !noalias !36960
  %.sroa.411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store ptr @_RNvXs0_NtNtNtCsdaEETE4DqmE_13typst_library4text4font10variationsNtB5_9AxisValueNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx.i.i.i, align 8, !noalias !36960
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store ptr %i.aa, ptr %i.av, align 8, !noalias !36960
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  store ptr @_RNvXs0_NtNtNtCsdaEETE4DqmE_13typst_library4text4font10variationsNtB5_9AxisValueNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.415.0..sroa_idx.i.i.i, align 8, !noalias !36960
  %i.aw = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val2, ptr noundef nonnull @198, ptr noundef nonnull %i.z)
          to label %bb.p unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !36958, !noundef !28
  %i.az = icmp eq i8 %i.ay, 116
  %i.ba = getelementptr inbounds nuw i8, ptr %.val, i64 2
  %i.bb = load i8, ptr %i.ba, align 2, !alias.scope !36958
  %i.bc = icmp eq i8 %i.bb, 97
  %or.cond.i.i = select i1 %i.az, i1 %i.bc, i1 false
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 3
  %i.be = load i8, ptr %i.bd, align 1, !alias.scope !36958
  %i.bf = icmp eq i8 %i.be, 108
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %i.bf, i1 false
  br i1 %or.cond5.i.i, label %bb.g, label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !36958, !noundef !28
  %i.bi = icmp eq i8 %i.bh, 108
  %i.bj = getelementptr inbounds nuw i8, ptr %.val, i64 2
  %i.bk = load i8, ptr %i.bj, align 2, !alias.scope !36958
  %i.bl = icmp eq i8 %i.bk, 110
  %or.cond8.i.i = select i1 %i.bi, i1 %i.bl, i1 false
  %i.bm = getelementptr inbounds nuw i8, ptr %.val, i64 3
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !36958
  %i.bo = icmp eq i8 %i.bn, 116
  %or.cond11.i.i = select i1 %or.cond8.i.i, i1 %i.bo, i1 false
  br i1 %or.cond11.i.i, label %bb.h, label %bb.b

bb.e:                                             ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %.val, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !alias.scope !36958, !noundef !28
  switch i8 %i.bq, label %bb.b [
    i8 103, label %bb.i
    i8 100, label %bb.j
  ]

bb.f:                                             ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %.val, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !36958, !noundef !28
  %i.bt = icmp eq i8 %i.bs, 112
  %i.bu = getelementptr inbounds nuw i8, ptr %.val, i64 2
  %i.bv = load i8, ptr %i.bu, align 2, !alias.scope !36958
  %i.bw = icmp eq i8 %i.bv, 115
  %or.cond20.i.i = select i1 %i.bt, i1 %i.bw, i1 false
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 3
  %i.by = load i8, ptr %i.bx, align 1, !alias.scope !36958
  %i.bz = icmp eq i8 %i.by, 122
  %or.cond23.i.i = select i1 %or.cond20.i.i, i1 %i.bz, i1 false
  br i1 %or.cond23.i.i, label %bb.m, label %bb.b

bb.g:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36962)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !36958
  store ptr @686, ptr %i.y, align 8, !noalias !36963
  %i.ca = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 6, ptr %i.ca, align 8, !noalias !36963
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !36963
  %i.cb = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.cc = load float, ptr %i.cb, align 4, !alias.scope !36964, !noundef !28
  store float %i.cc, ptr %i.x, align 4, !noalias !36963
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !36963
  %i.cd = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ce = load float, ptr %i.cd, align 4, !alias.scope !36964, !noundef !28
  store float %i.ce, ptr %i.w, align 4, !noalias !36963
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !36963
  %i.cf = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.cg = load float, ptr %i.cf, align 4, !alias.scope !36964, !noundef !28
  store float %i.cg, ptr %i.v, align 4, !noalias !36963
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !36963
  store ptr %i.y, ptr %i.u, align 8, !noalias !36963
  %.sroa.43.0..sroa_idx.i41.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.43.0..sroa_idx.i41.i.i, align 8, !noalias !36963
  %i.ch = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.x, ptr %i.ch, align 8, !noalias !36963
  %.sroa.47.0..sroa_idx.i42.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @_RNvXs0_NtNtNtCsdaEETE4DqmE_13typst_library4text4font10variationsNtB5_9AxisValueNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i42.i.i, align 8, !noalias !36963
  %i.ci = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.w, ptr %i.ci, align 8, !noalias !36963
  %.sroa.411.0..sroa_idx.i43.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store ptr @_RNvXs0_NtNtNtCsdaEETE4DqmE_13typst_library4text4font10variationsNtB5_9AxisValueNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx.i43.i.i, align 8, !noalias !36963
  %i.cj = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store ptr %i.v, ptr %i.cj, align 8, !noalias !36963
  %.sroa.415.0..sroa_idx.i44.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store ptr @_RNvXs0_NtNtNtCsdaEETE4DqmE_13typst_library4text4font10variationsNtB5_9AxisValueNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.415.0..sroa_idx.i44.i.i, align 8, !noalias !36963
  %i.ck = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val2, ptr noundef nonnull @198, ptr noundef nonnull %i.u), !noalias !36964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !36963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !36963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !36963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !36963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !36958
  br label %_RNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants0_0B5_.exit

bb.h:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36965)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !36958
  store ptr @687, ptr %i.t, align 8, !noalias !36966
  %i.cl = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 5, ptr %i.cl, align 8, !noalias !36966
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !36966
  %i.cm = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.cn = load float, ptr %i.cm, align 4, !alias.scope !36967, !noundef !28
  store float %i.cn, ptr %i.s, align 4, !noalias !36966
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !36966
  %i.co = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.cp = load float, ptr %i.co, align 4, !alias.scope !36967, !noundef !28
  store float %i.cp, ptr %i.r, align 4, !noalias !36966
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !36966
  %i.cq = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.cr = load float, ptr %i.cq, align 4, !alias.scope !36967, !noundef !28
  store float %i.cr, ptr %i.q, align 4, !noalias !36966
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !36966
  store ptr %i.t, ptr %i.p, align 8, !noalias !36966
  %.sroa.43.0..sroa_idx.i45.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.43.0..sroa_idx.i45.i.i, align 8, !noalias !36966
  %i.cs = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.s, ptr %i.cs, align 8, !noalias !36966
  %.sroa.47.0..sroa_idx.i46.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXs0_NtNtNtCsdaEETE4DqmE_13typst_library4text4font10variationsNtB5_9AxisValueNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i46.i.i, align 8, !noalias !36966
  %i.ct = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.r, ptr %i.ct, align 8, !noalias !36966
  %.sroa.411.0..sroa_idx.i47.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr @_RNvXs0_NtNtNtCsdaEETE4DqmE_13typst_library4text4font10variationsNtB5_9AxisValueNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx.i47.i.i, align 8, !noalias !36966
  %i.cu = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.q, ptr %i.cu, align 8, !noalias !36966
  %.sroa.415.0..sroa_idx.i48.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr @_RNvXs0_NtNtNtCsdaEETE4DqmE_13typst_library4text4font10variationsNtB5_9AxisValueNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.415.0..sroa_idx.i48.i.i, align 8, !noalias !36966
  %i.cv = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val2, ptr noundef nonnull @198, ptr noundef nonnull %i.p), !noalias !36967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !36966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !36966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !36966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !36966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !36958
  br label %_RNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants0_0B5_.exit

bb.i:                                             ; preds = %bb.e
  %i.cw = getelementptr inbounds nuw i8, ptr %.val, i64 2
  %i.cx = load i8, ptr %i.cw, align 2, !alias.scope !36958, !noundef !28
  %i.cy = icmp eq i8 %i.cx, 104
  %i.cz = getelementptr inbounds nuw i8, ptr %.val, i64 3
  %i.da = load i8, ptr %i.cz, align 1, !alias.scope !36958
  %i.db = icmp eq i8 %i.da, 116
  %or.cond14.i.i = select i1 %i.cy, i1 %i.db, i1 false
  br i1 %or.cond14.i.i, label %bb.k, label %bb.b

bb.j:                                             ; preds = %bb.e
  %i.dc = getelementptr inbounds nuw i8, ptr %.val, i64 2
  %i.dd = load i8, ptr %i.dc, align 2, !alias.scope !36958, !noundef !28
  %i.de = icmp eq i8 %i.dd, 116
  %i.df = getelementptr inbounds nuw i8, ptr %.val, i64 3
  %i.dg = load i8, ptr %i.df, align 1, !alias.scope !36958
  %i.dh = icmp eq i8 %i.dg, 104
  %or.cond17.i.i = select i1 %i.de, i1 %i.dh, i1 false
  br i1 %or.cond17.i.i, label %bb.l, label %bb.b

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36968)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !36958
  store ptr @688, ptr %i.o, align 8, !noalias !36969
  %i.di = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 6, ptr %i.di, align 8, !noalias !36969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !36969
  %i.dj = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.dk = load float, ptr %i.dj, align 4, !alias.scope !36969, !noundef !28
  %i.dl = tail call noundef i16 @_RNvMs2_NtNtNtCsdaEETE4DqmE_13typst_library4text4font7variantNtB5_10FontWeight9from_wght(float noundef %i.dk), !noalias !36969
  store i16 %i.dl, ptr %i.n, align 2, !noalias !36969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !36969
  %i.dm = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.dn = load float, ptr %i.dm, align 4, !alias.scope !36969, !noundef !28
  %i.do = tail call noundef i16 @_RNvMs2_NtNtNtCsdaEETE4DqmE_13typst_library4text4font7variantNtB5_10FontWeight9from_wght(float noundef %i.dn), !noalias !36969
  store i16 %i.do, ptr %i.m, align 2, !noalias !36969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !36969
  %i.dp = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.dq = load float, ptr %i.dp, align 4, !alias.scope !36969, !noundef !28
  %i.dr = tail call noundef i16 @_RNvMs2_NtNtNtCsdaEETE4DqmE_13typst_library4text4font7variantNtB5_10FontWeight9from_wght(float noundef %i.dq), !noalias !36969
  store i16 %i.dr, ptr %i.l, align 2, !noalias !36969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !36969
  store ptr %i.o, ptr %i.k, align 8, !noalias !36969
  %.sroa.43.0..sroa_idx.i49.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.43.0..sroa_idx.i49.i.i, align 8, !noalias !36969
  %i.ds = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.n, ptr %i.ds, align 8, !noalias !36969
  %.sroa.47.0..sroa_idx.i50.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXs4_NtNtNtCsdaEETE4DqmE_13typst_library4text4font7variantNtB5_10FontWeightNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i50.i.i, align 8, !noalias !36969
  %i.dt = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.m, ptr %i.dt, align 8, !noalias !36969
  %.sroa.411.0..sroa_idx.i51.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr @_RNvXs4_NtNtNtCsdaEETE4DqmE_13typst_library4text4font7variantNtB5_10FontWeightNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx.i51.i.i, align 8, !noalias !36969
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store ptr %i.l, ptr %i.du, align 8, !noalias !36969
  %.sroa.415.0..sroa_idx.i52.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr @_RNvXs4_NtNtNtCsdaEETE4DqmE_13typst_library4text4font7variantNtB5_10FontWeightNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.415.0..sroa_idx.i52.i.i, align 8, !noalias !36969
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %i.dv = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val2, ptr noundef nonnull @198, ptr noundef nonnull %i.k), !noalias !36969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !36969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !36969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !36969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !36969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !36958
  br label %_RNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants0_0B5_.exit

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36970)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !36958
  store ptr @689, ptr %i.j, align 8, !noalias !36971
  %i.dw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 7, ptr %i.dw, align 8, !noalias !36971
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !36971
  %i.dx = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.dy = load float, ptr %i.dx, align 4, !alias.scope !36971, !noundef !28
  %i.dz = tail call noundef i16 @_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library4text4font7variantNtB5_11FontStretch9from_wdth(float noundef %i.dy), !noalias !36971
  store i16 %i.dz, ptr %i.i, align 2, !noalias !36971
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !36971
  %i.ea = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.eb = load float, ptr %i.ea, align 4, !alias.scope !36971, !noundef !28
  %i.ec = tail call noundef i16 @_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library4text4font7variantNtB5_11FontStretch9from_wdth(float noundef %i.eb), !noalias !36971
  store i16 %i.ec, ptr %i.h, align 2, !noalias !36971
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !36971
  %i.ed = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.ee = load float, ptr %i.ed, align 4, !alias.scope !36971, !noundef !28
  %i.ef = tail call noundef i16 @_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library4text4font7variantNtB5_11FontStretch9from_wdth(float noundef %i.ee), !noalias !36971
  store i16 %i.ef, ptr %i.g, align 2, !noalias !36971
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !36971
  store ptr %i.j, ptr %i.f, align 8, !noalias !36971
  %.sroa.43.0..sroa_idx.i53.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.43.0..sroa_idx.i53.i.i, align 8, !noalias !36971
  %i.eg = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.i, ptr %i.eg, align 8, !noalias !36971
  %.sroa.47.0..sroa_idx.i54.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXs9_NtNtNtCsdaEETE4DqmE_13typst_library4text4font7variantNtB5_11FontStretchNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i54.i.i, align 8, !noalias !36971
  %i.eh = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.h, ptr %i.eh, align 8, !noalias !36971
  %.sroa.411.0..sroa_idx.i55.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr @_RNvXs9_NtNtNtCsdaEETE4DqmE_13typst_library4text4font7variantNtB5_11FontStretchNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx.i55.i.i, align 8, !noalias !36971
  %i.ei = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.g, ptr %i.ei, align 8, !noalias !36971
  %.sroa.415.0..sroa_idx.i56.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr @_RNvXs9_NtNtNtCsdaEETE4DqmE_13typst_library4text4font7variantNtB5_11FontStretchNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.415.0..sroa_idx.i56.i.i, align 8, !noalias !36971
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %i.ej = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val2, ptr noundef nonnull @198, ptr noundef nonnull %i.f), !noalias !36971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !36971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !36971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !36971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !36971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !36958
  br label %_RNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants0_0B5_.exit

bb.m:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36972)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !36958
  store ptr @690, ptr %i.e, align 8, !noalias !36973
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 12, ptr %i.ek, align 8, !noalias !36973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !36973
  %i.el = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.em = load float, ptr %i.el, align 4, !alias.scope !36973, !noundef !28
  store float %i.em, ptr %i.d, align 4, !noalias !36973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !36973
  %i.en = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.eo = load float, ptr %i.en, align 4, !alias.scope !36973, !noundef !28
  store float %i.eo, ptr %i.c, align 4, !noalias !36973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36973
  %i.ep = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.eq = load float, ptr %i.ep, align 4, !alias.scope !36973, !noundef !28
  store float %i.eq, ptr %i.b, align 4, !noalias !36973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36973
  store ptr %i.e, ptr %i.a, align 8, !noalias !36973
  %.sroa.43.0..sroa_idx.i57.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.43.0..sroa_idx.i57.i.i, align 8, !noalias !36973
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.er, align 8, !noalias !36973
  %.sroa.47.0..sroa_idx.i58.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXNvCs6xpQEr8gLsQ_11typst_utils7displayINtB2_7WrapperNCNCNvNtCs9fPPV5zPXBl_5typst5fonts10write_axis00ENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtBZ_, ptr %.sroa.47.0..sroa_idx.i58.i.i, align 8, !noalias !36973
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %i.es, align 8, !noalias !36973
  %.sroa.411.0..sroa_idx.i59.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXNvCs6xpQEr8gLsQ_11typst_utils7displayINtB2_7WrapperNCNCNvNtCs9fPPV5zPXBl_5typst5fonts10write_axis00ENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtBZ_, ptr %.sroa.411.0..sroa_idx.i59.i.i, align 8, !noalias !36973
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %i.et, align 8, !noalias !36973
  %.sroa.415.0..sroa_idx.i60.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXNvCs6xpQEr8gLsQ_11typst_utils7displayINtB2_7WrapperNCNCNvNtCs9fPPV5zPXBl_5typst5fonts10write_axis00ENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtBZ_, ptr %.sroa.415.0..sroa_idx.i60.i.i, align 8, !noalias !36973
  %i.eu = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val2, ptr noundef nonnull @198, ptr noundef nonnull %i.a), !noalias !36973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !36973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !36973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !36958
  br label %_RNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants0_0B5_.exit

bb.n:                                             ; preds = %bb.b
  %i.ev = landingpad { ptr, i32 }
          cleanup
  %i.ew = icmp sgt i64 %i.ah, 0
  br i1 %i.ew, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs9fPPV5zPXBl_5typst.exit.i.i

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !36974
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs9fPPV5zPXBl_5typst.exit.i.i

bb.p:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !36960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !36960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !36960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !36960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !36958
  %i.ex = icmp sgt i64 %i.ah, 0
  br i1 %i.ex, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs9fPPV5zPXBl_5typst.exit63.i.i

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !36975
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs9fPPV5zPXBl_5typst.exit63.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs9fPPV5zPXBl_5typst.exit63.i.i: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !36958
  br label %_RNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants0_0B5_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %bb.o, %bb.n
  resume { ptr, i32 } %i.ev

_RNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants0_0B5_.exit: ; preds = %bb.g, %bb.h, %bb.k, %bb.l, %bb.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs9fPPV5zPXBl_5typst.exit63.i.i
  %.sroa.0.0.in.i.i = phi i1 [ %i.aw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs9fPPV5zPXBl_5typst.exit63.i.i ], [ %i.ck, %bb.g ], [ %i.cv, %bb.h ], [ %i.dv, %bb.k ], [ %i.ej, %bb.l ], [ %i.eu, %bb.m ]
  ret i1 %.sroa.0.0.in.i.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvCs6xpQEr8gLsQ_11typst_utils7displayINtB2_7WrapperNCNvNtCs9fPPV5zPXBl_5typst5fonts5fontss0_0ENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtBX_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [64 x i8], align 8                ; 11 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 9 uses
  %i.j = alloca [4 x i8], align 4                 ; 5 uses
  %i.k = alloca [2 x i8], align 2                 ; 5 uses
  %i.l = alloca [2 x i8], align 2                 ; 5 uses
  %i.m = alloca [1 x i8], align 1                 ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %1, align 8               ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.p, align 8            ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36988)
  %i.q = load ptr, ptr %0, align 8, !alias.scope !36988, !nonnull !28, !align !39, !noundef !28 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !36988, !nonnull !28, !align !39, !noundef !28 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !noalias !36988, !noundef !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !36988
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !36988, !nonnull !28, !noundef !28
  %i.y = load i8, ptr %i.x, align 1, !range !53, !noalias !36988, !noundef !28
  %i.z = trunc nuw i8 %i.y to i1                  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36989)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !36988
  store ptr %i.t, ptr %i.o, align 8, !noalias !36990
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.v, ptr %i.aa, align 8, !noalias !36990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !36990
  store ptr %i.o, ptr %i.n, align 8, !noalias !36990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !36990
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 76
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.ad = load i8, ptr %i.ac, align 8, !range !40, !alias.scope !36989, !noalias !36988, !noundef !28
  store i8 %i.ad, ptr %i.m, align 1, !noalias !36990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !36990
  %i.ae = load i16, ptr %i.ab, align 4, !alias.scope !36989, !noalias !36988, !noundef !28
  store i16 %i.ae, ptr %i.l, align 2, !noalias !36990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !36990
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 78
  %i.ag = load i16, ptr %i.af, align 2, !alias.scope !36989, !noalias !36988, !noundef !28
  store i16 %i.ag, ptr %i.k, align 2, !noalias !36990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !36990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !36990
  %..i.i = select i1 %i.z, i32 9492, i32 9500
  %.43.i.i = select i1 %i.z, ptr @692, ptr @691
  %.44.i.i = select i1 %i.z, i64 5, i64 7
  store i32 %..i.i, ptr %i.j, align 4, !noalias !36990
  store ptr %.43.i.i, ptr %i.i, align 8, !noalias !36990, !captures !117
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.44.i.i, ptr %i.ah, align 8, !noalias !36990
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !36989, !noalias !36988, !nonnull !28, !noundef !28 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !36989, !noalias !36988, !noundef !28 ; 9 uses
  %i.am = shl nuw i64 %i.al, 4                    ; 6 uses
  %i.an = icmp eq i64 %i.al, 0                    ; 2 uses
  br i1 %i.an, label %.thread24.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.a
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !36991
  %i.ao = call noundef align 4 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.am, i64 noundef range(i64 1, 17) 4) #56, !noalias !36991 ; 16 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.b, label %.lr.ph.preheader.i.i.i

bb.b:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.am) #61, !noalias !36992
  unreachable

.lr.ph.preheader.i.i.i:                           ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.al
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.preheader.i.i.i
  %.sroa.014.023.i.i.i = phi ptr [ %i.au, %bb.c ], [ %i.aj, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.sroa.7.022.i.i.i = phi i64 [ %i.at, %bb.c ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.10.021.i.i.i = phi i64 [ %i.as, %bb.c ], [ %i.al, %.lr.ph.preheader.i.i.i ]
  %i.ar = icmp eq ptr %.sroa.014.023.i.i.i, %i.aq
  br i1 %i.ar, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9fPPV5zPXBl_5typst.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.as = add nsw i64 %.sroa.10.021.i.i.i, -1     ; 2 uses
  %i.at = add nuw nsw i64 %.sroa.7.022.i.i.i, 1
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i.i.i, i64 16
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %.sroa.7.022.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.av, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.014.023.i.i.i, i64 16, i1 false), !noalias !36993
  %i.aw = icmp eq i64 %i.as, 0
  br i1 %i.aw, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9fPPV5zPXBl_5typst.exit.i.i, label %.lr.ph.i.i.i

_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %i.ax = icmp eq i64 %i.al, 1
  br i1 %i.ax, label %bb.i, label %bb.d, !prof !127

bb.d:                                             ; preds = %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9fPPV5zPXBl_5typst.exit.i.i
  %i.ay = icmp samesign ult i64 %i.al, 21
  br i1 %i.ay, label %bb.f, label %bb.e, !prof !43

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_mainNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0INtNtB2d_3vec3VecBZ_EEB31_(ptr noalias nofree noundef nonnull align 4 %i.ao, i64 noundef range(i64 0, 576460752303423488) %i.al) #63
          to label %.thread.i.i unwind label %.loopexit.split-lp.i.i

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1m_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB3p_(ptr noalias nofree noundef nonnull align 4 %i.ao, i64 noundef range(i64 0, 576460752303423488) %i.al)
          to label %.thread.i.i unwind label %.loopexit.split-lp.i.i

.loopexit29.i.i:                                  ; preds = %bb.af
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp.i.i:                           ; preds = %bb.f, %bb.e, %bb.aj, %bb.ad, %bb.ab, %bb.y, %.thread24.i.i, %bb.i
  %.sroa.10.0.i31.i15.ph.i.i = phi ptr [ %i.ao, %bb.y ], [ %i.ao, %bb.ab ], [ %i.ao, %bb.ad ], [ %i.ao, %bb.i ], [ inttoptr (i64 4 to ptr), %.thread24.i.i ], [ inttoptr (i64 4 to ptr), %bb.aj ], [ %i.ao, %bb.e ], [ %i.ao, %bb.f ]
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit29.i.i
  %.sroa.10.0.i31.i15.i.i = phi ptr [ %i.ao, %.loopexit29.i.i ], [ %.sroa.10.0.i31.i15.ph.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit29.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  br i1 %i.an, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisEECs9fPPV5zPXBl_5typst.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.i31.i15.i.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i31.i15.i.i, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) 4) #56, !noalias !36994
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisEECs9fPPV5zPXBl_5typst.exit.i.i

.thread.i.i:                                      ; preds = %bb.f, %bb.e
  %i.az = icmp ult i64 %i.al, 576460752303423488
  call void @llvm.assume(i1 %i.az)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9fPPV5zPXBl_5typst.exit.i.i, %.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !36990
  store ptr %i.j, ptr %i.f, align 8, !noalias !36990
  %.sroa.459.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsk_NtCs3oUPovFnLWP_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.459.0..sroa_idx.i.i, align 8, !noalias !36990
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.n, ptr %i.ba, align 8, !noalias !36990
  %.sroa.463.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXNvCs6xpQEr8gLsQ_11typst_utils7displayINtB2_7WrapperNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variant0ENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtBX_, ptr %.sroa.463.0..sroa_idx.i.i, align 8, !noalias !36990
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.bb = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @693, ptr noundef nonnull %i.f)
          to label %bb.j unwind label %.loopexit.split-lp.i.i, !noalias !36994

.thread24.i.i:                                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !36990
  store ptr %i.j, ptr %i.h, align 8, !noalias !36990
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXsk_NtCs3oUPovFnLWP_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !36990
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.n, ptr %i.bc, align 8, !noalias !36990
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXNvCs6xpQEr8gLsQ_11typst_utils7displayINtB2_7WrapperNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variant0ENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtBX_, ptr %.sroa.416.0..sroa_idx.i.i, align 8, !noalias !36990
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.bd = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @698, ptr noundef nonnull %i.h)
          to label %bb.ai unwind label %.loopexit.split-lp.i.i, !noalias !36994

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !36990
  br i1 %i.bb, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am ; 2 uses
  br label %.lr.ph.i168.i.i

.lr.ph.i168.i.i:                                  ; preds = %bb.l, %bb.k
  %.sroa.0.021.i.i.i = phi ptr [ %i.bf, %bb.l ], [ %i.ao, %bb.k ] ; 17 uses
  %.sroa.0.0619.i.i.i = phi ptr [ %.sroa.0.05.i.i.i, %bb.l ], [ null, %bb.k ] ; 12 uses
  %.sroa.0.0918.i.i.i = phi ptr [ %.sroa.0.08.i.i.i, %bb.l ], [ null, %bb.k ] ; 12 uses
  %.sroa.0.01217.i.i.i = phi ptr [ %.sroa.0.011.i.i.i, %bb.l ], [ null, %bb.k ] ; 12 uses
  %.sroa.0.01516.i.i.i = phi ptr [ %.sroa.0.014.i.i.i, %bb.l ], [ null, %bb.k ] ; 12 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i, i64 16 ; 2 uses
  %i.bg = load i8, ptr %.sroa.0.021.i.i.i, align 4, !alias.scope !36995, !noalias !36994, !noundef !28
  switch i8 %i.bg, label %bb.l [
    i8 105, label %bb.m
    i8 115, label %bb.n
    i8 119, label %bb.o
  ]

bb.l:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %.lr.ph.i168.i.i
  %.sroa.0.014.i.i.i = phi ptr [ %.sroa.0.01516.i.i.i, %bb.o ], [ %.sroa.0.01516.i.i.i, %.lr.ph.i168.i.i ], [ %spec.select.i.i.i, %bb.q ], [ %.sroa.0.01516.i.i.i, %bb.n ], [ %.sroa.0.01516.i.i.i, %bb.w ], [ %.sroa.0.01516.i.i.i, %bb.m ], [ %.sroa.0.01516.i.i.i, %bb.v ], [ %.sroa.0.01516.i.i.i, %bb.u ], [ %.sroa.0.01516.i.i.i, %bb.t ], [ %.sroa.0.01516.i.i.i, %bb.p ], [ %.sroa.0.01516.i.i.i, %bb.s ], [ %.sroa.0.01516.i.i.i, %bb.r ] ; 2 uses
  %.sroa.0.011.i.i.i = phi ptr [ %.sroa.0.01217.i.i.i, %bb.o ], [ %.sroa.0.01217.i.i.i, %.lr.ph.i168.i.i ], [ %.sroa.0.01217.i.i.i, %bb.q ], [ %.sroa.0.01217.i.i.i, %bb.n ], [ %.sroa.0.01217.i.i.i, %bb.w ], [ %.sroa.0.01217.i.i.i, %bb.m ], [ %.sroa.0.01217.i.i.i, %bb.v ], [ %.sroa.0.01217.i.i.i, %bb.u ], [ %.sroa.0.01217.i.i.i, %bb.t ], [ %.sroa.0.01217.i.i.i, %bb.p ], [ %spec.select26.i.i.i, %bb.s ], [ %.sroa.0.01217.i.i.i, %bb.r ] ; 2 uses
  %.sroa.0.08.i.i.i = phi ptr [ %.sroa.0.0918.i.i.i, %bb.o ], [ %.sroa.0.0918.i.i.i, %.lr.ph.i168.i.i ], [ %.sroa.0.0918.i.i.i, %bb.q ], [ %.sroa.0.0918.i.i.i, %bb.n ], [ %.sroa.0.0918.i.i.i, %bb.w ], [ %.sroa.0.0918.i.i.i, %bb.m ], [ %spec.select27.i.i.i, %bb.v ], [ %.sroa.0.0918.i.i.i, %bb.u ], [ %.sroa.0.0918.i.i.i, %bb.t ], [ %.sroa.0.0918.i.i.i, %bb.p ], [ %.sroa.0.0918.i.i.i, %bb.s ], [ %.sroa.0.0918.i.i.i, %bb.r ] ; 2 uses
  %.sroa.0.05.i.i.i = phi ptr [ %.sroa.0.0619.i.i.i, %bb.o ], [ %.sroa.0.0619.i.i.i, %.lr.ph.i168.i.i ], [ %.sroa.0.0619.i.i.i, %bb.q ], [ %.sroa.0.0619.i.i.i, %bb.n ], [ %spec.select28.i.i.i, %bb.w ], [ %.sroa.0.0619.i.i.i, %bb.m ], [ %.sroa.0.0619.i.i.i, %bb.v ], [ %.sroa.0.0619.i.i.i, %bb.u ], [ %.sroa.0.0619.i.i.i, %bb.t ], [ %.sroa.0.0619.i.i.i, %bb.p ], [ %.sroa.0.0619.i.i.i, %bb.s ], [ %.sroa.0.0619.i.i.i, %bb.r ] ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.be
  br i1 %i.bh, label %_RNvMs2_NtNtNtCsdaEETE4DqmE_13typst_library4text4font10variationsNtB5_12StandardAxes5parse.exit.i.i, label %.lr.ph.i168.i.i

bb.m:                                             ; preds = %.lr.ph.i168.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !36995, !noalias !36994, !noundef !28
  %i.bk = icmp eq i8 %i.bj, 116
  br i1 %i.bk, label %bb.p, label %bb.l

bb.n:                                             ; preds = %.lr.ph.i168.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !36995, !noalias !36994, !noundef !28
  %i.bn = icmp eq i8 %i.bm, 108
  br i1 %i.bn, label %bb.r, label %bb.l

bb.o:                                             ; preds = %.lr.ph.i168.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !alias.scope !36995, !noalias !36994, !noundef !28
  switch i8 %i.bp, label %bb.l [
    i8 103, label %bb.t
    i8 100, label %bb.u
  ]

bb.p:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i, i64 2
  %i.br = load i8, ptr %i.bq, align 2, !alias.scope !36995, !noalias !36994, !noundef !28
  %i.bs = icmp eq i8 %i.br, 97
  br i1 %i.bs, label %bb.q, label %bb.l

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i, i64 3
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !36995, !noalias !36994, !noundef !28
  %i.bv = icmp eq i8 %i.bu, 108
  %spec.select.i.i.i = select i1 %i.bv, ptr %.sroa.0.021.i.i.i, ptr %.sroa.0.01516.i.i.i
  br label %bb.l

bb.r:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i, i64 2
  %i.bx = load i8, ptr %i.bw, align 2, !alias.scope !36995, !noalias !36994, !noundef !28
  %i.by = icmp eq i8 %i.bx, 110
  br i1 %i.by, label %bb.s, label %bb.l

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i, i64 3
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !36995, !noalias !36994, !noundef !28
  %i.cb = icmp eq i8 %i.ca, 116
  %spec.select26.i.i.i = select i1 %i.cb, ptr %.sroa.0.021.i.i.i, ptr %.sroa.0.01217.i.i.i
  br label %bb.l

bb.t:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i, i64 2
  %i.cd = load i8, ptr %i.cc, align 2, !alias.scope !36995, !noalias !36994, !noundef !28
  %i.ce = icmp eq i8 %i.cd, 104
  br i1 %i.ce, label %bb.v, label %bb.l

bb.u:                                             ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i, i64 2
  %i.cg = load i8, ptr %i.cf, align 2, !alias.scope !36995, !noalias !36994, !noundef !28
  %i.ch = icmp eq i8 %i.cg, 116
  br i1 %i.ch, label %bb.w, label %bb.l

bb.v:                                             ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i, i64 3
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !36995, !noalias !36994, !noundef !28
  %i.ck = icmp eq i8 %i.cj, 116
  %spec.select27.i.i.i = select i1 %i.ck, ptr %.sroa.0.021.i.i.i, ptr %.sroa.0.0918.i.i.i
  br label %bb.l

bb.w:                                             ; preds = %bb.u
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i, i64 3
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !36995, !noalias !36994, !noundef !28
  %i.cn = icmp eq i8 %i.cm, 104
  %spec.select28.i.i.i = select i1 %i.cn, ptr %.sroa.0.021.i.i.i, ptr %.sroa.0.0619.i.i.i
  br label %bb.l

_RNvMs2_NtNtNtCsdaEETE4DqmE_13typst_library4text4font10variationsNtB5_12StandardAxes5parse.exit.i.i: ; preds = %bb.l
  %.not.i.i = icmp eq ptr %.sroa.0.014.i.i.i, null
  %.not158.i.i = icmp eq ptr %.sroa.0.011.i.i.i, null
  %or.cond.i.i = select i1 %.not.i.i, i1 %.not158.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.z, %_RNvMs2_NtNtNtCsdaEETE4DqmE_13typst_library4text4font10variationsNtB5_12StandardAxes5parse.exit.i.i
  %.not159.i.i = icmp eq ptr %.sroa.0.08.i.i.i, null
  br i1 %.not159.i.i, label %bb.ab, label %bb.aa

bb.y:                                             ; preds = %_RNvMs2_NtNtNtCsdaEETE4DqmE_13typst_library4text4font10variationsNtB5_12StandardAxes5parse.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !36990
  store ptr %i.i, ptr %i.e, align 8, !noalias !36990
  %.sroa.479.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.479.0..sroa_idx.i.i, align 8, !noalias !36990
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.m, ptr %i.co, align 8, !noalias !36990
  %.sroa.483.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsl_NtNtNtCsdaEETE4DqmE_13typst_library4text4font7variantNtB5_9FontStyleNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, ptr %.sroa.483.0..sroa_idx.i.i, align 8, !noalias !36990
  %i.cp = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @694, ptr noundef nonnull %i.e)
          to label %bb.z unwind label %.loopexit.split-lp.i.i, !noalias !36994

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !36990
  br i1 %i.cp, label %.loopexit.i, label %bb.x

bb.aa:                                            ; preds = %bb.ac, %bb.x
  %.not160.i.i = icmp eq ptr %.sroa.0.05.i.i.i, null
  br i1 %.not160.i.i, label %bb.ad, label %.lr.ph.i.i

bb.ab:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !36990
  store ptr %i.i, ptr %i.d, align 8, !noalias !36990
  %.sroa.499.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.499.0..sroa_idx.i.i, align 8, !noalias !36990
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.l, ptr %i.cq, align 8, !noalias !36990
  %.sroa.4103.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs4_NtNtNtCsdaEETE4DqmE_13typst_library4text4font7variantNtB5_10FontWeightNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.4103.0..sroa_idx.i.i, align 8, !noalias !36990
  %i.cr = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @695, ptr noundef nonnull %i.d)
          to label %bb.ac unwind label %.loopexit.split-lp.i.i, !noalias !36994

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !36990
  br i1 %i.cr, label %.loopexit.i, label %bb.aa

.lr.ph.i.i:                                       ; preds = %bb.ae, %bb.aa
  %.sroa.4139.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4143.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.af

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !36990
  store ptr %i.i, ptr %i.c, align 8, !noalias !36990
  %.sroa.4119.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.4119.0..sroa_idx.i.i, align 8, !noalias !36990
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.k, ptr %i.ct, align 8, !noalias !36990
  %.sroa.4123.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs9_NtNtNtCsdaEETE4DqmE_13typst_library4text4font7variantNtB5_11FontStretchNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.4123.0..sroa_idx.i.i, align 8, !noalias !36990
  %i.cu = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @696, ptr noundef nonnull %i.c)
          to label %bb.ae unwind label %.loopexit.split-lp.i.i, !noalias !36994

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !36990
  br i1 %i.cu, label %.loopexit.i, label %.lr.ph.i.i

bb.af:                                            ; preds = %bb.ah, %.lr.ph.i.i
  %.sroa.07.030.i.i = phi ptr [ %i.ao, %.lr.ph.i.i ], [ %i.cv, %bb.ah ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.07.030.i.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36990
  store ptr %.sroa.07.030.i.i, ptr %i.b, align 8, !noalias !36990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36990
  store ptr %i.i, ptr %i.a, align 8, !noalias !36990
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.4139.0..sroa_idx.i.i, align 8, !noalias !36990
  store ptr %i.b, ptr %i.cs, align 8, !noalias !36990
  store ptr @_RNvXNvCs6xpQEr8gLsQ_11typst_utils7displayINtB2_7WrapperNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants0_0ENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtBX_, ptr %.sroa.4143.0..sroa_idx.i.i, align 8, !noalias !36990
  %i.cw = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @697, ptr noundef nonnull %i.a)
          to label %bb.ag unwind label %.loopexit29.i.i, !noalias !36994

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36990
  br i1 %i.cw, label %.loopexit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cx = icmp eq ptr %i.cv, %i.be
  br i1 %i.cx, label %.loopexit.i.i, label %bb.af

.loopexit.i.i:                                    ; preds = %bb.ah
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) 4) #56, !noalias !36994
  br label %_RNCNvNtCs9fPPV5zPXBl_5typst5fonts5fontss0_0B5_.exit

.loopexit.i:                                      ; preds = %bb.ag, %bb.ae, %bb.ac, %bb.z, %bb.j
end_hunk_4
begin_hunk_5_@_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtNtB8_3ops5range5RangejENtB6_5Debug3fmtCs9fPPV5zPXBl_5typst:bb.a

bb.f:                                             ; preds = %bb.d
  %i.s = tail call noundef zeroext i1 @_RNvXs6_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtCs9fPPV5zPXBl_5typst.exit

bb.g:                                             ; preds = %bb.e
  %i.t = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtCs9fPPV5zPXBl_5typst.exit

bb.h:                                             ; preds = %bb.e
  %i.u = tail call noundef zeroext i1 @_RNvXs8_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtCs9fPPV5zPXBl_5typst.exit

_RNvXs_NtNtCs3oUPovFnLWP_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtCs9fPPV5zPXBl_5typst.exit: ; preds = %.split.i, %.split10.i, %_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt.exit.i, %bb.c, %bb.f, %bb.g, %bb.h
  %.sroa.0.0.i = phi i1 [ true, %bb.c ], [ true, %_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt.exit.i ], [ true, %.split10.i ], [ true, %.split.i ], [ %i.s, %bb.f ], [ %i.u, %bb.h ], [ %i.t, %bb.g ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs1xwejQucwHj_5alloc6string6StringNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41034)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !41034, !nonnull !28, !noundef !28
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !41034, !noundef !28
  %i.f = tail call noundef zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !41034
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs2c5sHaBi5qk_7anstyle5color12Ansi256ColorNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !28, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41038
  store ptr %i.b, ptr %i.a, align 8, !noalias !41038
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1111, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1110)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41038
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs2c5sHaBi5qk_7anstyle5color5ColorNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !28, !noundef !28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41042)
  %i.e = load i8, ptr %i.d, align 1, !range !40, !alias.scope !41042, !noundef !28
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  switch i8 %i.e, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !41043
  store ptr %i.f, ptr %i.c, align 8, !noalias !41043
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1270, i64 noundef 4, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1269)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !41043
  br label %_RNvXsg_NtCs2c5sHaBi5qk_7anstyle5colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !41043
  store ptr %i.f, ptr %i.b, align 8, !noalias !41043
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1272, i64 noundef 7, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1271)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !41043
  br label %_RNvXsg_NtCs2c5sHaBi5qk_7anstyle5colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41043
  store ptr %i.f, ptr %i.a, align 8, !noalias !41043
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1274, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1273)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41043
  br label %_RNvXsg_NtCs2c5sHaBi5qk_7anstyle5colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

_RNvXsg_NtCs2c5sHaBi5qk_7anstyle5colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.in.i = phi i1 [ %i.g, %bb.b ], [ %i.h, %bb.c ], [ %i.i, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs2c5sHaBi5qk_7anstyle5color8RgbColorNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !28, !noundef !28 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41047
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.d, ptr %i.a, align 8, !noalias !41047
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1144, i64 noundef 8, ptr noundef nonnull readonly dereferenceable(3) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1143, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1143, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1110)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41047
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs2c5sHaBi5qk_7anstyle5color9AnsiColorNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !noundef !28
  %.val = load i8, ptr %i.a, align 1, !range !41050, !noundef !28
  %i.b = zext nneg i8 %.val to i64
  %i.c = load ptr, ptr @_RNvNvXsq_NtCs2c5sHaBi5qk_7anstyle5colorNtB7_9AnsiColorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt7___NAMES, align 8, !noalias !41051, !nonnull !28, !noundef !28
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsq_NtCs2c5sHaBi5qk_7anstyle5colorNtB7_9AnsiColorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt7___NAMES, i64 8), align 8, !noalias !41051, !noundef !28
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter27debug_c_like_enum_write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @_RNvNvXsq_NtCs2c5sHaBi5qk_7anstyle5colorNtB7_9AnsiColorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt8___OFFSET, i64 noundef 17, i64 noundef %i.b)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs2c5sHaBi5qk_7anstyle5style5StyleNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !28, !align !131, !noundef !28 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41055
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store ptr %i.e, ptr %i.a, align 8, !noalias !41055
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1246, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1247, i64 noundef 2, ptr noundef nonnull readonly align 2 dereferenceable(14) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1244, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1248, i64 noundef 2, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1244, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1249, i64 noundef 9, ptr noundef nonnull readonly %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1244, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1250, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1245)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41055
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs2c5sHaBi5qk_7anstyle6effect7EffectsNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !align !131, !noundef !28
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtCs2c5sHaBi5qk_7anstyle6effectNtB4_7EffectsNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs89doag9UmMt_9toml_edit15internal_string14InternalStringNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41058)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !41058, !nonnull !28, !noundef !28
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !41058, !noundef !28
  %i.f = tail call noundef zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !41058
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs89doag9UmMt_9toml_edit3key3KeyNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41062
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.e, ptr %i.a, align 8, !noalias !41062
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1293, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @906, i64 noundef 3, ptr noundef nonnull readonly align 8 dereferenceable(144) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1289, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1294, i64 noundef 4, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1290, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1295, i64 noundef 10, ptr noundef nonnull readonly %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1291, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1296, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1292)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41062
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs89doag9UmMt_9toml_edit4repr4ReprNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28 ; 3 uses
  %.val = load ptr, ptr %1, align 8               ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.f, align 8            ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41070)
  %i.g = load i64, ptr %i.e, align 8, !range !89, !alias.scope !41071, !noundef !28 ; 3 uses
  %i.h = icmp ne i64 %i.g, -9223372036854775807
  tail call void @llvm.assume(i1 %i.h)
  %i.i = xor i64 %i.g, -9223372036854775808
  %i.j = icmp slt i64 %i.g, 0
  %i.k = select i1 %i.j, i64 %i.i, i64 1
  switch i64 %i.k, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !41072
  store ptr %i.e, ptr %i.d, align 8, !noalias !41072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !41072
  store ptr %i.d, ptr %i.c, align 8, !noalias !41072
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs89doag9UmMt_9toml_edit15internal_string14InternalStringNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !noalias !41072
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.l = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @95, ptr noundef nonnull %i.c), !noalias !41073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !41072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !41072
  br label %_RNvXs2_NtCs89doag9UmMt_9toml_edit4reprNtB5_4ReprNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !41072
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.m, ptr %i.b, align 8, !noalias !41072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41072
  store ptr %i.b, ptr %i.a, align 8, !noalias !41072
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtNtB8_3ops5range5RangejENtB6_5Debug3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !41072
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.n = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @95, ptr noundef nonnull %i.a), !noalias !41073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !41072
  br label %_RNvXs2_NtCs89doag9UmMt_9toml_edit4reprNtB5_4ReprNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !28, !noalias !41072, !nonnull !28
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @787, i64 noundef 5) #60, !noalias !41072, !inline_history !41068
  br label %_RNvXs2_NtCs89doag9UmMt_9toml_edit4reprNtB5_4ReprNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

_RNvXs2_NtCs89doag9UmMt_9toml_edit4reprNtB5_4ReprNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i.i = phi i1 [ %i.q, %bb.e ], [ %i.n, %bb.d ], [ %i.l, %bb.c ]
  ret i1 %.sroa.0.0.in.i.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs89doag9UmMt_9toml_edit4repr5DecorNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41077)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41078
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1055, i64 noundef 5), !noalias !41077
  %i.c = load i64, ptr %i.b, align 8, !range !65, !alias.scope !41077, !noundef !28
  %.not.i = icmp eq i64 %i.c, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1059, i64 noundef 6, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1060) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1059, i64 noundef 6, ptr noundef nonnull @1057, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1058), !noalias !41077 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !range !65, !alias.scope !41077, !noundef !28
  %.not1.i = icmp eq i64 %i.g, -1
  br i1 %.not1.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1061, i64 noundef 6, ptr noundef nonnull readonly %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1060) ; 0 uses
  br label %_RNvXs4_NtCs89doag9UmMt_9toml_edit4reprNtB5_5DecorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.d
  %i.i = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1061, i64 noundef 6, ptr noundef nonnull @1057, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1058) ; 0 uses
  br label %_RNvXs4_NtCs89doag9UmMt_9toml_edit4reprNtB5_5DecorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

_RNvXs4_NtCs89doag9UmMt_9toml_edit4reprNtB5_5DecorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit: ; preds = %bb.e, %bb.f
  %i.j = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41078
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsj1PC5XHMKi0_12clap_builder5error7MessageNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41082)
  %i.d = load i64, ptr %i.c, align 8, !range !33, !alias.scope !41082, !noundef !28
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41083
  store ptr %i.f, ptr %i.a, align 8, !noalias !41083
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1214, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @163)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41083
  br label %_RNvXsb_NtCsj1PC5XHMKi0_12clap_builder5errorNtB5_7MessageNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !41083
  store ptr %i.f, ptr %i.b, align 8, !noalias !41083
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1213, i64 noundef 3, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @156)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !41083
  br label %_RNvXsb_NtCsj1PC5XHMKi0_12clap_builder5errorNtB5_7MessageNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

_RNvXsb_NtCsj1PC5XHMKi0_12clap_builder5errorNtB5_7MessageNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsj1PC5XHMKi0_12clap_builder5error9BacktraceNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1224, i64 noundef 9)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtCs3oUPovFnLWP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num11float_parse14FloatErrorKindNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !noundef !28
  %.val = load i8, ptr %i.a, align 1, !range !53, !noundef !28
  %i.b = trunc nuw i8 %.val to i1                 ; 2 uses
  %..i = select i1 %i.b, i64 7, i64 5
  %.1.i = select i1 %i.b, ptr @1089, ptr @1088
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1.i, i64 noundef %..i)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !noundef !28
  %.val = load i8, ptr %i.a, align 1, !range !54, !noundef !28 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst.2859, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCs91z6ktdDspq_10serde_yaml7libyaml5error5ErrorNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtNtCs91z6ktdDspq_10serde_yaml7libyaml5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28
  %i.b = tail call noundef zeroext i1 @_RNvXs7_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsj1PC5XHMKi0_12clap_builder4util2id2IdNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !28, !noundef !28
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !28
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value10AnyValueIdNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28
  %i.b = tail call noundef zeroext i1 @_RNvXs7_NtNtCsj1PC5XHMKi0_12clap_builder4util9any_valueNtB5_10AnyValueIdNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtNtCsj1PC5XHMKi0_12clap_builder4util9any_valueNtB4_8AnyValueNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsj1PC5XHMKi0_12clap_builder5error7context11ContextKindNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !noundef !28
  %.val = load i8, ptr %i.a, align 1, !range !118, !noundef !28
  %i.b = zext nneg i8 %.val to i64
  %i.c = load ptr, ptr @_RNvNvXs4_NtNtCsj1PC5XHMKi0_12clap_builder5error7contextNtB7_11ContextKindNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt7___NAMES, align 8, !noalias !41086, !nonnull !28, !noundef !28
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs4_NtNtCsj1PC5XHMKi0_12clap_builder5error7contextNtB7_11ContextKindNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt7___NAMES, i64 8), align 8, !noalias !41086, !noundef !28
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter27debug_c_like_enum_write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @_RNvNvXs4_NtNtCsj1PC5XHMKi0_12clap_builder5error7contextNtB7_11ContextKindNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt8___OFFSET, i64 noundef 18, i64 noundef %i.b)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsj1PC5XHMKi0_12clap_builder5error7context12ContextValueNtB6_5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41090)
  %i.h = load i8, ptr %i.g, align 8, !range !87, !alias.scope !41090, !noundef !28
  switch i8 %i.h, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
end_hunk_5
begin_hunk_6_@_RNvXs2_NtCs9fPPV5zPXBl_5typst5worldNtB5_11SystemFilesNtNtCsc4241EHy6Do_9typst_kit5files10FileLoader4load:bb.a
  %i.bj = icmp eq i64 %.val20, 0
  br i1 %i.bj, label %common.resume, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val21 = load ptr, ptr %i.bk, align 8, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef %.val20, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !42530
  br label %common.resume

bb.af:                                            ; preds = %bb.ac
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  invoke void @_RNvMs3_NtCsc4241EHy6Do_9typst_kit5filesNtB5_6FsRoot4load(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bl)
          to label %bb.ag unwind label %bb.ad

bb.ag:                                            ; preds = %bb.af
  %.val = load i64, ptr %i.k, align 8, !range !37, !alias.scope !92, !noundef !28 ; 2 uses
  %i.bm = icmp eq i64 %.val, 0
  br i1 %i.bm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsc4241EHy6Do_9typst_kit5files6FsRootECs9fPPV5zPXBl_5typst.exit23, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val19 = load ptr, ptr %i.bn, align 8, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !42531
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsc4241EHy6Do_9typst_kit5files6FsRootECs9fPPV5zPXBl_5typst.exit23

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsc4241EHy6Do_9typst_kit5files6FsRootECs9fPPV5zPXBl_5typst.exit23: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ai

bb.ai:                                            ; preds = %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations5bytesNtB3_5Bytes3newAhj0_ECs9fPPV5zPXBl_5typst.exit, %bb.ao, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsc4241EHy6Do_9typst_kit5files6FsRootECs9fPPV5zPXBl_5typst.exit23, %bb.ab
  ret void

bb.aj:                                            ; preds = %_RNvNtCs9fPPV5zPXBl_5typst5world15read_from_stdin.exit
  %.sroa.843.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.843.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.830, i64 32, i1 false)
  store <2 x i32> %i.bd, ptr %0, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.627.sroa.4.0.copyload36, ptr %.sroa.541.0..sroa_idx, align 8
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.627.sroa.6.0.copyload37, ptr %.sroa.642.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.627.sroa.7.0.copyload38, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.ao

bb.ak:                                            ; preds = %_RNvNtCs9fPPV5zPXBl_5typst5world15read_from_stdin.exit.thread, %_RNvNtCs9fPPV5zPXBl_5typst5world15read_from_stdin.exit
  %.sroa.627.sroa.4.052 = phi i64 [ %.sroa.627.sroa.4.4.copyload, %_RNvNtCs9fPPV5zPXBl_5typst5world15read_from_stdin.exit.thread ], [ %.sroa.627.sroa.4.0.copyload36, %_RNvNtCs9fPPV5zPXBl_5typst5world15read_from_stdin.exit ] ; 3 uses
  %.sroa.627.sroa.6.051 = phi ptr [ %.sroa.627.sroa.6.4.copyload, %_RNvNtCs9fPPV5zPXBl_5typst5world15read_from_stdin.exit.thread ], [ %.sroa.627.sroa.6.0.copyload37, %_RNvNtCs9fPPV5zPXBl_5typst5world15read_from_stdin.exit ] ; 3 uses
  %.sroa.627.sroa.7.050 = phi i64 [ %.sroa.627.sroa.7.4.copyload, %_RNvNtCs9fPPV5zPXBl_5typst5world15read_from_stdin.exit.thread ], [ %.sroa.627.sroa.7.0.copyload38, %_RNvNtCs9fPPV5zPXBl_5typst5world15read_from_stdin.exit ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !42532
  %i.bo = call noundef align 16 dereferenceable_or_null(64) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !42532 ; 8 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.al, label %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations5bytesNtB3_5Bytes3newINtNtCs1xwejQucwHj_5alloc3vec3VechEECs9fPPV5zPXBl_5typst.exit, !prof !29

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 64) #61
          to label %.noexc.i25 unwind label %bb.am, !noalias !42533

.noexc.i25:                                       ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = icmp eq i64 %.sroa.627.sroa.4.052, 0
  br i1 %i.br, label %common.resume, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.627.sroa.6.051) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.627.sroa.6.051, i64 noundef %.sroa.627.sroa.4.052, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !42534
  br label %common.resume

_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations5bytesNtB3_5Bytes3newINtNtCs1xwejQucwHj_5alloc3vec3VechEECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.ak
  store i64 1, ptr %i.bo, align 16, !noalias !42533
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 1, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !42533
  %.sroa.5.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i128 0, ptr %.sroa.5.0..sroa_idx.i24, align 16, !noalias !42533
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store i64 %.sroa.627.sroa.4.052, ptr %.sroa.6.0..sroa_idx.i, align 16, !noalias !42533
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  store ptr %.sroa.627.sroa.6.051, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !42533
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  store i64 %.sroa.627.sroa.7.050, ptr %.sroa.9.0..sroa_idx.i, align 16, !noalias !42533
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bo, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @40, ptr %i.bt, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations5bytesNtB3_5Bytes3newINtNtCs1xwejQucwHj_5alloc3vec3VechEECs9fPPV5zPXBl_5typst.exit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.830)
  br label %bb.ai
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !42537, !noundef !28 ; 2 uses
  %.not.i = icmp sgt i8 %i.b, -1                  ; 2 uses
  %i.c = and i8 %i.b, 127
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !alias.scope !42537, !nonnull !28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !42537
  %.sroa.3.0.i = select i1 %.not.i, i64 %i.g, i64 %i.d
  %.sroa.0.0.i = select i1 %.not.i, ptr %i.e, ptr %0
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB2Z_3map11MapConsumerIB6V_IB6V_INtNtB2Z_10while_some17WhileSomeConsumerNtNtB2Z_6extend15ListVecConsumerENCINvNvXs2_NtB31_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB2Z_20FromParallelIteratorIB94_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtBaG_7compile16write_virtual_fss_0ENvMs0_B4C_B4z_4refsEE0NCB2S_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBd9_3vec3VecBaC_EEBd2_E0TBd2_Bd2_EE00Bey_ENtB5_3Job7executeBaG_(ptr nofree noundef captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [136 x i8], align 16              ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.13 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load <2 x ptr>, ptr %i.d, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsf1gSX8u3EQ2_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i = load ptr, ptr %i.f, align 8, !noalias !42542, !noundef !28 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i, null
  br i1 %i.g, label %bb.c, label %bb.d, !prof !105

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @361, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #65
          to label %.noexc unwind label %bb.e, !inline_history !42541

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !42542
  store <2 x ptr> %i.e, ptr %i.b, align 16, !noalias !42543
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.565.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %.sroa.666.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 88, i1 false)
  invoke fastcc void @_RNCINvNtCsf1gSX8u3EQ2_10rayon_core4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtBY_3map11MapConsumerIB4U_IB4U_INtNtBY_10while_some17WhileSomeConsumerNtNtBY_6extend15ListVecConsumerENCINvNvXs2_NtB10_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtBY_20FromParallelIteratorIB70_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB8B_7compile16write_virtual_fss_0ENvMs0_B2B_B2y_4refsEE0NCBR_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBb3_3vec3VecB8x_EEBaW_E0B8B_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(136) %i.b, ptr noundef nonnull align 128 %.val.i.i, i1 noundef zeroext true) #60
          to label %bb.k unwind label %bb.e, !inline_history !42541

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.i)
          to label %bb.l unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #64
  unreachable

bb.g:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1035) #61
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.n, %bb.i
  %.pn = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.p, %bb.n ]
  invoke void @_RNvXNtCsf1gSX8u3EQ2_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECs9fPPV5zPXBl_5typst.exit unwind label %bb.p

bb.i:                                             ; preds = %bb.o, %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  unreachable

bb.k:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !42542
  %.sroa.056.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.457.0.copyload = load ptr, ptr %.sroa.457.0..sroa_idx, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.558.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, i64 32, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.m = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.073 = phi ptr [ %i.m, %bb.l ], [ %.sroa.056.0.copyload, %bb.k ] ; 2 uses
  %.sroa.946.071 = phi ptr [ %i.n, %bb.l ], [ %.sroa.457.0.copyload, %bb.k ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.l ], [ 1, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultTINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEB1l_EEEB2J_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %.sroa.0.073, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.sroa.946.071, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %bb.h

bb.o:                                             ; preds = %bb.m
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %.sroa.0.073, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.sroa.946.071, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %.val = load ptr, ptr %0, align 8, !noundef !28
  invoke fastcc void @_RNvXs4_NtCsf1gSX8u3EQ2_10rayon_core5latchNtB5_9LockLatchNtB5_5Latch3set(ptr noundef %.val) #60
          to label %_RNvXsd_NtCsf1gSX8u3EQ2_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCs9fPPV5zPXBl_5typst.exit unwind label %bb.i

_RNvXsd_NtCsf1gSX8u3EQ2_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCs9fPPV5zPXBl_5typst.exit: ; preds = %bb.o
  ret void

bb.p:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.h
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB2Z_3map11MapConsumerIB5p_INtNtB2Z_10while_some17WhileSomeConsumerNtNtB2Z_6extend15ListVecConsumerENCINvNvXs2_NtB31_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB2Z_20FromParallelIteratorIB7t_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB95_7compile12export_images_0EE0NCB2S_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBba_3vec3VecB91_EEBb3_E0TBb3_Bb3_EE00Bcz_ENtB5_3Job7executeB95_(ptr nofree noundef captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [120 x i8], align 16              ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.13 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load <2 x ptr>, ptr %i.d, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsf1gSX8u3EQ2_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i = load ptr, ptr %i.f, align 8, !noalias !42548, !noundef !28 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i, null
  br i1 %i.g, label %bb.c, label %bb.d, !prof !105

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @361, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #65
          to label %.noexc unwind label %bb.e, !inline_history !42547

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !42548
  store <2 x ptr> %i.e, ptr %i.b, align 16, !noalias !42549
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.565.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.666.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 72, i1 false)
  invoke fastcc void @_RNCINvNtCsf1gSX8u3EQ2_10rayon_core4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtBY_3map11MapConsumerIB3o_INtNtBY_10while_some17WhileSomeConsumerNtNtBY_6extend15ListVecConsumerENCINvNvXs2_NtB10_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtBY_20FromParallelIteratorIB5p_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB70_7compile12export_images_0EE0NCBR_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB94_3vec3VecB6W_EEB8X_E0B70_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(120) %i.b, ptr noundef nonnull align 128 %.val.i.i, i1 noundef zeroext true) #60
          to label %bb.k unwind label %bb.e, !inline_history !42547

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.i)
          to label %bb.l unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #64
  unreachable

bb.g:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1035) #61
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.n, %bb.i
  %.pn = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.p, %bb.n ]
  invoke void @_RNvXNtCsf1gSX8u3EQ2_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECs9fPPV5zPXBl_5typst.exit unwind label %bb.p

bb.i:                                             ; preds = %bb.o, %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  unreachable

bb.k:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !42548
  %.sroa.056.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.457.0.copyload = load ptr, ptr %.sroa.457.0..sroa_idx, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.558.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, i64 32, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.m = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.073 = phi ptr [ %i.m, %bb.l ], [ %.sroa.056.0.copyload, %bb.k ] ; 2 uses
  %.sroa.946.071 = phi ptr [ %i.n, %bb.l ], [ %.sroa.457.0.copyload, %bb.k ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.l ], [ 1, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultTINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEB1l_EEEB2J_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.0.073, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.946.071, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %bb.h

bb.o:                                             ; preds = %bb.m
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.0.073, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.946.071, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %.val = load ptr, ptr %0, align 8, !noundef !28
  invoke fastcc void @_RNvXs4_NtCsf1gSX8u3EQ2_10rayon_core5latchNtB5_9LockLatchNtB5_5Latch3set(ptr noundef %.val) #60
          to label %_RNvXsd_NtCsf1gSX8u3EQ2_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCs9fPPV5zPXBl_5typst.exit unwind label %bb.i

_RNvXsd_NtCsf1gSX8u3EQ2_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCs9fPPV5zPXBl_5typst.exit: ; preds = %bb.o
  ret void

bb.p:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.h
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB2I_3map11MapConsumerIB6E_IB6E_INtNtB2I_10while_some17WhileSomeConsumerNtNtB2I_6extend15ListVecConsumerENCINvNvXs2_NtB2K_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB2I_20FromParallelIteratorIB8N_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtBap_7compile16write_virtual_fss_0ENvMs0_B4l_B4i_4refsEE0NCB2B_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBcS_3vec3VecBal_EEBcL_E0TBcL_BcL_EE0Beh_ENtB5_3Job7executeBap_(ptr nofree noundef captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [136 x i8], align 16              ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.13 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %i.e = load <2 x ptr>, ptr %0, align 8
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsf1gSX8u3EQ2_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i = load ptr, ptr %i.f, align 8, !noalias !42562, !noundef !28 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i, null
  br i1 %i.g, label %bb.c, label %bb.d, !prof !105

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @361, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @362) #65
          to label %.noexc46 unwind label %bb.e, !inline_history !42553

.noexc46:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !42562
  store <2 x ptr> %i.e, ptr %i.b, align 16, !noalias !42563
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.569.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %.sroa.670.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 88, i1 false)
  invoke fastcc void @_RNCINvNtCsf1gSX8u3EQ2_10rayon_core4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtBY_3map11MapConsumerIB4U_IB4U_INtNtBY_10while_some17WhileSomeConsumerNtNtBY_6extend15ListVecConsumerENCINvNvXs2_NtB10_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtBY_20FromParallelIteratorIB70_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB8B_7compile16write_virtual_fss_0ENvMs0_B2B_B2y_4refsEE0NCBR_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBb3_3vec3VecB8x_EEBaW_E0B8B_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(136) %i.b, ptr noundef nonnull align 128 %.val.i.i, i1 noundef zeroext true) #60
          to label %bb.j unwind label %bb.e, !inline_history !42553

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.i)
          to label %bb.k unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #64
  unreachable

bb.g:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1035) #61
          to label %bb.i unwind label %bb.h

.body:                                            ; preds = %bb.v, %bb.y, %bb.z, %bb.h, %bb.m
  %.pn = phi { ptr, i32 } [ %i.p, %bb.m ], [ %i.l, %bb.h ], [ %i.ag, %bb.z ], [ %i.ag, %bb.y ], [ %i.ag, %bb.v ]
  invoke void @_RNvXNtCsf1gSX8u3EQ2_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECs9fPPV5zPXBl_5typst.exit unwind label %bb.ac

bb.h:                                             ; preds = %bb.x, %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !42562
  %.sroa.060.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.461.0.copyload = load ptr, ptr %.sroa.461.0..sroa_idx, align 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.562.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, i64 32, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.m = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.077 = phi ptr [ %i.m, %bb.k ], [ %.sroa.060.0.copyload, %bb.j ] ; 2 uses
  %.sroa.950.075 = phi ptr [ %i.n, %bb.k ], [ %.sroa.461.0.copyload, %bb.j ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.k ], [ 1, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultTINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEB1l_EEEB2J_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.0.077, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %.sroa.950.075, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %.body

bb.n:                                             ; preds = %bb.l
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.0.077, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %.sroa.950.075, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.s = load i8, ptr %i.r, align 8, !range !53, !noundef !28
  %i.t = trunc nuw i8 %i.s to i1                  ; 3 uses
  br i1 %i.t, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = load ptr, ptr %i.q, align 8, !nonnull !28, !align !39, !noundef !28
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !28, !noundef !28
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.w = load ptr, ptr %i.q, align 8, !nonnull !28, !align !39, !noundef !28 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !28, !noundef !28
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.r, %bb.o
  %.pn.i = phi ptr [ %i.af, %bb.r ], [ %i.v, %bb.o ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !28
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ad = atomicrmw xchg ptr %i.ac, i64 3 acq_rel, align 8
  %i.ae = icmp eq i64 %i.ad, 2
  br i1 %i.ae, label %bb.u, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.af = load ptr, ptr %i.w, align 8, !nonnull !28, !noundef !28 ; 2 uses
  store ptr %i.af, ptr %i.d, align 8
  br label %bb.q

bb.s:                                             ; preds = %bb.p
  tail call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.u, %bb.q
  br i1 %i.t, label %bb.w, label %bb.ab

bb.u:                                             ; preds = %bb.q
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ab)
          to label %bb.t unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.t, label %bb.y, label %.body

bb.w:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42565)
  %i.ah = load ptr, ptr %i.d, align 8, !alias.scope !42566, !nonnull !28, !noundef !28
  %i.ai = atomicrmw add ptr %i.ah, i64 -1 release, align 8, !noalias !42566
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsf1gSX8u3EQ2_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #63
          to label %bb.ab unwind label %bb.h

bb.y:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42568)
  %i.ak = load ptr, ptr %i.d, align 8, !alias.scope !42569, !nonnull !28, !noundef !28
  %i.al = atomicrmw add ptr %i.ak, i64 -1 release, align 8, !noalias !42569
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.z, label %.body

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsf1gSX8u3EQ2_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #63
          to label %.body unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

bb.ab:                                            ; preds = %bb.w, %bb.t, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ac:                                            ; preds = %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECs9fPPV5zPXBl_5typst.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB2I_3map11MapConsumerIB58_INtNtB2I_10while_some17WhileSomeConsumerNtNtB2I_6extend15ListVecConsumerENCINvNvXs2_NtB2K_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB2I_20FromParallelIteratorIB7c_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB8O_7compile12export_images_0EE0NCB2B_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBaT_3vec3VecB8K_EEBaM_E0TBaM_BaM_EE0Bci_ENtB5_3Job7executeB8O_(ptr nofree noundef captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [120 x i8], align 16              ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.13 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %i.e = load <2 x ptr>, ptr %0, align 8
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsf1gSX8u3EQ2_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i = load ptr, ptr %i.f, align 8, !noalias !42582, !noundef !28 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i, null
  br i1 %i.g, label %bb.c, label %bb.d, !prof !105

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @361, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @362) #65
          to label %.noexc46 unwind label %bb.e, !inline_history !42573

.noexc46:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !42582
  store <2 x ptr> %i.e, ptr %i.b, align 16, !noalias !42583
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.569.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.670.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 72, i1 false)
  invoke fastcc void @_RNCINvNtCsf1gSX8u3EQ2_10rayon_core4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtBY_3map11MapConsumerIB3o_INtNtBY_10while_some17WhileSomeConsumerNtNtBY_6extend15ListVecConsumerENCINvNvXs2_NtB10_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtBY_20FromParallelIteratorIB5p_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB70_7compile12export_images_0EE0NCBR_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB94_3vec3VecB6W_EEB8X_E0B70_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(120) %i.b, ptr noundef nonnull align 128 %.val.i.i, i1 noundef zeroext true) #60
          to label %bb.j unwind label %bb.e, !inline_history !42573

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.i)
          to label %bb.k unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #64
  unreachable

bb.g:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1035) #61
          to label %bb.i unwind label %bb.h

.body:                                            ; preds = %bb.v, %bb.y, %bb.z, %bb.h, %bb.m
  %.pn = phi { ptr, i32 } [ %i.p, %bb.m ], [ %i.l, %bb.h ], [ %i.ag, %bb.z ], [ %i.ag, %bb.y ], [ %i.ag, %bb.v ]
  invoke void @_RNvXNtCsf1gSX8u3EQ2_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECs9fPPV5zPXBl_5typst.exit unwind label %bb.ac

bb.h:                                             ; preds = %bb.x, %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !42582
  %.sroa.060.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.461.0.copyload = load ptr, ptr %.sroa.461.0..sroa_idx, align 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.562.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, i64 32, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.m = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.077 = phi ptr [ %i.m, %bb.k ], [ %.sroa.060.0.copyload, %bb.j ] ; 2 uses
  %.sroa.950.075 = phi ptr [ %i.n, %bb.k ], [ %.sroa.461.0.copyload, %bb.j ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.k ], [ 1, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultTINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEB1l_EEEB2J_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.0.077, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.950.075, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %.body

bb.n:                                             ; preds = %bb.l
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.0.077, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.950.075, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.s = load i8, ptr %i.r, align 8, !range !53, !noundef !28
  %i.t = trunc nuw i8 %i.s to i1                  ; 3 uses
  br i1 %i.t, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = load ptr, ptr %i.q, align 8, !nonnull !28, !align !39, !noundef !28
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !28, !noundef !28
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.w = load ptr, ptr %i.q, align 8, !nonnull !28, !align !39, !noundef !28 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !28, !noundef !28
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.r, %bb.o
  %.pn.i = phi ptr [ %i.af, %bb.r ], [ %i.v, %bb.o ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !28
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ad = atomicrmw xchg ptr %i.ac, i64 3 acq_rel, align 8
  %i.ae = icmp eq i64 %i.ad, 2
  br i1 %i.ae, label %bb.u, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.af = load ptr, ptr %i.w, align 8, !nonnull !28, !noundef !28 ; 2 uses
  store ptr %i.af, ptr %i.d, align 8
  br label %bb.q

bb.s:                                             ; preds = %bb.p
  tail call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.u, %bb.q
  br i1 %i.t, label %bb.w, label %bb.ab

bb.u:                                             ; preds = %bb.q
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ab)
          to label %bb.t unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.t, label %bb.y, label %.body

bb.w:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42585)
  %i.ah = load ptr, ptr %i.d, align 8, !alias.scope !42586, !nonnull !28, !noundef !28
  %i.ai = atomicrmw add ptr %i.ah, i64 -1 release, align 8, !noalias !42586
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsf1gSX8u3EQ2_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #63
          to label %bb.ab unwind label %bb.h

bb.y:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42588)
  %i.ak = load ptr, ptr %i.d, align 8, !alias.scope !42589, !nonnull !28, !noundef !28
  %i.al = atomicrmw add ptr %i.ak, i64 -1 release, align 8, !noalias !42589
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.z, label %.body

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsf1gSX8u3EQ2_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #63
          to label %.body unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

bb.ab:                                            ; preds = %bb.w, %bb.t, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ac:                                            ; preds = %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECs9fPPV5zPXBl_5typst.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3W_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB3U_3map11MapConsumerIB7Q_IB7Q_INtNtB3U_10while_some17WhileSomeConsumerNtNtB3U_6extend15ListVecConsumerENCINvNvXs2_NtB3W_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB3U_20FromParallelIteratorIB9Z_ppEE13from_par_iter2okB39_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3d_7compile16write_virtual_fss_0ENvMs0_B5x_B5u_4refsEEs_0E0B1P_ENtB5_3Job7executeB3d_(ptr nofree noundef captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %i.e, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !42608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.668.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8, !noalias !42609
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.466.0..sroa_idx, align 8, !noalias !42609
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.5.sroa.4.0.copyload, ptr %.sroa.567.0..sroa_idx, align 8, !noalias !42609
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42610)
  %.sroa.5.0.copyload.i.cast = inttoptr i64 %.sroa.5.sroa.4.0.copyload to ptr ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.668.0..sroa_idx, align 8, !alias.scope !42610, !nonnull !28, !noundef !28
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !42610
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !42611, !noundef !28
  %i.g = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !42611, !noundef !28
  %i.h = sub i64 %i.f, %i.g
  %i.i = load i64, ptr %.sroa.5.0.copyload.i.cast, align 8, !noalias !42611, !noundef !28
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.cast, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !42611, !noundef !28
  invoke fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB6_3map11MapConsumerIB41_IB41_INtNtB6_10while_some17WhileSomeConsumerNtNtB6_6extend15ListVecConsumerENCINvNvXs2_NtB8_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB6_20FromParallelIteratorIB66_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB7H_7compile16write_virtual_fss_0ENvMs0_B1I_B1F_4refsEEB7H_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.h, i1 noundef zeroext true, i64 noundef %i.i, i64 noundef %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.6.0.copyload.i, i64 noundef %.sroa.7.0.copyload.i, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(32) %.sroa.8.0..sroa_idx.i)
          to label %bb.h unwind label %bb.c, !inline_history !42599

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.m)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #64
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1035) #61
          to label %bb.g unwind label %bb.f

.body:                                            ; preds = %bb.t, %bb.w, %bb.x, %bb.f, %bb.k
  %.pn = phi { ptr, i32 } [ %i.s, %bb.k ], [ %i.p, %bb.f ], [ %i.aj, %bb.x ], [ %i.aj, %bb.w ], [ %i.aj, %bb.t ]
  invoke void @_RNvXNtCsf1gSX8u3EQ2_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECs9fPPV5zPXBl_5typst.exit unwind label %bb.aa

bb.f:                                             ; preds = %bb.v, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !42608
  %.sroa.062.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.463.0.copyload = load ptr, ptr %.sroa.463.0..sroa_idx, align 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.564.0.copyload = load i64, ptr %.sroa.564.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.q = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.077 = phi ptr [ %i.q, %bb.i ], [ %.sroa.062.0.copyload, %bb.h ] ; 2 uses
  %.sroa.9.06975 = phi ptr [ %i.r, %bb.i ], [ %.sroa.463.0.copyload, %bb.h ] ; 2 uses
  %.sroa.9.0 = phi i64 [ undef, %bb.i ], [ %.sroa.564.0.copyload, %bb.h ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.i ], [ 1, %bb.h ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEEEB2I_(ptr noalias nofree noundef align 8 dereferenceable(32) %0)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.077, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.06975, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %.body

bb.l:                                             ; preds = %bb.j
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.077, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.06975, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx10, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = load i8, ptr %i.u, align 8, !range !53, !noundef !28
  %i.w = trunc nuw i8 %i.v to i1                  ; 3 uses
  br i1 %i.w, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = load ptr, ptr %i.t, align 8, !nonnull !28, !align !39, !noundef !28
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !28, !noundef !28
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.z = load ptr, ptr %i.t, align 8, !nonnull !28, !align !39, !noundef !28 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !28, !noundef !28
  %i.ab = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.p, %bb.m
  %.pn.i = phi ptr [ %i.ai, %bb.p ], [ %i.y, %bb.m ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !28
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = atomicrmw xchg ptr %i.af, i64 3 acq_rel, align 8
  %i.ah = icmp eq i64 %i.ag, 2
  br i1 %i.ah, label %bb.s, label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %i.z, align 8, !nonnull !28, !noundef !28 ; 2 uses
  store ptr %i.ai, ptr %i.d, align 8
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  tail call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.s, %bb.o
  br i1 %i.w, label %bb.u, label %bb.z

bb.s:                                             ; preds = %bb.o
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ae)
          to label %bb.r unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.w, label %bb.w, label %.body

bb.u:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42613)
  %i.ak = load ptr, ptr %i.d, align 8, !alias.scope !42614, !nonnull !28, !noundef !28
  %i.al = atomicrmw add ptr %i.ak, i64 -1 release, align 8, !noalias !42614
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsf1gSX8u3EQ2_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #63
          to label %bb.z unwind label %bb.f

bb.w:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42616)
  %i.an = load ptr, ptr %i.d, align 8, !alias.scope !42617, !nonnull !28, !noundef !28
  %i.ao = atomicrmw add ptr %i.an, i64 -1 release, align 8, !noalias !42617
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.x, label %.body

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsf1gSX8u3EQ2_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #63
          to label %.body unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

bb.z:                                             ; preds = %bb.u, %bb.r, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.aa:                                            ; preds = %.body
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECs9fPPV5zPXBl_5typst.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3W_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB3U_3map11MapConsumerIB6k_INtNtB3U_10while_some17WhileSomeConsumerNtNtB3U_6extend15ListVecConsumerENCINvNvXs2_NtB3W_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB3U_20FromParallelIteratorIB8o_ppEE13from_par_iter2okB39_NtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB3d_7compile12export_images_0EEs_0E0B1P_ENtB5_3Job7executeB3d_(ptr nofree noundef captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !42636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.668.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8, !noalias !42637
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.466.0..sroa_idx, align 8, !noalias !42637
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.5.sroa.4.0.copyload, ptr %.sroa.567.0..sroa_idx, align 8, !noalias !42637
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42638)
  %.sroa.5.0.copyload.i.cast = inttoptr i64 %.sroa.5.sroa.4.0.copyload to ptr ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.668.0..sroa_idx, align 8, !alias.scope !42638, !nonnull !28, !noundef !28
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !42638
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.e = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !42639, !noundef !28
  %i.f = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !42639, !noundef !28
  %i.g = sub i64 %i.e, %i.f
  %i.h = load i64, ptr %.sroa.5.0.copyload.i.cast, align 8, !noalias !42639, !noundef !28
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.cast, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noalias !42639, !noundef !28
  invoke fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerTjRNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEINtNtB6_3map11MapConsumerIB2v_INtNtB6_10while_some17WhileSomeConsumerNtNtB6_6extend15ListVecConsumerENCINvNvXs2_NtB8_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB6_20FromParallelIteratorIB4v_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB66_7compile12export_images_0EEB66_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.g, i1 noundef zeroext true, i64 noundef %i.h, i64 noundef %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.6.0.copyload.i, i64 noundef %.sroa.7.0.copyload.i, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %.sroa.8.0..sroa_idx.i)
          to label %bb.h unwind label %bb.c, !inline_history !42627

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.l)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #64
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1035) #61
          to label %bb.g unwind label %bb.f

.body:                                            ; preds = %bb.t, %bb.w, %bb.x, %bb.f, %bb.k
  %.pn = phi { ptr, i32 } [ %i.s, %bb.k ], [ %i.o, %bb.f ], [ %i.aj, %bb.x ], [ %i.aj, %bb.w ], [ %i.aj, %bb.t ]
  invoke void @_RNvXNtCsf1gSX8u3EQ2_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECs9fPPV5zPXBl_5typst.exit unwind label %bb.aa

bb.f:                                             ; preds = %bb.v, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !42636
  %.sroa.062.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.463.0.copyload = load ptr, ptr %.sroa.463.0..sroa_idx, align 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.564.0.copyload = load i64, ptr %.sroa.564.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.p = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.077 = phi ptr [ %i.p, %bb.i ], [ %.sroa.062.0.copyload, %bb.h ] ; 2 uses
  %.sroa.9.06975 = phi ptr [ %i.q, %bb.i ], [ %.sroa.463.0.copyload, %bb.h ] ; 2 uses
  %.sroa.9.0 = phi i64 [ undef, %bb.i ], [ %.sroa.564.0.copyload, %bb.h ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.i ], [ 1, %bb.h ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtNtCs9fPPV5zPXBl_5typst4args6OutputEEEEB2I_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.r)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.r, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.0.077, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.9.06975, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %.body

bb.l:                                             ; preds = %bb.j
  store i64 %.sroa.04.0, ptr %i.r, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.0.077, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.9.06975, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx10, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.v = load i8, ptr %i.u, align 8, !range !53, !noundef !28
  %i.w = trunc nuw i8 %i.v to i1                  ; 3 uses
  br i1 %i.w, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = load ptr, ptr %i.t, align 8, !nonnull !28, !align !39, !noundef !28
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !28, !noundef !28
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.z = load ptr, ptr %i.t, align 8, !nonnull !28, !align !39, !noundef !28 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !28, !noundef !28
  %i.ab = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.p, %bb.m
  %.pn.i = phi ptr [ %i.ai, %bb.p ], [ %i.y, %bb.m ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !28
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ag = atomicrmw xchg ptr %i.af, i64 3 acq_rel, align 8
  %i.ah = icmp eq i64 %i.ag, 2
  br i1 %i.ah, label %bb.s, label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %i.z, align 8, !nonnull !28, !noundef !28 ; 2 uses
  store ptr %i.ai, ptr %i.d, align 8
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  tail call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.s, %bb.o
  br i1 %i.w, label %bb.u, label %bb.z

bb.s:                                             ; preds = %bb.o
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ae)
          to label %bb.r unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.w, label %bb.w, label %.body

bb.u:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42641)
  %i.ak = load ptr, ptr %i.d, align 8, !alias.scope !42642, !nonnull !28, !noundef !28
  %i.al = atomicrmw add ptr %i.ak, i64 -1 release, align 8, !noalias !42642
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsf1gSX8u3EQ2_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #63
          to label %bb.z unwind label %bb.f

bb.w:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42644)
  %i.an = load ptr, ptr %i.d, align 8, !alias.scope !42645, !nonnull !28, !noundef !28
  %i.ao = atomicrmw add ptr %i.an, i64 -1 release, align 8, !noalias !42645
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.x, label %.body

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsf1gSX8u3EQ2_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #63
          to label %.body unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

bb.z:                                             ; preds = %bb.u, %bb.r, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.aa:                                            ; preds = %.body
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECs9fPPV5zPXBl_5typst.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { ptr, ptr } @_RNvXs2_NtCsj1PC5XHMKi0_12clap_builder5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6sourceCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #32 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !noundef !28 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !28, !align !39, !noundef !28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.e, %bb.b ], [ undef, %bb.a ]
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs3_NtCs9fPPV5zPXBl_5typst4argsNtB5_5PagesNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [72 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  %i.h = alloca [72 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %2, ptr %.sroa.449.0..sroa_idx, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %1, ptr %.sroa.550.0..sroa_idx, align 8
  %.sroa.550.sroa.4.0..sroa.550.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %2, ptr %.sroa.550.sroa.4.0..sroa.550.0..sroa_idx.sroa_idx, align 8
  %.sroa.550.sroa.5.0..sroa.550.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 0, ptr %.sroa.550.sroa.5.0..sroa.550.0..sroa_idx.sroa_idx, align 8
  %.sroa.550.sroa.6.0..sroa.550.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %2, ptr %.sroa.550.sroa.6.0..sroa.550.0..sroa_idx.sroa_idx, align 8
  %.sroa.550.sroa.7.0..sroa.550.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i32 45, ptr %.sroa.550.sroa.7.0..sroa.550.0..sroa_idx.sroa_idx, align 8
  %.sroa.550.sroa.8.0..sroa.550.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  store i32 45, ptr %.sroa.550.sroa.8.0..sroa.550.0..sroa_idx.sroa_idx, align 4
  %.sroa.550.sroa.9.0..sroa.550.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i8 1, ptr %.sroa.550.sroa.9.0..sroa.550.0..sroa_idx.sroa_idx, align 8
  %.sroa.651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i8 1, ptr %.sroa.651.0..sroa_idx, align 8
  %.sroa.752.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 65
  store i8 0, ptr %.sroa.752.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !42672
  %i.i = call fastcc { ptr, i64 } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitcENvMB11_e4trimENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h) #60, !noalias !42673 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1H_3str4iter5SplitcENvMB2r_e4trimEE9from_iterCs9fPPV5zPXBl_5typst.exit.thread, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1H_3str4iter5SplitcENvMB2r_e4trimEE9from_iterCs9fPPV5zPXBl_5typst.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !42672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.e

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !42674
  %i.k = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, 17) 8) #56, !noalias !42674 ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9fPPV5zPXBl_5typst.exit.i

bb.b:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 64) #61, !noalias !42672
end_hunk_6
