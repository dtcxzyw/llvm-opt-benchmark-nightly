inline.NumInlined: 2904
inline.NumDeleted: 1295
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !10517
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.11) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #40
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !10573

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #40
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #39 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !10511
  store i64 %i.c, ptr %i.a, align 8, !tbaa !10516
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !10516
  store i8 %i.j, ptr %i.i, align 1, !tbaa !10516
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !10515
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !10516
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly20AsyncSocketExceptionC2ENS0_24AsyncSocketExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @_ZN5folly20AsyncSocketException10getMessageENS0_24AsyncSocketExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3)
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !10511  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !10516
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly20AsyncSocketExceptionE, i64 16), ptr %0, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.f, align 8, !tbaa !10823
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %3, ptr %i.g, align 4, !tbaa !10828
  ret void

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %4, align 8, !tbaa !10511  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.c
  %i.l = load i64, ptr %i.j, align 8, !tbaa !10516
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  resume { ptr, i32 } %i.h
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #14

declare void @_ZN5folly20AsyncSocketException10getMessageENS0_24AsyncSocketExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #0

declare void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly20AsyncSocketExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #37
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

declare i32 @SSL_pending(ptr noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZNK5folly11AsyncSocket8readableEv(ptr noundef nonnull align 8 dereferenceable(1169)) unnamed_addr #0

declare noundef zeroext i1 @_ZNK5folly11AsyncSocket4goodEv(ptr noundef nonnull align 8 dereferenceable(1169)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK5folly14AsyncSSLSocket13getSSLVersionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1968) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @SSL_version(ptr noundef nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.d
}

declare i64 @SSL_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

declare void @_ZN5folly5IOBuf6createEm(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, i64 noundef) local_unnamed_addr #0

declare i32 @SSL_export_keying_material(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10525  ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #36
  tail call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.a) #36
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit, %bb.a
  ret void
}

declare void @_ZN5folly5IOBuf21coalesceAndReallocateEmmPS0_m(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare noundef i64 @_ZNK5folly5IOBuf22computeChainDataLengthEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

declare void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: noreturn nounwind
declare void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #19

declare void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN5folly5IOBufdlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN5folly14AsyncSSLSocket32setSupportedApplicationProtocolsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(1968) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZN5folly3ssl12OpenSSLUtils16encodeALPNStringERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1888 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10511 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1904 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  %i.e = load ptr, ptr %2, align 8, !tbaa !10511  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.g = icmp eq ptr %i.e, %i.f                   ; 2 uses
  br i1 %i.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.g, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !10515 ; 3 uses
  %i.j = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.j)
  %.not21.i = icmp eq ptr %2, %i.a
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %3, !prof !10573

