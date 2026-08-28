Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_bundle-0b83f87b31ae34d3.typst_bundle.bf34c93a048d29f7-cgu.0?download=true
inline.NumInlined: 6006
inline.NumDeleted: 2956
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNCINvNtCsf1gSX8u3EQ2_10rayon_core4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtBY_13flat_map_iter19FlatMapIterConsumerNtNtBY_6extend15ListVecConsumerNCNvNtB2D_4link19create_link_anchors0EE0NCBR_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB5h_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEB5a_E0B2D_:bb.a
.noexc50:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.bp = extractvalue { ptr, ptr } %i.bo, 0      ; 3 uses
  %i.bq = extractvalue { ptr, ptr } %i.bo, 1      ; 2 uses
  %.not = icmp eq ptr %i.bp, null                 ; 2 uses
  br i1 %.not, label %bb.af, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = icmp eq ptr %i.f, %i.bq
  %i.bs = icmp eq ptr %i.bp, @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB58_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB56_13flat_map_iter19FlatMapIterConsumerNtNtB56_6extend15ListVecConsumerNCNvNtB6L_4link19create_link_anchors0EEs_0E0B1P_ENtB5_3Job7executeB6L_
  %or.cond = and i1 %i.br, %i.bs
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void %i.bp(ptr noundef %i.bq)
          to label %bb.m unwind label %.loopexit132

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !9905)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.0.0.copyload.i51 = load ptr, ptr %i.bt, align 8, !alias.scope !9905, !noalias !9908 ; 2 uses
  %.not.i52 = icmp eq ptr %.sroa.0.0.copyload.i51, null
  br i1 %.not.i52, label %bb.v, label %bb.u, !prof !33

bb.u:                                             ; preds = %bb.t
  %.sroa.3.i.sroa.7.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.sroa.3.i.sroa.7.0.copyload = load ptr, ptr %.sroa.3.i.sroa.7.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !9908 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.3.i.sroa.6.0.copyload = load i64, ptr %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !9908
  %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.3.i.sroa.5.0.copyload = load ptr, ptr %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !9908, !nonnull !10, !noundef !10
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.3.i.sroa.4.0.copyload = load ptr, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !9908, !nonnull !10, !noundef !10 ; 2 uses
  %.sroa.3.i.sroa.0.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !9908, !nonnull !10, !noundef !10
  %i.bu = load i64, ptr %.sroa.0.0.copyload.i51, align 8, !noalias !9910, !noundef !10
  %i.bv = load i64, ptr %.sroa.3.i.sroa.0.0.copyload, align 8, !noalias !9910, !noundef !10
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = load i64, ptr %.sroa.3.i.sroa.4.0.copyload, align 8, !noalias !9910, !noundef !10
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.3.i.sroa.4.0.copyload, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !noalias !9910, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.i.sroa.7.0.copyload) ]
  invoke fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB6_13flat_map_iter19FlatMapIterConsumerNtNtB6_6extend15ListVecConsumerNCNvNtB1K_4link19create_link_anchors0EEB1K_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %i.bw, i1 noundef zeroext %3, i64 noundef %i.bx, i64 noundef %i.bz, ptr noalias nofree noundef nonnull align 16 %.sroa.3.i.sroa.5.0.copyload, i64 noundef %.sroa.3.i.sroa.6.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.3.i.sroa.7.0.copyload)
          to label %_RNCINvNvNtCsf1gSX8u3EQ2_10rayon_core4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4h_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB4f_13flat_map_iter19FlatMapIterConsumerNtNtB4f_6extend15ListVecConsumerNCNvNtB5U_4link19create_link_anchors0EEs_0E0B5U_.exit unwind label %bb.w, !inline_history !9917

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #46
          to label %bb.x unwind label %bb.w, !noalias !9918, !inline_history !9919

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.c) #49
          to label %.thread122 unwind label %bb.ad, !noalias !9908, !inline_history !9919

bb.x:                                             ; preds = %bb.v
  unreachable

_RNCINvNvNtCsf1gSX8u3EQ2_10rayon_core4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4h_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB4f_13flat_map_iter19FlatMapIterConsumerNtNtB4f_6extend15ListVecConsumerNCNvNtB5U_4link19create_link_anchors0EEs_0E0B5U_.exit: ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !9920)
  call void @llvm.experimental.noalias.scope.decl(metadata !9923)
  %i.cb = load i64, ptr %i.c, align 8, !range !403, !alias.scope !9926, !noundef !10
  switch i64 %i.cb, label %bb.y [
    i64 0, label %_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB58_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB56_13flat_map_iter19FlatMapIterConsumerNtNtB56_6extend15ListVecConsumerNCNvNtB6L_4link19create_link_anchors0EEs_0E0B1P_E10run_inlineB6L_.exit
    i64 1, label %bb.ac
  ]

bb.y:                                             ; preds = %_RNCINvNvNtCsf1gSX8u3EQ2_10rayon_core4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4h_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB4f_13flat_map_iter19FlatMapIterConsumerNtNtB4f_6extend15ListVecConsumerNCNvNtB5U_4link19create_link_anchors0EEs_0E0B5U_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !9926 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val1.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !9926, !nonnull !10, !align !567, !noundef !10 ; 5 uses
  %i.ce = load ptr, ptr %.val1.i.i, align 8, !invariant.load !10, !noalias !9926 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.ce(ptr noundef nonnull %.val.i.i)
          to label %bb.aa unwind label %bb.ab, !noalias !9926

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !range !568, !invariant.load !10, !noalias !9926 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB58_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB56_13flat_map_iter19FlatMapIterConsumerNtNtB56_6extend15ListVecConsumerNCNvNtB6L_4link19create_link_anchors0EEs_0E0B1P_E10run_inlineB6L_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.aa
  %i.ci = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !range !569, !invariant.load !10, !noalias !9926
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.cg, i64 noundef range(i64 1, -9223372036854775807) %i.cj) #48, !noalias !9926
  br label %_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB58_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB56_13flat_map_iter19FlatMapIterConsumerNtNtB56_6extend15ListVecConsumerNCNvNtB6L_4link19create_link_anchors0EEs_0E0B1P_E10run_inlineB6L_.exit

bb.ab:                                            ; preds = %bb.z
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !range !568, !invariant.load !10, !noalias !9926 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %.thread122, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.ab
  %i.co = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !range !569, !invariant.load !10, !noalias !9926
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.cm, i64 noundef range(i64 1, -9223372036854775807) %i.cp) #48, !noalias !9926
  br label %.thread122

