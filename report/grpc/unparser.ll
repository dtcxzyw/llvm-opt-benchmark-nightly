Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/unparser?download=true
inline.NumInlined: 4983
inline.NumDeleted: 1990
begin_hunk_0_@_ZN6google8protobuf13json_internal12_GLOBAL__N_113WriteSingularINS1_23UnparseProto2DescriptorEJRKNS0_7MessageEEEEN4absl12lts_202505126StatusERNS1_10JsonWriterENT_5FieldEDpOT0_:bb.a
  %i.ed = tail call noundef i32 @_ZNK6google8protobuf10Reflection12GetEnumValueERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.ec, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %2), !noalias !598 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 %i.ed, ptr %i.ee, align 8, !tbaa !28, !alias.scope !598
  store i64 1, ptr %20, align 8, !tbaa !30, !alias.scope !598
  store i64 1, ptr %0, align 8, !tbaa !30
  invoke fastcc void @_ZN6google8protobuf13json_internal12_GLOBAL__N_19WriteEnumINS1_23UnparseProto2DescriptorEEEvRNS1_10JsonWriterENT_5FieldEiNS2_16IntegerEnumStyleE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %2, i32 noundef %i.ed, i32 noundef 1)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIiED2Ev.exit263 unwind label %bb.r

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIiED2Ev.exit263: ; preds = %_ZNR4absl12lts_202505128StatusOrIiEdeEv.exit262
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %bb.y

bb.s:                                             ; preds = %bb.t, %bb.u
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIPKN6google8protobuf7MessageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br label %bb.aa

bb.t:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599)
  %i.eg = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !599
  %i.eh = extractvalue { ptr, ptr } %i.eg, 1
  %i.ei = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection10GetMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96) %i.eh, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %2, ptr noundef null), !noalias !599 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !28, !alias.scope !599
  store i64 1, ptr %21, align 8, !tbaa !30, !alias.scope !599
  store i64 1, ptr %0, align 8, !tbaa !30
  %i.ek = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ei)
          to label %bb.u unwind label %bb.s

bb.u:                                             ; preds = %bb.t
  %i.el = extractvalue { ptr, ptr } %i.ek, 0
  invoke fastcc void @_ZN6google8protobuf13json_internal12_GLOBAL__N_112WriteMessageINS1_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescEb(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noundef nonnull align 8 dereferenceable(160) %i.el, i1 noundef zeroext false)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIPKN6google8protobuf7MessageEED2Ev.exit unwind label %bb.s

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIPKN6google8protobuf7MessageEED2Ev.exit: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br label %bb.z

bb.v:                                             ; preds = %bb.a
  %i.em = zext i8 %i.n to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  store i64 24, ptr %23, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr @.str.36, ptr %i.en, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  %i.eo = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  %i.ep = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.em, ptr noundef nonnull %i.eo)
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.eo to i64
  %i.es = sub i64 %i.eq, %i.er
  store i64 %i.es, ptr %24, align 8, !tbaa !70
  %i.et = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %i.eo, ptr %i.et, align 8, !tbaa !71
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef nonnull align 8 dereferenceable(48) %24)
  %i.eu = load ptr, ptr %22, align 8, !tbaa !36
  %i.ev = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !27
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.ew, ptr %i.eu)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ex = load ptr, ptr %22, align 8, !tbaa !36   ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.w
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !28
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %i.fd = load ptr, ptr %22, align 8, !tbaa !36   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270: ; preds = %bb.x
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !28
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %bb.aa

