inline.NumInlined: 1996
inline.NumDeleted: 775
begin_hunk_0_@_ZN6Assimp4Ogre17OgreXmlSerializer14ImportSkeletonEPNS_8IOSystemEPNS0_7MeshXmlE:bb.a
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %4 = alloca %"class.std::shared_ptr", align 8   ; 8 uses
  %5 = alloca %"class.Assimp::Ogre::OgreXmlSerializer", align 8 ; 4 uses
  %6 = alloca %"class.pugi::xml_node", align 8    ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp4Ogre17OgreXmlSerializer14ImportSkeletonEPNS_8IOSystemEPNS0_7MeshXmlE:bb.a

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.bh = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.bi = load atomic i8, ptr @_ZGVZN6Assimp10TXmlParserIN4pugi8xml_nodeEE11getRootNodeEvE4none acquire, align 8
  %i.bj = icmp eq i8 %i.bi, 0
end_hunk_1
begin_hunk_2_@_ZN6Assimp4Ogre17OgreXmlSerializer14ImportSkeletonEPNS_8IOSystemEPNS0_4MeshE
define hidden noundef zeroext i1 @_ZN6Assimp4Ogre17OgreXmlSerializer14ImportSkeletonEPNS_8IOSystemEPNS0_4MeshE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 8   ; 8 uses
  %3 = alloca %"class.Assimp::Ogre::OgreXmlSerializer", align 8 ; 4 uses
  %4 = alloca %"class.pugi::xml_node", align 8    ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.z, label %bb.b
end_hunk_2
begin_hunk_3_@_ZN6Assimp4Ogre17OgreXmlSerializer14ImportSkeletonEPNS_8IOSystemEPNS0_4MeshE:bb.a

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.g = load ptr, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.h = load atomic i8, ptr @_ZGVZN6Assimp10TXmlParserIN4pugi8xml_nodeEE11getRootNodeEvE4none acquire, align 8
  %i.i = icmp eq i8 %i.h, 0
end_hunk_3
