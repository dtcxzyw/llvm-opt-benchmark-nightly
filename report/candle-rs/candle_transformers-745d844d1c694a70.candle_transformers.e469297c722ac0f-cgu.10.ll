Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.10?download=true
inline.NumInlined: 4350
inline.NumDeleted: 216
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXs_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models5mmdit6blocksNtB4_17LayerNormNoAffineNtCsltEA4u8Pgfu_11candle_core6Module7forward:bb.a

bb.j:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i
  %i.t = atomicrmw add ptr %i.r, i64 -1 release, align 8, !noalias !37555
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.k, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECs1dZk1kIfPhr_19candle_transformers.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #25
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECs1dZk1kIfPhr_19candle_transformers.exit

bb.l:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.m, %bb.i ], [ %i.m, %bb.h ], [ %i.j, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.k, %bb.j, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.m:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvXs_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsRNCNvXNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4mimi12quantizationNtBS_14CodebookEncodeNtNtCsltEA4u8Pgfu_11candle_core9custom_op9CustomOp27cpu_fwd0INtB6_5FnMutTjEE8call_mutBY_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !18, !noundef !5 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37559)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !37559, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !37559, !nonnull !5, !align !18, !noundef !5
  %i.g = load i64, ptr %i.f, align 8, !noalias !37559, !noundef !5 ; 3 uses
  %i.h = mul i64 %i.g, %1                         ; 3 uses
  %i.i = add i64 %1, 1
  %i.j = mul i64 %i.g, %i.i                       ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.h
  %.not.i = icmp ugt i64 %i.j, %i.d
  %or.cond.i = or i1 %i.k, %.not.i
  br i1 %or.cond.i, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.b, align 8, !alias.scope !37559, !nonnull !5, !align !26, !noundef !5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.h ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !37559, !nonnull !5, !align !18, !noundef !5
  %i.p = load i64, ptr %i.o, align 8, !noalias !37559, !noundef !5 ; 2 uses
  %.not32.i = icmp eq i64 %i.p, 0
  br i1 %.not32.i, label %_RNCNvXNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4mimi12quantizationNtB4_14CodebookEncodeNtNtCsltEA4u8Pgfu_11candle_core9custom_op9CustomOp27cpu_fwd0Ba_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !37559, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !37559, !nonnull !5, !align !18, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !37559, !nonnull !5, !align !26
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.g
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %i.j, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #29, !noalias !37559
  unreachable

._crit_edge.loopexit.i:                           ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.thread.i
  %i.x = trunc i64 %.sroa.0.1.i to i32
  br label %_RNCNvXNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4mimi12quantizationNtB4_14CodebookEncodeNtNtCsltEA4u8Pgfu_11candle_core9custom_op9CustomOp27cpu_fwd0Ba_.exit

