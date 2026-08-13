inline.NumInlined: 1125
inline.NumDeleted: 407
begin_hunk_0_@_ZNSt7__cxx119to_stringEm:bb.a
bb.g:                                             ; preds = %bb.e
  %i.h = udiv i64 %.02229.i, 10000
  %i.i = add i32 %.02328.i, 4                     ; 2 uses
  %i.j = icmp ult i64 %.02229.i, 100000
  br i1 %i.j, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %.lr.ph.i, !llvm.loop !95

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit:      ; preds = %bb.g, %bb.a, %bb.b, %bb.d, %bb.f
  %.0.i = phi i32 [ %i.g, %bb.f ], [ %i.c, %bb.b ], [ %i.e, %bb.d ], [ 1, %bb.a ], [ %i.i, %bb.g ]
  %i.k = zext i32 %.0.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %0, align 8, !tbaa !58
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k, i8 noundef signext 0)
  %i.m = load ptr, ptr %0, align 8, !tbaa !49     ; 4 uses
  %i.n = icmp ugt i64 %1, 99
  br i1 %i.n, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !59
  %i.q = trunc i64 %i.p to i32
  %i.r = add i32 %i.q, -1
  br label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %.lr.ph.i4, %.lr.ph.preheader.i
  %.020.i = phi i64 [ %i.u, %.lr.ph.i4 ], [ %1, %.lr.ph.preheader.i ] ; 3 uses
  %.01819.i = phi i32 [ %i.ae, %.lr.ph.i4 ], [ %i.r, %.lr.ph.preheader.i ] ; 3 uses
  %i.s = urem i64 %.020.i, 100
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = udiv i64 %.020.i, 100                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.t ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !10
  %i.y = zext i32 %.01819.i to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.y
  store i8 %i.x, ptr %i.z, align 1, !tbaa !10
  %i.aa = load i8, ptr %i.v, align 2, !tbaa !10
  %i.ab = add i32 %.01819.i, -1
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ac
  store i8 %i.aa, ptr %i.ad, align 1, !tbaa !10
  %i.ae = add i32 %.01819.i, -2
  %i.af = icmp ugt i64 %.020.i, 9999
  br i1 %i.af, label %.lr.ph.i4, label %._crit_edge.i, !llvm.loop !96

._crit_edge.i:                                    ; preds = %.lr.ph.i4, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit
  %.0.lcssa.i = phi i64 [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit ], [ %i.u, %.lr.ph.i4 ] ; 3 uses
  %i.ag = icmp samesign ugt i64 %.0.lcssa.i, 9
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.ah = shl nuw nsw i64 %.0.lcssa.i, 1
  %i.ai = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !10
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !10
  %i.am = load i8, ptr %i.ai, align 2, !tbaa !10
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit

bb.i:                                             ; preds = %._crit_edge.i
  %i.an = trunc nuw nsw i64 %.0.lcssa.i to i8
  %i.ao = or disjoint i8 %i.an, 48
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit

