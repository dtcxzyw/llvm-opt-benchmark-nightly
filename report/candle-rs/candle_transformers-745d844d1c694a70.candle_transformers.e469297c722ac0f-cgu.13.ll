Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.13?download=true
inline.NumInlined: 4898
inline.NumDeleted: 279
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs3_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models4flux5modelNtB5_6QkNorm3new:bb.a
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.553.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.534.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.i, ptr %0, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.452.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !23997)
  call void @llvm.experimental.noalias.scope.decl(metadata !23998)
  %i.l = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !23999
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24000)
  %i.o = load ptr, ptr %.sroa.423.0..sroa_idx, align 8, !alias.scope !24001, !noundef !4 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = atomicrmw add ptr %i.o, i64 -1 release, align 8, !noalias !24002
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.l, label %.body

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.423.0..sroa_idx) #20
          to label %.body unwind label %bb.o

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !24003)
  %i.s = load ptr, ptr %.sroa.423.0..sroa_idx, align 8, !alias.scope !24004, !noundef !4 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm7RmsNormECs1dZk1kIfPhr_19candle_transformers.exit, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i
  %i.u = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !24005
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm7RmsNormECs1dZk1kIfPhr_19candle_transformers.exit

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.423.0..sroa_idx) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm7RmsNormECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.b

bb.o:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.p:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.k, ptr %.sroa.446.0..sroa_idx, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %.sroa.547.0..sroa_idx, align 8
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double f0x3EB0C6F7A0B5ED8D, ptr %.sroa.648.0..sroa_idx, align 8
  %.sroa.749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %.sroa.749.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.q

bb.q:                                             ; preds = %bb.d, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm7RmsNormECs1dZk1kIfPhr_19candle_transformers.exit, %bb.p
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %2)
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm7RmsNormECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.m, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.q

bb.r:                                             ; preds = %bb.f, %.body
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.s:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models3csmNtB5_10LlamaModel14clear_kv_cache(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 232
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNvMs3_NtNtCs1dZk1kIfPhr_19candle_transformers6models3csmNtB5_5Layer14clear_kv_cache.exit
  %.sroa.0.05 = phi ptr [ %i.g, %_RNvMs3_NtNtCs1dZk1kIfPhr_19candle_transformers6models3csmNtB5_5Layer14clear_kv_cache.exit ], [ %i.b, %bb.a ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 232 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24033)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 120 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24034)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !24035, !noundef !4 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RNvMs3_NtNtCs1dZk1kIfPhr_19candle_transformers6models3csmNtB5_5Layer14clear_kv_cache.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24036)
  %i.k = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !24037
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24040)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !24041, !nonnull !4, !noundef !4
  %i.p = atomicrmw add ptr %i.o, i64 -1 release, align 8, !noalias !24042
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.e, label %.body.i.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #20
          to label %.body.i.i unwind label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24045)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !24046, !nonnull !4, !noundef !4
  %i.t = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !24047
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.f, label %_RNvMs3_NtNtCs1dZk1kIfPhr_19candle_transformers6models3csmNtB5_5Layer14clear_kv_cache.exit

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #20
          to label %_RNvMs3_NtNtCs1dZk1kIfPhr_19candle_transformers6models3csmNtB5_5Layer14clear_kv_cache.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.h, %bb.e, %bb.d
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.m, %bb.e ], [ %i.m, %bb.d ]
  store ptr null, ptr %i.h, align 8, !alias.scope !24048
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNvMs3_NtNtCs1dZk1kIfPhr_19candle_transformers6models3csmNtB5_5Layer14clear_kv_cache.exit: ; preds = %.lr.ph, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i, %bb.f
  store ptr null, ptr %i.h, align 8, !alias.scope !24048
  %i.x = icmp eq ptr %i.g, %i.e
  br i1 %i.x, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNvMs3_NtNtCs1dZk1kIfPhr_19candle_transformers6models3csmNtB5_5Layer14clear_kv_cache.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models3csmNtB5_10LlamaModel3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 13 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 13 uses
  %i.e = alloca [16 x i8], align 8                ; 9 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [80 x i8], align 8                ; 13 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [40 x i8], align 8                ; 4 uses
  %i.p = alloca [80 x i8], align 8                ; 13 uses
  %i.q = alloca [40 x i8], align 8                ; 4 uses
  %i.r = alloca [80 x i8], align 8                ; 13 uses
  %i.s = alloca [16 x i8], align 8                ; 9 uses
  %i.t = alloca [40 x i8], align 8                ; 4 uses
  %i.u = alloca [80 x i8], align 8                ; 13 uses
  %i.v = alloca [16 x i8], align 8                ; 9 uses
  %i.w = alloca [40 x i8], align 8                ; 4 uses
  %i.x = alloca [80 x i8], align 8                ; 13 uses
  %i.y = alloca [16 x i8], align 8                ; 9 uses
  %i.z = alloca [8 x i8], align 8                 ; 9 uses
  %i.aa = alloca [80 x i8], align 8               ; 13 uses
  %i.ab = alloca [80 x i8], align 8               ; 13 uses
  %i.ac = alloca [40 x i8], align 8               ; 8 uses
  %i.ad = alloca [40 x i8], align 8               ; 11 uses
  %i.ae = alloca [8 x i8], align 8                ; 5 uses
  %i.af = alloca [120 x i8], align 16             ; 20 uses
  %i.ag = alloca [40 x i8], align 8               ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 12 uses
  %i.ai = alloca [40 x i8], align 8               ; 6 uses
  %i.aj = alloca [32 x i8], align 8               ; 13 uses
  %i.ak = alloca [8 x i8], align 8                ; 9 uses
  %i.al = alloca [80 x i8], align 8               ; 9 uses
  %i.am = alloca [48 x i8], align 8               ; 9 uses
  %i.an = alloca [8 x i8], align 8                ; 4 uses
  %i.ao = alloca [80 x i8], align 8               ; 8 uses
  %i.ap = alloca [8 x i8], align 8                ; 11 uses
  %i.aq = alloca [80 x i8], align 8               ; 9 uses
  %i.ar = alloca [8 x i8], align 8                ; 7 uses
  %i.as = alloca [80 x i8], align 8               ; 8 uses
  %i.at = alloca [8 x i8], align 8                ; 11 uses
  %i.au = alloca [80 x i8], align 8               ; 9 uses
  %i.av = alloca [8 x i8], align 8                ; 9 uses
  %i.aw = alloca [80 x i8], align 8               ; 8 uses
  %i.ax = alloca [8 x i8], align 8                ; 11 uses
  %i.ay = alloca [80 x i8], align 8               ; 8 uses
  %i.az = alloca [8 x i8], align 8                ; 13 uses
  %i.ba = alloca [80 x i8], align 8               ; 9 uses
  %i.bb = alloca [8 x i8], align 8                ; 13 uses
  %i.bc = alloca [80 x i8], align 8               ; 10 uses
  %i.bd = alloca [8 x i8], align 8                ; 13 uses
  %i.be = alloca [80 x i8], align 8               ; 12 uses
  %i.bf = alloca [8 x i8], align 8                ; 12 uses
  %i.bg = alloca [80 x i8], align 8               ; 8 uses
  %i.bh = alloca [8 x i8], align 8                ; 12 uses
  %i.bi = alloca [24 x i8], align 8               ; 6 uses
  %i.bj = alloca [80 x i8], align 8               ; 13 uses
  %i.bk = alloca [4 x i8], align 4                ; 4 uses
  %i.bl = alloca [4 x i8], align 4                ; 4 uses
  %i.bm = alloca [24 x i8], align 8               ; 5 uses
  %i.bn = alloca [4 x i8], align 4                ; 5 uses
  %i.bo = alloca [4 x i8], align 4                ; 5 uses
  %i.bp = alloca [4 x i8], align 4                ; 5 uses
  %i.bq = alloca [4 x i8], align 4                ; 5 uses
  %i.br = alloca [24 x i8], align 8               ; 6 uses
  %i.bs = alloca [32 x i8], align 8               ; 8 uses
  %i.bt = alloca [40 x i8], align 8               ; 6 uses
  %.sroa.15143 = alloca [47 x i8], align 1        ; 6 uses
  %.sroa.618.sroa.10 = alloca [7 x i8], align 1   ; 6 uses
  %i.bu = alloca [232 x i8], align 8              ; 15 uses
  %i.bv = alloca [40 x i8], align 8               ; 12 uses
  %i.bw = alloca [8 x i8], align 8                ; 5 uses
  %.sroa.44 = alloca [120 x i8], align 8          ; 6 uses
  %.sroa.45 = alloca [24 x i8], align 8           ; 5 uses
  %.sroa.52 = alloca [7 x i8], align 1            ; 5 uses
  %i.bx = alloca [40 x i8], align 8               ; 8 uses
  %i.by = alloca [24 x i8], align 8               ; 13 uses
  %.sroa.42 = alloca [56 x i8], align 8           ; 14 uses
  %i.bz = alloca [8 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42)
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !range !14, !noundef !4 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !4, !noundef !4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 25 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24473)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !24474
  store float 1.000000e+00, ptr %i.bq, align 4, !noalias !24474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !24474
  store float 4.000000e+00, ptr %i.bp, align 4, !noalias !24474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !24474
  store i32 8192, ptr %i.bo, align 4, !noalias !24474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !24474
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !24473, !noundef !4
  %i.ch = uitofp i64 %i.cg to float
  store float %i.ch, ptr %i.bn, align 4, !noalias !24474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !24474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !24474
  store float 8.192000e+03, ptr %i.bl, align 4, !noalias !24474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !24474
  store float 2.048000e+03, ptr %i.bk, align 4, !noalias !24474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !24474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !24474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24475)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !24476
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !24477, !noundef !4 ; 4 uses
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.b, label %_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm26calculate_default_inv_freq.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @212) #23
          to label %.noexc unwind label %bb.by

.noexc:                                           ; preds = %bb.b
  unreachable

_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm26calculate_default_inv_freq.exit.i: ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !24477, !noundef !4 ; 13 uses
  %i.cn = udiv i64 %i.cm, %i.cj                   ; 5 uses
  store i64 %i.cn, ptr %i.an, align 8, !noalias !24476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !24476
  %i.co = lshr i64 %i.cn, 1
  %.sroa.05.0.i.i.i.i = sub nuw i64 %i.cn, %i.co
  %i.cp = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 0, ptr %i.cp, align 8, !noalias !24476
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 %.sroa.05.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !24476
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !24476
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i8 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !24476
  store ptr %1, ptr %i.am, align 8, !noalias !24476
  %i.cq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.an, ptr %i.cq, align 8, !noalias !24476
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecfEINtB4_18SpecFromIterNestedfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB1B_7step_by6StepByINtNtNtB1F_3ops5range5RangejEENCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm26calculate_default_inv_freq0EE9from_iterB3k_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bi, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.am)
          to label %.noexc68 unwind label %bb.by

.noexc68:                                         ; preds = %_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm26calculate_default_inv_freq.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !24476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !24476
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !24474, !nonnull !4, !noundef !4 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !noalias !24474, !noundef !4 ; 2 uses
  %i.cv = icmp ult i64 %i.cu, 2305843009213693952
  call void @llvm.assume(i1 %i.cv)
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cu
  %i.cx = load i64, ptr %i.bi, align 8, !range !16, !noalias !24474, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !24474
  store ptr %i.cs, ptr %i.bj, align 8, !noalias !24474
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.cs, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !24474
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 %i.cx, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !24474
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store ptr %i.cw, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !24474
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  store ptr %i.bk, ptr %i.cy, align 8, !noalias !24474
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  store ptr %i.bl, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !24474
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  store ptr %i.bn, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !24474
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  store ptr %i.bo, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !24474
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  store ptr %i.bq, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !24474
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  store ptr %i.bp, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !24474
  invoke void @_RINvNtNtCsgCecv3eZDcN_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterfENCNvMs_NtNtCs1dZk1kIfPhr_19candle_transformers6models3csmNtB2u_15RotaryEmbedding3new0EfEB2y_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bm, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.bj)
          to label %.noexc69 unwind label %bb.by

.noexc69:                                         ; preds = %.noexc68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !24474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !24474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !24474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !24474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !24474
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor3newINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.bg, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.ce)
          to label %.noexc70 unwind label %bb.by

.noexc70:                                         ; preds = %.noexc69
  %i.cz = load i64, ptr %i.bg, align 8, !range !13, !noalias !24474, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.cz, -1
  %i.da = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !noalias !24474 ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc70
  %.sroa.5110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.sroa.29.16.copyload = load ptr, ptr %.sroa.5110.0..sroa_idx.i, align 8, !noalias !24478
  %.sroa.42.16..sroa.5110.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.42, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.42.16..sroa.5110.0..sroa_idx.i.sroa_idx, i64 56, i1 false), !noalias !24478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !24474
  br label %bb.bz

bb.d:                                             ; preds = %.noexc70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !24474
  store ptr %i.db, ptr %i.bh, align 8, !noalias !24474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !24474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !24474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !24474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !24474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !24474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !24474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !24474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !24474
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !24473, !noundef !4 ; 2 uses
  %i.de = trunc i64 %i.dd to i32
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor11arange_stepmECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.ay, i32 noundef 0, i32 noundef %i.de, i32 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.ce)
          to label %bb.g unwind label %bb.f, !noalias !24479

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit222.i: ; preds = %bb.ap, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit242.i, %bb.j, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit224.i, %bb.f
  %.pn219.i = phi { ptr, i32 } [ %i.di, %bb.f ], [ %.pn217.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit224.i ], [ %.pn217.i, %bb.j ], [ %.pn211.i, %bb.ap ], [ %.pn211.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit242.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24480)
end_hunk_0
begin_hunk_1_@_RNvMs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models3csmNtB5_10LlamaModel3new:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.645.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.42, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42)
  store i64 %.sroa.0.8.ph, ptr %0, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.16.8.ph, ptr %.sroa.443.0..sroa_idx, align 8
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.29.8.ph, ptr %.sroa.544.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm15RotaryEmbeddingEEB1f_.exit95

bb.ca:                                            ; preds = %bb.bq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit264.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !24474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !24474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !24474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !24474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !24474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !24474
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  store i64 1, ptr %i.bs, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 1, ptr %i.ik, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store ptr %i.hj, ptr %i.il, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store ptr %i.hi, ptr %i.im, align 8
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !24630
  %i.in = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 4, 33) 32, i64 noundef range(i64 4, 9) 8) #25, !noalias !24630 ; 3 uses
  %i.io = icmp eq ptr %i.in, null
  br i1 %i.io, label %bb.cb, label %bb.ce, !prof !12

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #24
          to label %.noexc75 unwind label %bb.cc

.noexc75:                                         ; preds = %bb.cb
  unreachable

bb.cc:                                            ; preds = %bb.cb
  %i.ip = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm15RotaryEmbeddingEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs) #22
          to label %.body unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.iq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.ce:                                            ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.in, ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  store ptr %i.in, ptr %i.bz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.is = load i64, ptr %i.ir, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.br, i64 noundef %i.is, i1 noundef zeroext false, i64 noundef 8, i64 noundef 232)
          to label %bb.cg unwind label %bb.cj

.body92:                                          ; preds = %bb.ie, %bb.cj, %.thread248
  %.pn65 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.cj ], [ %.pn63251, %.thread248 ], [ %i.sk, %bb.ie ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24631)
  call void @llvm.experimental.noalias.scope.decl(metadata !24632)
  %i.it = load ptr, ptr %i.bz, align 8, !alias.scope !24633, !nonnull !4, !noundef !4
  %i.iu = atomicrmw add ptr %i.it, i64 -1 release, align 8, !noalias !24633
  %i.iv = icmp eq i64 %i.iu, 1
  br i1 %i.iv, label %bb.cf, label %.body