bb.ac:                                            ; preds = %_RNCINvNvNtCsf1gSX8u3EQ2_10rayon_core4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4h_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB4f_13flat_map_iter19FlatMapIterConsumerNtNtB4f_6extend15ListVecConsumerNCNvNtB5U_4link19create_link_anchors0EEs_0E0B5U_.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cq)
          to label %_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB58_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB56_13flat_map_iter19FlatMapIterConsumerNtNtB56_6extend15ListVecConsumerNCNvNtB6L_4link19create_link_anchors0EEs_0E0B1P_E10run_inlineB6L_.exit unwind label %.loopexit.split-lp

bb.ad:                                            ; preds = %bb.w
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !9918, !inline_history !9919
  unreachable

_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB58_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB56_13flat_map_iter19FlatMapIterConsumerNtNtB56_6extend15ListVecConsumerNCNvNtB6L_4link19create_link_anchors0EEs_0E0B1P_E10run_inlineB6L_.exit: ; preds = %bb.ac, %_RNCINvNvNtCsf1gSX8u3EQ2_10rayon_core4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4h_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB4f_13flat_map_iter19FlatMapIterConsumerNtNtB4f_6extend15ListVecConsumerNCNvNtB5U_4link19create_link_anchors0EEs_0E0B5U_.exit, %bb.aa, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ae

bb.ae:                                            ; preds = %_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB58_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB56_13flat_map_iter19FlatMapIterConsumerNtNtB56_6extend15ListVecConsumerNCNvNtB6L_4link19create_link_anchors0EEs_0E0B1P_E11into_resultB6L_.exit, %_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB58_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB56_13flat_map_iter19FlatMapIterConsumerNtNtB56_6extend15ListVecConsumerNCNvNtB6L_4link19create_link_anchors0EEs_0E0B1P_E10run_inlineB6L_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.af:                                            ; preds = %bb.q
  %i.ct = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.cu = icmp eq i64 %i.ct, 3
  br i1 %i.cu, label %.loopexit, label %bb.ag, !prof !13

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs8_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit unwind label %.loopexit.split-lp

bb.ah:                                            ; preds = %bb.p, %bb.o
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #49
          to label %.thread128 unwind label %bb.ai

_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB58_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB56_13flat_map_iter19FlatMapIterConsumerNtNtB56_6extend15ListVecConsumerNCNvNtB6L_4link19create_link_anchors0EEs_0E0B1P_E11into_resultB6L_.exit: ; preds = %.loopexit
  %.sroa.6.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx68, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.466.0.copyload, ptr %i.cw, align 8
  %.sroa.4.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.567.0.copyload, ptr %.sroa.4.0..sroa_idx63, align 8
  %.sroa.5.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.6.0.copyload, ptr %.sroa.5.0..sroa_idx64, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ai:                                            ; preds = %bb.ak, %.thread122, %bb.ah
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