bb.d:                                             ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.thread.i, %.lr.ph.i
  %.sroa.0.030.i = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.0.1.i, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.thread.i ]
  %.sroa.01.029.i = phi float [ +inf, %.lr.ph.i ], [ %.sroa.01.1.i, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.thread.i ] ; 2 uses
  %.sroa.09.028.i = phi i64 [ 0, %.lr.ph.i ], [ %i.y, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.thread.i ] ; 3 uses
  %i.y = add nuw i64 %.sroa.09.028.i, 1           ; 3 uses
  %i.z = load i64, ptr %i.t, align 8, !noalias !37559, !noundef !5 ; 3 uses
  %i.aa = mul i64 %i.z, %.sroa.09.028.i           ; 3 uses
  %i.ab = mul i64 %i.z, %i.y                      ; 3 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %.not14.i = icmp ugt i64 %i.ab, %i.r
  %or.cond16.i = or i1 %i.ac, %.not14.i
  br i1 %or.cond16.i, label %bb.f, label %bb.e, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.z
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.m, ptr noundef nonnull %i.w, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae), !noalias !37559
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !noalias !37559 ; 6 uses
  %.sroa.417.0.copyload.i = load ptr, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !37559 ; 6 uses
  %.sroa.518.0.copyload.i = load i64, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !37559 ; 5 uses
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !37559 ; 4 uses
  %i.af = icmp ult i64 %.sroa.518.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.af, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.lr.ph.i, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.thread.i

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.lr.ph.i: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i), "nonnull"(ptr %.sroa.417.0.copyload.i) ]
  %i.ag = sub nuw i64 %.sroa.7.0.copyload.i, %.sroa.518.0.copyload.i
  %xtraiter = and i64 %i.ag, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.i.prol.loopexit, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.i.prol

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.i.prol: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.lr.ph.i, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.i.prol
  %.sroa.03.027.i.prol = phi float [ %i.ao, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.i.prol ], [ 0.000000e+00, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.lr.ph.i ]
  %.sroa.518.026.i.prol = phi i64 [ %i.aj, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.i.prol ], [ %.sroa.518.0.copyload.i, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.lr.ph.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.i.prol ], [ 0, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.lr.ph.i ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.518.026.i.prol
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.417.0.copyload.i, i64 %.sroa.518.026.i.prol
  %i.aj = add nuw i64 %.sroa.518.026.i.prol, 1    ; 2 uses
  %i.ak = load float, ptr %i.ah, align 4, !noalias !37559, !noundef !5
  %i.al = load float, ptr %i.ai, align 4, !noalias !37559, !noundef !5
  %i.am = fsub float %i.ak, %i.al                 ; 2 uses
  %i.an = fmul float %i.am, %i.am
  %i.ao = fadd float %.sroa.03.027.i.prol, %i.an  ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.i.prol.loopexit, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.i.prol, !llvm.loop !37558

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.i.prol, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.lr.ph.i
  %.lcssa.unr = phi float [ poison, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.lr.ph.i ], [ %i.ao, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.i.prol ]
  %.sroa.03.027.i.unr = phi float [ 0.000000e+00, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.lr.ph.i ], [ %i.ao, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.i.prol ]
  %.sroa.518.026.i.unr = phi i64 [ %.sroa.518.0.copyload.i, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.lr.ph.i ], [ %i.aj, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.i.prol ]
  %i.ap = sub i64 %.sroa.518.0.copyload.i, %.sroa.7.0.copyload.i
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.thread.i, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.i

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.aa, i64 noundef %i.ab, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #29, !noalias !37559
  unreachable

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.i: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.i.prol.loopexit, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.i
  %.sroa.03.027.i = phi float [ %i.bw, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.i ], [ %.sroa.03.027.i.unr, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.i.prol.loopexit ]
  %.sroa.518.026.i = phi i64 [ %i.br, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.i ], [ %.sroa.518.026.i.unr, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.i.prol.loopexit ] ; 6 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.518.026.i
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.sroa.417.0.copyload.i, i64 %.sroa.518.026.i
  %i.at = add nuw i64 %.sroa.518.026.i, 1         ; 2 uses
  %i.au = load float, ptr %i.ar, align 4, !noalias !37559, !noundef !5
  %i.av = load float, ptr %i.as, align 4, !noalias !37559, !noundef !5
  %i.aw = fsub float %i.au, %i.av                 ; 2 uses
  %i.ax = fmul float %i.aw, %i.aw
  %i.ay = fadd float %.sroa.03.027.i, %i.ax
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.at
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.sroa.417.0.copyload.i, i64 %i.at
  %i.bb = add nuw i64 %.sroa.518.026.i, 2         ; 2 uses
  %i.bc = load float, ptr %i.az, align 4, !noalias !37559, !noundef !5
  %i.bd = load float, ptr %i.ba, align 4, !noalias !37559, !noundef !5
  %i.be = fsub float %i.bc, %i.bd                 ; 2 uses
  %i.bf = fmul float %i.be, %i.be
  %i.bg = fadd float %i.ay, %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.bb
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.417.0.copyload.i, i64 %i.bb
  %i.bj = add nuw i64 %.sroa.518.026.i, 3         ; 2 uses
  %i.bk = load float, ptr %i.bh, align 4, !noalias !37559, !noundef !5
  %i.bl = load float, ptr %i.bi, align 4, !noalias !37559, !noundef !5
  %i.bm = fsub float %i.bk, %i.bl                 ; 2 uses
  %i.bn = fmul float %i.bm, %i.bm
  %i.bo = fadd float %i.bg, %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.bj
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.417.0.copyload.i, i64 %i.bj
  %i.br = add nuw i64 %.sroa.518.026.i, 4         ; 2 uses
  %i.bs = load float, ptr %i.bp, align 4, !noalias !37559, !noundef !5
  %i.bt = load float, ptr %i.bq, align 4, !noalias !37559, !noundef !5
  %i.bu = fsub float %i.bs, %i.bt                 ; 2 uses
  %i.bv = fmul float %i.bu, %i.bu
  %i.bw = fadd float %i.bo, %i.bv                 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.br, %.sroa.7.0.copyload.i
  br i1 %exitcond.not.i.3, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.thread.i, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.i

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.i.prol.loopexit, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.i, %bb.e
  %.sroa.03.0.lcssa.i = phi float [ 0.000000e+00, %bb.e ], [ %.lcssa.unr, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.i.prol.loopexit ], [ %i.bw, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E4nextCs1dZk1kIfPhr_19candle_transformers.exit.i ] ; 2 uses
  %i.bx = fcmp olt float %.sroa.03.0.lcssa.i, %.sroa.01.029.i ; 2 uses
  %.sroa.01.1.i = select i1 %i.bx, float %.sroa.03.0.lcssa.i, float %.sroa.01.029.i
  %.sroa.0.1.i = select i1 %i.bx, i64 %.sroa.09.028.i, i64 %.sroa.0.030.i ; 2 uses
  %exitcond37.not.i = icmp eq i64 %i.y, %i.p
  br i1 %exitcond37.not.i, label %._crit_edge.loopexit.i, label %bb.d

_RNCNvXNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4mimi12quantizationNtB4_14CodebookEncodeNtNtCsltEA4u8Pgfu_11candle_core9custom_op9CustomOp27cpu_fwd0Ba_.exit: ; preds = %bb.b, %._crit_edge.loopexit.i
  %.sroa.0.0.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.x, %._crit_edge.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.sroa.0.0.lcssa.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsRNCNvXs0_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16segment_anything13image_encoderNtBV_4Add3NtNtCsltEA4u8Pgfu_11candle_core9custom_op9CustomOp37cpu_fwd0INtB6_5FnMutTTjQSfEEE8call_mutB11_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !18, !noundef !5 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37572)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !37572, !nonnull !5, !align !18, !noundef !5
  %i.c = load i64, ptr %i.b, align 8, !noalias !37573, !noundef !5 ; 5 uses
  %i.d = mul i64 %i.c, %.sroa.0.0.copyload        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !37572, !nonnull !5, !align !18, !noundef !5 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noalias !37573, !noundef !5 ; 4 uses
  %i.h = mul i64 %i.g, %i.d
  %i.i = mul i64 %i.g, %.sroa.0.0.copyload        ; 3 uses
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_RNCNvXs0_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16segment_anything13image_encoderNtB7_4Add3NtNtCsltEA4u8Pgfu_11candle_core9custom_op9CustomOp37cpu_fwd0Bd_.exit, label %.lr.ph71.i