3:                                                ; preds = %bb.b
  switch i64 %i.i, label %bb.d [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %3
  %i.k = load i8, ptr %i.e, align 1, !tbaa !10516
  store i8 %i.k, ptr %i.b, align 1, !tbaa !10516
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.d:                                             ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.b, ptr align 1 %i.e, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.d, %bb.c, %3
  %i.l = load i64, ptr %i.h, align 8, !tbaa !10515 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1896
  store i64 %i.l, ptr %i.m, align 8, !tbaa !10515
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !10511
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !10516
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !10511
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1896
  store ptr %i.e, ptr %i.a, align 8, !tbaa !10511
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load <2 x i64>, ptr %i.q, align 8, !tbaa !10516
  store <2 x i64> %i.r, ptr %i.p, align 8, !tbaa !10516
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.s = load i64, ptr %i.c, align 8, !tbaa !10516
  store ptr %i.e, ptr %i.a, align 8, !tbaa !10511
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1896
  %i.v = load <2 x i64>, ptr %i.t, align 8, !tbaa !10516
  store <2 x i64> %i.v, ptr %i.u, align 8, !tbaa !10516
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.b, ptr %2, align 8, !tbaa !10511
  store i64 %i.s, ptr %i.f, align 8, !tbaa !10516
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.f, ptr %2, align 8, !tbaa !10511
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.e, %bb.f
  %4 = phi ptr [ %i.b, %bb.e ], [ %i.f, %bb.f ], [ %i.e, %bb.b ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !10515
  store i8 0, ptr %4, align 1, !tbaa !10516
  %i.x = load ptr, ptr %2, align 8, !tbaa !10511  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !10516
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

declare void @_ZN5folly3ssl12OpenSSLUtils16encodeALPNStringERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare ptr @SSL_get_wbio(ptr noundef) local_unnamed_addr #0

declare ptr @BIO_next(ptr noundef) local_unnamed_addr #0

declare i64 @BIO_number_written(ptr noundef) local_unnamed_addr #0

declare ptr @SSL_get_rbio(ptr noundef) local_unnamed_addr #0

declare i64 @BIO_number_read(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define void @_ZN5folly14AsyncSSLSocket12invalidStateEPNS0_11HandshakeCBE(ptr noundef nonnull align 8 dereferenceable(1968) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str.1, i32 noundef 527, i32 noundef 2)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.b unwind label %bb.j       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.18, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %0)
          to label %_ZNSolsEPKv.exit unwind label %bb.j ; 5 uses

_ZNSolsEPKv.exit:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.4, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZNSolsEPKv.exit
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.9, i64 noundef 21)
          to label %.noexc unwind label %bb.j     ; 0 uses

.noexc:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.h = load i32, ptr %i.g, align 4, !tbaa !10771
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef %i.h)
          to label %.noexc10 unwind label %bb.j

.noexc10:                                         ; preds = %.noexc
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.8, i64 noundef 1)
          to label %_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit unwind label %bb.j ; 0 uses

_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit: ; preds = %.noexc10
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.5, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.m = load i8, ptr %i.l, align 8, !tbaa !10499
  %i.n = zext i8 %i.m to i32
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef %i.n)
          to label %bb.c unwind label %bb.j       ; 2 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.6, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1188 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !28
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i32 noundef %i.r)
          to label %bb.d unwind label %bb.j       ; 3 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.19, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17: ; preds = %bb.d
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.20, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 234
  %i.w = load i16, ptr %i.v, align 2, !tbaa !10772
  %i.x = zext i16 %i.w to i64
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i64 noundef %i.x)
          to label %_ZNSolsEt.exit unwind label %bb.j ; 2 uses

_ZNSolsEt.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.21, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22: ; preds = %_ZNSolsEt.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1185
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !10498, !range !11, !noundef !455
  %i.ac = zext nneg i8 %i.ab to i16
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i16 noundef signext %i.ac)
          to label %bb.e unwind label %bb.j       ; 4 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.22, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24: ; preds = %bb.e
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.23, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.24, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !227
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef %i.ai)
          to label %_ZNSolsEPKv.exit30 unwind label %bb.j ; 2 uses

_ZNSolsEPKv.exit30:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.25, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %_ZNSolsEPKv.exit30
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef %1)
          to label %_ZNSolsEPKv.exit34 unwind label %bb.j ; 0 uses

_ZNSolsEPKv.exit34:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  store i32 10, ptr %i.q, align 4, !tbaa !28
  %i.am = load atomic i8, ptr @_ZGVZN5folly14AsyncSSLSocket12invalidStateEPNS0_11HandshakeCBEE2ex acquire, align 8
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.f, label %bb.h, !prof !223

bb.f:                                             ; preds = %_ZNSolsEPKv.exit34
  %i.ao = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly14AsyncSSLSocket12invalidStateEPNS0_11HandshakeCBEE2ex) #36
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i32 10, ptr %i.a, align 4, !tbaa !224
  invoke void @_ZN5folly14IndestructibleINS_20AsyncSocketExceptionEE7StorageC2IJNS1_24AsyncSocketExceptionTypeERA48_KcES1_EESt10in_place_tDpOT_(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5folly14AsyncSSLSocket12invalidStateEPNS0_11HandshakeCBEE2ex, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(48) @.str.26)
          to label %_ZN5folly14IndestructibleINS_20AsyncSocketExceptionEEC2IJNS1_24AsyncSocketExceptionTypeERA48_KcES1_EEDpOT_.exit unwind label %bb.k

