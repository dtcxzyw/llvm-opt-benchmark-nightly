Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/generated_message_reflection?download=true
inline.NumInlined: 8094
inline.NumDeleted: 3434
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK6google8protobuf10Reflection12SwapElementsEPNS0_7MessageEPKNS0_15FieldDescriptorEii:bb.a
  %i.ji = load ptr, ptr %.0.i.i293, align 8, !tbaa !259
  %i.jj = load ptr, ptr %.0.i2.i294, align 8, !tbaa !259
  store ptr %i.jj, ptr %.0.i.i293, align 8, !tbaa !259
  store ptr %i.ji, ptr %.0.i2.i294, align 8, !tbaa !259
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE12SwapElementsEii.exit

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE12SwapElementsEii.exit: ; preds = %bb.aa, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %bb.g, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIlEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIjEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldImEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIdEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIfEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIbEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit223, %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal12MapFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %bb.f
  ret void
}

declare void @_ZN6google8protobuf8internal12ExtensionSet12SwapElementsEiii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8internal23CreateUnknownEnumValuesEPKNS0_15FieldDescriptorE(ptr noundef nonnull %0) local_unnamed_addr #0 !guid !934 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor35legacy_enum_field_treated_as_closedEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %not. = xor i1 %i.a, true
  ret i1 %not.
}

declare noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor35legacy_enum_field_treated_as_closedEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Reflection10ListFieldsERKNS0_7MessageEPSt6vectorIPKNS0_15FieldDescriptorESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !935 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !416    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !417
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE5clearEv.exit, label %_ZSt8_DestroyIPPKN6google8protobuf15FieldDescriptorES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPKN6google8protobuf15FieldDescriptorES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !417
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE5clearEv.exit

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPPKN6google8protobuf15FieldDescriptorES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !325
  %i.f = icmp eq ptr %1, %i.e
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE5clearEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !207  ; 2 uses
  %i.i = tail call noundef i32 @_ZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(160) %i.h, ptr noundef nonnull %2) ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !210 ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %2, align 8, !tbaa !210
  tail call fastcc void @_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS3_12_GLOBAL__N_117FieldNumberSorterEEvT_SE_T0_(ptr %i.k, ptr %.pre)
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !210  ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !218
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !233
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.l, %bb.c ], [ %.pre, %bb.b ] ; 2 uses
  %.0 = phi i32 [ %i.p, %bb.c ], [ %i.i, %bb.b ]  ; 3 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !416    ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.w = load i32, ptr %i.v, align 4, !tbaa !219  ; 2 uses
  %.not25 = icmp eq i32 %i.w, -1
  br i1 %.not25, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !293
  tail call void @_ZNK6google8protobuf8internal12ExtensionSet12AppendToListEPKNS0_10DescriptorEPKNS0_14DescriptorPoolEPSt6vectorIPKNS0_15FieldDescriptorESaISC_EE(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull %i.h, ptr noundef %i.aa, ptr noundef nonnull %2)
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !417 ; 4 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !416   ; 5 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %.not = icmp eq i64 %i.af, %i.u
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !218
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  %.val = load i32, ptr %i.ai, align 4, !tbaa !233 ; 2 uses
  %.not.i = icmp ugt i32 %.0, %.val
  br i1 %.not.i, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.aj = phi ptr [ %i.ab, %bb.e ], [ %i.ab, %bb.f ], [ %i.q, %bb.d ]
  %i.ak = phi ptr [ %i.ac, %bb.e ], [ %i.ac, %bb.f ], [ %i.r, %bb.d ]
  %.1 = phi i32 [ %.0, %bb.e ], [ %.val, %bb.f ], [ %.0, %bb.d ]
  %.not21 = icmp eq i32 %.1, -1
  br i1 %.not21, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.f, %bb.g
  %i.al = phi ptr [ %i.ab, %bb.f ], [ %i.aj, %bb.g ]
  %i.am = phi ptr [ %i.ac, %bb.f ], [ %i.ak, %bb.g ]
  tail call fastcc void @_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS3_12_GLOBAL__N_117FieldNumberSorterEEvT_SE_T0_(ptr %i.am, ptr %i.al)
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE5clearEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 !guid !936 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !270  ; 2 uses
  %.not76 = icmp eq i32 %i.b, -1
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !418
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !296  ; 2 uses
  %i.i = sext i32 %i.h to i64                     ; 3 uses
  %i.j = icmp slt i32 %i.h, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.135) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !419
  %i.m = load ptr, ptr %3, align 8, !tbaa !416
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %i.r = icmp ult i64 %i.q, %i.i
  br i1 %i.r, label %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE7reserveEm.exit