bb.cf:                                            ; preds = %.body92
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm15RotaryEmbeddingE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bz) #20
          to label %.body unwind label %bb.ij

bb.cg:                                            ; preds = %bb.ce
  %i.iw = load i64, ptr %i.br, align 8, !range !10, !noundef !4
  %i.ix = trunc nuw i64 %i.iw to i1
  %i.iy = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.iz = load i64, ptr %i.iy, align 8, !range !11, !noundef !4 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  br i1 %i.ix, label %bb.ch, label %bb.ci, !prof !12

bb.ch:                                            ; preds = %bb.cg
  %i.jb = load i64, ptr %i.ja, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.iz, i64 %i.jb) #24
          to label %bb.ik unwind label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  %i.jc = load ptr, ptr %i.ja, align 8, !nonnull !4, !noundef !4
  %i.jd = icmp ule i64 %i.is, %i.iz
  call void @llvm.assume(i1 %i.jd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  store i64 %i.iz, ptr %i.by, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  store ptr %i.jc, ptr %i.je, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 3 uses
  store i64 0, ptr %i.jf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 6)
          to label %.preheader unwind label %.thread253

.preheader:                                       ; preds = %bb.ci
  %.not = icmp eq i64 %i.is, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.jh = load double, ptr %i.jg, align 8         ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.13.16..sroa.511.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.14.16..sroa.511.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.15.16..sroa.511.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 33
  %.sroa.15.i.sroa.6.0..sroa.15.16..sroa.511.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %.sroa.15.i.sroa.7.0..sroa.15.16..sroa.511.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %.sroa.15.i.sroa.9.0..sroa.15.16..sroa.511.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %.sroa.15.i.sroa.10.0..sroa.15.16..sroa.511.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %.sroa.7196.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 25
  %.sroa.4.0..sroa_idx.i83 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 5 uses
  %.sroa.5195.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.6.0..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.jj = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.511.0..sroa_idx.i79.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.13126.16..sroa.511.0..sroa_idx.i79.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.14128.16..sroa.511.0..sroa_idx.i79.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.15130.16..sroa.511.0..sroa_idx.i79.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 33
  %.sroa.15130.i.sroa.6.0..sroa.15130.16..sroa.511.0..sroa_idx.i79.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %.sroa.15130.i.sroa.7.0..sroa.15130.16..sroa.511.0..sroa_idx.i79.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %.sroa.15130.i.sroa.9.0..sroa.15130.16..sroa.511.0..sroa_idx.i79.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %.sroa.15130.i.sroa.10.0..sroa.15130.16..sroa.511.0..sroa_idx.i79.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %.sroa.7214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 25 ; 2 uses
  %.sroa.4211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 5 uses
  %.sroa.5212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.6213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jl = load i64, ptr %i.jk, align 8            ; 4 uses
  %i.jm = mul i64 %i.jl, %i.cn                    ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.jp = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 6 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.js = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 6 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.jv = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 6 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.jy = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.kc = icmp eq i64 %i.jl, 0
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.421.sroa.4.0..sroa.421.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.sroa.421.sroa.5.0..sroa.421.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %.sroa.421.sroa.6.0..sroa.421.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 2 uses
  %.sroa.421.sroa.7.0..sroa.421.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %.sroa.421.sroa.8.0..sroa.421.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %.sroa.421.sroa.9.0..sroa.421.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %.sroa.421.sroa.10.0..sroa.421.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %.sroa.421.sroa.11.0..sroa.421.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %.sroa.522.sroa.4.0..sroa.522.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %.sroa.522.sroa.5.0..sroa.522.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  %.sroa.522.sroa.6.0..sroa.522.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val75.i = load i64, ptr %i.kd, align 8        ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.649.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.23.24..sroa.649.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.24.24..sroa.649.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.25.24..sroa.649.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.26.i.sroa.7.0..sroa.26.24..sroa.649.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %.sroa.26.i.sroa.8.0..sroa.26.24..sroa.649.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.kg = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 6 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.661.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.23.24..sroa.661.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.24.24..sroa.661.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.25.24..sroa.661.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.26.i.sroa.7.0..sroa.26.24..sroa.661.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.26.i.sroa.8.0..sroa.26.24..sroa.661.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.kj = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 6 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.673.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.23.24..sroa.673.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.24.24..sroa.673.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.25.24..sroa.673.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.26.i.sroa.7.0..sroa.26.24..sroa.673.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.26.i.sroa.8.0..sroa.26.24..sroa.673.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.44.168..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.44, i64 88
  %.sroa.011.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.011.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.sroa.011.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %.sroa.011.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %.sroa.011.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %.sroa.011.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %.sroa.011.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %.sroa.011.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %.sroa.011.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 80
  %.sroa.011.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 200
  %.sroa.7.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.bu, i64 224
  %.sroa.814.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.bu, i64 225
  br label %bb.ck

.thread253:                                       ; preds = %bb.cu, %bb.ci
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread248

bb.cj:                                            ; preds = %bb.ce, %bb.ch, %bb.if, %bb.cs
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body92

._crit_edge:                                      ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm5LayerE8push_mutBL_.exit, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.618.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15143)
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.kn = load double, ptr %i.km, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 4)
          to label %bb.cl unwind label %.thread.loopexit.split-lp.loopexit.split-lp

bb.ck:                                            ; preds = %.lr.ph, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm5LayerE8push_mutBL_.exit
  %.sroa.046.01196 = phi i64 [ 0, %.lr.ph ], [ %i.ko, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm5LayerE8push_mutBL_.exit ] ; 2 uses
  %i.ko = add nuw i64 %.sroa.046.01196, 1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.44)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.45)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.52)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  %i.kp = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4
  %i.kq = atomicrmw add ptr %i.kp, i64 1 monotonic, align 8
  %i.kr = icmp slt i64 %i.kq, 0
  br i1 %i.kr, label %bb.cw, label %bb.cv

.body79:                                          ; preds = %.thread.loopexit.split-lp.loopexit.split-lp, %bb.ih, %bb.ii, %bb.ib, %bb.hx, %bb.hw, %bb.ha, %bb.cm
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp3789, %.thread.loopexit.split-lp.loopexit.split-lp ], [ %i.sf, %bb.ib ], [ %.pn73.i, %bb.hx ], [ %i.sp, %bb.ih ], [ %i.ks, %bb.cm ], [ %.pn73.i, %bb.ha ], [ %.pn73.i, %bb.hw ], [ %i.sp, %bb.ii ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.bx) #22
          to label %.thread248 unwind label %bb.ij

bb.cl:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !24634
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE3getTjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bt, i64 noundef %i.cm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @213, i64 noundef 5)
          to label %bb.cn unwind label %bb.cm, !noalias !24635

bb.cm:                                            ; preds = %bb.cl
  %i.ks = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bt) #22
          to label %.body79 unwind label %bb.cq, !noalias !24635

bb.cn:                                            ; preds = %bb.cl
  %i.kt = load i64, ptr %i.al, align 8, !range !13, !noalias !24634, !noundef !4 ; 2 uses
  %.not.i77 = icmp eq i64 %i.kt, -1               ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8, !noalias !24634 ; 2 uses
  br i1 %.not.i77, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.11.16.copyload = load ptr, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !24636
  %.sroa.13.16..sroa.511.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %.sroa.13.16.copyload = load double, ptr %.sroa.13.16..sroa.511.0..sroa_idx.i.sroa_idx, align 8, !noalias !24636
  %.sroa.14.16..sroa.511.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %.sroa.14.16.copyload = load i8, ptr %.sroa.14.16..sroa.511.0..sroa_idx.i.sroa_idx, align 8, !noalias !24636
  %.sroa.15143.16..sroa.511.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.15143, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.15143.16..sroa.511.0..sroa_idx.i.sroa_idx, i64 47, i1 false), !noalias !24636
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cn, %bb.co
  %.sroa.14.0 = phi i8 [ %.sroa.14.16.copyload, %bb.co ], [ 0, %bb.cn ] ; 2 uses
  %.sroa.13.0 = phi double [ %.sroa.13.16.copyload, %bb.co ], [ %i.kn, %bb.cn ] ; 2 uses
  %.sroa.11.0 = phi ptr [ %.sroa.11.16.copyload, %bb.co ], [ null, %bb.cn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !24634
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bt)
          to label %_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm8rms_norm.exit unwind label %.thread.loopexit.split-lp.loopexit.split-lp

bb.cq:                                            ; preds = %bb.cm
  %i.kw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !noalias !24635
  unreachable

_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm8rms_norm.exit: ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.618.sroa.10, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15143, i64 7, i1 false)
  br i1 %.not.i77, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm8rms_norm.exit
  %.sroa.15143.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.15143, i64 7
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.559.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(40) %.sroa.15143.40..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15143)
  %.sroa.458.sroa.7.0..sroa.458.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.458.sroa.7.0..sroa.458.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.618.sroa.10, i64 7, i1 false)
  store i64 %i.kt, ptr %0, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kv, ptr %.sroa.458.0..sroa_idx, align 8
  %.sroa.458.sroa.4.0..sroa.458.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.11.0, ptr %.sroa.458.sroa.4.0..sroa.458.0..sroa_idx.sroa_idx, align 8
  %.sroa.458.sroa.5.0..sroa.458.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sroa.13.0, ptr %.sroa.458.sroa.5.0..sroa.458.0..sroa_idx.sroa_idx, align 8
  %.sroa.458.sroa.6.0..sroa.458.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.14.0, ptr %.sroa.458.sroa.6.0..sroa.458.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.618.sroa.10)
  br label %bb.cu

bb.cs:                                            ; preds = %_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm8rms_norm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15143)
  %.sroa.025.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.025.sroa.8.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.618.sroa.10, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.618.sroa.10)
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kx, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false)
  %i.ky = load ptr, ptr %i.cc, align 8, !nonnull !4, !noundef !4
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 25
  %i.la = load i8, ptr %i.kz, align 1, !range !17, !noundef !4
  %i.lb = load i8, ptr %i.ca, align 8, !range !14, !noundef !4
  %.sroa.025.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.kv, ptr %.sroa.025.sroa.4.0..sroa_idx, align 8
  %.sroa.025.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.11.0, ptr %.sroa.025.sroa.5.0..sroa_idx, align 8
  %.sroa.025.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %.sroa.13.0, ptr %.sroa.025.sroa.6.0..sroa_idx, align 8
  %.sroa.025.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %.sroa.14.0, ptr %.sroa.025.sroa.7.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %i.la, ptr %.sroa.526.0..sroa_idx, align 8
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 %i.lb, ptr %.sroa.627.0..sroa_idx, align 1
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.bx)
          to label %bb.ct unwind label %bb.cj

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.experimental.noalias.scope.decl(metadata !24637)
  call void @llvm.experimental.noalias.scope.decl(metadata !24638)
  %i.lc = load ptr, ptr %i.bz, align 8, !alias.scope !24639, !nonnull !4, !noundef !4
  %i.ld = atomicrmw add ptr %i.lc, i64 -1 release, align 8, !noalias !24639
  %i.le = icmp eq i64 %i.ld, 1
  br i1 %i.le, label %.invoke, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm15RotaryEmbeddingEEB1f_.exit95

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm15RotaryEmbeddingEEB1f_.exit95: ; preds = %.invoke, %bb.ct, %bb.bz, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm5LayerEEB1e_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %2)
  ret void

bb.cu:                                            ; preds = %.loopexit313, %bb.cr
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.bx)
          to label %bb.id unwind label %.thread253

bb.cv:                                            ; preds = %bb.ck
  %i.lf = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4 ; 3 uses
  store ptr %i.lf, ptr %i.bw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixjECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bx, i64 noundef %.sroa.046.01196)
          to label %bb.cx unwind label %bb.ih

bb.cw:                                            ; preds = %bb.ck
  call void @llvm.trap()
  unreachable

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr %i.lf, ptr %i.ak, align 8, !noalias !24640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !24640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !24640
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 8)
          to label %bb.cy unwind label %.loopexit, !noalias !24641

.body.i:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.hn, %bb.hm, %bb.hl, %.body85.i, %bb.cz
  %.sroa.032.0.i = phi i8 [ %.sroa.032.2.i, %.body85.i ], [ 1, %bb.cz ], [ %.sroa.032.6.i, %bb.hl ], [ %.sroa.032.6.i, %bb.hn ], [ %.sroa.032.6.i, %bb.hm ], [ 1, %.loopexit ], [ %.sroa.032.6.i, %.loopexit.split-lp ]
  %.pn71.i = phi { ptr, i32 } [ %.pn69.i, %.body85.i ], [ %i.lg, %bb.cz ], [ %i.ri, %bb.hl ], [ %i.ri, %bb.hn ], [ %i.ri, %bb.hm ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bv) #22
          to label %bb.ha unwind label %bb.hj, !noalias !24641

.loopexit:                                        ; preds = %bb.cx, %bb.dc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp:                               ; preds = %bb.hp
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !24642
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE3getTjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ai, i64 noundef %i.cm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @213, i64 noundef 5)
          to label %bb.da unwind label %bb.cz, !noalias !24643

bb.cz:                                            ; preds = %bb.cy
  %i.lg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ai) #22
          to label %.body.i unwind label %bb.dd, !noalias !24643

bb.da:                                            ; preds = %bb.cy
  %i.lh = load i64, ptr %i.ab, align 8, !range !13, !noalias !24642, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.lh, -1               ; 2 uses
  %i.li = load ptr, ptr %i.ji, align 8, !noalias !24642 ; 2 uses
  br i1 %.not.i.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %.sroa.11.16.copyload.i = load ptr, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !24644
  %.sroa.13.16.copyload.i = load double, ptr %.sroa.13.16..sroa.511.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24644
  %.sroa.14.16.copyload.i = load i8, ptr %.sroa.14.16..sroa.511.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24644
  %.sroa.15.i.sroa.0.0.copyload = load i56, ptr %.sroa.15.16..sroa.511.0..sroa_idx.i.sroa_idx.i, align 1, !noalias !24644
  %.sroa.15.i.sroa.6.0.copyload = load ptr, ptr %.sroa.15.i.sroa.6.0..sroa.15.16..sroa.511.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !24644
  %i.lj = load <2 x ptr>, ptr %.sroa.15.i.sroa.7.0..sroa.15.16..sroa.511.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !24644
  %.sroa.15.i.sroa.9.0.copyload = load ptr, ptr %.sroa.15.i.sroa.9.0..sroa.15.16..sroa.511.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !24644
  %.sroa.15.i.sroa.10.0.copyload = load i64, ptr %.sroa.15.i.sroa.10.0..sroa.15.16..sroa.511.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !24644
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.sroa.15.i.sroa.0.0 = phi i56 [ undef, %bb.da ], [ %.sroa.15.i.sroa.0.0.copyload, %bb.db ] ; 2 uses
  %.sroa.15.i.sroa.6.0 = phi ptr [ undef, %bb.da ], [ %.sroa.15.i.sroa.6.0.copyload, %bb.db ]
  %.sroa.15.i.sroa.9.0 = phi ptr [ undef, %bb.da ], [ %.sroa.15.i.sroa.9.0.copyload, %bb.db ]
  %.sroa.15.i.sroa.10.0 = phi i64 [ undef, %bb.da ], [ %.sroa.15.i.sroa.10.0.copyload, %bb.db ]
  %.sroa.14.0.i = phi i8 [ 0, %bb.da ], [ %.sroa.14.16.copyload.i, %bb.db ] ; 2 uses
  %.sroa.13.0.i = phi double [ %i.jh, %bb.da ], [ %.sroa.13.16.copyload.i, %bb.db ] ; 2 uses
  %.sroa.11.0.i = phi ptr [ null, %bb.da ], [ %.sroa.11.16.copyload.i, %bb.db ] ; 2 uses
  %3 = phi <2 x ptr> [ undef, %bb.da ], [ %i.lj, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !24642
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ai)
          to label %_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm8rms_norm.exit.i unwind label %.loopexit, !noalias !24641