_ZN5folly14IndestructibleINS_20AsyncSocketExceptionEEC2IJNS1_24AsyncSocketExceptionTypeERA48_KcES1_EEDpOT_.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.ap = call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN5folly14AsyncSSLSocket12invalidStateEPNS0_11HandshakeCBEE2ex) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly14AsyncSSLSocket12invalidStateEPNS0_11HandshakeCBEE2ex) #36
  br label %bb.h

bb.h:                                             ; preds = %_ZN5folly14IndestructibleINS_20AsyncSocketExceptionEEC2IJNS1_24AsyncSocketExceptionTypeERA48_KcES1_EEDpOT_.exit, %bb.f, %_ZNSolsEPKv.exit34
  %i.aq = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #36
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1832 ; 2 uses
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !226
  %.not8 = icmp eq ptr %1, null
  br i1 %.not8, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %1, align 8, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5folly14AsyncSSLSocket12invalidStateEPNS0_11HandshakeCBEE2ex) #36, !call_target !228
  br label %bb.l

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32, %_ZNSolsEPKv.exit30, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24, %bb.e, %_ZNSolsEt.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17, %bb.d, %bb.c, %_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit, %.noexc10, %.noexc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9, %_ZNSolsEPKv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13, %bb.a
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.p

bb.k:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5folly14AsyncSSLSocket12invalidStateEPNS0_11HandshakeCBEE2ex) #36
  br label %bb.p

bb.l:                                             ; preds = %bb.i, %bb.h
  call void @_ZN5folly11AsyncSocket9startFailEv(ptr noundef nonnull align 8 dereferenceable(1968) %0)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.ay = call noundef zeroext i1 @_ZNK5folly12AsyncTimeout11isScheduledEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ax)
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @_ZN5folly12AsyncTimeout13cancelTimeoutEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ax)
  br label %bb.n

end_hunk_0
begin_hunk_1_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #39
          to label %.noexc27 unwind label %bb.l   ; 2 uses

.noexc27:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.z, ptr %i.q, align 8, !tbaa !10511
  store i64 %i.u, ptr %i.r, align 8, !tbaa !10516
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc27, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.aa = phi ptr [ %i.z, %.noexc27 ], [ %i.r, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  switch i64 %i.u, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ab = load i8, ptr %i.s, align 1, !tbaa !10516
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !10516
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.u, ptr %i.ac, align 8, !tbaa !10515
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.u
  store i8 0, ptr %i.ad, align 1, !tbaa !10516
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.g ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %bb.g ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12455)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !10517, !alias.scope !12452, !noalias !12455
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !10511, !alias.scope !12455, !noalias !12452 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !10515, !alias.scope !12455, !noalias !12452 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !12457
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !10511, !alias.scope !12452, !noalias !12455
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !10516, !alias.scope !12455, !noalias !12452
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !10516, !alias.scope !12452, !noalias !12455
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !10515, !alias.scope !12455, !noalias !12452
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.h
  %i.an = phi i64 [ %i.aj, %bb.h ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !10515, !alias.scope !12452, !noalias !12455
  store ptr %i.ag, ptr %.0911.i.i.i, align 8, !tbaa !10511, !alias.scope !12455, !noalias !12452
  store i64 0, ptr %i.ao, align 8, !tbaa !10515, !alias.scope !12455, !noalias !12452
  store i8 0, ptr %i.ag, align 8, !tbaa !10516, !alias.scope !12455, !noalias !12452
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !12458

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.g ], [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35
  %.012.i.i.i30 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i31 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12462)
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16 ; 3 uses
  store ptr %i.at, ptr %.012.i.i.i30, align 8, !tbaa !10517, !alias.scope !12459, !noalias !12462
  %i.au = load ptr, ptr %.0911.i.i.i31, align 8, !tbaa !10511, !alias.scope !12462, !noalias !12459 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32

