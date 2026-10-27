Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.07?download=true
inline.NumInlined: 4383
inline.NumDeleted: 408
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models11mobilenetv419edge_residual_block0B7_:bb.a
  br i1 %i.bc, label %bb.aa, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit119

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit119 unwind label %bb.al

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit117: ; preds = %bb.x, %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !6631)
  call void @llvm.experimental.noalias.scope.decl(metadata !6632)
  call void @llvm.experimental.noalias.scope.decl(metadata !6633)
  %i.bd = load ptr, ptr %i.f, align 8, !alias.scope !6634, !nonnull !5, !noundef !5
  %i.be = atomicrmw add ptr %i.bd, i64 -1 release, align 8, !noalias !6634
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.ab, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit121

bb.ab:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit117
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit121 unwind label %bb.ad

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit119: ; preds = %bb.z, %bb.aa, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.ad ], [ %i.az, %bb.aa ], [ %i.az, %bb.z ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6635)
  call void @llvm.experimental.noalias.scope.decl(metadata !6636)
  call void @llvm.experimental.noalias.scope.decl(metadata !6637)
  %i.bg = load ptr, ptr %i.d, align 8, !alias.scope !6638, !nonnull !5, !noundef !5
  %i.bh = atomicrmw add ptr %i.bg, i64 -1 release, align 8, !noalias !6638
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %bb.ac, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit123

bb.ac:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit119
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit123 unwind label %bb.al

bb.ad:                                            ; preds = %bb.ab
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit119

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit121: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit117, %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !6639)
  call void @llvm.experimental.noalias.scope.decl(metadata !6640)
  call void @llvm.experimental.noalias.scope.decl(metadata !6641)
  %i.bk = load ptr, ptr %i.d, align 8, !alias.scope !6642, !nonnull !5, !noundef !5
  %i.bl = atomicrmw add ptr %i.bk, i64 -1 release, align 8, !noalias !6642
  %i.bm = icmp eq i64 %i.bl, 1
  br i1 %i.bm, label %bb.ae, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit125

bb.ae:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit121
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit125 unwind label %bb.ag

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit123: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit119, %bb.ac, %bb.ag
  %.pn97 = phi { ptr, i32 } [ %i.bq, %bb.ag ], [ %.pn, %bb.ac ], [ %.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit119 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6643)
  call void @llvm.experimental.noalias.scope.decl(metadata !6644)
  call void @llvm.experimental.noalias.scope.decl(metadata !6645)
  %i.bn = load ptr, ptr %i.b, align 8, !alias.scope !6646, !nonnull !5, !noundef !5
  %i.bo = atomicrmw add ptr %i.bn, i64 -1 release, align 8, !noalias !6646
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.af, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit127

bb.af:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit123
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit127 unwind label %bb.al

bb.ag:                                            ; preds = %bb.ae
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit123

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit125: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit121, %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !6647)
  call void @llvm.experimental.noalias.scope.decl(metadata !6648)
  call void @llvm.experimental.noalias.scope.decl(metadata !6649)
  %i.br = load ptr, ptr %i.b, align 8, !alias.scope !6650, !nonnull !5, !noundef !5
  %i.bs = atomicrmw add ptr %i.br, i64 -1 release, align 8, !noalias !6650
  %i.bt = icmp eq i64 %i.bs, 1
  br i1 %i.bt, label %bb.ah, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit129

bb.ah:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit125
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit129 unwind label %bb.aj

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit127: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit123, %bb.af, %bb.aj
  %.pn99 = phi { ptr, i32 } [ %i.bx, %bb.aj ], [ %.pn97, %bb.af ], [ %.pn97, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit123 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6651)
  call void @llvm.experimental.noalias.scope.decl(metadata !6652)
  call void @llvm.experimental.noalias.scope.decl(metadata !6653)
  %i.bu = load ptr, ptr %i.j, align 8, !alias.scope !6654, !nonnull !5, !noundef !5
  %i.bv = atomicrmw add ptr %i.bu, i64 -1 release, align 8, !noalias !6654
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.ai, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit

bb.ai:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit127
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit127

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit129: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit125, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.by = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.by, ptr %i.bz, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit136, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.al:                                            ; preds = %bb.ai, %bb.af, %bb.ac, %bb.aa, %bb.t, %bb.n, %bb.i, %bb.d
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit127, %bb.ai, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit109, %bb.d
  %.pn105.pn = phi { ptr, i32 } [ %.pn105, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit109 ], [ %.pn105, %bb.d ], [ %.pn99, %bb.ai ], [ %.pn99, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit127 ]
  resume { ptr, i32 } %.pn105.pn

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit115: ; preds = %bb.v, %bb.w, %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !6655)
  call void @llvm.experimental.noalias.scope.decl(metadata !6656)
  call void @llvm.experimental.noalias.scope.decl(metadata !6657)
  %i.cb = load ptr, ptr %i.f, align 8, !alias.scope !6658, !nonnull !5, !noundef !5
  %i.cc = atomicrmw add ptr %i.cb, i64 -1 release, align 8, !noalias !6658
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.am, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit133

bb.am:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit115
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit133 unwind label %bb.j

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit133: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit115, %bb.am, %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !6659)
  call void @llvm.experimental.noalias.scope.decl(metadata !6660)
  call void @llvm.experimental.noalias.scope.decl(metadata !6661)
  %i.ce = load ptr, ptr %i.d, align 8, !alias.scope !6662, !nonnull !5, !noundef !5
  %i.cf = atomicrmw add ptr %i.ce, i64 -1 release, align 8, !noalias !6662
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.an, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit135

bb.an:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit133
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit135 unwind label %bb.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit135: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit133, %bb.an, %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !6663)
  call void @llvm.experimental.noalias.scope.decl(metadata !6664)
  call void @llvm.experimental.noalias.scope.decl(metadata !6665)
  %i.ch = load ptr, ptr %i.b, align 8, !alias.scope !6666, !nonnull !5, !noundef !5
  %i.ci = atomicrmw add ptr %i.ch, i64 -1 release, align 8, !noalias !6666
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.ao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit136

bb.ao:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit135
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit136

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit136: ; preds = %bb.ao, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit135, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ak
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models11mobilenetv435universal_inverted_bottleneck_block0B7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 11 uses
  %i.e = alloca [80 x i8], align 8                ; 8 uses
  %i.f = alloca [80 x i8], align 8                ; 7 uses
  %i.g = alloca [80 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 11 uses
  %i.i = alloca [80 x i8], align 8                ; 8 uses
  %i.j = alloca [80 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 11 uses
  %i.l = alloca [80 x i8], align 8                ; 8 uses
  %i.m = alloca [80 x i8], align 8                ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 37 uses
  %i.o = alloca [8 x i8], align 8                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.p = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.q = atomicrmw add ptr %i.p, i64 1 monotonic, align 8
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.p, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.s = atomicrmw add ptr %i.p, i64 1 monotonic, align 8
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b
  store ptr %i.p, ptr %i.n, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !9, !noundef !5
  %.not = icmp eq i64 %i.v, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke void @_RNvXs_NtCs3NyA1pFSltE_9candle_nn4funcNtB4_4FuncNtCsltEA4u8Pgfu_11candle_core6Module7forward(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n)
          to label %bb.o unwind label %.thread231

bb.g:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvXs_NtCs3NyA1pFSltE_9candle_nn4funcNtB4_4FuncNtCsltEA4u8Pgfu_11candle_core6Module7forward(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n)
          to label %bb.h unwind label %.thread231

.thread231:                                       ; preds = %bb.w, %bb.bg, %bb.bk, %bb.ax, %bb.ab, %bb.al, %bb.ap, %bb.ac, %bb.aa, %bb.f, %bb.g
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.h:                                             ; preds = %bb.g
  %i.y = load i64, ptr %i.m, align 8, !range !9, !noundef !5 ; 2 uses
  %.not172 = icmp eq i64 %i.y, -1
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  br i1 %.not172, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.598.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.595.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 %i.y, ptr %0, align 8
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %.sroa.497.0..sroa_idx, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !6781)
  call void @llvm.experimental.noalias.scope.decl(metadata !6782)
  call void @llvm.experimental.noalias.scope.decl(metadata !6783)
  %i.ab = load ptr, ptr %i.n, align 8, !alias.scope !6784, !nonnull !5, !noundef !5
  %i.ac = atomicrmw add ptr %i.ab, i64 -1 release, align 8, !noalias !6784
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.k, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  store ptr %i.aa, ptr %i.n, align 8
  br label %.thread

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.j, %bb.k
  store ptr %i.aa, ptr %i.n, align 8
  br label %bb.f

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit197, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit215, %bb.as, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit205, %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6785)
  call void @llvm.experimental.noalias.scope.decl(metadata !6786)
  call void @llvm.experimental.noalias.scope.decl(metadata !6787)
  %i.af = load ptr, ptr %i.n, align 8, !alias.scope !6788, !nonnull !5, !noundef !5
  %i.ag = atomicrmw add ptr %i.af, i64 -1 release, align 8, !noalias !6788
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit193

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit193 unwind label %bb.bq

