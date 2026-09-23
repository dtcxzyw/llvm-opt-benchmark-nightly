Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.12?download=true
inline.NumInlined: 4444
inline.NumDeleted: 2345
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 97
loop-unroll.NumUnrolled: 104
begin_hunk_0_@_RNvMs_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models4flux11autoencoderNtB4_9AttnBlock3new:bb.a
  %i.az = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !12616
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.af, label %.body

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.j) #42
          to label %.body unwind label %bb.ai

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i: ; preds = %bb.ac, %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !12617)
  %i.bb = load ptr, ptr %i.j, align 8, !alias.scope !12618, !noundef !4 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i
  %i.bd = atomicrmw sub ptr %i.bb, i64 1 release, align 8, !noalias !12619
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.ah, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.j) #42
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.l

bb.ai:                                            ; preds = %bb.af
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.aj:                                            ; preds = %bb.w, %bb.q, %.body, %.body101, %.body107
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.ag, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i, %bb.ah, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !12620)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12621)
  call void @llvm.experimental.noalias.scope.decl(metadata !12622)
  call void @llvm.experimental.noalias.scope.decl(metadata !12623)
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !12624, !nonnull !4, !noundef !4
  %i.bj = atomicrmw sub ptr %i.bi, i64 1 release, align 8, !noalias !12624
  %i.bk = icmp eq i64 %i.bj, 1
  br i1 %i.bk, label %bb.ak, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i98

bb.ak:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bh) #42
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i98 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12625)
  %i.bm = load ptr, ptr %i.m, align 8, !alias.scope !12626, !noundef !4 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %.body101, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bo = atomicrmw sub ptr %i.bm, i64 1 release, align 8, !noalias !12627
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.an, label %.body101

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m) #42
          to label %.body101 unwind label %bb.aq

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i98: ; preds = %bb.ak, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !12628)
  %i.bq = load ptr, ptr %i.m, align 8, !alias.scope !12629, !noundef !4 ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit103, label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i98
  %i.bs = atomicrmw sub ptr %i.bq, i64 1 release, align 8, !noalias !12630
  %i.bt = icmp eq i64 %i.bs, 1
  br i1 %i.bt, label %bb.ap, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit103

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m) #42
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit103 unwind label %bb.g

bb.aq:                                            ; preds = %bb.an
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit103: ; preds = %bb.ao, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i98, %bb.ap, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !12631)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12632)
  call void @llvm.experimental.noalias.scope.decl(metadata !12633)
  call void @llvm.experimental.noalias.scope.decl(metadata !12634)
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !12635, !nonnull !4, !noundef !4
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !12635
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.ar, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i104

bb.ar:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit103
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bv) #42
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i104 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12636)
  %i.ca = load ptr, ptr %i.p, align 8, !alias.scope !12637, !noundef !4 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %.body107, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cc = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !12638
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.au, label %.body107

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.p) #42
          to label %.body107 unwind label %bb.ax

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i104: ; preds = %bb.ar, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit103
  call void @llvm.experimental.noalias.scope.decl(metadata !12639)
  %i.ce = load ptr, ptr %i.p, align 8, !alias.scope !12640, !noundef !4 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit109, label %bb.av

bb.av:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i104
  %i.cg = atomicrmw sub ptr %i.ce, i64 1 release, align 8, !noalias !12641
  %i.ch = icmp eq i64 %i.cg, 1
  br i1 %i.ch, label %bb.aw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit109

bb.aw:                                            ; preds = %bb.av
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.p) #42
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit109 unwind label %bb.b

bb.ax:                                            ; preds = %bb.au
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.ay:                                            ; preds = %.body107
  resume { ptr, i32 } %.pn96
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models7z_image3vaeNtB4_9VaeConfig7z_image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 33) 32, i64 noundef range(i64 4, 9) 8) #43 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #38
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 128, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 256, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 512, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 512, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 3, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 16, ptr %i.h, align 8
  store i64 4, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %.sroa.5.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x double> <double 3.611000e-01, double 1.159000e-01>, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 32, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsc_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models7z_image3vaeNtB5_14UNetMidBlock2D3new(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(600) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 12 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [80 x i8], align 8                ; 12 uses
  %i.g = alloca [16 x i8], align 16               ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [80 x i8], align 8                ; 12 uses
  %i.j = alloca [16 x i8], align 16               ; 9 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [80 x i8], align 8                ; 12 uses
  %i.m = alloca [16 x i8], align 8                ; 9 uses
  %i.n = alloca [40 x i8], align 8                ; 4 uses
  %i.o = alloca [80 x i8], align 8                ; 12 uses
  %i.p = alloca [40 x i8], align 8                ; 11 uses
  %i.q = alloca [600 x i8], align 8               ; 6 uses
  %i.r = alloca [40 x i8], align 8                ; 8 uses
  %i.s = alloca [40 x i8], align 8                ; 4 uses
  %i.t = alloca [248 x i8], align 8               ; 8 uses
  %.sroa.013 = alloca [240 x i8], align 8         ; 7 uses
  %i.u = alloca [248 x i8], align 8               ; 8 uses
  %i.v = alloca [40 x i8], align 8                ; 8 uses
  %i.w = alloca [40 x i8], align 8                ; 10 uses
  %i.x = alloca [104 x i8], align 8               ; 17 uses
  %i.y = alloca [40 x i8], align 8                ; 8 uses
  %i.z = alloca [40 x i8], align 8                ; 4 uses
  %i.aa = alloca [248 x i8], align 8              ; 8 uses
  %.sroa.0 = alloca [240 x i8], align 8           ; 7 uses
  %i.ab = alloca [248 x i8], align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @146, i64 noundef 7)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.j, %bb.e, %bb.c
  %.pn35 = phi { ptr, i32 } [ %i.ac, %bb.c ], [ %.pn33, %bb.j ], [ %i.ad, %bb.e ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %3) #39
          to label %bb.cj unwind label %bb.ce

