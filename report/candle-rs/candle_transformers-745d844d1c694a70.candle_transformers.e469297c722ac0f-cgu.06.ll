Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.06?download=true
inline.NumInlined: 4703
inline.NumDeleted: 581
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1N_8adapters3map12map_try_foldBX_INtNtB1P_6result6ResultBX_NtNtB11_5error5ErrorEB2L_INtNtNtB1P_3ops12control_flow11ControlFlowIB47_B2L_zEB2L_ENCNvMNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vlNtB5W_12Qwen3VLModel7forwards0_0NCINvXB3w_INtB3w_12GenericShuntINtB3u_3MapBI_B5R_EIB47_zB4w_EEB1H_8try_foldB2L_NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0B5B_E0E0B4V_EB60_:bb.a

._crit_edge:                                      ; preds = %bb.u, %bb.a, %bb.t
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.028, %bb.t ], [ %3, %bb.a ], [ %i.at, %bb.u ]
  %storemerge = phi i64 [ 1, %bb.t ], [ 0, %bb.a ], [ 0, %bb.u ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.as, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.t:                                             ; preds = %.loopexit, %bb.o
  store i64 %.sroa.4.16.copyload.i44, ptr %.val.le, align 8, !noalias !6537
  %.sroa.58.0..8.val.sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  store ptr %.sroa.6.16.copyload.i45, ptr %.sroa.58.0..8.val.sroa_idx9.i.i, align 8, !noalias !6537
  %.sroa.611.0..8.val.sroa_idx12.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.611.0..8.val.sroa_idx12.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.514.0..sroa_idx.i.i, i64 64, i1 false), !noalias !6529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %._crit_edge

bb.u:                                             ; preds = %bb.n
  store ptr %.sroa.6.16.copyload.i, ptr %.sroa.4.028, align 8, !noalias !6537
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.4.028, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not = icmp eq ptr %i.q, %i.h
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1N_8adapters3map12map_try_foldBX_INtNtB1P_6result6ResultBX_NtNtB11_5error5ErrorEB2L_INtNtNtB1P_3ops12control_flow11ControlFlowIB47_B2L_zEB2L_ENCNvMs5_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models12paddleocr_vl6visionNtB5Z_11VisionModel13forward_multi0NCINvXB3w_INtB3w_12GenericShuntINtB3u_3MapBI_B5R_EIB47_zB4w_EEB1H_8try_foldB2L_NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0B5B_E0E0B4V_EB65_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.g, align 8        ; 2 uses
  %.not25 = icmp eq ptr %.promoted, %i.f
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val5 = load ptr, ptr %i.h, align 8, !nonnull !4, !align !11, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %.sroa.4.026 = phi ptr [ %3, %.lr.ph ], [ %i.ad, %bb.q ] ; 5 uses
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.q ] ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr %i.m, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6567
  store ptr %2, ptr %i.d, align 8, !noalias !6567
  store ptr %.sroa.4.026, ptr %i.i, align 8, !noalias !6567
  %.val.i = load ptr, ptr %.val5, align 8, !noalias !6567, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6567
  store ptr %i.l, ptr %i.b, align 8, !noalias !6568
  %i.n = load i8, ptr %.val.i, align 1, !range !26, !noalias !6568, !noundef !4
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor8to_dtype(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i8 noundef %i.n)
          to label %bb.e unwind label %bb.c, !noalias !6567

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !6569
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #28
          to label %bb.n unwind label %bb.g, !noalias !6568

bb.e:                                             ; preds = %bb.b
  %i.r = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !6570
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #28
          to label %bb.i unwind label %bb.h, !noalias !6567

bb.g:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !6568
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.i:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6567
  %.sroa.4.16.copyload.i = load i64, ptr %i.c, align 8, !noalias !6567 ; 3 uses
  %.sroa.6.16.copyload.i = load ptr, ptr %.sroa.6.16..sroa_idx.i, align 8, !noalias !6567 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6567
  store ptr %2, ptr %i.a, align 8, !noalias !6571
  store ptr %.sroa.4.026, ptr %i.j, align 8, !noalias !6571
  %.not.i.i.i = icmp eq i64 %.sroa.4.16.copyload.i, -1
  br i1 %.not.i.i.i, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4 ; 8 uses
  %.sroa.7.16..sroa_idx.i.le = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.w = load i64, ptr %.val.le, align 8, !range !5, !alias.scope !6572, !noalias !6571, !noundef !4
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %.val.le)
          to label %bb.p unwind label %bb.l, !noalias !6571