bb.dd:                                            ; preds = %bb.cz
  %i.lk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !noalias !24643
  unreachable

_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm8rms_norm.exit.i: ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !24640
  br i1 %.not.i.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm8rms_norm.exit.i
  %.sroa.25.1.insert.ext = zext i56 %.sroa.15.i.sroa.0.0 to i64
  %.sroa.25.1.insert.shift = shl nuw i64 %.sroa.25.1.insert.ext, 8
  %i.ll = bitcast double %.sroa.13.0.i to i64
  %.sroa.25.0.insert.ext = zext i8 %.sroa.14.0.i to i64
  %.sroa.25.0.insert.insert = or disjoint i64 %.sroa.25.1.insert.shift, %.sroa.25.0.insert.ext
  %i.lm = inttoptr i64 %.sroa.25.0.insert.insert to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !24640
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bv)
          to label %bb.hu unwind label %.loopexit.split-lp309, !noalias !24641

bb.df:                                            ; preds = %_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm8rms_norm.exit.i
  store i56 %.sroa.15.i.sroa.0.0, ptr %.sroa.7196.0..sroa_idx.i, align 1, !noalias !24640
  store ptr %i.li, ptr %i.aj, align 8, !noalias !24640
  store ptr %.sroa.11.0.i, ptr %.sroa.4.0..sroa_idx.i83, align 8, !noalias !24640
  store double %.sroa.13.0.i, ptr %.sroa.5195.0..sroa_idx.i, align 8, !noalias !24640
  store i8 %.sroa.14.0.i, ptr %.sroa.6.0..sroa_idx.i84, align 8, !noalias !24640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !24640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !24640
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 7)
          to label %bb.dg unwind label %.loopexit283, !noalias !24641

.body85.i:                                        ; preds = %.loopexit283, %.loopexit.split-lp284, %bb.hf, %bb.he, %bb.hd, %.body90.thread.i, %bb.dh
  %.sroa.032.2.i = phi i8 [ 0, %.body90.thread.i ], [ 1, %bb.dh ], [ 0, %bb.hd ], [ 0, %bb.hf ], [ 0, %bb.he ], [ 1, %.loopexit283 ], [ 0, %.loopexit.split-lp284 ]
  %.pn69.i = phi { ptr, i32 } [ %.pn.i85, %.body90.thread.i ], [ %i.ln, %bb.dh ], [ %i.qu, %bb.hd ], [ %i.qu, %bb.hf ], [ %i.qu, %bb.he ], [ %lpad.loopexit285, %.loopexit283 ], [ %lpad.loopexit.split-lp286, %.loopexit.split-lp284 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm7RmsNormECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aj) #22
          to label %.body.i unwind label %bb.hj, !noalias !24641

.loopexit283:                                     ; preds = %bb.df, %bb.dk
  %lpad.loopexit285 = landingpad { ptr, i32 }
          cleanup
  br label %.body85.i

.loopexit.split-lp284:                            ; preds = %bb.hh
  %lpad.loopexit.split-lp286 = landingpad { ptr, i32 }
          cleanup
  br label %.body85.i

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !24645
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE3getTjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ag, i64 noundef %i.cm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @213, i64 noundef 5)
          to label %bb.di unwind label %bb.dh, !noalias !24646

bb.dh:                                            ; preds = %bb.dg
  %i.ln = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ag) #22
          to label %.body85.i unwind label %bb.dl, !noalias !24646

bb.di:                                            ; preds = %bb.dg
  %i.lo = load i64, ptr %i.aa, align 8, !range !13, !noalias !24645, !noundef !4 ; 2 uses
  %.not.i76.i = icmp eq i64 %i.lo, -1             ; 2 uses
  %i.lp = load ptr, ptr %i.jj, align 8, !noalias !24645 ; 2 uses
  br i1 %.not.i76.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %.sroa.11124.16.copyload.i = load ptr, ptr %.sroa.511.0..sroa_idx.i79.i, align 8, !noalias !24647
  %.sroa.13126.16.copyload.i = load double, ptr %.sroa.13126.16..sroa.511.0..sroa_idx.i79.sroa_idx.i, align 8, !noalias !24647
  %.sroa.14128.16.copyload.i = load i8, ptr %.sroa.14128.16..sroa.511.0..sroa_idx.i79.sroa_idx.i, align 8, !noalias !24647
  %.sroa.15130.i.sroa.0.0.copyload = load i56, ptr %.sroa.15130.16..sroa.511.0..sroa_idx.i79.sroa_idx.i, align 1, !noalias !24647
  %.sroa.15130.i.sroa.6.0.copyload = load ptr, ptr %.sroa.15130.i.sroa.6.0..sroa.15130.16..sroa.511.0..sroa_idx.i79.sroa_idx.i.sroa_idx, align 8, !noalias !24647
  %i.lq = load <2 x ptr>, ptr %.sroa.15130.i.sroa.7.0..sroa.15130.16..sroa.511.0..sroa_idx.i79.sroa_idx.i.sroa_idx, align 8, !noalias !24647
  %.sroa.15130.i.sroa.9.0.copyload = load ptr, ptr %.sroa.15130.i.sroa.9.0..sroa.15130.16..sroa.511.0..sroa_idx.i79.sroa_idx.i.sroa_idx, align 8, !noalias !24647
  %.sroa.15130.i.sroa.10.0.copyload = load i64, ptr %.sroa.15130.i.sroa.10.0..sroa.15130.16..sroa.511.0..sroa_idx.i79.sroa_idx.i.sroa_idx, align 8, !noalias !24647
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.sroa.15130.i.sroa.0.0 = phi i56 [ undef, %bb.di ], [ %.sroa.15130.i.sroa.0.0.copyload, %bb.dj ] ; 2 uses
  %.sroa.15130.i.sroa.6.0 = phi ptr [ undef, %bb.di ], [ %.sroa.15130.i.sroa.6.0.copyload, %bb.dj ]
  %.sroa.15130.i.sroa.9.0 = phi ptr [ undef, %bb.di ], [ %.sroa.15130.i.sroa.9.0.copyload, %bb.dj ]
  %.sroa.15130.i.sroa.10.0 = phi i64 [ undef, %bb.di ], [ %.sroa.15130.i.sroa.10.0.copyload, %bb.dj ]
  %.sroa.14128.0.i = phi i8 [ 0, %bb.di ], [ %.sroa.14128.16.copyload.i, %bb.dj ] ; 2 uses
  %.sroa.13126.0.i = phi double [ %i.jh, %bb.di ], [ %.sroa.13126.16.copyload.i, %bb.dj ] ; 2 uses
  %.sroa.11124.0.i = phi ptr [ null, %bb.di ], [ %.sroa.11124.16.copyload.i, %bb.dj ] ; 2 uses
  %4 = phi <2 x ptr> [ undef, %bb.di ], [ %i.lq, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !24645
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ag)
          to label %_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm8rms_norm.exit87.i unwind label %.loopexit283, !noalias !24641

bb.dl:                                            ; preds = %bb.dh
  %i.lr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !noalias !24646
  unreachable

_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm8rms_norm.exit87.i: ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !24640
  br i1 %.not.i76.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm8rms_norm.exit87.i
  %.sroa.25.1.insert.ext133 = zext i56 %.sroa.15130.i.sroa.0.0 to i64
  %.sroa.25.1.insert.shift134 = shl nuw i64 %.sroa.25.1.insert.ext133, 8
  %i.ls = bitcast double %.sroa.13126.0.i to i64
  %.sroa.25.0.insert.ext128 = zext i8 %.sroa.14128.0.i to i64
  %.sroa.25.0.insert.insert130 = or disjoint i64 %.sroa.25.1.insert.shift134, %.sroa.25.0.insert.ext128
  %i.lt = inttoptr i64 %.sroa.25.0.insert.insert130 to ptr
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm7RmsNormECs1dZk1kIfPhr_19candle_transformers.exit.i

bb.dn:                                            ; preds = %_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm8rms_norm.exit87.i
  store i56 %.sroa.15130.i.sroa.0.0, ptr %.sroa.7214.0..sroa_idx.i, align 1, !noalias !24640
  store ptr %i.lp, ptr %i.ah, align 8, !noalias !24640
  store ptr %.sroa.11124.0.i, ptr %.sroa.4211.0..sroa_idx.i, align 8, !noalias !24640
  store double %.sroa.13126.0.i, ptr %.sroa.5212.0..sroa_idx.i, align 8, !noalias !24640
  store i8 %.sroa.14128.0.i, ptr %.sroa.6213.0..sroa_idx.i, align 8, !noalias !24640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !24640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !24640
  %i.lu = load ptr, ptr %i.ak, align 8, !noalias !24640, !nonnull !4, !noundef !4 ; 3 uses
  store ptr %i.lu, ptr %i.ae, align 8, !noalias !24640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !24640
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 4)
          to label %bb.do unwind label %bb.hr, !noalias !24641

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !24640
  store ptr %i.lu, ptr %i.z, align 8, !noalias !24648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !24648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !24648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !24648
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 6)
          to label %bb.dq unwind label %.loopexit.split-lp289.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !24649

.body133.i.i:                                     ; preds = %.loopexit.split-lp289.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp294, %bb.fi, %bb.fh, %bb.fg, %bb.ew
  %.sroa.060.0.i.i = phi i1 [ true, %bb.fg ], [ true, %.loopexit.split-lp294 ], [ false, %bb.ew ], [ true, %bb.fi ], [ true, %bb.fh ], [ true, %.loopexit.split-lp289.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn120.i.i = phi { ptr, i32 } [ %i.nw, %bb.fg ], [ %.pn118.ph.i.i, %.loopexit.split-lp294 ], [ %i.nb, %bb.ew ], [ %i.nw, %bb.fi ], [ %i.nw, %bb.fh ], [ %lpad.loopexit.split-lp3778, %.loopexit.split-lp289.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ad) #22
          to label %bb.eq unwind label %bb.er, !noalias !24649

.loopexit.split-lp289.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dq, %bb.do, %bb.fk
  %lpad.loopexit.split-lp3778 = landingpad { ptr, i32 }
          cleanup
  br label %.body133.i.i

bb.dp:                                            ; preds = %bb.eo
  unreachable

bb.dq:                                            ; preds = %bb.do
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn6linear8linear_b(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.x, i64 noundef %i.cm, i64 noundef %i.cm, i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.w)
          to label %bb.dr unwind label %.loopexit.split-lp289.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !24649

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !24648
  %i.lv = load i64, ptr %i.x, align 8, !range !13, !noalias !24648, !noundef !4 ; 2 uses
  %.not.i88.i = icmp eq i64 %i.lv, -1
  %i.lw = load ptr, ptr %i.jn, align 8, !noalias !24648 ; 2 uses
  %i.lx = load ptr, ptr %i.jo, align 8, !noalias !24648 ; 2 uses
  br i1 %.not.i88.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %.sroa.668.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.27.32.copyload.i = load ptr, ptr %.sroa.668.0..sroa_idx.i.i, align 8, !noalias !24650
  %.sroa.32.32..sroa.668.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.32.32.copyload.i = load ptr, ptr %.sroa.32.32..sroa.668.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24650
  %.sroa.33.32..sroa.668.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %.sroa.33.32.copyload.i = load ptr, ptr %.sroa.33.32..sroa.668.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24650
  %.sroa.34.32..sroa.668.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %5 = load <2 x ptr>, ptr %.sroa.34.32..sroa.668.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24650
  %.sroa.36.32..sroa.668.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %.sroa.36.32.copyload.i = load ptr, ptr %.sroa.36.32..sroa.668.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24650
  %.sroa.37.32..sroa.668.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %.sroa.37.32.copyload.i = load i64, ptr %.sroa.37.32..sroa.668.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !24648
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit135.i.i

bb.dt:                                            ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !24648
  store ptr %i.lw, ptr %i.y, align 8, !noalias !24648
  store ptr %i.lx, ptr %i.jp, align 8, !noalias !24648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !24648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !24648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !24648
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 6)
          to label %bb.du unwind label %.loopexit.split-lp294.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !24649

.loopexit.split-lp294.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.du, %bb.dt, %bb.fc
  %lpad.loopexit.split-lp3780 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp294

bb.du:                                            ; preds = %bb.dt
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn6linear8linear_b(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.u, i64 noundef %i.cm, i64 noundef %i.jm, i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.t)
          to label %bb.dv unwind label %.loopexit.split-lp294.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !24649

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !24648
  %i.ly = load i64, ptr %i.u, align 8, !range !13, !noalias !24648, !noundef !4 ; 2 uses
  %.not112.i.i = icmp eq i64 %i.ly, -1
  %i.lz = load ptr, ptr %i.jq, align 8, !noalias !24648 ; 2 uses
  %i.ma = load ptr, ptr %i.jr, align 8, !noalias !24648 ; 2 uses
  br i1 %.not112.i.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %.sroa.680.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.27.32.copyload136.i = load ptr, ptr %.sroa.680.0..sroa_idx.i.i, align 8, !noalias !24650
  %.sroa.32.32..sroa.680.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.32.32.copyload140.i = load ptr, ptr %.sroa.32.32..sroa.680.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24650
  %.sroa.33.32..sroa.680.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.33.32.copyload144.i = load ptr, ptr %.sroa.33.32..sroa.680.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24650
  %.sroa.34.32..sroa.680.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %6 = load <2 x ptr>, ptr %.sroa.34.32..sroa.680.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24650
  %.sroa.36.32..sroa.680.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %.sroa.36.32.copyload156.i = load ptr, ptr %.sroa.36.32..sroa.680.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24650
  %.sroa.37.32..sroa.680.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %.sroa.37.32.copyload160.i = load i64, ptr %.sroa.37.32..sroa.680.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !24648
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit129.i.i

bb.dx:                                            ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !24648
  store ptr %i.lz, ptr %i.v, align 8, !noalias !24648
  store ptr %i.ma, ptr %i.js, align 8, !noalias !24648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !24648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !24648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !24648
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 6)
          to label %bb.dy unwind label %.loopexit.split-lp299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !24649

.loopexit.split-lp299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dy, %bb.dx, %bb.ek
  %lpad.loopexit.split-lp3783 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp299

bb.dy:                                            ; preds = %bb.dx
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn6linear8linear_b(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.r, i64 noundef %i.cm, i64 noundef %i.jm, i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.q)
          to label %bb.dz unwind label %.loopexit.split-lp299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !24649

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !24648
  %i.mb = load i64, ptr %i.r, align 8, !range !13, !noalias !24648, !noundef !4 ; 2 uses
  %.not113.i.i = icmp eq i64 %i.mb, -1
  %i.mc = load ptr, ptr %i.jt, align 8, !noalias !24648 ; 2 uses
  %i.md = load ptr, ptr %i.ju, align 8, !noalias !24648 ; 2 uses
  br i1 %.not113.i.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %.sroa.692.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.27.32.copyload137.i = load ptr, ptr %.sroa.692.0..sroa_idx.i.i, align 8, !noalias !24650
  %.sroa.32.32..sroa.692.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.32.32.copyload141.i = load ptr, ptr %.sroa.32.32..sroa.692.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24650
  %.sroa.33.32..sroa.692.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.33.32.copyload145.i = load ptr, ptr %.sroa.33.32..sroa.692.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24650
  %.sroa.34.32..sroa.692.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %7 = load <2 x ptr>, ptr %.sroa.34.32..sroa.692.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24650
  %.sroa.36.32..sroa.692.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %.sroa.36.32.copyload157.i = load ptr, ptr %.sroa.36.32..sroa.692.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24650
  %.sroa.37.32..sroa.692.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %.sroa.37.32.copyload161.i = load i64, ptr %.sroa.37.32..sroa.692.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !24648
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i.i

