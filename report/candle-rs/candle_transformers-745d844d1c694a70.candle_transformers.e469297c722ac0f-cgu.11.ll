Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.11?download=true
inline.NumInlined: 3716
inline.NumDeleted: 650
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_RNvMs_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16segment_anything3samNtB4_3Sam14generate_masks:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !24517)
  call void @llvm.experimental.noalias.scope.decl(metadata !24518)
  %i.abu = load ptr, ptr %i.bf, align 8, !alias.scope !24519, !noalias !24077, !nonnull !5, !noundef !5
  %i.abv = atomicrmw sub ptr %i.abu, i64 1 release, align 8, !noalias !24520
  %i.abw = icmp eq i64 %i.abv, 1
  br i1 %i.abw, label %bb.jt, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit933.i

bb.jt:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit931.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bf) #29
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit933.i unwind label %.loopexit.split-lp1048.i, !noalias !24079

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit933.i: ; preds = %bb.jt, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit931.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !24077
  br label %bb.ju

bb.ju:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit933.i, %bb.cq
  %.sroa.40.sroa.40.8 = phi i32 [ %.sroa.40.sroa.40.9, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit933.i ], [ %.sroa.40.sroa.40.0.extract.trunc247, %bb.cq ]
  %.sroa.40.sroa.0.8 = phi i32 [ %.sroa.40.sroa.0.9, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit933.i ], [ %.sroa.40.sroa.0.0.extract.trunc210, %bb.cq ]
  %.sroa.110.8 = phi i64 [ %.sroa.110.9, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit933.i ], [ %.sroa.110.24.copyload187, %bb.cq ]
  %.sroa.79.8 = phi ptr [ %.sroa.79.9, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit933.i ], [ %i.oi, %bb.cq ]
  %.sroa.0121.8 = phi i64 [ %.sroa.0121.9, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit933.i ], [ %i.og, %bb.cq ]
  call void @llvm.experimental.noalias.scope.decl(metadata !24521)
  call void @llvm.experimental.noalias.scope.decl(metadata !24522)
  call void @llvm.experimental.noalias.scope.decl(metadata !24523)
  %i.abx = load ptr, ptr %i.bh, align 8, !alias.scope !24524, !noalias !24077, !nonnull !5, !noundef !5
  %i.aby = atomicrmw sub ptr %i.abx, i64 1 release, align 8, !noalias !24525
  %i.abz = icmp eq i64 %i.aby, 1
  br i1 %i.abz, label %bb.jv, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit935.i

bb.jv:                                            ; preds = %bb.ju
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bh) #29
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit935.i unwind label %.loopexit.split-lp1070.i, !noalias !24079

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit935.i: ; preds = %bb.jv, %bb.ju
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !24077
  call void @llvm.experimental.noalias.scope.decl(metadata !24526)
  call void @llvm.experimental.noalias.scope.decl(metadata !24527)
  call void @llvm.experimental.noalias.scope.decl(metadata !24528)
  %i.aca = load ptr, ptr %i.bi, align 8, !alias.scope !24529, !noalias !24077, !nonnull !5, !noundef !5
  %i.acb = atomicrmw sub ptr %i.aca, i64 1 release, align 8, !noalias !24530
  %i.acc = icmp eq i64 %i.acb, 1
  br i1 %i.acc, label %bb.jw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit937.i

bb.jw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit935.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bi) #29
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit937.i unwind label %.loopexit.split-lp1043.i, !noalias !24079

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit937.i: ; preds = %bb.jw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit935.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !24077
  br label %bb.jx

bb.jx:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit937.i, %bb.cm
  %.sroa.40.sroa.40.7 = phi i32 [ %.sroa.40.sroa.40.8, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit937.i ], [ %.sroa.40.sroa.40.0.extract.trunc245, %bb.cm ] ; 2 uses
  %.sroa.40.sroa.0.7 = phi i32 [ %.sroa.40.sroa.0.8, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit937.i ], [ %.sroa.40.sroa.0.0.extract.trunc209, %bb.cm ] ; 2 uses
  %.sroa.110.7 = phi i64 [ %.sroa.110.8, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit937.i ], [ %.sroa.110.24.copyload, %bb.cm ] ; 2 uses
  %.sroa.79.7 = phi ptr [ %.sroa.79.8, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit937.i ], [ %i.ob, %bb.cm ] ; 2 uses
  %.sroa.0121.7 = phi i64 [ %.sroa.0121.8, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit937.i ], [ %i.nz, %bb.cm ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24531)
  call void @llvm.experimental.noalias.scope.decl(metadata !24532)
  call void @llvm.experimental.noalias.scope.decl(metadata !24533)
  %i.acd = load ptr, ptr %i.bk, align 8, !alias.scope !24534, !noalias !24077, !nonnull !5, !noundef !5
  %i.ace = atomicrmw sub ptr %i.acd, i64 1 release, align 8, !noalias !24535
  %i.acf = icmp eq i64 %i.ace, 1
  br i1 %i.acf, label %bb.jy, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit939.i

