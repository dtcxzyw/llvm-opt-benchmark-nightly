Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.15?download=true
inline.NumInlined: 3310
inline.NumDeleted: 425
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3vgg15fully_connected0B7_:bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit285 unwind label %bb.ax

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit285: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit270, %bb.bx, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16) %i.i)
          to label %bb.by unwind label %bb.as

bb.by:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit285, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !7326)
  call void @llvm.experimental.noalias.scope.decl(metadata !7327)
  call void @llvm.experimental.noalias.scope.decl(metadata !7328)
  %i.fh = load ptr, ptr %i.o, align 8, !alias.scope !7329, !nonnull !4, !noundef !4
  %i.fi = atomicrmw add ptr %i.fh, i64 -1 release, align 8, !noalias !7329
  %i.fj = icmp eq i64 %i.fi, 1
  br i1 %i.fj, label %bb.bz, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit287

bb.bz:                                            ; preds = %bb.by
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit287 unwind label %bb.y

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit287: ; preds = %bb.by, %bb.bz, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !7330)
  call void @llvm.experimental.noalias.scope.decl(metadata !7331)
  call void @llvm.experimental.noalias.scope.decl(metadata !7332)
  %i.fk = load ptr, ptr %i.u, align 8, !alias.scope !7333, !nonnull !4, !noundef !4
  %i.fl = atomicrmw add ptr %i.fk, i64 -1 release, align 8, !noalias !7333
  %i.fm = icmp eq i64 %i.fl, 1
  br i1 %i.fm, label %bb.ca, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit289

bb.ca:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit287
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit289 unwind label %bb.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit256: ; preds = %bb.ak, %bb.al, %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !7334)
  call void @llvm.experimental.noalias.scope.decl(metadata !7335)
  call void @llvm.experimental.noalias.scope.decl(metadata !7336)
  %i.fn = load ptr, ptr %i.k, align 8, !alias.scope !7337, !nonnull !4, !noundef !4
  %i.fo = atomicrmw add ptr %i.fn, i64 -1 release, align 8, !noalias !7337
  %i.fp = icmp eq i64 %i.fo, 1
  br i1 %i.fp, label %bb.cb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit291

bb.cb:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit256
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit291 unwind label %bb.y

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit291: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit256, %bb.cb, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit287

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit289: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit287, %bb.ca, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.experimental.noalias.scope.decl(metadata !7338)
  call void @llvm.experimental.noalias.scope.decl(metadata !7339)
  call void @llvm.experimental.noalias.scope.decl(metadata !7340)
  %i.fq = load ptr, ptr %i.w, align 8, !alias.scope !7341, !nonnull !4, !noundef !4
  %i.fr = atomicrmw add ptr %i.fq, i64 -1 release, align 8, !noalias !7341
  %i.fs = icmp eq i64 %i.fr, 1
  br i1 %i.fs, label %bb.cc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit292

bb.cc:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit289
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #26
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit292

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit242: ; preds = %bb.q, %bb.r, %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !7342)
  call void @llvm.experimental.noalias.scope.decl(metadata !7343)
  call void @llvm.experimental.noalias.scope.decl(metadata !7344)
  %i.ft = load ptr, ptr %i.q, align 8, !alias.scope !7345, !nonnull !4, !noundef !4
  %i.fu = atomicrmw add ptr %i.ft, i64 -1 release, align 8, !noalias !7345
  %i.fv = icmp eq i64 %i.fu, 1
  br i1 %i.fv, label %bb.cd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit294

bb.cd:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit242
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit294 unwind label %bb.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit294: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit242, %bb.cd, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit289

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit238, %bb.d
  resume { ptr, i32 } %.pn235
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3vgg12conv2d_blocks_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorbEE9call_once6vtableBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2, i1 zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3vgg12conv2d_blocks_0B7_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 zeroext poison)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3vgg12conv2d_blocks_0EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #24
          to label %common.resume.i unwind label %bb.f, !noalias !7349

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RNvYNCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3vgg12conv2d_blocks_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorbEE9call_onceBa_.exit unwind label %bb.d, !noalias !7349

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume.i unwind label %bb.e, !noalias !7349