.thread122:                                       ; preds = %.loopexit132, %.loopexit.split-lp, %bb.w, %bb.ab, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i
  %.sroa.019.2.lpad-body = phi i1 [ false, %bb.ab ], [ false, %bb.w ], [ false, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ true, %.loopexit132 ], [ %.not, %.loopexit.split-lp ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.ck, %bb.ab ], [ %i.ca, %bb.w ], [ %i.ck, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %lpad.loopexit, %.loopexit132 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #49
          to label %bb.b unwind label %bb.ai

bb.aj:                                            ; preds = %bb.l
  unreachable

bb.ak:                                            ; preds = %.thread, %bb.b
  %.pn46115 = phi { ptr, i32 } [ %i.ab, %.thread ], [ %eh.lpad-body, %bb.b ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5B_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB5z_13flat_map_iter19FlatMapIterConsumerNtNtB5z_6extend15ListVecConsumerNCNvNtB7e_4link19create_link_anchors0EEs_0E0B2i_EEB7e_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.f) #49
          to label %.thread128 unwind label %bb.ai

.thread128:                                       ; preds = %bb.ah, %bb.b, %bb.ak
  %.pn46114 = phi { ptr, i32 } [ %eh.lpad-body, %bb.b ], [ %.pn46115, %bb.ak ], [ %i.cv, %bb.ah ]
  resume { ptr, i32 } %.pn46114
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvCsgpMJJHpo27b_12typst_bundle11bundle_impl0B3_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(208) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 16               ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.011.i.i.i = alloca [8 x i8], align 8     ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 15 uses
  %i.k = alloca [16 x i8], align 8                ; 8 uses
  %i.l = alloca [32 x i8], align 8                ; 10 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.511.i.i.i = alloca [39 x i8], align 1    ; 4 uses
  %i.n = alloca [32 x i8], align 16               ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [208 x i8], align 8               ; 38 uses
  %.sroa.0.i.i = alloca [120 x i8], align 8       ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [32 x i8], align 16               ; 7 uses
  %i.t = alloca [32 x i8], align 8                ; 11 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [32 x i8], align 16               ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 11 uses
  %i.x = alloca [48 x i8], align 16               ; 9 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [32 x i8], align 16               ; 7 uses
  %i.aa = alloca [232 x i8], align 8              ; 25 uses
  %i.ab = alloca [32 x i8], align 8               ; 8 uses
  %i.ac = alloca [192 x i8], align 16             ; 8 uses
  %i.ad = alloca [176 x i8], align 16             ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [40 x i8], align 8               ; 9 uses
  %i.ag = alloca [16 x i8], align 8               ; 9 uses
  %i.ah = alloca [72 x i8], align 8               ; 8 uses
  %i.ai = alloca [80 x i8], align 8               ; 4 uses
  %i.aj = alloca [80 x i8], align 8               ; 13 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [32 x i8], align 8               ; 7 uses
  %i.am = alloca [24 x i8], align 8               ; 8 uses
  %i.an = alloca [72 x i8], align 8               ; 11 uses
  %i.ao = alloca [32 x i8], align 8               ; 6 uses
  %i.ap = alloca [8 x i8], align 8                ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [8 x i8], align 8                ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [32 x i8], align 8               ; 4 uses
  %i.au = alloca [40 x i8], align 8               ; 4 uses
  %i.av = alloca [40 x i8], align 8               ; 4 uses
  %i.aw = alloca [8 x i8], align 8                ; 4 uses
  %i.ax = alloca [72 x i8], align 8               ; 9 uses
  %i.ay = alloca [32 x i8], align 16              ; 5 uses
  %.sroa.7205.i = alloca [7 x i8], align 8        ; 4 uses
  %.sroa.7195.i = alloca [7 x i8], align 8        ; 4 uses
  %i.az = alloca [16 x i8], align 8               ; 7 uses
  %i.ba = alloca [16 x i8], align 8               ; 7 uses
  %i.bb = alloca [16 x i8], align 8               ; 5 uses
  %i.bc = alloca [16 x i8], align 8               ; 5 uses
  %i.bd = alloca [16 x i8], align 8               ; 8 uses
  %i.be = alloca [16 x i8], align 8               ; 5 uses
  %i.bf = alloca [16 x i8], align 8               ; 5 uses
  %i.bg = alloca [16 x i8], align 8               ; 7 uses
  %i.bh = alloca [16 x i8], align 8               ; 5 uses
  %i.bi = alloca [72 x i8], align 8               ; 12 uses
  %i.bj = alloca [72 x i8], align 8               ; 4 uses
  %i.bk = alloca [16 x i8], align 8               ; 8 uses
  %i.bl = alloca [16 x i8], align 8               ; 5 uses
  %i.bm = alloca [16 x i8], align 8               ; 5 uses
  %i.bn = alloca [16 x i8], align 8               ; 7 uses
  %i.bo = alloca [16 x i8], align 8               ; 5 uses
  %i.bp = alloca [72 x i8], align 8               ; 12 uses
  %i.bq = alloca [72 x i8], align 8               ; 5 uses
  %.sroa.5189.i = alloca [24 x i8], align 16      ; 4 uses
  %i.br = alloca [32 x i8], align 8               ; 13 uses
  %i.bs = alloca [16 x i8], align 8               ; 10 uses
  %i.bt = alloca [24 x i8], align 8               ; 15 uses
  %i.bu = alloca [56 x i8], align 8               ; 10 uses
  %i.bv = alloca [240 x i8], align 8              ; 7 uses
  %i.bw = alloca [72 x i8], align 8               ; 6 uses
  %i.bx = alloca [48 x i8], align 8               ; 4 uses
  %i.by = alloca [48 x i8], align 8               ; 4 uses
  %i.bz = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.7228 = alloca [72 x i8], align 8         ; 5 uses
  %i.ca = alloca [40 x i8], align 8               ; 6 uses
  %i.cb = alloca [40 x i8], align 8               ; 5 uses
  %i.cc = alloca [40 x i8], align 8               ; 6 uses
  %i.cd = alloca [80 x i8], align 16              ; 9 uses
  %i.ce = alloca [32 x i8], align 8               ; 8 uses
  %i.cf = alloca [56 x i8], align 8               ; 10 uses
  %i.cg = alloca [32 x i8], align 8               ; 5 uses
  %i.ch = alloca [32 x i8], align 8               ; 7 uses
  %i.ci = alloca [224 x i8], align 8              ; 13 uses
  %i.cj = alloca [24 x i8], align 8               ; 7 uses
  %i.ck = alloca [24 x i8], align 8               ; 6 uses
  %i.cl = alloca [136 x i8], align 8              ; 15 uses
  %i.cm = alloca [24 x i8], align 8               ; 7 uses
  %i.cn = alloca [16 x i8], align 8               ; 8 uses
  %i.co = alloca [200 x i8], align 8              ; 16 uses
  %i.cp = alloca [64 x i8], align 16              ; 11 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !10, !align !4200, !noundef !10
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ct, ptr noundef nonnull align 8 dereferenceable(40) %i.cs, i64 40, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 88 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %i.cu, i64 32, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 120 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i64 24, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 144 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, ptr noundef nonnull align 8 dereferenceable(32) %i.cy, i64 32, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !10, !align !567, !noundef !10
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.dd, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.cp, ptr noundef nonnull align 8 dereferenceable(32) @15, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.co, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %i.co, i64 40 ; 3 uses
  store ptr %i.cr, ptr %i.de, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 176
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 184
  store i64 -1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 192
  store i16 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  %i.df = invoke { ptr, i64 } @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain6to_map(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dc)
          to label %bb.c unwind label %bb.b       ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %.body77, %bb.b
  %.pn62 = phi { ptr, i32 } [ %i.dh, %bb.b ], [ %.pn60, %.body77 ]
  %.val69 = load ptr, ptr %i.cp, align 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.val70 = load i64, ptr %i.dg, align 8, !noundef !10
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection7locator12SplitLocatorECsgpMJJHpo27b_12typst_bundle(ptr %.val69, i64 %.val70) #49
  resume { ptr, i32 } %.pn62

bb.b:                                             ; preds = %bb.pa, %bb.of, %bb.c, %bb.a
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesECsgpMJJHpo27b_12typst_bundle.exit

bb.c:                                             ; preds = %bb.a
  %i.di = extractvalue { ptr, i64 } %i.df, 0
  %i.dj = extractvalue { ptr, i64 } %i.df, 1
  %i.dk = invoke { ptr, i64 } @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB2_6Styles7outside(ptr noundef nonnull %i.di, i64 noundef %i.dj)
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.dl = extractvalue { ptr, i64 } %i.dk, 0      ; 2 uses
  %i.dm = extractvalue { ptr, i64 } %i.dk, 1      ; 2 uses
  store ptr %i.dl, ptr %i.cn, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %i.dm, ptr %i.dn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  store ptr %i.dl, ptr %i.cm, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i64 %i.dm, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store ptr null, ptr %i.dp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9927)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !9927
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9933)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !9936
  %i.dq = tail call noundef align 8 dereferenceable_or_null(1008) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 1008, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !9936 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.e, label %_RNvMCsauuqoTeRoFb_11typed_arenaINtB2_5ArenaNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE3newCsgpMJJHpo27b_12typst_bundle.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 1008) #46
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.e
  unreachable

