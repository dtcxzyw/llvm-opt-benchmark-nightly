inline.NumInlined: 3493
inline.NumDeleted: 1066
begin_hunk_0_@_ZN5arrow6Status8FromArgsIJRA53_KcEEES0_NS_10StatusCodeEDpOT_:bb.a
_ZZN5arrow8internal12JoinToStringIJRA53_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA53_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA53_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !1587
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA53_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA53_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !1587
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA53_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !88     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !92
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA53_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !88     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !92
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status7InvalidIJRA35_KcRKiRA34_S2_RKlRA2_S2_EEES0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(35) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(34) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(2) %5) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18, !noalias !1590
  call void @_ZN5arrow8internal12JoinToStringIJRA35_KcRKiRA34_S2_RKlRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(35) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(34) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(2) %5), !noalias !1590
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %6, align 8, !tbaa !88, !noalias !1590 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN5arrow6Status8FromArgsIJRA35_KcRKiRA34_S2_RKlRA2_S2_EEES0_NS_10StatusCodeEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !92, !noalias !1590
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #19
  br label %_ZN5arrow6Status8FromArgsIJRA35_KcRKiRA34_S2_RKlRA2_S2_EEES0_NS_10StatusCodeEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %6, align 8, !tbaa !88, !noalias !1590 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !92, !noalias !1590
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !1590
  resume { ptr, i32 } %i.f