bb.o:                                             ; preds = %bb.f
  %i.ai = load i64, ptr %i.j, align 8, !range !9, !noundef !5 ; 2 uses
  %.not173 = icmp eq i64 %i.ai, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  br i1 %.not173, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.5104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5107.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5104.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 %i.ai, ptr %0, align 8
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %.sroa.4106.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit197

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store ptr %i.ak, ptr %i.k, align 8
  invoke void @_RNvXNtCs3NyA1pFSltE_9candle_nn10activationNtB2_10ActivationNtCsltEA4u8Pgfu_11candle_core6Module7forward(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k)
          to label %bb.u unwind label %bb.t

bb.r:                                             ; preds = %bb.z, %bb.t
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.z ], [ %i.ao, %bb.t ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6789)
  call void @llvm.experimental.noalias.scope.decl(metadata !6790)
  call void @llvm.experimental.noalias.scope.decl(metadata !6791)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !6792, !nonnull !5, !noundef !5
  %i.am = atomicrmw add ptr %i.al, i64 -1 release, align 8, !noalias !6792
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #26
          to label %.thread unwind label %bb.aq

bb.t:                                             ; preds = %bb.q
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.u:                                             ; preds = %bb.q
  %i.ap = load i64, ptr %i.l, align 8, !range !9, !noundef !5 ; 2 uses
  %.not174 = icmp eq i64 %i.ap, -1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  br i1 %.not174, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5116.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5113.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.ap, ptr %0, align 8
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %.sroa.4115.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !6793)
  call void @llvm.experimental.noalias.scope.decl(metadata !6794)
  call void @llvm.experimental.noalias.scope.decl(metadata !6795)
  %i.as = load ptr, ptr %i.k, align 8, !alias.scope !6796, !nonnull !5, !noundef !5
  %i.at = atomicrmw add ptr %i.as, i64 -1 release, align 8, !noalias !6796
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.w, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit197

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit197 unwind label %.thread231

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !6797)
  call void @llvm.experimental.noalias.scope.decl(metadata !6798)
  call void @llvm.experimental.noalias.scope.decl(metadata !6799)
  %i.av = load ptr, ptr %i.n, align 8, !alias.scope !6800, !nonnull !5, !noundef !5
  %i.aw = atomicrmw add ptr %i.av, i64 -1 release, align 8, !noalias !6800
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.y, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit199

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit199 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ay = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ar, ptr %i.n, align 8
  br label %bb.r

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit199: ; preds = %bb.x, %bb.y
  store ptr %i.ar, ptr %i.n, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !6801)
