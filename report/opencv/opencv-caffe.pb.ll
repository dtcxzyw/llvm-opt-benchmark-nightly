Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/opencv-caffe.pb?download=true
inline.NumInlined: 10014
inline.NumDeleted: 2341
loop-unroll.NumCompletelyUnrolled: 81
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZN12opencv_caffe12NetParameter9MergeFromERKS0_:bb.a
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 153
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !307
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !201
  %i.ek = or i32 %i.ej, %i.cq
  store i32 %i.ek, ptr %i.ei, align 8, !tbaa !201
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN6google8protobuf16RepeatedPtrFieldIN12opencv_caffe14LayerParameterEE9MergeFromERKS4_.exit
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !145 ; 2 uses
  %i.en = trunc i64 %i.em to i1
  br i1 %i.en, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.w
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ep = and i64 %i.em, -4
  %i.eq = inttoptr i64 %i.ep to ptr
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef nonnull align 8 dereferenceable(24) %i.er)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.w, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12opencv_caffe8NetState9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !221  ; 4 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9MergeFromERKS8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !220
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i32 noundef %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !220
  %i.k = load i32, ptr %i.j, align 8, !tbaa !223
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !221
  %i.n = sub nsw i32 %i.k, %i.m
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11TypeHandlerEEEvPPvSE_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %i.h, ptr noundef nonnull %i.g, i32 noundef %i.b, i32 noundef %i.n), !inline_history !16
  %i.o = load i32, ptr %i.l, align 8, !tbaa !221
  %i.p = add nsw i32 %i.o, %i.b                   ; 3 uses
  store i32 %i.p, ptr %i.l, align 8, !tbaa !221
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !220  ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !223
  %i.s = icmp slt i32 %i.r, %i.p
  br i1 %i.s, label %bb.c, label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9MergeFromERKS8_.exit

bb.c:                                             ; preds = %bb.b
  store i32 %i.p, ptr %i.q, align 8, !tbaa !223
  br label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9MergeFromERKS8_.exit

_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9MergeFromERKS8_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !201  ; 4 uses
  %i.v = and i32 %i.u, 3
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9MergeFromERKS8_.exit
  %i.w = and i32 %i.u, 1
  %.not9 = icmp eq i32 %i.w, 0
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load i32, ptr %i.x, align 8, !tbaa !299
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.y, ptr %i.z, align 8, !tbaa !299
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = and i32 %i.u, 2
  %.not10 = icmp eq i32 %i.aa, 0
  br i1 %.not10, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !300
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !300
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !201
  %i.ag = or i32 %i.af, %i.u
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !201
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9MergeFromERKS8_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !145 ; 2 uses
  %i.aj = trunc i64 %i.ai to i1
  br i1 %i.aj, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = and i64 %i.ai, -4
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.an)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.i, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12opencv_caffe12NetParameter8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN12opencv_caffe12NetParameter5ClearEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  tail call void @_ZN12opencv_caffe12NetParameter9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK12opencv_caffe12NetParameter13IsInitializedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i32, ptr %i.a, align 8, !tbaa !221  ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %_ZN6google8protobuf8internal17AllAreInitializedIN12opencv_caffe14LayerParameterEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !220
  %i.f = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZNK12opencv_caffe14LayerParameter13IsInitializedEv.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.f, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK12opencv_caffe14LayerParameter13IsInitializedEv.exit.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !216  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !201
  %i.k = and i32 %i.j, 4194304
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %_ZNK12opencv_caffe14LayerParameter13IsInitializedEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 640
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 4, !tbaa !201
  %i.p = and i32 %i.o, 7
  %.not.i.i.i = icmp eq i32 %i.p, 7
  br i1 %.not.i.i.i, label %_ZNK12opencv_caffe14LayerParameter13IsInitializedEv.exit.i, label %_ZN6google8protobuf8internal17AllAreInitializedIN12opencv_caffe14LayerParameterEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit

_ZNK12opencv_caffe14LayerParameter13IsInitializedEv.exit.i: ; preds = %bb.c, %bb.b
  %i.q = icmp samesign ult i64 %indvars.iv.i, 2
  br i1 %i.q, label %_ZN6google8protobuf8internal17AllAreInitializedIN12opencv_caffe14LayerParameterEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %bb.b, !llvm.loop !19

_ZN6google8protobuf8internal17AllAreInitializedIN12opencv_caffe14LayerParameterEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit: ; preds = %bb.c, %_ZNK12opencv_caffe14LayerParameter13IsInitializedEv.exit.i, %bb.a
  %.lcssa.i = phi i1 [ true, %bb.a ], [ true, %_ZNK12opencv_caffe14LayerParameter13IsInitializedEv.exit.i ], [ false, %bb.c ]
  ret i1 %.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN12opencv_caffe12NetParameter12InternalSwapEPS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !145
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !145
  store i64 %i.d, ptr %i.a, align 8, !tbaa !175
  store i64 %i.b, ptr %i.c, align 8, !tbaa !175
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !201
  %i.h = load i32, ptr %i.f, align 8, !tbaa !201
  store i32 %i.h, ptr %i.e, align 8, !tbaa !201
  store i32 %i.g, ptr %i.f, align 8, !tbaa !201
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !227, !noalias !849
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !227, !noalias !850
  store ptr %i.p, ptr %i.j, align 8, !tbaa !227
  %2 = load <2 x i32>, ptr %i.n, align 8, !tbaa !201, !noalias !850
  store ptr %i.m, ptr %i.i, align 8, !tbaa !227
  %i.q = load <2 x i32>, ptr %i.k, align 8, !tbaa !201, !noalias !849
  store <2 x i32> %2, ptr %i.k, align 8, !tbaa !201
  store <2 x i32> %i.q, ptr %i.n, align 8, !tbaa !201
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.o, align 8, !tbaa !216, !noalias !241
  %3 = load <2 x i32>, ptr %i.t, align 8, !tbaa !201, !noalias !851
  %i.w = load <2 x ptr>, ptr %i.l, align 8, !tbaa !216, !noalias !241
  store <2 x ptr> %i.v, ptr %i.l, align 8, !tbaa !216
  store <2 x ptr> %i.w, ptr %i.o, align 8, !tbaa !216
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !226, !noalias !852
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !226, !noalias !851
  store ptr %i.y, ptr %i.s, align 8, !tbaa !226
  %i.z = load <2 x i32>, ptr %i.r, align 8, !tbaa !201, !noalias !852
  store <2 x i32> %3, ptr %i.r, align 8, !tbaa !201
  store <2 x i32> %i.z, ptr %i.t, align 8, !tbaa !201
  store ptr %i.x, ptr %i.u, align 8, !tbaa !226
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.0.copyload.i.i.i = load i128, ptr %i.aa, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !227, !noalias !853
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !227, !noalias !854
  store ptr %i.aj, ptr %i.ad, align 8, !tbaa !227
  %4 = load <2 x i32>, ptr %i.ah, align 8, !tbaa !201, !noalias !854
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !227
  %i.ak = load <2 x i32>, ptr %i.ae, align 8, !tbaa !201, !noalias !853
  store <2 x i32> %4, ptr %i.ae, align 8, !tbaa !201
  store <2 x i32> %i.ak, ptr %i.ah, align 8, !tbaa !201
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ap = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !216, !noalias !241
  %5 = load <2 x i32>, ptr %i.an, align 8, !tbaa !201, !noalias !855
  %i.aq = load <2 x ptr>, ptr %i.af, align 8, !tbaa !216, !noalias !241
  store <2 x ptr> %i.ap, ptr %i.af, align 8, !tbaa !216
  store <2 x ptr> %i.aq, ptr %i.ai, align 8, !tbaa !216
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !226, !noalias !856
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !226, !noalias !855
  store ptr %i.as, ptr %i.am, align 8, !tbaa !226
  %i.at = load <2 x i32>, ptr %i.al, align 8, !tbaa !201, !noalias !856
  store <2 x i32> %5, ptr %i.al, align 8, !tbaa !201
  store <2 x i32> %i.at, ptr %i.an, align 8, !tbaa !201
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !226
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.av, align 8, !tbaa !216
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !216
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !216
  store ptr %.sroa.0.0.copyload.i, ptr %i.au, align 8, !tbaa !216
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.ax, align 8
  %i.az = load i64, ptr %i.ay, align 8
  store i64 %i.az, ptr %i.ax, align 8
  store i64 %.0.copyload.i.i, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %.0.copyload.i.i.i15 = load i16, ptr %i.ba, align 8
  %i.bc = load i16, ptr %i.bb, align 8
  store i16 %i.bc, ptr %i.ba, align 8
  store i16 %.0.copyload.i.i.i15, ptr %i.bb, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden { ptr, ptr } @_ZNK12opencv_caffe12NetParameter11GetMetadataEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6google8protobuf8internal17AssignDescriptorsEPFPKNS1_15DescriptorTableEvEPSt9once_flagRKNS0_8MetadataE(ptr noundef nonnull @_Z46descriptor_table_opencv_2dcaffe_2eproto_getterv, ptr noundef nonnull @_ZL44descriptor_table_opencv_2dcaffe_2eproto_once, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL42file_level_metadata_opencv_2dcaffe_2eproto, i64 144))
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(160) ptr @_ZN12opencv_caffe15SolverParameter9_Internal9net_paramEPKS0_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !313
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(160) ptr @_ZN12opencv_caffe15SolverParameter9_Internal15train_net_paramEPKS0_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !314
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(56) ptr @_ZN12opencv_caffe15SolverParameter9_Internal11train_stateEPKS0_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !315
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN12opencv_caffe15SolverParameterC2EPN6google8protobuf5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(304) initializes((0, 28), (32, 278), (280, 304)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !145
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN12opencv_caffe15SolverParameterE, i64 16), ptr %0, align 8, !tbaa !147
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.f, align 8, !tbaa !153
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.g, align 8, !tbaa !219
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.i, align 8, !tbaa !295
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.j, align 8, !tbaa !219
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %1, ptr %i.l, align 8, !tbaa !219
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.n, align 8, !tbaa !295
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  store <4 x ptr> <ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E>, ptr %i.o, align 8, !tbaa !200
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 260
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %i.p, i8 0, i64 92, i1 false)
  store float 9.990000e-01, ptr %i.q, align 4, !tbaa !316
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 -1, ptr %i.r, align 8, !tbaa !317
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 1, ptr %i.s, align 8, !tbaa !318
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i8 1, ptr %i.t, align 4, !tbaa !319
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 277
  store i8 1, ptr %i.u, align 1, !tbaa !320
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 280
  store float f0x322BCC77, ptr %i.v, align 8, !tbaa !321
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 1, ptr %i.w, align 4, !tbaa !322
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 288
  store float -1.000000e+00, ptr %i.x, align 8, !tbaa !323
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 292
  store i32 1, ptr %i.y, align 4, !tbaa !324
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 1, ptr %i.z, align 8, !tbaa !325
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 300
  store float 9.900000e-01, ptr %i.aa, align 4, !tbaa !326
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf16RepeatedPtrFieldIN12opencv_caffe8NetStateEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !220
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
  tail call void @__clang_call_terminate(ptr %i.g) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf16RepeatedPtrFieldIN12opencv_caffe12NetParameterEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !220
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
  tail call void @__clang_call_terminate(ptr %i.g) #24
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12opencv_caffe15SolverParameterC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(304) initializes((0, 28), (32, 56)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(304) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store i64 0, ptr %i.a, align 8, !tbaa !145
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN12opencv_caffe15SolverParameterE, i64 16), ptr %0, align 8, !tbaa !147
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !171
  store i64 %i.d, ptr %i.b, align 8, !tbaa !171
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.e, align 8, !tbaa !153
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !221  ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS8_.exit, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !220
  %i.l = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i32 noundef %i.h)
          to label %.noexc43 unwind label %bb.j

