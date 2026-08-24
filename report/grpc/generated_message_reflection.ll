Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/generated_message_reflection?download=true
inline.NumInlined: 8507
inline.NumDeleted: 3569
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK6google8protobuf10Reflection12SwapElementsEPNS0_7MessageEPKNS0_15FieldDescriptorEii:bb.a
  %i.ji = load ptr, ptr %.0.i.i313, align 8, !tbaa !96
  %i.jj = load ptr, ptr %.0.i4.i314, align 8, !tbaa !96
  store ptr %i.jj, ptr %.0.i.i313, align 8, !tbaa !96
  store ptr %i.ji, ptr %.0.i4.i314, align 8, !tbaa !96
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE12SwapElementsEii.exit

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE12SwapElementsEii.exit: ; preds = %bb.aa, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %bb.g, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIlEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIjEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldImEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIdEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIfEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIbEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit237, %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal12MapFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %bb.f
  ret void
}

declare void @_ZN6google8protobuf8internal12ExtensionSet12SwapElementsEiii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8internal23CreateUnknownEnumValuesEPKNS0_15FieldDescriptorE(ptr noundef nonnull %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor35legacy_enum_field_treated_as_closedEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %not. = xor i1 %i.a, true
  ret i1 %not.
}

declare noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor35legacy_enum_field_treated_as_closedEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Reflection10ListFieldsERKNS0_7MessageEPSt6vectorIPKNS0_15FieldDescriptorESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !508    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !510
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE5clearEv.exit, label %_ZSt8_DestroyIPPKN6google8protobuf15FieldDescriptorES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPKN6google8protobuf15FieldDescriptorES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !510
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE5clearEv.exit

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPPKN6google8protobuf15FieldDescriptorES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !281
  %i.f = icmp eq ptr %1, %i.e
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE5clearEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = tail call noundef i32 @_ZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(160) %i.h, ptr noundef nonnull %2) ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !25  ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %2, align 8, !tbaa !25
  tail call fastcc void @_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS3_12_GLOBAL__N_117FieldNumberSorterEEvT_SE_T0_(ptr %i.k, ptr %.pre)
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.l, %bb.c ], [ %.pre, %bb.b ] ; 2 uses
  %.0 = phi i32 [ %i.p, %bb.c ], [ %i.i, %bb.b ]  ; 3 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !508    ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.w = load i32, ptr %i.v, align 4, !tbaa !36   ; 2 uses
  %.not25 = icmp eq i32 %i.w, -1
  br i1 %.not25, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !248
  tail call void @_ZNK6google8protobuf8internal12ExtensionSet12AppendToListEPKNS0_10DescriptorEPKNS0_14DescriptorPoolEPSt6vectorIPKNS0_15FieldDescriptorESaISC_EE(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull %i.h, ptr noundef %i.aa, ptr noundef nonnull %2)
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !510 ; 4 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !508   ; 5 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %.not = icmp eq i64 %i.af, %i.u
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !34
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  %.val = load i32, ptr %i.ai, align 4, !tbaa !43 ; 2 uses
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
define linkonce_odr hidden noundef i32 @_ZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !148  ; 2 uses
  %.not76 = icmp eq i32 %i.b, -1
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !511
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !252  ; 2 uses
  %i.i = sext i32 %i.h to i64                     ; 3 uses
  %i.j = icmp slt i32 %i.h, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !512
  %i.m = load ptr, ptr %3, align 8, !tbaa !508
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %i.r = icmp ult i64 %i.q, %i.i
  br i1 %i.r, label %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE7reserveEm.exit

_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !510
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.o
  %i.w = shl nuw nsw i64 %i.i, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #39 ; 4 uses
  %i.y = load ptr, ptr %3, align 8, !tbaa !508    ; 4 uses
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !510
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
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !512
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ag) #40
  br label %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit.i