bb.c:                                             ; preds = %bb.cg, %bb.h, %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.y) #39
          to label %bb.b unwind label %bb.ce

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RNvMs2_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models7z_image3vaeNtB5_13ResnetBlock2D3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(248) %i.aa, i64 noundef %1, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.z)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 240
  %i.af = load i8, ptr %i.ae, align 8, !range !13, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.af, -2
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(80) %i.aa, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0, i64 80, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i8 -2, ptr %i.ah, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.y)
          to label %bb.ci unwind label %bb.c

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(240) %i.aa, i64 240, i1 false)
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 241
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.524.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.ab, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.0, i64 240, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 240
  store i8 %i.af, ptr %.sroa.4.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.y)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.bs, %.body, %bb.k
  %.pn33 = phi { ptr, i32 } [ %i.ai, %bb.k ], [ %.pn, %bb.bs ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7z_image3vae13ResnetBlock2DEBJ_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.ab) #39
          to label %bb.b unwind label %bb.ce

bb.k:                                             ; preds = %bb.cf, %bb.bq, %bb.l, %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 10)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 1)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10group_norm9GroupNormECs1dZk1kIfPhr_19candle_transformers.exit.i, %bb.m
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body145.i, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %.pn135.i, %.body145.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.v) #39
          to label %bb.j unwind label %bb.ce

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !12713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !12713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !12713
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef 10)
          to label %bb.q unwind label %bb.p, !noalias !12714

.body145.i:                                       ; preds = %bb.bn, %bb.bm, %.body140.i, %bb.p
  %.pn135.i = phi { ptr, i32 } [ %.pn133.i, %.body140.i ], [ %i.ak, %bb.p ], [ %i.dh, %bb.bn ], [ %i.dh, %bb.bm ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.w) #39
          to label %.body unwind label %bb.au, !noalias !12714

bb.p:                                             ; preds = %bb.bo, %bb.q, %bb.o
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body145.i

bb.q:                                             ; preds = %bb.o
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn10group_norm10group_norm(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.o, i64 noundef %2, i64 noundef %1, double noundef f0x3EB0C6F7A0B5ED8D, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.n)
          to label %bb.r unwind label %bb.p, !noalias !12714

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !12713
  %i.al = load i64, ptr %i.o, align 8, !range !21, !noalias !12713, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.al, -1
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.6.i.sroa.0.0.copyload130 = load ptr, ptr %i.am, align 8, !noalias !12713 ; 2 uses
  %.sroa.6.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.6.i.sroa.7.0.copyload132 = load ptr, ptr %.sroa.6.i.sroa.7.0..sroa_idx, align 8, !noalias !12713 ; 2 uses
  %.sroa.6.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.6.i.sroa.8.0.copyload135 = load i64, ptr %.sroa.6.i.sroa.8.0..sroa_idx, align 8, !noalias !12713 ; 2 uses
  %.sroa.6.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.6.i.sroa.9.0.copyload138 = load ptr, ptr %.sroa.6.i.sroa.9.0..sroa_idx, align 8, !noalias !12713 ; 2 uses
  %.sroa.6.i.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.6.i.sroa.10.0.copyload141 = load ptr, ptr %.sroa.6.i.sroa.10.0..sroa_idx, align 8, !noalias !12713 ; 2 uses
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.571.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.an = load <2 x ptr>, ptr %.sroa.571.0..sroa_idx.i, align 8, !noalias !12715
  %.sroa.36.56..sroa.571.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.ao = load <2 x ptr>, ptr %.sroa.36.56..sroa.571.0..sroa_idx.i.sroa_idx, align 8, !noalias !12715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !12713
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10group_norm9GroupNormECs1dZk1kIfPhr_19candle_transformers.exit.i

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !12713
  store ptr %.sroa.6.i.sroa.0.0.copyload130, ptr %i.p, align 8, !noalias !12713
  %.sroa.6.i.sroa.7.0..sroa_idx133 = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 6 uses
  store ptr %.sroa.6.i.sroa.7.0.copyload132, ptr %.sroa.6.i.sroa.7.0..sroa_idx133, align 8, !noalias !12713
  %.sroa.6.i.sroa.8.0..sroa_idx136 = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store i64 %.sroa.6.i.sroa.8.0.copyload135, ptr %.sroa.6.i.sroa.8.0..sroa_idx136, align 8, !noalias !12713
  %.sroa.6.i.sroa.9.0..sroa_idx139 = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  store ptr %.sroa.6.i.sroa.9.0.copyload138, ptr %.sroa.6.i.sroa.9.0..sroa_idx139, align 8, !noalias !12713
  %.sroa.6.i.sroa.10.0..sroa_idx142 = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  store ptr %.sroa.6.i.sroa.10.0.copyload141, ptr %.sroa.6.i.sroa.10.0..sroa_idx142, align 8, !noalias !12713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !12713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !12713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !12713
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 4)
          to label %bb.v unwind label %bb.u, !noalias !12714