.noexc43:                                         ; preds = %.noexc.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !220
  %i.p = load i32, ptr %i.o, align 8, !tbaa !223
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !221
  %i.s = sub nsw i32 %i.p, %i.r
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11TypeHandlerEEEvPPvSE_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %i.l, ptr noundef nonnull %i.m, i32 noundef %i.h, i32 noundef %i.s)
          to label %.noexc44 unwind label %bb.j

.noexc44:                                         ; preds = %.noexc43
end_hunk_0
begin_hunk_1_@_ZN12opencv_caffe15SolverParameter9MergeFromERKS0_:bb.a
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12opencv_caffe15SolverParameter8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(304) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN12opencv_caffe15SolverParameter5ClearEv(ptr noundef nonnull align 8 dereferenceable(304) %0)
  tail call void @_ZN12opencv_caffe15SolverParameter9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(304) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK12opencv_caffe15SolverParameter13IsInitializedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(304) %0) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !221  ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !220
  %i.f = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZNK12opencv_caffe12NetParameter13IsInitializedEv.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.f, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK12opencv_caffe12NetParameter13IsInitializedEv.exit.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !216  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.j = load i32, ptr %i.i, align 8, !tbaa !221  ; 2 uses
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %_ZNK12opencv_caffe12NetParameter13IsInitializedEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !220
  %i.n = zext nneg i32 %i.j to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNK12opencv_caffe14LayerParameter13IsInitializedEv.exit.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZNK12opencv_caffe14LayerParameter13IsInitializedEv.exit.i.i.i ] ; 3 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1
  %i.o = getelementptr [8 x i8], ptr %i.m, i64 %indvars.iv.i.i.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !216  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !201
  %i.s = and i32 %i.r, 4194304
  %.not.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i, label %_ZNK12opencv_caffe14LayerParameter13IsInitializedEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 640
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 4, !tbaa !201
  %i.x = and i32 %i.w, 7
  %.not.i.i.i.i.i = icmp eq i32 %i.x, 7
  br i1 %.not.i.i.i.i.i, label %_ZNK12opencv_caffe14LayerParameter13IsInitializedEv.exit.i.i.i, label %_ZN6google8protobuf8internal17AllAreInitializedIN12opencv_caffe12NetParameterEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit

_ZNK12opencv_caffe14LayerParameter13IsInitializedEv.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.y = icmp samesign ult i64 %indvars.iv.i.i.i, 2
  br i1 %i.y, label %_ZNK12opencv_caffe12NetParameter13IsInitializedEv.exit.i, label %bb.c, !llvm.loop !19

_ZNK12opencv_caffe12NetParameter13IsInitializedEv.exit.i: ; preds = %_ZNK12opencv_caffe14LayerParameter13IsInitializedEv.exit.i.i.i, %bb.b
  %i.z = icmp slt i64 %indvars.iv.i, 2
  br i1 %i.z, label %.loopexit, label %bb.b, !llvm.loop !882

.loopexit:                                        ; preds = %_ZNK12opencv_caffe12NetParameter13IsInitializedEv.exit.i, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !201 ; 2 uses
  %i.ac = and i32 %i.ab, 64
  %.not = icmp eq i32 %i.ac, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  br i1 %.not, label %_ZNK12opencv_caffe12NetParameter13IsInitializedEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !221 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, 1
  br i1 %i.ah, label %_ZNK12opencv_caffe12NetParameter13IsInitializedEv.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !220
  %i.ak = zext nneg i32 %i.ag to i64
  br label %bb.f

bb.f:                                             ; preds = %_ZNK12opencv_caffe14LayerParameter13IsInitializedEv.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.ak, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZNK12opencv_caffe14LayerParameter13IsInitializedEv.exit.i.i ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.al = getelementptr [8 x i8], ptr %i.aj, i64 %indvars.iv.i.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !216 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !201
  %i.ap = and i32 %i.ao, 4194304
  %.not.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i, label %_ZNK12opencv_caffe14LayerParameter13IsInitializedEv.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 640
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i32, ptr %i.as, align 4, !tbaa !201
  %i.au = and i32 %i.at, 7
  %.not.i.i.i.i2 = icmp eq i32 %i.au, 7
  br i1 %.not.i.i.i.i2, label %_ZNK12opencv_caffe14LayerParameter13IsInitializedEv.exit.i.i, label %_ZN6google8protobuf8internal17AllAreInitializedIN12opencv_caffe12NetParameterEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit

_ZNK12opencv_caffe14LayerParameter13IsInitializedEv.exit.i.i: ; preds = %bb.g, %bb.f
  %i.av = icmp samesign ult i64 %indvars.iv.i.i, 2
  br i1 %i.av, label %_ZNK12opencv_caffe12NetParameter13IsInitializedEv.exit.thread, label %bb.f, !llvm.loop !19

_ZNK12opencv_caffe12NetParameter13IsInitializedEv.exit.thread: ; preds = %_ZNK12opencv_caffe14LayerParameter13IsInitializedEv.exit.i.i, %bb.e, %.loopexit
  %i.aw = and i32 %i.ab, 128
  %.not14 = icmp eq i32 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  br i1 %.not14, label %_ZN6google8protobuf8internal17AllAreInitializedIN12opencv_caffe12NetParameterEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK12opencv_caffe12NetParameter13IsInitializedEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !221 ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 1
  br i1 %i.bb, label %_ZN6google8protobuf8internal17AllAreInitializedIN12opencv_caffe12NetParameterEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !220
  %i.be = zext nneg i32 %i.ba to i64
  br label %bb.i

bb.i:                                             ; preds = %_ZNK12opencv_caffe14LayerParameter13IsInitializedEv.exit.i.i10, %.lr.ph.i.i4
  %indvars.iv.i.i5 = phi i64 [ %i.be, %.lr.ph.i.i4 ], [ %indvars.iv.next.i.i6, %_ZNK12opencv_caffe14LayerParameter13IsInitializedEv.exit.i.i10 ] ; 3 uses
  %indvars.iv.next.i.i6 = add nsw i64 %indvars.iv.i.i5, -1
  %i.bf = getelementptr [8 x i8], ptr %i.bd, i64 %indvars.iv.i.i5
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !216 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !201
  %i.bj = and i32 %i.bi, 4194304
  %.not.i.i.i7 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i.i7, label %_ZNK12opencv_caffe14LayerParameter13IsInitializedEv.exit.i.i10, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 640
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !201
  %i.bo = and i32 %i.bn, 7
  %.not.i.i.i.i8 = icmp eq i32 %i.bo, 7
  br i1 %.not.i.i.i.i8, label %_ZNK12opencv_caffe14LayerParameter13IsInitializedEv.exit.i.i10, label %_ZN6google8protobuf8internal17AllAreInitializedIN12opencv_caffe12NetParameterEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit

_ZNK12opencv_caffe14LayerParameter13IsInitializedEv.exit.i.i10: ; preds = %bb.j, %bb.i
  %i.bp = icmp samesign ult i64 %indvars.iv.i.i5, 2
  br i1 %i.bp, label %_ZN6google8protobuf8internal17AllAreInitializedIN12opencv_caffe12NetParameterEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %bb.i, !llvm.loop !19

