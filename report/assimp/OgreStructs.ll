inline.NumInlined: 1851
inline.NumDeleted: 929
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6Assimp4Ogre10SubMeshXmlD2Ev:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %i.w = load i64, ptr %i.u, align 8
  %i.x = add i64 %i.w, 1
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
  %5 = alloca %class.aiMatrix4x4t, align 16       ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8              ; 7 uses
  %i.d = icmp ne i64 %i.c, 0
  %i.e = load i32, ptr %0, align 8
  %.not = icmp eq i32 %i.e, 3
  %or.cond = select i1 %i.d, i1 %.not, i1 false
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.50)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noalias noundef nonnull dereferenceable(1080) ptr @_Znwm(i64 noundef 1080) #30 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1048 ; 4 uses
  store ptr null, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1056 ; 3 uses
  store i32 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1064 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.h, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = icmp ugt i64 %i.c, 1023
  br i1 %i.l, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = trunc nuw nsw i64 %i.c to i32
  store i32 %i.m, ptr %i.h, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 1 %i.o, i64 %i.c, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.c
  store i8 0, ptr %i.p, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e, %bb.f
  %i.q = load ptr, ptr %1, align 8                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not11.i = icmp eq ptr %i.q, %i.s
  br i1 %.not11.i, label %.loopexit48, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.t = load ptr, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8.i, %.lr.ph.i
  %.sroa.04.012.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.ab, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8.i ] ; 2 uses
  %i.u = load ptr, ptr %.sroa.04.012.i, align 8   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.w, %i.c
  br i1 %i.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.z, ptr %i.t, i64 %i.c)
  %i.aa = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.aa, label %_ZNK6Assimp4Ogre8Skeleton10BoneByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.012.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, %i.s
  br i1 %.not.i, label %.loopexit48, label %bb.g, !llvm.loop !62

.loopexit48:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8.i, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA73_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA22_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 1 dereferenceable(73) @.str.51, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 1 dereferenceable(22) @.str.52)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.loopexit48
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.i:                                             ; preds = %.loopexit48
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZNK6Assimp4Ogre8Skeleton10BoneByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 44                ; 11 uses
  %i.am = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.al, i64 24) ; 2 uses
  %i.an = extractvalue { i64, i1 } %i.am, 1
  %i.ao = extractvalue { i64, i1 } %i.am, 0
  %i.ap = select i1 %i.an, i64 -1, i64 %i.ao      ; 3 uses
  %i.aq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ap) #30 ; 3 uses
  %i.ar = icmp eq ptr %i.ag, %i.ah                ; 2 uses
  br i1 %i.ar, label %.loopexit47, label %bb.j

bb.j:                                             ; preds = %_ZNK6Assimp4Ogre8Skeleton10BoneByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.as = getelementptr inbounds [24 x i8], ptr %i.aq, i64 %i.al
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %i.at = phi ptr [ %i.aq, %bb.j ], [ %i.av, %bb.k ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %.loopexit47, label %bb.k

.loopexit47:                                      ; preds = %bb.k, %_ZNK6Assimp4Ogre8Skeleton10BoneByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 1032 ; 2 uses
  store ptr %i.aq, ptr %i.ax, align 8
  %i.ay = icmp ugt i64 %i.al, 576460752303423487
  %i.az = shl nsw i64 %i.al, 5
  %i.ba = select i1 %i.ay, i64 -1, i64 %i.az
  %i.bb = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ba) #30 ; 5 uses
  br i1 %i.ar, label %.loopexit.thread, label %bb.l

.loopexit.thread:                                 ; preds = %.loopexit47
  store ptr %i.bb, ptr %i.i, align 8
  %i.bc = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ap) #30
  store ptr %i.bc, ptr %i.k, align 8
  %i.bd = trunc nuw nsw i64 %i.al to i32          ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 1028
  store i32 %i.bd, ptr %i.be, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 1040
  store i32 %i.bd, ptr %i.bf, align 8
  store i32 %i.bd, ptr %i.j, align 8
  br label %._crit_edge

