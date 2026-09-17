Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/static_string?download=true
inline.NumInlined: 13637
inline.NumDeleted: 1357
loop-unroll.NumCompletelyUnrolled: 5361
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 5371
loop-unroll.NumUnrolledNotLatch: 27
begin_hunk_0_@_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE7compareEmmPKcm
define weak_odr hidden noundef i32 @_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE7compareEmmPKcm(ptr noundef nonnull align 2 dereferenceable(423) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 %1 ; 3 uses
  %i.c = load i16, ptr %0, align 2, !tbaa !25
  %i.d = zext i16 %i.c to i64                     ; 2 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE13capped_lengthEmm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE13capped_lengthEmm.exit: ; preds = %bb.a
  %i.f = sub nuw nsw i64 %i.d, %1
  %.sroa.speculated.i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.f) ; 6 uses
  %i.g = icmp ult i64 %.sroa.speculated.i, %4
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE13capped_lengthEmm.exit
  %i.h = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.c
  %i.i = tail call i32 @memcmp(ptr noundef nonnull %i.b, ptr noundef %3, i64 noundef %.sroa.speculated.i) #32
  %.fr24.i = freeze i32 %i.i
  %i.j = icmp slt i32 %.fr24.i, 1
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, label %_ZN5boost14static_strings6detail23lexicographical_compareIcSt11char_traitsIcEEEiPKT_mS7_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %bb.c
  br label %_ZN5boost14static_strings6detail23lexicographical_compareIcSt11char_traitsIcEEEiPKT_mS7_m.exit

bb.d:                                             ; preds = %_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE13capped_lengthEmm.exit
  %i.k = icmp samesign ugt i64 %.sroa.speculated.i, %4
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = icmp eq i64 %4, 0
  br i1 %i.l, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit16.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit16.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit16.i:   ; preds = %bb.e
  %i.m = tail call i32 @memcmp(ptr noundef nonnull %i.b, ptr noundef %3, i64 noundef %4) #32
  %.fr.i = freeze i32 %i.m
  %i.n = icmp sgt i32 %.fr.i, -1
  br i1 %i.n, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit16.thread.i, label %_ZN5boost14static_strings6detail23lexicographical_compareIcSt11char_traitsIcEEEiPKT_mS7_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit16.thread.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit16.i, %bb.e
  br label %_ZN5boost14static_strings6detail23lexicographical_compareIcSt11char_traitsIcEEEiPKT_mS7_m.exit

bb.f:                                             ; preds = %bb.d
  %i.o = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.o, label %_ZN5boost14static_strings6detail23lexicographical_compareIcSt11char_traitsIcEEEiPKT_mS7_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call i32 @memcmp(ptr noundef nonnull %i.b, ptr noundef %3, i64 noundef %.sroa.speculated.i) #32
  br label %_ZN5boost14static_strings6detail23lexicographical_compareIcSt11char_traitsIcEEEiPKT_mS7_m.exit