end_hunk_0
begin_hunk_1_@_RNCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models11mobilenetv435universal_inverted_bottleneck_block0B7_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !6822)
  call void @llvm.experimental.noalias.scope.decl(metadata !6823)
  %i.ce = load ptr, ptr %i.n, align 8, !alias.scope !6824, !nonnull !5, !noundef !5
  %i.cf = atomicrmw add ptr %i.ce, i64 -1 release, align 8, !noalias !6824
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.au, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit211

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit211 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ch = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cd, ptr %i.n, align 8
  br label %.thread

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit211: ; preds = %bb.at, %bb.au
  store ptr %i.cd, ptr %i.n, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.cj = load i64, ptr %i.ci, align 8, !range !9, !noundef !5
  %.not182 = icmp eq i64 %i.cj, -1
  br i1 %.not182, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit219, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit211
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.cl = load i8, ptr %i.ck, align 8, !range !23, !noundef !5
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.bn, label %bb.bl

bb.ax:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit211
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %i.cp, align 8
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor7reshapeTjujjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cn, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %bb.ay unwind label %.thread231

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cq = load i64, ptr %i.c, align 8, !range !9, !noundef !5 ; 2 uses
  %.not183 = icmp eq i64 %i.cq, -1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8            ; 2 uses
  br i1 %.not183, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.sroa.5149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5152.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5149.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.cq, ptr %0, align 8
  %.sroa.4151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cs, ptr %.sroa.4151.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit215

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.cs, ptr %i.d, align 8
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor13broadcast_mul(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %bb.be unwind label %bb.bd

bb.bb:                                            ; preds = %bb.bj, %bb.bd
  %.pn185 = phi { ptr, i32 } [ %i.dg, %bb.bj ], [ %i.cw, %bb.bd ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6825)
  call void @llvm.experimental.noalias.scope.decl(metadata !6826)
  call void @llvm.experimental.noalias.scope.decl(metadata !6827)
  %i.ct = load ptr, ptr %i.d, align 8, !alias.scope !6828, !nonnull !5, !noundef !5
  %i.cu = atomicrmw add ptr %i.ct, i64 -1 release, align 8, !noalias !6828
  %i.cv = icmp eq i64 %i.cu, 1
  br i1 %i.cv, label %bb.bc, label %.thread

bb.bc:                                            ; preds = %bb.bb
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #26
          to label %.thread unwind label %bb.aq

bb.bd:                                            ; preds = %bb.ba
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.be:                                            ; preds = %bb.ba
  %i.cx = load i64, ptr %i.e, align 8, !range !9, !noundef !5 ; 2 uses
  %.not184 = icmp eq i64 %i.cx, -1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8            ; 3 uses
  br i1 %.not184, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.sroa.5158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5161.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5158.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.cx, ptr %0, align 8
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cz, ptr %.sroa.4160.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !6829)
  call void @llvm.experimental.noalias.scope.decl(metadata !6830)
  call void @llvm.experimental.noalias.scope.decl(metadata !6831)
  %i.da = load ptr, ptr %i.d, align 8, !alias.scope !6832, !nonnull !5, !noundef !5
  %i.db = atomicrmw add ptr %i.da, i64 -1 release, align 8, !noalias !6832
  %i.dc = icmp eq i64 %i.db, 1
  br i1 %i.dc, label %bb.bg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit215

bb.bg:                                            ; preds = %bb.bf
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit215 unwind label %.thread231

bb.bh:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !6833)
  call void @llvm.experimental.noalias.scope.decl(metadata !6834)
  call void @llvm.experimental.noalias.scope.decl(metadata !6835)
  %i.dd = load ptr, ptr %i.n, align 8, !alias.scope !6836, !nonnull !5, !noundef !5
  %i.de = atomicrmw add ptr %i.dd, i64 -1 release, align 8, !noalias !6836
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.bi, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit217