bb.jy:                                            ; preds = %bb.jx
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bk) #29
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit939.i unwind label %.loopexit.split-lp1038.i, !noalias !24079

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit939.i: ; preds = %bb.jy, %bb.jx, %bb.ci
  %.sroa.40.sroa.40.6 = phi i32 [ %.sroa.40.sroa.40.7, %bb.jy ], [ %.sroa.40.sroa.40.7, %bb.jx ], [ %.sroa.40.sroa.40.0.extract.trunc243, %bb.ci ] ; 2 uses
  %.sroa.40.sroa.0.6 = phi i32 [ %.sroa.40.sroa.0.7, %bb.jy ], [ %.sroa.40.sroa.0.7, %bb.jx ], [ %.sroa.40.sroa.0.0.extract.trunc208, %bb.ci ] ; 2 uses
  %.sroa.110.6 = phi i64 [ %.sroa.110.7, %bb.jy ], [ %.sroa.110.7, %bb.jx ], [ %.sroa.110.16.copyload167, %bb.ci ] ; 2 uses
  %.sroa.79.6 = phi ptr [ %.sroa.79.7, %bb.jy ], [ %.sroa.79.7, %bb.jx ], [ %.sroa.79.16.copyload137, %bb.ci ] ; 2 uses
  %.sroa.0121.6 = phi i64 [ %.sroa.0121.7, %bb.jy ], [ %.sroa.0121.7, %bb.jx ], [ %i.nt, %bb.ci ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !24077
  call void @llvm.experimental.noalias.scope.decl(metadata !24536)
  call void @llvm.experimental.noalias.scope.decl(metadata !24537)
  call void @llvm.experimental.noalias.scope.decl(metadata !24538)
  %i.acg = load ptr, ptr %i.bp, align 8, !alias.scope !24539, !noalias !24077, !nonnull !5, !noundef !5
  %i.ach = atomicrmw sub ptr %i.acg, i64 1 release, align 8, !noalias !24540
  %i.aci = icmp eq i64 %i.ach, 1
  br i1 %i.aci, label %bb.jz, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit941.i

bb.jz:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit939.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bp) #29
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit941.i unwind label %.thread967.loopexit.split-lp.i.loopexit.split-lp, !noalias !24079

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit941.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit770.i, %bb.jz, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit939.i
  %.sroa.40.sroa.40.5 = phi i32 [ %.sroa.40.sroa.40.6, %bb.jz ], [ %.sroa.40.sroa.40.6, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit939.i ], [ %.sroa.40.sroa.40.4, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit770.i ] ; 2 uses
  %.sroa.40.sroa.0.5 = phi i32 [ %.sroa.40.sroa.0.6, %bb.jz ], [ %.sroa.40.sroa.0.6, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit939.i ], [ %.sroa.40.sroa.0.4, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit770.i ] ; 2 uses
  %.sroa.110.5 = phi i64 [ %.sroa.110.6, %bb.jz ], [ %.sroa.110.6, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit939.i ], [ %.sroa.110.4, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit770.i ] ; 2 uses
  %.sroa.79.5 = phi ptr [ %.sroa.79.6, %bb.jz ], [ %.sroa.79.6, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit939.i ], [ %.sroa.79.4, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit770.i ] ; 2 uses
  %.sroa.0121.5 = phi i64 [ %.sroa.0121.6, %bb.jz ], [ %.sroa.0121.6, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit939.i ], [ %.sroa.0121.4, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit770.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !24077
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %bb.kb unwind label %bb.ka, !noalias !24079

bb.ka:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit941.i
  %i.acj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %.thread963.i unwind label %bb.kc, !noalias !24079

bb.kb:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit941.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEEB1d_.exit108 unwind label %bb.kd

bb.kc:                                            ; preds = %bb.ka
  %i.ack = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !24079
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit770.i: ; preds = %bb.cd, %bb.cc, %bb.bx
  %.sroa.40.sroa.40.4.in.in.in = phi ptr [ %i.nh, %bb.cd ], [ %i.nh, %bb.cc ], [ %i.nb, %bb.bx ]
  %.sroa.110.4 = phi i64 [ %.sroa.110.16.copyload166, %bb.cd ], [ %.sroa.110.16.copyload166, %bb.cc ], [ %.sroa.110.16.copyload165, %bb.bx ]
  %.sroa.79.4 = phi ptr [ %.sroa.79.16.copyload136, %bb.cd ], [ %.sroa.79.16.copyload136, %bb.cc ], [ %.sroa.79.16.copyload135, %bb.bx ]
  %.sroa.0121.4 = phi i64 [ %i.ng, %bb.cd ], [ %i.ng, %bb.cc ], [ %i.na, %bb.bx ]
  %.sroa.40.sroa.40.4.in.in = ptrtoint ptr %.sroa.40.sroa.40.4.in.in.in to i64 ; 2 uses
  %.sroa.40.sroa.0.4 = trunc i64 %.sroa.40.sroa.40.4.in.in to i32
  %.sroa.40.sroa.40.4.in = lshr i64 %.sroa.40.sroa.40.4.in.in, 32
  %.sroa.40.sroa.40.4 = trunc nuw i64 %.sroa.40.sroa.40.4.in to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !24077
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit941.i

.thread963.i:                                     ; preds = %bb.kd, %bb.ka, %.thread.i, %bb.kk, %bb.bp
  %.pn742.pn.i = phi { ptr, i32 } [ %.pn742962.i, %.thread.i ], [ %lpad.thr_comm.split-lp.i, %bb.bp ], [ %i.acu, %bb.kk ], [ %i.acl, %bb.kd ], [ %i.acj, %bb.ka ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_fEEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bs) #27
          to label %.body102 unwind label %bb.iz, !noalias !24079

bb.kd:                                            ; preds = %bb.kb
  %i.acl = landingpad { ptr, i32 }
          cleanup
  br label %.thread963.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEEB1d_.exit108: ; preds = %bb.kb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !24077
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_fEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %bb.kf unwind label %bb.ke, !noalias !24079

bb.ke:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEEB1d_.exit108
  %i.acm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecfEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %.body102 unwind label %bb.kg, !noalias !24079

bb.kf:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEEB1d_.exit108
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecfEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_fEEECs1dZk1kIfPhr_19candle_transformers.exit unwind label %.loopexit.split-lp373

bb.kg:                                            ; preds = %bb.ke
  %i.acn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !24079
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_fEEECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !24077
  call void @llvm.experimental.noalias.scope.decl(metadata !24541)
  call void @llvm.experimental.noalias.scope.decl(metadata !24542)
  call void @llvm.experimental.noalias.scope.decl(metadata !24543)
  %i.aco = load ptr, ptr %i.bu, align 8, !alias.scope !24544, !noalias !24077, !nonnull !5, !noundef !5
  %i.acp = atomicrmw sub ptr %i.aco, i64 1 release, align 8, !noalias !24545
  %i.acq = icmp eq i64 %i.acp, 1
  br i1 %i.acq, label %bb.kh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit943.i

bb.kh:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_fEEECs1dZk1kIfPhr_19candle_transformers.exit
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bu) #29
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit943.i unwind label %.loopexit.split-lp368, !noalias !24079

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit943.i: ; preds = %bb.kh, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_fEEECs1dZk1kIfPhr_19candle_transformers.exit, %bb.bl
  %.sroa.40.sroa.40.3 = phi i32 [ %.sroa.40.sroa.40.5, %bb.kh ], [ %.sroa.40.sroa.40.5, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_fEEECs1dZk1kIfPhr_19candle_transformers.exit ], [ %.sroa.40.sroa.40.0.extract.trunc237, %bb.bl ] ; 2 uses
  %.sroa.40.sroa.0.3 = phi i32 [ %.sroa.40.sroa.0.5, %bb.kh ], [ %.sroa.40.sroa.0.5, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_fEEECs1dZk1kIfPhr_19candle_transformers.exit ], [ %.sroa.40.sroa.0.0.extract.trunc205, %bb.bl ] ; 2 uses
  %.sroa.110.3 = phi i64 [ %.sroa.110.5, %bb.kh ], [ %.sroa.110.5, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_fEEECs1dZk1kIfPhr_19candle_transformers.exit ], [ %.sroa.110.16.copyload164, %bb.bl ] ; 2 uses
  %.sroa.79.3 = phi ptr [ %.sroa.79.5, %bb.kh ], [ %.sroa.79.5, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_fEEECs1dZk1kIfPhr_19candle_transformers.exit ], [ %.sroa.79.16.copyload134, %bb.bl ] ; 2 uses
  %.sroa.0121.3 = phi i64 [ %.sroa.0121.5, %bb.kh ], [ %.sroa.0121.5, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_fEEECs1dZk1kIfPhr_19candle_transformers.exit ], [ %i.lx, %bb.bl ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !24077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !24077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !24077
  call void @llvm.experimental.noalias.scope.decl(metadata !24546)
  call void @llvm.experimental.noalias.scope.decl(metadata !24547)
  call void @llvm.experimental.noalias.scope.decl(metadata !24548)
  %i.acr = load ptr, ptr %i.by, align 8, !alias.scope !24549, !noalias !24077, !nonnull !5, !noundef !5
  %i.acs = atomicrmw sub ptr %i.acr, i64 1 release, align 8, !noalias !24550
  %i.act = icmp eq i64 %i.acs, 1
  br i1 %i.act, label %bb.ki, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit945.i

bb.ki:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit943.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.by) #29
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit945.i unwind label %.loopexit.split-lp363, !noalias !24079