.lr.ph71.i:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !37572 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !37572 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !37572, !nonnull !5, !align !26 ; 4 uses
  %i.q = load ptr, ptr %i.n, align 8, !alias.scope !37572, !nonnull !5, !align !26 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !37572 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !37572, !nonnull !5, !align !26 ; 4 uses
  %.not72.i = icmp eq i64 %i.g, 0
  br i1 %.not72.i, label %_RNCNvXs0_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16segment_anything13image_encoderNtB7_4Add3NtNtCsltEA4u8Pgfu_11candle_core9custom_op9CustomOp37cpu_fwd0Bd_.exit, label %.lr.ph71.split.i.preheader

.lr.ph71.split.i.preheader:                       ; preds = %.lr.ph71.i
  %i.v = mul i64 %i.g, %.sroa.0.0.copyload
  %i.w = shl i64 %i.v, 2                          ; 2 uses
  %scevgep96 = getelementptr i8, ptr %i.u, i64 %i.w
  %i.x = shl i64 %.sroa.0.0.copyload, 2
  %i.y = add i64 %i.x, 4
  %i.z = mul i64 %i.c, %i.y
  %scevgep97 = getelementptr i8, ptr %i.q, i64 %i.z
  %i.aa = mul i64 %i.c, %.sroa.0.0.copyload
  %i.ab = shl i64 %i.aa, 2
  %scevgep99 = getelementptr i8, ptr %i.q, i64 %i.ab
  %i.ac = tail call i64 @llvm.usub.sat.i64(i64 %i.s, i64 %i.i)
  %i.ad = freeze i64 %i.ac                        ; 2 uses
  %2 = getelementptr i8, ptr %i.u, i64 %i.w
  %invariant.gep149 = getelementptr [4 x i8], ptr %i.u, i64 %i.i
  br label %.lr.ph71.split.i