.body140.i:                                       ; preds = %bb.bh, %bb.bg, %bb.bf, %.body.i, %bb.u
  %.pn133.i = phi { ptr, i32 } [ %.pn131.i, %.body.i ], [ %i.ap, %bb.u ], [ %i.ct, %bb.bh ], [ %i.ct, %bb.bg ], [ %i.ct, %bb.bf ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10group_norm9GroupNormECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.p) #39
          to label %.body145.i unwind label %bb.au, !noalias !12714

bb.u:                                             ; preds = %bb.bj, %bb.v, %bb.t
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body140.i

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn6linear6linear(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.l, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.k)
          to label %bb.w unwind label %bb.u, !noalias !12714

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !12713
  %i.aq = load i64, ptr %i.l, align 8, !range !21, !noalias !12713, !noundef !4 ; 2 uses
  %.not124.i = icmp eq i64 %i.aq, -1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !12713 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !noalias !12713 ; 2 uses
  br i1 %.not124.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.682.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.27.32.copyload = load i64, ptr %.sroa.682.0..sroa_idx.i, align 8, !noalias !12715
  %.sroa.31.32..sroa.682.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.31.32.copyload = load ptr, ptr %.sroa.31.32..sroa.682.0..sroa_idx.i.sroa_idx, align 8, !noalias !12715
  %.sroa.32.32..sroa.682.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.32.32.copyload = load ptr, ptr %.sroa.32.32..sroa.682.0..sroa_idx.i.sroa_idx, align 8, !noalias !12715
  %.sroa.33.32..sroa.682.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %4 = load <2 x ptr>, ptr %.sroa.33.32..sroa.682.0..sroa_idx.i.sroa_idx, align 8, !noalias !12715
  %.sroa.36.32..sroa.682.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.av = load <2 x ptr>, ptr %.sroa.36.32..sroa.682.0..sroa_idx.i.sroa_idx, align 8, !noalias !12715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12713
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit142.i

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12713
  store ptr %i.as, ptr %i.m, align 8, !noalias !12713
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 6 uses
  store ptr %i.au, ptr %i.aw, align 8, !noalias !12713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !12713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12713
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 4)
          to label %bb.aa unwind label %bb.z, !noalias !12714

.body.i:                                          ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ae, %bb.z
  %.pn131.i = phi { ptr, i32 } [ %.pn129.i, %bb.ae ], [ %i.ax, %bb.z ], [ %i.cf, %bb.ba ], [ %i.cf, %bb.az ], [ %i.cf, %bb.ay ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16) %i.m) #39
          to label %.body140.i unwind label %bb.au, !noalias !12714

bb.z:                                             ; preds = %bb.bc, %bb.aa, %bb.y
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.aa:                                            ; preds = %bb.y
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn6linear6linear(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.i, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.h)
          to label %bb.ab unwind label %bb.z, !noalias !12714

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12713
  %i.ay = load i64, ptr %i.i, align 8, !range !21, !noalias !12713, !noundef !4 ; 2 uses
  %.not125.i = icmp eq i64 %i.ay, -1
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !12713 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !12713 ; 2 uses
  br i1 %.not125.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.694.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.27.32.copyload42 = load i64, ptr %.sroa.694.0..sroa_idx.i, align 8, !noalias !12715
  %.sroa.31.32..sroa.694.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.31.32.copyload46 = load ptr, ptr %.sroa.31.32..sroa.694.0..sroa_idx.i.sroa_idx, align 8, !noalias !12715
  %.sroa.32.32..sroa.694.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.32.32.copyload50 = load ptr, ptr %.sroa.32.32..sroa.694.0..sroa_idx.i.sroa_idx, align 8, !noalias !12715
  %.sroa.33.32..sroa.694.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %5 = load <2 x ptr>, ptr %.sroa.33.32..sroa.694.0..sroa_idx.i.sroa_idx, align 8, !noalias !12715
  %.sroa.36.32..sroa.694.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.bd = load <2 x ptr>, ptr %.sroa.36.32..sroa.694.0..sroa_idx.i.sroa_idx, align 8, !noalias !12715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12713
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12713
  store ptr %i.ba, ptr %i.j, align 16, !noalias !12713
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 5 uses
  store ptr %i.bc, ptr %i.be, align 8, !noalias !12713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12713
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 4)
          to label %bb.ag unwind label %bb.af, !noalias !12714

bb.ae:                                            ; preds = %bb.ak, %bb.af
  %.pn129.i = phi { ptr, i32 } [ %i.bf, %bb.af ], [ %.pn.i, %bb.ak ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16) %i.j) #39
          to label %.body.i unwind label %bb.au, !noalias !12714

