Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/opencv-onnx.pb?download=true
inline.NumInlined: 4916
inline.NumDeleted: 1399
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN11opencv_onnx9TypeProto9MergeFromERKS0_:bb.a
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gu, ptr noundef nonnull align 8 dereferenceable(32) %i.gx)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit: ; preds = %_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_.exit, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx17SparseTensorProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !102  ; 2 uses
  %i.e = add nsw i32 %i.d, %i.b
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i32 noundef %i.e)
  %i.f = load i32, ptr %i.a, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  %i.i = load i32, ptr %i.c, align 8, !tbaa !102
  %i.j = add nsw i32 %i.i, %i.f
  store i32 %i.j, ptr %i.c, align 8, !tbaa !102
  %i.k = sext i32 %i.d to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.o = load i32, ptr %i.a, align 8, !tbaa !102
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.l, ptr nonnull align 8 %i.n, i64 %i.q, i1 false)
  br label %_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit: ; preds = %bb.a, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !69   ; 3 uses
  %i.t = and i32 %i.s, 3
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit
  %i.u = and i32 %i.s, 1
  %.not8 = icmp eq i32 %i.u, 0
  br i1 %.not8, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !69
  %i.x = or i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !121  ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.e, label %_ZN11opencv_onnx17SparseTensorProto24_internal_mutable_valuesEv.exit

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !98 ; 2 uses
  %i.ad = trunc i64 %i.ac to i1
  %i.ae = and i64 %i.ac, -4
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  br i1 %i.ad, label %bb.f, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i, !prof !108

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !110
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi ptr [ %i.ag, %bb.f ], [ %i.af, %bb.e ]
  %i.ah = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx11TensorProtoEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i), !inline_history !6 ; 2 uses
  store ptr %i.ah, ptr %i.y, align 8, !tbaa !121
  br label %_ZN11opencv_onnx17SparseTensorProto24_internal_mutable_valuesEv.exit

_ZN11opencv_onnx17SparseTensorProto24_internal_mutable_valuesEv.exit: ; preds = %bb.d, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i
  %i.ai = phi ptr [ %i.ah, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i ], [ %i.z, %bb.d ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !121 ; 2 uses
  %.not.i10 = icmp eq ptr %i.ak, null
  %i.al = select i1 %.not.i10, ptr @_ZN11opencv_onnx30_TensorProto_default_instance_E, ptr %i.ak
  tail call void @_ZN11opencv_onnx11TensorProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %i.ai, ptr noundef nonnull align 8 dereferenceable(256) %i.al)
  br label %bb.g

bb.g:                                             ; preds = %_ZN11opencv_onnx17SparseTensorProto24_internal_mutable_valuesEv.exit, %bb.c
  %i.am = and i32 %i.s, 2
  %.not9 = icmp eq i32 %i.am, 0
  br i1 %.not9, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !69
  %i.ap = or i32 %i.ao, 2
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !69
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !122 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.i, label %_ZN11opencv_onnx17SparseTensorProto25_internal_mutable_indicesEv.exit

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !98 ; 2 uses
  %i.av = trunc i64 %i.au to i1
  %i.aw = and i64 %i.au, -4
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  br i1 %i.av, label %bb.j, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i11, !prof !108

bb.j:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !110
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i11

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i11: ; preds = %bb.j, %bb.i
  %.0.i.i.i12 = phi ptr [ %i.ay, %bb.j ], [ %i.ax, %bb.i ]
  %i.az = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx11TensorProtoEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i12), !inline_history !6 ; 2 uses
  store ptr %i.az, ptr %i.aq, align 8, !tbaa !122
  br label %_ZN11opencv_onnx17SparseTensorProto25_internal_mutable_indicesEv.exit

_ZN11opencv_onnx17SparseTensorProto25_internal_mutable_indicesEv.exit: ; preds = %bb.h, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i11
  %i.ba = phi ptr [ %i.az, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i11 ], [ %i.ar, %bb.h ]
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !122 ; 2 uses
  %.not.i13 = icmp eq ptr %i.bc, null
  %i.bd = select i1 %.not.i13, ptr @_ZN11opencv_onnx30_TensorProto_default_instance_E, ptr %i.bc
  tail call void @_ZN11opencv_onnx11TensorProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %i.ba, ptr noundef nonnull align 8 dereferenceable(256) %i.bd)
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %_ZN11opencv_onnx17SparseTensorProto25_internal_mutable_indicesEv.exit, %_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !98 ; 2 uses
  %i.bg = trunc i64 %i.bf to i1
  br i1 %i.bg, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit: ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = and i64 %i.bf, -4
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %i.bk)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit: ; preds = %bb.k, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx14AttributeProto8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(256) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN11opencv_onnx14AttributeProto5ClearEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  tail call void @_ZN11opencv_onnx14AttributeProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK11opencv_onnx14AttributeProto13IsInitializedEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN11opencv_onnx14AttributeProto12InternalSwapEPS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(256) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !98
  store i64 %i.d, ptr %i.a, align 8, !tbaa !149
  store i64 %i.b, ptr %i.c, align 8, !tbaa !149
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !69
  %i.h = load i32, ptr %i.f, align 8, !tbaa !69
  store i32 %i.h, ptr %i.e, align 8, !tbaa !69
  store i32 %i.g, ptr %i.f, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.0.copyload.i.i.i = load i128, ptr %i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.0.copyload.i.i.i26 = load i128, ptr %i.k, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i26, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !178, !noalias !283
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !178, !noalias !284
  store ptr %i.t, ptr %i.n, align 8, !tbaa !178
  %2 = load <2 x i32>, ptr %i.r, align 8, !tbaa !69, !noalias !284
  store ptr %i.q, ptr %i.m, align 8, !tbaa !178
  %i.u = load <2 x i32>, ptr %i.o, align 8, !tbaa !69, !noalias !283
  store <2 x i32> %2, ptr %i.o, align 8, !tbaa !69
  store <2 x i32> %i.u, ptr %i.r, align 8, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.s, align 8, !tbaa !116, !noalias !60
  %3 = load <2 x i32>, ptr %i.x, align 8, !tbaa !69, !noalias !285
  %4 = load <2 x ptr>, ptr %i.p, align 8, !tbaa !116, !noalias !60
  store <2 x ptr> %i.z, ptr %i.p, align 8, !tbaa !116
  store <2 x ptr> %4, ptr %i.s, align 8, !tbaa !116
  %i.aa = load <2 x i32>, ptr %i.v, align 8, !tbaa !69, !noalias !286
  store <2 x i32> %3, ptr %i.v, align 8, !tbaa !69
  store <2 x i32> %i.aa, ptr %i.x, align 8, !tbaa !69
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.af = load <2 x ptr>, ptr %i.y, align 8, !tbaa !116, !noalias !60
  %5 = load <2 x i32>, ptr %i.ad, align 8, !tbaa !69, !noalias !287
  %6 = load <2 x ptr>, ptr %i.w, align 8, !tbaa !116, !noalias !60
  store <2 x ptr> %i.af, ptr %i.w, align 8, !tbaa !116
  store <2 x ptr> %6, ptr %i.y, align 8, !tbaa !116
  %i.ag = load <2 x i32>, ptr %i.ab, align 8, !tbaa !69, !noalias !288
  store <2 x i32> %5, ptr %i.ab, align 8, !tbaa !69
  store <2 x i32> %i.ag, ptr %i.ad, align 8, !tbaa !69
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.al = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !116, !noalias !60
  %7 = load <2 x i32>, ptr %i.aj, align 8, !tbaa !69, !noalias !289
  %8 = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !116, !noalias !60
  store <2 x ptr> %i.al, ptr %i.ac, align 8, !tbaa !116
  store <2 x ptr> %8, ptr %i.ae, align 8, !tbaa !116
  %i.am = load <2 x i32>, ptr %i.ah, align 8, !tbaa !69, !noalias !290
  store <2 x i32> %7, ptr %i.ah, align 8, !tbaa !69
  store <2 x i32> %i.am, ptr %i.aj, align 8, !tbaa !69
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ar = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !116, !noalias !60
  %9 = load <2 x i32>, ptr %i.ap, align 8, !tbaa !69, !noalias !291
  %i.as = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !116, !noalias !60
  store <2 x ptr> %i.ar, ptr %i.ai, align 8, !tbaa !116
  store <2 x ptr> %i.as, ptr %i.ak, align 8, !tbaa !116
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !179, !noalias !292
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !179, !noalias !291
  store ptr %i.au, ptr %i.ao, align 8, !tbaa !179
  %i.av = load <2 x i32>, ptr %i.an, align 8, !tbaa !69, !noalias !292
  store <2 x i32> %9, ptr %i.an, align 8, !tbaa !69
  store <2 x i32> %i.av, ptr %i.ap, align 8, !tbaa !69
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !179
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ax, align 8, !tbaa !116
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !116
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !116
  store ptr %.sroa.0.0.copyload.i, ptr %i.aw, align 8, !tbaa !116
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %.sroa.0.0.copyload.i27 = load ptr, ptr %i.ba, align 8, !tbaa !116
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !116
  store i64 %i.bb, ptr %i.ba, align 8, !tbaa !116
  store ptr %.sroa.0.0.copyload.i27, ptr %i.az, align 8, !tbaa !116
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %.sroa.0.0.copyload.i28 = load ptr, ptr %i.bd, align 8, !tbaa !116
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !116
  store i64 %i.be, ptr %i.bd, align 8, !tbaa !116
  store ptr %.sroa.0.0.copyload.i28, ptr %i.bc, align 8, !tbaa !116
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %.sroa.0.0.copyload.i29 = load ptr, ptr %i.bg, align 8, !tbaa !116
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !116
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !116
  store ptr %.sroa.0.0.copyload.i29, ptr %i.bf, align 8, !tbaa !116
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %.0.copyload.i.i = load i128, ptr %i.bi, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false)
  store i128 %.0.copyload.i.i, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %.0.copyload.i.i.i30 = load i128, ptr %i.bk, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i30, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %.0.copyload.i.i.i.i = load i128, ptr %i.bm, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i, ptr %i.bn, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK11opencv_onnx14AttributeProto11GetTypeNameB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 26, ptr %i.a, align 8, !tbaa !149
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !67
  %i.d = load i64, ptr %i.a, align 8, !tbaa !149  ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.c, ptr noundef nonnull align 1 dereferenceable(26) @.str.10, i64 26, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !68
  %i.f = load ptr, ptr %0, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN11opencv_onnx14ValueInfoProto9_Internal4typeEPKS0_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN11opencv_onnx14ValueInfoProtoC2EPN6google8protobuf5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 72)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !98
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx14ValueInfoProtoE, i64 16), ptr %0, align 8, !tbaa !100
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.ptr, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !182
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.f, align 8, !tbaa !105
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.h, align 8, !tbaa !106
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.i, align 8, !tbaa !106
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.j, align 8, !tbaa !181
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107
  %.not.i = icmp ne ptr %i.b, null
  %i.c = load ptr, ptr %0, align 8
  %i.d = icmp eq ptr %i.c, null
  %i.e = select i1 %.not.i, i1 %i.d, i1 false
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx14ValueInfoProtoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 48)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.a, align 8, !tbaa !98
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx14ValueInfoProtoE, i64 16), ptr %0, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  store i32 %i.d, ptr %i.b, align 8, !tbaa !111
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.e, i8 0, i64 28, i1 false)
  %i.h = load i32, ptr %i.g, align 8, !tbaa !113  ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.noexc, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !107
  %i.l = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i32 noundef %i.h)
          to label %.noexc18 unwind label %bb.f

