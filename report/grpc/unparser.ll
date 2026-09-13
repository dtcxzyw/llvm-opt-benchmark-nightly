Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/unparser?download=true
inline.NumInlined: 4983
inline.NumDeleted: 1990
begin_hunk_0_@_ZN6google8protobuf13json_internal23UnparseProto2Descriptor23FindAndAppendExtensionsERKNS0_7MessageERSt6vectorIPKNS0_15FieldDescriptorESaIS9_EE
define linkonce_odr hidden void @_ZN6google8protobuf13json_internal23UnparseProto2Descriptor23FindAndAppendExtensionsERKNS0_7MessageERSt6vectorIPKNS0_15FieldDescriptorESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.478", align 8   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = extractvalue { ptr, ptr } %i.a, 1
  invoke void @_ZNK6google8protobuf10Reflection10ListFieldsERKNS0_7MessageEPSt6vectorIPKNS0_15FieldDescriptorESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %2, align 8, !tbaa !164    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !164  ; 2 uses
  %.not17 = icmp eq ptr %i.c, %i.e
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit
  %.pre = load ptr, ptr %2, align 8, !tbaa !158
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.h = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.c, %bb.c ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !160
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #30
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit: ; preds = %._crit_edge, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.e:                                             ; preds = %bb.a, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.f:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit
  %.sroa.013.018 = phi ptr [ %i.c, %.lr.ph ], [ %i.ao, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.013.018, align 8, !tbaa !163 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1
  %i.r = and i8 %i.q, 8
  %.not16 = icmp eq i8 %i.r, 0
  br i1 %.not16, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !159  ; 4 uses
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !160
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.o, ptr %i.s, align 8, !tbaa !163
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.u, ptr %i.f, align 8, !tbaa !159
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit

bb.i:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %1, align 8, !tbaa !158    ; 4 uses
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.y = sub i64 %i.w, %i.x                       ; 5 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.j, label %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i8 = icmp ne i64 %i.ae, 0
  call void @llvm.assume(i1 %.not.i.i.i8)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #33
          to label %.noexc9 unwind label %.loopexit ; 4 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.y ; 2 uses
  store ptr %i.o, ptr %i.ah, align 8, !tbaa !163
  %i.ai = icmp sgt i64 %i.y, 0
  br i1 %i.ai, label %bb.k, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.k:                                             ; preds = %.noexc9
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.v, i64 %i.y, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.k, %.noexc9
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.not.i17.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !160
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.am) #30
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.ag, ptr %1, align 8, !tbaa !158
  store ptr %i.aj, ptr %i.f, align 8, !tbaa !159
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.an, ptr %i.g, align 8, !tbaa !160
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.h, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.013.018, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ao, %i.e
  br i1 %.not, label %._crit_edge.loopexit, label %bb.f

