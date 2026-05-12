inline.NumInlined: 784
inline.NumDeleted: 459
begin_hunk_0_@_ZNK6google8protobuf6Struct18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal12MapSorterPtrINS0_3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEEEEC2ERKSB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !48     ; 3 uses
  %i.b = zext i32 %i.a to i64                     ; 3 uses
  store i64 %i.b, ptr %0, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not = icmp eq i32 %i.a, 0
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal12MapSorterPtrINS0_3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEEEEC2ERKSB_:bb.a
  br label %_ZSt4sortIPPKvN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SE_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = shl nuw nsw i64 %i.b, 3                  ; 2 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #28 ; 7 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !55
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %3 = load i32, ptr %2, align 4, !tbaa !46, !noalias !81 ; 4 uses
  %.not12.i.i.a = icmp eq i32 %3, 0
  br i1 %.not12.i.i.a, label %._crit_edge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32, !noalias !81
  %i.h = zext i32 %3 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal12MapSorterPtrINS0_3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEEEEC2ERKSB_:bb.a
  %i.n = load ptr, ptr %i.m, align 8
  br label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer

._crit_edge:                                      ; preds = %bb.d, %.preheader.preheader, %.preheader, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d ; 3 uses
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.q = shl nuw nsw i64 %i.p, 1
  %i.r = xor i64 %i.q, 126
  invoke void @_ZSt16__introsort_loopIPPKvlN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEvT_SI_T0_T1_(ptr noundef nonnull %i.e, ptr noundef nonnull %i.o, i64 noundef %i.r)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %._crit_edge
  %i.s = icmp ugt i32 %i.a, 16
  br i1 %i.s, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.noexc
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8internal12MapSorterPtrINS0_3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEEEEC2ERKSB_:bb.a

.preheader.preheader:                             ; preds = %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit
  %.0.i.i54 = add i32 %.sroa.12.027.ph, 1         ; 2 uses
  %i.am = icmp ult i32 %.0.i.i54, %3
  br i1 %i.am, label %.lr.ph56, label %._crit_edge

.preheader:                                       ; preds = %.lr.ph56
  %.0.i.i = add i32 %.0.i.i55, 1                  ; 2 uses
  %i.an = icmp ult i32 %.0.i.i, %3
  br i1 %i.an, label %.lr.ph56, label %._crit_edge, !llvm.loop !80

.lr.ph56:                                         ; preds = %.preheader.preheader, %.preheader
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf8internal12MapSorterPtrINS0_3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEEEEC2ERKSB_:bb.a
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.preheader, label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer, !llvm.loop !80

_ZSt4sortIPPKvN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SE_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIPPKvN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEvT_T0_.exit.i.i.i.i, %bb.h, %.thread
  ret void

_ZNKSt14default_deleteIA_PKvEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i: ; preds = %bb.i
end_hunk_4