_RNvMCsauuqoTeRoFb_11typed_arenaINtB2_5ArenaNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE3newCsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %bb.d
  store i64 0, ptr %i.bu, align 8, !alias.scope !9939, !noalias !9927
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 42, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !9939, !noalias !9927
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %i.dq, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !9939, !noalias !9927
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, i8 0, i64 16, i1 false), !alias.scope !9939, !noalias !9927
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !9939, !noalias !9927
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  store i64 0, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !9939, !noalias !9927
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !9940
  %i.ds = tail call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !9940 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_RNvMCsauuqoTeRoFb_11typed_arenaINtB2_5ArenaNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE3newCsgpMJJHpo27b_12typst_bundle.exit.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 1024) #46
          to label %.noexc.i unwind label %bb.g, !noalias !9927

.noexc.i:                                         ; preds = %bb.f
  unreachable

end_hunk_0
begin_hunk_1_@_RNCNvCsgpMJJHpo27b_12typst_bundle11bundle_impl0B3_:bb.a
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i, i64 noundef %i.bda, i64 noundef range(i64 1, -9223372036854775807) 16) #48, !noalias !10847
  br label %.body.i104

.body25.i:                                        ; preds = %bb.lf, %.body.i24.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !10741
  unreachable

.loopexit.i122:                                   ; preds = %bb.hn, %bb.gg, %bb.gd, %bb.gc, %bb.fz, %bb.fp, %bb.fn
  %lpad.loopexit39.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i103

.loopexit.split-lp.i125:                          ; preds = %bb.fo
  %lpad.loopexit.split-lp40.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i103

_RNvMs3_NtCsgpMJJHpo27b_12typst_bundle10introspectNtB5_25BundleIntrospectorBuilder13discover_item.exit.i: ; preds = %bb.fi, %_RNvMs3_NtCsgpMJJHpo27b_12typst_bundle10introspectNtB5_25BundleIntrospectorBuilder17discover_document.exit.i.i, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB20_3num7nonzero7NonZerojEEEE8push_mutCsgpMJJHpo27b_12typst_bundle.exit5.i.i.i, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB20_3num7nonzero7NonZerojEEEE8push_mutCsgpMJJHpo27b_12typst_bundle.exit.i.i.i, %.noexc6.i, %bb.fl, %bb.fk
  %i.bdb = getelementptr inbounds nuw i8, ptr %.sroa.0.0110.i, i64 80 ; 2 uses
  %.not4.i = icmp eq ptr %i.bdb, %i.xx
  br i1 %.not4.i, label %._crit_edge.loopexit.i, label %bb.fi

bb.lh:                                            ; preds = %bb.ki, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtCsiSzwKAiqS6b_8smallvec8SmallVecAINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1e_12introspector11BuilderItemINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB42_3num7nonzero7NonZerojEEEEj1_EEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !10674
  store i64 %.sroa.0.0.copyload.i, ptr %i.ci, align 8, !alias.scope !10741, !noalias !10252
  %.sroa.6.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx28.i, align 8, !alias.scope !10741, !noalias !10252
  %.sroa.7.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 %.sroa.7.0.copyload.i, ptr %.sroa.7.0..sroa_idx30.i, align 8, !alias.scope !10741, !noalias !10252
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.bdc, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0.i.i, i64 120, i1 false), !noalias !10850
  %.sroa.7.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 144
  store i64 0, ptr %.sroa.7.0..sroa_idx.i17.i, align 8, !alias.scope !10851, !noalias !10850
  %.sroa.8.0..sroa_idx.i18.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 152
  store i8 0, ptr %.sroa.8.0..sroa_idx.i18.i, align 8, !alias.scope !10851, !noalias !10850
  %.sroa.9.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.9.0..sroa_idx.i19.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.511.i.i.i, i64 39, i1 false), !noalias !10850
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.ci, i64 192 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bdd, ptr noundef nonnull align 8 dereferenceable(32) @15, i64 32, i1 false), !noalias !10850
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.511.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !10254
  %i.bde = load ptr, ptr %i.ab, align 8, !alias.scope !10852, !noalias !10254, !noundef !10
  %i.bdf = icmp eq ptr %i.bde, null
  br i1 %i.bdf, label %bb.lt, label %bb.li

bb.li:                                            ; preds = %bb.lh
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %bb.lt unwind label %bb.ls

.body.thread.i103:                                ; preds = %.loopexit.split-lp.i125, %.loopexit.i122, %bb.jd, %bb.jb, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i51.i.i.i, %.body60.i37.i.i.i, %common.resume.sink.split.i.i.i, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i, %.body60.i.i.i.i, %bb.fs, %bb.fr
  %eh.lpad-body33.i = phi { ptr, i32 } [ %i.zd, %bb.fs ], [ %i.zd, %bb.fr ], [ %lpad.loopexit.split-lp40.i, %.loopexit.split-lp.i125 ], [ %lpad.loopexit39.i, %.loopexit.i122 ], [ %.pn.i38.i.i.i, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i51.i.i.i ], [ %i.asp, %bb.jb ], [ %.pn.i.i.i.i123, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.asr, %bb.jd ], [ %.pn.i.i.i.i123, %.body60.i.i.i.i ], [ %.pn.i38.i.i.i, %.body60.i37.i.i.i ], [ %common.resume.op.ph.i.i.i, %common.resume.sink.split.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !10855)
  %.val.i203 = load ptr, ptr %.sroa.4.0..sroa_idx1.i.i, align 8, !alias.scope !10855, !noalias !10249, !nonnull !10, !noundef !10 ; 4 uses
  %.val1.i = load i64, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !alias.scope !10855, !noalias !10249, !noundef !10 ; 4 uses
  %i.bdg = icmp eq i64 %.val1.i, 0
  br i1 %i.bdg, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtCsgpMJJHpo27b_12typst_bundle10introspect17ChildIntrospectorNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1y_.exit.i, label %.lr.ph1147

bb.lj:                                            ; preds = %.lr.ph1147
  %i.bdh = icmp eq i64 %i.bdj, %.val1.i
  br i1 %i.bdh, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtCsgpMJJHpo27b_12typst_bundle10introspect17ChildIntrospectorNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1y_.exit.i, label %.lr.ph1147

.lr.ph1147:                                       ; preds = %.body.thread.i103, %bb.lj
  %.sroa.0.0.i.i.i2041146 = phi i64 [ %i.bdj, %bb.lj ], [ 0, %.body.thread.i103 ] ; 2 uses
  %i.bdi = getelementptr inbounds nuw [48 x i8], ptr %.val.i203, i64 %.sroa.0.0.i.i.i2041146
  %i.bdj = add nuw nsw i64 %.sroa.0.0.i.i.i2041146, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtCsgpMJJHpo27b_12typst_bundle10introspect17ChildIntrospectorNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEEB1u_(ptr noalias nofree noundef align 16 dereferenceable(48) %i.bdi)
          to label %bb.lj unwind label %bb.ll, !noalias !10858

