inline.NumInlined: 487
inline.NumDeleted: 222
begin_hunk_0_@_ZNK16OpenColorIO_v2_527MixingColorSpaceManagerImpl20getMixingSpaceUINameEm:bb.a
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  ret ptr %i.k

end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_527MixingColorSpaceManagerImpl22setSelectedMixingSpaceEPKc:bb.a

bb.b:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread19
  %.01525 = phi i64 [ 0, %.lr.ph ], [ %i.q, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread19 ] ; 3 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.01525 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !40
  %i.n = icmp eq i64 %i.m, %i.i
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_527MixingColorSpaceManagerImpl21getMixingEncodingNameEm:bb.a
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  ret ptr %i.k

end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_527MixingColorSpaceManagerImpl25setSelectedMixingEncodingEPKc:bb.a

bb.b:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread19
  %.01525 = phi i64 [ 0, %.lr.ph ], [ %i.q, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread19 ] ; 3 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.01525 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !40
  %i.n = icmp eq i64 %i.m, %i.i
end_hunk_3
begin_hunk_4_@_ZNK16OpenColorIO_v2_527MixingColorSpaceManagerImpl9serializeERSo:bb.a

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.18, i64 noundef 17) ; 0 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !103 ; 5 uses
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !103 ; 3 uses
  %.not18 = icmp eq ptr %i.ak, %i.al
  br i1 %.not18, label %._crit_edge, label %.lr.ph.preheader._crit_edge

.lr.ph.preheader._crit_edge:                      ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.pre22 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !40
  %.pre = load ptr, ptr %i.ak, align 8, !tbaa !48
end_hunk_4
begin_hunk_5_@llvm.log10.f32
declare float @llvm.log10.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24
end_hunk_5