bb.af:                                            ; preds = %bb.av, %bb.ag, %bb.ad
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ag:                                            ; preds = %bb.ad
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn6linear6linear(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.f, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.e)
          to label %bb.ah unwind label %bb.af, !noalias !12714

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12713
  %i.bg = load i64, ptr %i.f, align 8, !range !21, !noalias !12713, !noundef !4 ; 2 uses
  %.not126.i = icmp eq i64 %i.bg, -1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !12713 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !12713 ; 2 uses
  br i1 %.not126.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.6106.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.27.32.copyload43 = load i64, ptr %.sroa.6106.0..sroa_idx.i, align 8, !noalias !12715
  %.sroa.31.32..sroa.6106.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.31.32.copyload47 = load ptr, ptr %.sroa.31.32..sroa.6106.0..sroa_idx.i.sroa_idx, align 8, !noalias !12715
  %.sroa.32.32..sroa.6106.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.32.32.copyload51 = load ptr, ptr %.sroa.32.32..sroa.6106.0..sroa_idx.i.sroa_idx, align 8, !noalias !12715
  %.sroa.33.32..sroa.6106.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %6 = load <2 x ptr>, ptr %.sroa.33.32..sroa.6106.0..sroa_idx.i.sroa_idx, align 8, !noalias !12715
  %.sroa.36.32..sroa.6106.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.bl = load <2 x ptr>, ptr %.sroa.36.32..sroa.6106.0..sroa_idx.i.sroa_idx, align 8, !noalias !12715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12713
  br label %bb.aw

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12713
  store ptr %i.bi, ptr %i.g, align 16, !noalias !12713
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.bk, ptr %i.bm, align 8, !noalias !12713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12713
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 6)
          to label %bb.am unwind label %bb.al, !noalias !12714

bb.ak:                                            ; preds = %bb.as, %bb.an, %bb.al
  %.pn.i = phi { ptr, i32 } [ %i.bn, %bb.al ], [ %i.bw, %bb.as ], [ %i.bo, %bb.an ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #39
          to label %bb.ae unwind label %bb.au, !noalias !12714

bb.al:                                            ; preds = %bb.aq, %bb.aj
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.am:                                            ; preds = %bb.aj
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 1)
          to label %bb.ao unwind label %bb.an, !noalias !12714

bb.an:                                            ; preds = %bb.ao, %bb.am
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.a) #39
          to label %bb.ak unwind label %bb.au, !noalias !12714

bb.ao:                                            ; preds = %bb.am
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn6linear6linear(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.ap unwind label %bb.an, !noalias !12714

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12713
  %i.bp = load i64, ptr %i.c, align 8, !range !21, !noalias !12713, !noundef !4 ; 2 uses
  %.not127.i = icmp eq i64 %i.bp, -1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !12713 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !12713 ; 3 uses
  br i1 %.not127.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.sroa.6118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.27.32.copyload44 = load i64, ptr %.sroa.6118.0..sroa_idx.i, align 8, !noalias !12715
  %.sroa.31.32..sroa.6118.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.31.32.copyload48 = load ptr, ptr %.sroa.31.32..sroa.6118.0..sroa_idx.i.sroa_idx, align 8, !noalias !12715
  %.sroa.32.32..sroa.6118.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.32.32.copyload52 = load ptr, ptr %.sroa.32.32..sroa.6118.0..sroa_idx.i.sroa_idx, align 8, !noalias !12715
  %.sroa.33.32..sroa.6118.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %7 = load <2 x ptr>, ptr %.sroa.33.32..sroa.6118.0..sroa_idx.i.sroa_idx, align 8, !noalias !12715
  %.sroa.36.32..sroa.6118.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.bu = load <2 x ptr>, ptr %.sroa.36.32..sroa.6118.0..sroa_idx.i.sroa_idx, align 8, !noalias !12715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12713
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.a)
          to label %bb.av unwind label %bb.al, !noalias !12714

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12713
  store ptr %i.br, ptr %i.d, align 8, !noalias !12713
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.bt, ptr %i.bv, align 8, !noalias !12713
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.a)
          to label %bb.at unwind label %bb.as, !noalias !12714