_ZN6google8protobuf8internal17AllAreInitializedIN12opencv_caffe12NetParameterEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit: ; preds = %bb.d, %bb.g, %_ZNK12opencv_caffe14LayerParameter13IsInitializedEv.exit.i.i10, %bb.j, %bb.h, %_ZNK12opencv_caffe12NetParameter13IsInitializedEv.exit.thread
  %.0 = phi i1 [ true, %bb.h ], [ false, %bb.j ], [ false, %bb.g ], [ true, %_ZNK12opencv_caffe12NetParameter13IsInitializedEv.exit.thread ], [ true, %_ZNK12opencv_caffe14LayerParameter13IsInitializedEv.exit.i.i10 ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN12opencv_caffe15SolverParameter12InternalSwapEPS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(304) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !145
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !145
  store i64 %i.d, ptr %i.a, align 8, !tbaa !175
  store i64 %i.b, ptr %i.c, align 8, !tbaa !175
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !201
  %i.h = load i32, ptr %i.f, align 8, !tbaa !201
  store i32 %i.h, ptr %i.e, align 8, !tbaa !201
  store i32 %i.g, ptr %i.f, align 8, !tbaa !201
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !201
  %i.l = load i32, ptr %i.j, align 4, !tbaa !201
  store i32 %i.l, ptr %i.i, align 4, !tbaa !201
  store i32 %i.k, ptr %i.j, align 4, !tbaa !201
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !226, !noalias !895
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !227, !noalias !895
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !226, !noalias !896
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !227, !noalias !896
  store ptr %i.v, ptr %i.n, align 8, !tbaa !227
  %2 = load <2 x i32>, ptr %i.s, align 8, !tbaa !201, !noalias !896
  store ptr %i.u, ptr %i.p, align 8, !tbaa !226
  store ptr %i.r, ptr %i.m, align 8, !tbaa !227
  %i.w = load <2 x i32>, ptr %i.o, align 8, !tbaa !201, !noalias !895
  store <2 x i32> %2, ptr %i.o, align 8, !tbaa !201
  store <2 x i32> %i.w, ptr %i.s, align 8, !tbaa !201
  store ptr %i.q, ptr %i.t, align 8, !tbaa !226
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.0.copyload.i.i.i = load i128, ptr %i.x, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !227, !noalias !897
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !227, !noalias !898
  store ptr %i.ag, ptr %i.aa, align 8, !tbaa !227
  %3 = load <2 x i32>, ptr %i.ae, align 8, !tbaa !201, !noalias !898
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !227
  %i.ah = load <2 x i32>, ptr %i.ab, align 8, !tbaa !201, !noalias !897
  store <2 x i32> %3, ptr %i.ab, align 8, !tbaa !201
  store <2 x i32> %i.ah, ptr %i.ae, align 8, !tbaa !201
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.af, align 8, !tbaa !216, !noalias !241
  %4 = load <2 x i32>, ptr %i.ak, align 8, !tbaa !201, !noalias !899
  %i.an = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !216, !noalias !241
  store <2 x ptr> %i.am, ptr %i.ac, align 8, !tbaa !216
  store <2 x ptr> %i.an, ptr %i.af, align 8, !tbaa !216
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !226, !noalias !900
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !226, !noalias !899
  store ptr %i.ap, ptr %i.aj, align 8, !tbaa !226
  %i.aq = load <2 x i32>, ptr %i.ai, align 8, !tbaa !201, !noalias !900
  store <2 x i32> %4, ptr %i.ai, align 8, !tbaa !201
  store <2 x i32> %i.aq, ptr %i.ak, align 8, !tbaa !201
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !226
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %.0.copyload.i.i.i42 = load i128, ptr %i.ar, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i42, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.au, align 8, !tbaa !216
  %i.av = load i64, ptr %i.at, align 8, !tbaa !216
  store i64 %i.av, ptr %i.au, align 8, !tbaa !216
  store ptr %.sroa.0.0.copyload.i, ptr %i.at, align 8, !tbaa !216
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %.sroa.0.0.copyload.i43 = load ptr, ptr %i.ax, align 8, !tbaa !216
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !216
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !216
  store ptr %.sroa.0.0.copyload.i43, ptr %i.aw, align 8, !tbaa !216
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %.sroa.0.0.copyload.i44 = load ptr, ptr %i.ba, align 8, !tbaa !216
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !216
  store i64 %i.bb, ptr %i.ba, align 8, !tbaa !216
  store ptr %.sroa.0.0.copyload.i44, ptr %i.az, align 8, !tbaa !216
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %.sroa.0.0.copyload.i45 = load ptr, ptr %i.bd, align 8, !tbaa !216
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !216
  store i64 %i.be, ptr %i.bd, align 8, !tbaa !216
  store ptr %.sroa.0.0.copyload.i45, ptr %i.bc, align 8, !tbaa !216
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %.sroa.0.0.copyload.i46 = load ptr, ptr %i.bg, align 8, !tbaa !216
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !216
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !216
  store ptr %.sroa.0.0.copyload.i46, ptr %i.bf, align 8, !tbaa !216
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %.sroa.0.0.copyload.i47 = load ptr, ptr %i.bj, align 8, !tbaa !216
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !216
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !216
  store ptr %.sroa.0.0.copyload.i47, ptr %i.bi, align 8, !tbaa !216
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %.0.copyload.i.i = load i128, ptr %i.bl, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false)
  store i128 %.0.copyload.i.i, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %.0.copyload.i.i.i48 = load i128, ptr %i.bn, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i48, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %.0.copyload.i.i.i.i = load i128, ptr %i.bp, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i128, ptr %i.br, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bt, align 8
  %i.bv = load i64, ptr %i.bu, align 8
  store i64 %i.bv, ptr %i.bt, align 8
  store i64 %.0.copyload.i.i.i.i.i.i, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.bw, align 8
  %i.by = load i32, ptr %i.bx, align 8
  store i32 %i.by, ptr %i.bw, align 8
  store i32 %.0.copyload.i.i.i.i.i.i.i, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 260 ; 2 uses
  %i.cb = load float, ptr %i.bz, align 4, !tbaa !213
  %i.cc = load float, ptr %i.ca, align 4, !tbaa !213
  store float %i.cc, ptr %i.bz, align 4, !tbaa !213
  store float %i.cb, ptr %i.ca, align 4, !tbaa !213
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !175
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !175
  store i64 %i.cg, ptr %i.cd, align 8, !tbaa !175
  store i64 %i.cf, ptr %i.ce, align 8, !tbaa !175
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.cj = load i32, ptr %i.ch, align 8, !tbaa !201
  %i.ck = load i32, ptr %i.ci, align 8, !tbaa !201
  store i32 %i.ck, ptr %i.ch, align 8, !tbaa !201
  store i32 %i.cj, ptr %i.ci, align 8, !tbaa !201
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 2 uses
  %i.cn = load i8, ptr %i.cl, align 4, !tbaa !249, !range !240, !noundef !241
  %i.co = load i8, ptr %i.cm, align 4, !tbaa !249, !range !240, !noundef !241
  store i8 %i.co, ptr %i.cl, align 4, !tbaa !249
  store i8 %i.cn, ptr %i.cm, align 4, !tbaa !249
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 277 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 277 ; 2 uses
  %i.cr = load i8, ptr %i.cp, align 1, !tbaa !249, !range !240, !noundef !241
  %i.cs = load i8, ptr %i.cq, align 1, !tbaa !249, !range !240, !noundef !241
  store i8 %i.cs, ptr %i.cp, align 1, !tbaa !249
  store i8 %i.cr, ptr %i.cq, align 1, !tbaa !249
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.cv = load float, ptr %i.ct, align 8, !tbaa !213
  %i.cw = load float, ptr %i.cu, align 8, !tbaa !213
  store float %i.cw, ptr %i.ct, align 8, !tbaa !213
  store float %i.cv, ptr %i.cu, align 8, !tbaa !213
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 284 ; 2 uses
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !201
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !201
  store i32 %i.da, ptr %i.cx, align 4, !tbaa !201
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !201
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.dd = load float, ptr %i.db, align 8, !tbaa !213
  %i.de = load float, ptr %i.dc, align 8, !tbaa !213
  store float %i.de, ptr %i.db, align 8, !tbaa !213
  store float %i.dd, ptr %i.dc, align 8, !tbaa !213
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 292 ; 2 uses
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !201
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !201
  store i32 %i.di, ptr %i.df, align 4, !tbaa !201
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !201
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.dl = load i32, ptr %i.dj, align 8, !tbaa !201
  %i.dm = load i32, ptr %i.dk, align 8, !tbaa !201
  store i32 %i.dm, ptr %i.dj, align 8, !tbaa !201
  store i32 %i.dl, ptr %i.dk, align 8, !tbaa !201
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 300 ; 2 uses
  %i.dp = load float, ptr %i.dn, align 4, !tbaa !213
  %i.dq = load float, ptr %i.do, align 4, !tbaa !213
  store float %i.dq, ptr %i.dn, align 4, !tbaa !213
  store float %i.dp, ptr %i.do, align 4, !tbaa !213
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden { ptr, ptr } @_ZNK12opencv_caffe15SolverParameter11GetMetadataEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6google8protobuf8internal17AssignDescriptorsEPFPKNS1_15DescriptorTableEvEPSt9once_flagRKNS0_8MetadataE(ptr noundef nonnull @_Z46descriptor_table_opencv_2dcaffe_2eproto_getterv, ptr noundef nonnull @_ZL44descriptor_table_opencv_2dcaffe_2eproto_once, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL42file_level_metadata_opencv_2dcaffe_2eproto, i64 160))
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN12opencv_caffe11SolverStateC2EPN6google8protobuf5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !145
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN12opencv_caffe11SolverStateE, i64 16), ptr %0, align 8, !tbaa !147
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.ptr, align 8, !tbaa !201
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !153
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.f, align 8, !tbaa !219
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.h, align 8, !tbaa !200
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.i, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12opencv_caffe11SolverStateC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 48)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.a, align 8, !tbaa !145
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN12opencv_caffe11SolverStateE, i64 16), ptr %0, align 8, !tbaa !147
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !171
  store i32 %i.d, ptr %i.b, align 8, !tbaa !171
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.e, i8 0, i64 28, i1 false)
  %i.h = load i32, ptr %i.g, align 8, !tbaa !221  ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.noexc, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !220
  %i.l = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i32 noundef %i.h)
          to label %.noexc13 unwind label %bb.f

