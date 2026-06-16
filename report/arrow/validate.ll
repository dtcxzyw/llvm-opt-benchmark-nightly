inline.NumInlined: 3493
inline.NumDeleted: 1066
begin_hunk_0_@_ZN5arrow6Status7InvalidIJRA35_KcRKiRA34_S2_RKlRA2_S2_EEES0_DpOT_:bb.a
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
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl20FullyValidateOffsetsIiEENS_6StatusEl(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree readonly captures(none) %.0.val, i64 noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit:
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104, !nonnull !40, !noundef !40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !98
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.l = load i8, ptr %i.k, align 1, !tbaa !181, !range !75, !noundef !40
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = select i1 %i.m, ptr %i.o, ptr null, !prof !182
  %i.q = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.j ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 3 uses
  store i32 %i.r, ptr %i.b, align 4, !tbaa !3
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.a, label %bb.d

bb.a:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !1596
  call void @_ZN5arrow8internal12JoinToStringIJRA59_KcRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(59) @.str.36, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !noalias !1596
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %4, align 8, !tbaa !88, !noalias !1596 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN5arrow6Status7InvalidIJRA59_KcRiEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.w = load i64, ptr %i.u, align 8, !tbaa !92, !noalias !1596
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #19
  br label %_ZN5arrow6Status7InvalidIJRA59_KcRiEEES0_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %4, align 8, !tbaa !88, !noalias !1596 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.c
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !92, !noalias !1596
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i11 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !1596
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA59_KcRiEEES0_DpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !1596
  br label %bb.m

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !53 ; 2 uses
  %.not3 = icmp slt i64 %i.af, 1
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.l
  %storemerge4 = phi i64 [ %i.bi, %bb.l ], [ 1, %bb.d ] ; 5 uses
  %i.ag = phi i32 [ %i.ai, %bb.l ], [ %i.r, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %storemerge4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3  ; 5 uses
  store i32 %i.ai, ptr %i.d, align 4, !tbaa !3
  %i.aj = icmp slt i32 %i.ai, %i.ag
  br i1 %i.aj, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.lr.ph
  store i64 %storemerge4, ptr %i.c, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !1601
  call void @_ZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKiRA4_S2_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(56) @.str.37, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(3) @.str.38, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 1 dereferenceable(4) @.str.39, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !noalias !1601
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %3, align 8, !tbaa !88, !noalias !1601 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZN5arrow6Status7InvalidIJRA56_KcRlRA3_S2_RKiRA4_S2_RiEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8: ; preds = %bb.f
  %i.an = load i64, ptr %i.al, align 8, !tbaa !92, !noalias !1601
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #19
  br label %_ZN5arrow6Status7InvalidIJRA56_KcRlRA3_S2_RKiRA4_S2_RiEEES0_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !88, !noalias !1601 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i: ; preds = %bb.g
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !92, !noalias !1601
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !1601
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA56_KcRlRA3_S2_RKiRA4_S2_RiEEES0_DpOT_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !1601
  br label %.critedge

bb.h:                                             ; preds = %.lr.ph
  %i.av = zext nneg i32 %i.ai to i64
  %i.aw = icmp slt i64 %1, %i.av
  br i1 %i.aw, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  store i64 %storemerge4, ptr %i.c, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18, !noalias !1606
  call void @_ZN5arrow8internal12JoinToStringIJRA43_KcRlRA17_S2_RKiRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(43) @.str.40, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(17) @.str.41, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 1 dereferenceable(4) @.str.42, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !1606
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %2, align 8, !tbaa !88, !noalias !1606 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZN5arrow6Status7InvalidIJRA43_KcRlRA17_S2_RKiRA4_S2_S5_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i13: ; preds = %bb.j
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !92, !noalias !1606
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #19
  br label %_ZN5arrow6Status7InvalidIJRA43_KcRlRA17_S2_RKiRA4_S2_S5_EEES0_DpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load ptr, ptr %2, align 8, !tbaa !88, !noalias !1606 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i10: ; preds = %bb.k
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !92, !noalias !1606
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i11: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !1606
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA43_KcRlRA17_S2_RKiRA4_S2_S5_EEES0_DpOT_.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !1606
  br label %.critedge

bb.l:                                             ; preds = %bb.h
  store i32 %i.ai, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.bi = add nuw i64 %storemerge4, 1
  %exitcond.not = icmp eq i64 %storemerge4, %i.af
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1611

.critedge:                                        ; preds = %_ZN5arrow6Status7InvalidIJRA43_KcRlRA17_S2_RKiRA4_S2_S5_EEES0_DpOT_.exit, %_ZN5arrow6Status7InvalidIJRA56_KcRlRA3_S2_RKiRA4_S2_RiEEES0_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.m

._crit_edge:                                      ; preds = %bb.l, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  store ptr null, ptr %0, align 8, !tbaa !149, !alias.scope !1612
  br label %bb.m

bb.m:                                             ; preds = %.critedge, %._crit_edge, %_ZN5arrow6Status7InvalidIJRA59_KcRiEEES0_DpOT_.exit
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(30) %1) #18
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(30) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E4_clIS4_EEDaSL_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E4_clIS4_EEDaSL_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.f = load i64, ptr %2, align 8, !tbaa !82
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS6_EEDaSL_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS6_EEDaSL_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E4_clIS4_EEDaSL_.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.i = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(33) %3) #18
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(33) %3, i64 noundef %i.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS8_EEDaSL_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS8_EEDaSL_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS6_EEDaSL_.exit
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.l = load i64, ptr %4, align 8, !tbaa !82
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef %i.l)
          to label %_ZZN5arrow8internal12JoinToStringIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS6_EEDaSL_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS6_EEDaSL_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS8_EEDaSL_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.o = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(14) %5) #18
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 1 dereferenceable(14) %5, i64 noundef %i.o)
          to label %_ZZN5arrow8internal12JoinToStringIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clISA_EEDaSL_.exit unwind label %bb.g ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clISA_EEDaSL_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS6_EEDaSL_.exit
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.r = load i64, ptr %6, align 8, !tbaa !82
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef %i.r)
          to label %_ZZN5arrow8internal12JoinToStringIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS6_EEDaSL_.exit unwind label %bb.h ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS6_EEDaSL_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clISA_EEDaSL_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS6_EEDaSL_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  ret void