bb.eb:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !24648
  store ptr %i.mc, ptr %i.s, align 8, !noalias !24648
  store ptr %i.md, ptr %i.jv, align 8, !noalias !24648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !24648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !24648
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 11)
          to label %bb.ec unwind label %bb.fe, !noalias !24649

bb.ec:                                            ; preds = %bb.eb
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn6linear8linear_b(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.p, i64 noundef %i.cm, i64 noundef %i.cm, i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.o)
          to label %bb.ed unwind label %bb.fe, !noalias !24649

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !24648
  %i.me = load i64, ptr %i.p, align 8, !range !13, !noalias !24648, !noundef !4 ; 4 uses
  %.not114.i.i = icmp eq i64 %i.me, -1
  %i.mf = load ptr, ptr %i.jw, align 8, !noalias !24648 ; 5 uses
  %i.mg = load ptr, ptr %i.jx, align 8, !noalias !24648 ; 5 uses
  br i1 %.not114.i.i, label %bb.em, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %.sroa.6104.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.27.32.copyload138.i = load ptr, ptr %.sroa.6104.0..sroa_idx.i.i, align 8, !noalias !24650 ; 3 uses
  %.sroa.32.32..sroa.6104.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.32.32.copyload142.i = load ptr, ptr %.sroa.32.32..sroa.6104.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24650 ; 3 uses
  %.sroa.33.32..sroa.6104.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.33.32.copyload146.i = load ptr, ptr %.sroa.33.32..sroa.6104.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24650 ; 3 uses
  %.sroa.34.32..sroa.6104.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %8 = load <2 x ptr>, ptr %.sroa.34.32..sroa.6104.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24650 ; 3 uses
  %.sroa.36.32..sroa.6104.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %.sroa.36.32.copyload158.i = load ptr, ptr %.sroa.36.32..sroa.6104.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24650 ; 3 uses
  %.sroa.37.32..sroa.6104.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %.sroa.37.32.copyload162.i = load i64, ptr %.sroa.37.32..sroa.6104.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24650 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !24648
  call void @llvm.experimental.noalias.scope.decl(metadata !24651)
  call void @llvm.experimental.noalias.scope.decl(metadata !24652)
  call void @llvm.experimental.noalias.scope.decl(metadata !24653)
  call void @llvm.experimental.noalias.scope.decl(metadata !24654)
  %i.mh = load ptr, ptr %i.s, align 8, !alias.scope !24655, !noalias !24648, !nonnull !4, !noundef !4
  %i.mi = atomicrmw add ptr %i.mh, i64 -1 release, align 8, !noalias !24656
  %i.mj = icmp eq i64 %i.mi, 1
  br i1 %i.mj, label %bb.ef, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i

bb.ef:                                            ; preds = %bb.ee
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i unwind label %bb.eg, !noalias !24649

bb.eg:                                            ; preds = %bb.ef
  %i.mk = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24657)
  %i.ml = load ptr, ptr %i.jv, align 8, !alias.scope !24658, !noalias !24648, !noundef !4 ; 2 uses
  %i.mm = icmp eq ptr %i.ml, null
  br i1 %i.mm, label %.loopexit.split-lp299, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.mn = atomicrmw add ptr %i.ml, i64 -1 release, align 8, !noalias !24659
  %i.mo = icmp eq i64 %i.mn, 1
  br i1 %i.mo, label %bb.ei, label %.loopexit.split-lp299

bb.ei:                                            ; preds = %bb.eh
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jv) #20
          to label %.loopexit.split-lp299 unwind label %bb.el, !noalias !24649

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i: ; preds = %bb.ef, %bb.ee
  call void @llvm.experimental.noalias.scope.decl(metadata !24660)
  %i.mp = load ptr, ptr %i.jv, align 8, !alias.scope !24661, !noalias !24648, !noundef !4 ; 2 uses
  %i.mq = icmp eq ptr %i.mp, null
  br i1 %i.mq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i.i, label %bb.ej

bb.ej:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i
  %i.mr = atomicrmw add ptr %i.mp, i64 -1 release, align 8, !noalias !24662
  %i.ms = icmp eq i64 %i.mr, 1
  br i1 %i.ms, label %bb.ek, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i.i

bb.ek:                                            ; preds = %bb.ej
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jv) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i.i unwind label %.loopexit.split-lp299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !24649

bb.el:                                            ; preds = %bb.ei
  %i.mt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !noalias !24649
  unreachable

bb.em:                                            ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !24648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !24648
  %i.mu = load ptr, ptr %i.y, align 8, !noalias !24648, !nonnull !4, !noundef !4 ; 2 uses
  %i.mv = load ptr, ptr %i.jp, align 8, !noalias !24648, !noundef !4 ; 2 uses
  store ptr %i.mu, ptr %i.n, align 8, !noalias !24648
  store ptr %i.mv, ptr %i.jy, align 8, !noalias !24648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !24648
  %i.mw = load ptr, ptr %i.v, align 8, !noalias !24648, !nonnull !4, !noundef !4 ; 2 uses
  %i.mx = load ptr, ptr %i.js, align 8, !noalias !24648, !noundef !4 ; 2 uses
  store ptr %i.mw, ptr %i.m, align 8, !noalias !24648
  store ptr %i.mx, ptr %i.jz, align 8, !noalias !24648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !24648
  %i.my = load ptr, ptr %i.s, align 8, !noalias !24648, !nonnull !4, !noundef !4 ; 2 uses
  %i.mz = load ptr, ptr %i.jv, align 8, !noalias !24648, !noundef !4 ; 2 uses
  store ptr %i.my, ptr %i.l, align 8, !noalias !24648
  store ptr %i.mz, ptr %i.ka, align 8, !noalias !24648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !24648
  store ptr %i.mf, ptr %i.k, align 8, !noalias !24648
  store ptr %i.mg, ptr %i.kb, align 8, !noalias !24648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !24648
  %i.na = load ptr, ptr %i.z, align 8, !noalias !24648, !nonnull !4, !noundef !4 ; 3 uses
  store ptr %i.na, ptr %i.j, align 8, !noalias !24648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !24648
  store ptr null, ptr %i.i, align 8, !noalias !24648
  br i1 %i.kc, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !24648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !24648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !24648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !24648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !24648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !24648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !24648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !24648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !24648
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ad)
          to label %bb.fr unwind label %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !24641

bb.eo:                                            ; preds = %bb.em
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #24
          to label %bb.dp unwind label %bb.ep, !noalias !24649

bb.ep:                                            ; preds = %bb.eo
  %i.nb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorBY_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16) %i.i) #22
          to label %bb.es unwind label %bb.er, !noalias !24649

bb.eq:                                            ; preds = %.body133.i.i
  br i1 %.sroa.060.0.i.i, label %bb.fo, label %.body90.thread.i

bb.er:                                            ; preds = %bb.fp, %.loopexit.split-lp294, %.loopexit.split-lp299, %bb.fe, %bb.ew, %bb.ev, %bb.eu, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm15RotaryEmbeddingEEB1f_.exit.i.i, %bb.et, %bb.ep, %.body133.i.i
  %i.nc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !noalias !24649
  unreachable

bb.es:                                            ; preds = %bb.ep
  %i.nd = atomicrmw add ptr %i.na, i64 -1 release, align 8, !noalias !24663
  %i.ne = icmp eq i64 %i.nd, 1
  br i1 %i.ne, label %bb.et, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm15RotaryEmbeddingEEB1f_.exit.i.i

bb.et:                                            ; preds = %bb.es
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm15RotaryEmbeddingE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm15RotaryEmbeddingEEB1f_.exit.i.i unwind label %bb.er, !noalias !24649

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm15RotaryEmbeddingEEB1f_.exit.i.i: ; preds = %bb.et, %bb.es
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16) %i.k) #22
          to label %bb.eu unwind label %bb.er, !noalias !24649

bb.eu:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm15RotaryEmbeddingEEB1f_.exit.i.i
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16) %i.l) #22
          to label %bb.ev unwind label %bb.er, !noalias !24649

bb.ev:                                            ; preds = %bb.eu
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16) %i.m) #22
          to label %bb.ew unwind label %bb.er, !noalias !24649

bb.ew:                                            ; preds = %bb.ev
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16) %i.n) #22
          to label %.body133.i.i unwind label %bb.er, !noalias !24649

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i.i: ; preds = %bb.ek, %bb.ej, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i, %bb.ea
  %.sroa.37.2.i = phi i64 [ %.sroa.37.32.copyload162.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i ], [ %.sroa.37.32.copyload162.i, %bb.ek ], [ %.sroa.37.32.copyload162.i, %bb.ej ], [ %.sroa.37.32.copyload161.i, %bb.ea ] ; 3 uses
  %.sroa.36.2.i = phi ptr [ %.sroa.36.32.copyload158.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i ], [ %.sroa.36.32.copyload158.i, %bb.ek ], [ %.sroa.36.32.copyload158.i, %bb.ej ], [ %.sroa.36.32.copyload157.i, %bb.ea ] ; 3 uses
  %.sroa.33.2.i = phi ptr [ %.sroa.33.32.copyload146.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i ], [ %.sroa.33.32.copyload146.i, %bb.ek ], [ %.sroa.33.32.copyload146.i, %bb.ej ], [ %.sroa.33.32.copyload145.i, %bb.ea ] ; 3 uses
  %.sroa.32.2.i = phi ptr [ %.sroa.32.32.copyload142.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i ], [ %.sroa.32.32.copyload142.i, %bb.ek ], [ %.sroa.32.32.copyload142.i, %bb.ej ], [ %.sroa.32.32.copyload141.i, %bb.ea ] ; 3 uses
  %.sroa.27.2.i = phi ptr [ %.sroa.27.32.copyload138.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i ], [ %.sroa.27.32.copyload138.i, %bb.ek ], [ %.sroa.27.32.copyload138.i, %bb.ej ], [ %.sroa.27.32.copyload137.i, %bb.ea ] ; 3 uses
  %.sroa.22.2.i = phi ptr [ %i.mg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i ], [ %i.mg, %bb.ek ], [ %i.mg, %bb.ej ], [ %i.md, %bb.ea ] ; 3 uses
  %.sroa.17.2.i = phi ptr [ %i.mf, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i ], [ %i.mf, %bb.ek ], [ %i.mf, %bb.ej ], [ %i.mc, %bb.ea ] ; 3 uses
  %.sroa.10.2.i = phi i64 [ %i.me, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i ], [ %i.me, %bb.ek ], [ %i.me, %bb.ej ], [ %i.mb, %bb.ea ] ; 3 uses
  %9 = phi <2 x ptr> [ %8, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i ], [ %8, %bb.ek ], [ %8, %bb.ej ], [ %7, %bb.ea ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !24648
  call void @llvm.experimental.noalias.scope.decl(metadata !24664)
  call void @llvm.experimental.noalias.scope.decl(metadata !24665)
  call void @llvm.experimental.noalias.scope.decl(metadata !24666)
  call void @llvm.experimental.noalias.scope.decl(metadata !24667)
  %i.nf = load ptr, ptr %i.v, align 8, !alias.scope !24668, !noalias !24648, !nonnull !4, !noundef !4
  %i.ng = atomicrmw add ptr %i.nf, i64 -1 release, align 8, !noalias !24669
  %i.nh = icmp eq i64 %i.ng, 1
  br i1 %i.nh, label %bb.ex, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i124.i.i

bb.ex:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.v) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i124.i.i unwind label %bb.ey, !noalias !24649

bb.ey:                                            ; preds = %bb.ex
  %i.ni = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24670)
  %i.nj = load ptr, ptr %i.js, align 8, !alias.scope !24671, !noalias !24648, !noundef !4 ; 2 uses
  %i.nk = icmp eq ptr %i.nj, null
  br i1 %i.nk, label %.loopexit.split-lp294, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.nl = atomicrmw add ptr %i.nj, i64 -1 release, align 8, !noalias !24672
  %i.nm = icmp eq i64 %i.nl, 1
  br i1 %i.nm, label %bb.fa, label %.loopexit.split-lp294

bb.fa:                                            ; preds = %bb.ez
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.js) #20
          to label %.loopexit.split-lp294 unwind label %bb.fd, !noalias !24649

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i124.i.i: ; preds = %bb.ex, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !24673)
  %i.nn = load ptr, ptr %i.js, align 8, !alias.scope !24674, !noalias !24648, !noundef !4 ; 2 uses
  %i.no = icmp eq ptr %i.nn, null
  br i1 %i.no, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit129.i.i, label %bb.fb

bb.fb:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i124.i.i
  %i.np = atomicrmw add ptr %i.nn, i64 -1 release, align 8, !noalias !24675
  %i.nq = icmp eq i64 %i.np, 1
  br i1 %i.nq, label %bb.fc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit129.i.i

bb.fc:                                            ; preds = %bb.fb
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.js) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit129.i.i unwind label %.loopexit.split-lp294.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !24649

bb.fd:                                            ; preds = %bb.fa
  %i.nr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !noalias !24649
  unreachable

bb.fe:                                            ; preds = %bb.ec, %bb.eb
  %i.ns = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16) %i.s) #22
          to label %.loopexit.split-lp299 unwind label %bb.er, !noalias !24649

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit129.i.i: ; preds = %bb.fc, %bb.fb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i124.i.i, %bb.dw
  %.sroa.37.1.i = phi i64 [ %.sroa.37.2.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i124.i.i ], [ %.sroa.37.2.i, %bb.fc ], [ %.sroa.37.2.i, %bb.fb ], [ %.sroa.37.32.copyload160.i, %bb.dw ] ; 3 uses
  %.sroa.36.1.i = phi ptr [ %.sroa.36.2.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i124.i.i ], [ %.sroa.36.2.i, %bb.fc ], [ %.sroa.36.2.i, %bb.fb ], [ %.sroa.36.32.copyload156.i, %bb.dw ] ; 3 uses
  %.sroa.33.1.i = phi ptr [ %.sroa.33.2.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i124.i.i ], [ %.sroa.33.2.i, %bb.fc ], [ %.sroa.33.2.i, %bb.fb ], [ %.sroa.33.32.copyload144.i, %bb.dw ] ; 3 uses
  %.sroa.32.1.i = phi ptr [ %.sroa.32.2.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i124.i.i ], [ %.sroa.32.2.i, %bb.fc ], [ %.sroa.32.2.i, %bb.fb ], [ %.sroa.32.32.copyload140.i, %bb.dw ] ; 3 uses
  %.sroa.27.1.i = phi ptr [ %.sroa.27.2.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i124.i.i ], [ %.sroa.27.2.i, %bb.fc ], [ %.sroa.27.2.i, %bb.fb ], [ %.sroa.27.32.copyload136.i, %bb.dw ] ; 3 uses
  %.sroa.22.1.i = phi ptr [ %.sroa.22.2.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i124.i.i ], [ %.sroa.22.2.i, %bb.fc ], [ %.sroa.22.2.i, %bb.fb ], [ %i.ma, %bb.dw ] ; 3 uses
  %.sroa.17.1.i = phi ptr [ %.sroa.17.2.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i124.i.i ], [ %.sroa.17.2.i, %bb.fc ], [ %.sroa.17.2.i, %bb.fb ], [ %i.lz, %bb.dw ] ; 3 uses
  %.sroa.10.1.i = phi i64 [ %.sroa.10.2.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i124.i.i ], [ %.sroa.10.2.i, %bb.fc ], [ %.sroa.10.2.i, %bb.fb ], [ %i.ly, %bb.dw ] ; 3 uses
  %10 = phi <2 x ptr> [ %9, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i124.i.i ], [ %9, %bb.fc ], [ %9, %bb.fb ], [ %6, %bb.dw ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !24648
  call void @llvm.experimental.noalias.scope.decl(metadata !24676)
  call void @llvm.experimental.noalias.scope.decl(metadata !24677)
  call void @llvm.experimental.noalias.scope.decl(metadata !24678)
  call void @llvm.experimental.noalias.scope.decl(metadata !24679)
  %i.nt = load ptr, ptr %i.y, align 8, !alias.scope !24680, !noalias !24648, !nonnull !4, !noundef !4
  %i.nu = atomicrmw add ptr %i.nt, i64 -1 release, align 8, !noalias !24681
  %i.nv = icmp eq i64 %i.nu, 1
  br i1 %i.nv, label %bb.ff, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i130.i.i

bb.ff:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit129.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.y) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i130.i.i unwind label %bb.fg, !noalias !24649