_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit: ; preds = %bb.h, %bb.i
  %storemerge.i = phi i8 [ %i.ao, %bb.i ], [ %i.am, %bb.h ]
  store i8 %storemerge.i, ptr %i.m, align 1, !tbaa !10
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook6hermes7tracing12_GLOBAL__N_113doublePrinterB5cxx11Ed(ptr dead_on_unwind noalias nonnull writable align 8 %0, double noundef %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.llvh::raw_string_ostream", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !59
  store i8 0, ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %i.c, align 8, !tbaa !103
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh18raw_string_ostreamE, i64 16), ptr %2, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %0, ptr %i.e, align 8, !tbaa !106
  %i.f = bitcast double %1 to i64
  invoke void @_ZN4llvh9write_hexERNS_11raw_ostreamEmNS_13HexPrintStyleENS_8OptionalImEE(ptr noundef nonnull align 8 dereferenceable(36) %2, i64 noundef %i.f, i32 noundef 3, i64 16, i8 1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !108
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !109
  %.not.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i, label %_ZN4llvh11raw_ostream5flushEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4llvh11raw_ostream14flush_nonemptyEv(ptr noundef nonnull align 8 dereferenceable(36) %2)
          to label %_ZN4llvh11raw_ostream5flushEv.exit unwind label %bb.d

_ZN4llvh11raw_ostream5flushEv.exit:               ; preds = %bb.b, %bb.c
  call void @_ZN4llvh18raw_string_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.k, %bb.e ]
  call void @_ZN4llvh18raw_string_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.l = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.a
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.n = load i64, ptr %i.a, align 8, !tbaa !10
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !59
  %i.d = sub i64 4611686018427387903, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.134) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %i.a) ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !58
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !59   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  store ptr %i.h, ptr %0, align 8, !tbaa !49
  %i.o = load i64, ptr %i.i, align 8, !tbaa !10
  store i64 %i.o, ptr %i.g, align 8, !tbaa !10
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !59
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.r, align 8, !tbaa !59
  store ptr %i.i, ptr %i.f, align 8, !tbaa !49
  store i64 0, ptr %i.q, align 8, !tbaa !59
  store i8 0, ptr %i.i, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace6decodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %i.e = alloca ptr, align 8                      ; 3 uses
  %1 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %i.i = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext 58, i64 noundef 0) #24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.j = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.l, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  store i64 %i.i, ptr %i.h, align 8, !tbaa !60
  %i.m = icmp ugt i64 %i.i, 15
  br i1 %i.m, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %2, align 8, !tbaa !49
  %i.o = load i64, ptr %i.h, align 8, !tbaa !60
  store i64 %i.o, ptr %i.k, align 8, !tbaa !10
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.p = phi ptr [ %i.n, %.noexc.i ], [ %i.k, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !10
  store i8 %i.q, ptr %i.p, align 1, !tbaa !10
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.i, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.r = load i64, ptr %i.h, align 8, !tbaa !60   ; 2 uses
  store i64 %i.r, ptr %i.l, align 8, !tbaa !59
  %i.s = load ptr, ptr %2, align 8, !tbaa !49
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  store i8 0, ptr %i.t, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.u = load ptr, ptr %0, align 8, !tbaa !49
  %.neg = xor i64 %i.i, -1
  %4 = getelementptr i8, ptr %i.u, i64 %i.i
  %i.v = getelementptr i8, ptr %4, i64 1          ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !58
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 0, ptr %i.z, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  %gepdiff = add i64 %i.x, %.neg                  ; 4 uses
  store i64 %gepdiff, ptr %i.g, align 8, !tbaa !60
  %i.aa = icmp ugt i64 %gepdiff, 15
  br i1 %i.aa, label %.noexc.i23, label %._crit_edge.i.i22

.noexc.i23:                                       ; preds = %bb.d
  %i.ab = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc24 unwind label %bb.h   ; 2 uses

.noexc24:                                         ; preds = %.noexc.i23
  store ptr %i.ab, ptr %3, align 8, !tbaa !49
  %i.ac = load i64, ptr %i.g, align 8, !tbaa !60
  store i64 %i.ac, ptr %i.y, align 8, !tbaa !10
  br label %._crit_edge.i.i22

._crit_edge.i.i22:                                ; preds = %.noexc24, %bb.d
  %i.ad = phi ptr [ %i.ab, %.noexc24 ], [ %i.y, %bb.d ] ; 2 uses
  switch i64 %gepdiff, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i22
  %i.ae = load i8, ptr %i.v, align 1, !tbaa !10
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !10
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i22
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr nonnull align 1 %i.v, i64 %gepdiff, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i22
  %i.af = load i64, ptr %i.g, align 8, !tbaa !60  ; 2 uses
  store i64 %i.af, ptr %i.z, align 8, !tbaa !59
  %i.ag = load ptr, ptr %3, align 8, !tbaa !49
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store i8 0, ptr %i.ah, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  %i.ai = load i64, ptr %i.l, align 8, !tbaa !59  ; 3 uses
  switch i64 %i.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread63 [
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.g
  %i.aj = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 1
  %i.al = xor i64 %i.ak, 7308895133777555061
  %i.am = getelementptr i8, ptr %i.aj, i64 8
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i64
  %i.ap = xor i64 %i.ao, 100
  %i.aq = or i64 %i.al, %i.ap
  %i.ar = icmp ne i64 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread63

bb.h:                                             ; preds = %.noexc.i23
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33.thread, %bb.s, %bb.p, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread63
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.av, %bb.i ], [ %.pn.i, %bb.m ] ; 2 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.y
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.ay = load i64, ptr %i.y, align 8, !tbaa !10
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27: ; preds = %bb.g
  %.pre = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %bcmp.i26 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.40, i64 %i.ai)
  %i.ba = icmp eq i32 %bcmp.i26, 0
  br i1 %i.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27
  %i.bb = load i32, ptr %.pre, align 1
  %i.bc = icmp ne i32 %i.bb, 1819242338
  %i.bd = zext i1 %i.bc to i32
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread63

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29
  %i.bf = load i64, ptr %i.z, align 8, !tbaa !59
  %i.bg = icmp eq i64 %i.bf, 4
  br i1 %i.bg, label %bb.j, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31