_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !417
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.o
  %i.w = shl nuw nsw i64 %i.i, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #38 ; 4 uses
  %i.y = load ptr, ptr %3, align 8, !tbaa !416    ; 4 uses
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !417
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %bb.d, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.y, i64 %i.ac, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %bb.d, %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.y, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !419
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ag) #39
  br label %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit.i

_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.e, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  store ptr %i.x, ptr %3, align 8, !tbaa !416
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.s, align 8, !tbaa !417
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.ai, ptr %i.k, align 8, !tbaa !419
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE7reserveEm.exit

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !298 ; 2 uses
  %i.al = load i32, ptr %0, align 8, !tbaa !292
  %i.am = sext i32 %i.al to i64
  %.idx = mul nsw i64 %i.am, 88
  %i.an = add nsw i64 %.idx, 88                   ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ak, i64 %i.an
  %.not80 = icmp eq i64 %i.an, 0
  br i1 %.not80, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE7reserveEm.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE7reserveEm.exit
  %.072.lcssa = phi i32 [ 0, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE7reserveEm.exit ], [ %.1, %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit ]
  ret i32 %.072.lcssa

bb.f:                                             ; preds = %.lr.ph, %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit
  %indvars.iv = phi i64 [ -1, %.lr.ph ], [ %indvars.iv.next, %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit ]
  %.083 = phi ptr [ %i.ak, %.lr.ph ], [ %i.fb, %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit ] ; 17 uses
  %.07281 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit ] ; 7 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.083, i64 3
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = and i8 %i.as, 8
  %.not.i.i.not = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.not, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %.083, i64 1
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = and i8 %i.av, 16
  %.not.i = icmp eq i8 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %.083, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !234 ; 2 uses
  %.0.i = select i1 %.not.i, ptr null, ptr %i.ay  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i) ]
  %i.az = load i32, ptr %i.ap, align 8, !tbaa !420
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !237
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !246
  %i.bg = ptrtoint ptr %.0.i to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = sdiv exact i64 %i.bi, 56
  %i.bk = shl i64 %i.bj, 32
  %i.bl = ashr exact i64 %i.bk, 30
  %i.bm = getelementptr inbounds i8, ptr %i.bb, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !13
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.083, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !233 ; 3 uses
  %i.br = sext i32 %i.bq to i64
  %i.bs = icmp eq i64 %i.bo, %i.br
  br i1 %i.bs, label %bb.h, label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

bb.h:                                             ; preds = %bb.g
  %.not.i.i36 = icmp ugt i32 %.07281, %i.bq
  %spec.select.i.i = select i1 %.not.i.i36, i32 -1, i32 %i.bq ; 2 uses
  %i.bt = load ptr, ptr %i.aq, align 8, !tbaa !417 ; 4 uses
  %i.bu = load ptr, ptr %i.k, align 8, !tbaa !419
  %.not.i.i.i37 = icmp eq ptr %i.bt, %i.bu
  br i1 %.not.i.i.i37, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %.083, ptr %i.bt, align 8, !tbaa !218
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bv, ptr %i.aq, align 8, !tbaa !417
  br label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

bb.j:                                             ; preds = %bb.h
  %i.bw = load ptr, ptr %3, align 8, !tbaa !416   ; 4 uses
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = ptrtoint ptr %i.bw to i64               ; 2 uses
  %i.bz = sub i64 %i.bx, %i.by                    ; 5 uses
  %i.ca = icmp eq i64 %i.bz, 9223372036854775800
  br i1 %i.ca, label %bb.k, label %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.136) #40
  unreachable

_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.j
  %i.cb = ashr exact i64 %i.bz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cb, i64 1)
  %i.cc = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.cb ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.cb
  %i.ce = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 1152921504606846975)
  %i.cf = select i1 %i.cd, i64 1152921504606846975, i64 %i.ce ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.cf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.cg = shl nuw nsw i64 %i.cf, 3
  %i.ch = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #38 ; 4 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 %i.bz ; 2 uses
  store ptr %.083, ptr %i.ci, align 8, !tbaa !218
  %i.cj = icmp sgt i64 %i.bz, 0
  br i1 %i.cj, label %bb.l, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ch, ptr align 8 %i.bw, i64 %i.bz, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i
  %i.cl = load ptr, ptr %i.k, align 8, !tbaa !419
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = sub i64 %i.cm, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cn) #39
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i
  store ptr %i.ch, ptr %3, align 8, !tbaa !416
  store ptr %i.ck, ptr %i.aq, align 8, !tbaa !417
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cf
  store ptr %i.co, ptr %i.k, align 8, !tbaa !419
  br label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.f
  br i1 %.not76, label %bb.w, label %bb.n