bb.fg:                                            ; preds = %bb.ff
  %i.nw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24682)
  %i.nx = load ptr, ptr %i.jp, align 8, !alias.scope !24683, !noalias !24648, !noundef !4 ; 2 uses
  %i.ny = icmp eq ptr %i.nx, null
  br i1 %i.ny, label %.body133.i.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.nz = atomicrmw add ptr %i.nx, i64 -1 release, align 8, !noalias !24684
  %i.oa = icmp eq i64 %i.nz, 1
  br i1 %i.oa, label %bb.fi, label %.body133.i.i

bb.fi:                                            ; preds = %bb.fh
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jp) #20
          to label %.body133.i.i unwind label %bb.fl, !noalias !24649

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i130.i.i: ; preds = %bb.ff, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit129.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !24685)
  %i.ob = load ptr, ptr %i.jp, align 8, !alias.scope !24686, !noalias !24648, !noundef !4 ; 2 uses
  %i.oc = icmp eq ptr %i.ob, null
  br i1 %i.oc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit135.i.i, label %bb.fj

bb.fj:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i130.i.i
  %i.od = atomicrmw add ptr %i.ob, i64 -1 release, align 8, !noalias !24687
  %i.oe = icmp eq i64 %i.od, 1
  br i1 %i.oe, label %bb.fk, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit135.i.i

bb.fk:                                            ; preds = %bb.fj
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jp) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit135.i.i unwind label %.loopexit.split-lp289.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !24649

bb.fl:                                            ; preds = %bb.fi
  %i.of = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !noalias !24649
  unreachable

.loopexit.split-lp299:                            ; preds = %.loopexit.split-lp299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fe, %bb.ei, %bb.eh, %bb.eg
  %.pn116.ph.i.i = phi { ptr, i32 } [ %i.ns, %bb.fe ], [ %i.mk, %bb.eg ], [ %i.mk, %bb.ei ], [ %i.mk, %bb.eh ], [ %lpad.loopexit.split-lp3783, %.loopexit.split-lp299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16) %i.v) #22
          to label %.loopexit.split-lp294 unwind label %bb.er, !noalias !24649

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit135.i.i: ; preds = %bb.fk, %bb.fj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i130.i.i, %bb.ds
  %.sroa.37.0.i = phi i64 [ %.sroa.37.1.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i130.i.i ], [ %.sroa.37.1.i, %bb.fk ], [ %.sroa.37.1.i, %bb.fj ], [ %.sroa.37.32.copyload.i, %bb.ds ]
  %.sroa.36.0.i = phi ptr [ %.sroa.36.1.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i130.i.i ], [ %.sroa.36.1.i, %bb.fk ], [ %.sroa.36.1.i, %bb.fj ], [ %.sroa.36.32.copyload.i, %bb.ds ]
  %.sroa.33.0.i = phi ptr [ %.sroa.33.1.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i130.i.i ], [ %.sroa.33.1.i, %bb.fk ], [ %.sroa.33.1.i, %bb.fj ], [ %.sroa.33.32.copyload.i, %bb.ds ]
  %.sroa.32.0.i = phi ptr [ %.sroa.32.1.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i130.i.i ], [ %.sroa.32.1.i, %bb.fk ], [ %.sroa.32.1.i, %bb.fj ], [ %.sroa.32.32.copyload.i, %bb.ds ]
  %.sroa.27.0.i = phi ptr [ %.sroa.27.1.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i130.i.i ], [ %.sroa.27.1.i, %bb.fk ], [ %.sroa.27.1.i, %bb.fj ], [ %.sroa.27.32.copyload.i, %bb.ds ]
  %.sroa.22.0.i = phi ptr [ %.sroa.22.1.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i130.i.i ], [ %.sroa.22.1.i, %bb.fk ], [ %.sroa.22.1.i, %bb.fj ], [ %i.lx, %bb.ds ]
  %.sroa.17.0.i = phi ptr [ %.sroa.17.1.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i130.i.i ], [ %.sroa.17.1.i, %bb.fk ], [ %.sroa.17.1.i, %bb.fj ], [ %i.lw, %bb.ds ]
  %.sroa.10.0.i = phi i64 [ %.sroa.10.1.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i130.i.i ], [ %.sroa.10.1.i, %bb.fk ], [ %.sroa.10.1.i, %bb.fj ], [ %i.lv, %bb.ds ]
  %11 = phi <2 x ptr> [ %10, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i130.i.i ], [ %10, %bb.fk ], [ %10, %bb.fj ], [ %5, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !24648
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ad)
          to label %bb.fm unwind label %.split.thread.i.i, !noalias !24649

.split.thread.i.i:                                ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit135.i.i
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

.loopexit.split-lp294:                            ; preds = %.loopexit.split-lp294.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp299, %bb.fa, %bb.ez, %bb.ey
  %.pn118.ph.i.i = phi { ptr, i32 } [ %.pn116.ph.i.i, %.loopexit.split-lp299 ], [ %i.ni, %bb.ey ], [ %i.ni, %bb.fa ], [ %i.ni, %bb.ez ], [ %lpad.loopexit.split-lp3780, %.loopexit.split-lp294.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16) %i.y) #22
          to label %.body133.i.i unwind label %bb.er, !noalias !24649

bb.fm:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit135.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !24688)
  call void @llvm.experimental.noalias.scope.decl(metadata !24689)
  %i.oh = load ptr, ptr %i.z, align 8, !alias.scope !24690, !noalias !24648, !nonnull !4, !noundef !4
  %i.oi = atomicrmw add ptr %i.oh, i64 -1 release, align 8, !noalias !24691
  %i.oj = icmp eq i64 %i.oi, 1
  br i1 %i.oj, label %bb.fn, label %bb.fq

bb.fn:                                            ; preds = %bb.fm
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm15RotaryEmbeddingE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #20
          to label %bb.fq unwind label %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !24641

bb.fo:                                            ; preds = %.split.thread.i.i, %bb.eq
  %.pn120.pn166.i.i = phi { ptr, i32 } [ %i.og, %.split.thread.i.i ], [ %.pn120.i.i, %bb.eq ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24692)
  call void @llvm.experimental.noalias.scope.decl(metadata !24693)
  %i.ok = load ptr, ptr %i.z, align 8, !alias.scope !24694, !noalias !24648, !nonnull !4, !noundef !4
  %i.ol = atomicrmw add ptr %i.ok, i64 -1 release, align 8, !noalias !24695
  %i.om = icmp eq i64 %i.ol, 1
  br i1 %i.om, label %bb.fp, label %.body90.thread.i

bb.fp:                                            ; preds = %bb.fo
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm15RotaryEmbeddingE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #20
          to label %.body90.thread.i unwind label %bb.er, !noalias !24649

bb.fq:                                            ; preds = %bb.fn, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !24640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !24640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !24640
  br label %bb.hb

bb.fr:                                            ; preds = %bb.en
  %i.on = ptrtoint ptr %i.mv to i64
  %i.oo = udiv i64 %i.cj, %i.jl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !24640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !24640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !24640
  store ptr %i.mu, ptr %i.af, align 16, !noalias !24640
  store i64 %i.on, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !24640
  store ptr %i.mw, ptr %.sroa.421.sroa.4.0..sroa.421.0..sroa_idx.sroa_idx.i, align 16, !noalias !24640
  store ptr %i.mx, ptr %.sroa.421.sroa.5.0..sroa.421.0..sroa_idx.sroa_idx.i, align 8, !noalias !24640
  store ptr %i.my, ptr %.sroa.421.sroa.6.0..sroa.421.0..sroa_idx.sroa_idx.i, align 16, !noalias !24640
  store ptr %i.mz, ptr %.sroa.421.sroa.7.0..sroa.421.0..sroa_idx.sroa_idx.i, align 8, !noalias !24640
  store ptr %i.mf, ptr %.sroa.421.sroa.8.0..sroa.421.0..sroa_idx.sroa_idx.i, align 16, !noalias !24640
  store ptr %i.mg, ptr %.sroa.421.sroa.9.0..sroa.421.0..sroa_idx.sroa_idx.i, align 8, !noalias !24640
  store ptr %i.na, ptr %.sroa.421.sroa.10.0..sroa.421.0..sroa_idx.sroa_idx.i, align 16, !noalias !24640
  store ptr null, ptr %.sroa.421.sroa.11.0..sroa.421.0..sroa_idx.sroa_idx.i, align 8, !noalias !24640
  store i64 %i.cj, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !24640
  store i64 %i.cn, ptr %.sroa.522.sroa.4.0..sroa.522.0..sroa_idx.sroa_idx.i, align 16, !noalias !24640
  store i64 %i.jl, ptr %.sroa.522.sroa.5.0..sroa.522.0..sroa_idx.sroa_idx.i, align 8, !noalias !24640
  store i64 %i.oo, ptr %.sroa.522.sroa.6.0..sroa.522.0..sroa_idx.sroa_idx.i, align 16, !noalias !24640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !24640
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 3)
          to label %bb.ft unwind label %bb.fs, !noalias !24641

bb.fs:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit90.i.i, %bb.fr
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %.body97.i

.body97.i:                                        ; preds = %.body88.i.i, %bb.fs
  %eh.lpad-body98.i = phi { ptr, i32 } [ %i.op, %bb.fs ], [ %.pn83.i.i, %.body88.i.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm9AttentionEBH_(ptr noalias nofree noundef align 8 dereferenceable(120) %i.af) #22
          to label %.body90.thread.i unwind label %bb.hj, !noalias !24641

bb.ft:                                            ; preds = %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !24696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !24696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !24696
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 2)
          to label %bb.fv unwind label %bb.fu, !noalias !24697

.body88.i.i:                                      ; preds = %bb.gt, %bb.gs, %bb.gr, %.body.i.i, %bb.fu
  %.pn83.i.i = phi { ptr, i32 } [ %.pn.i.i, %.body.i.i ], [ %i.oq, %bb.fu ], [ %i.qc, %bb.gt ], [ %i.qc, %bb.gs ], [ %i.qc, %bb.gr ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ac) #22
          to label %.body97.i unwind label %bb.gx, !noalias !24697

bb.fu:                                            ; preds = %bb.gv, %bb.fv, %bb.ft
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %.body88.i.i

bb.fv:                                            ; preds = %bb.ft
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn6linear8linear_b(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.g, i64 noundef %i.cm, i64 noundef %.val75.i, i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.f)
          to label %bb.fw unwind label %bb.fu, !noalias !24697

bb.fw:                                            ; preds = %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !24696
  %i.or = load i64, ptr %i.g, align 8, !range !13, !noalias !24696, !noundef !4 ; 2 uses
  %.not.i92.i = icmp eq i64 %i.or, -1
  %i.os = load ptr, ptr %i.ke, align 8, !noalias !24696 ; 2 uses
  %i.ot = load ptr, ptr %i.kf, align 8, !noalias !24696 ; 2 uses
  br i1 %.not.i92.i, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %.sroa.19.24.copyload.i = load ptr, ptr %.sroa.649.0..sroa_idx.i.i, align 8, !noalias !24698
  %.sroa.23.24.copyload.i = load ptr, ptr %.sroa.23.24..sroa.649.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24698
  %.sroa.24.24.copyload.i = load ptr, ptr %.sroa.24.24..sroa.649.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24698
  %i.ou = load <2 x ptr>, ptr %.sroa.25.24..sroa.649.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24698
  %.sroa.26.i.sroa.7.0.copyload = load ptr, ptr %.sroa.26.i.sroa.7.0..sroa.26.24..sroa.649.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !24698
  %.sroa.26.i.sroa.8.0.copyload = load i64, ptr %.sroa.26.i.sroa.8.0..sroa.26.24..sroa.649.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !24698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !24696
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit90.i.i

bb.fy:                                            ; preds = %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !24696
  store ptr %i.os, ptr %i.h, align 8, !noalias !24696
  store ptr %i.ot, ptr %i.kg, align 8, !noalias !24696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !24696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24696
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 2)
          to label %bb.ga unwind label %bb.fz, !noalias !24697

.body.i.i:                                        ; preds = %bb.gl, %bb.gk, %bb.gj, %bb.ge, %bb.fz
  %.pn.i.i = phi { ptr, i32 } [ %i.pa, %bb.ge ], [ %i.ov, %bb.fz ], [ %i.pi, %bb.gl ], [ %i.pi, %bb.gk ], [ %i.pi, %bb.gj ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16) %i.h) #22
          to label %.body88.i.i unwind label %bb.gx, !noalias !24697

bb.fz:                                            ; preds = %bb.gn, %bb.ga, %bb.fy
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.ga:                                            ; preds = %bb.fy
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn6linear8linear_b(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.d, i64 noundef %.val75.i, i64 noundef %i.cm, i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.gb unwind label %bb.fz, !noalias !24697

bb.gb:                                            ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24696
  %i.ow = load i64, ptr %i.d, align 8, !range !13, !noalias !24696, !noundef !4 ; 2 uses
  %.not80.i.i = icmp eq i64 %i.ow, -1
  %i.ox = load ptr, ptr %i.kh, align 8, !noalias !24696 ; 2 uses
  %i.oy = load ptr, ptr %i.ki, align 8, !noalias !24696 ; 2 uses
  br i1 %.not80.i.i, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %.sroa.19.24.copyload170.i = load ptr, ptr %.sroa.661.0..sroa_idx.i.i, align 8, !noalias !24698
  %.sroa.23.24.copyload173.i = load ptr, ptr %.sroa.23.24..sroa.661.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24698
  %.sroa.24.24.copyload176.i = load ptr, ptr %.sroa.24.24..sroa.661.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24698
  %i.oz = load <2 x ptr>, ptr %.sroa.25.24..sroa.661.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24698
  %.sroa.26.i.sroa.7.0.copyload237 = load ptr, ptr %.sroa.26.i.sroa.7.0..sroa.26.24..sroa.661.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !24698
  %.sroa.26.i.sroa.8.0.copyload239 = load i64, ptr %.sroa.26.i.sroa.8.0..sroa.26.24..sroa.661.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !24698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24696
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i93.i

bb.gd:                                            ; preds = %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24696
  store ptr %i.ox, ptr %i.e, align 8, !noalias !24696
  store ptr %i.oy, ptr %i.kj, align 8, !noalias !24696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24696
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 2)
          to label %bb.gf unwind label %bb.ge, !noalias !24697