_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.e, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  store ptr %i.x, ptr %3, align 8, !tbaa !508
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.s, align 8, !tbaa !510
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.ai, ptr %i.k, align 8, !tbaa !512
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE7reserveEm.exit

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !254 ; 2 uses
  %i.al = load i32, ptr %0, align 8, !tbaa !246
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
  %.083 = phi ptr [ %i.ak, %.lr.ph ], [ %i.fa, %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit ] ; 17 uses
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
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !51 ; 2 uses
  %.0.i = select i1 %.not.i, ptr null, ptr %i.ay  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i) ]
  %i.az = load i32, ptr %i.ap, align 8, !tbaa !513
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !52
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !55
  %i.bg = ptrtoint ptr %.0.i to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = sdiv exact i64 %i.bi, 56
  %sext = shl i64 %i.bj, 32
  %i.bk = ashr exact i64 %sext, 30
  %i.bl = getelementptr inbounds i8, ptr %i.bb, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !64
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.083, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !43 ; 3 uses
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp eq i64 %i.bn, %i.bq
  br i1 %i.br, label %bb.h, label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

bb.h:                                             ; preds = %bb.g
  %.not.i.i36 = icmp ugt i32 %.07281, %i.bp
  %spec.select.i.i = select i1 %.not.i.i36, i32 -1, i32 %i.bp ; 2 uses
  %i.bs = load ptr, ptr %i.aq, align 8, !tbaa !510 ; 4 uses
  %i.bt = load ptr, ptr %i.k, align 8, !tbaa !512
  %.not.i.i.i37 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not.i.i.i37, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %.083, ptr %i.bs, align 8, !tbaa !34
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bu, ptr %i.aq, align 8, !tbaa !510
  br label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

bb.j:                                             ; preds = %bb.h
  %i.bv = load ptr, ptr %3, align 8, !tbaa !508   ; 4 uses
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = ptrtoint ptr %i.bv to i64               ; 2 uses
  %i.by = sub i64 %i.bw, %i.bx                    ; 5 uses
  %i.bz = icmp eq i64 %i.by, 9223372036854775800
  br i1 %i.bz, label %bb.k, label %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.140) #41
  unreachable

_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.j
  %i.ca = ashr exact i64 %i.by, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ca, i64 1)
  %i.cb = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ca ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.ca
  %i.cd = tail call i64 @llvm.umin.i64(i64 %i.cb, i64 1152921504606846975)
  %i.ce = select i1 %i.cc, i64 1152921504606846975, i64 %i.cd ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ce, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.cf = shl nuw nsw i64 %i.ce, 3
  %i.cg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #39 ; 4 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %i.by ; 2 uses
  store ptr %.083, ptr %i.ch, align 8, !tbaa !34
  %i.ci = icmp sgt i64 %i.by, 0
  br i1 %i.ci, label %bb.l, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cg, ptr align 8 %i.bv, i64 %i.by, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i
  %i.ck = load ptr, ptr %i.k, align 8, !tbaa !512
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = sub i64 %i.cl, %i.bx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.cm) #40
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i
  store ptr %i.cg, ptr %3, align 8, !tbaa !508
  store ptr %i.cj, ptr %i.aq, align 8, !tbaa !510
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ce
  store ptr %i.cn, ptr %i.k, align 8, !tbaa !512
  br label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.f
  br i1 %.not76, label %bb.w, label %bb.n

bb.n:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit
  %i.co = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv.next
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !64 ; 3 uses
  %.not35 = icmp eq i32 %i.cp, -1
  br i1 %.not35, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cq = lshr i32 %i.cp, 5
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !64
  %i.cu = and i32 %i.cp, 31
  %i.cv = lshr i32 %i.ct, %i.cu
  %i.cw = trunc i32 %i.cv to i1
  br i1 %i.cw, label %bb.p, label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

bb.p:                                             ; preds = %bb.o
  %i.cx = tail call noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor12has_presenceEv(ptr noundef nonnull align 8 dereferenceable(88) %.083)
  br i1 %i.cx, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cy = getelementptr i8, ptr %.083, i64 32
  %.val.i39 = load ptr, ptr %i.cy, align 8, !tbaa !103 ; 2 uses
  %.not.i.i40 = icmp eq ptr %.val.i39, null
  br i1 %.not.i.i40, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit, label %_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.i