bb.m:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.e
  %.pn = phi { ptr, i32 } [ %i.n, %bb.e ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ap = load ptr, ptr %2, align 8, !tbaa !158   ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit11, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !160
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #30
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit11

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit11: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor12has_presenceEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #3

declare void @_ZNK6google8protobuf10Reflection10ListFieldsERKNS0_7MessageEPSt6vectorIPKNS0_15FieldDescriptorESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SX_T1_(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #20 {
bb.a:
  %.fr28 = freeze ptr %1                          ; 3 uses
  %.fr27 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr27 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr28 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SN_SX_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr27, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph46

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEESN_SN_SN_SX_.exit
  %i.h = icmp eq i64 %i.dc, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph46, !llvm.loop !765

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i26.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.ea, %bb.b ] ; 2 uses
  %storemerge24.lcssa = phi ptr [ %.fr28, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i26.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i26.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SX_SX_T1_T2_.exit.us.i.i.i
  %.09.us.i.i.i = phi i64 [ %i.ao, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SX_SX_T1_T2_.exit.us.i.i.i ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.09.us.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !163  ; 2 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SX_SX_T1_T2_.exit.us.i.i.i

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.035.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.09.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.035.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.y
  %.val.i.i.us.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !163
  %.val1.i.i.us.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !163
  %i.aa = getelementptr i8, ptr %.val.i.i.us.i.i.i, i64 4
  %.val.val.i.i.us.i.i.i = load i32, ptr %i.aa, align 4, !tbaa !165
  %i.ab = getelementptr i8, ptr %.val1.i.i.us.i.i.i, i64 4
  %.val1.val.i.i.us.i.i.i = load i32, ptr %i.ab, align 4, !tbaa !165
  %i.ac = icmp slt i32 %.val.val.i.i.us.i.i.i, %.val1.val.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.ac, i64 %i.y, i64 %i.w ; 4 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.us.i.i.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !163
  %i.af = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.035.i.us.i.i.i
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !163
  %i.ag = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ag, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !766

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %i.ah = getelementptr i8, ptr %i.t, i64 4
  %.val.val.i24.i.us.i.i.i = load i32, ptr %i.ah, align 4, !tbaa !165
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i.us.i.i.i
  %.val.i.i.i.us.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !163 ; 2 uses
  %i.aj = getelementptr i8, ptr %.val.i.i.i.us.i.i.i, i64 4
  %.val.val.i.i.i.us.i.i.i = load i32, ptr %i.aj, align 4, !tbaa !165
  %i.ak = icmp slt i32 %.val.val.i.i.i.us.i.i.i, %.val.val.i24.i.us.i.i.i
  br i1 %i.ak, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SX_SX_T1_T2_.exit.us.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.us.i.i.i
  store ptr %.val.i.i.i.us.i.i.i, ptr %i.al, align 8, !tbaa !163
  %i.am = icmp sgt i64 %.0911.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.am, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SX_SX_T1_T2_.exit.us.i.i.i, !llvm.loop !767

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SX_SX_T1_T2_.exit.us.i.i.i: ; preds = %bb.d, %bb.c, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ], [ %.010.i.i.us.i.i.i, %bb.c ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.us.i.i.i
  store ptr %i.t, ptr %i.an, align 8, !tbaa !163
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.ao = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_RSX_.exit.i.i, label %.split.us.i.i.i, !llvm.loop !768

.split.i.i.i:                                     ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SX_SX_T1_T2_.exit.i.i.i, %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.bo, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SX_SX_T1_T2_.exit.i.i.i ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.09.i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !163 ; 2 uses
  %i.ar = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.ar, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.as = shl i64 %.035.i.i.i.i, 1                ; 2 uses
  %i.at = add i64 %i.as, 2                        ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.at
  %i.av = or disjoint i64 %i.as, 1                ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.av
  %.val.i.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !163
  %.val1.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !163
  %i.ax = getelementptr i8, ptr %.val.i.i.i.i.i, i64 4
  %.val.val.i.i.i.i.i = load i32, ptr %i.ax, align 4, !tbaa !165
  %i.ay = getelementptr i8, ptr %.val1.i.i.i.i.i, i64 4
  %.val1.val.i.i.i.i.i = load i32, ptr %i.ay, align 4, !tbaa !165
  %i.az = icmp slt i32 %.val.val.i.i.i.i.i, %.val1.val.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.az, i64 %i.av, i64 %i.at ; 4 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.i.i.i
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !163
  %i.bc = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.035.i.i.i.i
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !163
  %i.bd = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bd, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !766

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.be = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.be, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bf = load ptr, ptr %i.q, align 8, !tbaa !163
  store ptr %i.bf, ptr %i.r, align 8, !tbaa !163
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bg = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SX_SX_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.bh = getelementptr i8, ptr %i.aq, i64 4
  %.val.val.i24.i.i.i.i = load i32, ptr %i.bh, align 4, !tbaa !165
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.h ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %i.bi, align 8, !tbaa !163 ; 2 uses
  %i.bj = getelementptr i8, ptr %.val.i.i.i.i.i.i, i64 4
  %.val.val.i.i.i.i.i.i = load i32, ptr %i.bj, align 4, !tbaa !165
  %i.bk = icmp slt i32 %.val.val.i.i.i.i.i.i, %.val.val.i24.i.i.i.i
  br i1 %i.bk, label %bb.h, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SX_SX_T1_T2_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i.i
  store ptr %.val.i.i.i.i.i.i, ptr %i.bl, align 8, !tbaa !163
  %i.bm = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.bm, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SX_SX_T1_T2_.exit.i.i.i, !llvm.loop !767

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SX_SX_T1_T2_.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ %.010.i.i.i.i.i, %bb.g ], [ %.0911.i.i.i.i.i, %bb.h ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.aq, ptr %i.bn, align 8, !tbaa !163
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.bo = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_RSX_.exit.i.i, label %.split.i.i.i, !llvm.loop !768

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_RSX_.exit.i.i: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SX_SX_T1_T2_.exit.us.i.i.i, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SX_SX_T1_T2_.exit.i.i.i
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_RSX_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SN_RSX_.exit.i.i
  %.sroa.0.03.i.i = phi ptr [ %i.bp, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SN_RSX_.exit.i.i ], [ %storemerge24.lcssa, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_RSX_.exit.i.i ]
  %i.bp = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !163 ; 2 uses
  %i.br = load ptr, ptr %.fr27, align 8, !tbaa !163
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !163
  %i.bs = ptrtoint ptr %i.bp to i64
  %i.bt = sub i64 %i.bs, %i.a                     ; 3 uses
  %i.bu = ashr exact i64 %i.bt, 3                 ; 3 uses
  %i.bv = add nsw i64 %i.bu, -1
  %i.bw = lshr i64 %i.bv, 1
  %i.bx = icmp sgt i64 %i.bu, 2
  br i1 %i.bx, label %.lr.ph.i.i.i20.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i20.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i20.i
  %.035.i.i.i21.i = phi i64 [ %spec.select.i.i.i26.i, %.lr.ph.i.i.i20.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.by = shl i64 %.035.i.i.i21.i, 1              ; 2 uses
  %i.bz = add i64 %i.by, 2                        ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.bz
  %i.cb = or disjoint i64 %i.by, 1                ; 2 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.cb
  %.val.i.i.i.i22.i = load ptr, ptr %i.ca, align 8, !tbaa !163
  %.val1.i.i.i.i23.i = load ptr, ptr %i.cc, align 8, !tbaa !163
  %i.cd = getelementptr i8, ptr %.val.i.i.i.i22.i, i64 4
  %.val.val.i.i.i.i24.i = load i32, ptr %i.cd, align 4, !tbaa !165
  %i.ce = getelementptr i8, ptr %.val1.i.i.i.i23.i, i64 4
  %.val1.val.i.i.i.i25.i = load i32, ptr %i.ce, align 4, !tbaa !165
  %i.cf = icmp slt i32 %.val.val.i.i.i.i24.i, %.val1.val.i.i.i.i25.i
  %spec.select.i.i.i26.i = select i1 %i.cf, i64 %i.cb, i64 %i.bz ; 4 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.i.i26.i
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !163
  %i.ci = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.035.i.i.i21.i
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !163
  %i.cj = icmp slt i64 %spec.select.i.i.i26.i, %i.bw
  br i1 %i.cj, label %.lr.ph.i.i.i20.i, label %._crit_edge.i.i.i10.i, !llvm.loop !766

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i20.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i26.i, %.lr.ph.i.i.i20.i ] ; 5 uses
  %i.ck = and i64 %i.bt, 8
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.cm = add nsw i64 %i.bu, -2
  %i.cn = ashr exact i64 %i.cm, 1
  %i.co = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.cn
  br i1 %i.co, label %.thread.i.i.i, label %bb.j

.thread.i.i.i:                                    ; preds = %bb.i
  %i.cp = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.cq = or disjoint i64 %i.cp, 1                ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !163
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i11.i
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !163
  br label %.lr.ph.i.i.i.i13.i

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SN_RSX_.exit.i.i, label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %bb.j, %.thread.i.i.i
  %.1.i6.i.i.i = phi i64 [ %i.cq, %.thread.i.i.i ], [ %.0.lcssa.i.i.i11.i, %bb.j ]
  %i.cu = getelementptr i8, ptr %i.bq, i64 4
  %.val.val.i24.i.i.i14.i = load i32, ptr %i.cu, align 4, !tbaa !165
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i13.i
  %.010.i.i.i.i15.i = phi i64 [ %.1.i6.i.i.i, %.lr.ph.i.i.i.i13.i ], [ %.0911.i.i78.i.i.i, %bb.l ] ; 3 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i78.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i78.i.i.i
  %.val.i.i.i.i.i17.i = load ptr, ptr %i.cv, align 8, !tbaa !163 ; 2 uses
  %i.cw = getelementptr i8, ptr %.val.i.i.i.i.i17.i, i64 4
  %.val.val.i.i.i.i.i18.i = load i32, ptr %i.cw, align 4, !tbaa !165
  %i.cx = icmp slt i32 %.val.val.i.i.i.i.i18.i, %.val.val.i24.i.i.i14.i
  br i1 %i.cx, label %bb.l, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SN_RSX_.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.cy = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i15.i
  store ptr %.val.i.i.i.i.i17.i, ptr %i.cy, align 8, !tbaa !163
  %.not9.i.i.i = icmp eq i64 %.0911.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SN_RSX_.exit.i.i, label %bb.k, !llvm.loop !767

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SN_RSX_.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %.0.lcssa.i.i.i.i19.i = phi i64 [ 0, %bb.j ], [ %.010.i.i.i.i15.i, %bb.k ], [ 0, %bb.l ]
  %i.cz = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i19.i
  store ptr %i.bq, ptr %i.cz, align 8, !tbaa !163
  %i.da = icmp sgt i64 %i.bt, 8
  br i1 %i.da, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SN_SX_.exit, !llvm.loop !769

.lr.ph46:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2445 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %.fr28, %.lr.ph ] ; 3 uses
  %.02544 = phi i64 [ %i.dc, %bb.b ], [ %2, %.lr.ph ]
  %i.db = phi i64 [ %i.eb, %bb.b ], [ %i.d, %.lr.ph ]
  %i.dc = add nsw i64 %.02544, -1                 ; 3 uses
  %i.dd = lshr i64 %i.db, 1
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.dd ; 3 uses
  %i.df = getelementptr inbounds i8, ptr %storemerge2445, i64 -8 ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !163 ; 3 uses
  %.val1.i.i.i = load ptr, ptr %i.de, align 8, !tbaa !163 ; 3 uses
  %i.dg = getelementptr i8, ptr %.val.i.i.i, i64 4
  %.val.val.i.i.i = load i32, ptr %i.dg, align 4, !tbaa !165 ; 3 uses
  %i.dh = getelementptr i8, ptr %.val1.i.i.i, i64 4
  %.val1.val.i.i.i = load i32, ptr %i.dh, align 4, !tbaa !165 ; 3 uses
  %i.di = icmp slt i32 %.val.val.i.i.i, %.val1.val.i.i.i
  %.val1.i27.i.i = load ptr, ptr %i.df, align 8, !tbaa !163 ; 3 uses
  %i.dj = getelementptr i8, ptr %.val1.i27.i.i, i64 4
  %.val1.val.i29.i.i = load i32, ptr %i.dj, align 4, !tbaa !165 ; 4 uses
  br i1 %i.di, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph46
  %i.dk = icmp slt i32 %.val1.val.i.i.i, %.val1.val.i29.i.i
  br i1 %i.dk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dl = load ptr, ptr %.fr27, align 8, !tbaa !163
  store ptr %.val1.i.i.i, ptr %.fr27, align 8, !tbaa !163
  store ptr %i.dl, ptr %i.de, align 8, !tbaa !163
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SN_SN_SX_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.dm = icmp slt i32 %.val.val.i.i.i, %.val1.val.i29.i.i
  %i.dn = load ptr, ptr %.fr27, align 8, !tbaa !163 ; 2 uses
  br i1 %i.dm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %.val1.i27.i.i, ptr %.fr27, align 8, !tbaa !163
  store ptr %i.dn, ptr %i.df, align 8, !tbaa !163
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SN_SN_SX_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store ptr %.val.i.i.i, ptr %.fr27, align 8, !tbaa !163
  store ptr %i.dn, ptr %i.f, align 8, !tbaa !163
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SN_SN_SX_.exit.i.preheader

bb.r:                                             ; preds = %.lr.ph46
  %i.do = icmp slt i32 %.val.val.i.i.i, %.val1.val.i29.i.i
  br i1 %i.do, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dp = load ptr, ptr %.fr27, align 8, !tbaa !163
  store ptr %.val.i.i.i, ptr %.fr27, align 8, !tbaa !163
  store ptr %i.dp, ptr %i.f, align 8, !tbaa !163
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SN_SN_SX_.exit.i.preheader

bb.t:                                             ; preds = %bb.r
  %i.dq = icmp slt i32 %.val1.val.i.i.i, %.val1.val.i29.i.i
  %i.dr = load ptr, ptr %.fr27, align 8, !tbaa !163 ; 2 uses
  br i1 %i.dq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %.val1.i27.i.i, ptr %.fr27, align 8, !tbaa !163
  store ptr %i.dr, ptr %i.df, align 8, !tbaa !163
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SN_SN_SX_.exit.i.preheader

bb.v:                                             ; preds = %bb.t
  store ptr %.val1.i.i.i, ptr %.fr27, align 8, !tbaa !163
  store ptr %i.dr, ptr %i.de, align 8, !tbaa !163
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SN_SN_SX_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SN_SN_SX_.exit.i.preheader: ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SN_SN_SX_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SN_SN_SX_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SN_SN_SX_.exit.i.preheader, %bb.y
  %.sroa.014.0.i.i = phi ptr [ %i.dv, %bb.y ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SN_SN_SX_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.y ], [ %storemerge2445, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SN_SN_SX_.exit.i.preheader ]
  %.val1.i.i13.i = load ptr, ptr %.fr27, align 8, !tbaa !163
  %i.ds = getelementptr i8, ptr %.val1.i.i13.i, i64 4
  %.val1.val.i.i14.i = load i32, ptr %i.ds, align 4, !tbaa !165 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SN_SN_SX_.exit.i
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SN_SN_SX_.exit.i ], [ %i.dv, %bb.w ] ; 8 uses
  %.val.i.i15.i = load ptr, ptr %.sroa.014.1.i.i, align 8, !tbaa !163 ; 2 uses
  %i.dt = getelementptr i8, ptr %.val.i.i15.i, i64 4
  %.val.val.i.i16.i = load i32, ptr %i.dt, align 4, !tbaa !165
  %i.du = icmp slt i32 %.val.val.i.i16.i, %.val1.val.i.i14.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8 ; 2 uses
  br i1 %i.du, label %bb.w, label %.preheader.i.i, !llvm.loop !770

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.w ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %.val1.i9.i.i = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !163 ; 2 uses
  %i.dw = getelementptr i8, ptr %.val1.i9.i.i, i64 4
  %.val1.val.i11.i.i = load i32, ptr %i.dw, align 4, !tbaa !165
  %i.dx = icmp slt i32 %.val1.val.i.i14.i, %.val1.val.i11.i.i
  br i1 %i.dx, label %.preheader.i.i, label %bb.x, !llvm.loop !771

bb.x:                                             ; preds = %.preheader.i.i
  %i.dy = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %i.dy, label %bb.y, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEESN_SN_SN_SX_.exit

bb.y:                                             ; preds = %bb.x
  store ptr %.val1.i9.i.i, ptr %.sroa.014.1.i.i, align 8, !tbaa !163
  store ptr %.val.i.i15.i, ptr %.sroa.0.1.i.i, align 8, !tbaa !163
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SN_SN_SX_.exit.i, !llvm.loop !772

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEESN_SN_SN_SX_.exit: ; preds = %bb.x
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SX_T1_(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2445, i64 noundef %i.dc)
  %i.dz = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.ea = sub i64 %i.dz, %i.a                     ; 2 uses
  %i.eb = ashr exact i64 %i.ea, 3                 ; 2 uses
  %i.ec = icmp sgt i64 %i.eb, 16
  br i1 %i.ec, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SN_SX_.exit, !llvm.loop !765

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SN_SX_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEESN_SN_SN_SX_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SN_RSX_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf13json_internal10Proto3Type13MustHaveFieldERKNS1_12ResolverPool7MessageEiNS1_12JsonLocation14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [2 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %i.a = tail call noundef ptr @_ZNK6google8protobuf13json_internal12ResolverPool7Message9FindFieldEi(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.32, i32 noundef 338) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !98
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = and i64 %i.d, -4
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !27
  store i64 %i.i, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.g, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !775
  store ptr %5, ptr %2, align 8, !tbaa !28, !noalias !775
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.k, align 8, !tbaa !64, !noalias !775
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %1 to i64
  %i.m = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.m, ptr %i.l, align 8, !tbaa !28, !noalias !775
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.n, align 8, !tbaa !64, !noalias !775
  invoke void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.33, i64 88, ptr nonnull %2, i64 2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !775
  %i.o = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.f

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.d
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #29
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !36     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.u = load i64, ptr %i.s, align 8, !tbaa !28
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #29
  unreachable

bb.g:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf13json_internal12_GLOBAL__N_113WriteSingularINS1_17UnparseProto3TypeEJEEEN4absl12lts_202505126StatusERNS1_10JsonWriterENT_5FieldEDpOT0_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %4 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %i.c = alloca [22 x i8], align 16               ; 4 uses
  %5 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %i.d = alloca [22 x i8], align 16               ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %6 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %i.f = alloca [22 x i8], align 16               ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %7 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %i.i = alloca [22 x i8], align 16               ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.absl::lts_20250512::StatusOr.346", align 8 ; 13 uses
  %10 = alloca %"class.absl::lts_20250512::StatusOr.354", align 8 ; 13 uses
  %11 = alloca %"class.absl::lts_20250512::StatusOr.362", align 8 ; 13 uses
  %12 = alloca %"class.absl::lts_20250512::StatusOr.374", align 8 ; 13 uses
  %13 = alloca %"class.absl::lts_20250512::StatusOr.386", align 8 ; 11 uses
  %14 = alloca %"class.absl::lts_20250512::StatusOr.396", align 8 ; 11 uses
  %15 = alloca %"class.absl::lts_20250512::StatusOr.406", align 8 ; 11 uses
  %16 = alloca %"class.absl::lts_20250512::StatusOr.249", align 8 ; 7 uses
  %17 = alloca %"class.absl::lts_20250512::StatusOr.249", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.absl::lts_20250512::StatusOr.386", align 8 ; 11 uses
  %20 = alloca %"class.absl::lts_20250512::StatusOr.539", align 8 ; 12 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %23 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load i32, ptr %i.m, align 8, !tbaa !28   ; 2 uses
  switch i32 %i.n, label %bb.co [
    i32 2, label %bb.b
    i32 1, label %bb.k
    i32 16, label %bb.v
    i32 18, label %bb.v
    i32 3, label %bb.v
    i32 6, label %bb.ae
    i32 4, label %bb.ae
    i32 15, label %bb.an
    i32 17, label %bb.an
    i32 5, label %bb.an
    i32 7, label %bb.av
    i32 13, label %bb.av
    i32 8, label %bb.bd
    i32 9, label %bb.bm
    i32 12, label %_ZN4absl12lts_202505126StatusD2Ev.exit253
    i32 14, label %bb.bv
    i32 11, label %bb.cd
    i32 10, label %bb.cd
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @_ZN6google8protobuf13json_internal17UnparseProto3Type8GetFloatEPKNS1_12ResolverPool5FieldE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.346") align 8 %9, ptr noundef nonnull %2)
  %i.o = load i64, ptr %9, align 8, !tbaa !30     ; 4 uses
  store i64 %i.o, ptr %0, align 8, !tbaa !30
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = inttoptr i64 %i.o to ptr
  %i.r = atomicrmw add ptr %i.q, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i64, ptr %0, align 8, !tbaa !30
  br label %bb.e

bb.d:                                             ; preds = %.invoke, %.thread
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIfED2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %common.resume

bb.e:                                             ; preds = %bb.b, %bb.c
  %i.t = phi i64 [ %i.o, %bb.b ], [ %.pr, %bb.c ]
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %.critedge165

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 45
  %i.w = load i8, ptr %i.v, align 1, !tbaa !72, !range !32, !noundef !33
  %i.x = trunc nuw i8 %i.w to i1
  %.pre306 = load i64, ptr %9, align 8, !tbaa !30
  %i.y = icmp eq i64 %.pre306, 1                  ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  br i1 %i.y, label %bb.g, label %.invoke, !prof !42

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.aa = load float, ptr %i.z, align 8, !tbaa !147
  %i.ab = call float @llvm.fabs.f32(float %i.aa)
  %i.ac = fcmp ueq float %i.ab, +inf
  br i1 %i.ac, label %_ZNR4absl12lts_202505128StatusOrIfEdeEv.exit196, label %.thread

_ZNR4absl12lts_202505128StatusOrIfEdeEv.exit196:  ; preds = %bb.g
  store float 0.000000e+00, ptr %i.z, align 8, !tbaa !147
  br label %.thread

bb.h:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  br i1 %i.y, label %.thread, label %.invoke, !prof !784
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf13json_internal12_GLOBAL__N_113WriteRepeatedINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgENSA_5FieldE:.split
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28, !noalias !988
  br label %.thread183

bb.ae:                                            ; preds = %_ZNR4absl12lts_202505128StatusOrIiEdeEv.exit
  %lpad.loopexit186 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIiED2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %20) #28, !inline_history !954
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28, !noalias !988
  br label %common.resume

_ZNR4absl12lts_202505128StatusOrIiEdeEv.exit:     ; preds = %_ZN6google8protobuf13json_internal10JsonWriter7NewLineEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28, !noalias !988
  call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  %i.ig = getelementptr inbounds nuw i8, ptr %i.dm, i64 80
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !28, !noalias !1008
  %i.ii = call { ptr, i64 } @_ZNK6google8protobuf13json_internal14UntypedMessage3GetIiEEN4absl12lts_202505124SpanIKT_EEi(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %i.ih), !noalias !1008
  %i.ij = extractvalue { ptr, i64 } %i.ii, 0
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %storemerge308
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !65, !noalias !1008 ; 2 uses
  store i32 %i.il, ptr %i.aa, align 8, !tbaa !28, !alias.scope !1007, !noalias !988
  store i64 1, ptr %20, align 8, !tbaa !30, !alias.scope !1007, !noalias !988
  store i64 1, ptr %0, align 8, !tbaa !30
  invoke fastcc void @_ZN6google8protobuf13json_internal12_GLOBAL__N_19WriteEnumINS1_17UnparseProto3TypeEEEvRNS1_10JsonWriterENT_5FieldEiNS2_16IntegerEnumStyleE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %3, i32 noundef %i.il, i32 noundef 1)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIiED2Ev.exit60 unwind label %bb.ae, !inline_history !954

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIiED2Ev.exit60: ; preds = %_ZNR4absl12lts_202505128StatusOrIiEdeEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28, !noalias !988
  br label %.thread183

bb.af:                                            ; preds = %bb.ag
  %i.im = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIPKN6google8protobuf13json_internal14UntypedMessageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #28, !inline_history !954
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28, !noalias !988
  br label %common.resume

bb.ag:                                            ; preds = %_ZN6google8protobuf13json_internal10JsonWriter7NewLineEv.exit, %_ZN6google8protobuf13json_internal10JsonWriter7NewLineEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28, !noalias !988
  call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  %i.in = getelementptr inbounds nuw i8, ptr %i.dm, i64 80
  %i.io = load i32, ptr %i.in, align 8, !tbaa !28, !noalias !1010
  %i.ip = call { ptr, i64 } @_ZNK6google8protobuf13json_internal14UntypedMessage3GetIS2_EEN4absl12lts_202505124SpanIKT_EEi(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %i.io), !noalias !1010
  %i.iq = extractvalue { ptr, i64 } %i.ip, 0
  %i.ir = getelementptr inbounds nuw [40 x i8], ptr %i.iq, i64 %storemerge308 ; 3 uses
  store ptr %i.ir, ptr %i.z, align 8, !tbaa !28, !alias.scope !1009, !noalias !988
  store i64 1, ptr %21, align 8, !tbaa !30, !alias.scope !1009, !noalias !988
  store i64 1, ptr %0, align 8, !tbaa !30
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !96
  invoke fastcc void @_ZN6google8protobuf13json_internal12_GLOBAL__N_112WriteMessageINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescEb(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.ir, ptr noundef nonnull align 8 dereferenceable(184) %i.is, i1 noundef zeroext false)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIPKN6google8protobuf13json_internal14UntypedMessageEED2Ev.exit unwind label %bb.af, !inline_history !954

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIPKN6google8protobuf13json_internal14UntypedMessageEED2Ev.exit: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28, !noalias !988
  br label %bb.ak

bb.ah:                                            ; preds = %_ZN6google8protobuf13json_internal10JsonWriter7NewLineEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28, !noalias !988
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28, !noalias !988
  store i64 24, ptr %23, align 8, !noalias !988
  store ptr @.str.36, ptr %i.av, align 8, !noalias !988
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28, !noalias !988
  %i.it = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.do, ptr noundef nonnull %i.aw), !noalias !988
  %i.iu = ptrtoint ptr %i.it to i64
  %i.iv = sub i64 %i.iu, %i.ax
  store i64 %i.iv, ptr %24, align 8, !tbaa !70, !noalias !988
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !71, !noalias !988
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef nonnull align 8 dereferenceable(48) %24), !noalias !988, !inline_history !954
  %i.iw = load ptr, ptr %22, align 8, !tbaa !36, !noalias !988
  %i.ix = load i64, ptr %i.az, align 8, !tbaa !27, !noalias !988
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.ix, ptr %i.iw)
          to label %bb.ai unwind label %bb.aj, !inline_history !954

