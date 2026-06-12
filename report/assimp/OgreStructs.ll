inline.NumInlined: 1851
inline.NumDeleted: 929
begin_hunk_0_@_ZN6Assimp4Ogre10SubMeshXmlD2Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #31
  br label %_ZN6Assimp4Ogre8ISubMeshD2Ev.exit

_ZN6Assimp4Ogre8ISubMeshD2Ev.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp4Ogre10SubMeshXml5ResetEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #31
  br label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i.i

_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i.i:          ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !61

_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.d, align 8
  br label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZN6Assimp4Ogre12IndexDataXmlD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #31
  br label %_ZN6Assimp4Ogre12IndexDataXmlD2Ev.exit

_ZN6Assimp4Ogre12IndexDataXmlD2Ev.exit:           ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #31
  br label %bb.e

bb.e:                                             ; preds = %_ZN6Assimp4Ogre12IndexDataXmlD2Ev.exit, %bb.a
  store ptr null, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6Assimp4Ogre13VertexDataXmlD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %i.s) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 224) #31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr null, ptr %i.r, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6Assimp4Ogre9AnimationC2EPNS0_8SkeletonE(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 16)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.g, align 8
  store i8 0, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x float> <float 0.000000e+00, float -1.000000e+00>, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6Assimp4Ogre9AnimationC2EPNS0_4MeshE(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 16)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.g, align 8
  store i8 0, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x float> <float 0.000000e+00, float -1.000000e+00>, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK6Assimp4Ogre9Animation20AssociatedVertexDataEPNS0_20VertexAnimationTrackE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i16, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = zext i16 %i.d to i32
  %i.h = add nsw i32 %i.g, -1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i, label %_ZNK6Assimp4Ogre4Mesh10GetSubMeshEm.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  br label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.q = add nuw i64 %.0711.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.q, %i.p
  br i1 %exitcond.not.i, label %_ZNK6Assimp4Ogre4Mesh10GetSubMeshEm.exit, label %.lr.ph.i, !llvm.loop !33

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %.0711.i = phi i64 [ %i.q, %bb.e ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0711.i
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp eq i32 %i.t, %i.h
  br i1 %i.u, label %_ZNK6Assimp4Ogre4Mesh10GetSubMeshEm.exit, label %bb.e

_ZNK6Assimp4Ogre4Mesh10GetSubMeshEm.exit:         ; preds = %bb.e, %.lr.ph.i, %bb.d
  %i.v = phi ptr [ null, %bb.d ], [ %i.s, %.lr.ph.i ], [ null, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  br label %bb.f

bb.f:                                             ; preds = %_ZNK6Assimp4Ogre4Mesh10GetSubMeshEm.exit, %bb.c
  %.0.in = phi ptr [ %i.f, %bb.c ], [ %i.w, %_ZNK6Assimp4Ogre4Mesh10GetSubMeshEm.exit ]
  %.0 = load ptr, ptr %.0.in, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.1 = phi ptr [ %.0, %bb.f ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @_ZN6Assimp4Ogre20VertexAnimationTrack28ConvertToAssimpAnimationNodeEPNS0_8SkeletonE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.aiVector3t, align 8          ; 6 uses
  %3 = alloca %class.aiQuaterniont, align 16      ; 5 uses
  %4 = alloca %class.aiVector3t, align 8          ; 6 uses
  %5 = alloca %class.aiMatrix4x4t, align 4        ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8              ; 7 uses
  %.not.a = icmp eq i64 %i.c, 0
  br i1 %.not.a, label %bb.b, label %6

6:                                                ; preds = %bb.a
  %7 = load i32, ptr %0, align 8
  %.not = icmp eq i32 %7, 3
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %6, %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.50)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.e:                                             ; preds = %6
  %i.f = tail call noalias noundef nonnull dereferenceable(1080) ptr @_Znwm(i64 noundef 1080) #30 ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1048 ; 4 uses
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 1056 ; 3 uses
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1064 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.f, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = icmp ugt i64 %i.c, 1023
  br i1 %i.j, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = trunc nuw nsw i64 %i.c to i32
  store i32 %i.k, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr align 1 %i.m, i64 %i.c, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c
  store i8 0, ptr %i.n, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e, %bb.f
  %i.o = load ptr, ptr %1, align 8                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not11.i = icmp eq ptr %i.o, %i.q
  br i1 %.not11.i, label %.loopexit49, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.r = load ptr, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8.i, %.lr.ph.i
  %.sroa.04.012.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.z, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8.i ] ; 2 uses
  %i.s = load ptr, ptr %.sroa.04.012.i, align 8   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8
  %i.v = icmp eq i64 %i.u, %i.c
  br i1 %i.v, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.x, ptr %i.r, i64 %i.c)
  %i.y = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.y, label %_ZNK6Assimp4Ogre8Skeleton10BoneByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.012.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.z, %i.q
  br i1 %.not.i, label %.loopexit49, label %bb.g, !llvm.loop !62