.loopexit.i:                                      ; preds = %bb.d, %.lr.ph71.split.i
  %exitcond94.not.i = icmp eq i64 %i.ae, %i.c
  br i1 %exitcond94.not.i, label %_RNCNvXs0_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16segment_anything13image_encoderNtB7_4Add3NtNtCsltEA4u8Pgfu_11candle_core9custom_op9CustomOp37cpu_fwd0Bd_.exit, label %.lr.ph71.split.i, !llvm.loop !37564

.lr.ph71.split.i:                                 ; preds = %.lr.ph71.split.i.preheader, %.loopexit.i
  %.sroa.03.070.i = phi i64 [ %i.ae, %.loopexit.i ], [ 0, %.lr.ph71.split.i.preheader ] ; 6 uses
  %i.ae = add nuw i64 %.sroa.03.070.i, 1          ; 2 uses
  %i.af = load i64, ptr %i.f, align 8, !noalias !37573, !noundef !5 ; 7 uses
  %i.ag = mul i64 %i.af, %.sroa.03.070.i          ; 4 uses
  %i.ah = add i64 %i.ag, %i.h                     ; 7 uses
  %.not73.i = icmp eq i64 %i.af, 0
  br i1 %.not73.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph71.split.i
  %i.ai = add i64 %.sroa.03.070.i, %i.d           ; 3 uses
  %i.aj = icmp ult i64 %i.ai, %i.m
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ai ; 2 uses
  %.fr.i = freeze i1 %i.aj
  br i1 %.fr.i, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %i.al = tail call i64 @llvm.umax.i64(i64 %.sroa.3.0.copyload, i64 %i.ag) ; 2 uses
  %i.am = mul i64 %.sroa.03.070.i, %i.af
  %i.an = sub i64 %i.al, %i.am
  %i.ao = add i64 %i.af, -1                       ; 2 uses
  %.fr = freeze i64 %i.an
  %i.ap = tail call i64 @llvm.umin.i64(i64 %.fr, i64 %i.ao)
  %i.aq = tail call i64 @llvm.usub.sat.i64(i64 %i.k, i64 %i.ah)
  %i.ar = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.ad)
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.aq)
  %i.at = add i64 %i.as, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.at, 13
  br i1 %min.iters.check, label %.lr.ph.split.us.i.preheader110, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.i.preheader
  %3 = shl i64 %.sroa.03.070.i, 2
  %4 = mul i64 %i.af, %3                          ; 2 uses
  %5 = getelementptr i8, ptr %.sroa.2.0.copyload, i64 %4 ; 3 uses
  %i.au = mul i64 %.sroa.03.070.i, %i.af
  %i.av = sub i64 %i.al, %i.au
  %.fr109 = freeze i64 %i.av
  %umin = tail call i64 @llvm.umin.i64(i64 %.fr109, i64 %i.ao)
  %umin89 = tail call i64 @llvm.usub.sat.i64(i64 %i.k, i64 %i.ah)
  %i.aw = tail call i64 @llvm.umin.i64(i64 %umin, i64 %i.ad)
  %umin91 = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %umin89)
  %i.ax = shl i64 %umin91, 2                      ; 3 uses
  %6 = getelementptr i8, ptr %.sroa.2.0.copyload, i64 %4
  %i.ay = getelementptr i8, ptr %6, i64 %i.ax
  %scevgep92 = getelementptr i8, ptr %i.ay, i64 4 ; 3 uses
  %i.az = shl i64 %i.ah, 2                        ; 2 uses
  %7 = getelementptr i8, ptr %i.p, i64 %i.az
  %8 = getelementptr i8, ptr %i.p, i64 %i.ax
  %scevgep93 = getelementptr i8, ptr %8, i64 %i.az
  %i.ba = getelementptr i8, ptr %scevgep93, i64 4
  %scevgep95 = getelementptr i8, ptr %2, i64 %i.ax
  %scevgep100 = getelementptr i8, ptr %scevgep95, i64 4
  %bound0 = icmp ult ptr %5, %i.ba
  %bound1 = icmp ult ptr %7, %scevgep92
  %found.conflict = and i1 %bound0, %bound1
  %bound0101 = icmp ult ptr %5, %scevgep97
  %bound1102 = icmp ult ptr %scevgep99, %scevgep92
  %found.conflict103 = and i1 %bound0101, %bound1102
  %conflict.rdx = or i1 %found.conflict, %found.conflict103
  %bound0104 = icmp ult ptr %5, %scevgep100
  %bound1105 = icmp ult ptr %scevgep96, %scevgep92
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx107 = or i1 %conflict.rdx, %found.conflict106
  br i1 %conflict.rdx107, label %.lr.ph.split.us.i.preheader110, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bb = and i64 %i.at, 3                        ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  %i.bd = select i1 %i.bc, i64 4, i64 %i.bb
  %n.vec = sub i64 %i.at, %i.bd                   ; 2 uses
  %i.be = load float, ptr %i.ak, align 4, !alias.scope !37574, !noalias !37573
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.be, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep = getelementptr [4 x i8], ptr %i.p, i64 %i.ah
  %invariant.gep151 = getelementptr [4 x i8], ptr %.sroa.2.0.copyload, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <4 x float>, ptr %gep, align 4, !alias.scope !37575, !noalias !37573
  %i.bf = fadd <4 x float> %wide.load, %broadcast.splat
  %gep150 = getelementptr [4 x i8], ptr %invariant.gep149, i64 %index
  %wide.load108 = load <4 x float>, ptr %gep150, align 4, !alias.scope !37576, !noalias !37573
  %gep152 = getelementptr [4 x i8], ptr %invariant.gep151, i64 %index
  %i.bg = fadd <4 x float> %i.bf, %wide.load108
  store <4 x float> %i.bg, ptr %gep152, align 4, !alias.scope !37577, !noalias !37578
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %.lr.ph.split.us.i.preheader110, label %vector.body, !llvm.loop !37570