_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.q
  %i.cz = getelementptr inbounds nuw i8, ptr %.val.i39, i64 40
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !296
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 51
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !32, !range !86, !noundef !51
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit

_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit: ; preds = %bb.q, %_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.i
  %i.de = tail call noundef zeroext i1 @_ZNK6google8protobuf10Reflection31IsImplicitPresenceFieldNonEmptyERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.083)
  br i1 %i.de, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread, label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread: ; preds = %_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.i, %bb.p, %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit
  %i.df = getelementptr inbounds nuw i8, ptr %.083, i64 4
  %.val.i41 = load i32, ptr %i.df, align 4, !tbaa !43 ; 2 uses
  %.not.i.i42 = icmp ugt i32 %.07281, %.val.i41
  %spec.select.i.i43 = select i1 %.not.i.i42, i32 -1, i32 %.val.i41 ; 2 uses
  %i.dg = load ptr, ptr %i.aq, align 8, !tbaa !510 ; 4 uses
  %i.dh = load ptr, ptr %i.k, align 8, !tbaa !512
  %.not.i.i.i44 = icmp eq ptr %i.dg, %i.dh
  br i1 %.not.i.i.i44, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread
  store ptr %.083, ptr %i.dg, align 8, !tbaa !34
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %i.di, ptr %i.aq, align 8, !tbaa !510
  br label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

bb.s:                                             ; preds = %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread
  %i.dj = load ptr, ptr %3, align 8, !tbaa !508   ; 4 uses
  %i.dk = ptrtoint ptr %i.dg to i64
  %i.dl = ptrtoint ptr %i.dj to i64               ; 2 uses
  %i.dm = sub i64 %i.dk, %i.dl                    ; 5 uses
  %i.dn = icmp eq i64 %i.dm, 9223372036854775800
  br i1 %i.dn, label %bb.t, label %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i45

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.140) #41
  unreachable

_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i45: ; preds = %bb.s
  %i.do = ashr exact i64 %i.dm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i46 = tail call i64 @llvm.umax.i64(i64 %i.do, i64 1)
  %i.dp = add nsw i64 %.sroa.speculated.i.i.i.i.i46, %i.do ; 2 uses
  %i.dq = icmp ult i64 %i.dp, %i.do
  %i.dr = tail call i64 @llvm.umin.i64(i64 %i.dp, i64 1152921504606846975)
  %i.ds = select i1 %i.dq, i64 1152921504606846975, i64 %i.dr ; 3 uses
  %.not.i.i.i.i.i47 = icmp ne i64 %i.ds, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i47)
  %i.dt = shl nuw nsw i64 %i.ds, 3
  %i.du = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dt) #39 ; 4 uses
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 %i.dm ; 2 uses
  store ptr %.083, ptr %i.dv, align 8, !tbaa !34
  %i.dw = icmp sgt i64 %i.dm, 0
  br i1 %i.dw, label %bb.u, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i48

bb.u:                                             ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i45
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.du, ptr align 8 %i.dj, i64 %i.dm, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i48

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i48: ; preds = %bb.u, %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i45
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.not.i17.i.i.i.i49 = icmp eq ptr %i.dj, null
  br i1 %.not.i17.i.i.i.i49, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i50, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i48
  %i.dy = load ptr, ptr %i.k, align 8, !tbaa !512
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = sub i64 %i.dz, %i.dl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.ea) #40
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i50

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i50: ; preds = %bb.v, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i48
  store ptr %i.du, ptr %3, align 8, !tbaa !508
  store ptr %i.dx, ptr %i.aq, align 8, !tbaa !510
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ds
  store ptr %i.eb, ptr %i.k, align 8, !tbaa !512
  br label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

bb.w:                                             ; preds = %bb.n, %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit
  %i.ec = tail call noundef zeroext i1 @_ZNK6google8protobuf10Reflection19HasFieldWithHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.083)
  br i1 %i.ec, label %bb.x, label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