bb.lk:                                            ; preds = %.lr.ph1149
  %i.bdk = add i64 %.sroa.0.1.i.i.i2051148, 1     ; 2 uses
  %i.bdl = icmp eq i64 %i.bdk, %.val1.i
  br i1 %i.bdl, label %.body.i206, label %.lr.ph1149

bb.ll:                                            ; preds = %.lr.ph1147
  %i.bdm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.bdn = icmp eq i64 %i.bdj, %.val1.i
  br i1 %i.bdn, label %.body.i206, label %.lr.ph1149

.lr.ph1149:                                       ; preds = %bb.ll, %bb.lk
  %.sroa.0.1.i.i.i2051148 = phi i64 [ %i.bdk, %bb.lk ], [ %i.bdj, %bb.ll ] ; 2 uses
  %i.bdo = getelementptr inbounds nuw [48 x i8], ptr %.val.i203, i64 %.sroa.0.1.i.i.i2051148
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtCsgpMJJHpo27b_12typst_bundle10introspect17ChildIntrospectorNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEEB1u_(ptr noalias nofree noundef align 16 dereferenceable(48) %i.bdo) #49
          to label %bb.lk unwind label %bb.lm, !noalias !10858

bb.lm:                                            ; preds = %.lr.ph1149
  %i.bdp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !10858
  unreachable

.body.i206:                                       ; preds = %bb.lk, %bb.ll
  %.val4.i207 = load i64, ptr %i.aa, align 8, !range !568, !alias.scope !10855, !noalias !10249, !noundef !10 ; 2 uses
  %i.bdq = icmp eq i64 %.val4.i207, 0
  br i1 %i.bdq, label %.body208, label %bb.ln

bb.ln:                                            ; preds = %.body.i206
  %i.bdr = mul nuw i64 %.val4.i207, 48
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i203, i64 noundef %i.bdr, i64 noundef range(i64 1, -9223372036854775807) 16) #48, !noalias !10858
  br label %.body208

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtCsgpMJJHpo27b_12typst_bundle10introspect17ChildIntrospectorNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1y_.exit.i: ; preds = %bb.lj, %.body.thread.i103
  %.val2.i = load i64, ptr %i.aa, align 8, !range !568, !alias.scope !10855, !noalias !10249, !noundef !10 ; 2 uses
  %i.bds = icmp eq i64 %.val2.i, 0
  br i1 %i.bds, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtCsgpMJJHpo27b_12typst_bundle10introspect17ChildIntrospectorNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEEEB21_.exit, label %bb.lo

bb.lo:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtCsgpMJJHpo27b_12typst_bundle10introspect17ChildIntrospectorNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1y_.exit.i
  %i.bdt = mul nuw i64 %.val2.i, 48
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i203, i64 noundef %i.bdt, i64 noundef range(i64 1, -9223372036854775807) 16) #48, !noalias !10858
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtCsgpMJJHpo27b_12typst_bundle10introspect17ChildIntrospectorNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEEEB21_.exit

.body208:                                         ; preds = %.body.i206, %bb.ln
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector26ElementIntrospectorBuilderINtNtB4_6option6OptionINtNtNtB4_3num7nonzero7NonZerojEEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef readonly align 8 dereferenceable(208) %i.bdu) #49
          to label %.body201 unwind label %bb.lp, !noalias !10249

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtCsgpMJJHpo27b_12typst_bundle10introspect17ChildIntrospectorNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEEEB21_.exit: ; preds = %bb.lo, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtCsgpMJJHpo27b_12typst_bundle10introspect17ChildIntrospectorNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1y_.exit.i
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector26ElementIntrospectorBuilderINtNtB4_6option6OptionINtNtNtB4_3num7nonzero7NonZerojEEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef readonly align 8 dereferenceable(208) %i.bdv)
          to label %.body.i104 unwind label %bb.lq

bb.lp:                                            ; preds = %.body208
  %i.bdw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !10859
  unreachable

bb.lq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtCsgpMJJHpo27b_12typst_bundle10introspect17ChildIntrospectorNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEEEB21_.exit, %bb.fh
  %i.bdx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body201

.body201:                                         ; preds = %.body208, %bb.lq
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !10249
  unreachable

bb.lr:                                            ; preds = %bb.ox
  br i1 %.sroa.036.1768, label %.thread241, label %.body84

bb.ls:                                            ; preds = %bb.li, %bb.fg
  %i.bdy = landingpad { ptr, i32 }
          cleanup
  br label %.thread241

bb.lt:                                            ; preds = %bb.lh, %bb.li
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !10254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  invoke void @_RNvMNtCsgpMJJHpo27b_12typst_bundle10introspectNtB2_18BundleIntrospector12link_targets(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ch, ptr noundef nonnull align 8 %i.ci)
          to label %bb.lu unwind label %.thread763

.thread771:                                       ; preds = %.thread248, %bb.nw, %bb.np, %.body.i138
  %.sroa.036.3.ph = phi i1 [ true, %.body.i138 ], [ true, %bb.np ], [ false, %bb.nw ], [ false, %.thread248 ]
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.i139, %.body.i138 ], [ %i.bnk, %bb.np ], [ %i.bob, %bb.nw ], [ %.pn.pn253, %.thread248 ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapRNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathINtNtBG_3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEB3L_EECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ch) #49
  br label %bb.ox

.thread775:                                       ; preds = %bb.oc, %.body64
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapRNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathINtNtBG_3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEB3L_EECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ch) #49
  br label %.body84

.thread763:                                       ; preds = %bb.lt
  %i.bdz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ox