bb.j:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread
  %i.bh = load ptr, ptr %3, align 8, !tbaa !49
  %i.bi = load i32, ptr %i.bh, align 1
  %i.bj = icmp ne i32 %i.bi, 1702195828
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  %i.bm = zext i1 %i.bl to i64
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31: ; preds = %bb.j, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread
  %.sroa.2.8.insert.ext.i.i = phi i64 [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread ], [ %i.bm, %bb.j ]
  %.fca.1.insert.i.i = insertvalue { i32, i64 } { i32 2, i64 poison }, i64 %.sroa.2.8.insert.ext.i.i, 1
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33: ; preds = %bb.g
  %.pre65 = load ptr, ptr %2, align 8, !tbaa !49  ; 5 uses
  %bcmp.i32 = call i32 @bcmp(ptr %.pre65, ptr nonnull @.str.42, i64 %i.ai)
  %i.bn = icmp eq i32 %bcmp.i32, 0
  br i1 %i.bn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1)
          to label %.noexc34 unwind label %bb.i

.noexc34:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !79
  %i.bq = getelementptr i8, ptr %i.bp, i64 -24
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds i8, ptr %i.bo, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !110
  %i.bv = and i32 %i.bu, -75
  %i.bw = or disjoint i32 %i.bv, 8
  store i32 %i.bw, ptr %i.bt, align 8, !tbaa !119
  %i.bx = load ptr, ptr %3, align 8, !tbaa !49
  %i.by = load i64, ptr %i.z, align 8, !tbaa !59
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef %i.bx, i64 noundef %i.by)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.k ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %.noexc34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  %i.ca = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractImEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZNSirsERm.exit.i unwind label %bb.l ; 0 uses

_ZNSirsERm.exit.i:                                ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.cb = load i64, ptr %i.f, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  %i.cc = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cc, ptr %1, align 8, !tbaa !79
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ce = getelementptr i8, ptr %i.cc, i64 -24
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds i8, ptr %1, i64 %i.cf
  store ptr %i.cd, ptr %i.cg, align 8, !tbaa !79
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ch, ptr %i.bo, align 8, !tbaa !79
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ci, align 8, !tbaa !79
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !49 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSirsERm.exit.i
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !10
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

bb.k:                                             ; preds = %.noexc34
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.cq, %bb.l ], [ %i.cp, %bb.k ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSirsERm.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ci, align 8, !tbaa !79
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cr) #24
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cs, ptr %1, align 8, !tbaa !79
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cu = getelementptr i8, ptr %i.cs, i64 -24
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds i8, ptr %1, i64 %i.cv
  store ptr %i.ct, ptr %i.cw, align 8, !tbaa !79
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.cx, align 8, !tbaa !120
end_hunk_0
