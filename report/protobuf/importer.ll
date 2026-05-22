inline.NumInlined: 1010
inline.NumDeleted: 534
begin_hunk_0_@_ZN6google8protobuf8compiler14DiskSourceTree12OpenDiskFileESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.ca = icmp eq i32 %i.bz, 4
  br i1 %i.ca, label %._crit_edge.i.i.i.i27, label %.critedge2, !llvm.loop !209

.split62.us:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.us
  %.us-phi63 = phi i32 [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.us ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ]
  %i.cb = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #34 ; 4 uses
  invoke void @_ZN6google8protobuf2io15FileInputStreamC1Eii(ptr noundef nonnull align 8 dereferenceable(88) %i.cb, i32 noundef %.us-phi63, i32 noundef -1)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %.split62.us
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 20
  store i8 1, ptr %i.cc, align 4, !tbaa !210
  br label %.critedge2

.split57:                                         ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.split57.us, %.split57
  %i.ce = phi ptr [ %i.au, %.split57 ], [ %i.ay, %.split57.us ] ; 2 uses
  %.us-phi60 = phi { ptr, i32 } [ %i.cd, %.split57 ], [ %i.bq, %.split57.us ] ; 2 uses
  %i.cf = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ce
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.s
  %i.ch = load i64, ptr %i.ce, align 8, !tbaa !47
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %.split54.us
  %.pn = phi { ptr, i32 } [ %i.bp, %.split54.us ], [ %.us-phi60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %.us-phi60, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.u

bb.t:                                             ; preds = %.split62.us
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef 88) #32
  br label %bb.u

.critedge2:                                       ; preds = %bb.q, %bb.l, %bb.r, %bb.g
  %.1 = phi ptr [ null, %bb.g ], [ %i.cb, %bb.r ], [ null, %bb.l ], [ null, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret ptr %.1

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %bb.t
  %.pn19.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ], [ %i.cj, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %.pn19.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf8compiler14DiskSourceTree21VirtualFileToDiskFileESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS5_SaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 %1, ptr %2, ptr noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6google8protobuf8compiler14DiskSourceTree15OpenVirtualFileESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS5_SaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 %1, ptr %2, ptr noundef %3) ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6google8protobuf2io19ZeroCopyInputStreamESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN6google8protobuf2io19ZeroCopyInputStreamEEclEPS3_.exit.i

_ZNKSt14default_deleteIN6google8protobuf2io19ZeroCopyInputStreamEEclEPS3_.exit.i: ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #31, !inline_history !82
  br label %_ZNSt10unique_ptrIN6google8protobuf2io19ZeroCopyInputStreamESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN6google8protobuf2io19ZeroCopyInputStreamESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6google8protobuf2io19ZeroCopyInputStreamEEclEPS3_.exit.i
  %i.e = icmp ne ptr %i.a, null
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8compiler14DiskSourceTree15OpenVirtualFileESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS5_SaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 %1, ptr %2, ptr noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call fastcc void @_ZN6google8protobuf8compilerL16CanonicalizePathB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable align 8 %4, i64 %1, ptr %2)
  %i.a = load ptr, ptr %4, align 8, !tbaa !49     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %i.d = icmp eq i64 %1, %i.c
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread25.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %bcmp.i.i = call i32 @bcmp(ptr %2, ptr %i.a, i64 %1)
  %i.f = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.f, label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %.critedge

_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.g = icmp eq i64 %1, 2
  br i1 %i.g, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i51, label %bb.c

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i51: ; preds = %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  %i.h = load i16, ptr %2, align 1
  %i.i = icmp ne i16 %i.h, 11822
  %i.j = zext i1 %i.i to i32
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN6google8protobuf8compilerL23ContainsParentReferenceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread25.thread.i

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  %i.l = icmp ult i64 %1, 3
  br i1 %i.l, label %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread25.thread.i, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i: ; preds = %bb.c
  %i.m = load i16, ptr %2, align 1
  %i.n = xor i16 %i.m, 11822
  %i.o = getelementptr i8, ptr %2, i64 2
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i16
  %i.r = xor i16 %i.q, 47
  %i.s = or i16 %i.n, %i.r
  %i.t = icmp ne i16 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN6google8protobuf8compilerL23ContainsParentReferenceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i

