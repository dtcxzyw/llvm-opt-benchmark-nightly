inline.NumInlined: 675
inline.NumDeleted: 297
begin_hunk_0_@_ZN10ODDLParser13OpenDDLParser14StdLogCallbackB5cxx11EP8_IO_FILE:bb.a
; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ODDLParser13OpenDDLParser14setLogCallbackESt8functionIFvNS_11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %2 = alloca %"class.std::function", align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvN10ODDLParser11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSB_.exit.i, label %bb.b
end_hunk_0
begin_hunk_1_@_ZN10ODDLParser13OpenDDLParser14setLogCallbackESt8functionIFvNS_11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE:bb.a
bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.e

end_hunk_1
begin_hunk_2_@_ZN10ODDLParser13OpenDDLParser14setLogCallbackESt8functionIFvNS_11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE:bb.a

_ZNSt8functionIFvN10ODDLParser11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSB_.exit.i: ; preds = %bb.c, %bb.a
  %i.k = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load <2 x ptr>, ptr %i.l, align 8
  %i.n = load ptr, ptr %i.l, align 8              ; 2 uses
  store <2 x ptr> %i.m, ptr %i.a, align 8
  store <2 x ptr> %i.k, ptr %i.l, align 8
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvN10ODDLParser11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSERKSB_.exit, label %bb.g
end_hunk_2