bb.ai:                                            ; preds = %bb.ah
  %i.iy = load ptr, ptr %22, align 8, !tbaa !36   ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.ba
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.ai
  %i.ja = load i64, ptr %i.ba, align 8, !tbaa !28
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28, !noalias !988
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28, !noalias !988
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28, !noalias !988
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.jc = landingpad { ptr, i32 }
          cleanup
  %i.jd = load ptr, ptr %22, align 8, !tbaa !36   ; 2 uses
  %i.je = icmp eq ptr %i.jd, %i.ba
  br i1 %i.je, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aj
  %i.jf = load i64, ptr %i.ba, align 8, !tbaa !28
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28, !noalias !988
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28, !noalias !988
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28, !noalias !988
  br label %common.resume

.thread183:                                       ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIfED2Ev.exit139, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIdED2Ev.exit132, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIlED2Ev.exit116, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataImED2Ev.exit101, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIiED2Ev.exit92, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIjED2Ev.exit85, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIbED2Ev.exit79, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit70, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit65, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIiED2Ev.exit60
  store i64 1, ptr %0, align 8, !tbaa !30, !alias.scope !1011
  br label %.critedge

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIPKN6google8protobuf13json_internal14UntypedMessageEED2Ev.exit
  %.pr182 = load i64, ptr %0, align 8, !tbaa !30
  %i.jh = icmp eq i64 %.pr182, 1
  br i1 %i.jh, label %.critedge, label %.critedge27

