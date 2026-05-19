inline.NumInlined: 1874
inline.NumDeleted: 793
begin_hunk_0_@_ZN17DeadlyImportErrorC2EPKc:bb.a
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #24
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #21
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #21
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #21
  resume { ptr, i32 } %i.p
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA14_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA86_S1_RA22_S1_RKPS1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(14) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(86) %3, ptr noundef nonnull align 1 dereferenceable(22) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %6)
  invoke void @_ZN15DeadlyErrorBaseC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA86_KcRA22_S8_RKPS8_ERA14_S8_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %6, ptr noundef nonnull align 1 dereferenceable(14) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(86) %3, ptr noundef nonnull align 1 dereferenceable(22) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %6, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %6, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #24
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #21
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #21
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %6) #21
  resume { ptr, i32 } %i.o
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare void @_ZN6Assimp4Ogre4MeshC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp4Ogre20OgreBinarySerializer8ReadMeshEPNS0_4MeshE(ptr noundef nonnull align 8 captures(none) dereferenceable(20) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp ugt ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN6Assimp4Ogre20OgreBinarySerializer4ReadIbEET_v.exit

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull @.str.66)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

common.resume:                                    ; preds = %bb.ad, %bb.y, %bb.q, %bb.i, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.av, %bb.i ], [ %i.bc, %bb.q ], [ %i.bl, %bb.y ], [ %i.ch, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.j) #21
  br label %common.resume

_ZN6Assimp4Ogre20OgreBinarySerializer4ReadIbEET_v.exit: ; preds = %bb.a
  %i.l = load i8, ptr %i.e, align 1
  store ptr %i.f, ptr %i.d, align 8
  %i.m = icmp ne i8 %i.l, 0
  %i.n = zext i1 %i.m to i8
  store i8 %i.n, ptr %1, align 8
  %i.o = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.o, ptr noundef nonnull @.str.5)
  %i.p = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.q = load i8, ptr %1, align 8, !range !5, !noundef !6
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = select i1 %i.r, ptr @.str.7, ptr @.str.8
  store ptr %i.s, ptr %i.a, align 8
  call void @_ZN6Assimp6Logger12verboseDebugIJRA26_KcPS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.p, ptr noundef nonnull align 1 dereferenceable(26) @.str.6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.t = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_ZN6Assimp4Ogre20OgreBinarySerializer14RollbackHeaderEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6Assimp4Ogre20OgreBinarySerializer4ReadIbEET_v.exit
  %i.ad = call noundef zeroext i16 @_ZN6Assimp4Ogre20OgreBinarySerializer10ReadHeaderEb(ptr noundef nonnull align 8 dereferenceable(20) %0, i1 noundef zeroext true)
  %i.ae = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = and i64 %i.al, 4294967295
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_ZN6Assimp4Ogre20OgreBinarySerializer14RollbackHeaderEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.aa
  %i.ap = phi ptr [ %i.ai, %.lr.ph ], [ %i.bx, %bb.aa ] ; 3 uses
  %i.aq = phi ptr [ %i.ah, %.lr.ph ], [ %i.bz, %bb.aa ] ; 3 uses
  %i.ar = phi ptr [ %i.ae, %.lr.ph ], [ %i.by, %bb.aa ] ; 3 uses
  %.075 = phi i16 [ %i.ad, %.lr.ph ], [ %.1, %bb.aa ] ; 3 uses
  %i.as = xor i16 %.075, -32768                   ; 2 uses
  %i.at = call i16 @llvm.fshl.i16(i16 %i.as, i16 %i.as, i16 4)
  switch i16 %i.at, label %.critedge [
    i16 6, label %.critedge28
    i16 5, label %.critedge28
    i16 4, label %.critedge28
    i16 3, label %.critedge28
    i16 2, label %.critedge28
    i16 1, label %.critedge28
    i16 0, label %.critedge28
    i16 15, label %.critedge28
    i16 14, label %.critedge28
    i16 13, label %.critedge28
    i16 12, label %.critedge28
  ]

