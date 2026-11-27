Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_nn-a379132c9889b806.candle_nn.2c40c590752a5884-cgu.10?download=true
inline.NumInlined: 476
inline.NumDeleted: 205
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs5_NtCs3NyA1pFSltE_9candle_nn4convNtB5_6Conv2d9absorb_bn:bb.a
bb.bl:                                            ; preds = %bb.bk
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #21
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit290 unwind label %bb.az

bb.bm:                                            ; preds = %bb.bj
  %i.ei = load i64, ptr %i.g, align 8, !range !5, !noundef !4 ; 2 uses
  %.not248 = icmp eq i64 %i.ei, -1
  %i.ej = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8            ; 2 uses
  br i1 %.not248, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.sroa.5228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5231.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5228.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 %i.ei, ptr %0, align 8
  %.sroa.4230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ek, ptr %.sroa.4230.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !615)
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  call void @llvm.experimental.noalias.scope.decl(metadata !617)
  %i.el = load ptr, ptr %i.f, align 8, !alias.scope !618, !nonnull !4, !noundef !4
  %i.em = atomicrmw add ptr %i.el, i64 -1 release, align 8, !noalias !618
  %i.en = icmp eq i64 %i.em, 1
  br i1 %i.en, label %bb.bo, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit292

bb.bo:                                            ; preds = %bb.bn
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #21
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit292 unwind label %bb.bg

bb.bp:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  call void @llvm.experimental.noalias.scope.decl(metadata !620)
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  %i.eo = load ptr, ptr %i.f, align 8, !alias.scope !622, !nonnull !4, !noundef !4
  %i.ep = atomicrmw add ptr %i.eo, i64 -1 release, align 8, !noalias !622
  %i.eq = icmp eq i64 %i.ep, 1
  br i1 %i.eq, label %bb.bq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit294

bb.bq:                                            ; preds = %bb.bp
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #21
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit294 unwind label %bb.bg

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit294: ; preds = %bb.bp, %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.er = load ptr, ptr %i.d, align 8, !alias.scope !626, !nonnull !4, !noundef !4
  %i.es = atomicrmw add ptr %i.er, i64 -1 release, align 8, !noalias !626
  %i.et = icmp eq i64 %i.es, 1
  br i1 %i.et, label %bb.br, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit296

bb.br:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit294
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit296 unwind label %bb.ak

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit296: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit294, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ax

bb.bs:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3NyA1pFSltE_9candle_nn.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit299, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit284
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit292: ; preds = %bb.bn, %bb.bo, %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.eu = load ptr, ptr %i.d, align 8, !alias.scope !630, !nonnull !4, !noundef !4
  %i.ev = atomicrmw add ptr %i.eu, i64 -1 release, align 8, !noalias !630
  %i.ew = icmp eq i64 %i.ev, 1
  br i1 %i.ew, label %bb.bt, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit298

bb.bt:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit292
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit298 unwind label %bb.ak

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit298: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit292, %bb.bt, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ba

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit286: ; preds = %bb.ba, %bb.bb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.ex = load ptr, ptr %i.v, align 8, !alias.scope !634, !nonnull !4, !noundef !4
  %i.ey = atomicrmw add ptr %i.ex, i64 -1 release, align 8, !noalias !634
  %i.ez = icmp eq i64 %i.ey, 1
  br i1 %i.ez, label %bb.bu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit299

bb.bu:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit286
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #21
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit299

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit273.sink.split: ; preds = %bb.x, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit273

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit273: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit273.sink.split, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit286

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit299: ; preds = %bb.bu, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit286, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.bs

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit265, %bb.u, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit259, %bb.f
  %.pn254.pn = phi { ptr, i32 } [ %.pn254, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit259 ], [ %.pn254, %bb.f ], [ %.pn252, %bb.u ], [ %.pn252, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit265 ]
  resume { ptr, i32 } %.pn254.pn

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit261: ; preds = %bb.n, %bb.o, %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  call void @llvm.experimental.noalias.scope.decl(metadata !637)
  %i.fa = load ptr, ptr %i.r, align 8, !alias.scope !638, !nonnull !4, !noundef !4
  %i.fb = atomicrmw add ptr %i.fa, i64 -1 release, align 8, !noalias !638
  %i.fc = icmp eq i64 %i.fb, 1
  br i1 %i.fc, label %bb.bv, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit300