.critedge:                                        ; preds = %.thread183, %bb.ak, %_ZN4absl12lts_202505126StatusD2Ev.exit
  %.1156 = phi i8 [ %.0307, %_ZN4absl12lts_202505126StatusD2Ev.exit ], [ 0, %bb.ak ], [ 0, %.thread183 ] ; 2 uses
  %i.ji = add nuw i64 %storemerge308, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.ji, %i.t
  br i1 %exitcond.not, label %.critedge28, label %bb.a, !llvm.loop !979

.critedge28:                                      ; preds = %.critedge
  %i.jj = trunc nuw i8 %.1156 to i1
  %i.jk = load i32, ptr %i.m, align 8, !tbaa !25
  %i.jl = add nsw i32 %i.jk, -1                   ; 2 uses
  store i32 %i.jl, ptr %i.m, align 8, !tbaa !25
  br i1 %i.jj, label %_ZN6google8protobuf13json_internal10JsonWriter7NewLineEv.exit39, label %bb.al

bb.al:                                            ; preds = %.critedge28
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.jn = load i8, ptr %i.jm, align 8, !tbaa !31, !range !32, !noundef !33
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %bb.am, label %_ZN6google8protobuf13json_internal10JsonWriter10WhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.i33

bb.am:                                            ; preds = %bb.al
  call void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str, i64 noundef 1)
  %.pre = load i32, ptr %i.m, align 8, !tbaa !25
  br label %_ZN6google8protobuf13json_internal10JsonWriter10WhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.i33

_ZN6google8protobuf13json_internal10JsonWriter10WhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.i33: ; preds = %bb.am, %bb.al
  %i.jp = phi i32 [ %.pre, %bb.am ], [ %i.jl, %bb.al ] ; 2 uses
  %i.jq = icmp sgt i32 %i.jp, 0
  br i1 %i.jq, label %.lr.ph.i34, label %_ZN6google8protobuf13json_internal10JsonWriter7NewLineEv.exit39

.lr.ph.i34:                                       ; preds = %_ZN6google8protobuf13json_internal10JsonWriter10WhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.i33
  %i.jr = load i8, ptr %i.jm, align 8, !tbaa !31, !range !32, !noundef !33
  %i.js = trunc nuw i8 %i.jr to i1
  br i1 %i.js, label %.lr.ph.split.i35, label %_ZN6google8protobuf13json_internal10JsonWriter7NewLineEv.exit39

.lr.ph.split.i35:                                 ; preds = %.lr.ph.i34, %_ZN6google8protobuf13json_internal10JsonWriter10WhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit2.i37
  %i.jt = phi i32 [ %i.jw, %_ZN6google8protobuf13json_internal10JsonWriter10WhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit2.i37 ], [ %i.jp, %.lr.ph.i34 ]
  %.05.i36 = phi i32 [ %i.jx, %_ZN6google8protobuf13json_internal10JsonWriter10WhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit2.i37 ], [ 0, %.lr.ph.i34 ]
  %i.ju = load i8, ptr %i.jm, align 8, !tbaa !31, !range !32, !noundef !33
  %i.jv = trunc nuw i8 %i.ju to i1
  br i1 %i.jv, label %bb.an, label %_ZN6google8protobuf13json_internal10JsonWriter10WhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit2.i37

bb.an:                                            ; preds = %.lr.ph.split.i35
  call void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str.1, i64 noundef 1)
  %.pre.i38 = load i32, ptr %i.m, align 8, !tbaa !25
  br label %_ZN6google8protobuf13json_internal10JsonWriter10WhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit2.i37