bb.lu:                                            ; preds = %bb.lt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  call void @llvm.experimental.noalias.scope.decl(metadata !10862)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !10865
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) @15, i64 32, i1 false), !noalias !10865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !10865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10868
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) @15, i64 32, i1 false), !noalias !10868
  call void @llvm.experimental.noalias.scope.decl(metadata !10872)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10875
  call void @llvm.experimental.noalias.scope.decl(metadata !10877)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10880
  store ptr %.sroa.03.0.i.i.i.i, ptr %i.g, align 8, !noalias !10882
  %.sroa.4.0..sroa_idx.i133 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.wp, ptr %.sroa.4.0..sroa_idx.i133, align 8, !noalias !10882
  %.sroa.5.0..sroa_idx.i134 = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store ptr %i.ch, ptr %.sroa.5.0..sroa_idx.i134, align 8, !noalias !10882
  %.sroa.6.0..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.m, ptr %.sroa.6.0..sroa_idx.i135, align 8, !noalias !10882
  %i.bea = invoke noundef i64 @_RNvCsf1gSX8u3EQ2_10rayon_core19current_num_threads()
          to label %.noexc.i.i140 unwind label %bb.mu, !noalias !10883

.noexc.i.i140:                                    ; preds = %bb.lu
  %i.beb = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  invoke fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB6_13flat_map_iter19FlatMapIterConsumerNtNtB6_6extend15ListVecConsumerNCNvNtB1K_4link19create_link_anchors0EEB1K_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.beb, i64 noundef range(i64 0, 115292150460684698) %i.wp, i1 noundef zeroext false, i64 noundef %i.bea, i64 noundef 1, ptr noalias nofree noundef nonnull align 16 %.sroa.03.0.i.i.i.i, i64 noundef range(i64 0, 115292150460684698) %i.wp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.5.0..sroa_idx.i134)
          to label %.noexc2.i.i unwind label %bb.mu, !noalias !10883

.noexc2.i.i:                                      ; preds = %.noexc.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10880
  store i64 1, ptr %i.i, align 8, !alias.scope !10877, !noalias !10884
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.011.i.i.i)
  %i.bec = load ptr, ptr %i.beb, align 8, !noalias !10875, !noundef !10
  %i.bed = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.bee = load i64, ptr %i.bed, align 8, !noalias !10875, !noundef !10 ; 4 uses
  store ptr %i.bec, ptr %.sroa.011.i.i.i, align 8, !noalias !10875
  %i.bef = icmp eq i64 %i.bee, 0
  br i1 %i.bef, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB39_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB37_5accumjNtB58_3Sum3sumINtB49_3MapB3_B4J_EE0E0ECsgpMJJHpo27b_12typst_bundle.exit.thread.i.i.i, label %.lr.ph.i.i.i.i141.preheader

.lr.ph.i.i.i.i141.preheader:                      ; preds = %.noexc2.i.i
  %xtraiter1353 = and i64 %i.bee, 3               ; 3 uses
  %i.beg = icmp ult i64 %i.bee, 4
  br i1 %i.beg, label %.lr.ph.i.i.i.i141.epil.preheader, label %.lr.ph.i.i.i.i141.preheader.new

.lr.ph.i.i.i.i141.preheader.new:                  ; preds = %.lr.ph.i.i.i.i141.preheader
  %unroll_iter1357 = and i64 %i.bee, -4
  br label %.lr.ph.i.i.i.i141

_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB39_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB37_5accumjNtB58_3Sum3sumINtB49_3MapB3_B4J_EE0E0ECsgpMJJHpo27b_12typst_bundle.exit.thread.i.i.i: ; preds = %.noexc2.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.011.i.i.i)
  br label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1W_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i

.lr.ph.i.i.i.i141:                                ; preds = %.lr.ph.i.i.i.i141, %.lr.ph.i.i.i.i141.preheader.new
  %.sroa.0.08.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i141.preheader.new ], [ %i.bfa, %.lr.ph.i.i.i.i141 ]
  %.in.i.i.i.i = phi ptr [ %.sroa.011.i.i.i, %.lr.ph.i.i.i.i141.preheader.new ], [ %i.bex, %.lr.ph.i.i.i.i141 ]
  %niter1358 = phi i64 [ 0, %.lr.ph.i.i.i.i141.preheader.new ], [ %niter1358.next.3, %.lr.ph.i.i.i.i141 ]
  %i.beh = load ptr, ptr %.in.i.i.i.i, align 1, !noalias !10885 ; 2 uses
  %i.bei = getelementptr inbounds nuw i8, ptr %i.beh, i64 24
  %i.bej = getelementptr i8, ptr %i.beh, i64 16
  %.val.i.i.i.i142 = load i64, ptr %i.bej, align 8, !noalias !10886, !noundef !10 ; 2 uses
  %i.bek = icmp ult i64 %.val.i.i.i.i142, 288230376151711744
  call void @llvm.assume(i1 %i.bek)
  %i.bel = add i64 %.val.i.i.i.i142, %.sroa.0.08.i.i.i.i
  %i.bem = load ptr, ptr %i.bei, align 8, !noalias !10885 ; 2 uses
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bem, i64 24
  %i.beo = getelementptr i8, ptr %i.bem, i64 16
  %.val.i.i.i.i142.1 = load i64, ptr %i.beo, align 8, !noalias !10886, !noundef !10 ; 2 uses
  %i.bep = icmp ult i64 %.val.i.i.i.i142.1, 288230376151711744
  call void @llvm.assume(i1 %i.bep)
  %i.beq = add i64 %.val.i.i.i.i142.1, %i.bel
  %i.ber = load ptr, ptr %i.ben, align 8, !noalias !10885 ; 2 uses
  %i.bes = getelementptr inbounds nuw i8, ptr %i.ber, i64 24
  %i.bet = getelementptr i8, ptr %i.ber, i64 16
  %.val.i.i.i.i142.2 = load i64, ptr %i.bet, align 8, !noalias !10886, !noundef !10 ; 2 uses
  %i.beu = icmp ult i64 %.val.i.i.i.i142.2, 288230376151711744
  call void @llvm.assume(i1 %i.beu)
  %i.bev = add i64 %.val.i.i.i.i142.2, %i.beq
  %i.bew = load ptr, ptr %i.bes, align 8, !noalias !10885 ; 2 uses
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bew, i64 24 ; 2 uses
  %i.bey = getelementptr i8, ptr %i.bew, i64 16
  %.val.i.i.i.i142.3 = load i64, ptr %i.bey, align 8, !noalias !10886, !noundef !10 ; 2 uses
  %i.bez = icmp ult i64 %.val.i.i.i.i142.3, 288230376151711744
  call void @llvm.assume(i1 %i.bez)
  %i.bfa = add i64 %.val.i.i.i.i142.3, %i.bev     ; 3 uses
  %niter1358.next.3 = add nuw i64 %niter1358, 4   ; 2 uses
  %niter1358.ncmp.3 = icmp eq i64 %niter1358.next.3, %unroll_iter1357
  br i1 %niter1358.ncmp.3, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB39_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB37_5accumjNtB58_3Sum3sumINtB49_3MapB3_B4J_EE0E0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i141