_ZN5arrow6Status8FromArgsIJRA35_KcRKiRA34_S2_RKlRA2_S2_EEES0_NS_10StatusCodeEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !1590
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA26_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(26) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !1593
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1593
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !439, !noalias !1593, !nonnull !40, !align !41
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(26) %2) #18, !noalias !1593
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(26) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !1593 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA26_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !1593
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA26_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !1593
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA26_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !88     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !92
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA26_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !88     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !92
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl20FullyValidateOffsetsIiEENS_6StatusEl(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr readonly captures(none) %.0.val, i64 noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !82
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104  ; 3 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit, label %5

5:                                                ; preds = %bb.a
  %6 = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %7 = load i64, ptr %6, align 8, !tbaa !98
  %8 = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %9 = load i8, ptr %8, align 1, !tbaa !181, !range !75, !noundef !40
  %10 = trunc nuw i8 %9 to i1
  %11 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %12 = load ptr, ptr %11, align 8
  %13 = select i1 %10, ptr %12, ptr null, !prof !182
  %14 = getelementptr inbounds [4 x i8], ptr %13, i64 %7
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit:     ; preds = %bb.a, %5
  %.0.i.i = phi ptr [ %14, %5 ], [ null, %bb.a ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %15 = load i32, ptr %.0.i.i, align 4, !tbaa !3  ; 3 uses
  store i32 %15, ptr %i.b, align 4, !tbaa !3
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !1596
  call void @_ZN5arrow8internal12JoinToStringIJRA59_KcRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(59) @.str.36, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !noalias !1596
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %4, align 8, !tbaa !88, !noalias !1596 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN5arrow6Status7InvalidIJRA59_KcRiEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.l = load i64, ptr %i.j, align 8, !tbaa !92, !noalias !1596
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #19
  br label %_ZN5arrow6Status7InvalidIJRA59_KcRiEEES0_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !88, !noalias !1596 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.p, align 8, !tbaa !92, !noalias !1596
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i11 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !1596
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA59_KcRiEEES0_DpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !1596
  br label %bb.n

bb.e:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.t = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !53   ; 2 uses
  %.not3 = icmp slt i64 %i.u, 1
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.m
  %storemerge4 = phi i64 [ %i.ax, %bb.m ], [ 1, %bb.e ] ; 5 uses
  %i.v = phi i32 [ %i.x, %bb.m ], [ %15, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i, i64 %storemerge4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3    ; 5 uses
  store i32 %i.x, ptr %i.d, align 4, !tbaa !3
  %i.y = icmp slt i32 %i.x, %i.v
  br i1 %i.y, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.lr.ph
  store i64 %storemerge4, ptr %i.c, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !1601
  call void @_ZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKiRA4_S2_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(56) @.str.37, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(3) @.str.38, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 1 dereferenceable(4) @.str.39, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !noalias !1601
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %3, align 8, !tbaa !88, !noalias !1601 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN5arrow6Status7InvalidIJRA56_KcRlRA3_S2_RKiRA4_S2_RiEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8: ; preds = %bb.g
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !92, !noalias !1601
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #19
  br label %_ZN5arrow6Status7InvalidIJRA56_KcRlRA3_S2_RKiRA4_S2_RiEEES0_DpOT_.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %3, align 8, !tbaa !88, !noalias !1601 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i: ; preds = %bb.h
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !92, !noalias !1601
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !1601
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA56_KcRlRA3_S2_RKiRA4_S2_RiEEES0_DpOT_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !1601
  br label %.critedge

bb.i:                                             ; preds = %.lr.ph
  %i.ak = zext nneg i32 %i.x to i64
  %i.al = icmp slt i64 %1, %i.ak
  br i1 %i.al, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  store i64 %storemerge4, ptr %i.c, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18, !noalias !1606
  call void @_ZN5arrow8internal12JoinToStringIJRA43_KcRlRA17_S2_RKiRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(43) @.str.40, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(17) @.str.41, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 1 dereferenceable(4) @.str.42, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !1606
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %2, align 8, !tbaa !88, !noalias !1606 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN5arrow6Status7InvalidIJRA43_KcRlRA17_S2_RKiRA4_S2_S5_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i13: ; preds = %bb.k
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !92, !noalias !1606
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #19
  br label %_ZN5arrow6Status7InvalidIJRA43_KcRlRA17_S2_RKiRA4_S2_S5_EEES0_DpOT_.exit

bb.l:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %2, align 8, !tbaa !88, !noalias !1606 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i10: ; preds = %bb.l
  %i.av = load i64, ptr %i.at, align 8, !tbaa !92, !noalias !1606
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i11: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !1606
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA43_KcRlRA17_S2_RKiRA4_S2_S5_EEES0_DpOT_.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !1606
  br label %.critedge

bb.m:                                             ; preds = %bb.i
  store i32 %i.x, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.ax = add nuw i64 %storemerge4, 1
  %exitcond.not = icmp eq i64 %storemerge4, %i.u
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1611

.critedge:                                        ; preds = %_ZN5arrow6Status7InvalidIJRA43_KcRlRA17_S2_RKiRA4_S2_S5_EEES0_DpOT_.exit, %_ZN5arrow6Status7InvalidIJRA56_KcRlRA3_S2_RKiRA4_S2_RiEEES0_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.n

._crit_edge:                                      ; preds = %bb.m, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  store ptr null, ptr %0, align 8, !tbaa !149, !alias.scope !1612
  br label %bb.n

bb.n:                                             ; preds = %.critedge, %._crit_edge, %_ZN5arrow6Status7InvalidIJRA59_KcRiEEES0_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA37_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(37) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !1615
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1615
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !439, !noalias !1615, !nonnull !40, !align !41
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(37) %2) #18, !noalias !1615
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(37) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA37_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !1615 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA37_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA37_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA37_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !1615
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA37_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA37_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !1615
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA37_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !88     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !92
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA37_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !88     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !92
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(30) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(33) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(14) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12JoinToStringIJRA14_KcRmRA19_S2_RiRA2_S2_RlRA12_S2_S8_RA26_S2_lSD_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA19_S2_RiRA2_S2_RlRA12_S2_S8_RA26_S2_lSD_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E6_clIS8_EEDaSQ_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA19_S2_RiRA2_S2_RlRA12_S2_S8_RA26_S2_lSD_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E5_clISA_EEDaSQ_.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.i:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA19_S2_RiRA2_S2_RlRA12_S2_S8_RA26_S2_lSD_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E4_clISB_EEDaSQ_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.j:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA19_S2_RiRA2_S2_RlRA12_S2_S8_RA26_S2_lSD_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clISD_EEDaSQ_.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.k:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA19_S2_RiRA2_S2_RlRA12_S2_S8_RA26_S2_lSD_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS8_EEDaSQ_.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA19_S2_RiRA2_S2_RlRA12_S2_S8_RA26_S2_lSD_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clISF_EEDaSQ_.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.m:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA19_S2_RiRA2_S2_RlRA12_S2_S8_RA26_S2_lSD_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIlEEDaSQ_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA19_S2_RiRA2_S2_RlRA12_S2_S8_RA26_S2_lSD_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clISD_EEDaSQ_.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.n
  %.pn33 = phi { ptr, i32 } [ %i.at, %bb.n ], [ %i.ai, %bb.c ], [ %i.aj, %bb.d ], [ %i.ak, %bb.e ], [ %i.al, %bb.f ], [ %i.am, %bb.g ], [ %i.an, %bb.h ], [ %i.ao, %bb.i ], [ %i.ap, %bb.j ], [ %i.aq, %bb.k ], [ %i.as, %bb.m ], [ %i.ar, %bb.l ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  resume { ptr, i32 } %.pn33
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA14_KcRmRA23_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA41_S2_SD_EEESD_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(14) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(23) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(41) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(14) %1) #18
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(14) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA23_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA41_S2_SD_EEESD_DpOT_ENKUlOT_E4_clIS4_EEDaSK_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA23_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA41_S2_SD_EEESD_DpOT_ENKUlOT_E4_clIS4_EEDaSK_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.f = load i64, ptr %2, align 8, !tbaa !82
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA23_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA41_S2_SD_EEESD_DpOT_ENKUlOT_E3_clIS5_EEDaSK_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA23_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA41_S2_SD_EEESD_DpOT_ENKUlOT_E3_clIS5_EEDaSK_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA23_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA41_S2_SD_EEESD_DpOT_ENKUlOT_E4_clIS4_EEDaSK_.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.i = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(23) %3) #18
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(23) %3, i64 noundef %i.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA23_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA41_S2_SD_EEESD_DpOT_ENKUlOT_E2_clIS7_EEDaSK_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA23_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA41_S2_SD_EEESD_DpOT_ENKUlOT_E2_clIS7_EEDaSK_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA23_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA41_S2_SD_EEESD_DpOT_ENKUlOT_E3_clIS5_EEDaSK_.exit
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.l = load ptr, ptr %4, align 8, !tbaa !88
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !452
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.l, i64 noundef %i.n)
          to label %_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA23_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA41_S2_SD_EEESD_DpOT_ENKUlOT_E1_clISD_EEDaSK_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA23_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA41_S2_SD_EEESD_DpOT_ENKUlOT_E1_clISD_EEDaSK_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA23_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA41_S2_SD_EEESD_DpOT_ENKUlOT_E2_clIS7_EEDaSK_.exit
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.q = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(41) %5) #18
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 1 dereferenceable(41) %5, i64 noundef %i.q)
          to label %_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA23_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA41_S2_SD_EEESD_DpOT_ENKUlOT_E0_clISF_EEDaSK_.exit unwind label %bb.g ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA23_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA41_S2_SD_EEESD_DpOT_ENKUlOT_E0_clISF_EEDaSK_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA23_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA41_S2_SD_EEESD_DpOT_ENKUlOT_E1_clISD_EEDaSK_.exit
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.t = load ptr, ptr %6, align 8, !tbaa !88
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !452
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.t, i64 noundef %i.v)
          to label %_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA23_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA41_S2_SD_EEESD_DpOT_ENKUlOT_E_clISD_EEDaSK_.exit unwind label %bb.h ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA23_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA41_S2_SD_EEESD_DpOT_ENKUlOT_E_clISD_EEDaSK_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA23_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA41_S2_SD_EEESD_DpOT_ENKUlOT_E0_clISF_EEDaSK_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA23_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA41_S2_SD_EEESD_DpOT_ENKUlOT_E_clISD_EEDaSK_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  ret void