.noexc18:                                         ; preds = %.noexc.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !107
  %i.p = load i32, ptr %i.o, align 8, !tbaa !115
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !113
  %i.s = sub nsw i32 %i.p, %i.r
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEE11TypeHandlerEEEvPPvSA_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %i.l, ptr noundef nonnull %i.m, i32 noundef %i.h, i32 noundef %i.s)
          to label %.noexc19 unwind label %bb.f

.noexc19:                                         ; preds = %.noexc18
  %i.t = load i32, ptr %i.q, align 8, !tbaa !113
  %i.u = add nsw i32 %i.t, %i.h                   ; 3 uses
  store i32 %i.u, ptr %i.q, align 8, !tbaa !113
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !107  ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !115
  %i.x = icmp slt i32 %i.w, %i.u
  br i1 %i.x, label %bb.b, label %.noexc

bb.b:                                             ; preds = %.noexc19
  store i32 %i.u, ptr %i.v, align 8, !tbaa !115
  br label %.noexc

.noexc:                                           ; preds = %bb.a, %.noexc19, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !98   ; 2 uses
  %i.aa = trunc i64 %i.z to i1
  br i1 %i.aa, label %.noexc15, label %bb.c

.noexc15:                                         ; preds = %.noexc
  %i.ab = and i64 %i.z, -4
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %.noexc, %.noexc15
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.ae, align 8, !tbaa !106
  %i.af = load i32, ptr %i.c, align 8, !tbaa !69  ; 2 uses
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !106
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = and i64 %i.aj, -2
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.a, align 8, !tbaa !98  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK11opencv_onnx17ShardingSpecProto12ByteSizeLongEv:bb.a

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx17ShardingSpecProto21CheckTypeAndMergeFromERKN6google8protobuf11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN11opencv_onnx17ShardingSpecProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx17ShardingSpecProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !102  ; 2 uses
  %i.e = add nsw i32 %i.d, %i.b
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i32 noundef %i.e)
  %i.f = load i32, ptr %i.a, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  %i.i = load i32, ptr %i.c, align 8, !tbaa !102
  %i.j = add nsw i32 %i.i, %i.f
  store i32 %i.j, ptr %i.c, align 8, !tbaa !102
  %i.k = sext i32 %i.d to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.o = load i32, ptr %i.a, align 8, !tbaa !102
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.l, ptr nonnull align 8 %i.n, i64 %i.q, i1 false)
  br label %_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit: ; preds = %bb.a, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load i32, ptr %i.r, align 8, !tbaa !113  ; 4 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx20IntIntListEntryProtoEE9MergeFromERKS4_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !107
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i32 noundef %i.s)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !107
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !115
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !113
  %i.ae = sub nsw i32 %i.ab, %i.ad
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldIN11opencv_onnx20IntIntListEntryProtoEE11TypeHandlerEEEvPPvSA_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef %i.y, ptr noundef nonnull %i.x, i32 noundef %i.s, i32 noundef %i.ae), !inline_history !13
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !113
  %i.ag = add nsw i32 %i.af, %i.s                 ; 3 uses
  store i32 %i.ag, ptr %i.ac, align 8, !tbaa !113
  %i.ah = load ptr, ptr %i.z, align 8, !tbaa !107 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !115
  %i.aj = icmp slt i32 %i.ai, %i.ag
  br i1 %i.aj, label %bb.d, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx20IntIntListEntryProtoEE9MergeFromERKS4_.exit

bb.d:                                             ; preds = %bb.c
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !115
  br label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx20IntIntListEntryProtoEE9MergeFromERKS4_.exit