bb.y:                                             ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIiED2Ev.exit263, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit258, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIbED2Ev.exit, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIjED2Ev.exit, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIiED2Ev.exit, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataImED2Ev.exit, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIlED2Ev.exit, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIdED2Ev.exit, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIfED2Ev.exit
  store i64 1, ptr %0, align 8, !tbaa !30, !alias.scope !600
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIPKN6google8protobuf7MessageEED2Ev.exit
  ret void

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, %bb.s, %bb.r, %bb.q, %bb.o, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %.body, %bb.b
  %.pn173 = phi { ptr, i32 } [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272 ], [ %i.o, %bb.b ], [ %.pn169, %.body ], [ %i.an, %bb.f ], [ %i.bl, %bb.h ], [ %i.cg, %bb.j ], [ %i.cp, %bb.l ], [ %i.cy, %bb.n ], [ %i.dg, %bb.o ], [ %i.dq, %bb.q ], [ %i.ea, %bb.r ], [ %i.ef, %bb.s ]
  resume { ptr, i32 } %.pn173
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf13json_internal12_GLOBAL__N_111WriteFieldsINS1_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescERb(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %3, ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.absl::lts_20250512::StatusOr.406", align 8 ; 10 uses
  %6 = alloca %"class.std::vector.478", align 8   ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !155  ; 3 uses
  %i.l = sext i32 %i.k to i64                     ; 3 uses
  %i.m = icmp slt i32 %i.k, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #31
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %.not196 = icmp eq i32 %i.k, 0
  br i1 %.not196, label %._crit_edge, label %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.p = shl nuw nsw i64 %i.l, 3
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #33
          to label %.noexc39 unwind label %bb.f   ; 4 uses

.noexc39:                                         ; preds = %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit.i
  %i.r = load ptr, ptr %6, align 8, !tbaa !158    ; 4 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !159
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %bb.d, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i

bb.d:                                             ; preds = %.noexc39
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr align 8 %i.r, i64 %i.v, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %bb.d, %.noexc39
  %.not.i8.i = icmp eq ptr %i.r, null
  br i1 %.not.i8.i, label %.lr.ph, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !160
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.z) #30
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  store ptr %i.q, ptr %6, align 8, !tbaa !158
  store ptr %i.q, ptr %i.o, align 8, !tbaa !159
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.l
  store ptr %i.aa, ptr %i.n, align 8, !tbaa !160
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit, %bb.c
  invoke void @_ZN6google8protobuf13json_internal23UnparseProto2Descriptor23FindAndAppendExtensionsERKNS0_7MessageERSt6vectorIPKNS0_15FieldDescriptorESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.r unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit.i, %bb.b, %._crit_edge
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit
  %.027173 = phi i64 [ 0, %.lr.ph ], [ %i.bs, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit ] ; 2 uses
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !161
  %sext.i = shl i64 %.027173, 32
  %7 = ashr exact i64 %sext.i, 32
  %i.ag = getelementptr inbounds [88 x i8], ptr %i.af, i64 %7 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc40 unwind label %.loopexit169

.noexc40:                                         ; preds = %bb.g
  %i.ak = and i8 %i.ai, 32
  %.not.i = icmp eq i8 %i.ak, 0
  %i.al = extractvalue { ptr, ptr } %i.aj, 1      ; 2 uses
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc40
  %i.am = invoke noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.ag)
          to label %.noexc41 unwind label %.loopexit169

.noexc41:                                         ; preds = %bb.h
  %i.an = icmp ne i32 %i.am, 0
  br label %_ZN6google8protobuf13json_internal23UnparseProto2Descriptor7GetSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE.exit

bb.i:                                             ; preds = %.noexc40
  %i.ao = invoke noundef zeroext i1 @_ZNK6google8protobuf10Reflection8HasFieldERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.ag)
          to label %_ZN6google8protobuf13json_internal23UnparseProto2Descriptor7GetSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE.exit unwind label %.loopexit169

_ZN6google8protobuf13json_internal23UnparseProto2Descriptor7GetSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE.exit: ; preds = %bb.i, %.noexc41
  %.0.i = phi i1 [ %i.an, %.noexc41 ], [ %i.ao, %bb.i ] ; 2 uses
  %i.ap = load i8, ptr %i.ac, align 1, !tbaa !162, !range !32, !noundef !33
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZN6google8protobuf13json_internal23UnparseProto2Descriptor7GetSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE.exit
  %i.ar = load i8, ptr %i.ah, align 1
  %i.as = and i8 %i.ar, 32
  %.not164 = icmp eq i8 %i.as, 0
  br i1 %.not164, label %bb.k, label %.split.thread