.loopexit49:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8.i, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA73_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA22_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 1 dereferenceable(73) @.str.51, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 1 dereferenceable(22) @.str.52)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.loopexit49
  tail call void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.i:                                             ; preds = %.loopexit49
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZNK6Assimp4Ogre8Skeleton10BoneByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 44                ; 11 uses
  %i.ak = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.aj, i64 24) ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  %i.am = extractvalue { i64, i1 } %i.ak, 0
  %i.an = select i1 %i.al, i64 -1, i64 %i.am      ; 3 uses
  %i.ao = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.an) #30 ; 3 uses
  %i.ap = icmp eq ptr %i.ae, %i.af                ; 2 uses
  br i1 %i.ap, label %.loopexit48, label %bb.j

bb.j:                                             ; preds = %_ZNK6Assimp4Ogre8Skeleton10BoneByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aq = getelementptr inbounds [24 x i8], ptr %i.ao, i64 %i.aj
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %i.ar = phi ptr [ %i.ao, %bb.j ], [ %i.at, %bb.k ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.aq
  br i1 %i.au, label %.loopexit48, label %bb.k

.loopexit48:                                      ; preds = %bb.k, %_ZNK6Assimp4Ogre8Skeleton10BoneByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 1032 ; 2 uses
  store ptr %i.ao, ptr %i.av, align 8
  %i.aw = icmp ugt i64 %i.aj, 576460752303423487
  %i.ax = shl nsw i64 %i.aj, 5
  %i.ay = select i1 %i.aw, i64 -1, i64 %i.ax
  %i.az = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ay) #30 ; 5 uses
  br i1 %i.ap, label %.loopexit.thread, label %bb.l

.loopexit.thread:                                 ; preds = %.loopexit48
  store ptr %i.az, ptr %i.g, align 8
  %i.ba = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.an) #30
  store ptr %i.ba, ptr %i.i, align 8
  %i.bb = trunc nuw nsw i64 %i.aj to i32          ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 1028
  store i32 %i.bb, ptr %i.bc, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 1040
  store i32 %i.bb, ptr %i.bd, align 8
  store i32 %i.bb, ptr %i.h, align 8
  br label %._crit_edge

bb.l:                                             ; preds = %.loopexit48
  %i.be = getelementptr inbounds [32 x i8], ptr %i.az, i64 %i.aj
  %i.bf = add nsw i64 %i.aj, 576460752303423487
  %i.bg = and i64 %i.bf, 576460752303423487
  %xtraiter = and i64 %i.aj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.l, %.prol.preheader
  %i.bh = phi ptr [ %i.bk, %.prol.preheader ], [ %i.az, %bb.l ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.l ]
  store double 0.000000e+00, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i32 1, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !63

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.l
  %.unr = phi ptr [ %i.az, %bb.l ], [ %i.bk, %.prol.preheader ]
  %i.bl = icmp samesign ult i64 %i.bg, 7
  br i1 %i.bl, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.bm = phi ptr [ %i.ck, %.new ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store double 0.000000e+00, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i32 1, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store double 0.000000e+00, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  store i32 1, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  store double 0.000000e+00, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 88
  store i32 1, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 96
  store double 0.000000e+00, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 120
  store i32 1, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 128
  store double 0.000000e+00, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bm, i64 152
  store i32 1, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 160
  store double 0.000000e+00, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bm, i64 184
  store i32 1, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bm, i64 192
  store double 0.000000e+00, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bm, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bm, i64 216
  store i32 1, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bm, i64 224
  store double 0.000000e+00, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bm, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bm, i64 248
  store i32 1, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bm, i64 256 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.be
  br i1 %i.cl, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  store ptr %i.az, ptr %i.g, align 8
  %i.cm = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.an) #30 ; 3 uses
  %i.cn = getelementptr inbounds [24 x i8], ptr %i.cm, i64 %i.aj
end_hunk_0