_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx20IntIntListEntryProtoEE9MergeFromERKS4_.exit: ; preds = %_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit, %bb.c, %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !113 ; 4 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx15ShardedDimProtoEE9MergeFromERKS4_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx20IntIntListEntryProtoEE9MergeFromERKS4_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !107
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i32 noundef %i.al)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !107
  %i.au = load i32, ptr %i.at, align 8, !tbaa !115
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !113
  %i.ax = sub nsw i32 %i.au, %i.aw
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldIN11opencv_onnx15ShardedDimProtoEE11TypeHandlerEEEvPPvSA_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef %i.ar, ptr noundef nonnull %i.aq, i32 noundef %i.al, i32 noundef %i.ax), !inline_history !13
  %i.ay = load i32, ptr %i.av, align 8, !tbaa !113
  %i.az = add nsw i32 %i.ay, %i.al                ; 3 uses
  store i32 %i.az, ptr %i.av, align 8, !tbaa !113
  %i.ba = load ptr, ptr %i.as, align 8, !tbaa !107 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !115
  %i.bc = icmp slt i32 %i.bb, %i.az
  br i1 %i.bc, label %bb.f, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx15ShardedDimProtoEE9MergeFromERKS4_.exit

bb.f:                                             ; preds = %bb.e
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !115
  br label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx15ShardedDimProtoEE9MergeFromERKS4_.exit

_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx15ShardedDimProtoEE9MergeFromERKS4_.exit: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx20IntIntListEntryProtoEE9MergeFromERKS4_.exit, %bb.e, %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !69
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx15ShardedDimProtoEE9MergeFromERKS4_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !106
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = and i64 %i.bi, -2
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !69
  %i.bn = or i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 8, !tbaa !69
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !98 ; 2 uses
  %i.br = trunc i64 %i.bq to i1
  %i.bs = and i64 %i.bq, -4
  %i.bt = inttoptr i64 %i.bs to ptr               ; 2 uses
  br i1 %i.br, label %bb.h, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !108

bb.h:                                             ; preds = %bb.g
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !110
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.bu, %bb.h ], [ %i.bt, %bb.g ]
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef %.0.i.i)
  br label %bb.i

bb.i:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx15ShardedDimProtoEE9MergeFromERKS4_.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !98 ; 2 uses
  %i.bx = trunc i64 %i.bw to i1
  br i1 %i.bx, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit: ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = and i64 %i.bw, -4
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %i.cb)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit: ; preds = %bb.i, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx17ShardingSpecProto8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(96) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN11opencv_onnx17ShardingSpecProto5ClearEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  tail call void @_ZN11opencv_onnx17ShardingSpecProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK11opencv_onnx17ShardingSpecProto13IsInitializedEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN11opencv_onnx17ShardingSpecProto12InternalSwapEPS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !98
  store i64 %i.d, ptr %i.a, align 8, !tbaa !149
  store i64 %i.b, ptr %i.c, align 8, !tbaa !149
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !69
  %i.h = load i32, ptr %i.f, align 8, !tbaa !69
  store i32 %i.h, ptr %i.e, align 8, !tbaa !69
  store i32 %i.g, ptr %i.f, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.0.copyload.i.i.i = load i128, ptr %i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !178, !noalias !378
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !178, !noalias !379
  store ptr %i.r, ptr %i.l, align 8, !tbaa !178
  %2 = load <2 x i32>, ptr %i.p, align 8, !tbaa !69, !noalias !379
  store ptr %i.o, ptr %i.k, align 8, !tbaa !178
  %i.s = load <2 x i32>, ptr %i.m, align 8, !tbaa !69, !noalias !378
  store <2 x i32> %2, ptr %i.m, align 8, !tbaa !69
  store <2 x i32> %i.s, ptr %i.p, align 8, !tbaa !69
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.x = load <2 x ptr>, ptr %i.q, align 8, !tbaa !116, !noalias !60
  %3 = load <2 x i32>, ptr %i.v, align 8, !tbaa !69, !noalias !380
  %i.y = load <2 x ptr>, ptr %i.n, align 8, !tbaa !116, !noalias !60
  store <2 x ptr> %i.x, ptr %i.n, align 8, !tbaa !116
  store <2 x ptr> %i.y, ptr %i.q, align 8, !tbaa !116
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !179, !noalias !381
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !179, !noalias !380
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !179
  %i.ab = load <2 x i32>, ptr %i.t, align 8, !tbaa !69, !noalias !381
  store <2 x i32> %3, ptr %i.t, align 8, !tbaa !69
  store <2 x i32> %i.ab, ptr %i.v, align 8, !tbaa !69
  store ptr %i.z, ptr %i.w, align 8, !tbaa !179
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ad, align 8, !tbaa !116
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !116
  store i64 %i.ae, ptr %i.ad, align 8, !tbaa !116
  store ptr %.sroa.0.0.copyload.i, ptr %i.ac, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK11opencv_onnx17ShardingSpecProto11GetTypeNameB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 29, ptr %i.a, align 8, !tbaa !149
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !67
  %i.d = load i64, ptr %i.a, align 8, !tbaa !149  ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.c, ptr noundef nonnull align 1 dereferenceable(29) @.str.16, i64 29, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !68
  %i.f = load ptr, ptr %0, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN11opencv_onnx15ShardedDimProtoC2EPN6google8protobuf5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !98
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx15ShardedDimProtoE, i64 16), ptr %0, align 8, !tbaa !100
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.ptr, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !182
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.f, align 8, !tbaa !105
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx21SimpleShardedDimProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107
  %.not.i = icmp ne ptr %i.b, null
  %i.c = load ptr, ptr %0, align 8
  %i.d = icmp eq ptr %i.c, null
  %i.e = select i1 %.not.i, i1 %i.d, i1 false
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx15ShardedDimProtoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 48)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !98
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx15ShardedDimProtoE, i64 16), ptr %0, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  store i32 %i.d, ptr %i.b, align 8, !tbaa !111
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.e, i8 0, i64 28, i1 false)
  %i.h = load i32, ptr %i.g, align 8, !tbaa !113  ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.noexc, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !107
  %i.l = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i32 noundef %i.h)
          to label %.noexc11 unwind label %bb.c

.noexc11:                                         ; preds = %.noexc.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !107
  %i.p = load i32, ptr %i.o, align 8, !tbaa !115
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !113
  %i.s = sub nsw i32 %i.p, %i.r
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldIN11opencv_onnx21SimpleShardedDimProtoEE11TypeHandlerEEEvPPvSA_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %i.l, ptr noundef nonnull %i.m, i32 noundef %i.h, i32 noundef %i.s)
          to label %.noexc12 unwind label %bb.c

.noexc12:                                         ; preds = %.noexc11
  %i.t = load i32, ptr %i.q, align 8, !tbaa !113
  %i.u = add nsw i32 %i.t, %i.h                   ; 3 uses
  store i32 %i.u, ptr %i.q, align 8, !tbaa !113
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !107  ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !115
  %i.x = icmp slt i32 %i.w, %i.u
  br i1 %i.x, label %bb.b, label %.noexc

bb.b:                                             ; preds = %.noexc12
  store i32 %i.u, ptr %i.v, align 8, !tbaa !115
  br label %.noexc

.noexc:                                           ; preds = %bb.a, %.noexc12, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !98   ; 2 uses
  %i.aa = trunc i64 %i.z to i1
  br i1 %i.aa, label %.noexc8, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit

.noexc8:                                          ; preds = %.noexc
  %i.ab = and i64 %i.z, -4
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit unwind label %bb.d

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit: ; preds = %.noexc, %.noexc8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !193
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !193
  ret void

bb.c:                                             ; preds = %.noexc11, %.noexc.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %.noexc8
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx21SimpleShardedDimProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.f) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.d ], [ %i.ah, %bb.c ]
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN11opencv_onnx15ShardedDimProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit, !prof !108

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.a
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !110
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

bb.b:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit unwind label %bb.h

_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit: ; preds = %bb.a, %bb.b, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !107
  %.not.i.i = icmp ne ptr %i.i, null
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = icmp eq ptr %i.j, null
  %i.l = select i1 %.not.i.i, i1 %i.k, i1 false
  br i1 %i.l, label %bb.c, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx21SimpleShardedDimProtoEED2Ev.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx21SimpleShardedDimProtoEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