bb.k:                                             ; preds = %bb.j
  %i.at = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor12has_presenceEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ag)
          to label %.split unwind label %.loopexit169

.split:                                           ; preds = %bb.k
  %i.au = xor i1 %i.at, true
  %i.av = or i1 %.0.i, %i.au
  br i1 %i.av, label %.split.thread, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit

.loopexit169:                                     ; preds = %bb.g, %bb.h, %bb.i, %bb.k, %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit171 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp170:                            ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %_ZN6google8protobuf13json_internal23UnparseProto2Descriptor7GetSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE.exit
  br i1 %.0.i, label %.split.thread, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit

.split.thread:                                    ; preds = %bb.j, %.split, %bb.l
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !159 ; 4 uses
  %i.ax = load ptr, ptr %i.n, align 8, !tbaa !160
  %.not.i45 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not.i45, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.split.thread
  store ptr %i.ag, ptr %i.aw, align 8, !tbaa !163
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ay, ptr %i.ad, align 8, !tbaa !159
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit

bb.n:                                             ; preds = %.split.thread
  %i.az = load ptr, ptr %6, align 8, !tbaa !158   ; 4 uses
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 5 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775800
  br i1 %i.bd, label %bb.o, label %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #31
          to label %.noexc46 unwind label %.loopexit.split-lp170

.noexc46:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.be = ashr exact i64 %i.bc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 1152921504606846975)
  %i.bi = select i1 %i.bg, i64 1152921504606846975, i64 %i.bh ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #33
          to label %.noexc47 unwind label %.loopexit169 ; 4 uses

.noexc47:                                         ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bc ; 2 uses
  store ptr %i.ag, ptr %i.bl, align 8, !tbaa !163
  %i.bm = icmp sgt i64 %i.bc, 0
  br i1 %i.bm, label %bb.p, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.p:                                             ; preds = %.noexc47
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr align 8 %i.az, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.p, %.noexc47
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.not.i17.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  %i.bo = load ptr, ptr %i.n, align 8, !tbaa !160
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bp, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bq) #30
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.bk, ptr %6, align 8, !tbaa !158
  store ptr %i.bn, ptr %i.ad, align 8, !tbaa !159
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.br, ptr %i.n, align 8, !tbaa !160
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.m, %.split, %bb.l
  %i.bs = add nuw i64 %.027173, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bs, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !601

bb.r:                                             ; preds = %._crit_edge
  %.val = load ptr, ptr %6, align 8, !tbaa !164   ; 17 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.val38 = load ptr, ptr %i.bt, align 8, !tbaa !164 ; 7 uses
  %.not.i.i.i48 = icmp eq ptr %.val, %.val38
  br i1 %.not.i.i.i48, label %_ZN4absl12lts_202505126c_sortISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS7_EEZNS4_13json_internal12_GLOBAL__N_111WriteFieldsINSA_23UnparseProto2DescriptorEEENS0_6StatusERNSA_10JsonWriterERKNT_3MsgERKNSH_4DescERbEUlRKSH_RKT0_E_EEvRSH_OSR_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = ptrtoint ptr %.val38 to i64
  %i.bv = ptrtoint ptr %.val to i64               ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = ashr exact i64 %i.bw, 3
  %i.by = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bx, i1 true)
  %i.bz = shl nuw nsw i64 %i.by, 1
  %i.ca = xor i64 %i.bz, 126
  call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_13json_internal12_GLOBAL__N_111WriteFieldsINSE_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNSE_10JsonWriterERKNT_3MsgERKNSN_4DescERbEUlRKSN_RKT0_E_EEEvSN_SN_SX_T1_(ptr %.val, ptr %.val38, i64 noundef %i.ca)
  %i.cb = icmp sgt i64 %i.bw, 128
  %scevgep.i.i.i.i = getelementptr i8, ptr %.val, i64 8 ; 3 uses
  br i1 %i.cb, label %.lr.ph.i.i.i.i.i, label %bb.x

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.s, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i.i
  %.sroa.0.020.i.idx.i.i.i.i = phi i64 [ %.sroa.0.020.i.add.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i.i ], [ 8, %bb.s ] ; 4 uses
  %.pn19.i.i.i.i.i = phi ptr [ %.sroa.0.020.i.ptr.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i.i ], [ %.val, %bb.s ] ; 3 uses
  %.sroa.0.020.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.020.i.idx.i.i.i.i ; 4 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.0.020.i.ptr.i.i.i.i, align 8, !tbaa !163 ; 2 uses
  %.val1.i.i.i.i.i.i = load ptr, ptr %.val, align 8, !tbaa !163 ; 2 uses
  %i.cc = getelementptr i8, ptr %.val.i.i.i.i.i.i, i64 4
  %.val.val.i.i.i.i.i.i = load i32, ptr %i.cc, align 4, !tbaa !165 ; 3 uses
  %i.cd = getelementptr i8, ptr %.val1.i.i.i.i.i.i, i64 4
  %.val1.val.i.i.i.i.i.i = load i32, ptr %i.cd, align 4, !tbaa !165
  %i.ce = icmp slt i32 %.val.val.i.i.i.i.i.i, %.val1.val.i.i.i.i.i.i
  br i1 %i.ce, label %bb.t, label %bb.w

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cf = icmp samesign ugt i64 %.sroa.0.020.i.idx.i.i.i.i, 8
  br i1 %i.cf, label %bb.u, label %bb.v, !prof !42