bb.kj:                                            ; preds = %._crit_edge1993.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mh, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false), !noalias !24079
  store i64 1, ptr %i.e, align 8, !noalias !24077
  store ptr %i.mh, ptr %i.jz, align 8, !noalias !24077
  store i64 1, ptr %i.ka, align 8, !noalias !24077
  invoke void @_RINvNtCs1dZk1kIfPhr_19candle_transformers16object_detection23non_maximum_suppressionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEB4_(ptr noalias nofree noundef nonnull align 8 %i.mh, i64 noundef 1, float noundef f0x3F333333)
          to label %bb.kl unwind label %bb.kk, !noalias !24079

bb.kk:                                            ; preds = %bb.kl, %bb.kj
  %i.acu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_INtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEEEB1h_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #27
          to label %.thread963.i unwind label %bb.iz, !noalias !24079

bb.kl:                                            ; preds = %bb.kj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24077
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecIBv_INtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEE6removeBN_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @314)
          to label %bb.km unwind label %bb.kk, !noalias !24079

bb.km:                                            ; preds = %bb.kl
  %.sroa.40.8.copyload125199 = load i32, ptr %i.d, align 8
  %.sroa.40.8.copyload125200 = load i32, ptr %.sroa_idx, align 4
  %.sroa.79.8.copyload129 = load ptr, ptr %.sroa.79.8..sroa_idx, align 8, !noalias !24078 ; 4 uses
  %.sroa.110.8.copyload159 = load i64, ptr %.sroa.110.8..sroa_idx, align 8, !noalias !24078 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24077
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_INtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEEEB1h_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
          to label %bb.kn unwind label %bb.bp, !noalias !24079

bb.kn:                                            ; preds = %bb.km
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !24077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !24077
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_fEEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bs)
          to label %bb.ko unwind label %.loopexit372, !noalias !24079

bb.ko:                                            ; preds = %bb.kn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !24077
  call void @llvm.experimental.noalias.scope.decl(metadata !24551)
  call void @llvm.experimental.noalias.scope.decl(metadata !24552)
  call void @llvm.experimental.noalias.scope.decl(metadata !24553)
  %i.acv = load ptr, ptr %i.bu, align 8, !alias.scope !24554, !noalias !24077, !nonnull !5, !noundef !5
  %i.acw = atomicrmw sub ptr %i.acv, i64 1 release, align 8, !noalias !24555
  %i.acx = icmp eq i64 %i.acw, 1
  br i1 %i.acx, label %bb.kp, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit947.i

bb.kp:                                            ; preds = %bb.ko
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bu) #29
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit947.i unwind label %.loopexit367, !noalias !24079

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit947.i: ; preds = %bb.kp, %bb.ko
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !24077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !24077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !24077
  call void @llvm.experimental.noalias.scope.decl(metadata !24556)
  call void @llvm.experimental.noalias.scope.decl(metadata !24557)
  call void @llvm.experimental.noalias.scope.decl(metadata !24558)
  %i.acy = load ptr, ptr %i.by, align 8, !alias.scope !24559, !noalias !24077, !nonnull !5, !noundef !5
  %i.acz = atomicrmw sub ptr %i.acy, i64 1 release, align 8, !noalias !24560
  %i.ada = icmp eq i64 %i.acz, 1
  br i1 %i.ada, label %bb.kq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit949.i

bb.kq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit947.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.by) #29
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit949.i unwind label %.loopexit362, !noalias !24079

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit949.i: ; preds = %bb.kq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit947.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !24077
  call void @llvm.experimental.noalias.scope.decl(metadata !24561)
  call void @llvm.experimental.noalias.scope.decl(metadata !24562)
  call void @llvm.experimental.noalias.scope.decl(metadata !24563)
  %i.adb = load ptr, ptr %i.cc, align 8, !alias.scope !24564, !noalias !24077, !nonnull !5, !noundef !5
  %i.adc = atomicrmw sub ptr %i.adb, i64 1 release, align 8, !noalias !24565
  %i.add = icmp eq i64 %i.adc, 1
  br i1 %i.add, label %bb.kr, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit951.i

bb.kr:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit949.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cc) #29
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit951.i unwind label %.loopexit357, !noalias !24079

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit951.i: ; preds = %bb.kr, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit949.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !24077
  call void @llvm.experimental.noalias.scope.decl(metadata !24566)
  call void @llvm.experimental.noalias.scope.decl(metadata !24567)
  call void @llvm.experimental.noalias.scope.decl(metadata !24568)
  %i.ade = load ptr, ptr %i.cf, align 8, !alias.scope !24569, !noalias !24077, !nonnull !5, !noundef !5
  %i.adf = atomicrmw sub ptr %i.ade, i64 1 release, align 8, !noalias !24570
  %i.adg = icmp eq i64 %i.adf, 1
  br i1 %i.adg, label %bb.ks, label %bb.ky

bb.ks:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit951.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cf) #29
          to label %bb.ky unwind label %.loopexit353