end_hunk_1
begin_hunk_2_@_ZN11opencv_onnx17TrainingInfoProto9MergeFromERKS0_:bb.a
  %i.m = load i32, ptr %i.l, align 8, !tbaa !113
  %i.n = sub nsw i32 %i.k, %i.m
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEE11TypeHandlerEEEvPPvSA_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %i.h, ptr noundef nonnull %i.g, i32 noundef %i.b, i32 noundef %i.n), !inline_history !13
  %i.o = load i32, ptr %i.l, align 8, !tbaa !113
  %i.p = add nsw i32 %i.o, %i.b                   ; 3 uses
  store i32 %i.p, ptr %i.l, align 8, !tbaa !113
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !107  ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !115
  %i.s = icmp slt i32 %i.r, %i.p
  br i1 %i.s, label %bb.c, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEE9MergeFromERKS4_.exit

bb.c:                                             ; preds = %bb.b
  store i32 %i.p, ptr %i.q, align 8, !tbaa !115
  br label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEE9MergeFromERKS4_.exit

_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEE9MergeFromERKS4_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load i32, ptr %i.t, align 8, !tbaa !113  ; 4 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEE9MergeFromERKS4_.exit11, label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEE9MergeFromERKS4_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !107
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i32 noundef %i.u)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !107
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !115
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !113
  %i.ag = sub nsw i32 %i.ad, %i.af
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEE11TypeHandlerEEEvPPvSA_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef %i.aa, ptr noundef nonnull %i.z, i32 noundef %i.u, i32 noundef %i.ag), !inline_history !13
  %i.ah = load i32, ptr %i.ae, align 8, !tbaa !113
  %i.ai = add nsw i32 %i.ah, %i.u                 ; 3 uses
  store i32 %i.ai, ptr %i.ae, align 8, !tbaa !113
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !107 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !115
  %i.al = icmp slt i32 %i.ak, %i.ai
  br i1 %i.al, label %bb.e, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEE9MergeFromERKS4_.exit11

bb.e:                                             ; preds = %bb.d
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !115
  br label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEE9MergeFromERKS4_.exit11

_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEE9MergeFromERKS4_.exit11: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEE9MergeFromERKS4_.exit, %bb.d, %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !69 ; 3 uses
  %i.ao = and i32 %i.an, 3
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.n, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEE9MergeFromERKS4_.exit11
  %i.ap = and i32 %i.an, 1
  %.not9 = icmp eq i32 %i.ap, 0
  br i1 %.not9, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !69
  %i.as = or i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !69
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !195 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.h, label %_ZN11opencv_onnx17TrainingInfoProto32_internal_mutable_initializationEv.exit

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !98 ; 2 uses
  %i.ay = trunc i64 %i.ax to i1
  %i.az = and i64 %i.ax, -4
  %i.ba = inttoptr i64 %i.az to ptr               ; 2 uses
  br i1 %i.ay, label %bb.i, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i, !prof !108

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !110
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi ptr [ %i.bb, %bb.i ], [ %i.ba, %bb.h ]
  %i.bc = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx10GraphProtoEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i), !inline_history !36 ; 2 uses
  store ptr %i.bc, ptr %i.at, align 8, !tbaa !195
  br label %_ZN11opencv_onnx17TrainingInfoProto32_internal_mutable_initializationEv.exit

_ZN11opencv_onnx17TrainingInfoProto32_internal_mutable_initializationEv.exit: ; preds = %bb.g, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i
  %i.bd = phi ptr [ %i.bc, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i ], [ %i.au, %bb.g ]
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !195 ; 2 uses
  %.not.i = icmp eq ptr %i.bf, null
  %i.bg = select i1 %.not.i, ptr @_ZN11opencv_onnx29_GraphProto_default_instance_E, ptr %i.bf
  tail call void @_ZN11opencv_onnx10GraphProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(232) %i.bd, ptr noundef nonnull align 8 dereferenceable(232) %i.bg)
  br label %bb.j

bb.j:                                             ; preds = %_ZN11opencv_onnx17TrainingInfoProto32_internal_mutable_initializationEv.exit, %bb.f
  %i.bh = and i32 %i.an, 2
  %.not10 = icmp eq i32 %i.bh, 0
  br i1 %.not10, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !69
  %i.bk = or i32 %i.bj, 2
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !69
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !196 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.l, label %_ZN11opencv_onnx17TrainingInfoProto27_internal_mutable_algorithmEv.exit

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !98 ; 2 uses
  %i.bq = trunc i64 %i.bp to i1
  %i.br = and i64 %i.bp, -4
  %i.bs = inttoptr i64 %i.br to ptr               ; 2 uses
  br i1 %i.bq, label %bb.m, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i12, !prof !108

bb.m:                                             ; preds = %bb.l
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !110
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i12

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i12: ; preds = %bb.m, %bb.l
  %.0.i.i.i13 = phi ptr [ %i.bt, %bb.m ], [ %i.bs, %bb.l ]
  %i.bu = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx10GraphProtoEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i13), !inline_history !36 ; 2 uses
  store ptr %i.bu, ptr %i.bl, align 8, !tbaa !196
  br label %_ZN11opencv_onnx17TrainingInfoProto27_internal_mutable_algorithmEv.exit