bb.n:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv.next
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !13 ; 3 uses
  %.not35 = icmp eq i32 %i.cq, -1
  br i1 %.not35, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cr = lshr i32 %i.cq, 5
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !13
  %i.cv = and i32 %i.cq, 31
  %i.cw = lshr i32 %i.cu, %i.cv
  %i.cx = trunc i32 %i.cw to i1
  br i1 %i.cx, label %bb.p, label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

bb.p:                                             ; preds = %bb.o
  %i.cy = tail call noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor12has_presenceEv(ptr noundef nonnull align 8 dereferenceable(88) %.083)
  br i1 %i.cy, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = getelementptr i8, ptr %.083, i64 32
  %.val.i39 = load ptr, ptr %i.cz, align 8, !tbaa !265 ; 2 uses
  %.not.i.i40 = icmp eq ptr %.val.i39, null
  br i1 %.not.i.i40, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit, label %_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.i

_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.q
  %i.da = getelementptr inbounds nuw i8, ptr %.val.i39, i64 40
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !342
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 51
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !215, !range !250, !noundef !234
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit

_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit: ; preds = %bb.q, %_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.i
  %i.df = tail call noundef zeroext i1 @_ZNK6google8protobuf10Reflection31IsImplicitPresenceFieldNonEmptyERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.083)
  br i1 %i.df, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread, label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread: ; preds = %_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.i, %bb.p, %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %.083, i64 4
  %.val.i41 = load i32, ptr %i.dg, align 4, !tbaa !233 ; 2 uses
  %.not.i.i42 = icmp ugt i32 %.07281, %.val.i41
  %spec.select.i.i43 = select i1 %.not.i.i42, i32 -1, i32 %.val.i41 ; 2 uses
  %i.dh = load ptr, ptr %i.aq, align 8, !tbaa !417 ; 4 uses
  %i.di = load ptr, ptr %i.k, align 8, !tbaa !419
  %.not.i.i.i44 = icmp eq ptr %i.dh, %i.di
  br i1 %.not.i.i.i44, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread
  store ptr %.083, ptr %i.dh, align 8, !tbaa !218
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.dj, ptr %i.aq, align 8, !tbaa !417
  br label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

bb.s:                                             ; preds = %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread
  %i.dk = load ptr, ptr %3, align 8, !tbaa !416   ; 4 uses
  %i.dl = ptrtoint ptr %i.dh to i64
  %i.dm = ptrtoint ptr %i.dk to i64               ; 2 uses
  %i.dn = sub i64 %i.dl, %i.dm                    ; 5 uses
  %i.do = icmp eq i64 %i.dn, 9223372036854775800
  br i1 %i.do, label %bb.t, label %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i45

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.136) #40
  unreachable

_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i45: ; preds = %bb.s
  %i.dp = ashr exact i64 %i.dn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i46 = tail call i64 @llvm.umax.i64(i64 %i.dp, i64 1)
  %i.dq = add nsw i64 %.sroa.speculated.i.i.i.i.i46, %i.dp ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.dp
  %i.ds = tail call i64 @llvm.umin.i64(i64 %i.dq, i64 1152921504606846975)
  %i.dt = select i1 %i.dr, i64 1152921504606846975, i64 %i.ds ; 3 uses
  %.not.i.i.i.i.i47 = icmp ne i64 %i.dt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i47)
  %i.du = shl nuw nsw i64 %i.dt, 3
  %i.dv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #38 ; 4 uses
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 %i.dn ; 2 uses
  store ptr %.083, ptr %i.dw, align 8, !tbaa !218
  %i.dx = icmp sgt i64 %i.dn, 0
  br i1 %i.dx, label %bb.u, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i48