bb.bi:                                            ; preds = %bb.bh
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit217 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dg = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cz, ptr %i.n, align 8
  br label %bb.bb

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit217: ; preds = %bb.bh, %bb.bi
  store ptr %i.cz, ptr %i.n, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !6837)
  call void @llvm.experimental.noalias.scope.decl(metadata !6838)
  call void @llvm.experimental.noalias.scope.decl(metadata !6839)
  %i.dh = load ptr, ptr %i.d, align 8, !alias.scope !6840, !nonnull !5, !noundef !5
  %i.di = atomicrmw add ptr %i.dh, i64 -1 release, align 8, !noalias !6840
  %i.dj = icmp eq i64 %i.di, 1
  br i1 %i.dj, label %bb.bk, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit219

bb.bk:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit217
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit219 unwind label %.thread231

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit219: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit217, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aw

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit215: ; preds = %bb.bf, %bb.bg, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m

bb.bl:                                            ; preds = %bb.aw
  %i.dk = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dk, ptr %i.dl, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !6841)
  call void @llvm.experimental.noalias.scope.decl(metadata !6842)
  call void @llvm.experimental.noalias.scope.decl(metadata !6843)
  %i.dm = load ptr, ptr %i.o, align 8, !alias.scope !6844, !nonnull !5, !noundef !5
  %i.dn = atomicrmw add ptr %i.dm, i64 -1 release, align 8, !noalias !6844
  %i.do = icmp eq i64 %i.dn, 1
  br i1 %i.do, label %bb.bm, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit221

bb.bm:                                            ; preds = %bb.bl
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #26
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit221

bb.bn:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.dp = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.dq = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  call void @_RNvXsk_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorNtNtNtCsf3Ta7LF998c_4core3ops5arith3Add3addCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noundef nonnull %i.dp, ptr noundef nonnull %i.dq)
  %i.dr = load i64, ptr %i.a, align 8, !range !9, !noundef !5 ; 2 uses
  %.not187 = icmp eq i64 %i.dr, -1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8            ; 2 uses
  br i1 %.not187, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.sroa.5167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5170.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5167.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.dr, ptr %0, align 8
  %.sroa.4169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dt, ptr %.sroa.4169.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit221

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dt, ptr %i.du, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit221

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit221: ; preds = %bb.bp, %bb.bl, %bb.bm, %bb.bo, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit193, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit197: ; preds = %bb.v, %bb.w, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.m

bb.bq:                                            ; preds = %bb.n
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit193: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !6845)
  call void @llvm.experimental.noalias.scope.decl(metadata !6846)
  call void @llvm.experimental.noalias.scope.decl(metadata !6847)
  %i.dw = load ptr, ptr %i.o, align 8, !alias.scope !6848, !nonnull !5, !noundef !5
  %i.dx = atomicrmw add ptr %i.dw, i64 -1 release, align 8, !noalias !6848
  %i.dy = icmp eq i64 %i.dx, 1
  br i1 %i.dy, label %bb.br, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit221

bb.br:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit193
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #26
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit221

.thread:                                          ; preds = %bb.bb, %bb.bc, %bb.ag, %bb.ah, %bb.r, %bb.s, %bb.l, %bb.av, %.thread231
  %.pn188229 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread231 ], [ %i.ae, %bb.l ], [ %.pn179, %bb.ag ], [ %.pn, %bb.r ], [ %i.ch, %bb.av ], [ %.pn, %bb.s ], [ %.pn179, %bb.ah ], [ %.pn185, %bb.bc ], [ %.pn185, %bb.bb ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6849)
  call void @llvm.experimental.noalias.scope.decl(metadata !6850)
  call void @llvm.experimental.noalias.scope.decl(metadata !6851)
  %i.dz = load ptr, ptr %i.n, align 8, !alias.scope !6852, !nonnull !5, !noundef !5
  %i.ea = atomicrmw add ptr %i.dz, i64 -1 release, align 8, !noalias !6852
  %i.eb = icmp eq i64 %i.ea, 1
  br i1 %i.eb, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.thread
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #26
          to label %bb.bt unwind label %bb.aq

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit225: ; preds = %bb.bt, %bb.bu
  resume { ptr, i32 } %.pn190.ph