bb.x:                                             ; preds = %bb.w
  %i.ed = getelementptr inbounds nuw i8, ptr %.083, i64 4
  %.val.i52 = load i32, ptr %i.ed, align 4, !tbaa !43 ; 2 uses
  %.not.i.i53 = icmp ugt i32 %.07281, %.val.i52
  %spec.select.i.i54 = select i1 %.not.i.i53, i32 -1, i32 %.val.i52 ; 2 uses
  %i.ee = load ptr, ptr %i.aq, align 8, !tbaa !510 ; 4 uses
  %i.ef = load ptr, ptr %i.k, align 8, !tbaa !512
  %.not.i.i.i55 = icmp eq ptr %i.ee, %i.ef
  br i1 %.not.i.i.i55, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %.083, ptr %i.ee, align 8, !tbaa !34
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %i.eg, ptr %i.aq, align 8, !tbaa !510
  br label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

bb.z:                                             ; preds = %bb.x
  %i.eh = load ptr, ptr %3, align 8, !tbaa !508   ; 4 uses
  %i.ei = ptrtoint ptr %i.ee to i64
  %i.ej = ptrtoint ptr %i.eh to i64               ; 2 uses
  %i.ek = sub i64 %i.ei, %i.ej                    ; 5 uses
  %i.el = icmp eq i64 %i.ek, 9223372036854775800
  br i1 %i.el, label %bb.aa, label %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i56

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.140) #41
  unreachable

_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i56: ; preds = %bb.z
  %i.em = ashr exact i64 %i.ek, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i57 = tail call i64 @llvm.umax.i64(i64 %i.em, i64 1)
  %i.en = add nsw i64 %.sroa.speculated.i.i.i.i.i57, %i.em ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.em
  %i.ep = tail call i64 @llvm.umin.i64(i64 %i.en, i64 1152921504606846975)
  %i.eq = select i1 %i.eo, i64 1152921504606846975, i64 %i.ep ; 3 uses
  %.not.i.i.i.i.i58 = icmp ne i64 %i.eq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i58)
  %i.er = shl nuw nsw i64 %i.eq, 3
  %i.es = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.er) #39 ; 4 uses
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 %i.ek ; 2 uses
  store ptr %.083, ptr %i.et, align 8, !tbaa !34
  %i.eu = icmp sgt i64 %i.ek, 0
  br i1 %i.eu, label %bb.ab, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i59