bb.ge:                                            ; preds = %bb.gf, %bb.gd
  %i.pa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16) %i.e) #22
          to label %.body.i.i unwind label %bb.gx, !noalias !24697

bb.gf:                                            ; preds = %bb.gd
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn6linear8linear_b(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.b, i64 noundef %i.cm, i64 noundef %.val75.i, i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.gg unwind label %bb.ge, !noalias !24697

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24696
  %i.pb = load i64, ptr %i.b, align 8, !range !13, !noalias !24696, !noundef !4 ; 4 uses
  %.not81.i.i = icmp eq i64 %i.pb, -1
  %i.pc = load ptr, ptr %i.kk, align 8, !noalias !24696 ; 4 uses
  %i.pd = load ptr, ptr %i.kl, align 8, !noalias !24696 ; 4 uses
  br i1 %.not81.i.i, label %bb.gp, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %.sroa.19.24.copyload171.i = load ptr, ptr %.sroa.673.0..sroa_idx.i.i, align 8, !noalias !24698 ; 3 uses
  %.sroa.23.24.copyload174.i = load ptr, ptr %.sroa.23.24..sroa.673.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24698 ; 3 uses
  %.sroa.24.24.copyload177.i = load ptr, ptr %.sroa.24.24..sroa.673.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24698 ; 3 uses
  %i.pe = load <2 x ptr>, ptr %.sroa.25.24..sroa.673.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !24698 ; 3 uses
  %.sroa.26.i.sroa.7.0.copyload238 = load ptr, ptr %.sroa.26.i.sroa.7.0..sroa.26.24..sroa.673.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !24698 ; 3 uses
  %.sroa.26.i.sroa.8.0.copyload240 = load i64, ptr %.sroa.26.i.sroa.8.0..sroa.26.24..sroa.673.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !24698 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24696
  call void @llvm.experimental.noalias.scope.decl(metadata !24699)
  call void @llvm.experimental.noalias.scope.decl(metadata !24700)
  call void @llvm.experimental.noalias.scope.decl(metadata !24701)
  call void @llvm.experimental.noalias.scope.decl(metadata !24702)
  %i.pf = load ptr, ptr %i.e, align 8, !alias.scope !24703, !noalias !24696, !nonnull !4, !noundef !4
  %i.pg = atomicrmw add ptr %i.pf, i64 -1 release, align 8, !noalias !24704
  %i.ph = icmp eq i64 %i.pg, 1
  br i1 %i.ph, label %bb.gi, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i94.i

bb.gi:                                            ; preds = %bb.gh
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i94.i unwind label %bb.gj, !noalias !24697

bb.gj:                                            ; preds = %bb.gi
  %i.pi = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24705)
  %i.pj = load ptr, ptr %i.kj, align 8, !alias.scope !24706, !noalias !24696, !noundef !4 ; 2 uses
  %i.pk = icmp eq ptr %i.pj, null
  br i1 %i.pk, label %.body.i.i, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.pl = atomicrmw add ptr %i.pj, i64 -1 release, align 8, !noalias !24707
  %i.pm = icmp eq i64 %i.pl, 1
  br i1 %i.pm, label %bb.gl, label %.body.i.i

bb.gl:                                            ; preds = %bb.gk
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kj) #20
          to label %.body.i.i unwind label %bb.go, !noalias !24697

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i94.i: ; preds = %bb.gi, %bb.gh
  call void @llvm.experimental.noalias.scope.decl(metadata !24708)
  %i.pn = load ptr, ptr %i.kj, align 8, !alias.scope !24709, !noalias !24696, !noundef !4 ; 2 uses
  %i.po = icmp eq ptr %i.pn, null
  br i1 %i.po, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i93.i, label %bb.gm

bb.gm:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i94.i
  %i.pp = atomicrmw add ptr %i.pn, i64 -1 release, align 8, !noalias !24710
  %i.pq = icmp eq i64 %i.pp, 1
  br i1 %i.pq, label %bb.gn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i93.i

bb.gn:                                            ; preds = %bb.gm
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kj) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i93.i unwind label %bb.fz, !noalias !24697

bb.go:                                            ; preds = %bb.gl
  %i.pr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !noalias !24697
  unreachable

bb.gp:                                            ; preds = %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24696
  %i.ps = load ptr, ptr %i.h, align 8, !noalias !24696, !nonnull !4, !noundef !4
  %i.pt = load ptr, ptr %i.kg, align 8, !noalias !24696, !noundef !4
  %i.pu = load ptr, ptr %i.e, align 8, !noalias !24696, !nonnull !4, !noundef !4
  %i.pv = load ptr, ptr %i.kj, align 8, !noalias !24696, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !24696
  %i.pw = insertelement <2 x ptr> <ptr poison, ptr undef>, ptr %i.pd, i64 0
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit90.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit90.i.i: ; preds = %bb.gv, %bb.gu, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i85.i.i, %bb.gp, %bb.fx
  %.sroa.26.i.sroa.7.0 = phi ptr [ undef, %bb.gp ], [ %.sroa.26.i.sroa.7.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i85.i.i ], [ %.sroa.26.i.sroa.7.1, %bb.gv ], [ %.sroa.26.i.sroa.7.1, %bb.gu ], [ %.sroa.26.i.sroa.7.0.copyload, %bb.fx ]
  %.sroa.26.i.sroa.8.0 = phi i64 [ undef, %bb.gp ], [ %.sroa.26.i.sroa.8.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i85.i.i ], [ %.sroa.26.i.sroa.8.1, %bb.gv ], [ %.sroa.26.i.sroa.8.1, %bb.gu ], [ %.sroa.26.i.sroa.8.0.copyload, %bb.fx ]
  %.sroa.24.0.i = phi ptr [ %i.pc, %bb.gp ], [ %.sroa.24.1.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i85.i.i ], [ %.sroa.24.1.i, %bb.gv ], [ %.sroa.24.1.i, %bb.gu ], [ %.sroa.24.24.copyload.i, %bb.fx ] ; 3 uses
  %.sroa.23.0.i = phi ptr [ %i.pv, %bb.gp ], [ %.sroa.23.1.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i85.i.i ], [ %.sroa.23.1.i, %bb.gv ], [ %.sroa.23.1.i, %bb.gu ], [ %.sroa.23.24.copyload.i, %bb.fx ] ; 2 uses
  %.sroa.19.0.i = phi ptr [ %i.pu, %bb.gp ], [ %.sroa.19.1.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i85.i.i ], [ %.sroa.19.1.i, %bb.gv ], [ %.sroa.19.1.i, %bb.gu ], [ %.sroa.19.24.copyload.i, %bb.fx ] ; 3 uses
  %.sroa.15167.0.i = phi ptr [ %i.pt, %bb.gp ], [ %.sroa.15167.1.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i85.i.i ], [ %.sroa.15167.1.i, %bb.gv ], [ %.sroa.15167.1.i, %bb.gu ], [ %i.ot, %bb.fx ] ; 3 uses
  %.sroa.9.0.i = phi ptr [ %i.ps, %bb.gp ], [ %.sroa.9.1.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i85.i.i ], [ %.sroa.9.1.i, %bb.gv ], [ %.sroa.9.1.i, %bb.gu ], [ %i.os, %bb.fx ] ; 2 uses
  %.sroa.0164.0.i = phi i64 [ -1, %bb.gp ], [ %.sroa.0164.1.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i85.i.i ], [ %.sroa.0164.1.i, %bb.gv ], [ %.sroa.0164.1.i, %bb.gu ], [ %i.or, %bb.fx ] ; 2 uses
  %i.px = phi <2 x ptr> [ %i.pw, %bb.gp ], [ %i.py, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i85.i.i ], [ %i.py, %bb.gv ], [ %i.py, %bb.gu ], [ %i.ou, %bb.fx ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !24696
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ac)
          to label %_RNvMs1_NtNtCs1dZk1kIfPhr_19candle_transformers6models3csmNtB5_3Mlp3new.exit.i unwind label %bb.fs, !noalias !24641

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i93.i: ; preds = %bb.gn, %bb.gm, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i94.i, %bb.gc
  %.sroa.26.i.sroa.7.1 = phi ptr [ %.sroa.26.i.sroa.7.0.copyload238, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i94.i ], [ %.sroa.26.i.sroa.7.0.copyload238, %bb.gn ], [ %.sroa.26.i.sroa.7.0.copyload238, %bb.gm ], [ %.sroa.26.i.sroa.7.0.copyload237, %bb.gc ] ; 3 uses
  %.sroa.26.i.sroa.8.1 = phi i64 [ %.sroa.26.i.sroa.8.0.copyload240, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i94.i ], [ %.sroa.26.i.sroa.8.0.copyload240, %bb.gn ], [ %.sroa.26.i.sroa.8.0.copyload240, %bb.gm ], [ %.sroa.26.i.sroa.8.0.copyload239, %bb.gc ] ; 3 uses
  %.sroa.24.1.i = phi ptr [ %.sroa.24.24.copyload177.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i94.i ], [ %.sroa.24.24.copyload177.i, %bb.gn ], [ %.sroa.24.24.copyload177.i, %bb.gm ], [ %.sroa.24.24.copyload176.i, %bb.gc ] ; 3 uses
  %.sroa.23.1.i = phi ptr [ %.sroa.23.24.copyload174.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i94.i ], [ %.sroa.23.24.copyload174.i, %bb.gn ], [ %.sroa.23.24.copyload174.i, %bb.gm ], [ %.sroa.23.24.copyload173.i, %bb.gc ] ; 3 uses
  %.sroa.19.1.i = phi ptr [ %.sroa.19.24.copyload171.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i94.i ], [ %.sroa.19.24.copyload171.i, %bb.gn ], [ %.sroa.19.24.copyload171.i, %bb.gm ], [ %.sroa.19.24.copyload170.i, %bb.gc ] ; 3 uses
  %.sroa.15167.1.i = phi ptr [ %i.pd, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i94.i ], [ %i.pd, %bb.gn ], [ %i.pd, %bb.gm ], [ %i.oy, %bb.gc ] ; 3 uses
  %.sroa.9.1.i = phi ptr [ %i.pc, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i94.i ], [ %i.pc, %bb.gn ], [ %i.pc, %bb.gm ], [ %i.ox, %bb.gc ] ; 3 uses
  %.sroa.0164.1.i = phi i64 [ %i.pb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i94.i ], [ %i.pb, %bb.gn ], [ %i.pb, %bb.gm ], [ %i.ow, %bb.gc ] ; 3 uses
  %i.py = phi <2 x ptr> [ %i.pe, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i94.i ], [ %i.pe, %bb.gn ], [ %i.pe, %bb.gm ], [ %i.oz, %bb.gc ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !24696
  call void @llvm.experimental.noalias.scope.decl(metadata !24711)
  call void @llvm.experimental.noalias.scope.decl(metadata !24712)
  call void @llvm.experimental.noalias.scope.decl(metadata !24713)
  call void @llvm.experimental.noalias.scope.decl(metadata !24714)
  %i.pz = load ptr, ptr %i.h, align 8, !alias.scope !24715, !noalias !24696, !nonnull !4, !noundef !4
  %i.qa = atomicrmw add ptr %i.pz, i64 -1 release, align 8, !noalias !24716
  %i.qb = icmp eq i64 %i.qa, 1
  br i1 %i.qb, label %bb.gq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i85.i.i

bb.gq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i93.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i85.i.i unwind label %bb.gr, !noalias !24697

bb.gr:                                            ; preds = %bb.gq
  %i.qc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24717)
  %i.qd = load ptr, ptr %i.kg, align 8, !alias.scope !24718, !noalias !24696, !noundef !4 ; 2 uses
  %i.qe = icmp eq ptr %i.qd, null
  br i1 %i.qe, label %.body88.i.i, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.qf = atomicrmw add ptr %i.qd, i64 -1 release, align 8, !noalias !24719
  %i.qg = icmp eq i64 %i.qf, 1
  br i1 %i.qg, label %bb.gt, label %.body88.i.i

bb.gt:                                            ; preds = %bb.gs
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kg) #20
          to label %.body88.i.i unwind label %bb.gw, !noalias !24697

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i85.i.i: ; preds = %bb.gq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i93.i
  call void @llvm.experimental.noalias.scope.decl(metadata !24720)
  %i.qh = load ptr, ptr %i.kg, align 8, !alias.scope !24721, !noalias !24696, !noundef !4 ; 2 uses
  %i.qi = icmp eq ptr %i.qh, null
  br i1 %i.qi, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit90.i.i, label %bb.gu

bb.gu:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i85.i.i
  %i.qj = atomicrmw add ptr %i.qh, i64 -1 release, align 8, !noalias !24722
  %i.qk = icmp eq i64 %i.qj, 1
  br i1 %i.qk, label %bb.gv, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit90.i.i

bb.gv:                                            ; preds = %bb.gu
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kg) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit90.i.i unwind label %bb.fu, !noalias !24697

bb.gw:                                            ; preds = %bb.gt
  %i.ql = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !noalias !24697
  unreachable

bb.gx:                                            ; preds = %bb.ge, %.body.i.i, %.body88.i.i
  %i.qm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !noalias !24697
  unreachable

_RNvMs1_NtNtCs1dZk1kIfPhr_19candle_transformers6models3csmNtB5_3Mlp3new.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit90.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !24640
  %.not67.i = icmp eq i64 %.sroa.0164.0.i, -1
  br i1 %.not67.i, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %_RNvMs1_NtNtCs1dZk1kIfPhr_19candle_transformers6models3csmNtB5_3Mlp3new.exit.i
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm9AttentionEBH_(ptr noalias nofree noundef align 8 dereferenceable(120) %i.af)
          to label %bb.hb unwind label %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !24641

bb.gz:                                            ; preds = %_RNvMs1_NtNtCs1dZk1kIfPhr_19candle_transformers6models3csmNtB5_3Mlp3new.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.44.168..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 32, i1 false), !noalias !24723
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.45, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !24723
  %.sroa.46.200.copyload = load i8, ptr %.sroa.6213.0..sroa_idx.i, align 8, !noalias !24723 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.52, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7214.0..sroa_idx.i, i64 7, i1 false), !noalias !24723
  %i.qn = load <2 x ptr>, ptr %i.af, align 16, !noalias !24723 ; 3 uses
  %.sroa.42122.48.copyload = load ptr, ptr %.sroa.421.sroa.4.0..sroa.421.0..sroa_idx.sroa_idx.i, align 16, !noalias !24723 ; 2 uses
  %.sroa.43.48.copyload = load i64, ptr %.sroa.421.sroa.5.0..sroa.421.0..sroa_idx.sroa_idx.i, align 8, !noalias !24723 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.44, ptr noundef nonnull align 16 dereferenceable(88) %.sroa.421.sroa.6.0..sroa.421.0..sroa_idx.sroa_idx.i, i64 88, i1 false), !noalias !24723
  %i.qo = ptrtoint ptr %.sroa.9.0.i to i64        ; 2 uses
  %i.qp = ptrtoint ptr %.sroa.23.0.i to i64       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !24640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !24640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !24640
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bv)
          to label %bb.hy unwind label %.thread.loopexit.split-lp.loopexit.split-lp, !noalias !24641

