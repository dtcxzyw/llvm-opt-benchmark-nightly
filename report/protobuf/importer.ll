inline.NumInlined: 1010
inline.NumDeleted: 534
begin_hunk_0_@_ZN6google8protobuf8compiler14DiskSourceTree12OpenDiskFileESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %1
  br label %._crit_edge.i.i.i.i27

.noexc.i.i.i28.us.preheader:                      ; preds = %.critedge.thread, %.critedge
  %i.ax = phi ptr [ %i.x, %.critedge.thread ], [ %i.as, %.critedge ]
  %i.ay = phi ptr [ %i.w, %.critedge.thread ], [ %i.ar, %.critedge ] ; 5 uses
  br label %.noexc.i.i.i28.us

.noexc.i.i.i28.us:                                ; preds = %.noexc.i.i.i28.us.preheader, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %i.ay, ptr %5, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %1, ptr %i.a, align 8, !tbaa !55
  %i.az = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc30.us unwind label %.split54.us ; 3 uses

.noexc30.us:                                      ; preds = %.noexc.i.i.i28.us
  store ptr %i.az, ptr %5, align 8, !tbaa !49
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !55
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !47
  switch i64 %1, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %.noexc30.us
  %i.bb = load i8, ptr %2, align 1, !tbaa !47
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !47
  br label %bb.j

bb.i:                                             ; preds = %.noexc30.us
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 1 %2, i64 %1, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.noexc30.us
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !55  ; 2 uses
  store i64 %i.bc, ptr %i.ax, align 8, !tbaa !53
  %i.bd = load ptr, ptr %5, align 8, !tbaa !49
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  store i8 0, ptr %i.be, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.bf = load ptr, ptr %5, align 8, !tbaa !49
  %i.bg = invoke i32 (ptr, i32, ...) @open(ptr noundef %i.bf, i32 noundef 0)
          to label %bb.k unwind label %.split57.us ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.bh = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ay
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.us: ; preds = %bb.k
  %i.bj = load i64, ptr %i.ay, align 8, !tbaa !47
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.us: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.us
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.bl = icmp slt i32 %i.bg, 0
  br i1 %i.bl, label %bb.l, label %.split62.us

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.us
  %i.bm = tail call ptr @__errno_location() #35
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3
  %i.bo = icmp eq i32 %i.bn, 4
  br i1 %i.bo, label %.noexc.i.i.i28.us, label %.critedge2, !llvm.loop !209

.split54.us:                                      ; preds = %.noexc.i.i.i28.us
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

.split57.us:                                      ; preds = %bb.j
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

._crit_edge.i.i.i.i27:                            ; preds = %._crit_edge.i.i.i.i27.preheader, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %i.au, ptr %5, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  switch i64 %1, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i27
  %i.br = load i8, ptr %2, align 1, !tbaa !47
  store i8 %i.br, ptr %i.au, align 1, !tbaa !47
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i.i27
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.au, ptr align 1 %2, i64 %1, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i.i27
  store i64 %1, ptr %i.at, align 8, !tbaa !53
  store i8 0, ptr %i.aw, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.bs = invoke i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.au, i32 noundef 0)
          to label %bb.p unwind label %.split57   ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.bt = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.au
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.p
  %i.bv = load i64, ptr %i.au, align 8, !tbaa !47
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.bx = icmp slt i32 %i.bs, 0
  br i1 %i.bx, label %bb.q, label %.split62.us

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.by = tail call ptr @__errno_location() #35
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
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
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
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
  br i1 %i.av, label %bb.f, label %bb.g

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
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !53
  %i.bj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 noundef 0, i64 noundef %i.bi, ptr noundef nonnull @.str.6, i64 noundef 82) ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !213 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !213 ; 2 uses
  %.not7888 = icmp eq ptr %i.bl, %i.bn
  br i1 %.not7888, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %.not47 = icmp eq ptr %3, null
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.071.089, i64 64 ; 2 uses
  %.not78 = icmp eq ptr %i.bx, %i.bn
  br i1 %.not78, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %.090 = phi ptr [ undef, %.lr.ph ], [ %.3, %bb.h ] ; 2 uses
  %.sroa.071.089 = phi ptr [ %i.bl, %.lr.ph ], [ %i.bx, %bb.h ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %i.bo, ptr %5, align 8, !tbaa !54
  store i64 0, ptr %i.bp, align 8, !tbaa !53
  store i8 0, ptr %i.bo, align 8, !tbaa !47
  %i.by = load ptr, ptr %.sroa.071.089, align 8, !tbaa !49
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.071.089, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !53
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.071.089, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !49
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.071.089, i64 40
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !53
  %i.cf = invoke fastcc noundef zeroext i1 @_ZN6google8protobuf8compilerL12ApplyMappingESt17basic_string_viewIcSt11char_traitsIcEES5_S5_PNSt7__cxx1112basic_stringIcS4_SaIcEEE(i64 %1, ptr %2, i64 %i.ca, ptr %i.by, i64 %i.ce, ptr %i.cc, ptr noundef nonnull %5)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  br i1 %i.cf, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.k:                                             ; preds = %bb.j
  %i.cg = load ptr, ptr %5, align 8, !tbaa !49
  %i.ch = load i64, ptr %i.bp, align 8, !tbaa !53
  %i.ci = invoke noundef ptr @_ZN6google8protobuf8compiler14DiskSourceTree12OpenDiskFileESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 %i.ch, ptr %i.cg)
          to label %bb.l unwind label %bb.p       ; 3 uses