bb.ab:                                            ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i56
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.es, ptr align 8 %i.eh, i64 %i.ek, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i59

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i59: ; preds = %bb.ab, %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i56
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %.not.i17.i.i.i.i60 = icmp eq ptr %i.eh, null
  br i1 %.not.i17.i.i.i.i60, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i61, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i59
  %i.ew = load ptr, ptr %i.k, align 8, !tbaa !512
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = sub i64 %i.ex, %i.ej
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.ey) #40
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i61

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i61: ; preds = %bb.ac, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i59
  store ptr %i.es, ptr %3, align 8, !tbaa !508
  store ptr %i.ev, ptr %i.aq, align 8, !tbaa !510
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.eq
  store ptr %i.ez, ptr %i.k, align 8, !tbaa !512
  br label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit: ; preds = %bb.o, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i61, %bb.y, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i50, %bb.r, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, %bb.i, %bb.g, %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit, %bb.w
  %.1 = phi i32 [ %.07281, %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit ], [ %.07281, %bb.g ], [ %spec.select.i.i43, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i50 ], [ %.07281, %bb.w ], [ %spec.select.i.i54, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i61 ], [ %spec.select.i.i, %bb.i ], [ %spec.select.i.i, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %spec.select.i.i43, %bb.r ], [ %spec.select.i.i54, %bb.y ], [ %.07281, %bb.o ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.083, i64 88 ; 2 uses
  %.not = icmp eq ptr %i.fa, %i.ao
  br i1 %.not, label %._crit_edge, label %bb.f
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS3_12_GLOBAL__N_117FieldNumberSorterEEvT_SE_T0_(ptr %0, ptr %1) unnamed_addr #16 {
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
  %scevgep.i.i = getelementptr i8, ptr %0, i64 8  ; 3 uses
  br i1 %i.h, label %.lr.ph.i.i.i, label %bb.g

end_hunk_0
begin_hunk_1_@_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS3_12_GLOBAL__N_117FieldNumberSorterEEvT_SE_T0_:bb.a
  %i.x = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !34 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 4
  %.val.val.i.i.i.i = load i32, ptr %i.y, align 4, !tbaa !43 ; 2 uses
  %.sroa.0.06.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i, i64 -8 ; 2 uses
  %i.z = load ptr, ptr %.sroa.0.06.i.i.i.i, align 8, !tbaa !34 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  %.val2.i7.i.i13.i.i = load i32, ptr %i.aa, align 4, !tbaa !43
  %i.ab = icmp slt i32 %.val.val.i.i.i.i, %.val2.i7.i.i13.i.i
  br i1 %i.ab, label %.lr.ph.i.i15.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_.exit.i.i.i

.lr.ph.i.i15.i.i:                                 ; preds = %.lr.ph.i12.i.i, %.lr.ph.i.i15.i.i
  %i.ac = phi ptr [ %i.ad, %.lr.ph.i.i15.i.i ], [ %i.z, %.lr.ph.i12.i.i ]
  %.sroa.0.09.i.i16.i.i = phi ptr [ %.sroa.0.0.i.i18.i.i, %.lr.ph.i.i15.i.i ], [ %.sroa.0.06.i.i.i.i, %.lr.ph.i12.i.i ] ; 3 uses
  %.sroa.03.08.i.i17.i.i = phi ptr [ %.sroa.0.09.i.i16.i.i, %.lr.ph.i.i15.i.i ], [ %.sroa.0.07.i.i.i, %.lr.ph.i12.i.i ]
  store ptr %i.ac, ptr %.sroa.03.08.i.i17.i.i, align 8, !tbaa !34
  %.sroa.0.0.i.i18.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i16.i.i, i64 -8 ; 2 uses
  %i.ad = load ptr, ptr %.sroa.0.0.i.i18.i.i, align 8, !tbaa !34 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 4
  %.val2.i.i.i19.i.i = load i32, ptr %i.ae, align 4, !tbaa !43
  %i.af = icmp slt i32 %.val.val.i.i.i.i, %.val2.i.i.i19.i.i
  br i1 %i.af, label %.lr.ph.i.i15.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_.exit.i.i.i, !llvm.loop !514

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_.exit.i.i.i: ; preds = %.lr.ph.i.i15.i.i, %.lr.ph.i12.i.i
  %.sroa.03.0.lcssa.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i, %.lr.ph.i12.i.i ], [ %.sroa.0.09.i.i16.i.i, %.lr.ph.i.i15.i.i ]
  store ptr %i.x, ptr %.sroa.03.0.lcssa.i.i.i.i, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 8 ; 2 uses
  %.not.i14.i.i = icmp eq ptr %i.ag, %1
  br i1 %.not.i14.i.i, label %_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_T0_.exit, label %.lr.ph.i12.i.i, !llvm.loop !516

bb.g:                                             ; preds = %bb.b
  %.not17.i22.i.i = icmp eq ptr %scevgep.i.i, %1
  br i1 %.not17.i22.i.i, label %_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_T0_.exit, label %.lr.ph.i23.i.i