_ZN11opencv_onnx17TrainingInfoProto27_internal_mutable_algorithmEv.exit: ; preds = %bb.k, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i12
  %i.bv = phi ptr [ %i.bu, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i12 ], [ %i.bm, %bb.k ]
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !196 ; 2 uses
  %.not.i14 = icmp eq ptr %i.bx, null
  %i.by = select i1 %.not.i14, ptr @_ZN11opencv_onnx29_GraphProto_default_instance_E, ptr %i.bx
  tail call void @_ZN11opencv_onnx10GraphProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(232) %i.bv, ptr noundef nonnull align 8 dereferenceable(232) %i.by)
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %_ZN11opencv_onnx17TrainingInfoProto27_internal_mutable_algorithmEv.exit, %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEE9MergeFromERKS4_.exit11
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !98 ; 2 uses
  %i.cb = trunc i64 %i.ca to i1
  br i1 %i.cb, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit: ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = and i64 %i.ca, -4
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %i.cf)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit: ; preds = %bb.n, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx17TrainingInfoProto8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(88) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN11opencv_onnx17TrainingInfoProto5ClearEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  tail call void @_ZN11opencv_onnx17TrainingInfoProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK11opencv_onnx17TrainingInfoProto13IsInitializedEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN11opencv_onnx17TrainingInfoProto12InternalSwapEPS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !149
  %i.d = load i64, ptr %i.b, align 8, !tbaa !149
  store i64 %i.d, ptr %i.a, align 8, !tbaa !149
  store i64 %i.c, ptr %i.b, align 8, !tbaa !149
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !69
  %i.h = load i32, ptr %i.f, align 8, !tbaa !69
  store i32 %i.h, ptr %i.e, align 8, !tbaa !69
  store i32 %i.g, ptr %i.f, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !178, !noalias !405
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !178, !noalias !406
  store ptr %i.p, ptr %i.j, align 8, !tbaa !178
  %2 = load <2 x i32>, ptr %i.n, align 8, !tbaa !69, !noalias !406
  store ptr %i.m, ptr %i.i, align 8, !tbaa !178
  %i.q = load <2 x i32>, ptr %i.k, align 8, !tbaa !69, !noalias !405
  store <2 x i32> %2, ptr %i.k, align 8, !tbaa !69
  store <2 x i32> %i.q, ptr %i.n, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.o, align 8, !tbaa !116, !noalias !60
  %3 = load <2 x i32>, ptr %i.t, align 8, !tbaa !69, !noalias !407
  %i.w = load <2 x ptr>, ptr %i.l, align 8, !tbaa !116, !noalias !60
  store <2 x ptr> %i.v, ptr %i.l, align 8, !tbaa !116
  store <2 x ptr> %i.w, ptr %i.o, align 8, !tbaa !116
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !179, !noalias !408
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !179, !noalias !407
  store ptr %i.y, ptr %i.s, align 8, !tbaa !179
  %i.z = load <2 x i32>, ptr %i.r, align 8, !tbaa !69, !noalias !408
  store <2 x i32> %3, ptr %i.r, align 8, !tbaa !69
  store <2 x i32> %i.z, ptr %i.t, align 8, !tbaa !69
  store ptr %i.x, ptr %i.u, align 8, !tbaa !179
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.0.copyload.i.i = load i128, ptr %i.aa, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  store i128 %.0.copyload.i.i, ptr %i.ab, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK11opencv_onnx17TrainingInfoProto11GetTypeNameB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 29, ptr %i.a, align 8, !tbaa !149
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !67
  %i.d = load i64, ptr %i.a, align 8, !tbaa !149  ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.c, ptr noundef nonnull align 1 dereferenceable(29) @.str.21, i64 29, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !68
  %i.f = load ptr, ptr %0, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(232) ptr @_ZN11opencv_onnx10ModelProto9_Internal5graphEPKS0_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !202
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN11opencv_onnx10ModelProtoC2EPN6google8protobuf5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(200) initializes((0, 200)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !98
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx10ModelProtoE, i64 16), ptr %0, align 8, !tbaa !100
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.ptr, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !182
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.f, align 8, !tbaa !105
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.h, align 8, !tbaa !105
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.j, align 8, !tbaa !105
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %1, ptr %i.l, align 8, !tbaa !105
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %1, ptr %i.n, align 8, !tbaa !105
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <4 x ptr> <ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E>, ptr %i.p, align 8, !tbaa !106
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx24DeviceConfigurationProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107
  %.not.i = icmp ne ptr %i.b, null
  %i.c = load ptr, ptr %0, align 8
  %i.d = icmp eq ptr %i.c, null
  %i.e = select i1 %.not.i, i1 %i.d, i1 false
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx13FunctionProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107
  %.not.i = icmp ne ptr %i.b, null
  %i.c = load ptr, ptr %0, align 8
  %i.d = icmp eq ptr %i.c, null
  %i.e = select i1 %.not.i, i1 %i.d, i1 false
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx17TrainingInfoProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107
  %.not.i = icmp ne ptr %i.b, null
  %i.c = load ptr, ptr %0, align 8
  %i.d = icmp eq ptr %i.c, null
  %i.e = select i1 %.not.i, i1 %i.d, i1 false
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx18OperatorSetIdProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107
  %.not.i = icmp ne ptr %i.b, null
  %i.c = load ptr, ptr %0, align 8
  %i.d = icmp eq ptr %i.c, null
  %i.e = select i1 %.not.i, i1 %i.d, i1 false
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx10ModelProtoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(200) initializes((0, 48)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 0, ptr %i.a, align 8, !tbaa !98
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx10ModelProtoE, i64 16), ptr %0, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  store i32 %i.d, ptr %i.b, align 8, !tbaa !111
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.e, i8 0, i64 28, i1 false)
  %i.h = load i32, ptr %i.g, align 8, !tbaa !113  ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx18OperatorSetIdProtoEEC2ERKS4_.exit, label %.noexc.i
end_hunk_2
begin_hunk_3_@_ZN11opencv_onnx10ModelProto9MergeFromERKS0_:bb.a
bb.r:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit31, %bb.o
  %i.ea = and i32 %i.cs, 4
  %.not25 = icmp eq i32 %i.ea, 0
  br i1 %.not25, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !106
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = and i64 %i.ed, -2
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !69
  %i.ei = or i32 %i.eh, 4
  store i32 %i.ei, ptr %i.eg, align 8, !tbaa !69
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !98 ; 2 uses
  %i.em = trunc i64 %i.el to i1
  %i.en = and i64 %i.el, -4
  %i.eo = inttoptr i64 %i.en to ptr               ; 2 uses
  br i1 %i.em, label %bb.t, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit33, !prof !108

bb.t:                                             ; preds = %bb.s
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !110
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit33

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit33: ; preds = %bb.s, %bb.t
  %.0.i.i32 = phi ptr [ %i.ep, %bb.t ], [ %i.eo, %bb.s ]
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef nonnull align 8 dereferenceable(32) %i.ef, ptr noundef %.0.i.i32)
  br label %bb.u

bb.u:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit33, %bb.r
  %i.eq = and i32 %i.cs, 8
  %.not26 = icmp eq i32 %i.eq, 0
  br i1 %.not26, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !106
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = and i64 %i.et, -2
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !69
  %i.ey = or i32 %i.ex, 8
  store i32 %i.ey, ptr %i.ew, align 8, !tbaa !69
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !98 ; 2 uses
  %i.fc = trunc i64 %i.fb to i1
  %i.fd = and i64 %i.fb, -4
  %i.fe = inttoptr i64 %i.fd to ptr               ; 2 uses
  br i1 %i.fc, label %bb.w, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit35, !prof !108

bb.w:                                             ; preds = %bb.v
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !110
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit35

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit35: ; preds = %bb.v, %bb.w
  %.0.i.i34 = phi ptr [ %i.ff, %bb.w ], [ %i.fe, %bb.v ]
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef nonnull align 8 dereferenceable(32) %i.ev, ptr noundef %.0.i.i34)
  br label %bb.x

bb.x:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit35, %bb.u
  %i.fg = and i32 %i.cs, 16
  %.not27 = icmp eq i32 %i.fg, 0
  br i1 %.not27, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !69
  %i.fj = or i32 %i.fi, 16
  store i32 %i.fj, ptr %i.fh, align 8, !tbaa !69
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !202 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.z, label %_ZN11opencv_onnx10ModelProto23_internal_mutable_graphEv.exit

bb.z:                                             ; preds = %bb.y
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !98 ; 2 uses
  %i.fp = trunc i64 %i.fo to i1
  %i.fq = and i64 %i.fo, -4
  %i.fr = inttoptr i64 %i.fq to ptr               ; 2 uses
  br i1 %i.fp, label %bb.aa, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i, !prof !108

bb.aa:                                            ; preds = %bb.z
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !110
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i = phi ptr [ %i.fs, %bb.aa ], [ %i.fr, %bb.z ]
  %i.ft = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx10GraphProtoEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i), !inline_history !36 ; 2 uses
  store ptr %i.ft, ptr %i.fk, align 8, !tbaa !202
  br label %_ZN11opencv_onnx10ModelProto23_internal_mutable_graphEv.exit

