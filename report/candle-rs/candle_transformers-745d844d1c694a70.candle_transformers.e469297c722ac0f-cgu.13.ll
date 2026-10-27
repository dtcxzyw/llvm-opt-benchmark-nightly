Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.13?download=true
inline.NumInlined: 4898
inline.NumDeleted: 279
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs5_NtNtCs1dZk1kIfPhr_19candle_transformers6models5gemmaNtB5_12DecoderLayer7forward:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  %i.abg = load ptr, ptr %i.bm, align 8, !nonnull !4, !noundef !4
  invoke void @_RNvXsl_NtCsltEA4u8Pgfu_11candle_core6tensorRNtB5_6TensorINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddBG_E3addCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bo, ptr noundef nonnull %i.abg)
          to label %bb.mk unwind label %bb.mj

bb.mk:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.experimental.noalias.scope.decl(metadata !35165)
  call void @llvm.experimental.noalias.scope.decl(metadata !35166)
  call void @llvm.experimental.noalias.scope.decl(metadata !35167)
  %i.abh = load ptr, ptr %i.bo, align 8, !alias.scope !35168, !nonnull !4, !noundef !4
  %i.abi = atomicrmw add ptr %i.abh, i64 -1 release, align 8, !noalias !35168
  %i.abj = icmp eq i64 %i.abi, 1
  br i1 %i.abj, label %bb.ml, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit115

bb.ml:                                            ; preds = %bb.mk
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bo) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit115 unwind label %bb.ls

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit115: ; preds = %bb.mk, %bb.ml
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.experimental.noalias.scope.decl(metadata !35169)
  call void @llvm.experimental.noalias.scope.decl(metadata !35170)
  call void @llvm.experimental.noalias.scope.decl(metadata !35171)
  %i.abk = load ptr, ptr %i.br, align 8, !alias.scope !35172, !nonnull !4, !noundef !4
  %i.abl = atomicrmw add ptr %i.abk, i64 -1 release, align 8, !noalias !35172
  %i.abm = icmp eq i64 %i.abl, 1
  br i1 %i.abm, label %bb.mm, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit121

bb.mm:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit115
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.br) #20
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit121

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit121: ; preds = %bb.mm, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit115, %bb.b, %bb.mr, %bb.ms
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  ret void

bb.mn:                                            ; preds = %bb.mi
  %i.abn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35173)
  call void @llvm.experimental.noalias.scope.decl(metadata !35174)
  call void @llvm.experimental.noalias.scope.decl(metadata !35175)
  %i.abo = load ptr, ptr %i.bm, align 8, !alias.scope !35176, !nonnull !4, !noundef !4
  %i.abp = atomicrmw add ptr %i.abo, i64 -1 release, align 8, !noalias !35176
  %i.abq = icmp eq i64 %i.abp, 1
  br i1 %i.abq, label %bb.mo, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit109

bb.mo:                                            ; preds = %bb.mn
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bm) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit109 unwind label %bb.mp

bb.mp:                                            ; preds = %bb.mo, %bb.md, %bb.ly, %bb.lr
  %i.abr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit111: ; preds = %bb.mf, %bb.mg, %bb.ma
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.experimental.noalias.scope.decl(metadata !35177)
  call void @llvm.experimental.noalias.scope.decl(metadata !35178)
  call void @llvm.experimental.noalias.scope.decl(metadata !35179)
  %i.abs = load ptr, ptr %i.bo, align 8, !alias.scope !35180, !nonnull !4, !noundef !4
  %i.abt = atomicrmw add ptr %i.abs, i64 -1 release, align 8, !noalias !35180
  %i.abu = icmp eq i64 %i.abt, 1
  br i1 %i.abu, label %bb.mq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit120

bb.mq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit111
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bo) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit120 unwind label %bb.ls

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit120: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit111, %bb.mq, %bb.lw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.mr

bb.mr:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit120, %bb.lt
  call void @llvm.experimental.noalias.scope.decl(metadata !35181)
  call void @llvm.experimental.noalias.scope.decl(metadata !35182)
  call void @llvm.experimental.noalias.scope.decl(metadata !35183)
  %i.abv = load ptr, ptr %i.br, align 8, !alias.scope !35184, !nonnull !4, !noundef !4
  %i.abw = atomicrmw add ptr %i.abv, i64 -1 release, align 8, !noalias !35184
  %i.abx = icmp eq i64 %i.abw, 1
  br i1 %i.abx, label %bb.ms, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit121