.lr.ph.split.us.i.preheader110:                   ; preds = %vector.body, %vector.memcheck, %.lr.ph.split.us.i.preheader
  %.sroa.05.041.us.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.i.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader110, %bb.d
  %.sroa.05.041.us.i = phi i64 [ %i.bi, %bb.d ], [ %.sroa.05.041.us.i.ph, %.lr.ph.split.us.i.preheader110 ] ; 4 uses
  %i.bi = add nuw i64 %.sroa.05.041.us.i, 1       ; 2 uses
  %i.bj = add nuw i64 %.sroa.05.041.us.i, %i.ah   ; 3 uses
  %i.bk = add nuw i64 %.sroa.05.041.us.i, %i.i    ; 3 uses
  %i.bl = add nuw i64 %.sroa.05.041.us.i, %i.ag   ; 3 uses
  %i.bm = icmp ult i64 %i.bj, %i.k
  br i1 %i.bm, label %bb.b, label %.split.us.i

bb.b:                                             ; preds = %.lr.ph.split.us.i
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bj
  %i.bo = load float, ptr %i.bn, align 4, !noalias !37573, !noundef !5
  %i.bp = load float, ptr %i.ak, align 4, !noalias !37573, !noundef !5
  %i.bq = fadd float %i.bo, %i.bp
  %i.br = icmp ult i64 %i.bk, %i.s
  br i1 %i.br, label %bb.c, label %.split44.us.i

bb.c:                                             ; preds = %bb.b
  %i.bs = icmp ult i64 %i.bl, %.sroa.3.0.copyload
  br i1 %i.bs, label %bb.d, label %.split48.us.i

