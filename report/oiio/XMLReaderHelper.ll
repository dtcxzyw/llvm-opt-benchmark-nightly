inline.NumInlined: 699
inline.NumDeleted: 274
begin_hunk_0_@_ZNK16OpenColorIO_v2_521XmlReaderElementStack5frontEv
define hidden void @_ZNK16OpenColorIO_v2_521XmlReaderElementStack5frontEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62   ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !101
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_520XmlReaderSOPValueElt3endEv:bb.a
          to label %_ZNSt6vectorIdSaIdEEaSEOS1_.exit unwind label %bb.b

_ZNSt6vectorIdSaIdEEaSEOS1_.exit:                 ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !104    ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !107
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_520XmlReaderSOPValueElt3endEv:bb.a
bb.w:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_59CDLOpDataEEC2ERKS2_.exit
  %i.cb = load ptr, ptr %6, align 16, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !112
  %i.ce = load <2 x double>, ptr %i.f, align 8, !tbaa !112
end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_520XmlReaderSOPValueElt3endEv:bb.a
bb.ab:                                            ; preds = %bb.aa
  %i.cl = load ptr, ptr %6, align 16, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !112
  %i.co = load <2 x double>, ptr %i.f, align 8, !tbaa !112
end_hunk_3
begin_hunk_4_@_ZN16OpenColorIO_v2_520XmlReaderSOPValueElt3endEv:bb.a
bb.af:                                            ; preds = %bb.ae
  %i.cu = load ptr, ptr %6, align 16, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !112
  %i.cx = load <2 x double>, ptr %i.f, align 8, !tbaa !112
end_hunk_4
begin_hunk_5_@_ZN16OpenColorIO_v2_522XmlReaderSaturationElt3endEv:bb.a
          to label %_ZNSt6vectorIdSaIdEEaSEOS1_.exit unwind label %bb.b

_ZNSt6vectorIdSaIdEEaSEOS1_.exit:                 ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !104    ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !107
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_5
begin_hunk_6_@_ZN16OpenColorIO_v2_522XmlReaderSaturationElt3endEv:bb.a

bb.w:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_59CDLOpDataEEC2ERKS2_.exit
  %i.cb = load ptr, ptr %6, align 16, !tbaa !109
  %i.cc = load double, ptr %i.f, align 8, !tbaa !112
  invoke void @_ZN16OpenColorIO_v2_59CDLOpData13setSaturationEd(ptr noundef nonnull align 8 dereferenceable(256) %i.cb, double noundef %i.cc)
          to label %bb.z unwind label %bb.y
end_hunk_6