_ZN11opencv_onnx10ModelProto23_internal_mutable_graphEv.exit: ; preds = %bb.y, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i
  %i.fu = phi ptr [ %i.ft, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i ], [ %i.fl, %bb.y ]
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !202 ; 2 uses
  %.not.i = icmp eq ptr %i.fw, null
  %i.fx = select i1 %.not.i, ptr @_ZN11opencv_onnx29_GraphProto_default_instance_E, ptr %i.fw
  tail call void @_ZN11opencv_onnx10GraphProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(232) %i.fu, ptr noundef nonnull align 8 dereferenceable(232) %i.fx)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN11opencv_onnx10ModelProto23_internal_mutable_graphEv.exit, %bb.x
  %i.fy = and i32 %i.cs, 32
  %.not28 = icmp eq i32 %i.fy, 0
  br i1 %.not28, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !207
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %i.ga, ptr %i.gb, align 8, !tbaa !207
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gc = and i32 %i.cs, 64
  %.not29 = icmp eq i32 %i.gc, 0
  br i1 %.not29, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !208
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.ge, ptr %i.gf, align 8, !tbaa !208
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !69
  %i.gi = or i32 %i.gh, %i.cs
  store i32 %i.gi, ptr %i.gg, align 8, !tbaa !69
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx24DeviceConfigurationProtoEE9MergeFromERKS4_.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !98 ; 2 uses
  %i.gl = trunc i64 %i.gk to i1
  br i1 %i.gl, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit: ; preds = %bb.ag
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gn = and i64 %i.gk, -4
  %i.go = inttoptr i64 %i.gn to ptr
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gm, ptr noundef nonnull align 8 dereferenceable(32) %i.gp)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit: ; preds = %bb.ag, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx10ModelProto8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(200) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN11opencv_onnx10ModelProto5ClearEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  tail call void @_ZN11opencv_onnx10ModelProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK11opencv_onnx10ModelProto13IsInitializedEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN11opencv_onnx10ModelProto12InternalSwapEPS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !98
  store i64 %i.d, ptr %i.a, align 8, !tbaa !149
  store i64 %i.b, ptr %i.c, align 8, !tbaa !149
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !69
  %i.h = load i32, ptr %i.f, align 8, !tbaa !69
  store i32 %i.h, ptr %i.e, align 8, !tbaa !69
  store i32 %i.g, ptr %i.f, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !178, !noalias !445
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !178, !noalias !446
  store ptr %i.p, ptr %i.j, align 8, !tbaa !178
  %2 = load <2 x i32>, ptr %i.n, align 8, !tbaa !69, !noalias !446
  store ptr %i.m, ptr %i.i, align 8, !tbaa !178
  %i.q = load <2 x i32>, ptr %i.k, align 8, !tbaa !69, !noalias !445
  store <2 x i32> %2, ptr %i.k, align 8, !tbaa !69
  store <2 x i32> %i.q, ptr %i.n, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.o, align 8, !tbaa !116, !noalias !60
  %3 = load <2 x i32>, ptr %i.t, align 8, !tbaa !69, !noalias !447
  %4 = load <2 x ptr>, ptr %i.l, align 8, !tbaa !116, !noalias !60
  store <2 x ptr> %i.v, ptr %i.l, align 8, !tbaa !116
  store <2 x ptr> %4, ptr %i.o, align 8, !tbaa !116
  %i.w = load <2 x i32>, ptr %i.r, align 8, !tbaa !69, !noalias !448
  store <2 x i32> %3, ptr %i.r, align 8, !tbaa !69
  store <2 x i32> %i.w, ptr %i.t, align 8, !tbaa !69
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ab = load <2 x ptr>, ptr %i.u, align 8, !tbaa !116, !noalias !60
  %5 = load <2 x i32>, ptr %i.z, align 8, !tbaa !69, !noalias !449
  %6 = load <2 x ptr>, ptr %i.s, align 8, !tbaa !116, !noalias !60
  store <2 x ptr> %i.ab, ptr %i.s, align 8, !tbaa !116
  store <2 x ptr> %6, ptr %i.u, align 8, !tbaa !116
  %i.ac = load <2 x i32>, ptr %i.x, align 8, !tbaa !69, !noalias !450
  store <2 x i32> %5, ptr %i.x, align 8, !tbaa !69
  store <2 x i32> %i.ac, ptr %i.z, align 8, !tbaa !69
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !116, !noalias !60
  %7 = load <2 x i32>, ptr %i.af, align 8, !tbaa !69, !noalias !451
  %8 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !116, !noalias !60
  store <2 x ptr> %i.ah, ptr %i.y, align 8, !tbaa !116
  store <2 x ptr> %8, ptr %i.aa, align 8, !tbaa !116
  %i.ai = load <2 x i32>, ptr %i.ad, align 8, !tbaa !69, !noalias !452
  store <2 x i32> %7, ptr %i.ad, align 8, !tbaa !69
  store <2 x i32> %i.ai, ptr %i.af, align 8, !tbaa !69
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.an = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !116, !noalias !60
  %9 = load <2 x i32>, ptr %i.al, align 8, !tbaa !69, !noalias !453
  %i.ao = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !116, !noalias !60
  store <2 x ptr> %i.an, ptr %i.ae, align 8, !tbaa !116
  store <2 x ptr> %i.ao, ptr %i.ag, align 8, !tbaa !116
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !179, !noalias !454
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !179, !noalias !453
  store ptr %i.aq, ptr %i.ak, align 8, !tbaa !179
  %i.ar = load <2 x i32>, ptr %i.aj, align 8, !tbaa !69, !noalias !454
  store <2 x i32> %9, ptr %i.aj, align 8, !tbaa !69
  store <2 x i32> %i.ar, ptr %i.al, align 8, !tbaa !69
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !179
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.at, align 8, !tbaa !116
  %i.au = load i64, ptr %i.as, align 8, !tbaa !116
  store i64 %i.au, ptr %i.at, align 8, !tbaa !116
  store ptr %.sroa.0.0.copyload.i, ptr %i.as, align 8, !tbaa !116
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %.sroa.0.0.copyload.i24 = load ptr, ptr %i.aw, align 8, !tbaa !116
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !116
  store i64 %i.ax, ptr %i.aw, align 8, !tbaa !116
  store ptr %.sroa.0.0.copyload.i24, ptr %i.av, align 8, !tbaa !116
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %.sroa.0.0.copyload.i25 = load ptr, ptr %i.az, align 8, !tbaa !116
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !116
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !116
  store ptr %.sroa.0.0.copyload.i25, ptr %i.ay, align 8, !tbaa !116
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %.sroa.0.0.copyload.i26 = load ptr, ptr %i.bc, align 8, !tbaa !116
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !116
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !116
  store ptr %.sroa.0.0.copyload.i26, ptr %i.bb, align 8, !tbaa !116
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %.0.copyload.i.i = load i128, ptr %i.be, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false)
  store i128 %.0.copyload.i.i, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %.0.copyload.i.i.i = load i64, ptr %i.bg, align 8
  %i.bi = load i64, ptr %i.bh, align 8
  store i64 %i.bi, ptr %i.bg, align 8
  store i64 %.0.copyload.i.i.i, ptr %i.bh, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK11opencv_onnx10ModelProto11GetTypeNameB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 22, ptr %i.a, align 8, !tbaa !149
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !67
  %i.d = load i64, ptr %i.a, align 8, !tbaa !149  ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.c, ptr noundef nonnull align 1 dereferenceable(22) @.str.23, i64 22, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !68
  %i.f = load ptr, ptr %0, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN11opencv_onnx24DeviceConfigurationProtoC2EPN6google8protobuf5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 60)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !98
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx24DeviceConfigurationProtoE, i64 16), ptr %0, align 8, !tbaa !100
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.ptr, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !182
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.f, align 8, !tbaa !105
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.h, align 8, !tbaa !106
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.i, align 8, !tbaa !206
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx24DeviceConfigurationProtoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 48)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.a, align 8, !tbaa !98
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx24DeviceConfigurationProtoE, i64 16), ptr %0, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  store i32 %i.d, ptr %i.b, align 8, !tbaa !111
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.e, i8 0, i64 28, i1 false)
  %i.h = load i32, ptr %i.g, align 8, !tbaa !113  ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.noexc, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !107
  %i.l = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i32 noundef %i.h)
          to label %.noexc13 unwind label %bb.f

.noexc13:                                         ; preds = %.noexc.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !107
  %i.p = load i32, ptr %i.o, align 8, !tbaa !115
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !113
  %i.s = sub nsw i32 %i.p, %i.r
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11TypeHandlerEEEvPPvSE_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %i.l, ptr noundef nonnull %i.m, i32 noundef %i.h, i32 noundef %i.s)
          to label %.noexc14 unwind label %bb.f