_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i
  %i.w = getelementptr i8, ptr %2, i64 %1         ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -3       ; 2 uses
  %i.y = load i16, ptr %i.x, align 1
  %i.z = xor i16 %i.y, 11823
  %i.aa = getelementptr i8, ptr %i.x, i64 2
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i16
  %i.ad = xor i16 %i.ac, 46
  %i.ae = or i16 %i.z, %i.ad
  %i.af = icmp ne i16 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %_ZN6google8protobuf8compilerL23ContainsParentReferenceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread25.i

_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread25.thread.i: ; preds = %bb.b, %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i51
  br label %_ZN6google8protobuf8compilerL23ContainsParentReferenceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread25.i: ; preds = %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i
  %.not2531.i.i.i.i = icmp eq i64 %1, 3
  br i1 %.not2531.i.i.i.i, label %_ZN6google8protobuf8compilerL23ContainsParentReferenceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread25.i
  %i.ai = ptrtoint ptr %i.w to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.033.i.i.i.i = phi i64 [ %1, %.lr.ph.i.i.i.i ], [ %i.au, %bb.e ]
  %.02132.i.i.i.i = phi ptr [ %2, %.lr.ph.i.i.i.i ], [ %i.as, %bb.e ]
  %.reass.reass.i.reass.reass.i.reass.reass.i.i = add i64 %.033.i.i.i.i, -3
  %i.aj = call ptr @memchr(ptr noundef nonnull %.02132.i.i.i.i, i32 noundef 47, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.i.i) #31 ; 4 uses
  %.not26.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not26.i.i.i.i, label %_ZN6google8protobuf8compilerL23ContainsParentReferenceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i14.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i14.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i
  %i.ak = load i32, ptr %i.aj, align 1
  %i.al = icmp ne i32 %i.ak, 791555631
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i14.i
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = ptrtoint ptr %2 to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp ne i64 %i.aq, -1
  br label %_ZN6google8protobuf8compilerL23ContainsParentReferenceESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i14.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.ai, %i.at                    ; 2 uses
  %.not25.i.i.i.i = icmp ult i64 %i.au, 4
  br i1 %.not25.i.i.i.i, label %_ZN6google8protobuf8compilerL23ContainsParentReferenceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i, !llvm.loop !204

_ZN6google8protobuf8compilerL23ContainsParentReferenceESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i, %bb.e, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i51, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i, %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i, %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread25.thread.i, %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread25.i, %bb.d
  %i.av = phi i1 [ true, %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ], [ true, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ], [ false, %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread25.i ], [ %i.ar, %bb.d ], [ true, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i51 ], [ false, %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread25.thread.i ], [ false, %bb.e ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.a, %i.aw
  br i1 %i.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN6google8protobuf8compilerL23ContainsParentReferenceESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ay = icmp ult i64 %1, 16
  call void @llvm.assume(i1 %i.ay)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6google8protobuf8compilerL23ContainsParentReferenceESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.az = load i64, ptr %i.aw, align 8, !tbaa !47
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.ba) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br i1 %i.av, label %._crit_edge, label %bb.f