bb.i:                                             ; preds = %.lr.ph.i.i.i29
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !10515, !alias.scope !12462, !noalias !12459 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false), !alias.scope !12464
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i29
  store ptr %i.au, ptr %.012.i.i.i30, align 8, !tbaa !10511, !alias.scope !12459, !noalias !12462
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !10516, !alias.scope !12462, !noalias !12459
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !10516, !alias.scope !12459, !noalias !12462
  %.phi.trans.insert.i.i.i.i33 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %.pre.i.i.i.i34 = load i64, ptr %.phi.trans.insert.i.i.i.i33, align 8, !tbaa !10515, !alias.scope !12462, !noalias !12459
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32, %bb.i
  %i.bc = phi i64 [ %i.ay, %bb.i ], [ %.pre.i.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 8
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !10515, !alias.scope !12459, !noalias !12462
  store ptr %i.av, ptr %.0911.i.i.i31, align 8, !tbaa !10511, !alias.scope !12462, !noalias !12459
  store i64 0, ptr %i.bd, align 8, !tbaa !10515, !alias.scope !12462, !noalias !12459
  store i8 0, ptr %i.av, align 8, !tbaa !10516, !alias.scope !12462, !noalias !12459
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.bf, %i.b
  br i1 %.not.i.i.i36, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38, label %.lr.ph.i.i.i29, !llvm.loop !12458

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i37 = phi ptr [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i39 = icmp eq ptr %i.c, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !10939
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bk) #37
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38, %bb.j
  store ptr %i.p, ptr %0, align 8, !tbaa !10935
  store ptr %.0.lcssa.i.i.i37, ptr %i.a, align 8, !tbaa !10937
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !10939
  ret void

bb.k:                                             ; preds = %bb.l
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc6.i.i, %.noexc.i.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = tail call ptr @__cxa_begin_catch(ptr %i.bo) #36 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #37
  invoke void @__cxa_rethrow() #40
          to label %bb.o unwind label %bb.k

bb.m:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.bm

bb.n:                                             ; preds = %bb.k
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  tail call void @__clang_call_terminate(ptr %i.br) #38
  unreachable

bb.o:                                             ; preds = %bb.l
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @_ZN5folly5IOBuf10wrapBufferEPKvm(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZN5folly10IOBufQueue7trimEndEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #30

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef zeroext i16 @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE8readSlowItEET_v(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #25 comdat align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE8pullSlowEPvm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, i64 noundef 2)
  %i.b = load i16, ptr %i.a, align 2, !tbaa !12358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i16 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly14AsyncSSLSocket19getSSLClientCiphersERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1968) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 38 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 20 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !10517
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 15 uses
  store i64 0, ptr %i.b, align 8, !tbaa !10515
  store i8 0, ptr %i.a, align 8, !tbaa !10516
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1788
  %i.d = load i8, ptr %i.c, align 4, !tbaa !12436, !range !11, !noundef !455
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10929 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12465 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12465 ; 3 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i16, ptr %i.i, align 2, !tbaa !12358 ; 4 uses
  br i1 %2, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.n = lshr i16 %i.m, 8
  %i.o = zext nneg i16 %i.n to i32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.peel

bb.d:                                             ; preds = %bb.c
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN5folly3ssl12OpenSSLUtils13getCipherNameB5cxx11Et(i16 noundef zeroext %i.m)
          to label %bb.e unwind label %.loopexit40.loopexit.split-lp ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !10515 ; 6 uses
  %i.s = icmp eq i64 %i.r, 0
  %.pre = load i64, ptr %i.b, align 8, !tbaa !10515 ; 10 uses
  br i1 %i.s, label %.critedge.peel, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !10511 ; 3 uses
  %i.u = sub i64 9223372036854775807, %.pre
  %i.v = icmp ult i64 %i.u, %i.r
  br i1 %i.v, label %.loopexit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.peel: ; preds = %bb.f
  %i.w = add i64 %.pre, %i.r                      ; 3 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !10511  ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.a                   ; 2 uses
  br i1 %i.y, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.peel

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.peel
  %i.z = icmp ult i64 %.pre, 16
  call void @llvm.assume(i1 %i.z)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.peel: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.peel
  %i.aa = load i64, ptr %i.a, align 8
  %i.ab = select i1 %i.y, i64 15, i64 %i.aa
  %.not.i.i.i.i.peel = icmp ugt i64 %i.w, %i.ab
  br i1 %.not.i.i.i.i.peel, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.peel
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %.pre ; 2 uses
  %cond.i.i.i.i.peel = icmp eq i64 %i.r, 1
  br i1 %cond.i.i.i.i.peel, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.t, i64 %i.r, i1 false)
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ad = load i8, ptr %i.t, align 1, !tbaa !10516
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !10516
  br label %bb.l

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.peel
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %.pre, i64 noundef 0, ptr noundef %i.t, i64 noundef %i.r)
          to label %bb.l unwind label %.loopexit40.loopexit.split-lp

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  store i64 %i.w, ptr %i.b, align 8, !tbaa !10515
  %i.ae = load ptr, ptr %3, align 8, !tbaa !10511
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w
  store i8 0, ptr %i.af, align 1, !tbaa !10516
  br label %bb.r