bb.u:                                             ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i45
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dv, ptr align 8 %i.dk, i64 %i.dn, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i48

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i48: ; preds = %bb.u, %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i45
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.not.i17.i.i.i.i49 = icmp eq ptr %i.dk, null
  br i1 %.not.i17.i.i.i.i49, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i50, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i48
  %i.dz = load ptr, ptr %i.k, align 8, !tbaa !419
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = sub i64 %i.ea, %i.dm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.eb) #39
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i50

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i50: ; preds = %bb.v, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i48
  store ptr %i.dv, ptr %3, align 8, !tbaa !416
  store ptr %i.dy, ptr %i.aq, align 8, !tbaa !417
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dt
  store ptr %i.ec, ptr %i.k, align 8, !tbaa !419
  br label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

bb.w:                                             ; preds = %bb.n, %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit
  %i.ed = tail call noundef zeroext i1 @_ZNK6google8protobuf10Reflection19HasFieldWithHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.083)
  br i1 %i.ed, label %bb.x, label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

bb.x:                                             ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw i8, ptr %.083, i64 4
  %.val.i52 = load i32, ptr %i.ee, align 4, !tbaa !233 ; 2 uses
  %.not.i.i53 = icmp ugt i32 %.07281, %.val.i52
  %spec.select.i.i54 = select i1 %.not.i.i53, i32 -1, i32 %.val.i52 ; 2 uses
  %i.ef = load ptr, ptr %i.aq, align 8, !tbaa !417 ; 4 uses
  %i.eg = load ptr, ptr %i.k, align 8, !tbaa !419
  %.not.i.i.i55 = icmp eq ptr %i.ef, %i.eg
  br i1 %.not.i.i.i55, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %.083, ptr %i.ef, align 8, !tbaa !218
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr %i.eh, ptr %i.aq, align 8, !tbaa !417
  br label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

bb.z:                                             ; preds = %bb.x
  %i.ei = load ptr, ptr %3, align 8, !tbaa !416   ; 4 uses
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = ptrtoint ptr %i.ei to i64               ; 2 uses
  %i.el = sub i64 %i.ej, %i.ek                    ; 5 uses
  %i.em = icmp eq i64 %i.el, 9223372036854775800
  br i1 %i.em, label %bb.aa, label %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i56

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.136) #40
  unreachable

_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i56: ; preds = %bb.z
  %i.en = ashr exact i64 %i.el, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i57 = tail call i64 @llvm.umax.i64(i64 %i.en, i64 1)
  %i.eo = add nsw i64 %.sroa.speculated.i.i.i.i.i57, %i.en ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %i.en
  %i.eq = tail call i64 @llvm.umin.i64(i64 %i.eo, i64 1152921504606846975)
  %i.er = select i1 %i.ep, i64 1152921504606846975, i64 %i.eq ; 3 uses
  %.not.i.i.i.i.i58 = icmp ne i64 %i.er, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i58)
  %i.es = shl nuw nsw i64 %i.er, 3
  %i.et = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.es) #38 ; 4 uses
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 %i.el ; 2 uses
  store ptr %.083, ptr %i.eu, align 8, !tbaa !218
  %i.ev = icmp sgt i64 %i.el, 0
  br i1 %i.ev, label %bb.ab, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i59