.lr.ph.i23.i.i:                                   ; preds = %bb.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i
  %.sroa.0.019.i24.i.i = phi ptr [ %.sroa.0.0.i31.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i ], [ %scevgep.i.i, %bb.g ] ; 6 uses
  %.pn18.i25.i.i = phi ptr [ %.sroa.0.019.i24.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i ], [ %0, %bb.g ] ; 4 uses
  %i.ah = load ptr, ptr %.sroa.0.019.i24.i.i, align 8, !tbaa !34 ; 2 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 4
  %.val.i.i26.i.i = load i32, ptr %i.aj, align 4, !tbaa !43 ; 3 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 4
  %.val1.i.i27.i.i = load i32, ptr %i.ak, align 4, !tbaa !43
  %i.al = icmp slt i32 %.val.i.i26.i.i, %.val1.i.i27.i.i
  br i1 %i.al, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i23.i.i
  %i.am = ptrtoint ptr %.sroa.0.019.i24.i.i to i64
  %i.an = sub i64 %i.am, %i.b                     ; 3 uses
  %i.ao = ashr exact i64 %i.an, 3                 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 1
  br i1 %i.ap, label %bb.i, label %bb.j, !prof !8

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn18.i25.i.i, i64 16
  %i.ar = sub nsw i64 0, %i.ao
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.an, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i

bb.j:                                             ; preds = %bb.h
  %i.at = icmp eq i64 %i.an, 8
  br i1 %i.at, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %.pn18.i25.i.i, i64 8
  store ptr %i.ai, ptr %i.au, align 8, !tbaa !34
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i

bb.l:                                             ; preds = %.lr.ph.i23.i.i
  %i.av = load ptr, ptr %.pn18.i25.i.i, align 8, !tbaa !34 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  %.val2.i7.i.i28.i.i = load i32, ptr %i.aw, align 4, !tbaa !43
  %i.ax = icmp slt i32 %.val.i.i26.i.i, %.val2.i7.i.i28.i.i
  br i1 %i.ax, label %.lr.ph.i.i33.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i

.lr.ph.i.i33.i.i:                                 ; preds = %bb.l, %.lr.ph.i.i33.i.i
  %i.ay = phi ptr [ %i.az, %.lr.ph.i.i33.i.i ], [ %i.av, %bb.l ]
  %.sroa.0.09.i.i34.i.i = phi ptr [ %.sroa.0.0.i.i36.i.i, %.lr.ph.i.i33.i.i ], [ %.pn18.i25.i.i, %bb.l ] ; 3 uses
  %.sroa.03.08.i.i35.i.i = phi ptr [ %.sroa.0.09.i.i34.i.i, %.lr.ph.i.i33.i.i ], [ %.sroa.0.019.i24.i.i, %bb.l ]
  store ptr %i.ay, ptr %.sroa.03.08.i.i35.i.i, align 8, !tbaa !34
  %.sroa.0.0.i.i36.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i34.i.i, i64 -8 ; 2 uses
  %i.az = load ptr, ptr %.sroa.0.0.i.i36.i.i, align 8, !tbaa !34 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 4
  %.val2.i.i.i37.i.i = load i32, ptr %i.ba, align 4, !tbaa !43
  %i.bb = icmp slt i32 %.val.i.i26.i.i, %.val2.i.i.i37.i.i
  br i1 %i.bb, label %.lr.ph.i.i33.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i, !llvm.loop !514

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i: ; preds = %.lr.ph.i.i33.i.i, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i30.i.i = phi ptr [ %0, %bb.k ], [ %0, %bb.i ], [ %0, %bb.j ], [ %.sroa.0.019.i24.i.i, %bb.l ], [ %.sroa.0.09.i.i34.i.i, %.lr.ph.i.i33.i.i ]
  store ptr %i.ah, ptr %.sink.i30.i.i, align 8, !tbaa !34
  %.sroa.0.0.i31.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i24.i.i, i64 8 ; 2 uses
  %.not.i32.i.i = icmp eq ptr %.sroa.0.0.i31.i.i, %1
  br i1 %.not.i32.i.i, label %_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_T0_.exit, label %.lr.ph.i23.i.i, !llvm.loop !515

_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_.exit.i.i.i, %bb.a, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_T0_.exit.i.i, %bb.g
  ret void
}

