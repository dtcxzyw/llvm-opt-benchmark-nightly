Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.07?download=true
inline.NumInlined: 820
inline.NumDeleted: 415
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizers_1__NtB8_22SplitDelimiterBehaviorNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1y_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_:bb.a

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink = phi i8 [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 1, %bb.b ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXs0_NvXNvCsblNeYnuIT2i_15spm_precompileds0_1__NtBe_23PrecompiledDeserializerNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB9_9___VisitorNtB1l_7Visitor9visit_mapNtB3_17___DeserializeWithB1j_11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvCsblNeYnuIT2i_15spm_precompiled11from_base64INtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  %i.b = load i64, ptr %i.a, align 8, !range !9, !noundef !7 ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.510.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.copyload, ptr %.sroa.68.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store i64 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXs0_NvXNvCsblNeYnuIT2i_15spm_precompileds0_1__NtBe_23PrecompiledDeserializerNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB9_9___VisitorNtB1l_7Visitor9visit_mapNtB3_17___DeserializeWithB1j_11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB3G_4read7StrReadEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef align 8 dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvCsblNeYnuIT2i_15spm_precompiled11from_base64QINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtBQ_4read7StrReadEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(56) %1)
  %i.b = load i64, ptr %i.a, align 8, !range !9, !noundef !7 ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.510.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.copyload, ptr %.sroa.68.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store i64 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXs0_NvXNvCsblNeYnuIT2i_15spm_precompileds0_1__NtBe_23PrecompiledDeserializerNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB9_9___VisitorNtB1l_7Visitor9visit_seqNtB3_17___DeserializeWithB1j_11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvCsblNeYnuIT2i_15spm_precompiled11from_base64INtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  %i.b = load i64, ptr %i.a, align 8, !range !9, !noundef !7 ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.510.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.copyload, ptr %.sroa.68.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store i64 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXs0_NvXNvCsblNeYnuIT2i_15spm_precompileds0_1__NtBe_23PrecompiledDeserializerNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB9_9___VisitorNtB1l_7Visitor9visit_seqNtB3_17___DeserializeWithB1j_11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB3G_4read7StrReadEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef align 8 dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvCsblNeYnuIT2i_15spm_precompiled11from_base64QINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtBQ_4read7StrReadEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(56) %1)
  %i.b = load i64, ptr %i.a, align 8, !range !9, !noundef !7 ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.510.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.copyload, ptr %.sroa.68.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store i64 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtCsgbNVBrIJ05E_5rayon4iter6extendINtB6_13ListVecFolderTTTmmElEjEEINtNtB8_8plumbing6FolderB11_E12consume_iterINtNtBa_3vec10SliceDrainB11_EECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecTTTmmElEjEEINtB2_10SpecExtendBQ_INtNtCsgbNVBrIJ05E_5rayon3vec10SliceDrainBQ_EE11spec_extendCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %2, ptr noundef %3)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsgbNVBrIJ05E_5rayon4iter6extend13ListVecFolderTTTmmElEjEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %1) #28
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQNtNtNtBc_3str4iter5BytesNtB6_8Iterator4folduNCINvNvB1f_8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB28_3VechE14extend_trustedBQ_E0E0ECs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !791)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !791, !noalias !790 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !791, !noalias !790 ; 8 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !791, !noalias !790 ; 8 uses
  %.sroa.6.0.copyload.i6 = ptrtoaddr ptr %.sroa.6.0.copyload.i to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !792)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !793, !noalias !794, !nonnull !7, !noundef !7 ; 3 uses
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !793, !noalias !794 ; 8 uses
  %.promoted.i.i7 = ptrtoaddr ptr %.promoted.i.i to i64 ; 2 uses
  %.not9.i.i = icmp eq ptr %.promoted.i.i, %i.b
  br i1 %.not9.i.i, label %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQNtNtNtBc_3str4iter5BytesNtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2v_3VechE14extend_trustedBQ_E0E0ECs2JiOgHzbbc7_10tokenizers.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.c = ptrtoaddr ptr %i.b to i64                ; 3 uses
  %i.d = sub i64 %i.c, %.promoted.i.i7            ; 7 uses
  %min.iters.check = icmp ult i64 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.e = add i64 %.sroa.4.0.copyload.i, %.sroa.6.0.copyload.i6
  %i.f = sub i64 %.promoted.i.i7, %i.e
  %diff.check = icmp ugt i64 %i.f, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check8 = icmp ult i64 %i.d, 32
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 24
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.h = add i64 %.sroa.4.0.copyload.i, %n.vec    ; 2 uses
  %i.i = getelementptr i8, ptr %.promoted.i.i, i64 %n.vec ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.6.0.copyload.i, i64 %.sroa.4.0.copyload.i
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.promoted.i.i, i64 %index ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !795)
  %i.k = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !noalias !796
  %wide.load9 = load <16 x i8>, ptr %i.k, align 1, !noalias !796
  %i.l = getelementptr i8, ptr %i.j, i64 %index   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <16 x i8> %wide.load, ptr %i.l, align 1, !noalias !797
  store <16 x i8> %wide.load9, ptr %i.m, align 1, !noalias !797
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !783

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %i.d, -8                     ; 4 uses
  %i.o = add i64 %.sroa.4.0.copyload.i, %n.vec11  ; 2 uses
  %i.p = getelementptr i8, ptr %.promoted.i.i, i64 %n.vec11 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.6.0.copyload.i, i64 %.sroa.4.0.copyload.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 3 uses
  %next.gep13 = getelementptr i8, ptr %.promoted.i.i, i64 %index12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !795)
  %wide.load14 = load <8 x i8>, ptr %next.gep13, align 1, !noalias !796
  %i.r = getelementptr i8, ptr %i.q, i64 %index12
  store <8 x i8> %wide.load14, ptr %i.r, align 1, !noalias !797
  %index.next15 = add nuw i64 %index12, 8         ; 2 uses
  %i.s = icmp eq i64 %index.next15, %n.vec11
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !784

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %i.d, %n.vec11
  br i1 %cmp.n16, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload.i, %iter.check ], [ %.sroa.4.0.copyload.i, %vector.memcheck ], [ %i.h, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ] ; 2 uses
  %.ph19 = phi ptr [ %.promoted.i.i, %iter.check ], [ %.promoted.i.i, %vector.memcheck ], [ %i.i, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ] ; 3 uses
  %.ph1922 = ptrtoaddr ptr %.ph19 to i64          ; 2 uses
  %i.t = sub i64 %i.c, %.ph1922
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %i.u = phi i64 [ %i.z, %.lr.ph.i.i.prol ], [ %.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.v = phi ptr [ %i.w, %.lr.ph.i.i.prol ], [ %.ph19, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !795)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 3 uses
  %i.x = load i8, ptr %i.v, align 1, !noalias !796, !noundef !7
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 %i.u
  store i8 %i.x, ptr %i.y, align 1, !noalias !797
  %i.z = add i64 %i.u, 1                          ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !785

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa21.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.w, %.lr.ph.i.i.prol ]
  %.lcssa20.unr = phi i64 [ poison, %.lr.ph.i.i.preheader ], [ %i.z, %.lr.ph.i.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.i.preheader ], [ %i.z, %.lr.ph.i.i.prol ]
  %.unr23 = phi ptr [ %.ph19, %.lr.ph.i.i.preheader ], [ %i.w, %.lr.ph.i.i.prol ]
  %i.aa = sub i64 %.ph1922, %i.c
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.ac = phi i64 [ %i.at, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.ad = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %.unr23, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !795)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ad, align 1, !noalias !796, !noundef !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 %i.ac
  store i8 %i.af, ptr %i.ag, align 1, !noalias !797
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.ai = load i8, ptr %i.ae, align 1, !noalias !799, !noundef !7
  %i.aj = getelementptr i8, ptr %.sroa.6.0.copyload.i, i64 %i.ac
  %i.ak = getelementptr i8, ptr %i.aj, i64 1
  store i8 %i.ai, ptr %i.ak, align 1, !noalias !797
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 3
  %i.am = load i8, ptr %i.ah, align 1, !noalias !800, !noundef !7
  %i.an = getelementptr i8, ptr %.sroa.6.0.copyload.i, i64 %i.ac
  %i.ao = getelementptr i8, ptr %i.an, i64 2
  store i8 %i.am, ptr %i.ao, align 1, !noalias !797
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 3 uses
  %i.aq = load i8, ptr %i.al, align 1, !noalias !801, !noundef !7
  %i.ar = getelementptr i8, ptr %.sroa.6.0.copyload.i, i64 %i.ac
  %i.as = getelementptr i8, ptr %i.ar, i64 3
  store i8 %i.aq, ptr %i.as, align 1, !noalias !797
  %i.at = add i64 %i.ac, 4                        ; 2 uses
  %.not.i.i.3 = icmp eq ptr %i.ap, %i.b
  br i1 %.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !789

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa5 = phi ptr [ %i.p, %vec.epilog.middle.block ], [ %i.i, %middle.block ], [ %.lcssa21.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ap, %.lr.ph.i.i ]
  %.lcssa = phi i64 [ %i.o, %vec.epilog.middle.block ], [ %i.h, %middle.block ], [ %.lcssa20.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.at, %.lr.ph.i.i ]
  store ptr %.lcssa5, ptr %0, align 8, !alias.scope !793, !noalias !794
  br label %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQNtNtNtBc_3str4iter5BytesNtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2v_3VechE14extend_trustedBQ_E0E0ECs2JiOgHzbbc7_10tokenizers.exit