.critedge.peel:                                   ; preds = %bb.e
  %i.ag = lshr i16 %i.m, 8
  %i.ah = zext nneg i16 %i.ag to i32              ; 2 uses
  %i.ai = add i64 %.pre, 4                        ; 2 uses
  %i.aj = icmp ult i64 %.pre, -4
  br i1 %i.aj, label %bb.m, label %bb.q

bb.m:                                             ; preds = %.critedge.peel
  %i.ak = icmp sgt i64 %.pre, 9223372036854775803
  br i1 %i.ak, label %.loopexit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.peel: ; preds = %.thread, %bb.m
  %i.al = phi i64 [ 0, %.thread ], [ %.pre, %bb.m ] ; 4 uses
  %i.am = phi i32 [ %i.o, %.thread ], [ %i.ah, %bb.m ]
  %i.an = phi i64 [ 4, %.thread ], [ %i.ai, %bb.m ] ; 2 uses
  %i.ao = load ptr, ptr %3, align 8, !tbaa !10511 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.a                 ; 2 uses
  br i1 %i.ap, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.peel

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.peel
  %i.aq = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.aq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.peel: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.peel
  %i.ar = load i64, ptr %i.a, align 8
  %i.as = select i1 %i.ap, i64 15, i64 %i.ar
  %.not.i.i.i.i.i.peel = icmp ugt i64 %i.an, %i.as
  br i1 %.not.i.i.i.i.i.peel, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.peel
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.al, i64 noundef 0, ptr noundef null, i64 noundef 4)
          to label %.noexc32.peel unwind label %.loopexit45.loopexit.split-lp

.noexc32.peel:                                    ; preds = %bb.o
  %.pre.i.i.i.peel = load ptr, ptr %3, align 8, !tbaa !10511
  br label %bb.p