bb.as:                                            ; preds = %bb.ar
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d) #39
          to label %bb.ak unwind label %bb.au, !noalias !12714

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12713
  %.sroa.037.0.copyload = load ptr, ptr %i.p, align 8, !noalias !12715
  %.sroa.11.0.copyload = load i64, ptr %.sroa.6.i.sroa.7.0..sroa_idx133, align 8, !noalias !12715
  %.sroa.18.0.copyload = load ptr, ptr %.sroa.6.i.sroa.8.0..sroa_idx136, align 8, !noalias !12715
  %.sroa.23.0.copyload = load ptr, ptr %.sroa.6.i.sroa.9.0..sroa_idx139, align 8, !noalias !12715
  %.sroa.27.0.copyload = load i64, ptr %.sroa.6.i.sroa.10.0..sroa_idx142, align 8, !noalias !12715
  %8 = load ptr, ptr %i.m, align 8, !noalias !12713, !nonnull !4, !noundef !4
  %9 = load ptr, ptr %i.aw, align 8, !noalias !12713, !noundef !4
  %i.bx = load <2 x ptr>, ptr %i.j, align 16, !noalias !12713
  %i.by = load <2 x ptr>, ptr %i.g, align 16, !noalias !12713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !12713
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10group_norm9GroupNormECs1dZk1kIfPhr_19candle_transformers.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10group_norm9GroupNormECs1dZk1kIfPhr_19candle_transformers.exit.i: ; preds = %bb.bo, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i143.i, %bb.at, %bb.s
  %.sroa.40.0 = phi ptr [ %i.bt, %bb.at ], [ undef, %bb.bo ], [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i143.i ], [ undef, %bb.s ]
  %.sroa.38.0 = phi ptr [ %i.br, %bb.at ], [ undef, %bb.bo ], [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i143.i ], [ undef, %bb.s ]
  %.sroa.32.0 = phi ptr [ %9, %bb.at ], [ %.sroa.32.1, %bb.bo ], [ %.sroa.32.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i143.i ], [ %.sroa.6.i.sroa.10.0.copyload141, %bb.s ] ; 2 uses
  %.sroa.31.0 = phi ptr [ %8, %bb.at ], [ %.sroa.31.1, %bb.bo ], [ %.sroa.31.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i143.i ], [ %.sroa.6.i.sroa.9.0.copyload138, %bb.s ] ; 2 uses
  %.sroa.27.0 = phi i64 [ %.sroa.27.0.copyload, %bb.at ], [ %.sroa.27.1, %bb.bo ], [ %.sroa.27.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i143.i ], [ %.sroa.6.i.sroa.8.0.copyload135, %bb.s ] ; 2 uses
  %.sroa.23.0 = phi ptr [ %.sroa.23.0.copyload, %bb.at ], [ %.sroa.23.1, %bb.bo ], [ %.sroa.23.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i143.i ], [ %.sroa.6.i.sroa.7.0.copyload132, %bb.s ] ; 2 uses
  %.sroa.18.0 = phi ptr [ %.sroa.18.0.copyload, %bb.at ], [ %.sroa.18.1, %bb.bo ], [ %.sroa.18.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i143.i ], [ %.sroa.6.i.sroa.0.0.copyload130, %bb.s ] ; 2 uses
  %.sroa.11.0 = phi i64 [ %.sroa.11.0.copyload, %bb.at ], [ %.sroa.11.1, %bb.bo ], [ %.sroa.11.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i143.i ], [ %i.al, %bb.s ] ; 2 uses
  %.sroa.037.0 = phi ptr [ %.sroa.037.0.copyload, %bb.at ], [ null, %bb.bo ], [ null, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i143.i ], [ null, %bb.s ] ; 2 uses
  %10 = phi <2 x ptr> [ %i.bx, %bb.at ], [ %13, %bb.bo ], [ %13, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i143.i ], [ %i.an, %bb.s ] ; 2 uses
  %i.bz = phi <2 x ptr> [ %i.by, %bb.at ], [ %i.dd, %bb.bo ], [ %i.dd, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i143.i ], [ %i.ao, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !12713
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.w)
          to label %_RNvMs0_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models7z_image3vaeNtB5_9Attention3new.exit unwind label %bb.n

bb.au:                                            ; preds = %bb.as, %bb.an, %bb.ak, %bb.ae, %.body.i, %.body140.i, %.body145.i
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #41, !noalias !12714
  unreachable

bb.av:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12713
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g)
          to label %bb.aw unwind label %bb.af, !noalias !12714

bb.aw:                                            ; preds = %bb.av, %bb.ai
  %.sroa.32.3 = phi ptr [ %.sroa.32.32.copyload52, %bb.av ], [ %.sroa.32.32.copyload51, %bb.ai ] ; 3 uses
  %.sroa.31.3 = phi ptr [ %.sroa.31.32.copyload48, %bb.av ], [ %.sroa.31.32.copyload47, %bb.ai ] ; 3 uses
  %.sroa.27.3 = phi i64 [ %.sroa.27.32.copyload44, %bb.av ], [ %.sroa.27.32.copyload43, %bb.ai ] ; 3 uses
  %.sroa.23.3 = phi ptr [ %i.bt, %bb.av ], [ %i.bk, %bb.ai ] ; 3 uses
  %.sroa.18.3 = phi ptr [ %i.br, %bb.av ], [ %i.bi, %bb.ai ] ; 3 uses
  %.sroa.11.3 = phi i64 [ %i.bp, %bb.av ], [ %i.bg, %bb.ai ] ; 3 uses
  %11 = phi <2 x ptr> [ %7, %bb.av ], [ %6, %bb.ai ] ; 3 uses
  %i.cb = phi <2 x ptr> [ %i.bu, %bb.av ], [ %i.bl, %bb.ai ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12713
  call void @llvm.experimental.noalias.scope.decl(metadata !12716)
  call void @llvm.experimental.noalias.scope.decl(metadata !12717)
  call void @llvm.experimental.noalias.scope.decl(metadata !12718)
  call void @llvm.experimental.noalias.scope.decl(metadata !12719)
  %i.cc = load ptr, ptr %i.j, align 16, !alias.scope !12720, !noalias !12713, !nonnull !4, !noundef !4
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !12721
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.ax, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #42
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i unwind label %bb.ay, !noalias !12714

bb.ay:                                            ; preds = %bb.ax
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12722)
  %i.cg = load ptr, ptr %i.be, align 8, !alias.scope !12723, !noalias !12713, !noundef !4 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %.body.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ci = atomicrmw sub ptr %i.cg, i64 1 release, align 8, !noalias !12724
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.ba, label %.body.i