bb.ab:                                            ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i56
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.et, ptr align 8 %i.ei, i64 %i.el, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i59

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i59: ; preds = %bb.ab, %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i56
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %.not.i17.i.i.i.i60 = icmp eq ptr %i.ei, null
  br i1 %.not.i17.i.i.i.i60, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i61, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i59
  %i.ex = load ptr, ptr %i.k, align 8, !tbaa !419
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = sub i64 %i.ey, %i.ek
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.ez) #39
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i61

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i61: ; preds = %bb.ac, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i59
  store ptr %i.et, ptr %3, align 8, !tbaa !416
  store ptr %i.ew, ptr %i.aq, align 8, !tbaa !417
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.er
  store ptr %i.fa, ptr %i.k, align 8, !tbaa !419
  br label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit: ; preds = %bb.o, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i61, %bb.y, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i50, %bb.r, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, %bb.i, %bb.g, %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit, %bb.w
  %.1 = phi i32 [ %.07281, %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit ], [ %.07281, %bb.g ], [ %spec.select.i.i43, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i50 ], [ %.07281, %bb.w ], [ %spec.select.i.i54, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i61 ], [ %spec.select.i.i, %bb.i ], [ %spec.select.i.i, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %spec.select.i.i43, %bb.r ], [ %spec.select.i.i54, %bb.y ], [ %.07281, %bb.o ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.083, i64 88 ; 2 uses
  %.not = icmp eq ptr %i.fb, %i.ao
  br i1 %.not, label %._crit_edge, label %bb.f
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS3_12_GLOBAL__N_117FieldNumberSorterEEvT_SE_T0_(ptr %0, ptr %1) unnamed_addr #16 !guid !940 {
bb.a:
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = shl nuw nsw i64 %i.e, 1
  %i.g = xor i64 %i.f, 126
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_T0_T1_(ptr %0, ptr %1, i64 noundef %i.g)
  %i.h = icmp sgt i64 %i.c, 128
  br i1 %i.h, label %.lr.ph.i.i.i, label %.preheader.i22.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS3_12_GLOBAL__N_117FieldNumberSorterEEvT_SE_T0_:bb.a
  store ptr %i.ad, ptr %.sroa.03.08.i.i19.i.i, align 8, !tbaa !218
  %.sroa.0.0.i.i20.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i18.i.i, i64 -8 ; 2 uses
  %i.ae = load ptr, ptr %.sroa.0.0.i.i20.i.i, align 8, !tbaa !218 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  %.val2.i.i.i21.i.i = load i32, ptr %i.af, align 4, !tbaa !233
  %i.ag = icmp slt i32 %.val.val.i.i.i.i, %.val2.i.i.i21.i.i
  br i1 %i.ag, label %.lr.ph.i.i17.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_.exit.i14.i.i, !llvm.loop !937

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_.exit.i14.i.i: ; preds = %.lr.ph.i.i17.i.i, %.lr.ph.i12.i.i
  %.sroa.03.0.lcssa.i.i15.i.i = phi ptr [ %.sroa.0.07.i.i.i, %.lr.ph.i12.i.i ], [ %.sroa.0.09.i.i18.i.i, %.lr.ph.i.i17.i.i ]
  store ptr %i.y, ptr %.sroa.03.0.lcssa.i.i15.i.i, align 8, !tbaa !218
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 8 ; 2 uses
  %.not.i16.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i16.i.i, label %_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_T0_.exit, label %.lr.ph.i12.i.i, !llvm.loop !939

.preheader.i22.i.i:                               ; preds = %bb.b
  %.sroa.0.016.i23.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not17.i24.i.i = icmp eq ptr %.sroa.0.016.i23.i.i, %1
  br i1 %.not17.i24.i.i, label %_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_T0_.exit, label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %.preheader.i22.i.i
  %.pre21.i26.i.i = load ptr, ptr %0, align 8, !tbaa !218
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i25.i.i
  %i.ai = phi ptr [ %.pre21.i26.i.i, %.lr.ph.i25.i.i ], [ %i.bd, %bb.o ] ; 2 uses
  %.sroa.0.019.i27.i.i = phi ptr [ %.sroa.0.016.i23.i.i, %.lr.ph.i25.i.i ], [ %.sroa.0.0.i35.i.i, %bb.o ] ; 6 uses
  %.pn18.i28.i.i = phi ptr [ %0, %.lr.ph.i25.i.i ], [ %.sroa.0.019.i27.i.i, %bb.o ] ; 4 uses
  %i.aj = load ptr, ptr %.sroa.0.019.i27.i.i, align 8, !tbaa !218 ; 4 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  %.val.i.i29.i.i = load i32, ptr %i.ak, align 4, !tbaa !233 ; 3 uses
  %i.al = getelementptr i8, ptr %i.ai, i64 4
  %.val1.i.i30.i.i = load i32, ptr %i.al, align 4, !tbaa !233
  %i.am = icmp slt i32 %.val.i.i29.i.i, %.val1.i.i30.i.i
  br i1 %i.am, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.an = ptrtoint ptr %.sroa.0.019.i27.i.i to i64
  %i.ao = sub i64 %i.an, %i.b                     ; 3 uses
  %i.ap = ashr exact i64 %i.ao, 3                 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 1
  br i1 %i.aq, label %bb.k, label %bb.l, !prof !191

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn18.i28.i.i, i64 16
  %i.as = sub nsw i64 0, %i.ap
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.as
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ao, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i42.i.i

bb.l:                                             ; preds = %bb.j
  %i.au = icmp eq i64 %i.ao, 8
  br i1 %i.au, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i42.i.i

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %.pn18.i28.i.i, i64 8
  store ptr %i.ai, ptr %i.av, align 8, !tbaa !218
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i42.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i42.i.i: ; preds = %bb.m, %bb.l, %bb.k
  store ptr %i.aj, ptr %0, align 8, !tbaa !218
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %.pn18.i28.i.i, align 8, !tbaa !218 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 4
  %.val2.i7.i.i31.i.i = load i32, ptr %i.ax, align 4, !tbaa !233
  %i.ay = icmp slt i32 %.val.i.i29.i.i, %.val2.i7.i.i31.i.i
  br i1 %i.ay, label %.lr.ph.i.i37.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_.exit.i32.i.i

.lr.ph.i.i37.i.i:                                 ; preds = %bb.n, %.lr.ph.i.i37.i.i
  %i.az = phi ptr [ %i.ba, %.lr.ph.i.i37.i.i ], [ %i.aw, %bb.n ]
  %.sroa.0.09.i.i38.i.i = phi ptr [ %.sroa.0.0.i.i40.i.i, %.lr.ph.i.i37.i.i ], [ %.pn18.i28.i.i, %bb.n ] ; 3 uses
  %.sroa.03.08.i.i39.i.i = phi ptr [ %.sroa.0.09.i.i38.i.i, %.lr.ph.i.i37.i.i ], [ %.sroa.0.019.i27.i.i, %bb.n ]
  store ptr %i.az, ptr %.sroa.03.08.i.i39.i.i, align 8, !tbaa !218
  %.sroa.0.0.i.i40.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i38.i.i, i64 -8 ; 2 uses
  %i.ba = load ptr, ptr %.sroa.0.0.i.i40.i.i, align 8, !tbaa !218 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 4
  %.val2.i.i.i41.i.i = load i32, ptr %i.bb, align 4, !tbaa !233
  %i.bc = icmp slt i32 %.val.i.i29.i.i, %.val2.i.i.i41.i.i
  br i1 %i.bc, label %.lr.ph.i.i37.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_.exit.i32.i.i, !llvm.loop !937

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_.exit.i32.i.i: ; preds = %.lr.ph.i.i37.i.i, %bb.n
  %.sroa.03.0.lcssa.i.i33.i.i = phi ptr [ %.sroa.0.019.i27.i.i, %bb.n ], [ %.sroa.0.09.i.i38.i.i, %.lr.ph.i.i37.i.i ]
  store ptr %i.aj, ptr %.sroa.03.0.lcssa.i.i33.i.i, align 8, !tbaa !218
  %.pre.i34.i.i = load ptr, ptr %0, align 8, !tbaa !218
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_.exit.i32.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i42.i.i
  %i.bd = phi ptr [ %i.aj, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i42.i.i ], [ %.pre.i34.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_.exit.i32.i.i ]
  %.sroa.0.0.i35.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i27.i.i, i64 8 ; 2 uses
  %.not.i36.i.i = icmp eq ptr %.sroa.0.0.i35.i.i, %1
  br i1 %.not.i36.i.i, label %_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_T0_.exit, label %bb.i, !llvm.loop !938

_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_.exit.i14.i.i, %bb.a, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_T0_.exit.i.i, %.preheader.i22.i.i
  ret void
}