bb.bv:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit261
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #21
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit300

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit300: ; preds = %bb.bv, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit261, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit299
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsa_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB5_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB5_13SimpleBackendEL_EE11from_varmap(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i8 noundef range(i8 0, 14) %2, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.e = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 161) 8, i64 noundef range(i64 1, 9) 8) #22 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCs3NyA1pFSltE_9candle_nn7var_map6VarMapE3newBI_.exit, !prof !15

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #24
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !645
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn7var_map6VarMapEBF_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexINtNtNtNtBP_11collections4hash3map7HashMapNtNtB7_6string6StringNtNtCsltEA4u8Pgfu_11candle_core8variable3VarEEE9drop_slowCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn7var_map6VarMapEBF_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn7var_map6VarMapEBF_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.g

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCs3NyA1pFSltE_9candle_nn7var_map6VarMapE3newBI_.exit: ; preds = %bb.b
  store ptr %i.b, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = load i8, ptr %3, align 1, !range !16, !noundef !4
  tail call void @_RNvMsa_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB5_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB5_13SimpleBackendEL_EE12from_backend(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @4, i8 noundef %2, i8 noundef %i.k)
  ret void

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsa_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB5_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB5_13SimpleBackendEL_EE12from_backend(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, i8 noundef range(i8 0, 14) %3, i8 noundef range(i8 0, 3) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !658
  %i.b = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 161) 32, i64 noundef range(i64 1, 9) 8) #22, !noalias !658 ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerIBv_DNtNtCs3NyA1pFSltE_9candle_nn11var_builder13SimpleBackendEL_EEE3newB19_.exit, !prof !15

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #24
          to label %.noexc unwind label %bb.c, !noalias !658

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerINtNtBG_5boxed3BoxDNtNtCs3NyA1pFSltE_9candle_nn11var_builder13SimpleBackendEL_EEEB1B_(ptr nonnull %1, ptr nonnull %2) #19
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.j, %bb.f ], [ %i.j, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerIBv_DNtNtCs3NyA1pFSltE_9candle_nn11var_builder13SimpleBackendEL_EEE3newB19_.exit: ; preds = %bb.a
  store i64 1, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx12, align 8
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %.sroa.5.0..sroa_idx13, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %2, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.b, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  store i8 %4, ptr %.sroa.5.0..sroa_idx, align 1
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !659
  %i.h = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 161) 32, i64 noundef range(i64 1, 9) 8) #22, !noalias !659 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCs3NyA1pFSltE_9candle_nn11var_builder10TensorDataIBv_DNtB13_13SimpleBackendEL_EEEE3newB15_.exit, !prof !15

bb.e:                                             ; preds = %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerIBv_DNtNtCs3NyA1pFSltE_9candle_nn11var_builder13SimpleBackendEL_EEE3newB19_.exit
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #24
          to label %.noexc9 unwind label %bb.f, !noalias !659

.noexc9:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !660
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_5boxed3BoxDNtNtCs3NyA1pFSltE_9candle_nn11var_builder13SimpleBackendEL_EE9drop_slowB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #21
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCs3NyA1pFSltE_9candle_nn11var_builder10TensorDataIBv_DNtB13_13SimpleBackendEL_EEEE3newB15_.exit: ; preds = %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerIBv_DNtNtCs3NyA1pFSltE_9candle_nn11var_builder13SimpleBackendEL_EEE3newB19_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.h, ptr %i.n, align 8
  store i64 0, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %3, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsa_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB5_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB5_13SimpleBackendEL_EE12from_tensors(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1, i8 noundef range(i8 0, 14) %2, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !663
  %i.a = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 161) 48, i64 noundef range(i64 1, 9) 8) #22, !noalias !663 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtB4_6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE3newCs3NyA1pFSltE_9candle_nn.exit, !prof !15

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #24
          to label %.noexc unwind label %bb.c, !noalias !663

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs3NyA1pFSltE_9candle_nn.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs3NyA1pFSltE_9candle_nn.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtB4_6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE3newCs3NyA1pFSltE_9candle_nn.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.e = load i8, ptr %3, align 1, !range !16, !noundef !4
  tail call void @_RNvMsa_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB5_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB5_13SimpleBackendEL_EE12from_backend(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @5, i8 noundef %2, i8 noundef %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsa_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB5_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB5_13SimpleBackendEL_EE22from_slice_safetensors(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i8 noundef range(i8 0, 14) %3, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 5 uses
  %i.b = alloca [136 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [80 x i8], align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs6_NtCsltEA4u8Pgfu_11candle_core11safetensorsNtB5_16SliceSafetensors3new(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.c = load i64, ptr %i.b, align 8, !range !17, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.8.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.c, ptr %i.a, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !666
  %i.f = tail call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 161) 136, i64 noundef range(i64 1, 9) 8) #22, !noalias !666 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCsltEA4u8Pgfu_11candle_core11safetensors16SliceSafetensorsE3newCs3NyA1pFSltE_9candle_nn.exit, !prof !15

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #24
          to label %.noexc unwind label %bb.e, !noalias !666

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsOwuIBbUsgI_11safetensors6tensor11SafeTensorsECs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core11safetensors16SliceSafetensorsECs3NyA1pFSltE_9candle_nn.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core11safetensors16SliceSafetensorsECs3NyA1pFSltE_9candle_nn.exit: ; preds = %bb.e
  resume { ptr, i32 } %i.h

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCsltEA4u8Pgfu_11candle_core11safetensors16SliceSafetensorsE3newCs3NyA1pFSltE_9candle_nn.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.f, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 136, i1 false)
  %i.j = load i8, ptr %4, align 1, !range !16, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvMsa_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB5_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB5_13SimpleBackendEL_EE12from_backend(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @6, i8 noundef %3, i8 noundef %i.j)
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCsltEA4u8Pgfu_11candle_core11safetensors16SliceSafetensorsE3newCs3NyA1pFSltE_9candle_nn.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsa_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB5_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB5_13SimpleBackendEL_EE25from_buffered_safetensors(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i8 noundef range(i8 0, 14) %2, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 5 uses
  %i.b = alloca [160 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [80 x i8], align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs7_NtCsltEA4u8Pgfu_11candle_core11safetensorsNtB5_19BufferedSafetensors3new(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %1)
  %i.c = load i64, ptr %i.b, align 8, !range !17, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.8.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.c, ptr %i.a, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !669
  %i.f = tail call noundef align 8 dereferenceable_or_null(160) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 161) 160, i64 noundef range(i64 1, 9) 8) #22, !noalias !669 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCsltEA4u8Pgfu_11candle_core11safetensors19BufferedSafetensorsE3newCs3NyA1pFSltE_9candle_nn.exit, !prof !15

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 160) #24
          to label %.noexc unwind label %bb.e, !noalias !669

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core11safetensors19BufferedSafetensorsECs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.a) #19
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_0