.noexc13:                                         ; preds = %.noexc.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
end_hunk_1
begin_hunk_2_@_ZN12opencv_caffe21PSROIPoolingParameter9MergeFromERKS0_:bb.a
bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = and i32 %i.b, 2
  %.not11 = icmp eq i32 %i.h, 0
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !607
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.j, ptr %i.k, align 4, !tbaa !607
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = and i32 %i.b, 4
  %.not12 = icmp eq i32 %i.l, 0
  br i1 %.not12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !608
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.n, ptr %i.o, align 8, !tbaa !608
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !201
  %i.r = or i32 %i.q, %i.b
  store i32 %i.r, ptr %i.p, align 8, !tbaa !201
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !145  ; 2 uses
  %i.u = trunc i64 %i.t to i1
  br i1 %i.u, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = and i64 %i.t, -4
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.y)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.i, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12opencv_caffe19ROIPoolingParameter9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !201  ; 5 uses
  %i.c = and i32 %i.b, 7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 1
  %.not10 = icmp eq i32 %i.d, 0
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !609
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.f, ptr %i.g, align 8, !tbaa !609
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = and i32 %i.b, 2
  %.not11 = icmp eq i32 %i.h, 0
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !610
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.j, ptr %i.k, align 4, !tbaa !610
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = and i32 %i.b, 4
  %.not12 = icmp eq i32 %i.l, 0
  br i1 %.not12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load float, ptr %i.m, align 8, !tbaa !562
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.n, ptr %i.o, align 8, !tbaa !562
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !201
  %i.r = or i32 %i.q, %i.b
  store i32 %i.r, ptr %i.p, align 8, !tbaa !201
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !145  ; 2 uses
  %i.u = trunc i64 %i.t to i1
  br i1 %i.u, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = and i64 %i.t, -4
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.y)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.i, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12opencv_caffe14LayerParameter8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(664) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN12opencv_caffe14LayerParameter5ClearEv(ptr noundef nonnull align 8 dereferenceable(664) %0)
  tail call void @_ZN12opencv_caffe14LayerParameter9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(664) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK12opencv_caffe14LayerParameter13IsInitializedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(664) %0) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !201
  %i.c = and i32 %i.b, 4194304
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 4, !tbaa !201
  %i.h = and i32 %i.g, 7
  %.not.i = icmp eq i32 %i.h, 7
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK12opencv_caffe21PSROIPoolingParameter13IsInitializedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !201
  %i.c = and i32 %i.b, 7
  %.not = icmp eq i32 %i.c, 7
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12opencv_caffe14LayerParameter12InternalSwapEPS0_(ptr noundef nonnull align 8 dereferenceable(664) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !145
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !145
  store i64 %i.d, ptr %i.a, align 8, !tbaa !175
  store i64 %i.b, ptr %i.c, align 8, !tbaa !175
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !201
  %i.h = load i32, ptr %i.f, align 8, !tbaa !201
  store i32 %i.h, ptr %i.e, align 8, !tbaa !201
  store i32 %i.g, ptr %i.f, align 8, !tbaa !201
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !201
  %i.l = load i32, ptr %i.j, align 4, !tbaa !201
  store i32 %i.l, ptr %i.i, align 4, !tbaa !201
  store i32 %i.k, ptr %i.j, align 4, !tbaa !201
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !227, !noalias !1010
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !227, !noalias !1011
  store ptr %i.t, ptr %i.n, align 8, !tbaa !227
  %2 = load <2 x i32>, ptr %i.r, align 8, !tbaa !201, !noalias !1011
  store ptr %i.q, ptr %i.m, align 8, !tbaa !227
  %i.u = load <2 x i32>, ptr %i.o, align 8, !tbaa !201, !noalias !1010
  store <2 x i32> %2, ptr %i.o, align 8, !tbaa !201
  store <2 x i32> %i.u, ptr %i.r, align 8, !tbaa !201
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.s, align 8, !tbaa !216, !noalias !241
  %3 = load <2 x i32>, ptr %i.x, align 8, !tbaa !201, !noalias !1012
  %i.aa = load <2 x ptr>, ptr %i.p, align 8, !tbaa !216, !noalias !241
  store <2 x ptr> %i.z, ptr %i.p, align 8, !tbaa !216
  store <2 x ptr> %i.aa, ptr %i.s, align 8, !tbaa !216
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !226, !noalias !1013
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !226, !noalias !1012
  store ptr %i.ac, ptr %i.w, align 8, !tbaa !226
  %i.ad = load <2 x i32>, ptr %i.v, align 8, !tbaa !201, !noalias !1013
  store <2 x i32> %3, ptr %i.v, align 8, !tbaa !201
  store <2 x i32> %i.ad, ptr %i.x, align 8, !tbaa !201
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !226
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.0.copyload.i.i.i = load i128, ptr %i.ae, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !227, !noalias !1014
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !227, !noalias !1015
  store ptr %i.an, ptr %i.ah, align 8, !tbaa !227
  %4 = load <2 x i32>, ptr %i.al, align 8, !tbaa !201, !noalias !1015
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !227
  %i.ao = load <2 x i32>, ptr %i.ai, align 8, !tbaa !201, !noalias !1014
  store <2 x i32> %4, ptr %i.ai, align 8, !tbaa !201
  store <2 x i32> %i.ao, ptr %i.al, align 8, !tbaa !201
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.at = load <2 x ptr>, ptr %i.am, align 8, !tbaa !216, !noalias !241
  %5 = load <2 x i32>, ptr %i.ar, align 8, !tbaa !201, !noalias !1016
  %6 = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !216, !noalias !241
  store <2 x ptr> %i.at, ptr %i.aj, align 8, !tbaa !216
  store <2 x ptr> %6, ptr %i.am, align 8, !tbaa !216
  %i.au = load <2 x i32>, ptr %i.ap, align 8, !tbaa !201, !noalias !1017
  store <2 x i32> %5, ptr %i.ap, align 8, !tbaa !201
  store <2 x i32> %i.au, ptr %i.ar, align 8, !tbaa !201
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.az = load <2 x ptr>, ptr %i.as, align 8, !tbaa !216, !noalias !241
  %7 = load <2 x i32>, ptr %i.ax, align 8, !tbaa !201, !noalias !1018
  %8 = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !216, !noalias !241
  store <2 x ptr> %i.az, ptr %i.aq, align 8, !tbaa !216
  store <2 x ptr> %8, ptr %i.as, align 8, !tbaa !216
  %i.ba = load <2 x i32>, ptr %i.av, align 8, !tbaa !201, !noalias !1019
  store <2 x i32> %7, ptr %i.av, align 8, !tbaa !201
  store <2 x i32> %i.ba, ptr %i.ax, align 8, !tbaa !201
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bf = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !216, !noalias !241
  %9 = load <2 x i32>, ptr %i.bd, align 8, !tbaa !201, !noalias !1020
  %i.bg = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !216, !noalias !241
  store <2 x ptr> %i.bf, ptr %i.aw, align 8, !tbaa !216
  store <2 x ptr> %i.bg, ptr %i.ay, align 8, !tbaa !216
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !226, !noalias !1021
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !226, !noalias !1020
  store ptr %i.bi, ptr %i.bc, align 8, !tbaa !226
  %i.bj = load <2 x i32>, ptr %i.bb, align 8, !tbaa !201, !noalias !1021
  store <2 x i32> %9, ptr %i.bb, align 8, !tbaa !201
  store <2 x i32> %i.bj, ptr %i.bd, align 8, !tbaa !201
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !226
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %.0.copyload.i.i.i22 = load i128, ptr %i.bk, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i22, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bn, align 8, !tbaa !216
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !216
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !216
  store ptr %.sroa.0.0.copyload.i, ptr %i.bm, align 8, !tbaa !216
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %.sroa.0.0.copyload.i23 = load ptr, ptr %i.bq, align 8, !tbaa !216
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !216
  store i64 %i.br, ptr %i.bq, align 8, !tbaa !216
  store ptr %.sroa.0.0.copyload.i23, ptr %i.bp, align 8, !tbaa !216
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 224
  tail call void @_ZN6google8protobuf8internal7memswapILi436EEENSt9enable_ifIXaageT_Lm16EltT_lsLj1ELi31EEvE4typeEPcS6_(ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bt)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal7memswapILi436EEENSt9enable_ifIXaageT_Lm16EltT_lsLj1ELi31EEvE4typeEPcS6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %.0.copyload.i = load i128, ptr %0, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  store i128 %.0.copyload.i, ptr %1, align 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.0.copyload.i.i = load i128, ptr %i.a, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.b, i64 16, i1 false)
  store i128 %.0.copyload.i.i, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.0.copyload.i.i.i = load i128, ptr %i.c, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.c, ptr noundef nonnull align 1 dereferenceable(16) %i.d, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.0.copyload.i.i.i.i = load i128, ptr %i.e, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.e, ptr noundef nonnull align 1 dereferenceable(16) %i.f, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i128, ptr %i.g, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.g, ptr noundef nonnull align 1 dereferenceable(16) %i.h, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i128, ptr %i.i, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.i, ptr noundef nonnull align 1 dereferenceable(16) %i.j, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i = load i128, ptr %i.k, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, ptr noundef nonnull align 1 dereferenceable(16) %i.l, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i = load i128, ptr %i.m, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, ptr noundef nonnull align 1 dereferenceable(16) %i.n, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i128, ptr %i.o, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.o, ptr noundef nonnull align 1 dereferenceable(16) %i.p, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i.i, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.q, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.q, ptr noundef nonnull align 1 dereferenceable(16) %i.r, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.s, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.s, ptr noundef nonnull align 1 dereferenceable(16) %i.t, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.u, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.u, ptr noundef nonnull align 1 dereferenceable(16) %i.v, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.w, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.w, ptr noundef nonnull align 1 dereferenceable(16) %i.x, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.y, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.y, ptr noundef nonnull align 1 dereferenceable(16) %i.z, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.aa, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aa, ptr noundef nonnull align 1 dereferenceable(16) %i.ab, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.ac, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ac, ptr noundef nonnull align 1 dereferenceable(16) %i.ad, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.ae, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ae, ptr noundef nonnull align 1 dereferenceable(16) %i.af, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.ag, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ag, ptr noundef nonnull align 1 dereferenceable(16) %i.ah, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.ai, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ai, ptr noundef nonnull align 1 dereferenceable(16) %i.aj, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.ak, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ak, ptr noundef nonnull align 1 dereferenceable(16) %i.al, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.am, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.am, ptr noundef nonnull align 1 dereferenceable(16) %i.an, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.ao, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ao, ptr noundef nonnull align 1 dereferenceable(16) %i.ap, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.aq, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aq, ptr noundef nonnull align 1 dereferenceable(16) %i.ar, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.as, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.as, ptr noundef nonnull align 1 dereferenceable(16) %i.at, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.au, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.au, ptr noundef nonnull align 1 dereferenceable(16) %i.av, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.av, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.aw, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aw, ptr noundef nonnull align 1 dereferenceable(16) %i.ax, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.ay, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ay, ptr noundef nonnull align 1 dereferenceable(16) %i.az, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ba, align 1
  %i.bc = load i32, ptr %i.bb, align 1
  store i32 %i.bc, ptr %i.ba, align 1
  store i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bb, align 1
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden { ptr, ptr } @_ZNK12opencv_caffe14LayerParameter11GetMetadataEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6google8protobuf8internal17AssignDescriptorsEPFPKNS1_15DescriptorTableEvEPSt9once_flagRKNS0_8MetadataE(ptr noundef nonnull @_Z46descriptor_table_opencv_2dcaffe_2eproto_getterv, ptr noundef nonnull @_ZL44descriptor_table_opencv_2dcaffe_2eproto_once, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL42file_level_metadata_opencv_2dcaffe_2eproto, i64 240))
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN12opencv_caffe23TransformationParameterC2EPN6google8protobuf5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 55), (56, 60)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !145
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN12opencv_caffe23TransformationParameterE, i64 16), ptr %0, align 8, !tbaa !147
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.ptr, i8 0, i64 16, i1 false)
  store ptr %1, ptr %i.e, align 8, !tbaa !194
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.f, align 8, !tbaa !200
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.g, i8 0, i64 7, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float 1.000000e+00, ptr %i.h, align 8, !tbaa !482
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12opencv_caffe23TransformationParameterC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 40)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_2
begin_hunk_3_@_ZNK12opencv_caffe18DummyDataParameter18_InternalSerializeEPhPN6google8protobuf2io19EpsCopyOutputStreamE:bb.a
  br label %_ZN6google8protobuf2io17CodedOutputStream29WriteVarint32ToArrayOutOfLineEjPh.exit87