_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQNtNtNtBc_3str4iter5BytesNtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2v_3VechE14extend_trustedBQ_E0E0ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %._crit_edge.i.i
  %.val6.i.i = phi i64 [ %.lcssa, %._crit_edge.i.i ], [ %.sroa.4.0.copyload.i, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  store i64 %.val6.i.i, ptr %.sroa.0.0.copyload.i, align 8, !noalias !802
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizers_1__NtBb_22SplitDelimiterBehaviorNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1B_7Visitor10visit_enumINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content16EnumDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBf_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 3 uses
  call void @_RINvXsB_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_16EnumDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizers_1__NtB3G_22SplitDelimiterBehaviorNtB1W_11Deserialize11deserialize7___FieldEEB3K_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1)
  %i.b = load i8, ptr %i.a, align 8, !range !27, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  switch i8 %i.b, label %default.unreachable [
    i8 -1, label %bb.b
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !7, !align !8, !noundef !7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  br label %bb.n

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = call noundef align 8 ptr @_RNvXsC_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB5_19VariantDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c) ; 2 uses
  %.not18 = icmp eq ptr %i.f, null
  br i1 %.not18, label %bb.h, label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.g = call noundef align 8 ptr @_RNvXsC_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB5_19VariantDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c) ; 2 uses
  %.not17 = icmp eq ptr %i.g, null
  br i1 %.not17, label %bb.j, label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.h = call noundef align 8 ptr @_RNvXsC_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB5_19VariantDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c) ; 2 uses
  %.not16 = icmp eq ptr %i.h, null
  br i1 %.not16, label %bb.k, label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.i = call noundef align 8 ptr @_RNvXsC_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB5_19VariantDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c) ; 2 uses
  %.not15 = icmp eq ptr %i.i, null
  br i1 %.not15, label %bb.l, label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.j = call noundef align 8 ptr @_RNvXsC_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB5_19VariantDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c) ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.m, label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.k, align 1
  br label %bb.n