.noexc14:                                         ; preds = %.noexc13
  %i.t = load i32, ptr %i.q, align 8, !tbaa !113
  %i.u = add nsw i32 %i.t, %i.h                   ; 3 uses
  store i32 %i.u, ptr %i.q, align 8, !tbaa !113
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !107  ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !115
  %i.x = icmp slt i32 %i.w, %i.u
  br i1 %i.x, label %bb.b, label %.noexc

bb.b:                                             ; preds = %.noexc14
  store i32 %i.u, ptr %i.v, align 8, !tbaa !115
  br label %.noexc

.noexc:                                           ; preds = %bb.a, %.noexc14, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !98   ; 2 uses
  %i.aa = trunc i64 %i.z to i1
  br i1 %i.aa, label %.noexc10, label %bb.c

.noexc10:                                         ; preds = %.noexc
  %i.ab = and i64 %i.z, -4
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %.noexc, %.noexc10
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.ae, align 8, !tbaa !106
  %i.af = load i32, ptr %i.c, align 8, !tbaa !69
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !106
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = and i64 %i.aj, -2
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.a, align 8, !tbaa !98  ; 2 uses
  %i.an = trunc i64 %i.am to i1
  %i.ao = and i64 %i.am, -4
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  br i1 %i.an, label %bb.e, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !108

bb.e:                                             ; preds = %bb.d
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !110
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.e, %bb.d
  %.0.i.i = phi ptr [ %i.aq, %bb.e ], [ %i.ap, %bb.d ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef %.0.i.i)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %.noexc13, %.noexc.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %.noexc10, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.f) #24
  br label %bb.i

bb.h:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.au = load i32, ptr %i.at, align 8, !tbaa !206
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.au, ptr %i.av, align 8, !tbaa !206
  ret void

bb.i:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.as, %bb.g ], [ %i.ar, %bb.f ]
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN11opencv_onnx24DeviceConfigurationProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(64) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_3
begin_hunk_4_@_ZNK11opencv_onnx11TensorProto12ByteSizeLongEv:bb.a
  %i.lu = and i32 %i.ls, 1
  %.not9.i.i102 = icmp eq i32 %i.lu, 0
  br i1 %.not9.i.i102, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !164
  %i.lx = or i64 %i.lw, 1
  %i.ly = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.lx, i1 true)
  %i.lz = xor i64 %i.ly, 63
  %i.ma = mul nuw nsw i64 %i.lz, 9
  %i.mb = add nuw nsw i64 %i.ma, 137
  %i.mc = lshr i64 %i.mb, 6
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0.i.i103 = phi i64 [ %i.mc, %bb.af ], [ 0, %bb.ae ] ; 2 uses
  %i.md = and i32 %i.ls, 2
  %.not10.i.i104 = icmp eq i32 %i.md, 0
  br i1 %.not10.i.i104, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.me = getelementptr inbounds nuw i8, ptr %i.lq, i64 32
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !165
  %i.mg = or i64 %i.mf, 1
  %i.mh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.mg, i1 true)
  %i.mi = xor i64 %i.mh, 63
  %i.mj = mul nuw nsw i64 %i.mi, 9
  %i.mk = add nuw nsw i64 %i.mj, 137
  %i.ml = lshr i64 %i.mk, 6
  %i.mm = add nuw nsw i64 %i.ml, %.0.i.i103
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ad
  %.1.i.i105 = phi i64 [ %i.mm, %bb.ah ], [ %.0.i.i103, %bb.ag ], [ 0, %bb.ad ] ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !98 ; 2 uses
  %i.mp = trunc i64 %i.mo to i1
  br i1 %i.mp, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i.i107, label %_ZN6google8protobuf8internal14WireFormatLite11MessageSizeIN11opencv_onnx19TensorProto_SegmentEEEmRKT_.exit, !prof !108

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i.i107: ; preds = %bb.ai
  %i.mq = and i64 %i.mo, -4
  %i.mr = inttoptr i64 %i.mq to ptr
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !68
  %i.mu = add i64 %i.mt, %.1.i.i105
  br label %_ZN6google8protobuf8internal14WireFormatLite11MessageSizeIN11opencv_onnx19TensorProto_SegmentEEEmRKT_.exit

_ZN6google8protobuf8internal14WireFormatLite11MessageSizeIN11opencv_onnx19TensorProto_SegmentEEEmRKT_.exit: ; preds = %bb.ai, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i.i107
  %.2.i.i106 = phi i64 [ %i.mu, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i.i107 ], [ %.1.i.i105, %bb.ai ] ; 2 uses
  %i.mv = trunc i64 %.2.i.i106 to i32             ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lq, i64 20
  store atomic i32 %i.mv, ptr %i.mw monotonic, align 4
  %i.mx = or i32 %i.mv, 1
  %i.my = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.mx, i1 true)
  %i.mz = xor i32 %i.my, 31
  %i.na = mul nuw nsw i32 %i.mz, 9
  %i.nb = add nuw nsw i32 %i.na, 73
  %i.nc = lshr i32 %i.nb, 6
  %i.nd = zext nneg i32 %i.nc to i64
  %i.ne = add i64 %.10, 1
  %i.nf = add i64 %i.ne, %.2.i.i106
  %i.ng = add i64 %i.nf, %i.nd
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN6google8protobuf8internal14WireFormatLite11MessageSizeIN11opencv_onnx19TensorProto_SegmentEEEmRKT_.exit, %bb.ac
  %.11 = phi i64 [ %i.ng, %_ZN6google8protobuf8internal14WireFormatLite11MessageSizeIN11opencv_onnx19TensorProto_SegmentEEEmRKT_.exit ], [ %.10, %bb.ac ] ; 2 uses
  %i.nh = and i32 %i.gy, 16
  %.not84 = icmp eq i32 %i.nh, 0
  br i1 %.not84, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.nj = load i32, ptr %i.ni, align 8, !tbaa !166
  %i.nk = or i32 %i.nj, 1
  %i.nl = sext i32 %i.nk to i64
  %i.nm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.nl, i1 true)
  %i.nn = xor i64 %i.nm, 63
  %i.no = mul nuw nsw i64 %i.nn, 9
  %i.np = add nuw nsw i64 %i.no, 137
  %i.nq = lshr i64 %i.np, 6
  %i.nr = add i64 %i.nq, %.11
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.12 = phi i64 [ %i.nr, %bb.ak ], [ %.11, %bb.aj ] ; 2 uses
  %i.ns = and i32 %i.gy, 32
  %.not85 = icmp eq i32 %i.ns, 0
  br i1 %.not85, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !167
  %i.nv = or i32 %i.nu, 1
  %i.nw = sext i32 %i.nv to i64
  %i.nx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.nw, i1 true)
  %i.ny = xor i64 %i.nx, 63
  %i.nz = mul nuw nsw i64 %i.ny, 9
  %i.oa = add nuw nsw i64 %i.nz, 73
  %i.ob = lshr i64 %i.oa, 6
  %i.oc = add i64 %.12, 1
  %i.od = add i64 %i.oc, %i.ob
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am, %._crit_edge135
  %.13 = phi i64 [ %i.od, %bb.am ], [ %.12, %bb.al ], [ %.7.lcssa, %._crit_edge135 ] ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !98 ; 2 uses
  %i.og = trunc i64 %i.of to i1
  br i1 %i.og, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, label %bb.ao, !prof !108

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit: ; preds = %bb.an
  %i.oh = and i64 %i.of, -4
  %i.oi = inttoptr i64 %i.oh to ptr
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !68
  %i.ol = add i64 %i.ok, %.13
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, %bb.an
  %.14 = phi i64 [ %i.ol, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit ], [ %.13, %bb.an ] ; 2 uses
  %i.om = trunc i64 %.14 to i32
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 20
  store atomic i32 %i.om, ptr %i.on monotonic, align 4
  ret i64 %.14
}