.critedge28:                                      ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %2 = lshr exact i16 %.075, 12
  switch i16 %2, label %_ZN6Assimp4Ogre20OgreBinarySerializer14ReadMeshBoundsEPNS0_4MeshE.exit [
    i16 5, label %bb.g
    i16 4, label %bb.j
    i16 6, label %bb.k
    i16 7, label %bb.l
    i16 8, label %bb.m
    i16 9, label %bb.n
    i16 10, label %bb.r
    i16 11, label %bb.s
    i16 12, label %bb.t
    i16 13, label %bb.u
    i16 14, label %bb.v
  ]

bb.g:                                             ; preds = %.critedge28
  %i.au = call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #23 ; 4 uses
  invoke void @_ZN6Assimp4Ogre10VertexDataC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.au)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.au, ptr %i.ao, align 8
  call void @_ZN6Assimp4Ogre20OgreBinarySerializer12ReadGeometryEPNS0_10VertexDataE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %i.au)
  br label %_ZN6Assimp4Ogre20OgreBinarySerializer14ReadMeshBoundsEPNS0_4MeshE.exit

bb.i:                                             ; preds = %bb.g
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 200) #24
  br label %common.resume

bb.j:                                             ; preds = %.critedge28
  call void @_ZN6Assimp4Ogre20OgreBinarySerializer11ReadSubMeshEPNS0_4MeshE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %1)
  br label %_ZN6Assimp4Ogre20OgreBinarySerializer14ReadMeshBoundsEPNS0_4MeshE.exit

bb.k:                                             ; preds = %.critedge28
  call void @_ZN6Assimp4Ogre20OgreBinarySerializer20ReadMeshSkeletonLinkEPNS0_4MeshE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %1)
  br label %_ZN6Assimp4Ogre20OgreBinarySerializer14ReadMeshBoundsEPNS0_4MeshE.exit

bb.l:                                             ; preds = %.critedge28
  %i.aw = load ptr, ptr %i.ao, align 8
  call void @_ZN6Assimp4Ogre20OgreBinarySerializer18ReadBoneAssignmentEPNS0_10VertexDataE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %i.aw)
  br label %_ZN6Assimp4Ogre20OgreBinarySerializer14ReadMeshBoundsEPNS0_4MeshE.exit

bb.m:                                             ; preds = %.critedge28
  call void @_ZN6Assimp4Ogre20OgreBinarySerializer15ReadMeshLodInfoEPNS0_4MeshE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %1)
  br label %_ZN6Assimp4Ogre20OgreBinarySerializer14ReadMeshBoundsEPNS0_4MeshE.exit

bb.n:                                             ; preds = %.critedge28
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 28 ; 2 uses
  store ptr %i.ax, ptr %i.aq, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = icmp ugt ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.o, label %_ZN6Assimp4Ogre20OgreBinarySerializer14ReadMeshBoundsEPNS0_4MeshE.exit

bb.o:                                             ; preds = %bb.n
  %i.bb = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull @.str.72)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bb) #21
  br label %common.resume

bb.r:                                             ; preds = %.critedge28
  call void @_ZN6Assimp4Ogre20OgreBinarySerializer16ReadSubMeshNamesEPNS0_4MeshE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %1)
  br label %_ZN6Assimp4Ogre20OgreBinarySerializer14ReadMeshBoundsEPNS0_4MeshE.exit

bb.s:                                             ; preds = %.critedge28
  call void @_ZN6Assimp4Ogre20OgreBinarySerializer12ReadEdgeListEPNS0_4MeshE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr nonnull poison)
  br label %_ZN6Assimp4Ogre20OgreBinarySerializer14ReadMeshBoundsEPNS0_4MeshE.exit

bb.t:                                             ; preds = %.critedge28
  call void @_ZN6Assimp4Ogre20OgreBinarySerializer9ReadPosesEPNS0_4MeshE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %1)
  br label %_ZN6Assimp4Ogre20OgreBinarySerializer14ReadMeshBoundsEPNS0_4MeshE.exit

bb.u:                                             ; preds = %.critedge28
  call void @_ZN6Assimp4Ogre20OgreBinarySerializer14ReadAnimationsEPNS0_4MeshE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %1)
  br label %_ZN6Assimp4Ogre20OgreBinarySerializer14ReadMeshBoundsEPNS0_4MeshE.exit

