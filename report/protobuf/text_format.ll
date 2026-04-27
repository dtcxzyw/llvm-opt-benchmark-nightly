inline.NumInlined: 5150
inline.NumDeleted: 1899
begin_hunk_0_@_ZNK6google8protobuf10TextFormat7Printer12PrintMessageERKNS0_7MessageEPNS1_17BaseTextGeneratorE:bb.a
_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i31: ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !65
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.ac, ptr %3, align 8, !tbaa !487
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !490
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !491
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !486
  %i.ae = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #39
          to label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i36 unwind label %bb.g ; 5 uses

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i36: ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i31
  %i.af = getelementptr inbounds nuw i8, ptr %.pre, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !65
  %i.ah = load i64, ptr %i.ac, align 8
end_hunk_0