declare noundef i64 @_ZN6google8protobuf8internal14WireFormatLite9Int32SizeERKNS0_13RepeatedFieldIiEE(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare noundef i64 @_ZN6google8protobuf8internal14WireFormatLite10UInt64SizeERKNS0_13RepeatedFieldImEE(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx11TensorProto21CheckTypeAndMergeFromERKN6google8protobuf11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN11opencv_onnx11TensorProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx11TensorProto8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(256) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN11opencv_onnx11TensorProto5ClearEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  tail call void @_ZN11opencv_onnx11TensorProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK11opencv_onnx11TensorProto13IsInitializedEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN11opencv_onnx11TensorProto12InternalSwapEPS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(256) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !98
  store i64 %i.d, ptr %i.a, align 8, !tbaa !149
  store i64 %i.b, ptr %i.c, align 8, !tbaa !149
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !69
  %i.h = load i32, ptr %i.f, align 8, !tbaa !69
  store i32 %i.h, ptr %i.e, align 8, !tbaa !69
  store i32 %i.g, ptr %i.f, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.0.copyload.i.i.i = load i128, ptr %i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.0.copyload.i.i.i25 = load i128, ptr %i.k, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i25, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.0.copyload.i.i.i26 = load i128, ptr %i.m, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i26, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !179, !noalias !572
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !178, !noalias !572
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !179, !noalias !573
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !178, !noalias !573
  store ptr %i.x, ptr %i.p, align 8, !tbaa !178
  %2 = load <2 x i32>, ptr %i.u, align 8, !tbaa !69, !noalias !573
  store ptr %i.w, ptr %i.r, align 8, !tbaa !179
  store ptr %i.t, ptr %i.o, align 8, !tbaa !178
  %i.y = load <2 x i32>, ptr %i.q, align 8, !tbaa !69, !noalias !572
  store <2 x i32> %2, ptr %i.q, align 8, !tbaa !69
  store <2 x i32> %i.y, ptr %i.u, align 8, !tbaa !69
  store ptr %i.s, ptr %i.v, align 8, !tbaa !179
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %.0.copyload.i.i.i27 = load i128, ptr %i.z, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i27, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %.0.copyload.i.i.i28 = load i128, ptr %i.ab, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i28, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %.0.copyload.i.i.i29 = load i128, ptr %i.ad, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i29, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !178, !noalias !574
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !178, !noalias !575
  store ptr %i.am, ptr %i.ag, align 8, !tbaa !178
  %3 = load <2 x i32>, ptr %i.ak, align 8, !tbaa !69, !noalias !575
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !178
  %i.an = load <2 x i32>, ptr %i.ah, align 8, !tbaa !69, !noalias !574
  store <2 x i32> %3, ptr %i.ah, align 8, !tbaa !69
  store <2 x i32> %i.an, ptr %i.ak, align 8, !tbaa !69
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.as = load <2 x ptr>, ptr %i.al, align 8, !tbaa !116, !noalias !60
  %4 = load <2 x i32>, ptr %i.aq, align 8, !tbaa !69, !noalias !576
  %i.at = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !116, !noalias !60
  store <2 x ptr> %i.as, ptr %i.ai, align 8, !tbaa !116
  store <2 x ptr> %i.at, ptr %i.al, align 8, !tbaa !116
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !179, !noalias !577
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !179, !noalias !576
  store ptr %i.av, ptr %i.ap, align 8, !tbaa !179
  %i.aw = load <2 x i32>, ptr %i.ao, align 8, !tbaa !69, !noalias !577
  store <2 x i32> %4, ptr %i.ao, align 8, !tbaa !69
  store <2 x i32> %i.aw, ptr %i.aq, align 8, !tbaa !69
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !179
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ay, align 8, !tbaa !116
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !116
  store i64 %i.az, ptr %i.ay, align 8, !tbaa !116
  store ptr %.sroa.0.0.copyload.i, ptr %i.ax, align 8, !tbaa !116
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %.sroa.0.0.copyload.i30 = load ptr, ptr %i.bb, align 8, !tbaa !116
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !116
  store i64 %i.bc, ptr %i.bb, align 8, !tbaa !116
  store ptr %.sroa.0.0.copyload.i30, ptr %i.ba, align 8, !tbaa !116
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %.sroa.0.0.copyload.i31 = load ptr, ptr %i.be, align 8, !tbaa !116
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !116
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !116
  store ptr %.sroa.0.0.copyload.i31, ptr %i.bd, align 8, !tbaa !116
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %.0.copyload.i.i = load i128, ptr %i.bg, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false)
  store i128 %.0.copyload.i.i, ptr %i.bh, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK11opencv_onnx11TensorProto11GetTypeNameB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 23, ptr %i.a, align 8, !tbaa !149
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !67
  %i.d = load i64, ptr %i.a, align 8, !tbaa !149  ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.c, ptr noundef nonnull align 1 dereferenceable(23) @.str.30, i64 23, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !68
  %i.f = load ptr, ptr %0, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(256) ptr @_ZN11opencv_onnx17SparseTensorProto9_Internal6valuesEPKS0_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(256) ptr @_ZN11opencv_onnx17SparseTensorProto9_Internal7indicesEPKS0_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN11opencv_onnx17SparseTensorProtoC2EPN6google8protobuf5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !98
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx17SparseTensorProtoE, i64 16), ptr %0, align 8, !tbaa !100
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.ptr, i8 0, i64 16, i1 false)
  store ptr %1, ptr %i.e, align 8, !tbaa !104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx17SparseTensorProtoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 40)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !98
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx17SparseTensorProtoE, i64 16), ptr %0, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  store i32 %i.d, ptr %i.b, align 8, !tbaa !111
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  %i.h = load i32, ptr %i.g, align 8, !tbaa !102  ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %.noexc, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i32 noundef %i.h)
          to label %.noexc16 unwind label %bb.g

.noexc16:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.g, align 8, !tbaa !102
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !104
  %i.l = load i32, ptr %i.f, align 8, !tbaa !102
  %i.m = add nsw i32 %i.l, %i.j
  store i32 %i.m, ptr %i.f, align 8, !tbaa !102
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.p = load i32, ptr %i.g, align 8, !tbaa !102
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.k, ptr nonnull align 8 %i.o, i64 %i.r, i1 false)
  br label %.noexc

.noexc:                                           ; preds = %bb.a, %.noexc16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !98   ; 2 uses
  %i.u = trunc i64 %i.t to i1
  br i1 %i.u, label %.noexc13, label %bb.c

.noexc13:                                         ; preds = %.noexc
  %i.v = and i64 %i.t, -4
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %.noexc13, %.noexc
  %i.y = load i32, ptr %i.c, align 8, !tbaa !69   ; 2 uses
  %i.z = trunc i32 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  br i1 %i.z, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.ab = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #27
          to label %bb.e unwind label %bb.h       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !121
  invoke void @_ZN11opencv_onnx11TensorProtoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %i.ab, ptr noundef nonnull align 8 dereferenceable(256) %i.ac)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !121
  %.pre = load i32, ptr %i.c, align 8, !tbaa !69
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.h:                                             ; preds = %.noexc13, %bb.l, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 256) #26
  br label %bb.p

bb.j:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.ah, align 8, !tbaa !121
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.j
  %i.ai = phi i32 [ %.pre, %bb.f ], [ %i.y, %bb.j ]
  %i.aj = and i32 %i.ai, 2
  %.not = icmp eq i32 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #27
          to label %bb.m unwind label %bb.h       ; 3 uses

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !122
  invoke void @_ZN11opencv_onnx11TensorProtoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %i.al, ptr noundef nonnull align 8 dereferenceable(256) %i.am)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 256) #26
  br label %bb.p

bb.o:                                             ; preds = %bb.k, %bb.m
  %.sink = phi ptr [ %i.al, %bb.m ], [ null, %bb.k ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_4