.critedge:                                        ; preds = %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.a, %i.bb
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i54: ; preds = %.critedge
  %i.bd = icmp ult i64 %i.c, 16
  call void @llvm.assume(i1 %i.bd)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %.critedge
  %i.be = load i64, ptr %i.bb, align 8, !tbaa !47
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.bf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %._crit_edge

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !213 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !213 ; 2 uses
  %.not7888 = icmp eq ptr %i.bh, %i.bj
  br i1 %.not7888, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %.not47 = icmp eq ptr %3, null
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.not21.i = icmp eq ptr %6, %i.bo
  br label %bb.h

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.071.089, i64 64 ; 2 uses
  %.not78 = icmp eq ptr %i.bt, %i.bj
  br i1 %.not78, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %.090 = phi ptr [ undef, %.lr.ph ], [ %.3, %bb.g ] ; 2 uses
  %.sroa.071.089 = phi ptr [ %i.bh, %.lr.ph ], [ %i.bt, %bb.g ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %i.bk, ptr %5, align 8, !tbaa !54
  store i64 0, ptr %i.bl, align 8, !tbaa !53
  store i8 0, ptr %i.bk, align 8, !tbaa !47
  %i.bu = load ptr, ptr %.sroa.071.089, align 8, !tbaa !49
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.071.089, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !53
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.071.089, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !49
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.071.089, i64 40
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !53
  %i.cb = invoke fastcc noundef zeroext i1 @_ZN6google8protobuf8compilerL12ApplyMappingESt17basic_string_viewIcSt11char_traitsIcEES5_S5_PNSt7__cxx1112basic_stringIcS4_SaIcEEE(i64 %1, ptr %2, i64 %i.bw, ptr %i.bu, i64 %i.ca, ptr %i.by, ptr noundef nonnull %5)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  br i1 %i.cb, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.j:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %5, align 8, !tbaa !49
  %i.cd = load i64, ptr %i.bl, align 8, !tbaa !53
  %i.ce = invoke noundef ptr @_ZN6google8protobuf8compiler14DiskSourceTree12OpenDiskFileESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 %i.cd, ptr %i.cc)
          to label %bb.k unwind label %bb.o       ; 3 uses

bb.k:                                             ; preds = %bb.j
  %.not = icmp eq ptr %i.ce, null
  br i1 %.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not47, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.o

bb.n:                                             ; preds = %bb.h
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.o:                                             ; preds = %bb.m, %bb.j
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.p:                                             ; preds = %bb.k
  %i.ch = tail call ptr @__errno_location() #35
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.cj = icmp eq i32 %i.ci, 13
  br i1 %i.cj, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  store i64 32, ptr %7, align 8
  store ptr @.str.7, ptr %i.bm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.ck = load ptr, ptr %5, align 8, !tbaa !49
  %i.cl = load i64, ptr %i.bl, align 8, !tbaa !53
  store i64 %i.cl, ptr %8, align 8
  store ptr %i.ck, ptr %i.bn, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %bb.r unwind label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.cm = load ptr, ptr %i.bo, align 8, !tbaa !49 ; 6 uses
  %i.cn = icmp eq ptr %i.cm, %i.bp
  %i.co = load ptr, ptr %6, align 8, !tbaa !49    ; 6 uses
  %i.cp = icmp eq ptr %i.co, %i.bq                ; 2 uses
  br i1 %i.cn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.r
  br i1 %i.cp, label %bb.s, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.r
  br i1 %i.cp, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cq = load i64, ptr %i.br, align 8, !tbaa !53 ; 3 uses
  %i.cr = icmp ult i64 %i.cq, 16
  call void @llvm.assume(i1 %i.cr)
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.t, !prof !77