bb.i:                                             ; preds = %bb.c, %bb.g, %bb.f, %bb.e, %bb.d
  %.sink23 = phi ptr [ %i.i, %bb.f ], [ %i.h, %bb.e ], [ %i.g, %bb.d ], [ %i.j, %bb.g ], [ %i.f, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink23, ptr %i.l, align 8
  br label %bb.n

bb.j:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.m, align 1
  br label %bb.n

bb.k:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.n, align 1
  br label %bb.n

bb.l:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.o, align 1
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 4, ptr %i.p, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.h, %bb.j, %bb.k, %bb.l, %bb.m, %bb.i
  %.sink25 = phi i8 [ 1, %bb.i ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.h ], [ 1, %bb.b ]
  store i8 %.sink25, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizers_1__NtBb_22SplitDelimiterBehaviorNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1B_7Visitor10visit_enumINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content19EnumRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBf_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsN_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_19EnumRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizers_1__NtB3J_22SplitDelimiterBehaviorNtB1Z_11Deserialize11deserialize7___FieldEEB3N_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %2)
  %i.b = load i8, ptr %i.a, align 8, !range !27, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !align !8, !noundef !7 ; 6 uses
  switch i8 %i.b, label %default.unreachable [
    i8 -1, label %bb.b
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  br label %bb.n

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.d) ; 2 uses
  %.not18 = icmp eq ptr %i.f, null
  br i1 %.not18, label %bb.h, label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.d) ; 2 uses
  %.not17 = icmp eq ptr %i.g, null
  br i1 %.not17, label %bb.j, label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.d) ; 2 uses
  %.not16 = icmp eq ptr %i.h, null
  br i1 %.not16, label %bb.k, label %bb.i