bb.ha:                                            ; preds = %.loopexit.split-lp309, %.body.i
  %.sroa.032.4.i = phi i8 [ %.sroa.032.0.i, %.body.i ], [ %.sroa.032.5.i.ph, %.loopexit.split-lp309 ]
  %.pn73.i = phi { ptr, i32 } [ %.pn71.i, %.body.i ], [ %lpad.loopexit.split-lp311, %.loopexit.split-lp309 ] ; 3 uses
  %i.qq = trunc nuw i8 %.sroa.032.4.i to i1
  br i1 %i.qq, label %bb.hw, label %.body79

.thread.loopexit.split-lp.loopexit.split-lp:      ; preds = %bb.gz, %bb.hv, %bb.cp, %._crit_edge
  %lpad.loopexit.split-lp3789 = landingpad { ptr, i32 }
          cleanup
  br label %.body79

.loopexit.split-lp309:                            ; preds = %bb.de, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm7RmsNormECs1dZk1kIfPhr_19candle_transformers.exit110.i
  %.sroa.032.5.i.ph = phi i8 [ %.sroa.032.6.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm7RmsNormECs1dZk1kIfPhr_19candle_transformers.exit110.i ], [ 1, %bb.de ]
  %lpad.loopexit.split-lp311 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ha

.body90.thread.i:                                 ; preds = %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.hs, %bb.hr, %.body97.i, %bb.fp, %bb.fo, %bb.eq
  %.pn.i85 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.hs ], [ %eh.lpad-body98.i, %.body97.i ], [ %.pn120.pn166.i.i, %bb.fp ], [ %lpad.thr_comm.split-lp.i, %bb.hr ], [ %.pn120.i.i, %bb.eq ], [ %.pn120.pn166.i.i, %bb.fo ], [ %lpad.loopexit.split-lp3786, %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm7RmsNormECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ah) #22
          to label %.body85.i unwind label %bb.hj, !noalias !24641

.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.en, %bb.gy, %bb.fn
  %lpad.loopexit.split-lp3786 = landingpad { ptr, i32 }
          cleanup
  br label %.body90.thread.i

bb.hb:                                            ; preds = %bb.gy, %bb.fq
  %.sroa.25.2 = phi ptr [ %.sroa.23.0.i, %bb.gy ], [ %.sroa.32.0.i, %bb.fq ] ; 3 uses
  %.sroa.43.2 = phi i64 [ %.sroa.26.i.sroa.8.0, %bb.gy ], [ %.sroa.37.0.i, %bb.fq ] ; 3 uses
  %.sroa.42122.2 = phi ptr [ %.sroa.26.i.sroa.7.0, %bb.gy ], [ %.sroa.36.0.i, %bb.fq ] ; 3 uses
  %.sroa.32.2 = phi ptr [ %.sroa.24.0.i, %bb.gy ], [ %.sroa.33.0.i, %bb.fq ] ; 3 uses
  %.sroa.20.2.in = phi ptr [ %.sroa.19.0.i, %bb.gy ], [ %.sroa.27.0.i, %bb.fq ]
  %.sroa.15.2 = phi ptr [ %.sroa.15167.0.i, %bb.gy ], [ %.sroa.22.0.i, %bb.fq ] ; 3 uses
  %.sroa.10110.2 = phi ptr [ %.sroa.9.0.i, %bb.gy ], [ %.sroa.17.0.i, %bb.fq ] ; 3 uses
  %.sroa.0108.2 = phi i64 [ %.sroa.0164.0.i, %bb.gy ], [ %.sroa.10.0.i, %bb.fq ] ; 3 uses
  %12 = phi <2 x ptr> [ %i.px, %bb.gy ], [ %11, %bb.fq ] ; 3 uses
  %.sroa.20.2 = ptrtoint ptr %.sroa.20.2.in to i64 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !24640
  call void @llvm.experimental.noalias.scope.decl(metadata !24724)
  call void @llvm.experimental.noalias.scope.decl(metadata !24725)
  call void @llvm.experimental.noalias.scope.decl(metadata !24726)
  call void @llvm.experimental.noalias.scope.decl(metadata !24727)
  call void @llvm.experimental.noalias.scope.decl(metadata !24728)
  %i.qr = load ptr, ptr %i.ah, align 8, !alias.scope !24729, !noalias !24640, !nonnull !4, !noundef !4
  %i.qs = atomicrmw add ptr %i.qr, i64 -1 release, align 8, !noalias !24730
  %i.qt = icmp eq i64 %i.qs, 1
  br i1 %i.qt, label %bb.hc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i99.i

bb.hc:                                            ; preds = %bb.hb
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ah) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i99.i unwind label %bb.hd, !noalias !24641

bb.hd:                                            ; preds = %bb.hc
  %i.qu = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24731)
  %i.qv = load ptr, ptr %.sroa.4211.0..sroa_idx.i, align 8, !alias.scope !24732, !noalias !24640, !noundef !4 ; 2 uses
  %i.qw = icmp eq ptr %i.qv, null
  br i1 %i.qw, label %.body85.i, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.qx = atomicrmw add ptr %i.qv, i64 -1 release, align 8, !noalias !24733
  %i.qy = icmp eq i64 %i.qx, 1
  br i1 %i.qy, label %bb.hf, label %.body85.i

bb.hf:                                            ; preds = %bb.he
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.4211.0..sroa_idx.i) #20
          to label %.body85.i unwind label %bb.hi, !noalias !24641

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i99.i: ; preds = %bb.hc, %bb.hb
  call void @llvm.experimental.noalias.scope.decl(metadata !24734)
  %i.qz = load ptr, ptr %.sroa.4211.0..sroa_idx.i, align 8, !alias.scope !24735, !noalias !24640, !noundef !4 ; 2 uses
  %i.ra = icmp eq ptr %i.qz, null
  br i1 %i.ra, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm7RmsNormECs1dZk1kIfPhr_19candle_transformers.exit.i, label %bb.hg

bb.hg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i99.i
  %i.rb = atomicrmw add ptr %i.qz, i64 -1 release, align 8, !noalias !24736
  %i.rc = icmp eq i64 %i.rb, 1
  br i1 %i.rc, label %bb.hh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm7RmsNormECs1dZk1kIfPhr_19candle_transformers.exit.i

bb.hh:                                            ; preds = %bb.hg
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.4211.0..sroa_idx.i) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm7RmsNormECs1dZk1kIfPhr_19candle_transformers.exit.i unwind label %.loopexit.split-lp284, !noalias !24641

bb.hi:                                            ; preds = %bb.hf
  %i.rd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !noalias !24641
  unreachable

bb.hj:                                            ; preds = %bb.hx, %bb.hs, %.body90.thread.i, %.body97.i, %.body85.i, %.body.i
  %i.re = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !noalias !24641
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm7RmsNormECs1dZk1kIfPhr_19candle_transformers.exit.i: ; preds = %bb.hh, %bb.hg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i99.i, %bb.dm
  %.sroa.25.1 = phi ptr [ %.sroa.25.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i99.i ], [ %.sroa.25.2, %bb.hh ], [ %.sroa.25.2, %bb.hg ], [ %i.lt, %bb.dm ] ; 2 uses
  %.sroa.43.1 = phi i64 [ %.sroa.43.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i99.i ], [ %.sroa.43.2, %bb.hh ], [ %.sroa.43.2, %bb.hg ], [ %.sroa.15130.i.sroa.10.0, %bb.dm ] ; 2 uses
  %.sroa.42122.1 = phi ptr [ %.sroa.42122.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i99.i ], [ %.sroa.42122.2, %bb.hh ], [ %.sroa.42122.2, %bb.hg ], [ %.sroa.15130.i.sroa.9.0, %bb.dm ] ; 2 uses
  %.sroa.32.1 = phi ptr [ %.sroa.32.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i99.i ], [ %.sroa.32.2, %bb.hh ], [ %.sroa.32.2, %bb.hg ], [ %.sroa.15130.i.sroa.6.0, %bb.dm ] ; 2 uses
  %.sroa.20.1 = phi i64 [ %.sroa.20.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i99.i ], [ %.sroa.20.2, %bb.hh ], [ %.sroa.20.2, %bb.hg ], [ %i.ls, %bb.dm ] ; 2 uses
  %.sroa.15.1 = phi ptr [ %.sroa.15.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i99.i ], [ %.sroa.15.2, %bb.hh ], [ %.sroa.15.2, %bb.hg ], [ %.sroa.11124.0.i, %bb.dm ] ; 2 uses
  %.sroa.10110.1 = phi ptr [ %.sroa.10110.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i99.i ], [ %.sroa.10110.2, %bb.hh ], [ %.sroa.10110.2, %bb.hg ], [ %i.lp, %bb.dm ] ; 2 uses
  %.sroa.0108.1 = phi i64 [ %.sroa.0108.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i99.i ], [ %.sroa.0108.2, %bb.hh ], [ %.sroa.0108.2, %bb.hg ], [ %i.lo, %bb.dm ] ; 2 uses
  %.sroa.032.6.i = phi i8 [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i99.i ], [ 0, %bb.hh ], [ 0, %bb.hg ], [ 1, %bb.dm ] ; 6 uses
  %13 = phi <2 x ptr> [ %12, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i99.i ], [ %12, %bb.hh ], [ %12, %bb.hg ], [ %4, %bb.dm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !24640
  call void @llvm.experimental.noalias.scope.decl(metadata !24737)
  call void @llvm.experimental.noalias.scope.decl(metadata !24738)
  call void @llvm.experimental.noalias.scope.decl(metadata !24739)
  call void @llvm.experimental.noalias.scope.decl(metadata !24740)
  call void @llvm.experimental.noalias.scope.decl(metadata !24741)
  %i.rf = load ptr, ptr %i.aj, align 8, !alias.scope !24742, !noalias !24640, !nonnull !4, !noundef !4
  %i.rg = atomicrmw add ptr %i.rf, i64 -1 release, align 8, !noalias !24743
  %i.rh = icmp eq i64 %i.rg, 1
  br i1 %i.rh, label %bb.hk, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i104.i

bb.hk:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm7RmsNormECs1dZk1kIfPhr_19candle_transformers.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aj) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i104.i unwind label %bb.hl, !noalias !24641

bb.hl:                                            ; preds = %bb.hk
  %i.ri = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24744)
  %i.rj = load ptr, ptr %.sroa.4.0..sroa_idx.i83, align 8, !alias.scope !24745, !noalias !24640, !noundef !4 ; 2 uses
  %i.rk = icmp eq ptr %i.rj, null
  br i1 %i.rk, label %.body.i, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.rl = atomicrmw add ptr %i.rj, i64 -1 release, align 8, !noalias !24746
  %i.rm = icmp eq i64 %i.rl, 1
  br i1 %i.rm, label %bb.hn, label %.body.i

bb.hn:                                            ; preds = %bb.hm
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.4.0..sroa_idx.i83) #20
          to label %.body.i unwind label %bb.hq, !noalias !24641

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i104.i: ; preds = %bb.hk, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm7RmsNormECs1dZk1kIfPhr_19candle_transformers.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !24747)
  %i.rn = load ptr, ptr %.sroa.4.0..sroa_idx.i83, align 8, !alias.scope !24748, !noalias !24640, !noundef !4 ; 2 uses
  %i.ro = icmp eq ptr %i.rn, null
  br i1 %i.ro, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm7RmsNormECs1dZk1kIfPhr_19candle_transformers.exit110.i, label %bb.ho

bb.ho:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i104.i
  %i.rp = atomicrmw add ptr %i.rn, i64 -1 release, align 8, !noalias !24749
  %i.rq = icmp eq i64 %i.rp, 1
  br i1 %i.rq, label %bb.hp, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm7RmsNormECs1dZk1kIfPhr_19candle_transformers.exit110.i

bb.hp:                                            ; preds = %bb.ho
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.4.0..sroa_idx.i83) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm7RmsNormECs1dZk1kIfPhr_19candle_transformers.exit110.i unwind label %.loopexit.split-lp, !noalias !24641

bb.hq:                                            ; preds = %bb.hn
  %i.rr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !noalias !24641
  unreachable

bb.hr:                                            ; preds = %bb.dn
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rs = atomicrmw add ptr %i.lu, i64 -1 release, align 8, !noalias !24750
  %i.rt = icmp eq i64 %i.rs, 1
  br i1 %i.rt, label %bb.hs, label %.body90.thread.i

bb.hs:                                            ; preds = %bb.hr
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm15RotaryEmbeddingE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae) #20
          to label %.body90.thread.i unwind label %bb.hj, !noalias !24641

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm7RmsNormECs1dZk1kIfPhr_19candle_transformers.exit110.i: ; preds = %bb.hp, %bb.ho, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i104.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !24640
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bv)
          to label %bb.ht unwind label %.loopexit.split-lp309, !noalias !24641

bb.ht:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm7RmsNormECs1dZk1kIfPhr_19candle_transformers.exit110.i
  %i.ru = trunc nuw i8 %.sroa.032.6.i to i1
  br i1 %i.ru, label %bb.hu, label %.thread261

bb.hu:                                            ; preds = %bb.ht, %bb.de
  %.sroa.25.0 = phi ptr [ %.sroa.25.1, %bb.ht ], [ %i.lm, %bb.de ] ; 2 uses
  %.sroa.43.0 = phi i64 [ %.sroa.43.1, %bb.ht ], [ %.sroa.15.i.sroa.10.0, %bb.de ] ; 2 uses
  %.sroa.42122.0 = phi ptr [ %.sroa.42122.1, %bb.ht ], [ %.sroa.15.i.sroa.9.0, %bb.de ] ; 2 uses
  %.sroa.32.0 = phi ptr [ %.sroa.32.1, %bb.ht ], [ %.sroa.15.i.sroa.6.0, %bb.de ] ; 2 uses
  %.sroa.20.0 = phi i64 [ %.sroa.20.1, %bb.ht ], [ %i.ll, %bb.de ] ; 2 uses
  %.sroa.15.0 = phi ptr [ %.sroa.15.1, %bb.ht ], [ %.sroa.11.0.i, %bb.de ] ; 2 uses
  %.sroa.10110.0 = phi ptr [ %.sroa.10110.1, %bb.ht ], [ %i.li, %bb.de ] ; 2 uses
  %.sroa.0108.0 = phi i64 [ %.sroa.0108.1, %bb.ht ], [ %i.lh, %bb.de ] ; 2 uses
  %14 = phi <2 x ptr> [ %13, %bb.ht ], [ %3, %bb.de ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24751)
  call void @llvm.experimental.noalias.scope.decl(metadata !24752)
  %i.rv = load ptr, ptr %i.ak, align 8, !alias.scope !24753, !noalias !24640, !nonnull !4, !noundef !4
  %i.rw = atomicrmw add ptr %i.rv, i64 -1 release, align 8, !noalias !24754
  %i.rx = icmp eq i64 %i.rw, 1
  br i1 %i.rx, label %bb.hv, label %.thread261

bb.hv:                                            ; preds = %bb.hu
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm15RotaryEmbeddingE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ak) #20
          to label %.thread261 unwind label %.thread.loopexit.split-lp.loopexit.split-lp

bb.hw:                                            ; preds = %bb.ha
  call void @llvm.experimental.noalias.scope.decl(metadata !24755)
  call void @llvm.experimental.noalias.scope.decl(metadata !24756)
  %i.ry = load ptr, ptr %i.ak, align 8, !alias.scope !24757, !noalias !24640, !nonnull !4, !noundef !4
  %i.rz = atomicrmw add ptr %i.ry, i64 -1 release, align 8, !noalias !24758
  %i.sa = icmp eq i64 %i.rz, 1
  br i1 %i.sa, label %bb.hx, label %.body79