_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB39_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB37_5accumjNtB58_3Sum3sumINtB49_3MapB3_B4J_EE0E0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i141
  %lcmp.mod1354.not = icmp eq i64 %xtraiter1353, 0
  br i1 %lcmp.mod1354.not, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB39_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB37_5accumjNtB58_3Sum3sumINtB49_3MapB3_B4J_EE0E0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i, label %.lr.ph.i.i.i.i141.epil.preheader

.lr.ph.i.i.i.i141.epil.preheader:                 ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB39_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB37_5accumjNtB58_3Sum3sumINtB49_3MapB3_B4J_EE0E0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i141.preheader
  %.sroa.0.08.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i141.preheader ], [ %i.bfa, %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB39_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB37_5accumjNtB58_3Sum3sumINtB49_3MapB3_B4J_EE0E0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.unr-lcssa ]
  %.in.i.i.i.i.epil.init = phi ptr [ %.sroa.011.i.i.i, %.lr.ph.i.i.i.i141.preheader ], [ %i.bex, %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB39_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB37_5accumjNtB58_3Sum3sumINtB49_3MapB3_B4J_EE0E0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.unr-lcssa ]
  %lcmp.mod1356 = icmp ne i64 %xtraiter1353, 0
  call void @llvm.assume(i1 %lcmp.mod1356)
  br label %.lr.ph.i.i.i.i141.epil

.lr.ph.i.i.i.i141.epil:                           ; preds = %.lr.ph.i.i.i.i141.epil, %.lr.ph.i.i.i.i141.epil.preheader
  %.sroa.0.08.i.i.i.i.epil = phi i64 [ %i.bff, %.lr.ph.i.i.i.i141.epil ], [ %.sroa.0.08.i.i.i.i.epil.init, %.lr.ph.i.i.i.i141.epil.preheader ]
  %.in.i.i.i.i.epil = phi ptr [ %i.bfc, %.lr.ph.i.i.i.i141.epil ], [ %.in.i.i.i.i.epil.init, %.lr.ph.i.i.i.i141.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i141.epil ], [ 0, %.lr.ph.i.i.i.i141.epil.preheader ]
  %i.bfb = load ptr, ptr %.in.i.i.i.i.epil, align 1, !noalias !10885 ; 2 uses
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bfb, i64 24
  %i.bfd = getelementptr i8, ptr %i.bfb, i64 16
  %.val.i.i.i.i142.epil = load i64, ptr %i.bfd, align 8, !noalias !10886, !noundef !10 ; 2 uses
  %i.bfe = icmp ult i64 %.val.i.i.i.i142.epil, 288230376151711744
  call void @llvm.assume(i1 %i.bfe)
  %i.bff = add i64 %.val.i.i.i.i142.epil, %.sroa.0.08.i.i.i.i.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1353
  br i1 %epil.iter.cmp.not, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB39_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB37_5accumjNtB58_3Sum3sumINtB49_3MapB3_B4J_EE0E0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i, label %.lr.ph.i.i.i.i141.epil, !llvm.loop !10889

_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB39_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB37_5accumjNtB58_3Sum3sumINtB49_3MapB3_B4J_EE0E0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i141.epil, %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB39_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB37_5accumjNtB58_3Sum3sumINtB49_3MapB3_B4J_EE0E0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.unr-lcssa
  %.lcssa1199 = phi i64 [ %i.bfa, %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB39_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB37_5accumjNtB58_3Sum3sumINtB49_3MapB3_B4J_EE0E0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.unr-lcssa ], [ %i.bff, %.lr.ph.i.i.i.i141.epil ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.011.i.i.i)
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bfh = load i64, ptr %i.bfg, align 8, !alias.scope !10891, !noalias !10894, !noundef !10
  %i.bfi = icmp ugt i64 %.lcssa1199, %i.bfh
  br i1 %i.bfi, label %bb.lv, label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1W_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i, !prof !10896

bb.lv:                                            ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB39_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB37_5accumjNtB58_3Sum3sumINtB49_3MapB3_B4J_EE0E0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.bfk = invoke { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1W_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %.lcssa1199, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bfj, i1 noundef zeroext true) #51
          to label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1W_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i unwind label %bb.mt, !noalias !10897 ; 0 uses

_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1W_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i: ; preds = %bb.lv, %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB39_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB37_5accumjNtB58_3Sum3sumINtB49_3MapB3_B4J_EE0E0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i, %_RINvYINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB39_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB37_5accumjNtB58_3Sum3sumINtB49_3MapB3_B4J_EE0E0ECsgpMJJHpo27b_12typst_bundle.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.beb, i64 24, i1 false), !noalias !10875
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %.promoted.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !10898, !noalias !10901 ; 2 uses
  %.promoted23.i.i.i = load ptr, ptr %i.bfl, align 8, !noalias !10875 ; 2 uses
  %.promoted25.i.i.i = load i64, ptr %i.bfm, align 8, !noalias !10875 ; 2 uses
  %.not.i27.i.i.i = icmp eq ptr %.promoted.i.i.i, null
  br i1 %.not.i27.i.i.i, label %_RNvMs6_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE9pop_frontCsgpMJJHpo27b_12typst_bundle.exit.thread.i.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1W_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.bft = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %.lr.ph.i.i.i143

.lr.ph.i.i.i143:                                  ; preds = %bb.mr, %.lr.ph.i.preheader.i.i
  %i.bga = phi ptr [ %i.bge, %bb.mr ], [ %.promoted.i.i.i, %.lr.ph.i.preheader.i.i ] ; 5 uses
  %i.bgb = phi ptr [ %i.bgg, %bb.mr ], [ %.promoted23.i.i.i, %.lr.ph.i.preheader.i.i ]
  %i.bgc = phi i64 [ %i.bgh, %bb.mr ], [ %.promoted25.i.i.i, %.lr.ph.i.preheader.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !10898)
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bga, i64 24
  %i.bge = load ptr, ptr %i.bgd, align 8, !noalias !10903, !noundef !10 ; 5 uses
  %.not3.i.i.i.i = icmp eq ptr %i.bge, null       ; 2 uses
  br i1 %.not3.i.i.i.i, label %_RNvMs6_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE9pop_frontCsgpMJJHpo27b_12typst_bundle.exit.i.i.i, label %bb.lw