.thread.i:                                        ; preds = %.thread967.loopexit.split-lp.i.loopexit, %.thread967.loopexit.split-lp.i.loopexit.split-lp, %.thread967.loopexit.i.loopexit, %.thread967.loopexit.i.loopexit.split-lp, %bb.bv, %bb.cg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit776.i, %bb.ca, %bb.bz
  %.pn742962.i = phi { ptr, i32 } [ %.pn740.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit776.i ], [ %i.nc, %bb.bz ], [ %i.nc, %bb.ca ], [ %.pn740.i, %bb.cg ], [ %lpad.loopexit.split-lp, %.thread967.loopexit.i.loopexit.split-lp ], [ %lpad.loopexit.i110, %bb.bv ], [ %lpad.loopexit, %.thread967.loopexit.i.loopexit ], [ %lpad.loopexit377, %.thread967.loopexit.split-lp.i.loopexit ], [ %lpad.loopexit.split-lp378, %.thread967.loopexit.split-lp.i.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bq) #27
          to label %.thread963.i unwind label %bb.iz, !noalias !24079

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit945.i: ; preds = %bb.ki, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit943.i, %bb.bh
  %.sroa.40.sroa.40.2 = phi i32 [ %.sroa.40.sroa.40.3, %bb.ki ], [ %.sroa.40.sroa.40.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit943.i ], [ %.sroa.40.sroa.40.0.extract.trunc235, %bb.bh ] ; 2 uses
  %.sroa.40.sroa.0.2 = phi i32 [ %.sroa.40.sroa.0.3, %bb.ki ], [ %.sroa.40.sroa.0.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit943.i ], [ %.sroa.40.sroa.0.0.extract.trunc204, %bb.bh ] ; 2 uses
  %.sroa.110.2 = phi i64 [ %.sroa.110.3, %bb.ki ], [ %.sroa.110.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit943.i ], [ %.sroa.110.16.copyload163, %bb.bh ] ; 2 uses
  %.sroa.79.2 = phi ptr [ %.sroa.79.3, %bb.ki ], [ %.sroa.79.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit943.i ], [ %.sroa.79.16.copyload133, %bb.bh ] ; 2 uses
  %.sroa.0121.2 = phi i64 [ %.sroa.0121.3, %bb.ki ], [ %.sroa.0121.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit943.i ], [ %i.lp, %bb.bh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !24077
  call void @llvm.experimental.noalias.scope.decl(metadata !24571)
  call void @llvm.experimental.noalias.scope.decl(metadata !24572)
  call void @llvm.experimental.noalias.scope.decl(metadata !24573)
  %i.adh = load ptr, ptr %i.cc, align 8, !alias.scope !24574, !noalias !24077, !nonnull !5, !noundef !5
  %i.adi = atomicrmw sub ptr %i.adh, i64 1 release, align 8, !noalias !24575
  %i.adj = icmp eq i64 %i.adi, 1
  br i1 %i.adj, label %bb.kt, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit954.i

bb.kt:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit945.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cc) #29
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit954.i unwind label %.loopexit.split-lp358, !noalias !24079

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit954.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit756.i, %bb.kt, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit945.i
  %.sroa.40.sroa.40.1 = phi i32 [ %.sroa.40.sroa.40.2, %bb.kt ], [ %.sroa.40.sroa.40.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit945.i ], [ %.sroa.40.sroa.40.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit756.i ] ; 2 uses
  %.sroa.40.sroa.0.1 = phi i32 [ %.sroa.40.sroa.0.2, %bb.kt ], [ %.sroa.40.sroa.0.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit945.i ], [ %.sroa.40.sroa.0.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit756.i ] ; 2 uses
  %.sroa.110.1 = phi i64 [ %.sroa.110.2, %bb.kt ], [ %.sroa.110.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit945.i ], [ %.sroa.110.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit756.i ] ; 2 uses
  %.sroa.79.1 = phi ptr [ %.sroa.79.2, %bb.kt ], [ %.sroa.79.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit945.i ], [ %.sroa.79.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit756.i ] ; 2 uses
  %.sroa.0121.1 = phi i64 [ %.sroa.0121.2, %bb.kt ], [ %.sroa.0121.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit945.i ], [ %.sroa.0121.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit756.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !24077
  call void @llvm.experimental.noalias.scope.decl(metadata !24576)
  call void @llvm.experimental.noalias.scope.decl(metadata !24577)
  call void @llvm.experimental.noalias.scope.decl(metadata !24578)
  %i.adk = load ptr, ptr %i.cf, align 8, !alias.scope !24579, !noalias !24077, !nonnull !5, !noundef !5
  %i.adl = atomicrmw sub ptr %i.adk, i64 1 release, align 8, !noalias !24580
  %i.adm = icmp eq i64 %i.adl, 1
  br i1 %i.adm, label %bb.ku, label %bb.kx

bb.ku:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit954.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cf) #29
          to label %bb.kx unwind label %.loopexit.split-lp

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit756.i: ; preds = %bb.bb, %bb.ba, %bb.av
  %.sroa.40.sroa.40.0.in.in.in = phi ptr [ %i.lf, %bb.bb ], [ %i.lf, %bb.ba ], [ %i.kz, %bb.av ]
  %.sroa.110.0 = phi i64 [ %.sroa.110.16.copyload162, %bb.bb ], [ %.sroa.110.16.copyload162, %bb.ba ], [ %.sroa.110.16.copyload161, %bb.av ]
  %.sroa.79.0 = phi ptr [ %.sroa.79.16.copyload132, %bb.bb ], [ %.sroa.79.16.copyload132, %bb.ba ], [ %.sroa.79.16.copyload131, %bb.av ]
  %.sroa.0121.0 = phi i64 [ %i.le, %bb.bb ], [ %i.le, %bb.ba ], [ %i.ky, %bb.av ]
  %.sroa.40.sroa.40.0.in.in = ptrtoint ptr %.sroa.40.sroa.40.0.in.in.in to i64 ; 2 uses
  %.sroa.40.sroa.0.0 = trunc i64 %.sroa.40.sroa.40.0.in.in to i32
  %.sroa.40.sroa.40.0.in = lshr i64 %.sroa.40.sroa.40.0.in.in, 32
  %.sroa.40.sroa.40.0 = trunc nuw i64 %.sroa.40.sroa.40.0.in to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !24077
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit954.i

bb.kv:                                            ; preds = %bb.al
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.6116.sroa.9.0.copyload, i64 noundef %i.kg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #26
          to label %bb.kw unwind label %.loopexit.split-lp

bb.kw:                                            ; preds = %bb.kv
  unreachable