bb.c:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA23_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA41_S2_SD_EEESD_DpOT_ENKUlOT_E4_clIS4_EEDaSK_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA23_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA41_S2_SD_EEESD_DpOT_ENKUlOT_E3_clIS5_EEDaSK_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA23_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA41_S2_SD_EEESD_DpOT_ENKUlOT_E2_clIS7_EEDaSK_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA23_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA41_S2_SD_EEESD_DpOT_ENKUlOT_E1_clISD_EEDaSK_.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA23_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA41_S2_SD_EEESD_DpOT_ENKUlOT_E0_clISF_EEDaSK_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA14_KcRmRA23_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA41_S2_SD_EEESD_DpOT_ENKUlOT_E_clISD_EEDaSK_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %bb.f, %bb.d, %bb.i
  %.pn18 = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.x, %bb.c ], [ %i.y, %bb.d ], [ %i.z, %bb.e ], [ %i.aa, %bb.f ], [ %i.ac, %bb.h ], [ %i.ab, %bb.g ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  resume { ptr, i32 } %.pn18
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status7InvalidIJRA35_KcRKlRA34_S2_S6_RA2_S2_EEES0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(35) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(34) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(2) %5) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18, !noalias !1678
  call void @_ZN5arrow8internal12JoinToStringIJRA35_KcRKlRA34_S2_S6_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(35) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(34) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(2) %5), !noalias !1678
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %6, align 8, !tbaa !88, !noalias !1678 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN5arrow6Status8FromArgsIJRA35_KcRKlRA34_S2_S6_RA2_S2_EEES0_NS_10StatusCodeEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !92, !noalias !1678
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #19
  br label %_ZN5arrow6Status8FromArgsIJRA35_KcRKlRA34_S2_S6_RA2_S2_EEES0_NS_10StatusCodeEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %6, align 8, !tbaa !88, !noalias !1678 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !92, !noalias !1678
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !1678
  resume { ptr, i32 } %i.f