bb.ba:                                            ; preds = %bb.az
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.be) #42
          to label %.body.i unwind label %bb.bd, !noalias !12714

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i: ; preds = %bb.ax, %bb.aw
  call void @llvm.experimental.noalias.scope.decl(metadata !12725)
  %i.ck = load ptr, ptr %i.be, align 8, !alias.scope !12726, !noalias !12713, !noundef !4 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i, label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i
  %i.cm = atomicrmw sub ptr %i.ck, i64 1 release, align 8, !noalias !12727
  %i.cn = icmp eq i64 %i.cm, 1
  br i1 %i.cn, label %bb.bc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i

bb.bc:                                            ; preds = %bb.bb
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.be) #42
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i unwind label %bb.z, !noalias !12714

bb.bd:                                            ; preds = %bb.ba
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #41, !noalias !12714
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i: ; preds = %bb.bc, %bb.bb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i, %bb.ac
  %.sroa.32.2 = phi ptr [ %.sroa.32.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i ], [ %.sroa.32.3, %bb.bc ], [ %.sroa.32.3, %bb.bb ], [ %.sroa.32.32.copyload50, %bb.ac ] ; 3 uses
  %.sroa.31.2 = phi ptr [ %.sroa.31.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i ], [ %.sroa.31.3, %bb.bc ], [ %.sroa.31.3, %bb.bb ], [ %.sroa.31.32.copyload46, %bb.ac ] ; 3 uses
  %.sroa.27.2 = phi i64 [ %.sroa.27.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i ], [ %.sroa.27.3, %bb.bc ], [ %.sroa.27.3, %bb.bb ], [ %.sroa.27.32.copyload42, %bb.ac ] ; 3 uses
  %.sroa.23.2 = phi ptr [ %.sroa.23.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i ], [ %.sroa.23.3, %bb.bc ], [ %.sroa.23.3, %bb.bb ], [ %i.bc, %bb.ac ] ; 3 uses
  %.sroa.18.2 = phi ptr [ %.sroa.18.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i ], [ %.sroa.18.3, %bb.bc ], [ %.sroa.18.3, %bb.bb ], [ %i.ba, %bb.ac ] ; 3 uses
  %.sroa.11.2 = phi i64 [ %.sroa.11.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i ], [ %.sroa.11.3, %bb.bc ], [ %.sroa.11.3, %bb.bb ], [ %i.ay, %bb.ac ] ; 3 uses
  %12 = phi <2 x ptr> [ %11, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i ], [ %11, %bb.bc ], [ %11, %bb.bb ], [ %5, %bb.ac ] ; 3 uses
  %i.cp = phi <2 x ptr> [ %i.cb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i ], [ %i.cb, %bb.bc ], [ %i.cb, %bb.bb ], [ %i.bd, %bb.ac ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12713
  call void @llvm.experimental.noalias.scope.decl(metadata !12728)
  call void @llvm.experimental.noalias.scope.decl(metadata !12729)
  call void @llvm.experimental.noalias.scope.decl(metadata !12730)
  call void @llvm.experimental.noalias.scope.decl(metadata !12731)
  %i.cq = load ptr, ptr %i.m, align 8, !alias.scope !12732, !noalias !12713, !nonnull !4, !noundef !4
  %i.cr = atomicrmw sub ptr %i.cq, i64 1 release, align 8, !noalias !12733
  %i.cs = icmp eq i64 %i.cr, 1
  br i1 %i.cs, label %bb.be, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i137.i

bb.be:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m) #42
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i137.i unwind label %bb.bf, !noalias !12714

bb.bf:                                            ; preds = %bb.be
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12734)
  %i.cu = load ptr, ptr %i.aw, align 8, !alias.scope !12735, !noalias !12713, !noundef !4 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %.body140.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.cw = atomicrmw sub ptr %i.cu, i64 1 release, align 8, !noalias !12736
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.bh, label %.body140.i

bb.bh:                                            ; preds = %bb.bg
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aw) #42
          to label %.body140.i unwind label %bb.bk, !noalias !12714

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i137.i: ; preds = %bb.be, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !12737)
  %i.cy = load ptr, ptr %i.aw, align 8, !alias.scope !12738, !noalias !12713, !noundef !4 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit142.i, label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i137.i
  %i.da = atomicrmw sub ptr %i.cy, i64 1 release, align 8, !noalias !12739
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %bb.bj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit142.i

bb.bj:                                            ; preds = %bb.bi
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aw) #42
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit142.i unwind label %bb.u, !noalias !12714