bb.hx:                                            ; preds = %bb.hw
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm15RotaryEmbeddingE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ak) #20
          to label %.body79 unwind label %bb.hj, !noalias !24641

.thread261:                                       ; preds = %bb.ht, %bb.hu, %bb.hv
  %.sroa.25.3.ph = phi ptr [ %.sroa.25.0, %bb.hv ], [ %.sroa.25.0, %bb.hu ], [ %.sroa.25.1, %bb.ht ]
  %.sroa.43.3.ph = phi i64 [ %.sroa.43.0, %bb.hv ], [ %.sroa.43.0, %bb.hu ], [ %.sroa.43.1, %bb.ht ]
  %.sroa.42122.3.ph = phi ptr [ %.sroa.42122.0, %bb.hv ], [ %.sroa.42122.0, %bb.hu ], [ %.sroa.42122.1, %bb.ht ]
  %.sroa.32.3.ph = phi ptr [ %.sroa.32.0, %bb.hv ], [ %.sroa.32.0, %bb.hu ], [ %.sroa.32.1, %bb.ht ]
  %.sroa.20.3.ph = phi i64 [ %.sroa.20.0, %bb.hv ], [ %.sroa.20.0, %bb.hu ], [ %.sroa.20.1, %bb.ht ]
  %.sroa.15.3.ph = phi ptr [ %.sroa.15.0, %bb.hv ], [ %.sroa.15.0, %bb.hu ], [ %.sroa.15.1, %bb.ht ]
  %.sroa.10110.3.ph = phi ptr [ %.sroa.10110.0, %bb.hv ], [ %.sroa.10110.0, %bb.hu ], [ %.sroa.10110.1, %bb.ht ]
  %.sroa.0108.3.ph = phi i64 [ %.sroa.0108.0, %bb.hv ], [ %.sroa.0108.0, %bb.hu ], [ %.sroa.0108.1, %bb.ht ]
  %15 = phi <2 x ptr> [ %14, %bb.hv ], [ %14, %bb.hu ], [ %13, %bb.ht ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  br label %.loopexit313

bb.hy:                                            ; preds = %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  %i.sb = icmp eq i8 %.sroa.46.200.copyload, 2
  br i1 %i.sb, label %.loopexit313.loopexit, label %bb.hz

.loopexit313.loopexit:                            ; preds = %bb.hy
  %16 = extractelement <2 x ptr> %i.px, i64 0
  br label %.loopexit313

.loopexit313:                                     ; preds = %.loopexit313.loopexit, %.thread261
  %.sroa.0108.3282 = phi i64 [ %.sroa.0108.3.ph, %.thread261 ], [ %i.qo, %.loopexit313.loopexit ]
  %.sroa.10110.3281 = phi ptr [ %.sroa.10110.3.ph, %.thread261 ], [ %.sroa.15167.0.i, %.loopexit313.loopexit ]
  %.sroa.15.3280 = phi ptr [ %.sroa.15.3.ph, %.thread261 ], [ %.sroa.19.0.i, %.loopexit313.loopexit ]
  %.sroa.20.3279 = phi i64 [ %.sroa.20.3.ph, %.thread261 ], [ %i.qp, %.loopexit313.loopexit ]
  %.sroa.32.3278 = phi ptr [ %.sroa.32.3.ph, %.thread261 ], [ %16, %.loopexit313.loopexit ]
  %.sroa.42122.3275 = phi ptr [ %.sroa.42122.3.ph, %.thread261 ], [ %.sroa.42122.48.copyload, %.loopexit313.loopexit ]
  %.sroa.43.3274 = phi i64 [ %.sroa.43.3.ph, %.thread261 ], [ %.sroa.43.48.copyload, %.loopexit313.loopexit ]
  %.sroa.25.3273 = phi ptr [ %.sroa.25.3.ph, %.thread261 ], [ %.sroa.24.0.i, %.loopexit313.loopexit ]
  %17 = phi <2 x ptr> [ %15, %.thread261 ], [ %i.qn, %.loopexit313.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.44)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.45)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52)
  store i64 %.sroa.0108.3282, ptr %0, align 8
  %.sroa.4206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10110.3281, ptr %.sroa.4206.0..sroa_idx, align 8
  %.sroa.5207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.15.3280, ptr %.sroa.5207.0..sroa_idx, align 8
  %.sroa.6208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.20.3279, ptr %.sroa.6208.0..sroa_idx, align 8
  %.sroa.7209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.25.3273, ptr %.sroa.7209.0..sroa_idx, align 8
  %.sroa.8210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.32.3278, ptr %.sroa.8210.0..sroa_idx, align 8
  %.sroa.9211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x ptr> %17, ptr %.sroa.9211.0..sroa_idx, align 8
  %.sroa.11213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.42122.3275, ptr %.sroa.11213.0..sroa_idx, align 8
  %.sroa.12214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.43.3274, ptr %.sroa.12214.0..sroa_idx, align 8
  br label %bb.cu

bb.hz:                                            ; preds = %bb.hy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.011.sroa.16.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.44, i64 120, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.011.sroa.17.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.45, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.814.0..sroa_idx15, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.52, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.44)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.45)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52)
  store i64 %i.qo, ptr %i.bu, align 8
  store ptr %.sroa.15167.0.i, ptr %.sroa.011.sroa.7.0..sroa_idx, align 8
  store ptr %.sroa.19.0.i, ptr %.sroa.011.sroa.8.0..sroa_idx, align 8
  store i64 %i.qp, ptr %.sroa.011.sroa.9.0..sroa_idx, align 8
  store ptr %.sroa.24.0.i, ptr %.sroa.011.sroa.10.0..sroa_idx, align 8
  %18 = shufflevector <2 x ptr> %i.px, <2 x ptr> %i.qn, <2 x i32> <i32 0, i32 2>
  store <2 x ptr> %18, ptr %.sroa.011.sroa.11.0..sroa_idx, align 8
  %19 = extractelement <2 x ptr> %i.qn, i64 1
  store ptr %19, ptr %.sroa.011.sroa.12.0..sroa_idx, align 8
  store ptr %.sroa.42122.48.copyload, ptr %.sroa.011.sroa.14.0..sroa_idx, align 8
  store i64 %.sroa.43.48.copyload, ptr %.sroa.011.sroa.15.0..sroa_idx, align 8
  store i8 %.sroa.46.200.copyload, ptr %.sroa.7.0..sroa_idx12, align 8
  %i.sc = load i64, ptr %i.jf, align 8, !alias.scope !24759, !noundef !4 ; 3 uses
  %i.sd = load i64, ptr %i.by, align 8, !range !16, !alias.scope !24759, !noundef !4
  %i.se = icmp eq i64 %i.sc, %i.sd
  br i1 %i.se, label %bb.ia, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm5LayerE8push_mutBL_.exit

bb.ia:                                            ; preds = %bb.hz
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm5LayerE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm5LayerE8push_mutBL_.exit unwind label %bb.ib, !noalias !24760

bb.ib:                                            ; preds = %bb.ia
  %i.sf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm5LayerEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.bu) #22
          to label %.body79 unwind label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.sg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm5LayerE8push_mutBL_.exit: ; preds = %bb.hz, %bb.ia
  %i.sh = load ptr, ptr %i.je, align 8, !alias.scope !24759, !nonnull !4, !noundef !4
  %i.si = getelementptr inbounds nuw [232 x i8], ptr %i.sh, i64 %i.sc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.si, ptr noundef nonnull align 8 dereferenceable(232) %i.bu, i64 232, i1 false)
  %i.sj = add i64 %i.sc, 1
  store i64 %i.sj, ptr %i.jf, align 8, !alias.scope !24759
  %exitcond.not = icmp eq i64 %i.ko, %i.is
  br i1 %exitcond.not, label %._crit_edge, label %bb.ck

bb.id:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm5LayerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %bb.if unwind label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.sk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm5LayerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %.body92 unwind label %bb.ig

bb.if:                                            ; preds = %bb.id
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm5LayerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm5LayerEEB1e_.exit unwind label %bb.cj

bb.ig:                                            ; preds = %bb.ie
  %i.sl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm5LayerEEB1e_.exit: ; preds = %bb.if
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.experimental.noalias.scope.decl(metadata !24761)
  call void @llvm.experimental.noalias.scope.decl(metadata !24762)
  %i.sm = load ptr, ptr %i.bz, align 8, !alias.scope !24763, !nonnull !4, !noundef !4
  %i.sn = atomicrmw add ptr %i.sm, i64 -1 release, align 8, !noalias !24763
  %i.so = icmp eq i64 %i.sn, 1
  br i1 %i.so, label %.invoke, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm15RotaryEmbeddingEEB1f_.exit95

.invoke:                                          ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm5LayerEEB1e_.exit, %bb.ct
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm15RotaryEmbeddingE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bz) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm15RotaryEmbeddingEEB1f_.exit95 unwind label %bb.by

bb.ih:                                            ; preds = %bb.cv
  %i.sp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sq = atomicrmw add ptr %i.lf, i64 -1 release, align 8, !noalias !24764
  %i.sr = icmp eq i64 %i.sq, 1
  br i1 %i.sr, label %bb.ii, label %.body79

bb.ii:                                            ; preds = %bb.ih
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm15RotaryEmbeddingE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bw) #20
          to label %.body79 unwind label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.cf, %.thread248, %.body79, %.body
  %i.ss = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

.thread248:                                       ; preds = %.body79, %.thread253
  %.pn63251 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread253 ], [ %.pn, %.body79 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models3csm5LayerEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.by) #22
          to label %.body92 unwind label %bb.ij

bb.ik:                                            ; preds = %bb.ch
  unreachable

bb.il:                                            ; preds = %.body
  resume { ptr, i32 } %.pn65.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models3csmNtB5_10LlamaModel7forward(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 11 uses
  %i.d = alloca [80 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 9 uses
  %i.f = alloca [80 x i8], align 8                ; 7 uses
  %i.g = alloca [80 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 12 uses
  %i.i = alloca [80 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 17 uses
  %i.k = alloca [80 x i8], align 8                ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 11 uses
  %i.m = alloca [80 x i8], align 8                ; 8 uses
  %i.n = alloca [80 x i8], align 8                ; 9 uses
  %i.o = alloca [8 x i8], align 8                 ; 16 uses
  %i.p = alloca [8 x i8], align 8                 ; 19 uses
  %i.q = alloca [80 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 25 uses
  %i.s = alloca [80 x i8], align 8                ; 7 uses
  %i.t = alloca [8 x i8], align 8                 ; 26 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = alloca [80 x i8], align 8                ; 7 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
  %i.x = alloca [80 x i8], align 8                ; 7 uses
  %i.y = alloca [8 x i8], align 8                 ; 9 uses
  %i.z = alloca [8 x i8], align 8                 ; 13 uses
  %i.aa = alloca [8 x i8], align 8                ; 8 uses
  %i.ab = alloca [80 x i8], align 8               ; 8 uses
  %i.ac = alloca [8 x i8], align 8                ; 25 uses
  %i.ad = alloca [8 x i8], align 8                ; 25 uses
  %i.ae = alloca [32 x i8], align 8               ; 6 uses
  %i.af = alloca [80 x i8], align 8               ; 7 uses
  %i.ag = alloca [8 x i8], align 8                ; 13 uses
  %i.ah = alloca [80 x i8], align 8               ; 8 uses
  %i.ai = alloca [8 x i8], align 8                ; 11 uses
  %i.aj = alloca [80 x i8], align 8               ; 9 uses
  %i.ak = alloca [8 x i8], align 8                ; 26 uses
  %i.al = alloca [32 x i8], align 8               ; 6 uses
  %i.am = alloca [80 x i8], align 8               ; 7 uses
  %i.an = alloca [8 x i8], align 8                ; 13 uses
  %i.ao = alloca [80 x i8], align 8               ; 8 uses
  %i.ap = alloca [8 x i8], align 8                ; 11 uses
  %i.aq = alloca [80 x i8], align 8               ; 9 uses
  %i.ar = alloca [8 x i8], align 8                ; 25 uses
  %i.as = alloca [32 x i8], align 8               ; 6 uses
  %i.at = alloca [80 x i8], align 8               ; 7 uses
  %i.au = alloca [8 x i8], align 8                ; 13 uses
  %i.av = alloca [80 x i8], align 8               ; 8 uses
  %i.aw = alloca [8 x i8], align 8                ; 11 uses
  %i.ax = alloca [80 x i8], align 8               ; 9 uses
  %i.ay = alloca [8 x i8], align 8                ; 25 uses
  %i.az = alloca [80 x i8], align 8               ; 7 uses
  %i.ba = alloca [8 x i8], align 8                ; 25 uses
  %i.bb = alloca [80 x i8], align 8               ; 7 uses
  %i.bc = alloca [8 x i8], align 8                ; 25 uses
  %i.bd = alloca [80 x i8], align 8               ; 7 uses
  %i.be = alloca [8 x i8], align 8                ; 25 uses
  %i.bf = alloca [80 x i8], align 8               ; 9 uses
  %i.bg = alloca [80 x i8], align 8               ; 7 uses
  %i.bh = alloca [8 x i8], align 8                ; 8 uses
  %i.bi = alloca [80 x i8], align 8               ; 8 uses
  %i.bj = alloca [8 x i8], align 8                ; 7 uses
  %i.bk = alloca [80 x i8], align 8               ; 7 uses
  %i.bl = alloca [8 x i8], align 8                ; 12 uses
  %i.bm = alloca [80 x i8], align 8               ; 17 uses
  %i.bn = alloca [80 x i8], align 8               ; 7 uses
  %i.bo = alloca [8 x i8], align 8                ; 13 uses
  %i.bp = alloca [32 x i8], align 8               ; 7 uses
  %i.bq = alloca [80 x i8], align 8               ; 7 uses
  %i.br = alloca [8 x i8], align 8                ; 9 uses
  %i.bs = alloca [16 x i8], align 8               ; 6 uses
  %i.bt = alloca [80 x i8], align 8               ; 7 uses
  %i.bu = alloca [80 x i8], align 8               ; 7 uses
  %i.bv = alloca [8 x i8], align 8                ; 12 uses
  %i.bw = alloca [8 x i8], align 8                ; 15 uses
  %i.bx = alloca [80 x i8], align 8               ; 7 uses
  %i.by = alloca [8 x i8], align 8                ; 18 uses
  %i.bz = alloca [88 x i8], align 8               ; 8 uses
  %i.ca = alloca [24 x i8], align 8               ; 19 uses
  %i.cb = alloca [8 x i8], align 8                ; 8 uses
  %i.cc = alloca [80 x i8], align 8               ; 7 uses
  %i.cd = alloca [8 x i8], align 8                ; 11 uses
  %i.ce = alloca [80 x i8], align 8               ; 8 uses
  %i.cf = alloca [8 x i8], align 8                ; 7 uses
  %i.cg = alloca [80 x i8], align 8               ; 11 uses
  %i.ch = alloca [8 x i8], align 8                ; 17 uses
  %i.ci = alloca [80 x i8], align 8               ; 16 uses
  %i.cj = alloca [8 x i8], align 8                ; 12 uses
  %i.ck = alloca [80 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  call void @_RNvMs12_NtCsltEA4u8Pgfu_11candle_core5shapeNtNtB8_6tensor6Tensor5dims3(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.ck, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
  %i.cl = load i64, ptr %i.ck, align 8, !range !13, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.cl, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %.sroa.665.0.copyload = load i64, ptr %.sroa.665.0..sroa_idx, align 8
end_hunk_1