bb.v:                                             ; preds = %.critedge28
  %i.bd = load i32, ptr %0, align 8
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr i8, ptr %i.ap, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 -6     ; 2 uses
  store ptr %i.bg, ptr %i.aq, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = icmp ugt ptr %i.bg, %i.bi
  br i1 %i.bj, label %bb.w, label %_ZN6Assimp4Ogre20OgreBinarySerializer14ReadMeshBoundsEPNS0_4MeshE.exit

bb.w:                                             ; preds = %bb.v
  %i.bk = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull @.str.72)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @__cxa_throw(ptr nonnull %i.bk, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bk) #21
  br label %common.resume

_ZN6Assimp4Ogre20OgreBinarySerializer14ReadMeshBoundsEPNS0_4MeshE.exit: ; preds = %bb.v, %bb.n, %bb.u, %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %bb.j, %bb.h, %.critedge28
  %i.bm = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 2 uses
  %i.bu = and i64 %i.bt, 4294967295
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN6Assimp4Ogre20OgreBinarySerializer14ReadMeshBoundsEPNS0_4MeshE.exit
  %i.bw = call noundef zeroext i16 @_ZN6Assimp4Ogre20OgreBinarySerializer10ReadHeaderEb(ptr noundef nonnull align 8 dereferenceable(20) %0, i1 noundef zeroext true)
  %.pre = load ptr, ptr %i.b, align 8             ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre91 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert92 = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre93 = load ptr, ptr %.phi.trans.insert92, align 8 ; 2 uses
  %.pre94 = ptrtoint ptr %.pre91 to i64
  %.pre95 = ptrtoint ptr %.pre93 to i64
  %.pre97 = sub i64 %.pre94, %.pre95
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZN6Assimp4Ogre20OgreBinarySerializer14ReadMeshBoundsEPNS0_4MeshE.exit
  %.pre-phi98 = phi i64 [ %.pre97, %bb.z ], [ %i.bt, %_ZN6Assimp4Ogre20OgreBinarySerializer14ReadMeshBoundsEPNS0_4MeshE.exit ]
  %i.bx = phi ptr [ %.pre93, %bb.z ], [ %i.bq, %_ZN6Assimp4Ogre20OgreBinarySerializer14ReadMeshBoundsEPNS0_4MeshE.exit ]
  %i.by = phi ptr [ %.pre, %bb.z ], [ %i.bm, %_ZN6Assimp4Ogre20OgreBinarySerializer14ReadMeshBoundsEPNS0_4MeshE.exit ] ; 2 uses
  %.1 = phi i16 [ %i.bw, %bb.z ], [ %.075, %_ZN6Assimp4Ogre20OgreBinarySerializer14ReadMeshBoundsEPNS0_4MeshE.exit ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = and i64 %.pre-phi98, 4294967295
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %_ZN6Assimp4Ogre20OgreBinarySerializer14RollbackHeaderEv.exit, label %bb.f, !llvm.loop !7

.critedge:                                        ; preds = %bb.f
  %i.cc = getelementptr inbounds i8, ptr %i.ap, i64 -6 ; 2 uses
  store ptr %i.cc, ptr %i.aq, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = icmp ugt ptr %i.cc, %i.ce
  br i1 %i.cf, label %bb.ab, label %_ZN6Assimp4Ogre20OgreBinarySerializer14RollbackHeaderEv.exit

bb.ab:                                            ; preds = %.critedge
  %i.cg = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull @.str.72)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @__cxa_throw(ptr nonnull %i.cg, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cg) #21
  br label %common.resume

_ZN6Assimp4Ogre20OgreBinarySerializer14RollbackHeaderEv.exit: ; preds = %bb.aa, %bb.e, %.critedge, %_ZN6Assimp4Ogre20OgreBinarySerializer4ReadIbEET_v.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8
  call void @_ZNK6Assimp4Ogre20OgreBinarySerializer20NormalizeBoneWeightsEPNS0_10VertexDataE(ptr nonnull align 8 poison, ptr noundef %i.cj)
  ret void
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #6

declare void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger12verboseDebugIJRA26_KcPS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(26) %1) #21
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 1 dereferenceable(26) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA26_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #21
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA26_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJEPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA26_cEERKT_.exit
  %i.d = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
end_hunk_0