bb.bk:                                            ; preds = %bb.bh
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #41, !noalias !12714
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit142.i: ; preds = %bb.bj, %bb.bi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i137.i, %bb.x
  %.sroa.32.1 = phi ptr [ %.sroa.32.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i137.i ], [ %.sroa.32.2, %bb.bj ], [ %.sroa.32.2, %bb.bi ], [ %.sroa.32.32.copyload, %bb.x ] ; 2 uses
  %.sroa.31.1 = phi ptr [ %.sroa.31.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i137.i ], [ %.sroa.31.2, %bb.bj ], [ %.sroa.31.2, %bb.bi ], [ %.sroa.31.32.copyload, %bb.x ] ; 2 uses
  %.sroa.27.1 = phi i64 [ %.sroa.27.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i137.i ], [ %.sroa.27.2, %bb.bj ], [ %.sroa.27.2, %bb.bi ], [ %.sroa.27.32.copyload, %bb.x ] ; 2 uses
  %.sroa.23.1 = phi ptr [ %.sroa.23.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i137.i ], [ %.sroa.23.2, %bb.bj ], [ %.sroa.23.2, %bb.bi ], [ %i.au, %bb.x ] ; 2 uses
  %.sroa.18.1 = phi ptr [ %.sroa.18.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i137.i ], [ %.sroa.18.2, %bb.bj ], [ %.sroa.18.2, %bb.bi ], [ %i.as, %bb.x ] ; 2 uses
  %.sroa.11.1 = phi i64 [ %.sroa.11.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i137.i ], [ %.sroa.11.2, %bb.bj ], [ %.sroa.11.2, %bb.bi ], [ %i.aq, %bb.x ] ; 2 uses
  %13 = phi <2 x ptr> [ %12, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i137.i ], [ %12, %bb.bj ], [ %12, %bb.bi ], [ %4, %bb.x ] ; 2 uses
  %i.dd = phi <2 x ptr> [ %i.cp, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i137.i ], [ %i.cp, %bb.bj ], [ %i.cp, %bb.bi ], [ %i.av, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !12713
  call void @llvm.experimental.noalias.scope.decl(metadata !12740)
  call void @llvm.experimental.noalias.scope.decl(metadata !12741)
  call void @llvm.experimental.noalias.scope.decl(metadata !12742)
  call void @llvm.experimental.noalias.scope.decl(metadata !12743)
  %i.de = load ptr, ptr %i.p, align 8, !alias.scope !12744, !noalias !12713, !nonnull !4, !noundef !4
  %i.df = atomicrmw sub ptr %i.de, i64 1 release, align 8, !noalias !12745
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %bb.bl, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i143.i

bb.bl:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit142.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p) #42
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i143.i unwind label %bb.bm, !noalias !12714

bb.bm:                                            ; preds = %bb.bl
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12746)
  call void @llvm.experimental.noalias.scope.decl(metadata !12747)
  call void @llvm.experimental.noalias.scope.decl(metadata !12748)
  %i.di = load ptr, ptr %.sroa.6.i.sroa.7.0..sroa_idx133, align 8, !alias.scope !12749, !noalias !12713, !nonnull !4, !noundef !4
  %i.dj = atomicrmw sub ptr %i.di, i64 1 release, align 8, !noalias !12750
  %i.dk = icmp eq i64 %i.dj, 1
  br i1 %i.dk, label %bb.bn, label %.body145.i

bb.bn:                                            ; preds = %bb.bm
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.6.i.sroa.7.0..sroa_idx133) #42
          to label %.body145.i unwind label %bb.bp, !noalias !12714

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i143.i: ; preds = %bb.bl, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit142.i
  call void @llvm.experimental.noalias.scope.decl(metadata !12751)
  call void @llvm.experimental.noalias.scope.decl(metadata !12752)
  call void @llvm.experimental.noalias.scope.decl(metadata !12753)
  %i.dl = load ptr, ptr %.sroa.6.i.sroa.7.0..sroa_idx133, align 8, !alias.scope !12754, !noalias !12713, !nonnull !4, !noundef !4
  %i.dm = atomicrmw sub ptr %i.dl, i64 1 release, align 8, !noalias !12755
  %i.dn = icmp eq i64 %i.dm, 1
  br i1 %i.dn, label %bb.bo, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10group_norm9GroupNormECs1dZk1kIfPhr_19candle_transformers.exit.i

bb.bo:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i143.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.6.i.sroa.7.0..sroa_idx133) #42
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10group_norm9GroupNormECs1dZk1kIfPhr_19candle_transformers.exit.i unwind label %bb.p, !noalias !12714

bb.bp:                                            ; preds = %bb.bn
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #41, !noalias !12714
  unreachable

_RNvMs0_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models7z_image3vaeNtB5_9Attention3new.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10group_norm9GroupNormECs1dZk1kIfPhr_19candle_transformers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.dp = icmp eq ptr %.sroa.037.0, null
  br i1 %i.dp, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %_RNvMs0_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models7z_image3vaeNtB5_9Attention3new.exit
  store i64 %.sroa.11.0, ptr %0, align 8
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.18.0, ptr %.sroa.4121.0..sroa_idx, align 8
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.23.0, ptr %.sroa.5122.0..sroa_idx, align 8
  %.sroa.6123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.27.0, ptr %.sroa.6123.0..sroa_idx, align 8
  %.sroa.7124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.31.0, ptr %.sroa.7124.0..sroa_idx, align 8
  %.sroa.8125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.32.0, ptr %.sroa.8125.0..sroa_idx, align 8
  %.sroa.9126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x ptr> %10, ptr %.sroa.9126.0..sroa_idx, align 8
  %.sroa.11128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x ptr> %i.bz, ptr %.sroa.11128.0..sroa_idx, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i8 -2, ptr %i.dq, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.v)
          to label %bb.ch unwind label %bb.k

