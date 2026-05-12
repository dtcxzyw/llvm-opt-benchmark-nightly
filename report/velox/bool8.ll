inline.NumInlined: 388
inline.NumDeleted: 211
begin_hunk_0_@_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEEC2ERKNS_6StatusE:bb.a
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !74
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.i, label %bb.b

end_hunk_0
begin_hunk_1_@_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEEC2ERKNS_6StatusE:bb.a
          to label %.noexc unwind label %bb.p     ; 9 uses

.noexc:                                           ; preds = %bb.b
  %6 = load ptr, ptr %1, align 8, !tbaa !74       ; 5 uses
  %i.e = load i8, ptr %6, align 8, !tbaa !91
  store i8 %i.e, ptr %i.d, align 8, !tbaa !91
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !23
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !9    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.k, ptr %i.a, align 8, !tbaa !32
end_hunk_1
begin_hunk_2_@_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEEC2ERKNS_6StatusE:bb.a
  store i8 0, ptr %i.t, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !97   ; 2 uses
  %i.y = load <2 x ptr>, ptr %i.v, align 8, !tbaa !90
  store <2 x ptr> %i.y, ptr %i.u, align 8, !tbaa !90
end_hunk_2
