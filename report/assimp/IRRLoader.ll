inline.NumInlined: 1776
inline.NumDeleted: 830
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp12BaseImporterD2Ev:bb.a
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %i.g = load i64, ptr %i.e, align 8
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp11IRRImporterD2Ev(ptr noundef nonnull align 8 dereferenceable(188) initializes((0, 8)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp11IRRImporterE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP7aiLightSaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #27
  br label %_ZNSt6vectorIP7aiLightSaIS1_EED2Ev.exit

_ZNSt6vectorIP7aiLightSaIS1_EED2Ev.exit:          ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIP8aiCameraSaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIP7aiLightSaIS1_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #27
  br label %_ZNSt6vectorIP8aiCameraSaIS1_EED2Ev.exit

_ZNSt6vectorIP8aiCameraSaIS1_EED2Ev.exit:         ; preds = %_ZNSt6vectorIP7aiLightSaIS1_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %bb.d, label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i.i

bb.d:                                             ; preds = %_ZNSt6vectorIP8aiCameraSaIS1_EED2Ev.exit
  %i.u = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i2, label %_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE5clearEv.exit.i.i, label %.sink.split.i.i.i

_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i.i:          ; preds = %_ZNSt6vectorIP8aiCameraSaIS1_EED2Ev.exit
  store ptr %i.q, ptr %i.r, align 8
  %i.v = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE5clearEv.exit.i.i, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i.i, %bb.d
  %.sink4.i.i.i = phi ptr [ %i.u, %bb.d ], [ %i.v, %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i.i ] ; 2 uses
  tail call void @_ZN4pugi12xml_documentD1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.sink4.i.i.i) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink4.i.i.i, i64 noundef 208) #27
  %.pre.i.i = load ptr, ptr %i.p, align 8
  br label %_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE5clearEv.exit.i.i

_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE5clearEv.exit.i.i: ; preds = %.sink.split.i.i.i, %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i.i, %bb.d
  %i.x = phi ptr [ %i.q, %bb.d ], [ %i.q, %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i.i ], [ %.pre.i.i, %.sink.split.i.i.i ] ; 3 uses
  store ptr null, ptr %i.o, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %_ZN6Assimp12IrrlichtBaseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE5clearEv.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #27
  br label %_ZN6Assimp12IrrlichtBaseD2Ev.exit

_ZN6Assimp12IrrlichtBaseD2Ev.exit:                ; preds = %_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE5clearEv.exit.i.i, %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp12BaseImporterE, i64 16), ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN6Assimp12IrrlichtBaseD2Ev.exit
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i: ; preds = %bb.f, %_ZN6Assimp12IrrlichtBaseD2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN6Assimp12BaseImporterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i
  %i.aj = load i64, ptr %i.ah, align 8
  %i.ak = add i64 %i.aj, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #27
  br label %_ZN6Assimp12BaseImporterD2Ev.exit

_ZN6Assimp12BaseImporterD2Ev.exit:                ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp11IRRImporterD0Ev(ptr noundef nonnull align 8 dereferenceable(188) initializes((0, 8)) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN6Assimp11IRRImporterD2Ev(ptr noundef nonnull align 8 dereferenceable(188) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #27
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp11IRRImporter7CanReadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemEb(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, i1 zeroext %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6Assimp12BaseImporter24SearchFileHeaderForTokenEPNS_8IOSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPPKcmjbb(ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @_ZZNK6Assimp11IRRImporter7CanReadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemEbE6tokens, i64 noundef 1, i32 noundef 200, i1 noundef zeroext false, i1 noundef zeroext false)
  ret i1 %i.a
}

declare noundef zeroext i1 @_ZN6Assimp12BaseImporter24SearchFileHeaderForTokenEPNS_8IOSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPPKcmjbb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZNK6Assimp11IRRImporter7GetInfoEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 {
bb.a:
  ret ptr @_ZL4desc
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11IRRImporter15SetupPropertiesEPKNS_8ImporterE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(188) initializes((112, 121)) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i32 noundef 100) ; 2 uses
  %i.b = sitofp i32 %i.a to double
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store double %i.b, ptr %i.c, align 8
  %i.d = icmp slt i32 %i.a, 10
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.e, ptr noundef nonnull @.str.2)
  store double 1.000000e+02, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i32 noundef 0)
  %i.g = icmp ne i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = zext i1 %i.g to i8
  store i8 %i.i, ptr %i.h, align 8
  ret void
}

declare noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #4