bb.e:                                             ; preds = %bb.d
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !7349
  unreachable

common.resume.i:                                  ; preds = %bb.d, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.b, %bb.d ], [ %i.a, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !7349
  unreachable

_RNvYNCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3vgg12conv2d_blocks_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorbEE9call_onceBa_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !7349
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3vgg15fully_connected0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorbEE9call_once6vtableBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3vgg15fully_connected0B7_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext %3)
          to label %_RNvYNCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3vgg15fully_connected0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorbEE9call_onceBa_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3vgg15fully_connected0EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %1) #24
          to label %bb.d unwind label %bb.c, !noalias !7352

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !7352
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RNvYNCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3vgg15fully_connected0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorbEE9call_onceBa_.exit: ; preds = %bb.a
  tail call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3vgg15fully_connected0EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %1), !noalias !7352
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB2_6Layout20outer_stride_for_dim(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 4 uses
  %i.i = icmp ult i64 %1, %i.d
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %.sroa.01.0.lcssa = phi i64 [ 1, %bb.a ], [ %i.ab, %bb.i ]
  %i.j = icmp eq i64 %1, 0
  br i1 %i.j, label %.loopexit, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %.sroa.01.041 = phi i64 [ %i.ab, %bb.i ], [ 1, %bb.a ] ; 2 uses
  %.sroa.016.040 = phi i64 [ %i.k, %bb.i ], [ %i.d, %bb.a ]
  %i.k = add i64 %.sroa.016.040, -1               ; 8 uses
  %i.l = icmp ult i64 %i.k, %i.h
  br i1 %i.l, label %bb.f, label %bb.g

bb.b:                                             ; preds = %._crit_edge
  %i.m = add i64 %1, -1                           ; 7 uses
  %i.n = icmp ult i64 %i.m, %i.h
  br i1 %i.n, label %.split, label %2

.split:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.m
  %i.p = load i64, ptr %i.o, align 8, !noundef !4 ; 5 uses
  %.first_iter = icmp ult i64 %i.m, %i.d
  %.not65 = icmp eq i64 %i.m, 0                   ; 2 uses
  br i1 %.first_iter, label %bb.c, label %.split.split

bb.c:                                             ; preds = %.split
  br i1 %.not65, label %.loopexit, label %bb.d

.lr.ph68:                                         ; preds = %bb.d
  %.not.us = icmp eq i64 %i.q, 0
  br i1 %.not.us, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph68
  %.sroa.06.0.us68 = phi i64 [ %i.q, %.lr.ph68 ], [ %i.m, %bb.c ] ; 2 uses
  %.sroa.012.0.us67 = phi i64 [ %i.t, %.lr.ph68 ], [ %i.p, %bb.c ]
  %i.q = add i64 %.sroa.06.0.us68, -1             ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.06.0.us68
  %i.s = load i64, ptr %i.r, align 8, !noundef !4
  %i.t = mul i64 %i.s, %.sroa.012.0.us67          ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.q
  %i.v = load i64, ptr %i.u, align 8, !noundef !4
  %.not29 = icmp eq i64 %i.v, %i.t
  br i1 %.not29, label %.lr.ph68, label %.loopexit

.split.split:                                     ; preds = %.split
  br i1 %.not65, label %.loopexit, label %bb.e

2:                                                ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #28
  unreachable

bb.e:                                             ; preds = %.split.split
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #28
  unreachable

.loopexit:                                        ; preds = %bb.f, %.lr.ph68, %bb.d, %bb.c, %.split.split, %._crit_edge
  %.sroa.5.0 = phi i64 [ %i.p, %bb.c ], [ %.sroa.01.0.lcssa, %._crit_edge ], [ %i.p, %.split.split ], [ %i.p, %.lr.ph68 ], [ %i.p, %bb.d ], [ undef, %bb.f ]
  %.sroa.0.0 = phi i64 [ 1, %bb.c ], [ 1, %._crit_edge ], [ 1, %.split.split ], [ 0, %bb.d ], [ 1, %.lr.ph68 ], [ 0, %bb.f ]
  %3 = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %4 = insertvalue { i64, i64 } %3, i64 %.sroa.5.0, 1
  ret { i64, i64 } %4

bb.f:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.k
  %i.x = load i64, ptr %i.w, align 8, !noundef !4
  %.not30 = icmp eq i64 %i.x, %.sroa.01.041
  br i1 %.not30, label %bb.h, label %.loopexit

bb.g:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = icmp ult i64 %i.k, %i.d
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.k
  %i.aa = load i64, ptr %i.z, align 8, !noundef !4
  %i.ab = mul i64 %i.aa, %.sroa.01.041            ; 2 uses
  %i.ac = icmp ult i64 %1, %i.k
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsltEA4u8Pgfu_11candle_core6nditerINtB2_6NdIterKj2_E3newCs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([312 x i8]) align 8 captures(none) dereferenceable(312) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 10 uses
  %i.d = alloca [128 x i8], align 8               ; 10 uses
  %i.e = alloca [64 x i8], align 8                ; 18 uses
  %i.f = load ptr, ptr %1, align 8, !nonnull !4, !align !11, !noundef !4 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.l = icmp eq i64 %i.j, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, i8 0, i64 128, i1 false)
  br i1 %i.l, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a
  store i64 1, ptr %i.e, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre135 = load ptr, ptr %.phi.trans.insert, align 8
  br label %.preheader81.preheader