_ZN6google8protobuf2io17CodedOutputStream29WriteVarint32ToArrayOutOfLineEjPh.exit87: ; preds = %bb.x, %bb.y
  %.0.i86 = phi ptr [ %i.fz, %bb.x ], [ %i.ga, %bb.y ]
  %i.gb = tail call noundef ptr @_ZNK12opencv_caffe9BlobShape18_InternalSerializeEPhPN6google8protobuf2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(40) %i.ft, ptr noundef %.0.i86, ptr noundef nonnull %2) ; 2 uses
  %i.gc = add nuw i32 %.0121, 1                   ; 2 uses
  %exitcond149.not = icmp eq i32 %i.gc, %i.ec
  br i1 %exitcond149.not, label %._crit_edge124, label %bb.v, !llvm.loop !1060

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %._crit_edge124
  %i.gd = and i64 %i.fl, -4
  %i.ge = inttoptr i64 %i.gd to ptr
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(24) %i.gf, ptr noundef %.5.lcssa, ptr noundef %2)
  br label %bb.z

bb.z:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %._crit_edge124
  %.6 = phi ptr [ %i.gg, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.5.lcssa, %._crit_edge124 ]
  ret ptr %.6
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZNK12opencv_caffe18DummyDataParameter12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !221  ; 2 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !220  ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %spec.select.i.i = select i1 %.not.i.i, ptr null, ptr %i.f ; 2 uses
  %.idx = shl nsw i64 %i.c, 3
  %i.g = getelementptr inbounds i8, ptr %spec.select.i.i, i64 %.idx
  %.not38 = icmp eq i32 %i.b, 0
  br i1 %.not38, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.ay, %.lr.ph ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = tail call noundef i64 @_ZN6google8protobuf8internal14WireFormatLite10UInt32SizeERKNS0_13RepeatedFieldIjEE(ptr noundef nonnull align 8 dereferenceable(16) %i.h)
  %i.j = load i32, ptr %i.h, align 8, !tbaa !229
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = tail call noundef i64 @_ZN6google8protobuf8internal14WireFormatLite10UInt32SizeERKNS0_13RepeatedFieldIjEE(ptr noundef nonnull align 8 dereferenceable(16) %i.l)
  %i.n = load i32, ptr %i.l, align 8, !tbaa !229
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.q = tail call noundef i64 @_ZN6google8protobuf8internal14WireFormatLite10UInt32SizeERKNS0_13RepeatedFieldIjEE(ptr noundef nonnull align 8 dereferenceable(16) %i.p)
  %i.r = load i32, ptr %i.p, align 8, !tbaa !229
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.u = tail call noundef i64 @_ZN6google8protobuf8internal14WireFormatLite10UInt32SizeERKNS0_13RepeatedFieldIjEE(ptr noundef nonnull align 8 dereferenceable(16) %i.t)
  %i.v = load i32, ptr %i.t, align 8, !tbaa !229
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load i32, ptr %i.x, align 8, !tbaa !221  ; 2 uses
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = add i64 %i.i, %.0.lcssa
  %i.ab = add i64 %i.aa, %i.k
  %i.ac = add i64 %i.ab, %i.m
  %i.ad = add i64 %i.ac, %i.o
  %i.ae = add i64 %i.ad, %i.q
  %i.af = add i64 %i.ae, %i.s
  %i.ag = add i64 %i.af, %i.u
  %i.ah = add i64 %i.ag, %i.w
  %i.ai = add i64 %i.ah, %i.z                     ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !220 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %spec.select.i.i26 = select i1 %.not.i.i25, ptr null, ptr %i.al ; 2 uses
  %.idx48 = shl nsw i64 %i.z, 3
  %i.am = getelementptr inbounds i8, ptr %spec.select.i.i26, i64 %.idx48
  %.not3741 = icmp eq i32 %i.y, 0
  br i1 %.not3741, label %._crit_edge46, label %.lr.ph45

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.040 = phi i64 [ %i.ay, %.lr.ph ], [ %i.c, %bb.a ]
  %.sroa.034.039 = phi ptr [ %i.az, %.lr.ph ], [ %spec.select.i.i, %bb.a ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.034.039, align 8, !tbaa !216
  %i.ao = tail call noundef i64 @_ZNK12opencv_caffe15FillerParameter12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(64) %i.an) ; 2 uses
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = or i32 %i.ap, 1
  %i.ar = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aq, i1 true)
  %i.as = xor i32 %i.ar, 31
  %i.at = mul nuw nsw i32 %i.as, 9
  %i.au = add nuw nsw i32 %i.at, 73
  %i.av = lshr i32 %i.au, 6
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = add i64 %i.ao, %.040
  %i.ay = add i64 %i.ax, %i.aw                    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.034.039, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.az, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge46:                                    ; preds = %_ZN6google8protobuf8internal14WireFormatLite11MessageSizeIN12opencv_caffe9BlobShapeEEEmRKT_.exit, %._crit_edge
  %.1.lcssa = phi i64 [ %i.ai, %._crit_edge ], [ %i.cb, %_ZN6google8protobuf8internal14WireFormatLite11MessageSizeIN12opencv_caffe9BlobShapeEEEmRKT_.exit ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bb = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.1.lcssa, ptr noundef nonnull %i.ba)
  ret i64 %i.bb

.lr.ph45:                                         ; preds = %._crit_edge, %_ZN6google8protobuf8internal14WireFormatLite11MessageSizeIN12opencv_caffe9BlobShapeEEEmRKT_.exit
  %.143 = phi i64 [ %i.cb, %_ZN6google8protobuf8internal14WireFormatLite11MessageSizeIN12opencv_caffe9BlobShapeEEEmRKT_.exit ], [ %i.ai, %._crit_edge ]
  %.sroa.030.042 = phi ptr [ %i.cc, %_ZN6google8protobuf8internal14WireFormatLite11MessageSizeIN12opencv_caffe9BlobShapeEEEmRKT_.exit ], [ %spec.select.i.i26, %._crit_edge ] ; 2 uses
  %i.bc = load ptr, ptr %.sroa.030.042, align 8, !tbaa !216 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = tail call noundef i64 @_ZN6google8protobuf8internal14WireFormatLite9Int64SizeERKNS0_13RepeatedFieldIlEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) ; 4 uses
  %.not.i.i29 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i29, label %_ZN6google8protobuf8internal14WireFormatLite11MessageSizeIN12opencv_caffe9BlobShapeEEEmRKT_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph45
  %i.bf = shl i64 %i.be, 32
  %sext.i.i = ashr exact i64 %i.bf, 32
  %i.bg = or i64 %sext.i.i, 1
  %i.bh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = xor i64 %i.bh, 63
  %i.bj = mul nuw nsw i64 %i.bi, 9
  %i.bk = add nuw nsw i64 %i.bj, 73
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = add nuw nsw i64 %i.bl, 1
  br label %_ZN6google8protobuf8internal14WireFormatLite11MessageSizeIN12opencv_caffe9BlobShapeEEEmRKT_.exit

_ZN6google8protobuf8internal14WireFormatLite11MessageSizeIN12opencv_caffe9BlobShapeEEEmRKT_.exit: ; preds = %.lr.ph45, %bb.b
  %.0.i.i = phi i64 [ %i.bm, %bb.b ], [ 0, %.lr.ph45 ]
  %i.bn = trunc i64 %i.be to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store atomic i32 %i.bn, ptr %i.bo monotonic, align 4
  %i.bp = add i64 %.0.i.i, %i.be
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 36
  %i.br = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, i64 noundef %i.bp, ptr noundef nonnull %i.bq) ; 2 uses
  %i.bs = trunc i64 %i.br to i32
  %i.bt = or i32 %i.bs, 1
  %i.bu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bt, i1 true)
  %i.bv = xor i32 %i.bu, 31
  %i.bw = mul nuw nsw i32 %i.bv, 9
  %i.bx = add nuw nsw i32 %i.bw, 73
  %i.by = lshr i32 %i.bx, 6
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = add i64 %i.br, %.143
  %i.cb = add i64 %i.ca, %i.bz                    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.030.042, i64 8 ; 2 uses
  %.not37 = icmp eq ptr %i.cc, %i.am
  br i1 %.not37, label %._crit_edge46, label %.lr.ph45
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12opencv_caffe18DummyDataParameter9MergeImplEPN6google8protobuf7MessageERKS3_(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) #0 align 2 {
bb.a:
  tail call void @_ZN12opencv_caffe18DummyDataParameter9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZNK12opencv_caffe18DummyDataParameter12GetClassDataEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  ret ptr @_ZN12opencv_caffe18DummyDataParameter12_class_data_E
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12opencv_caffe18DummyDataParameter8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(136) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN12opencv_caffe18DummyDataParameter5ClearEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
  tail call void @_ZN12opencv_caffe18DummyDataParameter9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK12opencv_caffe18DummyDataParameter13IsInitializedEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN12opencv_caffe18DummyDataParameter12InternalSwapEPS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(136) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !175
  %i.d = load i64, ptr %i.b, align 8, !tbaa !175
  store i64 %i.d, ptr %i.a, align 8, !tbaa !175
  store i64 %i.c, ptr %i.b, align 8, !tbaa !175
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !226, !noalias !1069
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !227, !noalias !1069
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !226, !noalias !1070
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !227, !noalias !1070
  store ptr %i.n, ptr %i.f, align 8, !tbaa !227
  %2 = load <2 x i32>, ptr %i.k, align 8, !tbaa !201, !noalias !1070
  store ptr %i.m, ptr %i.h, align 8, !tbaa !226
  store ptr %i.j, ptr %i.e, align 8, !tbaa !227
  %i.o = load <2 x i32>, ptr %i.g, align 8, !tbaa !201, !noalias !1069
  store <2 x i32> %2, ptr %i.g, align 8, !tbaa !201
  store <2 x i32> %i.o, ptr %i.k, align 8, !tbaa !201
  store ptr %i.i, ptr %i.l, align 8, !tbaa !226
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.0.copyload.i.i.i = load i128, ptr %i.p, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.0.copyload.i.i.i8 = load i128, ptr %i.r, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i8, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.0.copyload.i.i.i9 = load i128, ptr %i.t, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i9, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.0.copyload.i.i.i10 = load i128, ptr %i.v, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i10, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !226, !noalias !1071
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !227, !noalias !1071
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !226, !noalias !1072
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !227, !noalias !1072
  store ptr %i.ag, ptr %i.y, align 8, !tbaa !227
  %3 = load <2 x i32>, ptr %i.ad, align 8, !tbaa !201, !noalias !1072
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !226
  store ptr %i.ac, ptr %i.x, align 8, !tbaa !227
  %i.ah = load <2 x i32>, ptr %i.z, align 8, !tbaa !201, !noalias !1071
  store <2 x i32> %3, ptr %i.z, align 8, !tbaa !201
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !201
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !226
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden { ptr, ptr } @_ZNK12opencv_caffe18DummyDataParameter11GetMetadataEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6google8protobuf8internal17AssignDescriptorsEPFPKNS1_15DescriptorTableEvEPSt9once_flagRKNS0_8MetadataE(ptr noundef nonnull @_Z46descriptor_table_opencv_2dcaffe_2eproto_getterv, ptr noundef nonnull @_ZL44descriptor_table_opencv_2dcaffe_2eproto_once, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL42file_level_metadata_opencv_2dcaffe_2eproto, i64 480))
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN12opencv_caffe16EltwiseParameterC2EPN6google8protobuf5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 45)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !145
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN12opencv_caffe16EltwiseParameterE, i64 16), ptr %0, align 8, !tbaa !147
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.ptr, i8 0, i64 16, i1 false)
  store ptr %1, ptr %i.e, align 8, !tbaa !194
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.f, align 8, !tbaa !504
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.g, align 4, !tbaa !505
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12opencv_caffe16EltwiseParameterC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 40)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !145
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN12opencv_caffe16EltwiseParameterE, i64 16), ptr %0, align 8, !tbaa !147
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !171
  store i32 %i.d, ptr %i.b, align 8, !tbaa !171
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  %i.h = load i32, ptr %i.g, align 8, !tbaa !195  ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %.noexc, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i32 noundef %i.h)
          to label %.noexc11 unwind label %bb.c