_ZN5boost14static_strings6detail23lexicographical_compareIcSt11char_traitsIcEEEiPKT_mS7_m.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit16.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit16.thread.i, %bb.f, %bb.g
  %.0.i = phi i32 [ -1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit16.i ], [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ], [ -1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i ], [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit16.thread.i ], [ %i.p, %bb.g ], [ 0, %bb.f ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6substrEmm(ptr dead_on_unwind noalias writable sret(%"class.boost::static_strings::basic_static_string") align 2 %0, ptr noundef nonnull align 2 dereferenceable(423) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %1, align 2, !tbaa !25
  %i.b = zext i16 %i.a to i64                     ; 2 uses
  %i.c = icmp ugt i64 %2, %i.b
  br i1 %i.c, label %bb.b, label %_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE13capped_lengthEmm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE13capped_lengthEmm.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %2
  %i.f = sub nuw nsw i64 %i.b, %2
  %.sroa.speculated.i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %i.f)
  tail call void @_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEEC1EPKcm(ptr noundef nonnull align 2 dereferenceable(423) %0, ptr noundef nonnull %i.e, i64 noundef %.sroa.speculated.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden { ptr, i64 } @_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE7subviewEmm(ptr noundef nonnull align 2 dereferenceable(423) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !25
  %i.b = zext i16 %i.a to i64                     ; 2 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE13capped_lengthEmm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE13capped_lengthEmm.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %1
  %i.f = sub nuw nsw i64 %i.b, %1
  %.sroa.speculated.i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.f)
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.speculated.i, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE4copyEPcmm(ptr noundef nonnull align 2 dereferenceable(423) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !25
  %i.b = zext i16 %i.a to i64                     ; 2 uses
  %i.c = icmp ugt i64 %3, %i.b
  br i1 %i.c, label %bb.b, label %_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE13capped_lengthEmm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE13capped_lengthEmm.exit: ; preds = %bb.a
  %i.d = sub nuw nsw i64 %i.b, %3
  %.sroa.speculated.i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.d) ; 3 uses
  %i.e = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE13capped_lengthEmm.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %i.g, i64 %.sroa.speculated.i, i1 false)
  br label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit

_ZNSt11char_traitsIcE4copyEPcPKcm.exit:           ; preds = %_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE13capped_lengthEmm.exit, %bb.c
  ret i64 %.sroa.speculated.i
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6resizeEm(ptr noundef nonnull align 2 dereferenceable(423) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 420
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.2) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 2, !tbaa !25
  %i.c = zext i16 %i.b to i64                     ; 3 uses
  %i.d = icmp samesign ugt i64 %1, %i.c
  br i1 %i.d, label %bb.d, label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6resizeEmc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c
  %i.g = sub nuw nsw i64 %1, %i.c
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.f, i8 0, i64 %i.g, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6resizeEmc.exit

_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6resizeEmc.exit: ; preds = %bb.c, %bb.d
  %i.h = trunc nuw nsw i64 %1 to i16
  store i16 %i.h, ptr %0, align 2, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %1
  store i8 0, ptr %i.j, align 1, !tbaa !26
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6resizeEmc(ptr noundef nonnull align 2 dereferenceable(423) %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 420
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.2) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 2, !tbaa !25
  %i.c = zext i16 %i.b to i64                     ; 3 uses
  %i.d = icmp samesign ugt i64 %1, %i.c
  br i1 %i.d, label %bb.d, label %_ZNSt11char_traitsIcE6assignEPcmc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c
  %i.g = sub nuw nsw i64 %1, %i.c
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.f, i8 %2, i64 %i.g, i1 false)
  br label %_ZNSt11char_traitsIcE6assignEPcmc.exit