bb.br:                                            ; preds = %_RNvMs0_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models7z_image3vaeNtB5_9Attention3new.exit
  store ptr %.sroa.037.0, ptr %i.x, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.sroa.11.0, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.411.sroa.4.0..sroa.411.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %.sroa.18.0, ptr %.sroa.411.sroa.4.0..sroa.411.0..sroa_idx.sroa_idx, align 8
  %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %.sroa.23.0, ptr %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx, align 8
  %.sroa.411.sroa.6.0..sroa.411.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i64 %.sroa.27.0, ptr %.sroa.411.sroa.6.0..sroa.411.0..sroa_idx.sroa_idx, align 8
  %.sroa.411.sroa.7.0..sroa.411.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr %.sroa.31.0, ptr %.sroa.411.sroa.7.0..sroa.411.0..sroa_idx.sroa_idx, align 8
  %.sroa.411.sroa.8.0..sroa.411.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store ptr %.sroa.32.0, ptr %.sroa.411.sroa.8.0..sroa.411.0..sroa_idx.sroa_idx, align 8
  %.sroa.411.sroa.9.0..sroa.411.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store <2 x ptr> %10, ptr %.sroa.411.sroa.9.0..sroa.411.0..sroa_idx.sroa_idx, align 8
  %.sroa.411.sroa.11.0..sroa.411.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  store <2 x ptr> %i.bz, ptr %.sroa.411.sroa.11.0..sroa.411.0..sroa_idx.sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  store ptr %.sroa.38.0, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  store ptr %.sroa.40.0, ptr %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.v)
          to label %bb.bu unwind label %bb.bt

bb.bs:                                            ; preds = %bb.cb, %bb.bw, %bb.bt
  %.pn = phi { ptr, i32 } [ %i.dr, %bb.bt ], [ %i.dx, %bb.cb ], [ %i.ds, %bb.bw ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7z_image3vae9AttentionEBJ_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.x) #39
          to label %bb.j unwind label %bb.ce

bb.bt:                                            ; preds = %bb.bz, %bb.bu, %bb.br
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.013)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @146, i64 noundef 7)
          to label %bb.bv unwind label %bb.bt

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 1)
          to label %bb.bx unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bx, %bb.bv
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.r) #39
          to label %bb.bs unwind label %bb.ce

bb.bx:                                            ; preds = %bb.bv
  invoke fastcc void @_RNvMs2_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models7z_image3vaeNtB5_13ResnetBlock2D3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(248) %i.t, i64 noundef %1, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.s)
          to label %bb.by unwind label %bb.bw

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.t, i64 240
  %i.du = load i8, ptr %i.dt, align 8, !range !13, !noundef !4 ; 2 uses
  %i.dv = icmp eq i8 %i.du, -2
  br i1 %i.dv, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.013, ptr noundef nonnull align 8 dereferenceable(80) %i.t, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.013, i64 80, i1 false)
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i8 -2, ptr %i.dw, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.r)
          to label %bb.cf unwind label %bb.bt

bb.ca:                                            ; preds = %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.013, ptr noundef nonnull align 8 dereferenceable(240) %i.t, i64 240, i1 false)
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 241
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.521.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.530.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.u, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.013, i64 240, i1 false)
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 240
  store i8 %i.du, ptr %.sroa.420.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.r)
          to label %bb.cc unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7z_image3vae13ResnetBlock2DEBJ_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.u) #39
          to label %bb.bs unwind label %bb.ce

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.013)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.dy, ptr noundef nonnull align 8 dereferenceable(248) %i.ab, i64 248, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.q, ptr noundef nonnull align 8 dereferenceable(104) %i.x, i64 104, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.q, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.dz, ptr noundef nonnull align 8 dereferenceable(248) %i.u, i64 248, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(600) %i.q, i64 600, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cg, %bb.ci, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %3)
  ret void

bb.ce:                                            ; preds = %bb.cb, %bb.bw, %bb.bs, %.body, %bb.j, %bb.e, %bb.b
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.cf:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.013)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7z_image3vae9AttentionEBJ_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.x)
          to label %bb.cg unwind label %bb.k

bb.cg:                                            ; preds = %bb.ch, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7z_image3vae13ResnetBlock2DEBJ_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.ab)
          to label %bb.cd unwind label %bb.c

bb.ch:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.cg

bb.ci:                                            ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.cd

bb.cj:                                            ; preds = %bb.b
  resume { ptr, i32 } %.pn35
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueE10init_frontCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #13 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !noundef !4
  %i.b = trunc nuw i64 %i.a to i1                 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !4
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.h, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.017.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.015, %.lr.ph.preheader ]
  %.sroa.011.016.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 632
  %i.k = add i64 %.sroa.011.016.prol, -1          ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !12756

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa21.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.017.unr = phi ptr [ %.sroa.013.015, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.016.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8
  br i1 %i.l, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.015, %bb.d ], [ %.sroa.013.0.lcssa21.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ]
  store i64 1, ptr %0, align 8
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.017 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.017.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.016 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.016.unr, %.lr.ph.prol.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 632
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 632
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 632
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 632
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 632
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 632
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 632
end_hunk_0