declare void @_ZNK6google8protobuf8internal12ExtensionSet12AppendToListEPKNS0_10DescriptorEPKNS0_14DescriptorPoolEPSt6vectorIPKNS0_15FieldDescriptorESaISC_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = tail call noundef i32 @_ZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb1EDnEEiRKNS0_7MessageERKNS0_10DescriptorET0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr null)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load i32, ptr %i.d, align 4, !tbaa !36   ; 2 uses
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
define linkonce_odr hidden noundef i32 @_ZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb1EDnEEiRKNS0_7MessageERKNS0_10DescriptorET0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !148
  %.fr = freeze i32 %i.b                          ; 2 uses
  %i.c = zext i32 %.fr to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !511
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !254  ; 3 uses
  %i.i = load i32, ptr %0, align 8, !tbaa !246
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
  %.03352.us = phi ptr [ %i.ao, %.critedge.us ], [ %i.h, %.lr.ph ] ; 6 uses
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
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !51 ; 2 uses
  %.0.i.us = select i1 %.not.i.us, ptr null, ptr %i.u ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.us) ]
  %i.v = load i32, ptr %i.m, align 8, !tbaa !513
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !55
  %i.ac = ptrtoint ptr %.0.i.us to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 56
  %sext.us = shl i64 %i.af, 32
  %i.ag = ashr exact i64 %sext.us, 30
  %i.ah = getelementptr inbounds i8, ptr %i.x, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !64
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.03352.us, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !43
  %i.am = sext i32 %i.al to i64
  %.not42.us = icmp eq i64 %i.aj, %i.am
  br i1 %.not42.us, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread, label %.critedge.us

_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit.us: ; preds = %.lr.ph.split.us
  %i.an = tail call noundef zeroext i1 @_ZNK6google8protobuf10Reflection19HasFieldWithHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.03352.us)
  br i1 %i.an, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread, label %.critedge.us

.critedge.us:                                     ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit.us, %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %.03352.us, i64 88 ; 2 uses
  %.not.us.not = icmp eq ptr %i.ao, %i.l
  br i1 %.not.us.not, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge ], [ -1, %.lr.ph ]
  %.03352 = phi ptr [ %i.ch, %.critedge ], [ %i.h, %.lr.ph ] ; 9 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.03352, i64 3
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = and i8 %i.aq, 8
  %.not.i.i.not = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.not, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split
  %i.as = getelementptr inbounds nuw i8, ptr %.03352, i64 1
  %i.at = load i8, ptr %i.as, align 1
  %i.au = and i8 %i.at, 16
  %.not.i = icmp eq i8 %i.au, 0
  %i.av = getelementptr inbounds nuw i8, ptr %.03352, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !51 ; 2 uses
  %.0.i = select i1 %.not.i, ptr null, ptr %i.aw  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i) ]
  %i.ax = load i32, ptr %i.m, align 8, !tbaa !513
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !52
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !55
  %i.be = ptrtoint ptr %.0.i to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = sdiv exact i64 %i.bg, 56
  %sext = shl i64 %i.bh, 32
  %i.bi = ashr exact i64 %sext, 30
  %i.bj = getelementptr inbounds i8, ptr %i.az, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !64
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %.03352, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !43
  %i.bo = sext i32 %i.bn to i64
  %.not42 = icmp eq i64 %i.bl, %i.bo
  br i1 %.not42, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread, label %.critedge

_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit: ; preds = %.lr.ph.split
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv.next
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !64 ; 3 uses
  %.not41 = icmp eq i32 %i.bq, -1
  br i1 %.not41, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit
  %i.br = lshr i32 %i.bq, 5
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !64
  %i.bv = and i32 %i.bq, 31
  %i.bw = lshr i32 %i.bu, %i.bv
  %i.bx = trunc i32 %i.bw to i1
  br i1 %i.bx, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.by = tail call noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor12has_presenceEv(ptr noundef nonnull align 8 dereferenceable(88) %.03352)
  br i1 %i.by, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bz = getelementptr i8, ptr %.03352, i64 32
  %.val.i = load ptr, ptr %i.bz, align 8, !tbaa !103 ; 2 uses
  %.not.i.i44 = icmp eq ptr %.val.i, null
  br i1 %.not.i.i44, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit, label %_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.i

_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.f
  %i.ca = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !296
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 51
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !32, !range !86, !noundef !51
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit

_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit: ; preds = %bb.f, %_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.i
  %i.cf = tail call noundef zeroext i1 @_ZNK6google8protobuf10Reflection31IsImplicitPresenceFieldNonEmptyERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.03352)
  br i1 %i.cf, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread, label %.critedge

bb.g:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit
  %i.cg = tail call noundef zeroext i1 @_ZNK6google8protobuf10Reflection19HasFieldWithHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.03352)
  br i1 %i.cg, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread, label %.critedge

.critedge:                                        ; preds = %bb.d, %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit, %bb.g, %bb.c
  %i.ch = getelementptr inbounds nuw i8, ptr %.03352, i64 88 ; 2 uses
  %.not.not = icmp eq ptr %i.ch, %i.l
  br i1 %.not.not, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread, label %.lr.ph.split

_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread: ; preds = %.critedge, %bb.g, %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit, %bb.c, %bb.e, %_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.i, %.critedge.us, %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit.us, %bb.b, %bb.a
  %.not.lcssa = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit.us ], [ 0, %.critedge.us ], [ 1, %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit ], [ 1, %bb.g ], [ 0, %.critedge ], [ 1, %_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.i ], [ 1, %bb.e ], [ 1, %bb.c ]
  ret i32 %.not.lcssa
}

declare noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet7IsEmptyEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf10Reflection28IsEmptyIgnoringUnknownFieldsERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !281
  %i.c = icmp eq ptr %1, %i.b
  br i1 %i.c, label %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.f = tail call noundef i32 @_ZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb1EDnEEiRKNS0_7MessageERKNS0_10DescriptorET0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(160) %i.e, ptr null)
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36   ; 2 uses
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
define noundef zeroext i1 @_ZNK6google8protobuf10Reflection7IsEmptyERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !281
  %i.c = icmp eq ptr %1, %i.b
  br i1 %i.c, label %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit.thread6, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.f = tail call noundef i32 @_ZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb1EDnEEiRKNS0_7MessageERKNS0_10DescriptorET0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(160) %i.e, ptr null)
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit.thread6

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36   ; 2 uses
  %.not4.i = icmp eq i32 %i.h, -1
  br i1 %.not4.i, label %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit.thread, label %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit

_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit: ; preds = %bb.c
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.k = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet7IsEmptyEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j)
  br i1 %i.k, label %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit.thread, label %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit.thread6

_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit.thread: ; preds = %bb.c, %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !37   ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %bb.d, label %_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE.exit, !prof !39

bb.d:                                             ; preds = %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit.thread
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  br label %_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE.exit

_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE.exit: ; preds = %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit.thread, %bb.d
  %.0.i.i = phi ptr [ %i.q, %bb.d ], [ @_ZZN6google8protobuf15UnknownFieldSet16default_instanceEvE8instance, %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit.thread ]
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !504
  %i.t = icmp eq i32 %i.s, 0
  br label %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit.thread6

_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit.thread6: ; preds = %bb.b, %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit, %_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE.exit, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ false, %_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE.exit ], [ %i.t, %_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE.exit ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6google8protobuf10Reflection8GetInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !103  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 4 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.e, ptr noundef nonnull %2, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.15)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.h = load i8, ptr %i.g, align 1               ; 3 uses
  %i.i = and i8 %i.h, 32
  %.not21 = icmp eq i8 %i.i, 0
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.e, ptr noundef nonnull %2, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25)
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.k = load i8, ptr %i.j, align 2, !tbaa !98
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !99
  %.not = icmp eq i32 %i.n, 1
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_130ReportReflectionUsageTypeErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcNS0_8internal19FieldDescriptorLite7CppTypeE(ptr noundef %i.e, ptr noundef nonnull %2, ptr noundef nonnull @.str.24, i32 noundef 1)
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = and i8 %i.h, 8
  %.not22 = icmp eq i8 %i.o, 0
  br i1 %.not22, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !36
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.w = load i32, ptr %i.v, align 8, !tbaa !32   ; 2 uses
  store i32 %i.w, ptr %i.a, align 4, !tbaa !64
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