bb.b:                                             ; preds = %bb.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.m = add nsw i64 %.sroa.0.1, -1
  br label %.preheader81.preheader

bb.c:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.h, align 8, !noundef !4
  store i64 %i.n, ptr %i.e, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.p = load i64, ptr %i.o, align 8, !noundef !4 ; 3 uses
  %.not66 = icmp eq i64 %i.p, 0
  br i1 %.not66, label %bb.t, label %bb.u

bb.d:                                             ; preds = %.loopexit, %bb.v
  %i.q = phi i64 [ %.pr, %.loopexit ], [ 1, %bb.v ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.2, %.loopexit ], [ 1, %bb.v ] ; 9 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %bb.e, label %bb.f, !prof !7365

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %.sroa.06.sroa.2.0..sroa_idx, align 8, !noundef !4 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.t = call fastcc { i64, ptr } @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterjEEENtNtNtB8_6traits8iterator8Iterator3nthCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c, i64 noundef %i.q) #25
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.u = add i64 %i.r, -1
  store i64 %i.u, ptr %.sroa.06.sroa.2.0..sroa_idx, align 8
  %i.v = load ptr, ptr %i.c, align 8, !alias.scope !7366, !nonnull !4, !noundef !4 ; 3 uses
  %i.w = load ptr, ptr %.sroa.06.sroa.0.sroa.2.0..sroa_idx, align 8, !alias.scope !7366, !nonnull !4, !noundef !4
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.y, ptr %i.c, align 8, !alias.scope !7366
  %i.z = load i64, ptr %.sroa.06.sroa.0.sroa.3.0..sroa_idx, align 8, !alias.scope !7367, !noundef !4 ; 2 uses
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %.sroa.06.sroa.0.sroa.3.0..sroa_idx, align 8, !alias.scope !7367
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.g, %bb.h
  %.sroa.2.0.i = phi ptr [ %i.v, %bb.h ], [ null, %bb.g ]
  %.sroa.0.0.i = phi i64 [ %i.z, %bb.h ], [ undef, %bb.g ]
  %i.ab = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.ac = insertvalue { i64, ptr } %i.ab, ptr %.sroa.2.0.i, 1
  br label %bb.i

bb.i:                                             ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, %bb.f
  %.pn = phi { i64, ptr } [ %i.t, %bb.f ], [ %i.ac, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit ] ; 2 uses
  %.sroa.7.0 = extractvalue { i64, ptr } %.pn, 1  ; 2 uses
  %.not65 = icmp eq ptr %.sroa.7.0, null
  br i1 %.not65, label %bb.b, label %bb.j