bb.p:                                             ; preds = %.noexc32.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.peel
  %i.at = phi ptr [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.peel ], [ %.pre.i.i.i.peel, %.noexc32.peel ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.al
  store i32 0, ptr %i.au, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.critedge.peel
  %i.av = phi i64 [ %i.an, %bb.p ], [ %i.ai, %.critedge.peel ] ; 2 uses
  %i.aw = phi i32 [ %i.am, %bb.p ], [ %i.ah, %.critedge.peel ] ; 2 uses
  %i.ax = phi i64 [ %i.al, %bb.p ], [ %.pre, %.critedge.peel ] ; 3 uses
  store i64 %i.av, ptr %i.b, align 8, !tbaa !10515
  %i.ay = load ptr, ptr %3, align 8, !tbaa !10511
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.av
  store i8 0, ptr %i.az, align 1, !tbaa !10516
  %i.ba = lshr i32 %i.aw, 4
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @_ZZN5folly7hexlifyISt5arrayIhLm2EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RT0_bE9hexValues, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !10516
  %i.be = load ptr, ptr %3, align 8, !tbaa !10511
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ax
  store i8 %i.bd, ptr %i.bf, align 1, !tbaa !10516
  %i.bg = and i32 %i.aw, 15
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr @_ZZN5folly7hexlifyISt5arrayIhLm2EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RT0_bE9hexValues, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !10516
  %i.bk = add i64 %i.ax, 2                        ; 2 uses
  %i.bl = load ptr, ptr %3, align 8, !tbaa !10511
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.ax
  %i.bn = getelementptr i8, ptr %i.bm, i64 1
  store i8 %i.bj, ptr %i.bn, align 1, !tbaa !10516
  %i.bo = and i16 %i.m, 255
  %i.bp = zext nneg i16 %i.bo to i32              ; 2 uses
  %i.bq = lshr i32 %i.bp, 4
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @_ZZN5folly7hexlifyISt5arrayIhLm2EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RT0_bE9hexValues, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !10516
  %i.bu = load ptr, ptr %3, align 8, !tbaa !10511
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bk
  store i8 %i.bt, ptr %i.bv, align 1, !tbaa !10516
  %i.bw = and i32 %i.bp, 15
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @_ZZN5folly7hexlifyISt5arrayIhLm2EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RT0_bE9hexValues, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !10516
  %i.ca = load ptr, ptr %3, align 8, !tbaa !10511
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.bk
  %i.cc = getelementptr i8, ptr %i.cb, i64 1
  store i8 %i.bz, ptr %i.cc, align 1, !tbaa !10516
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.k
  br i1 %i.ce, label %.loopexit63, label %.preheader.peel.next

bb.s:                                             ; preds = %bb.b, %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !10515
  %i.ch = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.cg, ptr noundef nonnull @.str.12, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit40

.loopexit63:                                      ; preds = %bb.ar, %bb.r
  %i.cj = load ptr, ptr %1, align 8, !tbaa !10511 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  %i.cm = load ptr, ptr %3, align 8, !tbaa !10511 ; 6 uses
  %i.cn = icmp eq ptr %i.cm, %i.a                 ; 2 uses
  br i1 %i.cl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %.loopexit63
  br i1 %i.cn, label %bb.u, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %.loopexit63
  br i1 %i.cn, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.co = load i64, ptr %i.b, align 8, !tbaa !10515 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 16
  call void @llvm.assume(i1 %i.cp)
  %.not21.i = icmp eq ptr %3, %1
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %4, !prof !10573

4:                                                ; preds = %bb.u
  switch i64 %i.co, label %bb.w [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.v
  ]

bb.v:                                             ; preds = %4
  %i.cq = load i8, ptr %i.cm, align 1, !tbaa !10516
  store i8 %i.cq, ptr %i.cj, align 1, !tbaa !10516
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.w:                                             ; preds = %4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %i.cm, i64 %i.co, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.w, %bb.v, %4
  %i.cr = load i64, ptr %i.b, align 8, !tbaa !10515 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !10515
  %i.ct = load ptr, ptr %1, align 8, !tbaa !10511
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cr
  store i8 0, ptr %i.cu, align 1, !tbaa !10516
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !10511
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.cm, ptr %1, align 8, !tbaa !10511
  %i.cw = load <2 x i64>, ptr %i.b, align 8, !tbaa !10516
  store <2 x i64> %i.cw, ptr %i.cv, align 8, !tbaa !10516
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.cx = load i64, ptr %i.ck, align 8, !tbaa !10516
  store ptr %i.cm, ptr %1, align 8, !tbaa !10511
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cz = load <2 x i64>, ptr %i.b, align 8, !tbaa !10516
  store <2 x i64> %i.cz, ptr %i.cy, align 8, !tbaa !10516
  %.not.i = icmp eq ptr %i.cj, null
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.cj, ptr %3, align 8, !tbaa !10511
  store i64 %i.cx, ptr %i.a, align 8, !tbaa !10516
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.a, ptr %3, align 8, !tbaa !10511
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.x, %bb.y
  %5 = phi ptr [ %i.cj, %bb.x ], [ %i.a, %bb.y ], [ %i.cm, %bb.u ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.b, align 8, !tbaa !10515
  store i8 0, ptr %5, align 1, !tbaa !10516
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

.preheader.peel.next:                             ; preds = %bb.r, %bb.ar
  %.sroa.037.050 = phi ptr [ %i.fw, %bb.ar ], [ %i.cd, %bb.r ] ; 2 uses
  %i.da = load i16, ptr %.sroa.037.050, align 2, !tbaa !12358 ; 3 uses
  %i.db = load i64, ptr %i.b, align 8, !tbaa !10515 ; 5 uses
  %i.dc = icmp eq i64 %i.db, 9223372036854775807
  br i1 %i.dc, label %.loopexit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

.loopexit53:                                      ; preds = %.preheader.peel.next
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.147) #40
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit53
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %.preheader.peel.next
  %i.dd = add nsw i64 %i.db, 1                    ; 3 uses
  %i.de = load ptr, ptr %3, align 8, !tbaa !10511 ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.a                 ; 2 uses
  br i1 %i.df, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.dg = icmp ult i64 %i.db, 16
  call void @llvm.assume(i1 %i.dg)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.dh = load i64, ptr %i.a, align 8
  %i.di = select i1 %i.df, i64 15, i64 %i.dh
  %.not.i.i.i = icmp ugt i64 %i.dd, %i.di
  br i1 %.not.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.db
  store i8 58, ptr %i.dj, align 1, !tbaa !10516
  br label %bb.ac

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.db, i64 noundef 0, ptr noundef nonnull @.str.152, i64 noundef 1)
          to label %bb.ac unwind label %.loopexit