bb.c:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E4_clIS4_EEDaSL_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS6_EEDaSL_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS8_EEDaSL_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS6_EEDaSL_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clISA_EEDaSL_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS6_EEDaSL_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %bb.f, %bb.d, %bb.i
  %.pn18 = phi { ptr, i32 } [ %i.z, %bb.i ], [ %i.t, %bb.c ], [ %i.u, %bb.d ], [ %i.v, %bb.e ], [ %i.w, %bb.f ], [ %i.y, %bb.h ], [ %i.x, %bb.g ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  resume { ptr, i32 } %.pn18
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA59_KcRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(59) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(59) %1) #18
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(59) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA59_KcRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSG_.exit unwind label %bb.c ; 0 uses

end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12JoinToStringIJRA14_KcRmRA23_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA41_S2_SD_EEESD_DpOT_:bb.a
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
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl20FullyValidateOffsetsIlEENS_6StatusEl(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree readonly captures(none) %.0.val, i64 noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit:
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104, !nonnull !40, !noundef !40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !98
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.l = load i8, ptr %i.k, align 1, !tbaa !181, !range !75, !noundef !40
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = select i1 %i.m, ptr %i.o, ptr null, !prof !182
  %i.q = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.j ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.r = load i64, ptr %i.q, align 8, !tbaa !82   ; 3 uses
  store i64 %i.r, ptr %i.b, align 8, !tbaa !82
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.a, label %bb.d

bb.a:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !1681
  call void @_ZN5arrow8internal12JoinToStringIJRA59_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(59) @.str.36, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !1681
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %4, align 8, !tbaa !88, !noalias !1681 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN5arrow6Status7InvalidIJRA59_KcRlEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.w = load i64, ptr %i.u, align 8, !tbaa !92, !noalias !1681
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #19
  br label %_ZN5arrow6Status7InvalidIJRA59_KcRlEEES0_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %4, align 8, !tbaa !88, !noalias !1681 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.c
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !92, !noalias !1681
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i11 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !1681
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA59_KcRlEEES0_DpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !1681
  br label %bb.m

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !53 ; 2 uses
  store i64 1, ptr %i.c, align 8, !tbaa !82
  %.not1 = icmp slt i64 %i.af, 1
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.l
  %storemerge2 = phi i64 [ %i.bh, %bb.l ], [ 1, %bb.d ] ; 3 uses
  %i.ag = phi i64 [ %i.ai, %bb.l ], [ %i.r, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %storemerge2
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !82 ; 5 uses
  store i64 %i.ai, ptr %i.d, align 8, !tbaa !82
  %i.aj = icmp slt i64 %i.ai, %i.ag
  br i1 %i.aj, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !1686
  call void @_ZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(56) @.str.37, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(3) @.str.38, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(4) @.str.39, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !1686
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %3, align 8, !tbaa !88, !noalias !1686 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZN5arrow6Status7InvalidIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8: ; preds = %bb.f
  %i.an = load i64, ptr %i.al, align 8, !tbaa !92, !noalias !1686
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #19
  br label %_ZN5arrow6Status7InvalidIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEES0_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !88, !noalias !1686 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i: ; preds = %bb.g
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !92, !noalias !1686
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !1686
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEES0_DpOT_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !1686
  br label %.critedge

bb.h:                                             ; preds = %.lr.ph
  %i.av = icmp sgt i64 %i.ai, %1
  br i1 %i.av, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18, !noalias !1691
  call void @_ZN5arrow8internal12JoinToStringIJRA43_KcRlRA17_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(43) @.str.40, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(17) @.str.41, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(4) @.str.42, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !1691
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %2, align 8, !tbaa !88, !noalias !1691 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZN5arrow6Status7InvalidIJRA43_KcRlRA17_S2_RKlRA4_S2_S5_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i13: ; preds = %bb.j
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !92, !noalias !1691
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #19
  br label %_ZN5arrow6Status7InvalidIJRA43_KcRlRA17_S2_RKlRA4_S2_S5_EEES0_DpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %2, align 8, !tbaa !88, !noalias !1691 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i10: ; preds = %bb.k
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !92, !noalias !1691
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i11: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !1691
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA43_KcRlRA17_S2_RKlRA4_S2_S5_EEES0_DpOT_.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !1691
  br label %.critedge

bb.l:                                             ; preds = %bb.h
  store i64 %i.ai, ptr %i.b, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.bh = add nuw i64 %storemerge2, 1             ; 2 uses
  store i64 %i.bh, ptr %i.c, align 8, !tbaa !82
  %exitcond.not = icmp eq i64 %storemerge2, %i.af
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1696

.critedge:                                        ; preds = %_ZN5arrow6Status7InvalidIJRA43_KcRlRA17_S2_RKlRA4_S2_S5_EEES0_DpOT_.exit, %_ZN5arrow6Status7InvalidIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEES0_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.m

._crit_edge:                                      ; preds = %bb.l, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  store ptr null, ptr %0, align 8, !tbaa !149, !alias.scope !1697
  br label %bb.m

bb.m:                                             ; preds = %.critedge, %._crit_edge, %_ZN5arrow6Status7InvalidIJRA59_KcRlEEES0_DpOT_.exit
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
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef %i.r)
          to label %_ZZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSM_.exit unwind label %bb.h ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSM_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSM_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSM_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  ret void

bb.c:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E4_clIS4_EEDaSM_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS5_EEDaSM_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS7_EEDaSM_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSM_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSM_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA56_KcRlRA3_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSM_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %bb.f, %bb.d, %bb.i
  %.pn18 = phi { ptr, i32 } [ %i.z, %bb.i ], [ %i.t, %bb.c ], [ %i.u, %bb.d ], [ %i.v, %bb.e ], [ %i.w, %bb.f ], [ %i.y, %bb.h ], [ %i.x, %bb.g ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  resume { ptr, i32 } %.pn18
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA43_KcRlRA17_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(43) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(43) %1) #18
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(43) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA43_KcRlRA17_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E4_clIS4_EEDaSM_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA43_KcRlRA17_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E4_clIS4_EEDaSM_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.f = load i64, ptr %2, align 8, !tbaa !82
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA43_KcRlRA17_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS5_EEDaSM_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA43_KcRlRA17_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS5_EEDaSM_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA43_KcRlRA17_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E4_clIS4_EEDaSM_.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.i = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(17) %3) #18
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(17) %3, i64 noundef %i.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA43_KcRlRA17_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS7_EEDaSM_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA43_KcRlRA17_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS7_EEDaSM_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA43_KcRlRA17_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS5_EEDaSM_.exit
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.l = load i64, ptr %4, align 8, !tbaa !82
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef %i.l)
          to label %_ZZN5arrow8internal12JoinToStringIJRA43_KcRlRA17_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSM_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA43_KcRlRA17_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSM_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA43_KcRlRA17_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS7_EEDaSM_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.o = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(4) %5) #18
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 1 dereferenceable(4) %5, i64 noundef %i.o)
          to label %_ZZN5arrow8internal12JoinToStringIJRA43_KcRlRA17_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSM_.exit unwind label %bb.g ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA43_KcRlRA17_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSM_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA43_KcRlRA17_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSM_.exit
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.r = load i64, ptr %6, align 8, !tbaa !82
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef %i.r)
          to label %_ZZN5arrow8internal12JoinToStringIJRA43_KcRlRA17_S2_RKlRA4_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSM_.exit unwind label %bb.h ; 0 uses

end_hunk_1