bb.l:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.4.16.copyload.i, ptr %.val.le, align 8, !noalias !6571
  %.sroa.58.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  store ptr %.sroa.6.16.copyload.i, ptr %.sroa.58.0..8.val.sroa_idx.i.i, align 8, !noalias !6571
  %.sroa.611.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.611.0..8.val.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.16..sroa_idx.i.le, i64 64, i1 false), !noalias !6567
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop11InPlaceDropNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #27
          to label %.body.i unwind label %bb.m, !noalias !6571

bb.m:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !6571
  unreachable

.body.i:                                          ; preds = %bb.n, %bb.l
  %eh.lpad-body3.i = phi { ptr, i32 } [ %eh.lpad-body.ph.i, %bb.n ], [ %i.y, %bb.l ]
  resume { ptr, i32 } %eh.lpad-body3.i

bb.n:                                             ; preds = %bb.h, %bb.d, %bb.c
  %eh.lpad-body.ph.i = phi { ptr, i32 } [ %i.u, %bb.h ], [ %i.o, %bb.d ], [ %i.o, %bb.c ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop11InPlaceDropNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d) #27
          to label %.body.i unwind label %bb.o, !noalias !6567

bb.o:                                             ; preds = %bb.n
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !6567
  unreachable

._crit_edge:                                      ; preds = %bb.q, %bb.a, %bb.p
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.026, %bb.p ], [ %3, %bb.a ], [ %i.ad, %bb.q ]
  %storemerge = phi i64 [ 1, %bb.p ], [ 0, %bb.a ], [ 0, %bb.q ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.ac, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.p:                                             ; preds = %bb.j, %bb.k
  store i64 %.sroa.4.16.copyload.i, ptr %.val.le, align 8, !noalias !6571
  %.sroa.58.0..8.val.sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  store ptr %.sroa.6.16.copyload.i, ptr %.sroa.58.0..8.val.sroa_idx9.i.i, align 8, !noalias !6571
  %.sroa.611.0..8.val.sroa_idx12.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.611.0..8.val.sroa_idx12.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.16..sroa_idx.i.le, i64 64, i1 false), !noalias !6567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %._crit_edge