bb.l:                                             ; preds = %.loopexit47
  %i.bg = getelementptr inbounds [32 x i8], ptr %i.bb, i64 %i.al
  %i.bh = add nsw i64 %i.al, 576460752303423487
  %i.bi = and i64 %i.bh, 576460752303423487
  %xtraiter = and i64 %i.al, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.l, %.prol.preheader
  %i.bj = phi ptr [ %i.bm, %.prol.preheader ], [ %i.bb, %bb.l ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.l ]
  store double 0.000000e+00, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store i32 1, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !63

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.l
  %.unr = phi ptr [ %i.bb, %bb.l ], [ %i.bm, %.prol.preheader ]
  %i.bn = icmp samesign ult i64 %i.bi, 7
  br i1 %i.bn, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.bo = phi ptr [ %i.cm, %.new ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store double 0.000000e+00, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i32 1, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store double 0.000000e+00, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  store i32 1, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  store double 0.000000e+00, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 88
  store i32 1, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  store double 0.000000e+00, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 120
  store i32 1, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 128
  store double 0.000000e+00, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 152
  store i32 1, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 160
  store double 0.000000e+00, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bo, i64 184
  store i32 1, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 192
  store double 0.000000e+00, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bo, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 216
  store i32 1, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 224
  store double 0.000000e+00, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bo, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bo, i64 248
  store i32 1, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bo, i64 256 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.bg
  br i1 %i.cn, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  store ptr %i.bb, ptr %i.i, align 8
  %i.co = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ap) #30 ; 3 uses
  %i.cp = getelementptr inbounds [24 x i8], ptr %i.co, i64 %i.al
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.unr-lcssa
  %i.cq = phi ptr [ %i.co, %.unr-lcssa ], [ %i.cs, %bb.m ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.cp
  br i1 %i.ct, label %.lr.ph, label %bb.m

.lr.ph:                                           ; preds = %bb.m
  store ptr %i.co, ptr %i.k, align 8
  %i.cu = trunc i64 %i.al to i32                  ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.h, i64 1028
  store i32 %i.cu, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 1040
  store i32 %i.cu, ptr %i.cw, align 8
  store i32 %i.cu, ptr %i.j, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.u, i64 184
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 60
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n, %.loopexit.thread
  ret ptr %i.h

bb.n:                                             ; preds = %.lr.ph, %bb.n
  %.04150 = phi i64 [ 0, %.lr.ph ], [ %i.jr, %bb.n ] ; 5 uses
  %i.dn = load ptr, ptr %i.ae, align 8
  %i.do = getelementptr inbounds nuw [44 x i8], ptr %i.dn, i64 %.04150 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store <2 x float> zeroinitializer, ptr %2, align 8
  store float 0.000000e+00, ptr %i.cx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %3, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store <2 x float> zeroinitializer, ptr %4, align 8
  store float 0.000000e+00, ptr %i.cy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 20
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.du = load float, ptr %i.dq, align 4, !noalias !64 ; 4 uses
  %i.dv = fneg float %i.du                        ; 3 uses
  %i.dw = load float, ptr %i.dp, align 4, !noalias !69
  %i.dx = load float, ptr %i.dr, align 4, !noalias !69 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 36
  %i.dz = load float, ptr %i.dy, align 4, !noalias !69 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.eb = load float, ptr %i.ea, align 4, !noalias !69 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.ed = load float, ptr %i.ec, align 4, !noalias !69
  %i.ee = getelementptr inbounds nuw i8, ptr %i.do, i64 28
  %i.ef = load float, ptr %i.ee, align 4, !noalias !69 ; 4 uses
  %i.eg = load <2 x float>, ptr %i.dt, align 4, !noalias !64 ; 3 uses
  %i.eh = load <2 x float>, ptr %i.ds, align 4, !noalias !64 ; 6 uses
  %i.ei = extractelement <2 x float> %i.eh, i64 0 ; 5 uses
  %i.ej = extractelement <2 x float> %i.eh, i64 1 ; 4 uses
  %i.ek = fmul float %i.ej, %i.ej                 ; 2 uses
  %i.el = fmul float %i.ej, %i.du
  %i.em = call float @llvm.fmuladd.f32(float %i.ei, float %i.ei, float %i.ek)
  %i.en = insertelement <2 x float> poison, float %i.du, i64 0
  %i.eo = insertelement <2 x float> %i.en, float %i.dv, i64 1
  %i.ep = fmul <2 x float> %i.eh, %i.eo
  %i.eq = shufflevector <2 x float> %i.eg, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>
  %i.er = shufflevector <4 x float> <float -2.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x float> %i.eq, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.es = shufflevector <2 x float> %i.eg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.et = insertelement <4 x float> %i.es, float -0.000000e+00, i64 3
  %i.eu = insertelement <4 x float> %i.et, float %i.em, i64 0
  %i.ev = shufflevector <2 x float> %i.eh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ew = shufflevector <4 x float> %i.eu, <4 x float> %i.ev, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ex = shufflevector <2 x float> %i.ep, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ey = shufflevector <4 x float> <float 1.000000e+00, float poison, float poison, float 1.000000e+00>, <4 x float> %i.ex, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ez = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.er, <4 x float> %i.ew, <4 x float> %i.ey)
  %i.fa = fmul <4 x float> %i.ez, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00>
  %i.fb = extractelement <2 x float> %i.eg, i64 0 ; 7 uses
  %i.fc = call float @llvm.fmuladd.f32(float %i.fb, float %i.ei, float %i.el)
  %i.fd = fmul float %i.fc, 2.000000e+00
  %i.fe = call float @llvm.fmuladd.f32(float %i.fb, float %i.fb, float %i.ek)
  %i.ff = call float @llvm.fmuladd.f32(float %i.fe, float -2.000000e+00, float 1.000000e+00)
  %i.fg = fmul float %i.fb, %i.dv
  %i.fh = call float @llvm.fmuladd.f32(float %i.ei, float %i.ej, float %i.fg)
  %i.fi = fmul float %i.fh, 2.000000e+00
  %i.fj = fmul float %i.ei, %i.dv
  %i.fk = fmul float %i.fb, %i.du
  %foldExtExtBinop = fmul <2 x float> %i.eh, %i.eh
  %i.fl = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fm = call float @llvm.fmuladd.f32(float %i.fb, float %i.fb, float %i.fl)
  %i.fn = shufflevector <4 x float> %i.es, <4 x float> <float poison, float poison, float -2.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fo = shufflevector <4 x float> %i.ev, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 poison, i32 7>
  %i.fp = insertelement <4 x float> %i.fo, float %i.fm, i64 2
  %i.fq = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float 1.000000e+00>, float %i.fj, i64 0
  %i.fr = insertelement <4 x float> %i.fq, float %i.fk, i64 1
  %i.fs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fn, <4 x float> %i.fp, <4 x float> %i.fr)
  %i.ft = fmul <4 x float> %i.fs, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.fu = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.dw, i64 0
  %i.fv = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fw = fmul <4 x float> %i.fa, %i.fv           ; 2 uses
  %i.fx = fmul float %i.fd, %i.dz                 ; 4 uses
  %i.fy = fmul float %i.ff, %i.dz                 ; 4 uses
  %i.fz = fmul float %i.fi, %i.dz                 ; 4 uses
  %i.ga = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ed, i64 0
  %i.gb = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gc = fmul <4 x float> %i.gb, %i.ft           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(64) %i.cz, i64 64, i1 false)
  %i.gd = load <4 x float>, ptr %5, align 16      ; 6 uses
  %i.ge = load float, ptr %i.da, align 8
  %i.gf = load float, ptr %6, align 4
  %i.gg = fmul float %i.eb, %i.gf
  %i.gh = extractelement <4 x float> %i.gd, i64 0
  %i.gi = call float @llvm.fmuladd.f32(float %i.dx, float %i.gh, float %i.gg)
  %i.gj = call float @llvm.fmuladd.f32(float %i.ef, float %i.ge, float %i.gi)
  %i.gk = shufflevector <4 x float> %i.gd, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 3>
  %i.gl = insertelement <4 x float> %i.gk, float %i.fx, i64 0
  %i.gm = insertelement <4 x float> %i.gl, float %i.fy, i64 1 ; 2 uses
  %i.gn = shufflevector <4 x float> %i.gd, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.go = insertelement <4 x float> %i.gn, float %i.fz, i64 2
  %i.gp = insertelement <4 x float> %i.go, float %i.gj, i64 3 ; 2 uses
  %i.gq = fmul <4 x float> %i.gm, %i.gp
  %i.gr = fadd <4 x float> %i.gm, %i.gp
  %i.gs = shufflevector <4 x float> %i.gq, <4 x float> %i.gr, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.gt = shufflevector <4 x float> %i.gd, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.gu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fw, <4 x float> %i.gt, <4 x float> %i.gs)
  %i.gv = shufflevector <4 x float> %i.gd, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.gw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gc, <4 x float> %i.gv, <4 x float> %i.gu)
  %i.gx = shufflevector <4 x float> %i.gd, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %i.gy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gx, <4 x float> zeroinitializer, <4 x float> %i.gw)
  store <4 x float> %i.gy, ptr %5, align 16
  %i.gz = load <4 x float>, ptr %i.db, align 16   ; 4 uses
  %i.ha = load float, ptr %i.de, align 4
  %i.hb = load float, ptr %i.dd, align 8
  %i.hc = load float, ptr %i.dc, align 4          ; 4 uses
  %i.hd = fmul float %i.eb, %i.hc
  %i.he = extractelement <4 x float> %i.gz, i64 0
  %i.hf = call float @llvm.fmuladd.f32(float %i.dx, float %i.he, float %i.hd)
  %i.hg = call float @llvm.fmuladd.f32(float %i.ef, float %i.hb, float %i.hf)
  %i.hh = fadd float %i.ha, %i.hg
  %i.hi = fmul float %i.fz, %i.hc
  %i.hj = fmul float %i.fy, %i.hc
  %i.hk = fmul float %i.fx, %i.hc
  %i.hl = insertelement <4 x float> %i.fw, float 0.000000e+00, i64 3 ; 3 uses
  %i.hm = shufflevector <4 x float> %i.gz, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.hn = insertelement <4 x float> poison, float %i.hk, i64 0
  %i.ho = insertelement <4 x float> %i.hn, float %i.hj, i64 1
  %i.hp = insertelement <4 x float> %i.ho, float %i.hi, i64 2
  %i.hq = insertelement <4 x float> %i.hp, float %i.hh, i64 3
  %i.hr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hl, <4 x float> %i.hm, <4 x float> %i.hq)
  %i.hs = insertelement <4 x float> %i.gc, float 0.000000e+00, i64 3 ; 3 uses
  %i.ht = shufflevector <4 x float> %i.gz, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.hu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hs, <4 x float> %i.ht, <4 x float> %i.hr)
  %i.hv = shufflevector <4 x float> %i.gz, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %i.hw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hv, <4 x float> zeroinitializer, <4 x float> %i.hu)
  store <4 x float> %i.hw, ptr %i.db, align 16
  %i.hx = load <4 x float>, ptr %i.df, align 16   ; 4 uses
  %i.hy = load float, ptr %i.di, align 4
  %i.hz = load float, ptr %i.dh, align 8
  %i.ia = load float, ptr %i.dg, align 4          ; 4 uses
  %i.ib = fmul float %i.eb, %i.ia
  %i.ic = extractelement <4 x float> %i.hx, i64 0
  %i.id = call float @llvm.fmuladd.f32(float %i.dx, float %i.ic, float %i.ib)
  %i.ie = call float @llvm.fmuladd.f32(float %i.ef, float %i.hz, float %i.id)
  %i.if = fadd float %i.hy, %i.ie
  %i.ig = fmul float %i.fz, %i.ia
  %i.ih = fmul float %i.fy, %i.ia
  %i.ii = fmul float %i.fx, %i.ia
  %i.ij = shufflevector <4 x float> %i.hx, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.ik = insertelement <4 x float> poison, float %i.ii, i64 0
  %i.il = insertelement <4 x float> %i.ik, float %i.ih, i64 1
  %i.im = insertelement <4 x float> %i.il, float %i.ig, i64 2
  %i.in = insertelement <4 x float> %i.im, float %i.if, i64 3
  %i.io = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hl, <4 x float> %i.ij, <4 x float> %i.in)
  %i.ip = shufflevector <4 x float> %i.hx, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.iq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hs, <4 x float> %i.ip, <4 x float> %i.io)
  %i.ir = shufflevector <4 x float> %i.hx, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %i.is = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ir, <4 x float> zeroinitializer, <4 x float> %i.iq)
  store <4 x float> %i.is, ptr %i.df, align 16
  %i.it = load <4 x float>, ptr %i.dj, align 16   ; 4 uses
  %i.iu = load float, ptr %i.dm, align 4
  %i.iv = load float, ptr %i.dl, align 8
  %7 = load float, ptr %i.dk, align 4             ; 4 uses
  %i.iw = fmul float %i.eb, %7
  %i.ix = extractelement <4 x float> %i.it, i64 0
  %i.iy = call float @llvm.fmuladd.f32(float %i.dx, float %i.ix, float %i.iw)
  %i.iz = call float @llvm.fmuladd.f32(float %i.ef, float %i.iv, float %i.iy)
  %8 = fadd float %i.iu, %i.iz
  %9 = fmul float %i.fz, %7
  %10 = fmul float %i.fy, %7
  %11 = fmul float %i.fx, %7
  %12 = shufflevector <4 x float> %i.it, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.ja = insertelement <4 x float> poison, float %11, i64 0
  %13 = insertelement <4 x float> %i.ja, float %10, i64 1
  %14 = insertelement <4 x float> %13, float %9, i64 2
  %15 = insertelement <4 x float> %14, float %8, i64 3
  %i.jb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hl, <4 x float> %12, <4 x float> %15)
  %i.jc = shufflevector <4 x float> %i.it, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.jd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hs, <4 x float> %i.jc, <4 x float> %i.jb)
  %i.je = shufflevector <4 x float> %i.it, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %i.jf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.je, <4 x float> zeroinitializer, <4 x float> %i.jd)
  store <4 x float> %i.jf, ptr %i.dj, align 16
  call void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_(ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(12) %2)
  %i.jg = load float, ptr %i.do, align 4
  %i.jh = fpext float %i.jg to double             ; 3 uses
  %i.ji = load ptr, ptr %i.ax, align 8
  %i.jj = getelementptr inbounds nuw [24 x i8], ptr %i.ji, i64 %.04150 ; 2 uses
  store double %i.jh, ptr %i.jj, align 8
  %i.jk = load ptr, ptr %i.i, align 8
  %i.jl = getelementptr inbounds nuw [32 x i8], ptr %i.jk, i64 %.04150 ; 2 uses
  store double %i.jh, ptr %i.jl, align 8
  %i.jm = load ptr, ptr %i.k, align 8
  %i.jn = getelementptr inbounds nuw [24 x i8], ptr %i.jm, i64 %.04150 ; 2 uses
  store double %i.jh, ptr %i.jn, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.jo, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jp, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false)
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.jq, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.jr = add nuw i64 %.04150, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.jr, %i.al
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !70