bb.u:                                             ; preds = %bb.t
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.val, i64 %.sroa.0.020.i.idx.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i.i, i64 8
  store ptr %.val1.i.i.i.i.i.i, ptr %i.cg, align 8, !tbaa !163
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i.i

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i
  %.val2.i7.i.i.i.i.i.i = load ptr, ptr %.pn19.i.i.i.i.i, align 8, !tbaa !163 ; 2 uses
  %i.ch = getelementptr i8, ptr %.val2.i7.i.i.i.i.i.i, i64 4
  %.val2.val.i8.i.i.i.i.i.i = load i32, ptr %i.ch, align 4, !tbaa !165
  %i.ci = icmp slt i32 %.val.val.i.i.i.i.i.i, %.val2.val.i8.i.i.i.i.i.i
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.w, %.lr.ph.i.i.i.i.i.i
  %.val2.i11.i.i.i.i.i.i = phi ptr [ %.val2.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.val2.i7.i.i.i.i.i.i, %bb.w ]
  %.sroa.0.010.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.pn19.i.i.i.i.i, %bb.w ] ; 3 uses
  %.sroa.03.09.i.i.i.i.i.i = phi ptr [ %.sroa.0.010.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.020.i.ptr.i.i.i.i, %bb.w ]
  store ptr %.val2.i11.i.i.i.i.i.i, ptr %.sroa.03.09.i.i.i.i.i.i, align 8, !tbaa !163
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 -8 ; 2 uses
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !tbaa !163 ; 2 uses
  %i.cj = getelementptr i8, ptr %.val2.i.i.i.i.i.i.i, i64 4
  %.val2.val.i.i.i.i.i.i.i = load i32, ptr %i.cj, align 4, !tbaa !165
  %i.ck = icmp slt i32 %.val.val.i.i.i.i.i.i, %.val2.val.i.i.i.i.i.i.i
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i.i, !llvm.loop !602

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.w, %bb.v, %bb.u
  %.sink.i.i.i.i.i = phi ptr [ %.val, %bb.v ], [ %.val, %bb.u ], [ %.sroa.0.020.i.ptr.i.i.i.i, %bb.w ], [ %.sroa.0.010.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.val.i.i.i.i.i.i, ptr %.sink.i.i.i.i.i, align 8, !tbaa !163
  %.sroa.0.020.i.add.i.i.i.i = add nuw nsw i64 %.sroa.0.020.i.idx.i.i.i.i, 8 ; 2 uses
end_hunk_0