declare void @_ZNK6google8protobuf8internal12ExtensionSet12AppendToListEPKNS0_10DescriptorEPKNS0_14DescriptorPoolEPSt6vectorIPKNS0_15FieldDescriptorESaISC_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 !guid !941 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !207
  %i.c = tail call noundef i32 @_ZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb1EDnEEiRKNS0_7MessageERKNS0_10DescriptorET0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr null)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load i32, ptr %i.d, align 4, !tbaa !219  ; 2 uses
  %.not4 = icmp eq i32 %i.e, -1
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.h = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet7IsEmptyEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb1EDnEEiRKNS0_7MessageERKNS0_10DescriptorET0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr %3) local_unnamed_addr #6 comdat align 2 !guid !942 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !270
  %.fr = freeze i32 %i.b                          ; 2 uses
  %i.c = zext i32 %.fr to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !418
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !298  ; 3 uses
  %i.i = load i32, ptr %0, align 8, !tbaa !292
  %i.j = sext i32 %i.i to i64
  %.idx = mul nsw i64 %i.j, 88
  %i.k = add nsw i64 %.idx, 88                    ; 2 uses
  %i.l = getelementptr i8, ptr %i.h, i64 %i.k     ; 2 uses
  %.not50.not = icmp eq i64 %i.k, 0
  br i1 %.not50.not, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not49 = icmp eq i32 %.fr, -1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br i1 %.not49, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge.us
  %.03352.us = phi ptr [ %i.ap, %.critedge.us ], [ %i.h, %.lr.ph ] ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.03352.us, i64 3
  %i.o = load i8, ptr %i.n, align 1
  %i.p = and i8 %i.o, 8
  %.not.i.i.not.us = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.not.us, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.q = getelementptr inbounds nuw i8, ptr %.03352.us, i64 1
  %i.r = load i8, ptr %i.q, align 1
  %i.s = and i8 %i.r, 16
  %.not.i.us = icmp eq i8 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %.03352.us, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !234 ; 2 uses
  %.0.i.us = select i1 %.not.i.us, ptr null, ptr %i.u ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.us) ]
  %i.v = load i32, ptr %i.m, align 8, !tbaa !420
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !237
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !246
  %i.ac = ptrtoint ptr %.0.i.us to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 56
  %i.ag = shl i64 %i.af, 32
  %i.ah = ashr exact i64 %i.ag, 30
  %i.ai = getelementptr inbounds i8, ptr %i.x, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !13
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.03352.us, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !233
  %i.an = sext i32 %i.am to i64
  %.not42.us = icmp eq i64 %i.ak, %i.an
  br i1 %.not42.us, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread, label %.critedge.us