bb.o:                                             ; preds = %bb.i, %bb.d
  %.sink = phi ptr [ %i.ac, %bb.i ], [ %i.f, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.g, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6Assimp4Ogre8SkeletonC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(52) initializes((0, 52)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %0, i8 0, i64 52, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp4Ogre8SkeletonD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(52) dereferenceable(52) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6Assimp4Ogre8Skeleton5ResetEv(ptr noundef nonnull align 8 dereferenceable(52) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN6Assimp4Ogre9AnimationESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #31
  br label %_ZNSt6vectorIPN6Assimp4Ogre9AnimationESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6Assimp4Ogre9AnimationESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN6Assimp4Ogre9AnimationESaIS3_EED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #31
  br label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN6Assimp4Ogre9AnimationESaIS3_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp4Ogre8Skeleton5ResetEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(52) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not31 = icmp eq ptr %i.a, %i.c
  br i1 %.not31, label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE5clearEv.exit, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  %.pre37 = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %.pre37, %.pre
  br i1 %i.d, label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPPN6Assimp4Ogre4BoneES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN6Assimp4Ogre4BoneES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %._crit_edge
  store ptr %.pre, ptr %i.b, align 8
  br label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE5clearEv.exit

_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE5clearEv.exit: ; preds = %bb.a, %._crit_edge, %_ZSt8_DestroyIPPN6Assimp4Ogre4BoneES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not3033 = icmp eq ptr %i.f, %i.h
  br i1 %.not3033, label %_ZNSt6vectorIPN6Assimp4Ogre9AnimationESaIS3_EE5clearEv.exit, label %.lr.ph35

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.027.032 = phi ptr [ %i.x, %bb.d ], [ %i.a, %bb.a ] ; 3 uses
  %i.i = load ptr, ptr %.sroa.027.032, align 8    ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #31
  br label %_ZNSt6vectorItSaItEED2Ev.exit.i

_ZNSt6vectorItSaItEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN6Assimp4Ogre4BoneD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorItSaItEED2Ev.exit.i
  %i.v = load i64, ptr %i.t, align 8
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #31
  br label %_ZN6Assimp4Ogre4BoneD2Ev.exit

_ZN6Assimp4Ogre4BoneD2Ev.exit:                    ; preds = %_ZNSt6vectorItSaItEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 248) #31
  br label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp4Ogre4BoneD2Ev.exit, %.lr.ph
  store ptr null, ptr %.sroa.027.032, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.027.032, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge36:                                    ; preds = %bb.q
  %.pre38 = load ptr, ptr %i.e, align 8           ; 2 uses
  %.pre39 = load ptr, ptr %i.g, align 8
  %i.y = icmp eq ptr %.pre39, %.pre38
  br i1 %i.y, label %_ZNSt6vectorIPN6Assimp4Ogre9AnimationESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPPN6Assimp4Ogre9AnimationES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN6Assimp4Ogre9AnimationES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %._crit_edge36
  store ptr %.pre38, ptr %i.g, align 8
  br label %_ZNSt6vectorIPN6Assimp4Ogre9AnimationESaIS3_EE5clearEv.exit

_ZNSt6vectorIPN6Assimp4Ogre9AnimationESaIS3_EE5clearEv.exit: ; preds = %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE5clearEv.exit, %._crit_edge36, %_ZSt8_DestroyIPPN6Assimp4Ogre9AnimationES3_EvT_S5_RSaIT0_E.exit.i.i
  ret void

.lr.ph35:                                         ; preds = %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE5clearEv.exit, %bb.q
  %.sroa.023.034 = phi ptr [ %i.df, %bb.q ], [ %i.f, %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE5clearEv.exit ] ; 3 uses
  %i.z = load ptr, ptr %.sroa.023.034, align 8    ; 9 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.q, label %bb.e

bb.e:                                             ; preds = %.lr.ph35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 88 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp4Ogre20VertexAnimationTrackES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_ZN6Assimp4Ogre20VertexAnimationTrackD2Ev.exit
  %.05.i.i.i.i = phi ptr [ %i.cm, %_ZN6Assimp4Ogre20VertexAnimationTrackD2Ev.exit ], [ %i.ac, %bb.e ] ; 11 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 88
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i14, label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 104
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #31
  br label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EED2Ev.exit.i: ; preds = %bb.f, %.lr.ph.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not4.i.i.i.i15 = icmp eq ptr %i.an, %i.ap
  br i1 %.not4.i.i.i.i15, label %_ZSt8_DestroyIPN6Assimp4Ogre13MorphKeyFrameES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i16

.lr.ph.i.i.i.i16:                                 ; preds = %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EED2Ev.exit.i, %_ZSt8_DestroyIN6Assimp4Ogre13MorphKeyFrameEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i17 = phi ptr [ %i.bh, %_ZSt8_DestroyIN6Assimp4Ogre13MorphKeyFrameEEvPT_.exit.i.i.i.i ], [ %i.an, %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EED2Ev.exit.i ] ; 2 uses
end_hunk_0