_ZNSt11char_traitsIcE6assignEPcmc.exit:           ; preds = %bb.d, %bb.c
  %i.h = trunc nuw nsw i64 %1 to i16
  store i16 %i.h, ptr %0, align 2, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %1
  store i8 0, ptr %i.j, align 1, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE4swapERS4_(ptr noundef nonnull align 2 dereferenceable(423) %0, ptr noundef nonnull align 2 dereferenceable(423) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4 = alloca <{ %"class.boost::static_strings::detail::static_string_base<420, char, std::char_traits<char>>::data::basic_static_string", i8 }>, align 8 ; 4 uses
  %i.a = load i16, ptr %0, align 2, !tbaa !25     ; 2 uses
  %i.b = zext i16 %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.0.0.copyload = load i16, ptr %1, align 2 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(422) %.sroa.4, ptr noundef nonnull align 2 dereferenceable(422) %.sroa.4.0..sroa_idx, i64 422, i1 false)
  store i16 %i.a, ptr %1, align 2, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.d = add nuw nsw i64 %i.b, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(1) %i.c, i64 %i.d, i1 false)
  store i16 %.sroa.0.0.copyload, ptr %0, align 2, !tbaa !25
  %i.e = zext i16 %.sroa.0.0.copyload to i64
  %i.f = add nuw nsw i64 %i.e, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.4, i64 %i.f, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 2 dereferenceable(423) ptr @_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE7replaceEmmRKS4_(ptr noundef nonnull align 2 dereferenceable(423) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 2 dereferenceable(423) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !25
  %i.b = zext i16 %i.a to i64                     ; 2 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE7replaceEmmPKcm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE7replaceEmmPKcm.exit: ; preds = %bb.a
  %i.d = load i16, ptr %3, align 2, !tbaa !25
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 2 uses
  %i.i = sub nuw nsw i64 %i.b, %1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.speculated.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.e
  %i.l = tail call noundef nonnull align 2 dereferenceable(423) ptr @_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_(ptr noundef nonnull align 2 dereferenceable(423) %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.j, ptr noundef nonnull %i.f, ptr noundef nonnull %i.k)
  ret ptr %i.l
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 2 dereferenceable(423) ptr @_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE7replaceEmmPKcm(ptr noundef nonnull align 2 dereferenceable(423) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !25
  %i.b = zext i16 %i.a to i64                     ; 2 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE13capped_lengthEmm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE13capped_lengthEmm.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %1 ; 2 uses
  %i.f = sub nuw nsw i64 %i.b, %1
  %.sroa.speculated.i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.speculated.i
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.i = tail call noundef nonnull align 2 dereferenceable(423) ptr @_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_(ptr noundef nonnull align 2 dereferenceable(423) %0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, ptr noundef %3, ptr noundef %i.h)
  ret ptr %i.i
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 2 dereferenceable(423) ptr @_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE7replaceEmmRKS4_mm(ptr noundef nonnull align 2 dereferenceable(423) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 2 dereferenceable(423) %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %3, align 2, !tbaa !25
  %i.b = zext i16 %i.a to i64                     ; 2 uses
  %i.c = icmp ugt i64 %4, %i.b
  br i1 %i.c, label %bb.b, label %_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE13capped_lengthEmm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE13capped_lengthEmm.exit: ; preds = %bb.a
  %i.d = load i16, ptr %0, align 2, !tbaa !25
  %i.e = zext i16 %i.d to i64                     ; 2 uses
  %i.f = icmp ugt i64 %1, %i.e
  br i1 %i.f, label %bb.c, label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE7replaceEmmPKcm.exit

bb.c:                                             ; preds = %_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE13capped_lengthEmm.exit
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE7replaceEmmPKcm.exit: ; preds = %_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE13capped_lengthEmm.exit
  %i.g = sub nuw nsw i64 %i.b, %4
  %.sroa.speculated.i = tail call noundef i64 @llvm.umin.i64(i64 %5, i64 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %1 ; 2 uses
  %i.l = sub nuw nsw i64 %i.e, %1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.speculated.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.speculated.i
  %i.o = tail call noundef nonnull align 2 dereferenceable(423) ptr @_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_(ptr noundef nonnull align 2 dereferenceable(423) %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.m, ptr noundef nonnull %i.i, ptr noundef nonnull %i.n)
  ret ptr %i.o
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 2 dereferenceable(423) ptr @_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE7replaceEPKcS6_S6_m(ptr noundef nonnull align 2 dereferenceable(423) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.b = tail call noundef nonnull align 2 dereferenceable(423) ptr @_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_(ptr noundef nonnull align 2 dereferenceable(423) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %i.a)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 2 dereferenceable(423) ptr @_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE7replaceEmmPKc(ptr noundef nonnull align 2 dereferenceable(423) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !25
  %i.b = zext i16 %i.a to i64                     ; 2 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE7replaceEmmPKcm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE7replaceEmmPKcm.exit: ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %1 ; 2 uses
  %i.g = sub nuw nsw i64 %i.b, %1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.speculated.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 %i.d
  %i.j = tail call noundef nonnull align 2 dereferenceable(423) ptr @_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_(ptr noundef nonnull align 2 dereferenceable(423) %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, ptr noundef nonnull %3, ptr noundef nonnull %i.i)
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 2 dereferenceable(423) ptr @_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE7replaceEmmmc(ptr noundef nonnull align 2 dereferenceable(423) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef signext %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 %1 ; 3 uses
  %i.c = load i16, ptr %0, align 2, !tbaa !25
  %i.d = zext i16 %i.c to i64                     ; 4 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE13capped_lengthEmm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE13capped_lengthEmm.exit: ; preds = %bb.a
  %i.f = sub nuw nsw i64 %i.d, %1
  %.sroa.speculated.i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.f) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.speculated.i
  %i.h = icmp ugt i64 %3, 420
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE13capped_lengthEmm.exit
  %i.i = sub nuw nsw i64 %i.d, %.sroa.speculated.i ; 2 uses
  %i.j = sub nuw nsw i64 420, %3
  %.not.i = icmp samesign ult i64 %i.i, %i.j
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE13capped_lengthEmm.exit
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.7) #31
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = add nuw nsw i64 %i.d, 1                  ; 2 uses
  %i.l = add nuw nsw i64 %1, %.sroa.speculated.i  ; 2 uses
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = sub nsw i64 %i.k, %i.l
  %i.o = getelementptr i8, ptr %i.b, i64 %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %i.g, i64 %i.n, i1 false)
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i:         ; preds = %bb.f, %bb.e
  %i.p = icmp eq i64 %3, 0
  br i1 %i.p, label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE7replaceEPKcS6_mc.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.b, i8 %4, i64 %3, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE7replaceEPKcS6_mc.exit

_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE7replaceEPKcS6_mc.exit: ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i, %bb.g
  %i.q = add nuw nsw i64 %i.i, %3
  %i.r = trunc nuw nsw i64 %i.q to i16
  store i16 %i.r, ptr %0, align 2, !tbaa !25
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 2 dereferenceable(423) ptr @_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE7replaceEPKcS6_mc(ptr noundef nonnull align 2 dereferenceable(423) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i8 noundef signext %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !25
  %i.b = zext i16 %i.a to i64                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.d = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.e = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.f = icmp ugt i64 %3, 420
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.neg = sub i64 %i.e, %i.d
  %i.g = add i64 %.neg, %i.b                      ; 2 uses
  %i.h = sub nuw nsw i64 420, %3
  %.not = icmp ult i64 %i.g, %i.h
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.7) #31
end_hunk_0