.loopexit:                                        ; preds = %bb.ab
  %lpad.loopexit54 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit40

.loopexit.split-lp:                               ; preds = %.loopexit53
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit40

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  store i64 %i.dd, ptr %i.b, align 8, !tbaa !10515
  %i.dk = load ptr, ptr %3, align 8, !tbaa !10511
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dd
  store i8 0, ptr %i.dl, align 1, !tbaa !10516
  br i1 %2, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %i.dm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN5folly3ssl12OpenSSLUtils13getCipherNameB5cxx11Et(i16 noundef zeroext %i.da)
          to label %bb.ae unwind label %.loopexit40.loopexit ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !10515 ; 6 uses
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %.critedge, label %bb.af

.loopexit40.loopexit:                             ; preds = %bb.ak, %bb.ad
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit40

.loopexit40.loopexit.split-lp:                    ; preds = %bb.d, %bb.k
  %lpad.loopexit.split-lp56 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit40

.loopexit.split-lp41:                             ; preds = %.loopexit58
  %lpad.loopexit.split-lp43 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit40

bb.af:                                            ; preds = %bb.ae
  %i.dq = load ptr, ptr %i.dm, align 8, !tbaa !10511 ; 3 uses
  %i.dr = load i64, ptr %i.b, align 8, !tbaa !10515 ; 5 uses
  %i.ds = sub i64 9223372036854775807, %i.dr
  %i.dt = icmp ult i64 %i.ds, %i.do
  br i1 %i.dt, label %.loopexit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