bb.l:                                             ; preds = %bb.k
  %.not = icmp eq ptr %i.ci, null
  br i1 %.not, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %.not47, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.p

bb.o:                                             ; preds = %bb.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.p:                                             ; preds = %bb.n, %bb.k
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.q:                                             ; preds = %bb.l
  %i.cl = tail call ptr @__errno_location() #35
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = icmp eq i32 %i.cm, 13
  br i1 %i.cn, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  store i64 32, ptr %7, align 8
  store ptr @.str.7, ptr %i.bq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.co = load ptr, ptr %5, align 8, !tbaa !49
  %i.cp = load i64, ptr %i.bp, align 8, !tbaa !53
  store i64 %i.cp, ptr %8, align 8
  store ptr %i.co, ptr %i.br, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %bb.s unwind label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.cq = load ptr, ptr %i.bs, align 8, !tbaa !49 ; 6 uses
  %i.cr = icmp eq ptr %i.cq, %i.bt
  %i.cs = load ptr, ptr %6, align 8, !tbaa !49    ; 5 uses
  %i.ct = icmp eq ptr %i.cs, %i.bu                ; 2 uses
  br i1 %i.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.s
  br i1 %i.ct, label %bb.t, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.s
  br i1 %i.ct, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cu = load i64, ptr %i.bv, align 8, !tbaa !53 ; 3 uses
  %i.cv = icmp ult i64 %i.cu, 16
  call void @llvm.assume(i1 %i.cv)
  switch i64 %i.cu, label %bb.v [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !47
  store i8 %i.cw, ptr %i.cq, align 1, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.cs, i64 %i.cu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.v, %bb.u, %bb.t
  %i.cx = load i64, ptr %i.bv, align 8, !tbaa !53 ; 2 uses
  store i64 %i.cx, ptr %i.bw, align 8, !tbaa !53
  %i.cy = load ptr, ptr %i.bs, align 8, !tbaa !49
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx
  store i8 0, ptr %i.cz, align 1, !tbaa !47
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.cs, ptr %i.bs, align 8, !tbaa !49
  %i.da = load <2 x i64>, ptr %i.bv, align 8, !tbaa !47
  store <2 x i64> %i.da, ptr %i.bw, align 8, !tbaa !47
  br label %bb.x

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.db = load i64, ptr %i.bt, align 8, !tbaa !47
  store ptr %i.cs, ptr %i.bs, align 8, !tbaa !49
  %i.dc = load <2 x i64>, ptr %i.bv, align 8, !tbaa !47
  store <2 x i64> %i.dc, ptr %i.bw, align 8, !tbaa !47
  %.not.i = icmp eq ptr %i.cq, null
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.cq, ptr %6, align 8, !tbaa !49
  store i64 %i.db, ptr %i.bu, align 8, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bu, ptr %6, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.w, %bb.x
  %9 = phi ptr [ %i.cq, %bb.w ], [ %i.bu, %bb.x ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.bv, align 8, !tbaa !53
  store i8 0, ptr %9, align 1, !tbaa !47
  %i.dd = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.bu
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.df = load i64, ptr %i.bu, align 8, !tbaa !47
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.y:                                             ; preds = %bb.r
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %bb.m, %bb.q, %bb.n, %bb.j
  %cond = phi i1 [ true, %bb.j ], [ false, %bb.m ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ], [ true, %bb.q ], [ false, %bb.n ]
  %.3 = phi ptr [ %.090, %bb.j ], [ %i.ci, %bb.m ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ], [ %.090, %bb.q ], [ %i.ci, %bb.n ] ; 2 uses
  %i.di = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.bo
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.dk = load i64, ptr %i.bo, align 8, !tbaa !47
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br i1 %cond, label %bb.h, label %.loopexit

bb.z:                                             ; preds = %bb.p, %bb.y, %bb.o
  %.pn48.pn = phi { ptr, i32 } [ %i.cj, %bb.o ], [ %i.ck, %bb.p ], [ %i.dh, %bb.y ]
  %i.dm = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.bo
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.z
  %i.do = load i64, ptr %i.bo, align 8, !tbaa !47
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  resume { ptr, i32 } %.pn48.pn

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !53
  %i.dt = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dq, i64 noundef 0, i64 noundef %i.ds, ptr noundef nonnull @.str.5, i64 noundef 15) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %._crit_edge, %bb.f
  %.5 = phi ptr [ null, %bb.f ], [ null, %._crit_edge ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ]
  ret ptr %.5
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8compiler14DiskSourceTree4OpenESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 %1, ptr %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6google8protobuf8compiler14DiskSourceTree15OpenVirtualFileESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS5_SaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 %1, ptr %2, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8compiler14DiskSourceTree19GetLastErrorMessageB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
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
end_hunk_0