.noexc11:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.g, align 8, !tbaa !195
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !194
  %i.l = load i32, ptr %i.f, align 8, !tbaa !195
  %i.m = add nsw i32 %i.l, %i.j
  store i32 %i.m, ptr %i.f, align 8, !tbaa !195
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !194
  %i.p = load i32, ptr %i.g, align 8, !tbaa !195
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.k, ptr nonnull align 4 %i.o, i64 %i.r, i1 false)
  br label %.noexc

.noexc:                                           ; preds = %bb.a, %.noexc11
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !145  ; 2 uses
  %i.u = trunc i64 %i.t to i1
  br i1 %i.u, label %.noexc8, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

.noexc8:                                          ; preds = %.noexc
  %i.v = and i64 %i.t, -4
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit unwind label %bb.d

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %.noexc, %.noexc8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.y, ptr noundef nonnull align 8 dereferenceable(5) %i.z, i64 5, i1 false)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %.noexc8
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6google8protobuf13RepeatedFieldIfED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.f) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.d ], [ %i.aa, %bb.c ]
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12opencv_caffe16EltwiseParameterD2Ev(ptr noundef nonnull align 8 dead_on_return(45) dereferenceable(48) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !145  ; 2 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit, !prof !154

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.a
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !157
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit

bb.b:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit unwind label %bb.f

_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit: ; preds = %bb.a, %bb.b, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6google8protobuf13RepeatedFieldIfED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.g) #22
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN6google8protobuf11MessageLiteE, i64 16), ptr %0, align 8, !tbaa !147
  %i.h = load i64, ptr %i.a, align 8, !tbaa !145  ; 3 uses
  %i.i = and i64 %i.h, 2
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit
  %i.j = trunc i64 %i.h to i1
  %i.k = and i64 %i.h, -4
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  br i1 %i.j, label %bb.d, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, !prof !154

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !157
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.m, %bb.d ], [ %i.l, %bb.c ] ; 3 uses
  %i.n = icmp eq ptr %.0.i.i.i, null
  br i1 %i.n, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i
  tail call void @_ZN6google8protobuf8internal15ThreadSafeArenaD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.0.i.i.i) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %.0.i.i.i, i64 noundef 32) #23
  br label %_ZN6google8protobuf11MessageLiteD2Ev.exit

_ZN6google8protobuf11MessageLiteD2Ev.exit:        ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit, %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, %bb.e
  ret void

bb.f:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12opencv_caffe16EltwiseParameterD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !145  ; 2 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i, !prof !154

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i: ; preds = %bb.a
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !157
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.b, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i

bb.b:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i unwind label %bb.f