bb.t:                                             ; preds = %bb.s
  switch i64 %i.cq, label %bb.v [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.cs = load i8, ptr %i.co, align 1, !tbaa !47
  store i8 %i.cs, ptr %i.cm, align 1, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cm, ptr align 1 %i.co, i64 %i.cq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.v, %bb.u, %bb.t
  %i.ct = load i64, ptr %i.br, align 8, !tbaa !53 ; 2 uses
  store i64 %i.ct, ptr %i.bs, align 8, !tbaa !53
  %i.cu = load ptr, ptr %i.bo, align 8, !tbaa !49
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ct
  store i8 0, ptr %i.cv, align 1, !tbaa !47
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.co, ptr %i.bo, align 8, !tbaa !49
  %i.cw = load <2 x i64>, ptr %i.br, align 8, !tbaa !47
  store <2 x i64> %i.cw, ptr %i.bs, align 8, !tbaa !47
  br label %bb.x

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.cx = load i64, ptr %i.bp, align 8, !tbaa !47
  store ptr %i.co, ptr %i.bo, align 8, !tbaa !49
  %i.cy = load <2 x i64>, ptr %i.br, align 8, !tbaa !47
  store <2 x i64> %i.cy, ptr %i.bs, align 8, !tbaa !47
  %.not.i = icmp eq ptr %i.cm, null
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.cm, ptr %6, align 8, !tbaa !49
  store i64 %i.cx, ptr %i.bq, align 8, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bq, ptr %6, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.w, %bb.x
  %i.cz = phi ptr [ %i.cm, %bb.w ], [ %i.bq, %bb.x ], [ %i.co, %bb.s ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.br, align 8, !tbaa !53
  store i8 0, ptr %i.cz, align 1, !tbaa !47
  %i.da = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.bq
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dc = load i64, ptr %i.bq, align 8, !tbaa !47
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.y:                                             ; preds = %bb.q
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %bb.l, %bb.p, %bb.m, %bb.i
  %cond = phi i1 [ true, %bb.i ], [ false, %bb.l ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ], [ true, %bb.p ], [ false, %bb.m ]
  %.3 = phi ptr [ %.090, %bb.i ], [ %i.ce, %bb.l ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ], [ %.090, %bb.p ], [ %i.ce, %bb.m ] ; 2 uses
  %i.df = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.bk
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.dh = load i64, ptr %i.bk, align 8, !tbaa !47
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br i1 %cond, label %bb.g, label %.loopexit

bb.z:                                             ; preds = %bb.o, %bb.y, %bb.n
  %.pn48.pn = phi { ptr, i32 } [ %i.cf, %bb.n ], [ %i.cg, %bb.o ], [ %i.de, %bb.y ]
  %i.dj = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.bk
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.z
  %i.dl = load i64, ptr %i.bk, align 8, !tbaa !47
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  resume { ptr, i32 } %.pn48.pn

._crit_edge:                                      ; preds = %bb.g, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %.sink122 = phi i64 [ 82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ 15, %bb.f ], [ 15, %bb.g ]
  %.str.5.sink = phi ptr [ @.str.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ @.str.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ @.str.5, %bb.f ], [ @.str.5, %bb.g ]
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !53
  %i.dq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dn, i64 noundef 0, i64 noundef %i.dp, ptr noundef nonnull %.str.5.sink, i64 noundef %.sink122) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %._crit_edge
  %.5 = phi ptr [ null, %._crit_edge ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ]
  ret ptr %.5
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8compiler14DiskSourceTree4OpenESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 %1, ptr %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6google8protobuf8compiler14DiskSourceTree15OpenVirtualFileESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS5_SaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 %1, ptr %2, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8compiler14DiskSourceTree19GetLastErrorMessageB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !54
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !53   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.f, ptr %i.a, align 8, !tbaa !55
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !49
  %i.i = load i64, ptr %i.a, align 8, !tbaa !55
  store i64 %i.i, ptr %i.c, align 8, !tbaa !47
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !47
  store i8 %i.k, ptr %i.j, align 1, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !53
  %i.n = load ptr, ptr %0, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #13

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

declare void @_ZN6google8protobuf2io15FileInputStreamC1Eii(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef, i32 noundef) unnamed_addr #4

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8compiler23MultiFileErrorCollector13RecordWarningESt17basic_string_viewIcSt11char_traitsIcEEiiS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, ptr %2, i32 noundef %3, i32 noundef %4, ptr noundef byval(%"class.std::basic_string_view") align 8 %5) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6google8protobuf18DescriptorDatabase23FindAllExtensionNumbersESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, ptr %2, ptr noundef %3) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6google8protobuf18DescriptorDatabase16FindAllFileNamesEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #31 ; 0 uses
  tail call void @_ZSt9terminatev() #30
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt4pairIS8_S8_ESaISB_EEE7destroyISaISA_IKS8_SD_EEEEDaPT_PNS1_13map_slot_typeIS8_SD_EE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !214  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !216  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !47
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.k = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !49 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !47
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #32
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !217

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !214
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.q = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !218
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #32
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit.i

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %1, align 8, !tbaa !49     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS_IS5_S5_ESaIS7_EEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !47
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #32
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS_IS5_S5_ESaIS7_EEED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS_IS5_S5_ESaIS7_EEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

declare void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt4pairISB_SB_ESaISE_EEEENS3_10StringHashENS3_8StringEqESaISD_IKSB_SG_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSQ_SR_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::allocator.99", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt4pairIS8_S8_ESaISB_EEE7destroyISaISA_IKS8_SD_EEEEDaPT_PNS1_13map_slot_typeIS8_SD_EE(ptr noundef nonnull %3, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #19 comdat personality ptr @__gxx_personality_v0 {
end_hunk_0