bb.kx:                                            ; preds = %bb.ar, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit954.i, %bb.ku
  %.sroa.40.sroa.40.32.ph = phi i32 [ %.sroa.40.sroa.40.1, %bb.ku ], [ %.sroa.40.sroa.40.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit954.i ], [ %.sroa.40.sroa.40.0.extract.trunc, %bb.ar ]
  %.sroa.40.sroa.0.32.ph = phi i32 [ %.sroa.40.sroa.0.1, %bb.ku ], [ %.sroa.40.sroa.0.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit954.i ], [ %.sroa.40.sroa.0.0.extract.trunc, %bb.ar ]
  %.sroa.110.32.ph = phi i64 [ %.sroa.110.1, %bb.ku ], [ %.sroa.110.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit954.i ], [ %.sroa.110.16.copyload, %bb.ar ]
  %.sroa.79.32.ph = phi ptr [ %.sroa.79.1, %bb.ku ], [ %.sroa.79.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit954.i ], [ %.sroa.79.16.copyload, %bb.ar ]
  %.sroa.0121.32.ph = phi i64 [ %.sroa.0121.1, %bb.ku ], [ %.sroa.0121.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit954.i ], [ %i.ks, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !24077
  %.sroa.766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.766.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.114, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.114)
  store i64 %.sroa.0121.32.ph, ptr %0, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.40.sroa.0.32.ph, ptr %.sroa.463.0..sroa_idx, align 8
  %.sroa.463.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.40.sroa.40.32.ph, ptr %.sroa.463.0..sroa_idx.sroa_idx, align 4
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.79.32.ph, ptr %.sroa.564.0..sroa_idx, align 8
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.110.32.ph, ptr %.sroa.665.0..sroa_idx, align 8
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16segment_anything3sam7CropBoxENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cn)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16segment_anything3sam7CropBoxEEB1x_.exit90 unwind label %bb.am

bb.ky:                                            ; preds = %bb.ks, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit951.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !24077
  %.sroa.40.sroa.40.0.insert.ext = zext i32 %.sroa.40.8.copyload125200 to i64
  %.sroa.40.sroa.40.0.insert.shift = shl nuw i64 %.sroa.40.sroa.40.0.insert.ext, 32 ; 2 uses
  %.sroa.40.sroa.0.0.insert.ext = zext i32 %.sroa.40.8.copyload125199 to i64
  %.sroa.40.sroa.0.0.insert.insert = or disjoint i64 %.sroa.40.sroa.40.0.insert.shift, %.sroa.40.sroa.0.0.insert.ext
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.79.8.copyload129) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.114)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  %i.adn = icmp ult i64 %.sroa.110.8.copyload159, 288230376151711744
  call void @llvm.assume(i1 %i.adn)
  %i.ado = getelementptr inbounds nuw [32 x i8], ptr %.sroa.79.8.copyload129, i64 %.sroa.110.8.copyload159
  %i.adp = icmp sgt i64 %.sroa.40.sroa.40.0.insert.shift, -1
  call void @llvm.assume(i1 %i.adp)
  store ptr %.sroa.79.8.copyload129, ptr %i.cm, align 8
  store i64 %.sroa.40.sroa.0.0.insert.insert, ptr %i.kb, align 8
  store ptr %.sroa.79.8.copyload129, ptr %i.kc, align 8
  store ptr %i.ado, ptr %i.kd, align 8
  invoke void @_RNvXs0_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB7_3VecINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.cm)
          to label %bb.kz unwind label %.loopexit353
end_hunk_0
begin_hunk_1_@_RNvMsh_NtNtCs1dZk1kIfPhr_19candle_transformers6models7encodecNtB5_5Model6encode:bb.a
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit38

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.o, ptr %i.b, align 8
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor9transposejjECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i64 noundef 0, i64 noundef 1)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !25766
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.k, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit40

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #29
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit40 unwind label %bb.o

bb.l:                                             ; preds = %bb.i
  %i.u = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !25767
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit42

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #29
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit42 unwind label %bb.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit42: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !25768)
  call void @llvm.experimental.noalias.scope.decl(metadata !25769)
  call void @llvm.experimental.noalias.scope.decl(metadata !25770)
  %i.w = load ptr, ptr %i.d, align 8, !alias.scope !25771, !nonnull !5, !noundef !5
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !25771
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit38

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit42
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit38

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit38: ; preds = %bb.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit42, %bb.b, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.o:                                             ; preds = %bb.k, %bb.d
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit40, %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtBb_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueNtB1y_4LeafENtB1y_4EdgeE7next_kvCs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 626
  %i.g = load i16, ptr %i.f, align 2, !noundef !5
  %i.h = zext i16 %i.g to i64
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.022 = phi ptr [ %i.k, %bb.c ], [ %i.c, %bb.a ] ; 3 uses
  %.sroa.5.021 = phi i64 [ %i.o, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 352
  %i.k = load ptr, ptr %i.j, align 8, !noalias !25774, !noundef !5 ; 4 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.b, label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.l = zext i16 %i.q to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.8.0.lcssa = phi i64 [ %i.e, %bb.a ], [ %i.l, %._crit_edge.loopexit ]
  %.sroa.5.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.o, %._crit_edge.loopexit ]
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.k, %._crit_edge.loopexit ]
  store ptr %.sroa.0.0.lcssa, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.lcssa, ptr %.sroa.510.0..sroa_idx, align 8
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.022, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.021, ptr %i.n, align 8
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.o = add i64 %.sroa.5.021, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 624
  %i.q = load i16, ptr %i.p, align 8, !noalias !25774 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 626
  %i.s = load i16, ptr %i.r, align 2, !noundef !5
  %i.t = icmp ult i16 %i.q, %i.s
  br i1 %i.t, label %._crit_edge.loopexit, label %.lr.ph

bb.d:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtBb_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 3 uses
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, 1
  store ptr %i.c, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = icmp slt i64 %i.e, 11
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr i8, ptr %i.c, i64 640
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.e ; 2 uses
  %xtraiter = and i64 %i.b, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.c, %.prol.preheader
  %.sroa.017.0.in.prol = phi ptr [ %i.m, %.prol.preheader ], [ %i.l, %bb.c ]
  %.sroa.019.0.in.prol = phi i64 [ %.sroa.019.0.prol, %.prol.preheader ], [ %i.b, %bb.c ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.c ]
  %.sroa.019.0.prol = add i64 %.sroa.019.0.in.prol, -1 ; 2 uses
  %.sroa.017.0.prol = load ptr, ptr %.sroa.017.0.in.prol, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.017.0.prol, i64 632 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !25775

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.c
  %.sroa.017.0.lcssa.unr = phi ptr [ poison, %bb.c ], [ %.sroa.017.0.prol, %.prol.preheader ]
  %.sroa.017.0.in.unr = phi ptr [ %i.l, %bb.c ], [ %i.m, %.prol.preheader ]
  %.sroa.019.0.in.unr = phi i64 [ %i.b, %bb.c ], [ %.sroa.019.0.prol, %.prol.preheader ]
  %i.n = icmp ult i64 %i.b, 8
  br i1 %i.n, label %.unr-lcssa, label %.new