bb.q:                                             ; preds = %bb.i
  store ptr %.sroa.6.16.copyload.i, ptr %.sroa.4.026, align 8, !noalias !6571
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.4.026, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq ptr %i.m, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoItermENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldmjuNCINvMs3_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB2L_7Content4readINtNtNtB17_2io6cursor6CursorRShEE0NCINvNvBZ_8for_each4calljNCINvMsk_B8_INtB8_3VecjE14extend_trustedINtB25_3MapBI_B2C_EE0E0E0ECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.c, align 8        ; 8 uses
  %.not.not12 = icmp eq ptr %.promoted, %i.b
  br i1 %.not.not12, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !6586, !noundef !4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted13 = load i64, ptr %i.f, align 8, !alias.scope !6586 ; 5 uses
  %2 = ptrtoaddr ptr %i.b to i64
  %3 = ptrtoaddr ptr %.promoted to i64
  %i.g = add i64 %2, -4
  %i.h = sub i64 %i.g, %3                         ; 4 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 116
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.k = shl i64 %.promoted13, 3                  ; 2 uses
  %i.l = getelementptr nuw i8, ptr %i.e, i64 %i.k
  %i.m = shl i64 %i.h, 1
  %i.n = and i64 %i.m, -8
  %i.o = getelementptr i8, ptr %i.e, i64 %i.k
  %i.p = getelementptr i8, ptr %i.o, i64 %i.n
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %i.r = and i64 %i.h, -4
  %i.s = getelementptr i8, ptr %.promoted, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %bound0 = icmp ult ptr %i.l, %i.t
  %bound1 = icmp ult ptr %.promoted, %i.q
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 9223372036854775804      ; 4 uses
  %i.u = add i64 %.promoted13, %n.vec             ; 2 uses
  %i.v = shl i64 %n.vec, 2
  %i.w = getelementptr i8, ptr %.promoted, i64 %i.v
  %i.x = getelementptr [8 x i8], ptr %i.e, i64 %.promoted13
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !alias.scope !6587
  %wide.load21 = load <2 x i32>, ptr %i.z, align 4, !alias.scope !6587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6588)
  %i.aa = zext <2 x i32> %wide.load to <2 x i64>
  %i.ab = zext <2 x i32> %wide.load21 to <2 x i64>
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6590)
  %i.ac = getelementptr [8 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x i64> %i.aa, ptr %i.ac, align 8, !alias.scope !6591, !noalias !6592
  store <2 x i64> %i.ab, ptr %i.ad, align 8, !alias.scope !6591, !noalias !6592
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !6582

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.ph = phi i64 [ %.promoted13, %vector.memcheck ], [ %.promoted13, %.lr.ph ], [ %i.u, %middle.block ]
  %.ph23 = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph ], [ %i.w, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.af = phi i64 [ %i.al, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ag = phi ptr [ %i.ai, %scalar.ph ], [ %.ph23, %scalar.ph.preheader ] ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6588)
  %i.aj = zext i32 %i.ah to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6590)
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.af
  store i64 %i.aj, ptr %i.ak, align 8, !noalias !6586
  %i.al = add i64 %i.af, 1                        ; 2 uses
  %.not.not = icmp eq ptr %i.ai, %i.b
  br i1 %.not.not, label %._crit_edge, label %scalar.ph, !llvm.loop !6583

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.u, %middle.block ], [ %i.al, %scalar.ph ]
  store i64 %.lcssa, ptr %i.f, align 8, !alias.scope !6586
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noundef !4 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.aq = shl nuw i64 %i.an, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ap, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 4) #30, !noalias !6593
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.val6 = load ptr, ptr %1, align 8, !nonnull !4, !align !11, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.ar, align 8, !noundef !4
  store i64 %.val7, ptr %.val6, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7rwkv_v7NtB7_5Model11forward_seq0Bb_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !6596
  %i.a = tail call noundef dereferenceable_or_null(19) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 19, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !6596 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 1, i64 19) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.a, ptr noundef nonnull align 1 dereferenceable(19) @21, i64 19, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 19, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 19, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -9223372036854775766, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMsa_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pcNtB7_24EdmDpmMultistepScheduler25multistep_uni_c_bh_update0Bd_(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(address) dereferenceable(80) %0, ptr nofree readonly captures(address, read_provenance) %.0.val, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = alloca [80 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 12 uses
  %i.g = alloca [24 x i8], align 8                ; 12 uses
  %i.h = alloca [120 x i8], align 8               ; 13 uses
  %i.i = alloca [24 x i8], align 8                ; 13 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  store ptr %2, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %bb.d unwind label %bb.c

.body84:                                          ; preds = %bb.ao, %bb.ap, %bb.c, %.thread, %bb.an, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit66, %bb.f
  %.pn58 = phi { ptr, i32 } [ %.pn.pn, %bb.f ], [ %.pn563, %.thread ], [ %.pn54, %bb.an ], [ %.pn52, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit66 ], [ %i.o, %bb.c ], [ %i.dd, %bb.ap ], [ %i.dd, %bb.ao ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6658)
  call void @llvm.experimental.noalias.scope.decl(metadata !6659)
  call void @llvm.experimental.noalias.scope.decl(metadata !6660)
  %i.l = load ptr, ptr %i.j, align 8, !alias.scope !6661, !nonnull !4, !noundef !4
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !6661
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit

bb.b:                                             ; preds = %.body84
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #28
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.ag

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit68, %bb.z, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body84

bb.d:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30
  %i.p = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 8) #30 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !7

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #31
          to label %.noexc60 unwind label %bb.g

.noexc60:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.i, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.i ], [ %i.r, %bb.g ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #27
          to label %.body84 unwind label %bb.ag

bb.g:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.d
  store i64 0, ptr %i.p, align 8
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30
  %i.s = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #30 ; 7 uses
end_hunk_0