.preheader81.preheader:                           ; preds = %bb.b, %.thread
  %i.ad = phi ptr [ %.pre135, %.thread ], [ %i.do, %bb.b ]
  %.sroa.0.080 = phi i64 [ 0, %.thread ], [ %i.m, %bb.b ] ; 13 uses
  %.idx = shl nuw nsw i64 %.sroa.0.080, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %i.af = load i64, ptr %i.ae, align 8, !noundef !4
  %invariant.gep108 = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.sroa.0.080 ; 2 uses
  %i.ag = load i64, ptr %invariant.gep108, align 8, !noundef !4
  %gep109.1 = getelementptr inbounds nuw i8, ptr %invariant.gep108, i64 64
  %i.ah = load i64, ptr %gep109.1, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  call void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_impljECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 %i.b, i64 noundef %.sroa.0.080, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.e, i64 noundef %.sroa.0.080, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  call void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_impljECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 %i.a, i64 noundef %.sroa.0.080, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef %.sroa.0.080, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104)
  call void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_impljECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 %i.ai, i64 noundef %.sroa.0.080, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.k, i64 noundef %.sroa.0.080, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.am = load i64, ptr %i.al, align 8, !noundef !4
  %i.an = icmp eq i64 %.sroa.0.080, 0
  br i1 %i.an, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsN_NtBW_5accumjINtB1M_7ProductRjE7productBF_E0ECs1dZk1kIfPhr_19candle_transformers.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader81.preheader
  %xtraiter = and i64 %.sroa.0.080, 7             ; 3 uses
  %i.ao = icmp ult i64 %.sroa.0.080, 8
  br i1 %i.ao, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %.sroa.0.080, -8
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.bm, %.preheader ] ; 9 uses
  %.sroa.02.0.i = phi i64 [ 1, %.preheader.preheader.new ], [ %i.bl, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.7, %.preheader ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.sroa.04.0.i
  %.val.i = load i64, ptr %i.ap, align 8, !noundef !4
  %i.aq = mul i64 %.val.i, %.sroa.02.0.i
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.sroa.04.0.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.val.i.1 = load i64, ptr %i.as, align 8, !noundef !4
  %i.at = mul i64 %.val.i.1, %i.aq
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.sroa.04.0.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.val.i.2 = load i64, ptr %i.av, align 8, !noundef !4
  %i.aw = mul i64 %.val.i.2, %i.at
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.sroa.04.0.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.val.i.3 = load i64, ptr %i.ay, align 8, !noundef !4
  %i.az = mul i64 %.val.i.3, %i.aw
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.sroa.04.0.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %.val.i.4 = load i64, ptr %i.bb, align 8, !noundef !4
  %i.bc = mul i64 %.val.i.4, %i.az
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.sroa.04.0.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %.val.i.5 = load i64, ptr %i.be, align 8, !noundef !4
  %i.bf = mul i64 %.val.i.5, %i.bc
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.sroa.04.0.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %.val.i.6 = load i64, ptr %i.bh, align 8, !noundef !4
  %i.bi = mul i64 %.val.i.6, %i.bf
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.sroa.04.0.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %.val.i.7 = load i64, ptr %i.bk, align 8, !noundef !4
  %i.bl = mul i64 %.val.i.7, %i.bi                ; 3 uses
  %i.bm = add nuw nsw i64 %.sroa.04.0.i, 8        ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsN_NtBW_5accumjINtB1M_7ProductRjE7productBF_E0ECs1dZk1kIfPhr_19candle_transformers.exit.loopexit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsN_NtBW_5accumjINtB1M_7ProductRjE7productBF_E0ECs1dZk1kIfPhr_19candle_transformers.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsN_NtBW_5accumjINtB1M_7ProductRjE7productBF_E0ECs1dZk1kIfPhr_19candle_transformers.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsN_NtBW_5accumjINtB1M_7ProductRjE7productBF_E0ECs1dZk1kIfPhr_19candle_transformers.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.bm, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsN_NtBW_5accumjINtB1M_7ProductRjE7productBF_E0ECs1dZk1kIfPhr_19candle_transformers.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 1, %.preheader.preheader ], [ %i.bl, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsN_NtBW_5accumjINtB1M_7ProductRjE7productBF_E0ECs1dZk1kIfPhr_19candle_transformers.exit.loopexit.unr-lcssa ]
  %lcmp.mod170 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod170)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.bp, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %i.bo, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
end_hunk_0