bb.ms:                                            ; preds = %bb.mr
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.br) #20
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit121

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.body, %bb.lr
  resume { ptr, i32 } %.pn98
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtCs1dZk1kIfPhr_19candle_transformers6models5trocrNtB5_10TrOCRModel14reset_kv_cache(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(288) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %.val1, 368
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i.i
  %i.d = icmp eq i64 %.val1, 0
  br i1 %i.d, label %_RNvMs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models5trocrNtB5_16TrOCRForCausalLM14reset_kv_cache.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RNCNvMs2_NtNtCs1dZk1kIfPhr_19candle_transformers6models5trocrNtB7_12TrOCRDecoder14reset_kv_cache0Bb_.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.e, %_RNCNvMs2_NtNtCs1dZk1kIfPhr_19candle_transformers6models5trocrNtB7_12TrOCRDecoder14reset_kv_cache0Bb_.exit.i.i.i ], [ %.val, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 368 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35215)
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 200 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35216)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !35217, !noundef !4 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RNCNvMs2_NtNtCs1dZk1kIfPhr_19candle_transformers6models5trocrNtB7_12TrOCRDecoder14reset_kv_cache0Bb_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35218)
  %i.i = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !35219
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 208 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35222)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !35223, !nonnull !4, !noundef !4
  %i.n = atomicrmw add ptr %i.m, i64 -1 release, align 8, !noalias !35224
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.e, label %.body.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #20
          to label %.body.i.i.i.i.i.i unwind label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 208 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35227)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !35228, !nonnull !4, !noundef !4
  %i.r = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !35229
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.f, label %_RNCNvMs2_NtNtCs1dZk1kIfPhr_19candle_transformers6models5trocrNtB7_12TrOCRDecoder14reset_kv_cache0Bb_.exit.i.i.i

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #20
          to label %_RNCNvMs2_NtNtCs1dZk1kIfPhr_19candle_transformers6models5trocrNtB7_12TrOCRDecoder14reset_kv_cache0Bb_.exit.i.i.i unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.h, %bb.e, %bb.d
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.u, %bb.h ], [ %i.k, %bb.e ], [ %i.k, %bb.d ]
  store ptr null, ptr %i.f, align 8, !alias.scope !35230
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i

_RNCNvMs2_NtNtCs1dZk1kIfPhr_19candle_transformers6models5trocrNtB7_12TrOCRDecoder14reset_kv_cache0Bb_.exit.i.i.i: ; preds = %bb.f, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  store ptr null, ptr %i.f, align 8, !alias.scope !35230
  %i.v = icmp eq ptr %i.e, %i.c
  br i1 %i.v, label %_RNvMs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models5trocrNtB5_16TrOCRForCausalLM14reset_kv_cache.exit, label %.lr.ph.i.i.i

_RNvMs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models5trocrNtB5_16TrOCRForCausalLM14reset_kv_cache.exit: ; preds = %_RNCNvMs2_NtNtCs1dZk1kIfPhr_19candle_transformers6models5trocrNtB7_12TrOCRDecoder14reset_kv_cache0Bb_.exit.i.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtCs1dZk1kIfPhr_19candle_transformers6models5trocrNtB5_10TrOCRModel3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([288 x i8]) align 8 captures(none) dereferenceable(288) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(160) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %.sroa.67 = alloca [80 x i8], align 8           ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [192 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [80 x i8], align 8            ; 6 uses
  %i.e = alloca [192 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXNtCs3NyA1pFSltE_9candle_nn11var_builderINtB2_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB2_13SimpleBackendEL_EENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtNtCs1dZk1kIfPhr_19candle_transformers6models5trocrNtB5_12TrOCREncoder3new(ptr noalias nofree noundef nonnull sret([192 x i8]) align 8 captures(none) dereferenceable(192) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.f = load i64, ptr %i.d, align 8, !range !6, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false)
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, i64 80, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %3)
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.520.0..sroa_idx, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, i64 80, i1 false)
  store i64 %i.f, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  invoke void @_RNvMs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models5trocrNtB5_16TrOCRForCausalLM3new(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models5trocr12TrOCREncoderEBH_(ptr noalias nofree noundef align 8 dereferenceable(192) %i.e) #22
          to label %.thread unwind label %bb.k

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = load i64, ptr %i.b, align 8, !range !5, !noundef !4 ; 2 uses
  %i.l = icmp eq i64 %i.k, 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.67, ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 80, i1 false)
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.67, i64 80, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models5trocr12TrOCREncoderEBH_(ptr noalias nofree noundef align 8 dereferenceable(192) %i.e)
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.523.0.copyload = load i64, ptr %.sroa.523.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.414.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.67, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.616.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(192) %i.e, i64 192, i1 false)
  store i64 %i.k, ptr %0, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.523.0.copyload, ptr %.sroa.515.0..sroa_idx, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.d
  ret void

bb.k:                                             ; preds = %bb.l, %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

.thread:                                          ; preds = %bb.f, %bb.l
  %.pn29 = phi { ptr, i32 } [ %i.j, %bb.f ], [ %lpad.thr_comm, %bb.l ]
  resume { ptr, i32 } %.pn29