bb.f:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryhmE12insert_entryCs2JiOgHzbbc7_10tokenizers:bb.a

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEE8try_lockCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8), (16, 17)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.f = and i64 %i.e, 9223372036854775807
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
  %i.i = xor i1 %i.h, true
  %i.j = zext i1 %i.i to i8
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i = phi i8 [ %i.j, %bb.c ], [ 0, %bb.b ]
  %i.k = load atomic i8, ptr %i.d monotonic, align 4
  %i.l = icmp ne i8 %i.k, 0
  call void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1s_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEENCNvMs9_B10_BX_3new0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i1 noundef zeroext %i.l, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  %i.m = load i64, ptr %i.a, align 8, !range !11, !noundef !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !7, !align !8, !noundef !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !18, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.r, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit
  %.sink3 = phi i8 [ %i.q, %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit ], [ 2, %bb.a ]
  %.sink = phi i64 [ %i.m, %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit ], [ 1, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink3, ptr %i.s, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexbE4lockCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 4 %1) unnamed_addr #0 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %i.k = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardbENCNvMs9_B10_BX_3new0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %i.k, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 4 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueE6insertCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, ptr } @_RNvMsS_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueNtB1l_14LeafOrInternalENtB1l_2KVE6kv_mutCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %2) #28
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 1        ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs5_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueE8into_mutCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueNtB1l_14LeafOrInternalENtB1l_2KVE12into_val_mutCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvMs5_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryhmE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMsS_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MuthmNtB1l_14LeafOrInternalENtB1l_2KVE6kv_mutCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.b = extractvalue { ptr, ptr } %i.a, 1        ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !noundef !7
  store i32 %1, ptr %i.b, align 4
  ret i32 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 4 ptr @_RNvMs5_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryhmE8into_mutCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 4 ptr @_RNvMsQ_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MuthmNtB1l_14LeafOrInternalENtB1l_2KVE12into_val_mutCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1U_3vec3VecB1Q_EEE3newCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic i8, ptr %i.a monotonic, align 8
  %i.c = icmp ne i8 %i.b, 0
  tail call void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB24_3vec3VecB20_EEENCNvMsd_BQ_BN_3new0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %i.c, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsz_NtCs1D9TkrBnOxz_15crossbeam_epoch6atomicINtB5_6SharedINtNtCs37HRbLTrFyI_15crossbeam_deque5deque6BufferNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefEE5derefCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #11 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !7
  %i.b = and i64 %i.a, -8
  %i.c = inttoptr i64 %i.b to ptr
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelism15get_parallelism() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = load atomic i8, ptr @_RNvNtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelism11PARALLELISM.0 seq_cst, align 1
  switch i8 %i.c, label %bb.b [
    i8 0, label %_RNvNtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelism24get_override_parallelism.exit
    i8 1, label %bb.p
    i8 2, label %bb.c
  ], !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @113, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  br label %bb.p

_RNvNtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelism24get_override_parallelism.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvNtCs2AWtUsOyxgP_3std3env3varReECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 22)
  %i.d = load i64, ptr %i.b, align 8, !range !11, !noundef !7
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %_RNvNtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelism24get_override_parallelism.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !7, !noundef !7 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !7 ; 10 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core3stre20make_ascii_lowercase.exit.thread.i, label %iter.check