.loopexit58:                                      ; preds = %bb.af, %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.147) #40
          to label %.noexc29 unwind label %.loopexit.split-lp41

.noexc29:                                         ; preds = %.loopexit58
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.af
  %i.du = add i64 %i.dr, %i.do                    ; 3 uses
  %i.dv = load ptr, ptr %3, align 8, !tbaa !10511 ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.a                 ; 2 uses
  br i1 %i.dw, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.dx = icmp ult i64 %i.dr, 16
  call void @llvm.assume(i1 %i.dx)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.dy = load i64, ptr %i.a, align 8
  %i.dz = select i1 %i.dw, i64 15, i64 %i.dy
  %.not.i.i.i.i = icmp ugt i64 %i.du, %i.dz
  br i1 %.not.i.i.i.i, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dr ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.do, 1
  br i1 %cond.i.i.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.eb = load i8, ptr %i.dq, align 1, !tbaa !10516
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !10516
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ea, ptr align 1 %i.dq, i64 %i.do, i1 false)
  br label %bb.al

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.dr, i64 noundef 0, ptr noundef %i.dq, i64 noundef %i.do)
          to label %bb.al unwind label %.loopexit40.loopexit

bb.al:                                            ; preds = %bb.aj, %bb.ai, %bb.ak
  store i64 %i.du, ptr %i.b, align 8, !tbaa !10515
  %i.ec = load ptr, ptr %3, align 8, !tbaa !10511
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.du
  store i8 0, ptr %i.ed, align 1, !tbaa !10516
  br label %bb.ar

.critedge:                                        ; preds = %bb.ac, %bb.ae
  %i.ee = lshr i16 %i.da, 8
  %i.ef = zext nneg i16 %i.ee to i32              ; 2 uses
  %i.eg = load i64, ptr %i.b, align 8, !tbaa !10515 ; 9 uses
  %i.eh = add i64 %i.eg, 4                        ; 3 uses
  %i.ei = icmp ult i64 %i.eg, -4
  br i1 %i.ei, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %.critedge
  %i.ej = icmp sgt i64 %i.eg, 9223372036854775803
  br i1 %i.ej, label %.loopexit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i

.loopexit59:                                      ; preds = %bb.am, %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.154) #40
          to label %.noexc31 unwind label %.loopexit.split-lp46

.noexc31:                                         ; preds = %.loopexit59
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i: ; preds = %bb.am
  %i.ek = load ptr, ptr %3, align 8, !tbaa !10511 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.a                 ; 2 uses
  br i1 %i.el, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i
  %i.em = icmp ult i64 %i.eg, 16
  call void @llvm.assume(i1 %i.em)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i
  %i.en = load i64, ptr %i.a, align 8
  %i.eo = select i1 %i.el, i64 15, i64 %i.en
  %.not.i.i.i.i.i = icmp ugt i64 %i.eh, %i.eo
  br i1 %.not.i.i.i.i.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.eg, i64 noundef 0, ptr noundef null, i64 noundef 4)
          to label %.noexc32 unwind label %.loopexit45.loopexit

.noexc32:                                         ; preds = %bb.ao
  %.pre.i.i.i = load ptr, ptr %3, align 8, !tbaa !10511
  br label %bb.ap

bb.ap:                                            ; preds = %.noexc32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %i.ep = phi ptr [ %i.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i ], [ %.pre.i.i.i, %.noexc32 ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eg
  store i32 0, ptr %i.eq, align 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.critedge
  store i64 %i.eh, ptr %i.b, align 8, !tbaa !10515
  %i.er = load ptr, ptr %3, align 8, !tbaa !10511
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eh
  store i8 0, ptr %i.es, align 1, !tbaa !10516
  %i.et = lshr i32 %i.ef, 4
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr @_ZZN5folly7hexlifyISt5arrayIhLm2EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RT0_bE9hexValues, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !10516
  %i.ex = load ptr, ptr %3, align 8, !tbaa !10511
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.eg
end_hunk_1