bb.d:                                             ; preds = %bb.c
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bk
  %i.bu = load float, ptr %i.bt, align 4, !noalias !37573, !noundef !5
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.2.0.copyload, i64 %i.bl
  %i.bw = fadd float %i.bq, %i.bu
  store float %i.bw, ptr %i.bv, align 4, !noalias !37573
  %exitcond.not.i = icmp eq i64 %i.bi, %i.af
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.split.us.i, !llvm.loop !37571

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.bx = icmp ult i64 %i.ah, %i.k
  br i1 %i.bx, label %bb.e, label %.split.us.i

.split.us.i:                                      ; preds = %.lr.ph.split.us.i, %.lr.ph.split.i
  %.us-phi.i = phi i64 [ %i.ah, %.lr.ph.split.i ], [ %i.bj, %.lr.ph.split.us.i ]
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.us-phi.i, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #29, !noalias !37573
  unreachable

bb.e:                                             ; preds = %.lr.ph.split.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #29, !noalias !37573
  unreachable

.split44.us.i:                                    ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bk, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #29, !noalias !37573
  unreachable

.split48.us.i:                                    ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bl, i64 noundef %.sroa.3.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #29, !noalias !37573
  unreachable

_RNCNvXs0_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16segment_anything13image_encoderNtB7_4Add3NtNtCsltEA4u8Pgfu_11candle_core9custom_op9CustomOp37cpu_fwd0Bd_.exit: ; preds = %.loopexit.i, %bb.a, %.lr.ph71.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsb_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models12chinese_clip10text_modelNtB5_21ChineseClipTextPoolerNtCsltEA4u8Pgfu_11candle_core6Module7forward(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 8 uses
  %i.d = alloca [80 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXsc_NtCsltEA4u8Pgfu_11candle_core7indexerNtNtB7_6tensor6TensorINtB5_7IndexOpTNtNtNtCsf3Ta7LF998c_4core3ops5range9RangeFulljEE1iCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i64 noundef 0)
  %i.f = load i64, ptr %i.d, align 8, !range !16, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.f, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.534.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.531.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.f, ptr %0, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.433.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit66

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.h, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs_NtCs3NyA1pFSltE_9candle_nn6linearNtB4_6LinearNtCsltEA4u8Pgfu_11candle_core6Module7forward(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %bb.f unwind label %bb.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit60: ; preds = %bb.i, %bb.j, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.p, %bb.j ], [ %i.p, %bb.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !37617)
  call void @llvm.experimental.noalias.scope.decl(metadata !37618)
  call void @llvm.experimental.noalias.scope.decl(metadata !37619)
  %i.i = load ptr, ptr %i.e, align 8, !alias.scope !37620, !nonnull !5, !noundef !5
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !37620
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit60
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.q

bb.e:                                             ; preds = %bb.n, %bb.l, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit60

bb.f:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.b, align 8, !range !16, !noundef !5 ; 2 uses
  %.not55 = icmp eq i64 %i.m, -1
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 5 uses
  br i1 %.not55, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.543.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.540.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.m, ptr %0, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %.sroa.442.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit62

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.o, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor4tanh(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %_RNvXs9_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models12chinese_clip10text_modelNtB5_4TanhNtCsltEA4u8Pgfu_11candle_core6Module7forward.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = atomicrmw add ptr %i.o, i64 -1 release, align 8, !noalias !37621
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit60

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit60 unwind label %bb.q

_RNvXs9_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models12chinese_clip10text_modelNtB5_4TanhNtCsltEA4u8Pgfu_11candle_core6Module7forward.exit: ; preds = %bb.h
  %i.s = load i64, ptr %i.a, align 8, !range !16, !noundef !5 ; 2 uses
  %.not56 = icmp eq i64 %i.s, -1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  br i1 %.not56, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_RNvXs9_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models12chinese_clip10text_modelNtB5_4TanhNtCsltEA4u8Pgfu_11candle_core6Module7forward.exit
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.552.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.549.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.s, ptr %0, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %.sroa.451.0..sroa_idx, align 8
  %i.v = atomicrmw add ptr %i.o, i64 -1 release, align 8, !noalias !37622
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit62

bb.l:                                             ; preds = %bb.k
end_hunk_0