iter.check:                                       ; preds = %bb.d
  %min.iters.check = icmp ult i64 %i.j, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %i.j, 32
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.j, 24
  %n.vec = and i64 %i.j, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %index ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.l, align 1, !alias.scope !1236 ; 2 uses
  %wide.load7 = load <16 x i8>, ptr %i.m, align 1, !alias.scope !1236 ; 2 uses
  %i.n = add <16 x i8> %wide.load, splat (i8 -65)
  %i.o = add <16 x i8> %wide.load7, splat (i8 -65)
  %i.p = icmp ult <16 x i8> %i.n, splat (i8 26)
  %i.q = icmp ult <16 x i8> %i.o, splat (i8 26)
  %i.r = select <16 x i1> %i.p, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.s = select <16 x i1> %i.q, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.t = or <16 x i8> %i.r, %wide.load
  %i.u = or <16 x i8> %i.s, %wide.load7
  store <16 x i8> %i.t, ptr %i.l, align 1, !alias.scope !1236
  store <16 x i8> %i.u, ptr %i.m, align 1, !alias.scope !1236
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !1233

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs4NRVxsYgnAr_4core3stre20make_ascii_lowercase.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %i.j, -8                      ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index9 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 %index9 ; 2 uses
  %wide.load10 = load <8 x i8>, ptr %i.w, align 1, !alias.scope !1236 ; 2 uses
  %i.x = add <8 x i8> %wide.load10, splat (i8 -65)
  %i.y = icmp ult <8 x i8> %i.x, splat (i8 26)
  %i.z = select <8 x i1> %i.y, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.aa = or <8 x i8> %i.z, %wide.load10
  store <8 x i8> %i.aa, ptr %i.w, align 1, !alias.scope !1236
  %index.next11 = add nuw i64 %index9, 8          ; 2 uses
  %i.ab = icmp eq i64 %index.next11, %n.vec8
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1234

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n12 = icmp eq i64 %i.j, %n.vec8
  br i1 %cmp.n12, label %_RNvMNtCs4NRVxsYgnAr_4core3stre20make_ascii_lowercase.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.05.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi i64 [ %i.ah, %.lr.ph.i.i ], [ %.sroa.0.05.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.0.05.i.i ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !1236, !noundef !7 ; 2 uses
  %i.ae = add i8 %i.ad, -65
  %i.af = icmp ult i8 %i.ae, 26
  %i.ag = select i1 %i.af, i8 32, i8 0
  %.sroa.03.0.i.i = or i8 %i.ag, %i.ad
  store i8 %.sroa.03.0.i.i, ptr %i.ac, align 1, !alias.scope !1236
  %i.ah = add nuw i64 %.sroa.0.05.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ah, %i.j
  br i1 %exitcond.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core3stre20make_ascii_lowercase.exit.i, label %.lr.ph.i.i, !llvm.loop !1235

_RNvMNtCs4NRVxsYgnAr_4core3stre20make_ascii_lowercase.exit.i: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  switch i64 %i.j, label %_RNvMNtCs4NRVxsYgnAr_4core3stre20make_ascii_lowercase.exit.thread.i [
    i64 2, label %bb.h
    i64 3, label %bb.e
    i64 5, label %bb.f
    i64 1, label %bb.g
  ]

bb.e:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre20make_ascii_lowercase.exit.i
  %i.ai = load i16, ptr %i.h, align 1
  %i.aj = xor i16 %i.ai, 26223
  %i.ak = getelementptr i8, ptr %i.h, i64 2
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i16
  %i.an = xor i16 %i.am, 102
  %i.ao = or i16 %i.aj, %i.an
  %i.ap = icmp ne i16 %i.ao, 0                    ; 2 uses
  %i.aq = zext i1 %i.ap to i32                    ; 0 uses
  br label %_RNvMNtCs4NRVxsYgnAr_4core3stre20make_ascii_lowercase.exit.thread.i

bb.f:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre20make_ascii_lowercase.exit.i
  %i.ar = load i32, ptr %i.h, align 1
  %i.as = xor i32 %i.ar, 1936482662
  %i.at = getelementptr i8, ptr %i.h, i64 4
  %i.au = load i8, ptr %i.at, align 1
  %i.av = zext i8 %i.au to i32
  %i.aw = xor i32 %i.av, 101
  %i.ax = or i32 %i.as, %i.aw
  %i.ay = icmp ne i32 %i.ax, 0                    ; 2 uses
  %i.az = zext i1 %i.ay to i32                    ; 0 uses
  br label %_RNvMNtCs4NRVxsYgnAr_4core3stre20make_ascii_lowercase.exit.thread.i

bb.g:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre20make_ascii_lowercase.exit.i
  %lhsc18.i = load i8, ptr %i.h, align 1
  %switch.tableidx = add i8 %lhsc18.i, -48        ; 2 uses
  %i.ba = icmp ult i8 %switch.tableidx, 63
  br i1 %i.ba, label %switch.lookup, label %_RNvMNtCs4NRVxsYgnAr_4core3stre20make_ascii_lowercase.exit.thread.i

bb.h:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre20make_ascii_lowercase.exit.i
  %i.bb = load i16, ptr %i.h, align 1
  %i.bc = icmp ne i16 %i.bb, 28526                ; 2 uses
  %i.bd = zext i1 %i.bc to i32                    ; 0 uses
  br label %_RNvMNtCs4NRVxsYgnAr_4core3stre20make_ascii_lowercase.exit.thread.i

switch.lookup:                                    ; preds = %bb.g
  %switch.cast = zext nneg i8 %switch.tableidx to i63
  %switch.downshift = lshr i63 4593671619917905918, %switch.cast
  %switch.masked = trunc i63 %switch.downshift to i1
  br label %_RNvMNtCs4NRVxsYgnAr_4core3stre20make_ascii_lowercase.exit.thread.i

_RNvMNtCs4NRVxsYgnAr_4core3stre20make_ascii_lowercase.exit.thread.i: ; preds = %bb.g, %switch.lookup, %bb.h, %bb.f, %bb.e, %_RNvMNtCs4NRVxsYgnAr_4core3stre20make_ascii_lowercase.exit.i, %bb.d
  %.sroa.01.0.i = phi i1 [ false, %bb.d ], [ %i.ap, %bb.e ], [ %switch.masked, %switch.lookup ], [ %i.bc, %bb.h ], [ true, %_RNvMNtCs4NRVxsYgnAr_4core3stre20make_ascii_lowercase.exit.i ], [ %i.ay, %bb.f ], [ true, %bb.g ] ; 2 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.i

bb.i:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre20make_ascii_lowercase.exit.thread.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre20make_ascii_lowercase.exit.thread.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.l unwind label %bb.k

.body.i:                                          ; preds = %bb.k, %bb.i
  %.pn.i = phi { ptr, i32 } [ %i.be, %bb.i ], [ %i.bi, %bb.k ]
  %i.bg = load i64, ptr %i.b, align 8, !range !11, !noundef !7
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.n, label %bb.o

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre.i = load i64, ptr %i.b, align 8, !range !11
  %i.bj = trunc nuw i64 %.pre.i to i1
  br i1 %i.bj, label %.thread.i, label %_RNvNtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelism19get_env_parallelism.exit

bb.m:                                             ; preds = %bb.o
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.n:                                             ; preds = %bb.o, %.body.i
  resume { ptr, i32 } %.pn.i

bb.o:                                             ; preds = %.body.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs2AWtUsOyxgP_3std3env8VarErrorEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.b) #28
          to label %bb.n unwind label %bb.m