_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit.us: ; preds = %.lr.ph.split.us
  %i.ao = tail call noundef zeroext i1 @_ZNK6google8protobuf10Reflection19HasFieldWithHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.03352.us)
  br i1 %i.ao, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread, label %.critedge.us

.critedge.us:                                     ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit.us, %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %.03352.us, i64 88 ; 2 uses
  %.not.us.not = icmp eq ptr %i.ap, %i.l
  br i1 %.not.us.not, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge ], [ -1, %.lr.ph ]
  %.03352 = phi ptr [ %i.cj, %.critedge ], [ %i.h, %.lr.ph ] ; 9 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.03352, i64 3
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = and i8 %i.ar, 8
  %.not.i.i.not = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.not, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split
  %i.at = getelementptr inbounds nuw i8, ptr %.03352, i64 1
  %i.au = load i8, ptr %i.at, align 1
  %i.av = and i8 %i.au, 16
  %.not.i = icmp eq i8 %i.av, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %.03352, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !234 ; 2 uses
  %.0.i = select i1 %.not.i, ptr null, ptr %i.ax  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i) ]
  %i.ay = load i32, ptr %i.m, align 8, !tbaa !420
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !237
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !246
  %i.bf = ptrtoint ptr %.0.i to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = sdiv exact i64 %i.bh, 56
  %i.bj = shl i64 %i.bi, 32
  %i.bk = ashr exact i64 %i.bj, 30
  %i.bl = getelementptr inbounds i8, ptr %i.ba, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !13
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.03352, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !233
  %i.bq = sext i32 %i.bp to i64
  %.not42 = icmp eq i64 %i.bn, %i.bq
  br i1 %.not42, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread, label %.critedge

_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit: ; preds = %.lr.ph.split
  %i.br = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv.next
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !13 ; 3 uses
  %.not41 = icmp eq i32 %i.bs, -1
  br i1 %.not41, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit
  %i.bt = lshr i32 %i.bs, 5
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !13
  %i.bx = and i32 %i.bs, 31
  %i.by = lshr i32 %i.bw, %i.bx
  %i.bz = trunc i32 %i.by to i1
  br i1 %i.bz, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ca = tail call noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor12has_presenceEv(ptr noundef nonnull align 8 dereferenceable(88) %.03352)
  br i1 %i.ca, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cb = getelementptr i8, ptr %.03352, i64 32
  %.val.i = load ptr, ptr %i.cb, align 8, !tbaa !265 ; 2 uses
  %.not.i.i44 = icmp eq ptr %.val.i, null
  br i1 %.not.i.i44, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit, label %_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.i

_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.f
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !342
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 51
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !215, !range !250, !noundef !234
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit

_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit: ; preds = %bb.f, %_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.i
  %i.ch = tail call noundef zeroext i1 @_ZNK6google8protobuf10Reflection31IsImplicitPresenceFieldNonEmptyERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.03352)
  br i1 %i.ch, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread, label %.critedge