_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i: ; preds = %bb.b, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6google8protobuf13RepeatedFieldIfED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.g) #22
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN6google8protobuf11MessageLiteE, i64 16), ptr %0, align 8, !tbaa !147
  %i.h = load i64, ptr %i.a, align 8, !tbaa !145  ; 3 uses
  %i.i = and i64 %i.h, 2
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %_ZN12opencv_caffe16EltwiseParameterD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i
  %i.j = trunc i64 %i.h to i1
  %i.k = and i64 %i.h, -4
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  br i1 %i.j, label %bb.d, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i.i, !prof !154

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !157
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i.i
end_hunk_3
begin_hunk_4_@_ZN12opencv_caffe16V0LayerParameter9MergeFromERKS0_:bb.a
  store i32 %i.kh, ptr %i.ki, align 8, !tbaa !727
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.kj = and i32 %i.bc, 67108864
  %.not114 = icmp eq i32 %i.kj, 0
  br i1 %.not114, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !728
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 220
  store float %i.kl, ptr %i.km, align 4, !tbaa !728
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.kn = and i32 %i.bc, 134217728
  %.not115 = icmp eq i32 %i.kn, 0
  br i1 %.not115, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !729
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 %i.kp, ptr %i.kq, align 8, !tbaa !729
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.kr = and i32 %i.bc, 268435456
  %.not116 = icmp eq i32 %i.kr, 0
  br i1 %.not116, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !746
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 228
  store float %i.kt, ptr %i.ku, align 4, !tbaa !746
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.kv = and i32 %i.bc, 536870912
  %.not117 = icmp eq i32 %i.kv, 0
  br i1 %.not117, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.kx = load float, ptr %i.kw, align 8, !tbaa !747
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 232
  store float %i.kx, ptr %i.ky, align 8, !tbaa !747
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.kz = and i32 %i.bc, 1073741824
  %.not118 = icmp eq i32 %i.kz, 0
  br i1 %.not118, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.lb = load float, ptr %i.la, align 4, !tbaa !748
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 236
  store float %i.lb, ptr %i.lc, align 4, !tbaa !748
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.not119 = icmp sgt i32 %i.bc, -1
  br i1 %.not119, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.le = load float, ptr %i.ld, align 8, !tbaa !749
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 240
  store float %i.le, ptr %i.lf, align 8, !tbaa !749
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !201
  %i.li = or i32 %i.lh, %i.bc
  store i32 %i.li, ptr %i.lg, align 8, !tbaa !201
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.bs
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !201 ; 5 uses
  %i.ll = and i32 %i.lk, 7
  %.not120 = icmp eq i32 %i.ll, 0
  br i1 %.not120, label %bb.cs, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lm = and i32 %i.lk, 1
  %.not121 = icmp eq i32 %i.lm, 0
  br i1 %.not121, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 244
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !750
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 244
  store float %i.lo, ptr %i.lp, align 4, !tbaa !750
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.lq = and i32 %i.lk, 2
  %.not122 = icmp eq i32 %i.lq, 0
  br i1 %.not122, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ls = load float, ptr %i.lr, align 8, !tbaa !751
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 248
  store float %i.ls, ptr %i.lt, align 8, !tbaa !751
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.lu = and i32 %i.lk, 4
  %.not123 = icmp eq i32 %i.lu, 0
  br i1 %.not123, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !730
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 252
  store float %i.lw, ptr %i.lx, align 4, !tbaa !730
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !201
  %i.ma = or i32 %i.lz, %i.lk
  store i32 %i.ma, ptr %i.ly, align 4, !tbaa !201
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.ck
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !145 ; 2 uses
  %i.md = trunc i64 %i.mc to i1
  br i1 %i.md, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.cs
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mf = and i64 %i.mc, -4
  %i.mg = inttoptr i64 %i.mf to ptr
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.me, ptr noundef nonnull align 8 dereferenceable(24) %i.mh)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.cs, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12opencv_caffe16V1LayerParameter8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(504) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN12opencv_caffe16V1LayerParameter5ClearEv(ptr noundef nonnull align 8 dereferenceable(504) %0)
  tail call void @_ZN12opencv_caffe16V1LayerParameter9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(504) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK12opencv_caffe16V1LayerParameter13IsInitializedEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN12opencv_caffe16V1LayerParameter12InternalSwapEPS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(504) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !145
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !145
  store i64 %i.d, ptr %i.a, align 8, !tbaa !175
  store i64 %i.b, ptr %i.c, align 8, !tbaa !175
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !201
  %i.h = load i32, ptr %i.f, align 8, !tbaa !201
  store i32 %i.h, ptr %i.e, align 8, !tbaa !201
  store i32 %i.g, ptr %i.f, align 8, !tbaa !201
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !201
  %i.l = load i32, ptr %i.j, align 4, !tbaa !201
  store i32 %i.l, ptr %i.i, align 4, !tbaa !201
  store i32 %i.k, ptr %i.j, align 4, !tbaa !201
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !227, !noalias !1174
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !227, !noalias !1175
  store ptr %i.t, ptr %i.n, align 8, !tbaa !227
  %2 = load <2 x i32>, ptr %i.r, align 8, !tbaa !201, !noalias !1175
  store ptr %i.q, ptr %i.m, align 8, !tbaa !227
  %i.u = load <2 x i32>, ptr %i.o, align 8, !tbaa !201, !noalias !1174
  store <2 x i32> %2, ptr %i.o, align 8, !tbaa !201
  store <2 x i32> %i.u, ptr %i.r, align 8, !tbaa !201
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.s, align 8, !tbaa !216, !noalias !241
  %3 = load <2 x i32>, ptr %i.x, align 8, !tbaa !201, !noalias !1176
  %4 = load <2 x ptr>, ptr %i.p, align 8, !tbaa !216, !noalias !241
  store <2 x ptr> %i.z, ptr %i.p, align 8, !tbaa !216
  store <2 x ptr> %4, ptr %i.s, align 8, !tbaa !216
  %i.aa = load <2 x i32>, ptr %i.v, align 8, !tbaa !201, !noalias !1177
  store <2 x i32> %3, ptr %i.v, align 8, !tbaa !201
  store <2 x i32> %i.aa, ptr %i.x, align 8, !tbaa !201
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.af = load <2 x ptr>, ptr %i.y, align 8, !tbaa !216, !noalias !241
  %5 = load <2 x i32>, ptr %i.ad, align 8, !tbaa !201, !noalias !1178
  %i.ag = load <2 x ptr>, ptr %i.w, align 8, !tbaa !216, !noalias !241
  store <2 x ptr> %i.af, ptr %i.w, align 8, !tbaa !216
  store <2 x ptr> %i.ag, ptr %i.y, align 8, !tbaa !216
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !226, !noalias !1179
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !226, !noalias !1178
  store ptr %i.ai, ptr %i.ac, align 8, !tbaa !226
  %i.aj = load <2 x i32>, ptr %i.ab, align 8, !tbaa !201, !noalias !1179
  store <2 x i32> %5, ptr %i.ab, align 8, !tbaa !201
  store <2 x i32> %i.aj, ptr %i.ad, align 8, !tbaa !201
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !226
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %.0.copyload.i.i.i = load i128, ptr %i.ak, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %.0.copyload.i.i.i21 = load i128, ptr %i.am, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i21, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !227, !noalias !1180
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !227, !noalias !1181
  store ptr %i.av, ptr %i.ap, align 8, !tbaa !227
  %6 = load <2 x i32>, ptr %i.at, align 8, !tbaa !201, !noalias !1181
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !227
  %i.aw = load <2 x i32>, ptr %i.aq, align 8, !tbaa !201, !noalias !1180
  store <2 x i32> %6, ptr %i.aq, align 8, !tbaa !201
  store <2 x i32> %i.aw, ptr %i.at, align 8, !tbaa !201
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bb = load <2 x ptr>, ptr %i.au, align 8, !tbaa !216, !noalias !241
  %7 = load <2 x i32>, ptr %i.az, align 8, !tbaa !201, !noalias !1182
  %i.bc = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !216, !noalias !241
  store <2 x ptr> %i.bb, ptr %i.ar, align 8, !tbaa !216
  store <2 x ptr> %i.bc, ptr %i.au, align 8, !tbaa !216
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !226, !noalias !1183
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !226, !noalias !1182
  store ptr %i.be, ptr %i.ay, align 8, !tbaa !226
  %i.bf = load <2 x i32>, ptr %i.ax, align 8, !tbaa !201, !noalias !1183
  store <2 x i32> %7, ptr %i.ax, align 8, !tbaa !201
  store <2 x i32> %i.bf, ptr %i.az, align 8, !tbaa !201
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !226
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %.0.copyload.i.i.i22 = load i128, ptr %i.bg, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i22, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !226, !noalias !1184
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !227, !noalias !1184
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !226, !noalias !1185
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !227, !noalias !1185
  store ptr %i.br, ptr %i.bj, align 8, !tbaa !227
  %8 = load <2 x i32>, ptr %i.bo, align 8, !tbaa !201, !noalias !1185
  store ptr %i.bq, ptr %i.bl, align 8, !tbaa !226
  store ptr %i.bn, ptr %i.bi, align 8, !tbaa !227
  %i.bs = load <2 x i32>, ptr %i.bk, align 8, !tbaa !201, !noalias !1184
  store <2 x i32> %8, ptr %i.bk, align 8, !tbaa !201
  store <2 x i32> %i.bs, ptr %i.bo, align 8, !tbaa !201
  store ptr %i.bm, ptr %i.bp, align 8, !tbaa !226
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %.0.copyload.i.i.i23 = load i128, ptr %i.bt, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i23, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bw, align 8, !tbaa !216
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !216
  store i64 %i.bx, ptr %i.bw, align 8, !tbaa !216
  store ptr %.sroa.0.0.copyload.i, ptr %i.bv, align 8, !tbaa !216
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %.0.copyload.i.i = load i128, ptr %i.by, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false)
  store i128 %.0.copyload.i.i, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %.0.copyload.i.i.i24 = load i128, ptr %i.ca, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i24, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %.0.copyload.i.i.i.i = load i128, ptr %i.cc, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i128, ptr %i.ce, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i128, ptr %i.cg, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i = load i128, ptr %i.ci, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i = load i128, ptr %i.ck, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i128, ptr %i.cm, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i.i, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.co, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.cq, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.cs, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.cu, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.cw, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.cy, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.da, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %i.db, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dc, align 8
  %i.de = load i64, ptr %i.dd, align 8
  store i64 %i.de, ptr %i.dc, align 8
  store i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.df, align 8
  %i.dh = load i32, ptr %i.dg, align 8
  store i32 %i.dh, ptr %i.df, align 8
  store i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.dg, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden { ptr, ptr } @_ZNK12opencv_caffe16V1LayerParameter11GetMetadataEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6google8protobuf8internal17AssignDescriptorsEPFPKNS1_15DescriptorTableEvEPSt9once_flagRKNS0_8MetadataE(ptr noundef nonnull @_Z46descriptor_table_opencv_2dcaffe_2eproto_getterv, ptr noundef nonnull @_ZL44descriptor_table_opencv_2dcaffe_2eproto_once, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL42file_level_metadata_opencv_2dcaffe_2eproto, i64 1024))
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(64) ptr @_ZN12opencv_caffe16V0LayerParameter9_Internal13weight_fillerEPKS0_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !721
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(64) ptr @_ZN12opencv_caffe16V0LayerParameter9_Internal11bias_fillerEPKS0_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !722
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN12opencv_caffe16V0LayerParameter9_Internal17hdf5_output_paramEPKS0_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !723
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN12opencv_caffe16V0LayerParameterC2EPN6google8protobuf5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(256) initializes((0, 28), (32, 209), (212, 256)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !145
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN12opencv_caffe16V0LayerParameterE, i64 16), ptr %0, align 8, !tbaa !147
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.f, align 8, !tbaa !153
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.g, align 8, !tbaa !219
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.i, align 8, !tbaa !194
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.j, align 8, !tbaa !195
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.k, align 4, !tbaa !196
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %1, ptr %i.l, align 8, !tbaa !194
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  store <4 x ptr> <ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E>, ptr %i.m, align 8, !tbaa !200
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 204
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %i.n, i8 0, i64 84, i1 false)
  store i32 1, ptr %i.o, align 4, !tbaa !724
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 1, ptr %i.p, align 8, !tbaa !725
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 1, ptr %i.q, align 4, !tbaa !726
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 1, ptr %i.r, align 8, !tbaa !727
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 220
  store float 5.000000e-01, ptr %i.s, align 4, !tbaa !728
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 5, ptr %i.t, align 8, !tbaa !729
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 228
  store <4 x float> <float 1.000000e+00, float 7.500000e-01, float 1.000000e+00, float 1.000000e+00>, ptr %i.u, align 4, !tbaa !213
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 244
  store <2 x float> splat (float 5.000000e-01), ptr %i.v, align 4, !tbaa !213
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 252
  store float 2.500000e-01, ptr %i.w, align 4, !tbaa !730
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12opencv_caffe16V0LayerParameterC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(256) initializes((0, 28), (32, 56)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 0, ptr %i.a, align 8, !tbaa !145
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN12opencv_caffe16V0LayerParameterE, i64 16), ptr %0, align 8, !tbaa !147
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !171
  store i64 %i.d, ptr %i.b, align 8, !tbaa !171
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.e, align 8, !tbaa !153
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !221  ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
end_hunk_4
begin_hunk_5_@_ZNK12opencv_caffe16V0LayerParameter12ByteSizeLongEv:bb.a
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !724
  %i.me = or i32 %i.md, 1
  %i.mf = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.me, i1 true)
  %i.mg = xor i32 %i.mf, 31
  %i.mh = mul nuw nsw i32 %i.mg, 9
  %i.mi = add nuw nsw i32 %i.mh, 73
  %i.mj = lshr i32 %i.mi, 6
  %narrow145 = add nuw nsw i32 %i.mj, 2
  %i.mk = zext nneg i32 %narrow145 to i64
  %i.ml = add i64 %.22, %i.mk
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.23 = phi i64 [ %i.ml, %bb.au ], [ %.22, %bb.at ]
  %i.mm = lshr i32 %i.u, 22
  %i.mn = and i32 %i.mm, 2
  %i.mo = zext nneg i32 %i.mn to i64
  %spec.select129 = add i64 %.23, %i.mo
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ai
  %.24 = phi i64 [ %.16, %bb.ai ], [ %spec.select129, %bb.av ] ; 3 uses
  %.not115 = icmp ult i32 %i.u, 16777216
  br i1 %.not115, label %bb.be, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.mp = and i32 %i.u, 16777216
  %.not116 = icmp eq i32 %i.mp, 0
  br i1 %.not116, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !726
  %i.ms = or i32 %i.mr, 1
  %i.mt = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ms, i1 true)
  %i.mu = xor i32 %i.mt, 31
  %i.mv = mul nuw nsw i32 %i.mu, 9
  %i.mw = add nuw nsw i32 %i.mv, 137
  %i.mx = lshr i32 %i.mw, 6
  %i.my = zext nneg i32 %i.mx to i64
  %i.mz = add i64 %.24, %i.my
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.25 = phi i64 [ %i.mz, %bb.ay ], [ %.24, %bb.ax ] ; 2 uses
  %i.na = and i32 %i.u, 33554432
  %.not117 = icmp eq i32 %i.na, 0
  br i1 %.not117, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !727
  %i.nd = or i32 %i.nc, 1
  %i.ne = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.nd, i1 true)
  %i.nf = xor i32 %i.ne, 31
  %i.ng = mul nuw nsw i32 %i.nf, 9
  %i.nh = add nuw nsw i32 %i.ng, 137
  %i.ni = lshr i32 %i.nh, 6
  %i.nj = zext nneg i32 %i.ni to i64
  %i.nk = add i64 %.25, %i.nj
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.26 = phi i64 [ %i.nk, %bb.ba ], [ %.25, %bb.az ] ; 2 uses
  %i.nl = and i32 %i.u, 67108864
  %.not118 = icmp eq i32 %i.nl, 0
  %i.nm = add i64 %.26, 5
  %spec.select130 = select i1 %.not118, i64 %.26, i64 %i.nm ; 2 uses
  %i.nn = and i32 %i.u, 134217728
  %.not119 = icmp eq i32 %i.nn, 0
  br i1 %.not119, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.np = load i32, ptr %i.no, align 8, !tbaa !729
  %i.nq = or i32 %i.np, 1
  %i.nr = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.nq, i1 true)
  %i.ns = xor i32 %i.nr, 31
  %i.nt = mul nuw nsw i32 %i.ns, 9
  %i.nu = add nuw nsw i32 %i.nt, 137
  %i.nv = lshr i32 %i.nu, 6
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = add i64 %spec.select130, %i.nw
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.28 = phi i64 [ %i.nx, %bb.bc ], [ %spec.select130, %bb.bb ] ; 2 uses
  %i.ny = and i32 %i.u, 268435456
  %.not120 = icmp eq i32 %i.ny, 0
  %i.nz = add i64 %.28, 5
  %spec.select131 = select i1 %.not120, i64 %.28, i64 %i.nz ; 2 uses
  %i.oa = and i32 %i.u, 536870912
  %.not121 = icmp eq i32 %i.oa, 0
  %i.ob = add i64 %spec.select131, 5
  %.30 = select i1 %.not121, i64 %spec.select131, i64 %i.ob ; 2 uses
  %i.oc = and i32 %i.u, 1073741824
  %.not122 = icmp eq i32 %i.oc, 0
  %i.od = add i64 %.30, 6
  %.31 = select i1 %.not122, i64 %.30, i64 %i.od  ; 2 uses
  %i.oe = add i64 %.31, 6
  %.not123146 = icmp slt i32 %i.u, 0
  %spec.select133 = select i1 %.not123146, i64 %i.oe, i64 %.31
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.aw
  %.32 = phi i64 [ %.24, %bb.aw ], [ %spec.select133, %bb.bd ] ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.og = load i32, ptr %i.of, align 4, !tbaa !201 ; 4 uses
  %i.oh = and i32 %i.og, 7
  %.not124 = icmp eq i32 %i.oh, 0
  br i1 %.not124, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.oi = and i32 %i.og, 1
  %.not125 = icmp eq i32 %i.oi, 0
  %i.oj = add i64 %.32, 6
  %spec.select132 = select i1 %.not125, i64 %.32, i64 %i.oj ; 2 uses
  %i.ok = and i32 %i.og, 2
  %.not126 = icmp eq i32 %i.ok, 0
  %i.ol = add i64 %spec.select132, 6
  %.34 = select i1 %.not126, i64 %spec.select132, i64 %i.ol ; 2 uses
  %i.om = and i32 %i.og, 4
  %.not127 = icmp eq i32 %i.om, 0
  %i.on = add i64 %.34, 6
  %spec.select134 = select i1 %.not127, i64 %.34, i64 %i.on
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.35 = phi i64 [ %.32, %bb.be ], [ %spec.select134, %bb.bf ]
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.op = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.35, ptr noundef nonnull %i.oo)
  ret i64 %i.op
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12opencv_caffe16V0LayerParameter9MergeImplEPN6google8protobuf7MessageERKS3_(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) #0 align 2 {
bb.a:
  tail call void @_ZN12opencv_caffe16V0LayerParameter9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZNK12opencv_caffe16V0LayerParameter12GetClassDataEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  ret ptr @_ZN12opencv_caffe16V0LayerParameter12_class_data_E
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12opencv_caffe16V0LayerParameter8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(256) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN12opencv_caffe16V0LayerParameter5ClearEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  tail call void @_ZN12opencv_caffe16V0LayerParameter9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK12opencv_caffe16V0LayerParameter13IsInitializedEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN12opencv_caffe16V0LayerParameter12InternalSwapEPS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(256) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !145
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !145
  store i64 %i.d, ptr %i.a, align 8, !tbaa !175
  store i64 %i.b, ptr %i.c, align 8, !tbaa !175
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !201
  %i.h = load i32, ptr %i.f, align 8, !tbaa !201
  store i32 %i.h, ptr %i.e, align 8, !tbaa !201
  store i32 %i.g, ptr %i.f, align 8, !tbaa !201
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !201
  %i.l = load i32, ptr %i.j, align 4, !tbaa !201
  store i32 %i.l, ptr %i.i, align 4, !tbaa !201
  store i32 %i.k, ptr %i.j, align 4, !tbaa !201
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !226, !noalias !1199
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !227, !noalias !1199
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !226, !noalias !1200
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !227, !noalias !1200
  store ptr %i.v, ptr %i.n, align 8, !tbaa !227
  %2 = load <2 x i32>, ptr %i.s, align 8, !tbaa !201, !noalias !1200
  store ptr %i.u, ptr %i.p, align 8, !tbaa !226
  store ptr %i.r, ptr %i.m, align 8, !tbaa !227
  %i.w = load <2 x i32>, ptr %i.o, align 8, !tbaa !201, !noalias !1199
  store <2 x i32> %2, ptr %i.o, align 8, !tbaa !201
  store <2 x i32> %i.w, ptr %i.s, align 8, !tbaa !201
  store ptr %i.q, ptr %i.t, align 8, !tbaa !226
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.0.copyload.i.i.i = load i128, ptr %i.x, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.0.copyload.i.i.i39 = load i128, ptr %i.z, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i39, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ac, align 8, !tbaa !216
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !216
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !216
  store ptr %.sroa.0.0.copyload.i, ptr %i.ab, align 8, !tbaa !216
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %.sroa.0.0.copyload.i40 = load ptr, ptr %i.af, align 8, !tbaa !216
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !216
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !216
  store ptr %.sroa.0.0.copyload.i40, ptr %i.ae, align 8, !tbaa !216
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %.sroa.0.0.copyload.i41 = load ptr, ptr %i.ai, align 8, !tbaa !216
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !216
  store i64 %i.aj, ptr %i.ai, align 8, !tbaa !216
  store ptr %.sroa.0.0.copyload.i41, ptr %i.ah, align 8, !tbaa !216
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %.sroa.0.0.copyload.i42 = load ptr, ptr %i.al, align 8, !tbaa !216
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !216
  store i64 %i.am, ptr %i.al, align 8, !tbaa !216
  store ptr %.sroa.0.0.copyload.i42, ptr %i.ak, align 8, !tbaa !216
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %.sroa.0.0.copyload.i43 = load ptr, ptr %i.ao, align 8, !tbaa !216
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !216
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !216
  store ptr %.sroa.0.0.copyload.i43, ptr %i.an, align 8, !tbaa !216
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %.0.copyload.i.i = load i128, ptr %i.aq, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false)
  store i128 %.0.copyload.i.i, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %.0.copyload.i.i.i44 = load i128, ptr %i.as, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i44, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %.0.copyload.i.i.i.i = load i128, ptr %i.au, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i128, ptr %i.aw, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ay, align 8
  %i.ba = load i64, ptr %i.az, align 8
  store i64 %i.ba, ptr %i.ay, align 8
  store i64 %.0.copyload.i.i.i.i.i.i, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.bb, align 8
  %i.bd = load i32, ptr %i.bc, align 8
  store i32 %i.bd, ptr %i.bb, align 8
  store i32 %.0.copyload.i.i.i.i.i.i.i, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 204 ; 2 uses
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !201
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !201
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !201
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !201
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.bk = load i8, ptr %i.bi, align 8, !tbaa !249, !range !240, !noundef !241
  %i.bl = load i8, ptr %i.bj, align 8, !tbaa !249, !range !240, !noundef !241
  store i8 %i.bl, ptr %i.bi, align 8, !tbaa !249
  store i8 %i.bk, ptr %i.bj, align 8, !tbaa !249
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 212 ; 2 uses
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !201
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !201
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !201
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !201
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.bs = load i32, ptr %i.bq, align 8, !tbaa !201
  %i.bt = load i32, ptr %i.br, align 8, !tbaa !201
  store i32 %i.bt, ptr %i.bq, align 8, !tbaa !201
  store i32 %i.bs, ptr %i.br, align 8, !tbaa !201
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 220 ; 2 uses
  %i.bw = load float, ptr %i.bu, align 4, !tbaa !213
  %i.bx = load float, ptr %i.bv, align 4, !tbaa !213
  store float %i.bx, ptr %i.bu, align 4, !tbaa !213
  store float %i.bw, ptr %i.bv, align 4, !tbaa !213
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 8, !tbaa !201
  %i.cb = load i32, ptr %i.bz, align 8, !tbaa !201
  store i32 %i.cb, ptr %i.by, align 8, !tbaa !201
  store i32 %i.ca, ptr %i.bz, align 8, !tbaa !201
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 228 ; 2 uses
  %i.ce = load float, ptr %i.cc, align 4, !tbaa !213
  %i.cf = load float, ptr %i.cd, align 4, !tbaa !213
  store float %i.cf, ptr %i.cc, align 4, !tbaa !213
  store float %i.ce, ptr %i.cd, align 4, !tbaa !213
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.ci = load float, ptr %i.cg, align 8, !tbaa !213
  %i.cj = load float, ptr %i.ch, align 8, !tbaa !213
  store float %i.cj, ptr %i.cg, align 8, !tbaa !213
  store float %i.ci, ptr %i.ch, align 8, !tbaa !213
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 236 ; 2 uses
  %i.cm = load float, ptr %i.ck, align 4, !tbaa !213
  %i.cn = load float, ptr %i.cl, align 4, !tbaa !213
  store float %i.cn, ptr %i.ck, align 4, !tbaa !213
  store float %i.cm, ptr %i.cl, align 4, !tbaa !213
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.cq = load float, ptr %i.co, align 8, !tbaa !213
  %i.cr = load float, ptr %i.cp, align 8, !tbaa !213
  store float %i.cr, ptr %i.co, align 8, !tbaa !213
  store float %i.cq, ptr %i.cp, align 8, !tbaa !213
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 244 ; 2 uses
  %i.cu = load float, ptr %i.cs, align 4, !tbaa !213
  %i.cv = load float, ptr %i.ct, align 4, !tbaa !213
  store float %i.cv, ptr %i.cs, align 4, !tbaa !213
  store float %i.cu, ptr %i.ct, align 4, !tbaa !213
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.cy = load float, ptr %i.cw, align 8, !tbaa !213
  %i.cz = load float, ptr %i.cx, align 8, !tbaa !213
  store float %i.cz, ptr %i.cw, align 8, !tbaa !213
  store float %i.cy, ptr %i.cx, align 8, !tbaa !213
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 252 ; 2 uses
  %i.dc = load float, ptr %i.da, align 4, !tbaa !213
  %i.dd = load float, ptr %i.db, align 4, !tbaa !213
  store float %i.dd, ptr %i.da, align 4, !tbaa !213
  store float %i.dc, ptr %i.db, align 4, !tbaa !213
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden { ptr, ptr } @_ZNK12opencv_caffe16V0LayerParameter11GetMetadataEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6google8protobuf8internal17AssignDescriptorsEPFPKNS1_15DescriptorTableEvEPSt9once_flagRKNS0_8MetadataE(ptr noundef nonnull @_Z46descriptor_table_opencv_2dcaffe_2eproto_getterv, ptr noundef nonnull @_ZL44descriptor_table_opencv_2dcaffe_2eproto_once, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL42file_level_metadata_opencv_2dcaffe_2eproto, i64 1040))
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(64) ptr @_ZN12opencv_caffe14PReLUParameter9_Internal6fillerEPKS0_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !534
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN12opencv_caffe14PReLUParameterC2EPN6google8protobuf5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 33)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !145
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN12opencv_caffe14PReLUParameterE, i64 16), ptr %0, align 8, !tbaa !147
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.ptr, i8 0, i64 17, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12opencv_caffe14PReLUParameterC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !145
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN12opencv_caffe14PReLUParameterE, i64 16), ptr %0, align 8, !tbaa !147
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !171
  store i32 %i.d, ptr %i.b, align 8, !tbaa !171
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !153
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !145  ; 2 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %.noexc9, label %bb.a

end_hunk_5