bb.l:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %3) #22
          to label %.thread unwind label %bb.k
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtCs1dZk1kIfPhr_19candle_transformers6models5trocrNtB5_10TrOCRModel6decode(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(288) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = alloca [88 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [80 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor3dimjECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i64 noundef 1)
  %i.g = load i64, ptr %i.e, align 8, !range !13, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.g, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 5 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.541.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.521.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.g, ptr %0, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %.sroa.440.0..sroa_idx, align 8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.i, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %.sroa.531.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.f, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i64 %i.i, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  call void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecfEINtB2_18SpecFromIterNestedfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtB1D_3ops5range5RangejEINtNtB1z_3map3MapB2q_NCNCNvMs5_NtNtCs1dZk1kIfPhr_19candle_transformers6models5trocrNtB3o_10TrOCRModel6decode00ENCB3i_0EE9from_iterB3s_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 145
  call void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor13from_vec_implTjjEfECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %i.i, i64 noundef %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.k, i1 noundef zeroext false)
  %i.l = load i64, ptr %i.a, align 8, !range !13, !noundef !4 ; 2 uses
  %.not54 = icmp eq i64 %i.l, -1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  br i1 %.not54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.550.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.547.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.l, ptr %0, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %.sroa.449.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.n, ptr %i.b, align 8
  invoke void @_RNvMs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models5trocrNtB5_16TrOCRForCausalLM7forward(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = atomicrmw add ptr %i.n, i64 -1 release, align 8, !noalias !35243
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.r = atomicrmw add ptr %i.n, i64 -1 release, align 8, !noalias !35244
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit55

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #20
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit55

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit55: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.d, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.k:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtCs1dZk1kIfPhr_19candle_transformers6models9qwen3_moeNtB5_5Model3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(160) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.617.i.i.i = alloca [56 x i8], align 8    ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.68.i.i.i = alloca [56 x i8], align 8     ; 6 uses
  %i.e = alloca [56 x i8], align 8                ; 10 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.6.i.i.i = alloca [56 x i8], align 8      ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 14 uses
  %.sroa.0.i.sroa.8.i.sroa.0.i = alloca [56 x i8], align 8 ; 8 uses
  %.sroa.0.i.sroa.8.i.sroa.10.i = alloca [80 x i8], align 8 ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.013.i.sroa.5.i = alloca [56 x i8], align 8 ; 5 uses
  %i.j = alloca [184 x i8], align 8               ; 11 uses
  %i.k = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.14.i.i = alloca [56 x i8], align 8       ; 8 uses
  %.sroa.20.i.i = alloca [80 x i8], align 8       ; 5 uses
  %.sroa.69.sroa.7.i.i = alloca [56 x i8], align 8 ; 6 uses
  %i.l = alloca [40 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  %i.n = alloca [40 x i8], align 8                ; 4 uses
  %i.o = alloca [80 x i8], align 8                ; 8 uses
  %.sroa.6.i.i = alloca [56 x i8], align 8        ; 6 uses
  %i.p = alloca [56 x i8], align 8                ; 8 uses
  %.sroa.8195 = alloca [480 x i8], align 8        ; 6 uses
  %i.q = alloca [40 x i8], align 8                ; 4 uses
  %i.r = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.636.i.sroa.0 = alloca [56 x i8], align 8 ; 6 uses
  %i.s = alloca [40 x i8], align 8                ; 4 uses
  %i.t = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.630.i.sroa.0 = alloca [56 x i8], align 8 ; 6 uses
  %i.u = alloca [72 x i8], align 8                ; 9 uses
  %i.v = alloca [40 x i8], align 8                ; 4 uses
  %i.w = alloca [128 x i8], align 8               ; 16 uses
  %i.x = alloca [184 x i8], align 8               ; 10 uses
  %.sroa.621.i.sroa.7 = alloca [56 x i8], align 8 ; 6 uses
  %i.y = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.12.i = alloca [56 x i8], align 8         ; 6 uses
  %.sroa.613.sroa.7.i = alloca [56 x i8], align 8 ; 6 uses
  %i.z = alloca [184 x i8], align 8               ; 15 uses
  %i.aa = alloca [40 x i8], align 8               ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [440 x i8], align 8              ; 10 uses
  %.sroa.6.i.sroa.7 = alloca [56 x i8], align 8   ; 6 uses
  %i.ad = alloca [440 x i8], align 8              ; 11 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [32 x i8], align 8               ; 8 uses
  %i.ag = alloca [40 x i8], align 8               ; 4 uses
  %i.ah = alloca [80 x i8], align 8               ; 5 uses
  %.sroa.637 = alloca [72 x i8], align 8          ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 9 uses
  %i.aj = alloca [16 x i8], align 8               ; 12 uses
  %.sroa.031 = alloca [96 x i8], align 8          ; 6 uses
  %i.ak = alloca [768 x i8], align 8              ; 11 uses
  %i.al = alloca [40 x i8], align 8               ; 10 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.18 = alloca [56 x i8], align 8           ; 10 uses
  %.sroa.23.sroa.0 = alloca [480 x i8], align 8   ; 5 uses
  %.sroa.23.sroa.7 = alloca [184 x i8], align 8   ; 5 uses
  %.sroa.627.sroa.7 = alloca [56 x i8], align 8   ; 6 uses
  %i.an = alloca [40 x i8], align 8               ; 11 uses
  %i.ao = alloca [24 x i8], align 8               ; 14 uses
end_hunk_0