.thread.i:                                        ; preds = %bb.l, %_RNvNtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelism24get_override_parallelism.exit
  %.sroa.0.022.i = phi i1 [ %.sroa.01.0.i, %bb.l ], [ true, %_RNvNtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelism24get_override_parallelism.exit ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs2AWtUsOyxgP_3std3env8VarErrorEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.b)
  br label %_RNvNtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelism19get_env_parallelism.exit

_RNvNtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelism19get_env_parallelism.exit: ; preds = %bb.l, %.thread.i
  %.sroa.0.021.i = phi i1 [ %.sroa.0.022.i, %.thread.i ], [ %.sroa.01.0.i, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.p:                                             ; preds = %bb.c, %bb.a, %_RNvNtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelism19get_env_parallelism.exit
  %.sroa.0.0 = phi i1 [ %.sroa.0.021.i, %_RNvNtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelism19get_env_parallelism.exit ], [ true, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define void @_RNvNtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelism15set_parallelism(i1 noundef zeroext %0) unnamed_addr #4 {
bb.a:
  %. = select i1 %0, i8 2, i8 1
  store atomic i8 %., ptr @_RNvNtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelism11PARALLELISM.0 seq_cst, align 1
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define noundef zeroext i1 @_RNvNtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelism25has_parallelism_been_used() unnamed_addr #4 {
bb.a:
  %i.a = load atomic i8, ptr @_RNvNtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelism16USED_PARALLELISM seq_cst, align 1
  %i.b = icmp ne i8 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelism25is_parallelism_configured() unnamed_addr #0 {
end_hunk_1
