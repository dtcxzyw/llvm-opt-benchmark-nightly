inline.NumInlined: 43590
inline.NumDeleted: 6060
begin_hunk_0_@_ZNK5arrow12StructScalar5fieldENS_8FieldRefE:bb.a
bb.a:
  %3 = alloca %"class.arrow::Result.86", align 8  ; 15 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %5 = alloca %"class.std::shared_ptr.56", align 16 ; 5 uses
  %6 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK5arrow12StructScalar5fieldENS_8FieldRefE:bb.a
_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  store ptr null, ptr %0, align 8, !tbaa !84
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load <2 x ptr>, ptr %5, align 16, !tbaa !200
  store <2 x ptr> %i.az, ptr %i.ay, align 8, !tbaa !200
  %i.ba = load ptr, ptr %i.ap, align 8, !tbaa !201 ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.p
end_hunk_1
begin_hunk_2_@_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow16DictionaryScalar15GetEncodedValueEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.62") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.56", align 16 ; 5 uses
  %3 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_2
begin_hunk_3_@_ZNK5arrow16DictionaryScalar15GetEncodedValueEv:bb.a
_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  store ptr null, ptr %0, align 8, !tbaa !84
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load <2 x ptr>, ptr %2, align 16, !tbaa !200
  store <2 x ptr> %i.q, ptr %i.p, align 8, !tbaa !200
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !201  ; 8 uses
  %.not.i.i6 = icmp eq ptr %i.r, null
  br i1 %.not.i.i6, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f
end_hunk_3
begin_hunk_4_@_ZNK5arrow6Scalar6CastToESt10shared_ptrINS_8DataTypeEE:bb.a
  %3 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %5 = alloca %"struct.arrow::(anonymous namespace)::ToTypeVisitor", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.56", align 16 ; 5 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !75, !range !82, !noundef !83
end_hunk_4
begin_hunk_5_@_ZNK5arrow6Scalar6CastToESt10shared_ptrINS_8DataTypeEE:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %0, align 8, !tbaa !84
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load <2 x ptr>, ptr %6, align 16, !tbaa !200
  store <2 x ptr> %i.ai, ptr %i.ah, align 8, !tbaa !200
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !201 ; 8 uses
  %.not.i.i6 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i6, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m
end_hunk_5