bb.bt:                                            ; preds = %bb.bq, %bb.bs, %.thread
  %.pn190.ph = phi { ptr, i32 } [ %i.dv, %bb.bq ], [ %.pn188229, %bb.bs ], [ %.pn188229, %.thread ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6853)
  call void @llvm.experimental.noalias.scope.decl(metadata !6854)
  call void @llvm.experimental.noalias.scope.decl(metadata !6855)
  %i.ec = load ptr, ptr %i.o, align 8, !alias.scope !6856, !nonnull !5, !noundef !5
  %i.ed = atomicrmw add ptr %i.ec, i64 -1 release, align 8, !noalias !6856
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.bu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit225

bb.bu:                                            ; preds = %bb.bt
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit225 unwind label %bb.aq
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models11mobilenetv49mqa_block0B7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 13 uses
  %i.d = alloca [80 x i8], align 8                ; 10 uses
  %i.e = alloca [8 x i8], align 8                 ; 8 uses
  %i.f = alloca [80 x i8], align 8                ; 11 uses
  %i.g = alloca [8 x i8], align 8                 ; 7 uses
  %i.h = alloca [80 x i8], align 8                ; 9 uses
  %i.i = alloca [80 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [80 x i8], align 8                ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 11 uses
  %i.m = alloca [80 x i8], align 8                ; 8 uses
  %i.n = alloca [80 x i8], align 8                ; 7 uses
  %i.o = alloca [8 x i8], align 8                 ; 14 uses
  %i.p = alloca [80 x i8], align 8                ; 7 uses
  %i.q = alloca [8 x i8], align 8                 ; 11 uses
  %i.r = alloca [80 x i8], align 8                ; 7 uses
  %i.s = alloca [8 x i8], align 8                 ; 11 uses
  %i.t = alloca [80 x i8], align 8                ; 7 uses
  %i.u = alloca [8 x i8], align 8                 ; 11 uses
  %i.v = alloca [80 x i8], align 8                ; 7 uses
  %i.w = alloca [8 x i8], align 8                 ; 11 uses
  %i.x = alloca [80 x i8], align 8                ; 8 uses
  %i.y = alloca [8 x i8], align 8                 ; 11 uses
  %i.z = alloca [80 x i8], align 8                ; 7 uses
  %i.aa = alloca [8 x i8], align 8                ; 11 uses
  %i.ab = alloca [80 x i8], align 8               ; 7 uses
  %i.ac = alloca [8 x i8], align 8                ; 11 uses
  %i.ad = alloca [80 x i8], align 8               ; 7 uses
  %i.ae = alloca [80 x i8], align 8               ; 7 uses
  %i.af = alloca [8 x i8], align 8                ; 21 uses
  %i.ag = alloca [80 x i8], align 8               ; 7 uses
  %i.ah = alloca [8 x i8], align 8                ; 11 uses
  %i.ai = alloca [80 x i8], align 8               ; 7 uses
  %i.aj = alloca [8 x i8], align 8                ; 11 uses
  %i.ak = alloca [80 x i8], align 8               ; 7 uses
  %i.al = alloca [8 x i8], align 8                ; 11 uses
  %i.am = alloca [80 x i8], align 8               ; 8 uses
  %i.an = alloca [8 x i8], align 8                ; 16 uses
  %i.ao = alloca [80 x i8], align 8               ; 7 uses
  %i.ap = alloca [8 x i8], align 8                ; 11 uses
  %.sroa.24 = alloca [40 x i8], align 8           ; 8 uses
  %i.aq = alloca [80 x i8], align 8               ; 7 uses
  %i.ar = alloca [8 x i8], align 8                ; 13 uses
  %i.as = alloca [80 x i8], align 8               ; 7 uses
  %i.at = alloca [8 x i8], align 8                ; 18 uses
  %i.au = alloca [8 x i8], align 8                ; 11 uses
  %i.av = alloca [80 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @_RNvMs15_NtCsltEA4u8Pgfu_11candle_core5shapeNtNtB8_6tensor6Tensor5dims4(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
  %i.aw = load i64, ptr %i.av, align 8, !range !9, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.aw, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.6241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.8243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %.sroa.8249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8249.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8243.0..sroa_idx, i64 40, i1 false)
  %.sroa.4245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load <2 x i64>, ptr %.sroa.4239.0..sroa_idx, align 8
  %.sroa.6247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load <2 x i64>, ptr %.sroa.6241.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  store i64 %i.aw, ptr %0, align 8
  store <2 x i64> %i.ax, ptr %.sroa.4245.0..sroa_idx, align 8
  store <2 x i64> %i.ay, ptr %.sroa.6247.0..sroa_idx, align 8
  br label %bb.ft

bb.c:                                             ; preds = %bb.a
  %.sroa.5230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.5230.0.copyload = load i64, ptr %.sroa.5230.0..sroa_idx, align 8
  %.sroa.6231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %.sroa.6231.0.copyload = load i64, ptr %.sroa.6231.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.az = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ba = atomicrmw add ptr %i.az, i64 1 monotonic, align 8
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.az, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 400
  invoke void @_RNvXs1_NtCs3NyA1pFSltE_9candle_nn10batch_normNtB5_9BatchNormNtCsltEA4u8Pgfu_11candle_core7ModuleT9forward_t(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext false)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit507, %bb.j, %bb.f
  %.sroa.0224.0 = phi i8 [ %.sroa.0224.1, %bb.f ], [ %.sroa.0224.2, %bb.j ], [ %.sroa.0224.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit507 ]
  %.pn496 = phi { ptr, i32 } [ %i.be, %bb.f ], [ %.pn494, %bb.j ], [ %.pn494, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit507 ]
  %i.bd = trunc nuw i8 %.sroa.0224.0 to i1
  br i1 %i.bd, label %bb.gi, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit615

bb.f:                                             ; preds = %bb.gf, %bb.fq, %bb.n, %bb.d
  %.sroa.0224.1 = phi i8 [ 1, %bb.n ], [ %.sroa.0224.42, %bb.gf ], [ %.sroa.0224.28, %bb.fq ], [ 1, %bb.d ]
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit

bb.g:                                             ; preds = %bb.d
  %i.bf = load i64, ptr %i.as, align 8, !range !9, !noundef !5 ; 2 uses
  %.not440 = icmp eq i64 %i.bf, -1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  br i1 %.not440, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.5255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.5258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5258.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5255.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  store i64 %i.bf, ptr %0, align 8
  %.sroa.4257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %.sroa.4257.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit502

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  store ptr %i.bh, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 456
  invoke void @_RNvXs6_NtCs3NyA1pFSltE_9candle_nn4convNtB5_6Conv2dNtCsltEA4u8Pgfu_11candle_core6Module7forward(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.at)
          to label %bb.l unwind label %bb.k

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit507: ; preds = %.body, %bb.am, %bb.k
  %.sroa.0224.2 = phi i8 [ %.sroa.0224.3, %bb.k ], [ %.sroa.0224.4, %bb.am ], [ %.sroa.0224.4, %.body ] ; 2 uses
  %.pn494 = phi { ptr, i32 } [ %i.bm, %bb.k ], [ %.pn492, %bb.am ], [ %.pn492, %.body ] ; 2 uses
end_hunk_1