bb.d:                                             ; preds = %.unr-lcssa, %bb.b
  ret void

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in = phi ptr [ %i.w, %.new ], [ %.sroa.017.0.in.unr, %.prol.loopexit ]
  %.sroa.019.0.in = phi i64 [ %.sroa.019.0.7, %.new ], [ %.sroa.019.0.in.unr, %.prol.loopexit ]
  %.sroa.017.0 = load ptr, ptr %.sroa.017.0.in, align 8, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.017.0, i64 632
  %.sroa.017.0.1 = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.017.0.1, i64 632
  %.sroa.017.0.2 = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.017.0.2, i64 632
  %.sroa.017.0.3 = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.017.0.3, i64 632
  %.sroa.017.0.4 = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.017.0.4, i64 632
  %.sroa.017.0.5 = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.017.0.5, i64 632
  %.sroa.017.0.6 = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.017.0.6, i64 632
  %.sroa.019.0.7 = add i64 %.sroa.019.0.in, -8    ; 2 uses
  %.sroa.017.0.7 = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.v = icmp eq i64 %.sroa.019.0.7, 0
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.017.0.7, i64 632
  br i1 %i.v, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %.sroa.017.0.lcssa = phi ptr [ %.sroa.017.0.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.7, %.new ]
  store ptr %.sroa.017.0.lcssa, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit(i64 noundef range(i64 1, 9) %0, i64 noundef range(i64 1, 1201) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31
  %i.a = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1201) %1, i64 noundef range(i64 1, 9) %0) #31 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef %0, i64 noundef %1) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models7encodec18conv1d_weight_norm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %4, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 11 uses
  %i.d = alloca [80 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 9 uses
  %i.f = alloca [80 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 13 uses
  %i.h = alloca [80 x i8], align 8                ; 8 uses
  %i.i = alloca [8 x i8], align 8                 ; 11 uses
  %i.j = alloca [80 x i8], align 8                ; 9 uses
  %i.k = alloca [8 x i8], align 8                 ; 11 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [80 x i8], align 8                ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 12 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [80 x i8], align 8                ; 7 uses
  %i.q = alloca [8 x i8], align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %2, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 1, ptr %i.s, align 8
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE3getTjjjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %5, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @336, i64 noundef 8)
          to label %bb.c unwind label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit169, %bb.f, %bb.b
  %.pn166 = phi { ptr, i32 } [ %i.t, %bb.b ], [ %.pn164, %bb.f ], [ %.pn164, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit169 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %5) #27
          to label %bb.bc unwind label %bb.az

bb.b:                                             ; preds = %.invoke, %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.u = load i64, ptr %i.p, align 8, !range !9, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.u, -1
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.587.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.584.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i64 %i.u, ptr %0, align 8
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %.sroa.486.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit207

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store ptr %i.w, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %2, ptr %i.l, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %3, ptr %i.y, align 8
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE3getTjjjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %5, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @337, i64 noundef 8)
          to label %bb.h unwind label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit169: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit171, %bb.k, %bb.g
  %.pn164 = phi { ptr, i32 } [ %i.ac, %bb.g ], [ %.pn162, %bb.k ], [ %.pn162, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit171 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25902)
  call void @llvm.experimental.noalias.scope.decl(metadata !25903)
  call void @llvm.experimental.noalias.scope.decl(metadata !25904)
  %i.z = load ptr, ptr %i.q, align 8, !alias.scope !25905, !nonnull !5, !noundef !5
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !25905
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit169
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #29
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.az

bb.g:                                             ; preds = %bb.ba, %bb.ax, %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit169

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ad = load i64, ptr %i.m, align 8, !range !9, !noundef !5 ; 2 uses
  %.not152 = icmp eq i64 %i.ad, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  br i1 %.not152, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.596.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.593.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 %i.ad, ptr %0, align 8
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %.sroa.495.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit203

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store ptr %i.af, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor3sqr(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n)
          to label %bb.m unwind label %bb.l

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit171: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit179, %bb.ae, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit173, %bb.p, %bb.l
  %.pn162 = phi { ptr, i32 } [ %i.aj, %bb.l ], [ %.pn160, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit173 ], [ %.pn160, %bb.p ], [ %.pn, %bb.ae ], [ %.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit179 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25906)
  call void @llvm.experimental.noalias.scope.decl(metadata !25907)
  call void @llvm.experimental.noalias.scope.decl(metadata !25908)
  %i.ag = load ptr, ptr %i.n, align 8, !alias.scope !25909, !nonnull !5, !noundef !5
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !25909
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.k, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit169

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit171
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #29
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit169 unwind label %bb.az

bb.l:                                             ; preds = %bb.bb, %bb.ay, %bb.aw, %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit171

bb.m:                                             ; preds = %bb.j
  %i.ak = load i64, ptr %i.f, align 8, !range !9, !noundef !5 ; 2 uses
  %.not153 = icmp eq i64 %i.ak, -1
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  br i1 %.not153, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5105.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5102.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.ak, ptr %0, align 8
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %.sroa.4104.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit205

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %i.am, ptr %i.g, align 8
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor8sum_implTjjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, i64 noundef 1, i64 noundef 2, i1 noundef zeroext true)
          to label %bb.r unwind label %bb.q

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit173: ; preds = %bb.u, %bb.v, %bb.q
  %.pn160 = phi { ptr, i32 } [ %i.aq, %bb.q ], [ %i.au, %bb.v ], [ %i.au, %bb.u ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25910)
  call void @llvm.experimental.noalias.scope.decl(metadata !25911)
  call void @llvm.experimental.noalias.scope.decl(metadata !25912)
  %i.an = load ptr, ptr %i.g, align 8, !alias.scope !25913, !nonnull !5, !noundef !5
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !25913
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit171

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit173
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #29
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit171 unwind label %bb.az

bb.q:                                             ; preds = %bb.y, %bb.o
  %i.aq = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_RNvXsH_NtCsltEA4u8Pgfu_11candle_core6tensorRNtB5_6TensorINtNtNtCsf3Ta7LF998c_4core3ops5arith3MuldE3mul