bb.lw:                                            ; preds = %.lr.ph.i.i.i143
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.bge, i64 32
  store ptr null, ptr %i.bgf, align 8, !noalias !10903
  br label %_RNvMs6_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE9pop_frontCsgpMJJHpo27b_12typst_bundle.exit.i.i.i

.body7.i.i:                                       ; preds = %bb.mp, %bb.mn
  %eh.lpad-body8.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i.i, %bb.mn ], [ %i.bjp, %bb.mp ]
  store ptr %i.bge, ptr %i.h, align 8, !noalias !10875
  store ptr %i.bgg, ptr %i.bfl, align 8, !noalias !10875
  store i64 %i.bgh, ptr %i.bfm, align 8, !noalias !10875
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i.i136 unwind label %bb.ms, !noalias !10897

_RNvMs6_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE9pop_frontCsgpMJJHpo27b_12typst_bundle.exit.i.i.i: ; preds = %bb.lw, %.lr.ph.i.i.i143
  %i.bgg = phi ptr [ %i.bgb, %bb.lw ], [ null, %.lr.ph.i.i.i143 ] ; 4 uses
  %i.bgh = add i64 %i.bgc, -1                     ; 4 uses
  %.sroa.0.0.copyload9.i.i.i = load i64, ptr %i.bga, align 8, !noalias !10904 ; 2 uses
  %.sroa.7.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.bga, i64 8
  %.sroa.7.i.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx10.i.i.i, align 8, !noalias !10904 ; 4 uses
  %.sroa.7.i.sroa.6.0..sroa.7.0..sroa_idx10.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bga, i64 16
  %.sroa.7.i.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.7.i.sroa.6.0..sroa.7.0..sroa_idx10.i.sroa_idx.i.i, align 8, !noalias !10904 ; 5 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.bga, i64 noundef 40, i64 noundef 8) #48, !noalias !10905
  %.not.i.i.i144 = icmp eq i64 %.sroa.0.0.copyload9.i.i.i, -1
  br i1 %.not.i.i.i144, label %_RNvMs6_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE9pop_frontCsgpMJJHpo27b_12typst_bundle.exit.thread.i.i.i, label %bb.lx

bb.lx:                                            ; preds = %_RNvMs6_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE9pop_frontCsgpMJJHpo27b_12typst_bundle.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10908)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10911
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.i.sroa.0.0.copyload.i.i) ]
  %i.bgi = icmp ult i64 %.sroa.7.i.sroa.6.0.copyload.i.i, 288230376151711744
  call void @llvm.assume(i1 %i.bgi), !noalias !10913
  %i.bgj = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7.i.sroa.0.0.copyload.i.i, i64 %.sroa.7.i.sroa.6.0.copyload.i.i
  store ptr %.sroa.7.i.sroa.0.0.copyload.i.i, ptr %i.f, align 8, !alias.scope !10914, !noalias !10917
  store i64 %.sroa.0.0.copyload9.i.i.i, ptr %i.bfn, align 8, !alias.scope !10914, !noalias !10917
  store ptr %.sroa.7.i.sroa.0.0.copyload.i.i, ptr %i.bfo, align 8, !alias.scope !10914, !noalias !10917
  store ptr %i.bgj, ptr %i.bfp, align 8, !alias.scope !10914, !noalias !10917
  %i.bgk = load i64, ptr %i.bfq, align 8, !alias.scope !10908, !noalias !10919, !noundef !10
  %i.bgl = icmp eq i64 %i.bgk, 0
  %i.bgm = lshr i64 %.sroa.7.i.sroa.6.0.copyload.i.i, 1
  %i.bgn = and i64 %.sroa.7.i.sroa.6.0.copyload.i.i, 1
  %.sroa.0.0.i.i.i145 = add nuw nsw i64 %i.bgm, %i.bgn
  %.sroa.0.1.i.i.i = select i1 %i.bgl, i64 %.sroa.7.i.sroa.6.0.copyload.i.i, i64 %.sroa.0.0.i.i.i145 ; 2 uses
  %i.bgo = load i64, ptr %i.bfr, align 8, !alias.scope !10920, !noalias !10923, !noundef !10
  %i.bgp = icmp ugt i64 %.sroa.0.1.i.i.i, %i.bgo
  br i1 %i.bgp, label %bb.ly, label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1W_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i5.i.i, !prof !33

bb.ly:                                            ; preds = %bb.lx
  %i.bgq = invoke { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1W_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %.sroa.0.1.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bfs, i1 noundef zeroext true) #51
          to label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1W_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i5.i.i unwind label %bb.mp, !noalias !10925 ; 0 uses

_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1W_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i5.i.i: ; preds = %bb.ly, %bb.lx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10911
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !10911
  call void @llvm.experimental.noalias.scope.decl(metadata !10926), !noalias !10913
  call void @llvm.experimental.noalias.scope.decl(metadata !10929), !noalias !10913
  %i.bgr = load ptr, ptr %i.bft, align 8, !alias.scope !10932, !noalias !10933, !nonnull !10, !noundef !10 ; 2 uses
  %.promoted.i.i.i.i.i = load ptr, ptr %i.bfu, align 8, !alias.scope !10932, !noalias !10933 ; 2 uses
  %.not.not9.i.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i.i, %i.bgr
  br i1 %.not.not9.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1W_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i5.i.i, %bb.mm
  %i.bgs = phi ptr [ %i.bgt, %bb.mm ], [ %.promoted.i.i.i.i.i, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1W_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i5.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, ptr noundef nonnull align 16 dereferenceable(32) %i.bgs, i64 32, i1 false), !noalias !10937
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgs, i64 32 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10938), !noalias !10913
  call void @llvm.experimental.noalias.scope.decl(metadata !10941), !noalias !10913
  %i.bgu = load i128, ptr %i.d, align 16, !alias.scope !10944, !noalias !10936, !noundef !10 ; 4 uses
  %i.bgv = trunc i128 %i.bgu to i64
  %i.bgw = mul i64 %i.bgv, -1065810590584100411
  %i.bgx = lshr i128 %i.bgu, 64
  %i.bgy = trunc nuw i128 %i.bgx to i64
end_hunk_1