_ZN5arrow6Status8FromArgsIJRA35_KcRKlRA34_S2_S6_RA2_S2_EEES0_NS_10StatusCodeEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !1678
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl20FullyValidateOffsetsIlEENS_6StatusEl(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr readonly captures(none) %.0.val, i64 noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !82
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104  ; 3 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit, label %5

5:                                                ; preds = %bb.a
  %6 = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %7 = load i64, ptr %6, align 8, !tbaa !98
  %8 = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %9 = load i8, ptr %8, align 1, !tbaa !181, !range !75, !noundef !40
  %10 = trunc nuw i8 %9 to i1
  %11 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %12 = load ptr, ptr %11, align 8
  %13 = select i1 %10, ptr %12, ptr null, !prof !182
  %14 = getelementptr inbounds [8 x i8], ptr %13, i64 %7
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit:     ; preds = %bb.a, %5
  %.0.i.i = phi ptr [ %14, %5 ], [ null, %bb.a ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %15 = load i64, ptr %.0.i.i, align 8, !tbaa !82 ; 3 uses
  store i64 %15, ptr %i.b, align 8, !tbaa !82
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !1681
  call void @_ZN5arrow8internal12JoinToStringIJRA59_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(59) @.str.36, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !1681
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %4, align 8, !tbaa !88, !noalias !1681 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN5arrow6Status7InvalidIJRA59_KcRlEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.l = load i64, ptr %i.j, align 8, !tbaa !92, !noalias !1681
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #19
  br label %_ZN5arrow6Status7InvalidIJRA59_KcRlEEES0_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !88, !noalias !1681 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.p, align 8, !tbaa !92, !noalias !1681
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i11 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !1681
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA59_KcRlEEES0_DpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !1681
  br label %bb.n

bb.e:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.t = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !53   ; 2 uses
  store i64 1, ptr %i.c, align 8, !tbaa !82
  %.not1 = icmp slt i64 %i.u, 1
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.m
  %storemerge2 = phi i64 [ %i.aw, %bb.m ], [ 1, %bb.e ] ; 3 uses
  %i.v = phi i64 [ %i.x, %bb.m ], [ %15, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %storemerge2
  %i.x = load i64, ptr %i.w, align 8, !tbaa !82   ; 5 uses
  store i64 %i.x, ptr %i.d, align 8, !tbaa !82
  %i.y = icmp slt i64 %i.x, %i.v
  br i1 %i.y, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !1686
  call void @_ZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(56) @.str.37, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(3) @.str.38, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(4) @.str.39, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !1686
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %3, align 8, !tbaa !88, !noalias !1686 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN5arrow6Status7InvalidIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8: ; preds = %bb.g
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !92, !noalias !1686
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #19
  br label %_ZN5arrow6Status7InvalidIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEES0_DpOT_.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %3, align 8, !tbaa !88, !noalias !1686 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i: ; preds = %bb.h
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !92, !noalias !1686
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !1686
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEES0_DpOT_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !1686
  br label %.critedge

bb.i:                                             ; preds = %.lr.ph
  %i.ak = icmp sgt i64 %i.x, %1
  br i1 %i.ak, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18, !noalias !1691
  call void @_ZN5arrow8internal12JoinToStringIJRA43_KcRlRA17_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(43) @.str.40, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(17) @.str.41, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(4) @.str.42, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !1691
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %2, align 8, !tbaa !88, !noalias !1691 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZN5arrow6Status7InvalidIJRA43_KcRlRA17_S2_RKlRA4_S2_S5_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i13: ; preds = %bb.k
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !92, !noalias !1691
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #19
  br label %_ZN5arrow6Status7InvalidIJRA43_KcRlRA17_S2_RKlRA4_S2_S5_EEES0_DpOT_.exit

bb.l:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %2, align 8, !tbaa !88, !noalias !1691 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i10: ; preds = %bb.l
  %i.au = load i64, ptr %i.as, align 8, !tbaa !92, !noalias !1691
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i11: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !1691
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA43_KcRlRA17_S2_RKlRA4_S2_S5_EEES0_DpOT_.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !1691
  br label %.critedge

bb.m:                                             ; preds = %bb.i
  store i64 %i.x, ptr %i.b, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.aw = add nuw i64 %storemerge2, 1             ; 2 uses
  store i64 %i.aw, ptr %i.c, align 8, !tbaa !82
  %exitcond.not = icmp eq i64 %storemerge2, %i.u
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1696

.critedge:                                        ; preds = %_ZN5arrow6Status7InvalidIJRA43_KcRlRA17_S2_RKlRA4_S2_S5_EEES0_DpOT_.exit, %_ZN5arrow6Status7InvalidIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEES0_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.n

._crit_edge:                                      ; preds = %bb.m, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  store ptr null, ptr %0, align 8, !tbaa !149, !alias.scope !1697
  br label %bb.n

bb.n:                                             ; preds = %.critedge, %._crit_edge, %_ZN5arrow6Status7InvalidIJRA59_KcRlEEES0_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA59_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(59) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(59) %1) #18
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(59) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA59_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSG_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA59_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSG_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.f = load i64, ptr %2, align 8, !tbaa !82
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA59_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSG_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA59_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSG_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA59_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSG_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA59_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSG_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA59_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSG_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA59_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSG_.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.pn6 = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(56) %1) #18
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(56) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E4_clIS4_EEDaSM_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E4_clIS4_EEDaSM_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.f = load i64, ptr %2, align 8, !tbaa !82
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS5_EEDaSM_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS5_EEDaSM_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E4_clIS4_EEDaSM_.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.i = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(3) %3) #18
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(3) %3, i64 noundef %i.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS7_EEDaSM_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS7_EEDaSM_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS5_EEDaSM_.exit
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.l = load i64, ptr %4, align 8, !tbaa !82
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef %i.l)
          to label %_ZZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSM_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSM_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS7_EEDaSM_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.o = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(4) %5) #18
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 1 dereferenceable(4) %5, i64 noundef %i.o)
          to label %_ZZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSM_.exit unwind label %bb.g ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSM_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSM_.exit
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.r = load i64, ptr %6, align 8, !tbaa !82
end_hunk_1