declare void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @_ZN6Assimp11IRRImporter19BuildSingleQuadMeshERKNS0_12SkyboxVertexES3_S3_S3_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(188) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #28 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1272
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1312
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(188) %i.h, i8 0, i64 188, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.e, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.f, i8 0, i64 36, i1 false)
  store i32 8, ptr %i.a, align 8
  store i32 1, ptr %i.c, align 8
  %i.i = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #28 ; 4 uses
  store i64 1, ptr %i.i, align 16
  %.ptr = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr null, ptr %i.j, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store ptr %.ptr, ptr %i.k, align 8
  store i32 4, ptr %.ptr, align 8
  %i.l = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #28 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.l, ptr %5, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.l, align 4
  store i32 4, ptr %i.b, align 4
  %i.m = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znam(i64 noundef 48) #28 ; 5 uses
  store ptr %i.m, ptr %i.d, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.n, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.o, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.p, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false)
  %i.q = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znam(i64 noundef 48) #28 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.q, ptr noundef nonnull align 4 dereferenceable(12) %i.s, i64 12, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.t, ptr noundef nonnull align 4 dereferenceable(12) %i.u, i64 12, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.v, ptr noundef nonnull align 4 dereferenceable(12) %i.w, i64 12, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.x, ptr noundef nonnull align 4 dereferenceable(12) %i.y, i64 12, i1 false)
  %i.z = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znam(i64 noundef 48) #28 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.z, ptr noundef nonnull align 4 dereferenceable(12) %i.ab, i64 12, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ac, ptr noundef nonnull align 4 dereferenceable(12) %i.ad, i64 12, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ae, ptr noundef nonnull align 4 dereferenceable(12) %i.af, i64 12, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ag, ptr noundef nonnull align 4 dereferenceable(12) %i.ah, i64 12, i1 false)
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11IRRImporter11BuildSkyboxERSt6vectorIP6aiMeshSaIS3_EES1_IP10aiMaterialSaIS8_EE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %struct.aiString, align 4           ; 31 uses
  %i.a = alloca i32, align 4                      ; 24 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 6 uses
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -48
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.g, i8 0, i64 1024, i1 false)
  %i.h = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 1024, ptr noundef nonnull @.str.4, i32 noundef 0) #26
  store i32 %i.h, ptr %3, align 4
  %i.i = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull %3, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 9, ptr %i.a, align 4
  %i.j = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -40
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %3, i8 0, i64 1028, i1 false)
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 1024, ptr noundef nonnull @.str.4, i32 noundef 1) #26
  store i32 %i.n, ptr %3, align 4
  %i.o = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %3, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 9, ptr %i.a, align 4
  %i.p = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.q = load ptr, ptr %i.b, align 8
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -32
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %3, i8 0, i64 1028, i1 false)
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 1024, ptr noundef nonnull @.str.4, i32 noundef 2) #26
  store i32 %i.t, ptr %3, align 4
  %i.u = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull %3, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 9, ptr %i.a, align 4
  %i.v = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.w = load ptr, ptr %i.b, align 8
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -24
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %3, i8 0, i64 1028, i1 false)
  %i.z = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 1024, ptr noundef nonnull @.str.4, i32 noundef 3) #26
  store i32 %i.z, ptr %3, align 4
  %i.aa = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull %3, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 9, ptr %i.a, align 4
  %i.ab = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ac = load ptr, ptr %i.b, align 8
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -16
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %3, i8 0, i64 1028, i1 false)
  %i.af = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 1024, ptr noundef nonnull @.str.4, i32 noundef 4) #26
  store i32 %i.af, ptr %3, align 4
  %i.ag = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull %3, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 9, ptr %i.a, align 4
  %i.ah = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ai = load ptr, ptr %i.b, align 8
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %3, i8 0, i64 1028, i1 false)
  %i.al = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 1024, ptr noundef nonnull @.str.4, i32 noundef 5) #26
  store i32 %i.al, ptr %3, align 4
  %i.am = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull %3, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 9, ptr %i.a, align 4
  %i.an = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ao = call noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #28 ; 13 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 224
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 1272
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 1312
  store ptr null, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(188) %i.av, i8 0, i64 188, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.as, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.at, i8 0, i64 36, i1 false)
  store i32 8, ptr %i.ao, align 8
  store i32 1, ptr %i.aq, align 8
  %i.aw = call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #28 ; 3 uses
  store i64 1, ptr %i.aw, align 16
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  store ptr null, ptr %i.ax, align 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 208
  store ptr %.ptr.i, ptr %i.ay, align 8
  store i32 4, ptr %.ptr.i, align 8
  %i.az = call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #28 ; 2 uses
  store ptr %i.az, ptr %i.ax, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.az, align 4
  store i32 4, ptr %i.ap, align 4
  %i.ba = call noalias noundef nonnull dereferenceable(48) ptr @_Znam(i64 noundef 48) #28 ; 4 uses
  store ptr %i.ba, ptr %i.ar, align 8
  store <4 x float> <float -1.000000e+01, float -1.000000e+01, float -1.000000e+01, float 1.000000e+01>, ptr %i.ba, align 4
  %.sroa.4262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <4 x float> <float -1.000000e+01, float -1.000000e+01, float 1.000000e+01, float 1.000000e+01>, ptr %.sroa.4262.0..sroa_idx, align 4
  %.sroa.5254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store <4 x float> <float -1.000000e+01, float -1.000000e+01, float 1.000000e+01, float -1.000000e+01>, ptr %.sroa.5254.0..sroa_idx, align 4
  %i.bb = call noalias noundef nonnull dereferenceable(48) ptr @_Znam(i64 noundef 48) #28 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.bb, ptr %i.bc, align 8
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.bb, align 4
  %.sroa.8265.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %.sroa.8265.12..sroa_idx, align 4
  %.sroa.9257.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.9257.12..sroa_idx, align 4
  %i.bd = call noalias noundef nonnull dereferenceable(48) ptr @_Znam(i64 noundef 48) #28 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  store ptr %i.bd, ptr %i.be, align 8
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bd, align 4
  %.sroa.12268.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store float 1.000000e+00, ptr %.sroa.12268.24..sroa_idx, align 4
  %.sroa.13269.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 20
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.13269.24..sroa_idx, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.bf, align 4
  %.sroa.13251.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 44
  store float 0.000000e+00, ptr %.sroa.13251.24..sroa_idx, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 24 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  %i.bj = load ptr, ptr %i.bi, align 8
end_hunk_0