_ZN6google8protobuf13json_internal10JsonWriter10WhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit2.i37: ; preds = %bb.an, %.lr.ph.split.i35
  %i.jw = phi i32 [ %i.jt, %.lr.ph.split.i35 ], [ %.pre.i38, %bb.an ] ; 2 uses
  %i.jx = add nuw nsw i32 %.05.i36, 1             ; 2 uses
  %i.jy = icmp slt i32 %i.jx, %i.jw
  br i1 %i.jy, label %.lr.ph.split.i35, label %_ZN6google8protobuf13json_internal10JsonWriter7NewLineEv.exit39, !llvm.loop !0

_ZN6google8protobuf13json_internal10JsonWriter7NewLineEv.exit39: ; preds = %_ZN6google8protobuf13json_internal10JsonWriter10WhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit2.i37, %.critedge28.thread, %.lr.ph.i34, %_ZN6google8protobuf13json_internal10JsonWriter10WhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.i33, %.critedge28
  call void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str.51, i64 noundef 1)
  store i64 1, ptr %0, align 8, !tbaa !30, !alias.scope !1012
  br label %.critedge27

.critedge27:                                      ; preds = %bb.j, %bb.ak, %_ZN6google8protobuf13json_internal10JsonWriter7NewLineEv.exit39
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SY_T1_(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #20 {
bb.a:
  %.fr28 = freeze ptr %1                          ; 3 uses
  %.fr27 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr27 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr28 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SO_SY_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr27, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph46

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEESO_SO_SO_SY_.exit
  %i.h = icmp eq i64 %i.do, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph46, !llvm.loop !1013

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i26.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.es, %bb.b ] ; 2 uses
  %storemerge24.lcssa = phi ptr [ %.fr28, %.lr.ph ], [ %.sroa.016.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i26.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i26.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SY_SY_T1_T2_.exit.us.i.i.i
  %.09.us.i.i.i = phi i64 [ %i.as, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SY_SY_T1_T2_.exit.us.i.i.i ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.09.us.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !110  ; 2 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SY_SY_T1_T2_.exit.us.i.i.i

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.036.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.09.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.036.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.y
  %.val.i.i.us.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !110
  %.val1.i.i.us.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !110
  %i.aa = getelementptr i8, ptr %.val.i.i.us.i.i.i, i64 8
  %.val.val.i.i.us.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !102
  %i.ab = getelementptr i8, ptr %.val1.i.i.us.i.i.i, i64 8
  %.val1.val.i.i.us.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !102
  %i.ac = getelementptr i8, ptr %.val.val.i.i.us.i.i.i, i64 80
  %.val.val.val.i.i.us.i.i.i = load i32, ptr %i.ac, align 8, !tbaa !28
  %i.ad = getelementptr i8, ptr %.val1.val.i.i.us.i.i.i, i64 80
  %.val1.val.val.i.i.us.i.i.i = load i32, ptr %i.ad, align 8, !tbaa !28
  %i.ae = icmp slt i32 %.val.val.val.i.i.us.i.i.i, %.val1.val.val.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.ae, i64 %i.y, i64 %i.w ; 4 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.us.i.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !110
  %i.ah = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.036.i.us.i.i.i
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !110
  %i.ai = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ai, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !1014

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %i.aj = getelementptr i8, ptr %i.t, i64 8
  %.val.val.i24.i.us.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !102
  %i.ak = getelementptr i8, ptr %.val.val.i24.i.us.i.i.i, i64 80
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i.us.i.i.i
  %.val.val.val.i25.i.us.i.i.i = load i32, ptr %i.ak, align 8, !tbaa !28
  %.val.i.i.i.us.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !110 ; 2 uses
  %i.am = getelementptr i8, ptr %.val.i.i.i.us.i.i.i, i64 8
  %.val.val.i.i.i.us.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !102
  %i.an = getelementptr i8, ptr %.val.val.i.i.i.us.i.i.i, i64 80
  %.val.val.val.i.i.i.us.i.i.i = load i32, ptr %i.an, align 8, !tbaa !28
  %i.ao = icmp slt i32 %.val.val.val.i.i.i.us.i.i.i, %.val.val.val.i25.i.us.i.i.i
  br i1 %i.ao, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SY_SY_T1_T2_.exit.us.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.us.i.i.i
  store ptr %.val.i.i.i.us.i.i.i, ptr %i.ap, align 8, !tbaa !110
  %i.aq = icmp sgt i64 %.0911.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.aq, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SY_SY_T1_T2_.exit.us.i.i.i, !llvm.loop !1015

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SY_SY_T1_T2_.exit.us.i.i.i: ; preds = %bb.d, %bb.c, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ], [ %.010.i.i.us.i.i.i, %bb.c ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.us.i.i.i
  store ptr %i.t, ptr %i.ar, align 8, !tbaa !110
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.as = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_RSY_.exit.i.i, label %.split.us.i.i.i, !llvm.loop !1016

.split.i.i.i:                                     ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SY_SY_T1_T2_.exit.i.i.i, %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.bw, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SY_SY_T1_T2_.exit.i.i.i ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.09.i.i.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !110 ; 2 uses
  %i.av = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.av, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.036.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.aw = shl i64 %.036.i.i.i.i, 1                ; 2 uses
  %i.ax = add i64 %i.aw, 2                        ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.ax
  %i.az = or disjoint i64 %i.aw, 1                ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.az
  %.val.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !110
  %.val1.i.i.i.i.i = load ptr, ptr %i.ba, align 8, !tbaa !110
  %i.bb = getelementptr i8, ptr %.val.i.i.i.i.i, i64 8
  %.val.val.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !tbaa !102
  %i.bc = getelementptr i8, ptr %.val1.i.i.i.i.i, i64 8
  %.val1.val.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !102
  %i.bd = getelementptr i8, ptr %.val.val.i.i.i.i.i, i64 80
  %.val.val.val.i.i.i.i.i = load i32, ptr %i.bd, align 8, !tbaa !28
  %i.be = getelementptr i8, ptr %.val1.val.i.i.i.i.i, i64 80
  %.val1.val.val.i.i.i.i.i = load i32, ptr %i.be, align 8, !tbaa !28
  %i.bf = icmp slt i32 %.val.val.val.i.i.i.i.i, %.val1.val.val.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.bf, i64 %i.az, i64 %i.ax ; 4 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.i.i.i
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !110
  %i.bi = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.036.i.i.i.i
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !110
  %i.bj = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bj, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1014

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bk = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bl = load ptr, ptr %i.q, align 8, !tbaa !110
  store ptr %i.bl, ptr %i.r, align 8, !tbaa !110
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bm = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SY_SY_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.bn = getelementptr i8, ptr %i.au, i64 8
  %.val.val.i24.i.i.i.i = load ptr, ptr %i.bn, align 8, !tbaa !102
  %i.bo = getelementptr i8, ptr %.val.val.i24.i.i.i.i, i64 80
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.h ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i.i.i.i
  %.val.val.val.i25.i.i.i.i = load i32, ptr %i.bo, align 8, !tbaa !28
  %.val.i.i.i.i.i.i = load ptr, ptr %i.bp, align 8, !tbaa !110 ; 2 uses
  %i.bq = getelementptr i8, ptr %.val.i.i.i.i.i.i, i64 8
  %.val.val.i.i.i.i.i.i = load ptr, ptr %i.bq, align 8, !tbaa !102
  %i.br = getelementptr i8, ptr %.val.val.i.i.i.i.i.i, i64 80
  %.val.val.val.i.i.i.i.i.i = load i32, ptr %i.br, align 8, !tbaa !28
  %i.bs = icmp slt i32 %.val.val.val.i.i.i.i.i.i, %.val.val.val.i25.i.i.i.i
  br i1 %i.bs, label %bb.h, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SY_SY_T1_T2_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i.i
  store ptr %.val.i.i.i.i.i.i, ptr %i.bt, align 8, !tbaa !110
  %i.bu = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.bu, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SY_SY_T1_T2_.exit.i.i.i, !llvm.loop !1015

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SY_SY_T1_T2_.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ %.010.i.i.i.i.i, %bb.g ], [ %.0911.i.i.i.i.i, %bb.h ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.au, ptr %i.bv, align 8, !tbaa !110
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.bw = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_RSY_.exit.i.i, label %.split.i.i.i, !llvm.loop !1016

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_RSY_.exit.i.i: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SY_SY_T1_T2_.exit.us.i.i.i, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SY_SY_T1_T2_.exit.i.i.i
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_RSY_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SO_RSY_.exit.i.i
  %.sroa.0.03.i.i = phi ptr [ %i.bx, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SO_RSY_.exit.i.i ], [ %storemerge24.lcssa, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_RSY_.exit.i.i ]
  %i.bx = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !110 ; 2 uses
  %i.bz = load ptr, ptr %.fr27, align 8, !tbaa !110
  store ptr %i.bz, ptr %i.bx, align 8, !tbaa !110
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = sub i64 %i.ca, %i.a                     ; 3 uses
  %i.cc = ashr exact i64 %i.cb, 3                 ; 3 uses
  %i.cd = add nsw i64 %i.cc, -1
  %i.ce = lshr i64 %i.cd, 1
  %i.cf = icmp sgt i64 %i.cc, 2
  br i1 %i.cf, label %.lr.ph.i.i.i22.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i22.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i22.i
  %.036.i.i.i23.i = phi i64 [ %spec.select.i.i.i30.i, %.lr.ph.i.i.i22.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.cg = shl i64 %.036.i.i.i23.i, 1              ; 2 uses
  %i.ch = add i64 %i.cg, 2                        ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.ch
  %i.cj = or disjoint i64 %i.cg, 1                ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.cj
  %.val.i.i.i.i24.i = load ptr, ptr %i.ci, align 8, !tbaa !110
  %.val1.i.i.i.i25.i = load ptr, ptr %i.ck, align 8, !tbaa !110
  %i.cl = getelementptr i8, ptr %.val.i.i.i.i24.i, i64 8
  %.val.val.i.i.i.i26.i = load ptr, ptr %i.cl, align 8, !tbaa !102
  %i.cm = getelementptr i8, ptr %.val1.i.i.i.i25.i, i64 8
  %.val1.val.i.i.i.i27.i = load ptr, ptr %i.cm, align 8, !tbaa !102
  %i.cn = getelementptr i8, ptr %.val.val.i.i.i.i26.i, i64 80
  %.val.val.val.i.i.i.i28.i = load i32, ptr %i.cn, align 8, !tbaa !28
  %i.co = getelementptr i8, ptr %.val1.val.i.i.i.i27.i, i64 80
  %.val1.val.val.i.i.i.i29.i = load i32, ptr %i.co, align 8, !tbaa !28
  %i.cp = icmp slt i32 %.val.val.val.i.i.i.i28.i, %.val1.val.val.i.i.i.i29.i
  %spec.select.i.i.i30.i = select i1 %i.cp, i64 %i.cj, i64 %i.ch ; 4 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.i.i30.i
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !110
  %i.cs = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.036.i.i.i23.i
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !110
  %i.ct = icmp slt i64 %spec.select.i.i.i30.i, %i.ce
  br i1 %i.ct, label %.lr.ph.i.i.i22.i, label %._crit_edge.i.i.i10.i, !llvm.loop !1014

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i22.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i30.i, %.lr.ph.i.i.i22.i ] ; 5 uses
  %i.cu = and i64 %i.cb, 8
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.cw = add nsw i64 %i.cc, -2
  %i.cx = ashr exact i64 %i.cw, 1
  %i.cy = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.cx
  br i1 %i.cy, label %.thread.i.i.i, label %bb.j

.thread.i.i.i:                                    ; preds = %bb.i
  %i.cz = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.da = or disjoint i64 %i.cz, 1                ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !110
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i11.i
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !110
  br label %.lr.ph.i.i.i.i13.i

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SO_RSY_.exit.i.i, label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %bb.j, %.thread.i.i.i
  %.1.i6.i.i.i = phi i64 [ %i.da, %.thread.i.i.i ], [ %.0.lcssa.i.i.i11.i, %bb.j ]
  %i.de = getelementptr i8, ptr %i.by, i64 8
  %.val.val.i24.i.i.i14.i = load ptr, ptr %i.de, align 8, !tbaa !102
  %i.df = getelementptr i8, ptr %.val.val.i24.i.i.i14.i, i64 80
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i13.i
  %.010.i.i.i.i15.i = phi i64 [ %.1.i6.i.i.i, %.lr.ph.i.i.i.i13.i ], [ %.0911.i.i78.i.i.i, %bb.l ] ; 3 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i78.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i78.i.i.i
  %.val.val.val.i25.i.i.i17.i = load i32, ptr %i.df, align 8, !tbaa !28
  %.val.i.i.i.i.i18.i = load ptr, ptr %i.dg, align 8, !tbaa !110 ; 2 uses
  %i.dh = getelementptr i8, ptr %.val.i.i.i.i.i18.i, i64 8
  %.val.val.i.i.i.i.i19.i = load ptr, ptr %i.dh, align 8, !tbaa !102
  %i.di = getelementptr i8, ptr %.val.val.i.i.i.i.i19.i, i64 80
  %.val.val.val.i.i.i.i.i20.i = load i32, ptr %i.di, align 8, !tbaa !28
  %i.dj = icmp slt i32 %.val.val.val.i.i.i.i.i20.i, %.val.val.val.i25.i.i.i17.i
  br i1 %i.dj, label %bb.l, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SO_RSY_.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.dk = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i15.i
  store ptr %.val.i.i.i.i.i18.i, ptr %i.dk, align 8, !tbaa !110
  %.not9.i.i.i = icmp eq i64 %.0911.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SO_RSY_.exit.i.i, label %bb.k, !llvm.loop !1015

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SO_RSY_.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %.0.lcssa.i.i.i.i21.i = phi i64 [ 0, %bb.j ], [ %.010.i.i.i.i15.i, %bb.k ], [ 0, %bb.l ]
  %i.dl = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i21.i
  store ptr %i.by, ptr %i.dl, align 8, !tbaa !110
  %i.dm = icmp sgt i64 %i.cb, 8
  br i1 %i.dm, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SO_SY_.exit, !llvm.loop !1017

.lr.ph46:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2445 = phi ptr [ %.sroa.016.1.i.i, %bb.b ], [ %.fr28, %.lr.ph ] ; 3 uses
  %.02544 = phi i64 [ %i.do, %bb.b ], [ %2, %.lr.ph ]
  %i.dn = phi i64 [ %i.et, %bb.b ], [ %i.d, %.lr.ph ]
  %i.do = add nsw i64 %.02544, -1                 ; 3 uses
  %i.dp = lshr i64 %i.dn, 1
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.dp ; 3 uses
  %i.dr = getelementptr inbounds i8, ptr %storemerge2445, i64 -8 ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !110 ; 3 uses
  %.val1.i.i.i = load ptr, ptr %i.dq, align 8, !tbaa !110 ; 3 uses
  %i.ds = getelementptr i8, ptr %.val.i.i.i, i64 8
  %.val.val.i.i.i = load ptr, ptr %i.ds, align 8, !tbaa !102
  %i.dt = getelementptr i8, ptr %.val1.i.i.i, i64 8
  %.val1.val.i.i.i = load ptr, ptr %i.dt, align 8, !tbaa !102
  %i.du = getelementptr i8, ptr %.val.val.i.i.i, i64 80
  %.val.val.val.i.i.i = load i32, ptr %i.du, align 8, !tbaa !28 ; 3 uses
  %i.dv = getelementptr i8, ptr %.val1.val.i.i.i, i64 80
  %.val1.val.val.i.i.i = load i32, ptr %i.dv, align 8, !tbaa !28 ; 3 uses
  %i.dw = icmp slt i32 %.val.val.val.i.i.i, %.val1.val.val.i.i.i
  %.val1.i27.i.i = load ptr, ptr %i.dr, align 8, !tbaa !110 ; 3 uses
  %i.dx = getelementptr i8, ptr %.val1.i27.i.i, i64 8
  %.val1.val.i29.i.i = load ptr, ptr %i.dx, align 8, !tbaa !102
  %i.dy = getelementptr i8, ptr %.val1.val.i29.i.i, i64 80
  %.val1.val.val.i31.i.i = load i32, ptr %i.dy, align 8, !tbaa !28 ; 4 uses
  br i1 %i.dw, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph46
  %i.dz = icmp slt i32 %.val1.val.val.i.i.i, %.val1.val.val.i31.i.i
  br i1 %i.dz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ea = load ptr, ptr %.fr27, align 8, !tbaa !110
  store ptr %.val1.i.i.i, ptr %.fr27, align 8, !tbaa !110
  store ptr %i.ea, ptr %i.dq, align 8, !tbaa !110
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SO_SO_SY_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.eb = icmp slt i32 %.val.val.val.i.i.i, %.val1.val.val.i31.i.i
  %i.ec = load ptr, ptr %.fr27, align 8, !tbaa !110 ; 2 uses
  br i1 %i.eb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %.val1.i27.i.i, ptr %.fr27, align 8, !tbaa !110
  store ptr %i.ec, ptr %i.dr, align 8, !tbaa !110
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SO_SO_SY_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store ptr %.val.i.i.i, ptr %.fr27, align 8, !tbaa !110
  store ptr %i.ec, ptr %i.f, align 8, !tbaa !110
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SO_SO_SY_.exit.i.preheader

bb.r:                                             ; preds = %.lr.ph46
  %i.ed = icmp slt i32 %.val.val.val.i.i.i, %.val1.val.val.i31.i.i
  br i1 %i.ed, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ee = load ptr, ptr %.fr27, align 8, !tbaa !110
  store ptr %.val.i.i.i, ptr %.fr27, align 8, !tbaa !110
  store ptr %i.ee, ptr %i.f, align 8, !tbaa !110
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SO_SO_SY_.exit.i.preheader

bb.t:                                             ; preds = %bb.r
  %i.ef = icmp slt i32 %.val1.val.val.i.i.i, %.val1.val.val.i31.i.i
  %i.eg = load ptr, ptr %.fr27, align 8, !tbaa !110 ; 2 uses
  br i1 %i.ef, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %.val1.i27.i.i, ptr %.fr27, align 8, !tbaa !110
  store ptr %i.eg, ptr %i.dr, align 8, !tbaa !110
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SO_SO_SY_.exit.i.preheader

bb.v:                                             ; preds = %bb.t
  store ptr %.val1.i.i.i, ptr %.fr27, align 8, !tbaa !110
  store ptr %i.eg, ptr %i.dq, align 8, !tbaa !110
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SO_SO_SY_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SO_SO_SY_.exit.i.preheader: ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SO_SO_SY_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SO_SO_SY_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SO_SO_SY_.exit.i.preheader, %bb.y
  %.sroa.016.0.i.i = phi ptr [ %i.em, %bb.y ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SO_SO_SY_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.y ], [ %storemerge2445, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SO_SO_SY_.exit.i.preheader ]
  %.val1.i.i13.i = load ptr, ptr %.fr27, align 8, !tbaa !110
  %i.eh = getelementptr i8, ptr %.val1.i.i13.i, i64 8
  %.val1.val.i.i14.i = load ptr, ptr %i.eh, align 8, !tbaa !102
  %i.ei = getelementptr i8, ptr %.val1.val.i.i14.i, i64 80
  %.val1.val.val.i.i15.i = load i32, ptr %i.ei, align 8, !tbaa !28 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SO_SO_SY_.exit.i
  %.sroa.016.1.i.i = phi ptr [ %.sroa.016.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SO_SO_SY_.exit.i ], [ %i.em, %bb.w ] ; 8 uses
  %.val.i.i16.i = load ptr, ptr %.sroa.016.1.i.i, align 8, !tbaa !110 ; 2 uses
  %i.ej = getelementptr i8, ptr %.val.i.i16.i, i64 8
  %.val.val.i.i17.i = load ptr, ptr %i.ej, align 8, !tbaa !102
  %i.ek = getelementptr i8, ptr %.val.val.i.i17.i, i64 80
  %.val.val.val.i.i18.i = load i32, ptr %i.ek, align 8, !tbaa !28
  %i.el = icmp slt i32 %.val.val.val.i.i18.i, %.val1.val.val.i.i15.i
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.016.1.i.i, i64 8 ; 2 uses
  br i1 %i.el, label %bb.w, label %.preheader.i.i, !llvm.loop !1018

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.w ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %.val1.i9.i.i = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !110 ; 2 uses
  %i.en = getelementptr i8, ptr %.val1.i9.i.i, i64 8
  %.val1.val.i11.i.i = load ptr, ptr %i.en, align 8, !tbaa !102
  %i.eo = getelementptr i8, ptr %.val1.val.i11.i.i, i64 80
  %.val1.val.val.i13.i.i = load i32, ptr %i.eo, align 8, !tbaa !28
  %i.ep = icmp slt i32 %.val1.val.val.i.i15.i, %.val1.val.val.i13.i.i
  br i1 %i.ep, label %.preheader.i.i, label %bb.x, !llvm.loop !1019

bb.x:                                             ; preds = %.preheader.i.i
  %i.eq = icmp ult ptr %.sroa.016.1.i.i, %.sroa.0.1.i.i
  br i1 %i.eq, label %bb.y, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEESO_SO_SO_SY_.exit

bb.y:                                             ; preds = %bb.x
  store ptr %.val1.i9.i.i, ptr %.sroa.016.1.i.i, align 8, !tbaa !110
  store ptr %.val.i.i16.i, ptr %.sroa.0.1.i.i, align 8, !tbaa !110
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SO_SO_SY_.exit.i, !llvm.loop !1020

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEESO_SO_SO_SY_.exit: ; preds = %bb.x
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SY_T1_(ptr nonnull %.sroa.016.1.i.i, ptr %storemerge2445, i64 noundef %i.do)
  %i.er = ptrtoint ptr %.sroa.016.1.i.i to i64
  %i.es = sub i64 %i.er, %i.a                     ; 2 uses
  %i.et = ashr exact i64 %i.es, 3                 ; 2 uses
  %i.eu = icmp sgt i64 %i.et, 16
  br i1 %i.eu, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SO_SY_.exit, !llvm.loop !1013

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SO_SY_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEESO_SO_SO_SY_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SO_RSY_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13json_internal10Proto3Type13WithFieldTypeIZNS2_5IsMapEPKNS1_12ResolverPool5FieldEEUlRKNS4_7MessageEE_EEN4absl12lts_202505126StatusES7_T_(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::StatusOr", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZNK6google8protobuf13json_internal12ResolverPool5Field11MessageTypeEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.a = load i64, ptr %3, align 8, !tbaa !30     ; 5 uses
  store i64 %i.a, ptr %0, align 8, !tbaa !30
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = atomicrmw add ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  %.pre9.pre = load i64, ptr %3, align 8, !tbaa !30
  br label %bb.d

bb.c:                                             ; preds = %bb.f, %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIPKN6google8protobuf13json_internal12ResolverPool7MessageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %i.e

bb.d:                                             ; preds = %bb.a, %bb.b
  %.pre9 = phi i64 [ %i.a, %bb.a ], [ %.pre9.pre, %bb.b ] ; 2 uses
  %i.f = icmp eq i64 %i.a, 1
  br i1 %i.f, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %.critedge

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.d
  %i.g = icmp eq i64 %.pre9, 1
  br i1 %i.g, label %bb.f, label %bb.e, !prof !42

bb.e:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper5CrashERKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %3) #31
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !183, !noalias !1025
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = and i64 %i.l, 1
  %i.n = icmp eq i64 %i.m, 0
  %i.o = add i64 %i.l, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = select i1 %i.n, ptr %i.j, ptr %i.q       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.t = load i32, ptr %i.s, align 8, !tbaa !171, !noalias !1025
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.u ; 2 uses
  %i.w = invoke ptr @_ZSt9__find_ifIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_6OptionEEEN9__gnu_cxx5__ops10_Iter_predIZZNS1_13json_internal10Proto3Type5IsMapEPKNSA_12ResolverPool5FieldEENKUlRKNSC_7MessageEE_clESI_EUlRT_E_EEESK_SK_SK_T0_St26random_access_iterator_tag(ptr nonnull %i.r, ptr nonnull %i.v)
          to label %_ZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS1_12ResolverPool5FieldEENKUlRKNS3_7MessageEE_clES9_.exit unwind label %bb.c

_ZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS1_12ResolverPool5FieldEENKUlRKNS3_7MessageEE_clES9_.exit: ; preds = %bb.f
  %i.x = icmp ne ptr %i.v, %i.w
  %i.y = zext i1 %i.x to i8
  store i8 %i.y, ptr %2, align 1, !tbaa !73, !noalias !1025
  store i64 1, ptr %0, align 8, !tbaa !30, !alias.scope !1026
  %.pre = load i64, ptr %3, align 8, !tbaa !30
  br label %.critedge

.critedge:                                        ; preds = %_ZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS1_12ResolverPool5FieldEENKUlRKNS3_7MessageEE_clES9_.exit, %bb.d
  %i.z = phi i64 [ %.pre, %_ZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS1_12ResolverPool5FieldEENKUlRKNS3_7MessageEE_clES9_.exit ], [ %.pre9, %bb.d ] ; 2 uses
  %i.aa = trunc i64 %i.z to i1
  br i1 %i.aa, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIPKN6google8protobuf13json_internal12ResolverPool7MessageEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.ab = inttoptr i64 %i.z to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ab)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIPKN6google8protobuf13json_internal12ResolverPool7MessageEED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #29
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIPKN6google8protobuf13json_internal12ResolverPool7MessageEED2Ev.exit: ; preds = %.critedge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZSt9__find_ifIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_6OptionEEEN9__gnu_cxx5__ops10_Iter_predIZZNS1_13json_internal10Proto3Type5IsMapEPKNSA_12ResolverPool5FieldEENKUlRKNSC_7MessageEE_clESI_EUlRT_E_EEESK_SK_SK_T0_St26random_access_iterator_tag(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr i64 %i.c, 5                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = and i64 %i.c, -32
  %scevgep = getelementptr i8, ptr %0, i64 %i.f   ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN9__gnu_cxx5__ops10_Iter_predIZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS4_12ResolverPool5FieldEENKUlRKNS6_7MessageEE_clESC_EUlRT_E_EclINS3_8internal19RepeatedPtrIteratorIKNS3_6OptionEEEEEbSE_.exit25.thread
  %.049 = phi i64 [ %i.cm, %_ZN9__gnu_cxx5__ops10_Iter_predIZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS4_12ResolverPool5FieldEENKUlRKNS6_7MessageEE_clESC_EUlRT_E_EclINS3_8internal19RepeatedPtrIteratorIKNS3_6OptionEEEEEbSE_.exit25.thread ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0.048 = phi ptr [ %i.cl, %_ZN9__gnu_cxx5__ops10_Iter_predIZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS4_12ResolverPool5FieldEENKUlRKNS6_7MessageEE_clESC_EUlRT_E_EclINS3_8internal19RepeatedPtrIteratorIKNS3_6OptionEEEEEbSE_.exit25.thread ], [ %0, %.lr.ph.preheader ] ; 9 uses
  %i.g = load ptr, ptr %.sroa.0.048, align 8, !tbaa !140
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !98
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = and i64 %i.j, -4
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27
  %i.o = icmp eq i64 %i.n, 9
  br i1 %i.o, label %_ZN9__gnu_cxx5__ops10_Iter_predIZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS4_12ResolverPool5FieldEENKUlRKNS6_7MessageEE_clESC_EUlRT_E_EclINS3_8internal19RepeatedPtrIteratorIKNS3_6OptionEEEEEbSE_.exit, label %_ZN9__gnu_cxx5__ops10_Iter_predIZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS4_12ResolverPool5FieldEENKUlRKNS6_7MessageEE_clESC_EUlRT_E_EclINS3_8internal19RepeatedPtrIteratorIKNS3_6OptionEEEEEbSE_.exit.thread

_ZN9__gnu_cxx5__ops10_Iter_predIZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS4_12ResolverPool5FieldEENKUlRKNS6_7MessageEE_clESC_EUlRT_E_EclINS3_8internal19RepeatedPtrIteratorIKNS3_6OptionEEEEEbSE_.exit: ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !36   ; 2 uses
  %i.q = load i64, ptr %i.p, align 1
  %i.r = xor i64 %i.q, 8247338199294173549
  %i.s = getelementptr i8, ptr %i.p, i64 8
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i64
  %i.v = xor i64 %i.u, 121
  %i.w = or i64 %i.r, %i.v
  %i.x = icmp ne i64 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.loopexit, label %_ZN9__gnu_cxx5__ops10_Iter_predIZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS4_12ResolverPool5FieldEENKUlRKNS6_7MessageEE_clESC_EUlRT_E_EclINS3_8internal19RepeatedPtrIteratorIKNS3_6OptionEEEEEbSE_.exit.thread

_ZN9__gnu_cxx5__ops10_Iter_predIZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS4_12ResolverPool5FieldEENKUlRKNS6_7MessageEE_clESC_EUlRT_E_EclINS3_8internal19RepeatedPtrIteratorIKNS3_6OptionEEEEEbSE_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops10_Iter_predIZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS4_12ResolverPool5FieldEENKUlRKNS6_7MessageEE_clESC_EUlRT_E_EclINS3_8internal19RepeatedPtrIteratorIKNS3_6OptionEEEEEbSE_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !140
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !98
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = and i64 %i.ae, -4
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !27
  %i.aj = icmp eq i64 %i.ai, 9
  br i1 %i.aj, label %_ZN9__gnu_cxx5__ops10_Iter_predIZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS4_12ResolverPool5FieldEENKUlRKNS6_7MessageEE_clESC_EUlRT_E_EclINS3_8internal19RepeatedPtrIteratorIKNS3_6OptionEEEEEbSE_.exit21, label %_ZN9__gnu_cxx5__ops10_Iter_predIZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS4_12ResolverPool5FieldEENKUlRKNS6_7MessageEE_clESC_EUlRT_E_EclINS3_8internal19RepeatedPtrIteratorIKNS3_6OptionEEEEEbSE_.exit21.thread

_ZN9__gnu_cxx5__ops10_Iter_predIZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS4_12ResolverPool5FieldEENKUlRKNS6_7MessageEE_clESC_EUlRT_E_EclINS3_8internal19RepeatedPtrIteratorIKNS3_6OptionEEEEEbSE_.exit21: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS4_12ResolverPool5FieldEENKUlRKNS6_7MessageEE_clESC_EUlRT_E_EclINS3_8internal19RepeatedPtrIteratorIKNS3_6OptionEEEEEbSE_.exit.thread
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !36 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 1
  %i.am = xor i64 %i.al, 8247338199294173549
  %i.an = getelementptr i8, ptr %i.ak, i64 8
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i64
  %i.aq = xor i64 %i.ap, 121
  %i.ar = or i64 %i.am, %i.aq
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.loopexit.loopexit.split.loop.exit, label %_ZN9__gnu_cxx5__ops10_Iter_predIZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS4_12ResolverPool5FieldEENKUlRKNS6_7MessageEE_clESC_EUlRT_E_EclINS3_8internal19RepeatedPtrIteratorIKNS3_6OptionEEEEEbSE_.exit21.thread

_ZN9__gnu_cxx5__ops10_Iter_predIZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS4_12ResolverPool5FieldEENKUlRKNS6_7MessageEE_clESC_EUlRT_E_EclINS3_8internal19RepeatedPtrIteratorIKNS3_6OptionEEEEEbSE_.exit21.thread: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS4_12ResolverPool5FieldEENKUlRKNS6_7MessageEE_clESC_EUlRT_E_EclINS3_8internal19RepeatedPtrIteratorIKNS3_6OptionEEEEEbSE_.exit.thread, %_ZN9__gnu_cxx5__ops10_Iter_predIZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS4_12ResolverPool5FieldEENKUlRKNS6_7MessageEE_clESC_EUlRT_E_EclINS3_8internal19RepeatedPtrIteratorIKNS3_6OptionEEEEEbSE_.exit21
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !140
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !98
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = and i64 %i.az, -4
  %i.bb = inttoptr i64 %i.ba to ptr               ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !27
  %i.be = icmp eq i64 %i.bd, 9
  br i1 %i.be, label %_ZN9__gnu_cxx5__ops10_Iter_predIZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS4_12ResolverPool5FieldEENKUlRKNS6_7MessageEE_clESC_EUlRT_E_EclINS3_8internal19RepeatedPtrIteratorIKNS3_6OptionEEEEEbSE_.exit23, label %_ZN9__gnu_cxx5__ops10_Iter_predIZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS4_12ResolverPool5FieldEENKUlRKNS6_7MessageEE_clESC_EUlRT_E_EclINS3_8internal19RepeatedPtrIteratorIKNS3_6OptionEEEEEbSE_.exit23.thread

_ZN9__gnu_cxx5__ops10_Iter_predIZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS4_12ResolverPool5FieldEENKUlRKNS6_7MessageEE_clESC_EUlRT_E_EclINS3_8internal19RepeatedPtrIteratorIKNS3_6OptionEEEEEbSE_.exit23: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS4_12ResolverPool5FieldEENKUlRKNS6_7MessageEE_clESC_EUlRT_E_EclINS3_8internal19RepeatedPtrIteratorIKNS3_6OptionEEEEEbSE_.exit21.thread
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !36 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 1
  %i.bh = xor i64 %i.bg, 8247338199294173549
  %i.bi = getelementptr i8, ptr %i.bf, i64 8
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i64
  %i.bl = xor i64 %i.bk, 121
  %i.bm = or i64 %i.bh, %i.bl
  %i.bn = icmp ne i64 %i.bm, 0
  %i.bo = zext i1 %i.bn to i32
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %.loopexit.loopexit.split.loop.exit56, label %_ZN9__gnu_cxx5__ops10_Iter_predIZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS4_12ResolverPool5FieldEENKUlRKNS6_7MessageEE_clESC_EUlRT_E_EclINS3_8internal19RepeatedPtrIteratorIKNS3_6OptionEEEEEbSE_.exit23.thread

_ZN9__gnu_cxx5__ops10_Iter_predIZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS4_12ResolverPool5FieldEENKUlRKNS6_7MessageEE_clESC_EUlRT_E_EclINS3_8internal19RepeatedPtrIteratorIKNS3_6OptionEEEEEbSE_.exit23.thread: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS4_12ResolverPool5FieldEENKUlRKNS6_7MessageEE_clESC_EUlRT_E_EclINS3_8internal19RepeatedPtrIteratorIKNS3_6OptionEEEEEbSE_.exit21.thread, %_ZN9__gnu_cxx5__ops10_Iter_predIZZN6google8protobuf13json_internal10Proto3Type5IsMapEPKNS4_12ResolverPool5FieldEENKUlRKNS6_7MessageEE_clESC_EUlRT_E_EclINS3_8internal19RepeatedPtrIteratorIKNS3_6OptionEEEEEbSE_.exit23
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !140
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !98
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = and i64 %i.bu, -4
  %i.bw = inttoptr i64 %i.bv to ptr               ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !27
end_hunk_1