bb.g:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit
  %i.ci = tail call noundef zeroext i1 @_ZNK6google8protobuf10Reflection19HasFieldWithHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.03352)
  br i1 %i.ci, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread, label %.critedge

.critedge:                                        ; preds = %bb.d, %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit, %bb.g, %bb.c
  %i.cj = getelementptr inbounds nuw i8, ptr %.03352, i64 88 ; 2 uses
  %.not.not = icmp eq ptr %i.cj, %i.l
  br i1 %.not.not, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread, label %.lr.ph.split

_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread: ; preds = %.critedge, %bb.g, %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit, %bb.c, %bb.e, %_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.i, %.critedge.us, %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit.us, %bb.b, %bb.a
  %.not.lcssa = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit.us ], [ 0, %.critedge.us ], [ 1, %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit ], [ 1, %bb.g ], [ 0, %.critedge ], [ 1, %_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.i ], [ 1, %bb.e ], [ 1, %bb.c ]
  ret i32 %.not.lcssa
}

declare noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet7IsEmptyEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf10Reflection28IsEmptyIgnoringUnknownFieldsERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 !guid !943 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !325
  %i.c = icmp eq ptr %1, %i.b
  br i1 %i.c, label %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !207
  %i.f = tail call noundef i32 @_ZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb1EDnEEiRKNS0_7MessageERKNS0_10DescriptorET0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(160) %i.e, ptr null)
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !219  ; 2 uses
  %.not4.i = icmp eq i32 %i.h, -1
  br i1 %.not4.i, label %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.k = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet7IsEmptyEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j)
  br label %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit

_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ %i.k, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf10Reflection7IsEmptyERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 !guid !944 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !325
  %i.c = icmp eq ptr %1, %i.b
  br i1 %i.c, label %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit.thread6, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !207
  %i.f = tail call noundef i32 @_ZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb1EDnEEiRKNS0_7MessageERKNS0_10DescriptorET0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(160) %i.e, ptr null)
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit.thread6

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !219  ; 2 uses
  %.not4.i = icmp eq i32 %i.h, -1
  br i1 %.not4.i, label %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit.thread, label %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit

_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit: ; preds = %bb.c
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.k = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet7IsEmptyEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j)
  br i1 %i.k, label %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit.thread, label %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit.thread6

_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit.thread: ; preds = %bb.c, %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !221  ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %bb.d, label %_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE.exit, !prof !222

bb.d:                                             ; preds = %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit.thread
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  br label %_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE.exit

_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE.exit: ; preds = %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit.thread, %bb.d
  %.0.i.i = phi ptr [ %i.q, %bb.d ], [ @_ZZN6google8protobuf15UnknownFieldSet16default_instanceEvE8instance, %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit.thread ]
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !414
  %i.t = icmp eq i32 %i.s, 0
  br label %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit.thread6

_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit.thread6: ; preds = %bb.b, %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit, %_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE.exit, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ false, %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit ], [ %i.t, %_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE.exit ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6google8protobuf10Reflection8GetInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !945 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !265  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !207  ; 4 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.e, ptr noundef nonnull %2, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.13)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.h = load i8, ptr %i.g, align 1               ; 3 uses
  %i.i = and i8 %i.h, 32
  %.not21 = icmp eq i8 %i.i, 0
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.e, ptr noundef nonnull %2, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23)
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.k = load i8, ptr %i.j, align 2, !tbaa !260
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !262
  %.not = icmp eq i32 %i.n, 1
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_130ReportReflectionUsageTypeErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcNS0_8internal19FieldDescriptorLite7CppTypeE(ptr noundef %i.e, ptr noundef nonnull %2, ptr noundef nonnull @.str.22, i32 noundef 1)
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = and i8 %i.h, 8
  %.not22 = icmp eq i8 %i.o, 0
  br i1 %.not22, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !219
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.w = load i32, ptr %i.v, align 8, !tbaa !215  ; 2 uses
  store i32 %i.w, ptr %i.a, align 4, !tbaa !13
  %i.x = tail call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i32 noundef %i.u) ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZNK6google8protobuf8internal12ExtensionSet3GetIiEERKT_iRKNSt9enable_ifILb1ES4_E4typeE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  %i.aa = load i8, ptr %i.z, align 2
  %i.ab = and i8 %i.aa, 2
  %.not.i = icmp eq i8 %i.ab, 0
  %spec.select.i = select i1 %.not.i, ptr %i.x, ptr %i.a
end_hunk_1