declare void @_RNvXsH_NtCsltEA4u8Pgfu_11candle_core6tensorRNtB5_6TensorINtNtNtCsf3Ta7LF998c_4core3ops5arith3MuldE3mul(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), double noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor4gelu(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor8gelu_erf(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maximumnum.f32(float, float) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log10.f32(float) #17

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs3_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5ShapeINtNtCsf3Ta7LF998c_4core7convert4FromjE4from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsY_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape5dims2(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsltEA4u8Pgfu_11candle_core6layout6LayoutNtB6_5Debug3fmtCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB2_6Layout18contiguous_offsets(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs7fP0opQOXdx_5rayon4iter13from_par_iter16collect_extendedINtNtCsgCecv3eZDcN_5alloc3vec3VecmEINtNtB4_3map3MapINtNtB6_5range4IterjENCNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models7encodecNtB2k_14CodebookEncodeNtNtCsltEA4u8Pgfu_11candle_core9custom_op9CustomOp27cpu_fwd0EEB2o_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsE_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5ShapeINtNtCsf3Ta7LF998c_4core7convert4FromTjEE4from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCs3NyA1pFSltE_9candle_nn10activationNtB2_10ActivationNtCsltEA4u8Pgfu_11candle_core6Module7forward(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs11_NtNtCs9BYqgaV0uAw_14regex_automata4util10primitivesNtB6_9PatternIDNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor7reshapeTujEECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCsltEA4u8Pgfu_11candle_core4sortNtNtB7_6tensor6Tensor17arg_sort_last_dim(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor6gatherNtNtB8_5shape1DECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef range(i64 0, 3), i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor7to_vec2fECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor7to_vec2mECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemINtB5_3VecmENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemINtB5_3VecfENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor3newRSmECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor3newRSfECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor12index_selectjECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor9index_addjECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtCsf3Ta7LF998c_4core3ops5range5RangemEE9from_iterCs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtCs3NyA1pFSltE_9candle_nn3rnn4LSTMNtB4_3RNN3seqCs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtCs3NyA1pFSltE_9candle_nn3rnnNtB5_4LSTMNtB5_3RNN16states_to_tensor(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtCs2ZSzJGZRtAv_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs3_NtCs3NyA1pFSltE_9candle_nn4convNtB5_15ConvTranspose1dNtCsltEA4u8Pgfu_11candle_core6Module7forward(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCs3NyA1pFSltE_9candle_nn4convNtB5_6Conv1dNtCsltEA4u8Pgfu_11candle_core6Module7forward(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRyNtB6_5Debug3fmtCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCs2ZSzJGZRtAv_12tracing_core10subscriber10SubscriberNtNtCsf3Ta7LF998c_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecfEE9drop_slowCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCs3NyA1pFSltE_9candle_nn11var_builder10TensorDataINtNtB7_5boxed3BoxDNtBJ_13SimpleBackendEL_EEE9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6helium15RotaryEmbeddingE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtral15RotaryEmbeddingE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models9qwen2_moe15RotaryEmbeddingE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma44text15RotaryEmbeddingE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma44text27ProportionalRotaryEmbeddingE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcRSfE9drop_slowCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsr_NtCsltEA4u8Pgfu_11candle_core6tensorRNtB5_6TensorINtNtNtCsf3Ta7LF998c_4core3ops5arith3AdddE3add(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), double noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor3elu(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), double noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor3add(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4, i32 noundef) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBd_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB12_6marker4SendNtB1z_4SyncEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBc_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBc_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umin.v8i16(<8 x i16>, <8 x i16>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umin.v4i16(<4 x i16>, <4 x i16>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umax.v16i8(<16 x i8>, <16 x i8>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.umax.v4i8(<4 x i8>, <4 x i8>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umin.v16i8(<16 x i8>, <16 x i8>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.umin.v4i8(<4 x i8>, <4 x i8>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smax.v4i16(<4 x i16>, <4 x i16>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smin.v4i16(<4 x i16>, <4 x i16>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.smax.v2i64(<2 x i64>, <2 x i64>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.smin.v2i64(<2 x i64>, <2 x i64>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maximumnum.v4f32(<4 x float>, <4 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #17

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(errnomem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #20 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #21 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #26 = { noreturn }
attributes #27 = { cold }
attributes #28 = { cold noreturn nounwind }
attributes #29 = { noinline }
attributes #30 = { noinline noreturn }
attributes #31 = { nounwind }
attributes #32 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!4 = !{i64 0, i64 2}
!5 = !{}
!6 = !{i64 0, i64 -9223372036854775807}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{i8 0, i8 3}
!9 = !{i64 -1, i64 -9223372036854775764}
!10 = !{i8 -2, i8 9}
!11 = !{i64 0, i64 3}
!12 = !{i64 -1, i64 3}
!13 = !{i64 1, i64 0}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = !{i64 0, i64 -9223372036854775808}
!16 = !{!"llvm.loop.unswitch.partial.disable"}
!17 = !{!"branch_weights", i32 4001, i32 4000000}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = !{!"branch_weights", i32 4, i32 12}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = !{!"branch_weights", i32 8, i32 8}
!23 = !{!"branch_weights", i32 4, i32 28}
!24 = !{i8 0, i8 14}
!25 = !{i64 4}
!26 = !{i64 8}
!27 = !{i64 0, i64 16}
!28 = !{!"branch_weights", i32 1, i32 4001}
!29 = !{i8 0, i8 2}
!30 = !{i64 -1, i64 -9223372036854775808}
!31 = !{i64 0, i64 15}
!32 = distinct !{!32, !"_RNvYNvYeNtNtCsgCecv3eZDcN_5alloc6borrow7ToOwned8to_ownedINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTReEE9call_onceCs1dZk1kIfPhr_19candle_transformers"}
!33 = distinct !{!33, !32, !"_RNvYNvYeNtNtCsgCecv3eZDcN_5alloc6borrow7ToOwned8to_ownedINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTReEE9call_onceCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!34 = distinct !{!34, !"_RNvXs2_NtCsgCecv3eZDcN_5alloc3streNtNtB7_6borrow7ToOwned8to_owned"}
!35 = distinct !{!35, !34, !"_RNvXs2_NtCsgCecv3eZDcN_5alloc3streNtNtB7_6borrow7ToOwned8to_owned: argument 0"}
!36 = distinct !{!36, !32, !"_RNvYNvYeNtNtCsgCecv3eZDcN_5alloc6borrow7ToOwned8to_ownedINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTReEE9call_onceCs1dZk1kIfPhr_19candle_transformers: argument 1"}
!37 = distinct !{!37, !34, !"_RNvXs2_NtCsgCecv3eZDcN_5alloc3streNtNtB7_6borrow7ToOwned8to_owned: argument 1"}
!38 = distinct !{!38, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1dZk1kIfPhr_19candle_transformers"}
!39 = distinct !{!39, !38, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1dZk1kIfPhr_19candle_transformers: argument 1"}
!40 = distinct !{!40, !38, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!41 = !{!33}
!42 = !{!35}
!43 = !{!40, !39, !35, !37, !33, !36}
!44 = !{!40, !35, !33}
!45 = !{!35, !33}
!46 = !{!37, !36}
!47 = distinct !{!47, !"_RNvXsw_NtCsltEA4u8Pgfu_11candle_core5dtypedNtB5_9WithDType20to_cpu_storage_owned"}
!48 = distinct !{!48, !47, !"_RNvXsw_NtCsltEA4u8Pgfu_11candle_core5dtypedNtB5_9WithDType20to_cpu_storage_owned: argument 1"}
!49 = distinct !{!49, !47, !"_RNvXsw_NtCsltEA4u8Pgfu_11candle_core5dtypedNtB5_9WithDType20to_cpu_storage_owned: argument 0"}
!50 = distinct !{!50, !"_RNvXsw_NtCsltEA4u8Pgfu_11candle_core5dtypedNtB5_9WithDType20to_cpu_storage_owned"}
!51 = distinct !{!51, !50, !"_RNvXsw_NtCsltEA4u8Pgfu_11candle_core5dtypedNtB5_9WithDType20to_cpu_storage_owned: argument 1"}
!52 = distinct !{!52, !50, !"_RNvXsw_NtCsltEA4u8Pgfu_11candle_core5dtypedNtB5_9WithDType20to_cpu_storage_owned: argument 0"}
!53 = !{!48}
!54 = !{!49, !48}
!55 = !{!49}
!56 = !{!51}
!57 = !{!52, !51}
!58 = !{!52}
!59 = distinct !{!59, !"_RNvXsv_NtCsltEA4u8Pgfu_11candle_core5dtypefNtB5_9WithDType20to_cpu_storage_owned"}
!60 = distinct !{!60, !59, !"_RNvXsv_NtCsltEA4u8Pgfu_11candle_core5dtypefNtB5_9WithDType20to_cpu_storage_owned: argument 1"}
!61 = distinct !{!61, !59, !"_RNvXsv_NtCsltEA4u8Pgfu_11candle_core5dtypefNtB5_9WithDType20to_cpu_storage_owned: argument 0"}
!62 = distinct !{!62, !"_RNvXsv_NtCsltEA4u8Pgfu_11candle_core5dtypefNtB5_9WithDType20to_cpu_storage_owned"}
!63 = distinct !{!63, !62, !"_RNvXsv_NtCsltEA4u8Pgfu_11candle_core5dtypefNtB5_9WithDType20to_cpu_storage_owned: argument 1"}
!64 = distinct !{!64, !62, !"_RNvXsv_NtCsltEA4u8Pgfu_11candle_core5dtypefNtB5_9WithDType20to_cpu_storage_owned: argument 0"}
!65 = !{!60}
!66 = !{!61, !60}
!67 = !{!61}
!68 = !{!63}
!69 = !{!64, !63}
!70 = !{!64}
!71 = distinct !{!71, !"_RNvXso_NtCsltEA4u8Pgfu_11candle_core5dtypehNtB5_9WithDType20to_cpu_storage_owned"}
!72 = distinct !{!72, !71, !"_RNvXso_NtCsltEA4u8Pgfu_11candle_core5dtypehNtB5_9WithDType20to_cpu_storage_owned: argument 1"}
!73 = distinct !{!73, !71, !"_RNvXso_NtCsltEA4u8Pgfu_11candle_core5dtypehNtB5_9WithDType20to_cpu_storage_owned: argument 0"}
!74 = distinct !{!74, !"_RNvXso_NtCsltEA4u8Pgfu_11candle_core5dtypehNtB5_9WithDType20to_cpu_storage_owned"}
!75 = distinct !{!75, !74, !"_RNvXso_NtCsltEA4u8Pgfu_11candle_core5dtypehNtB5_9WithDType20to_cpu_storage_owned: argument 1"}
!76 = distinct !{!76, !74, !"_RNvXso_NtCsltEA4u8Pgfu_11candle_core5dtypehNtB5_9WithDType20to_cpu_storage_owned: argument 0"}
!77 = !{!72}
!78 = !{!73, !72}
!79 = !{!73}
!80 = !{!75}
!81 = !{!76, !75}
!82 = !{!76}
!83 = distinct !{!83, !"_RNvXsp_NtCsltEA4u8Pgfu_11candle_core5dtypemNtB5_9WithDType20to_cpu_storage_owned"}
!84 = distinct !{!84, !83, !"_RNvXsp_NtCsltEA4u8Pgfu_11candle_core5dtypemNtB5_9WithDType20to_cpu_storage_owned: argument 1"}
!85 = distinct !{!85, !83, !"_RNvXsp_NtCsltEA4u8Pgfu_11candle_core5dtypemNtB5_9WithDType20to_cpu_storage_owned: argument 0"}
!86 = distinct !{!86, !"_RNvXsp_NtCsltEA4u8Pgfu_11candle_core5dtypemNtB5_9WithDType20to_cpu_storage_owned"}
!87 = distinct !{!87, !86, !"_RNvXsp_NtCsltEA4u8Pgfu_11candle_core5dtypemNtB5_9WithDType20to_cpu_storage_owned: argument 1"}
!88 = distinct !{!88, !86, !"_RNvXsp_NtCsltEA4u8Pgfu_11candle_core5dtypemNtB5_9WithDType20to_cpu_storage_owned: argument 0"}
!89 = !{!84}
!90 = !{!85, !84}
!91 = !{!85}
!92 = !{!87}
!93 = !{!88, !87}
!94 = !{!88}
!95 = distinct !{!95, !"_RNvXss_NtCsltEA4u8Pgfu_11candle_core5dtypexNtB5_9WithDType20to_cpu_storage_owned"}
!96 = distinct !{!96, !95, !"_RNvXss_NtCsltEA4u8Pgfu_11candle_core5dtypexNtB5_9WithDType20to_cpu_storage_owned: argument 1"}
!97 = distinct !{!97, !95, !"_RNvXss_NtCsltEA4u8Pgfu_11candle_core5dtypexNtB5_9WithDType20to_cpu_storage_owned: argument 0"}
!98 = distinct !{!98, !"_RNvXss_NtCsltEA4u8Pgfu_11candle_core5dtypexNtB5_9WithDType20to_cpu_storage_owned"}
!99 = distinct !{!99, !98, !"_RNvXss_NtCsltEA4u8Pgfu_11candle_core5dtypexNtB5_9WithDType20to_cpu_storage_owned: argument 1"}
!100 = distinct !{!100, !98, !"_RNvXss_NtCsltEA4u8Pgfu_11candle_core5dtypexNtB5_9WithDType20to_cpu_storage_owned: argument 0"}
!101 = !{!96}
!102 = !{!97, !96}
!103 = !{!97}
!104 = !{!99}
!105 = !{!100, !99}
!106 = !{!100}
!107 = distinct !{!107, !"_RNvXNtCsltEA4u8Pgfu_11candle_core6devicedNtB2_7NdArray14to_cpu_storageCs1dZk1kIfPhr_19candle_transformers"}
!108 = distinct !{!108, !107, !"_RNvXNtCsltEA4u8Pgfu_11candle_core6devicedNtB2_7NdArray14to_cpu_storageCs1dZk1kIfPhr_19candle_transformers: argument 0"}
end_hunk_2
