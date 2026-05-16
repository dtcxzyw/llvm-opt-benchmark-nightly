inline.NumInlined: 3061
inline.NumDeleted: 1386
begin_hunk_0_@_ZN6Assimp11LWOImporterD2Ev:bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp11LWOImporterD0Ev(ptr noundef nonnull align 8 dereferenceable(233) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6Assimp11LWOImporterD2Ev(ptr noundef nonnull align 8 dereferenceable(233) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 240) #26
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp11LWOImporter7CanReadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemEb(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, i1 zeroext %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6Assimp12BaseImporter15CheckMagicTokenEPNS_8IOSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvmjj(ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @_ZZNK6Assimp11LWOImporter7CanReadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemEbE6tokens, i64 noundef 3, i32 noundef 8, i32 noundef 4)
  ret i1 %i.a
}

declare noundef zeroext i1 @_ZN6Assimp12BaseImporter15CheckMagicTokenEPNS_8IOSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvmjj(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11LWOImporter15SetupPropertiesEPKNS_8ImporterE(ptr noundef nonnull align 8 captures(address) dereferenceable(233) initializes((192, 193), (196, 200)) %0, ptr noundef nonnull %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i32 noundef 0)
  %i.b = icmp ne i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = zext i1 %i.b to i8
  store i8 %i.d, ptr %i.c, align 8
  %i.e = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i32 noundef -1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 %i.e, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.g, ptr %3, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.h, align 8
  store i8 0, ptr %i.g, align 8
  invoke void @_ZNK6Assimp8Importer17GetPropertyStringEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.a unwind label %bb.h

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  %i.m = load ptr, ptr %2, align 8                ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.o = icmp eq ptr %i.m, %i.n                   ; 2 uses
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.o, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.o, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  call void @llvm.assume(i1 %i.r)
  %.not21.i = icmp eq ptr %2, %i.i
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  switch i64 %i.q, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.s = load i8, ptr %i.m, align 1
  store i8 %i.s, ptr %i.j, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.t = load i64, ptr %i.p, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %i.t, ptr %i.u, align 8
  %i.v = load ptr, ptr %i.i, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1
  %.pre.i = load ptr, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.m, ptr %i.i, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load <2 x i64>, ptr %i.y, align 8
  store <2 x i64> %i.z, ptr %i.x, align 8
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aa = load i64, ptr %i.k, align 8
  store ptr %i.m, ptr %i.i, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ad = load <2 x i64>, ptr %i.ab, align 8
  store <2 x i64> %i.ad, ptr %i.ac, align 8
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.j, ptr %2, align 8
  store i64 %i.aa, ptr %i.n, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.n, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.ae = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.j, %bb.f ], [ %i.n, %bb.g ], [ %i.m, %bb.b ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.af, align 8
  store i8 0, ptr %i.ae, align 1
  %i.ag = load ptr, ptr %2, align 8               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.aj = load i64, ptr %i.ah, align 8
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.al = load ptr, ptr %3, align 8               ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.g
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.an = load i64, ptr %i.g, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.g
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.h
  %i.as = load i64, ptr %i.g, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.ap
}

declare noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare void @_ZNK6Assimp8Importer17GetPropertyStringEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZNK6Assimp11LWOImporter7GetInfoEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret ptr @_ZL4desc
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11LWOImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::list", align 8 ; 14 uses
  %6 = alloca %"class.std::vector.24", align 8    ; 21 uses
  %7 = alloca %"class.std::vector.10", align 8    ; 10 uses
  %8 = alloca %"class.std::vector.29", align 8    ; 10 uses
  %9 = alloca %"struct.Assimp::LWO::Layer", align 8 ; 22 uses
  %i.a = alloca [5 x i8], align 2                 ; 7 uses
  %10 = alloca %"class.std::map", align 8         ; 14 uses
  %11 = alloca %"class.std::vector.76", align 8   ; 10 uses
  %12 = alloca %"struct.Assimp::LWO::Surface", align 8 ; 47 uses
  %i.b = alloca [8 x i32], align 16               ; 20 uses
  %i.c = alloca [8 x i32], align 16               ; 20 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %13 = alloca %"class.std::unique_ptr.95", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.e, ptr %4, align 8
  store i16 25202, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i8 0, ptr %i.g, align 2
  %i.h = load ptr, ptr %1, align 8
  %i.i = load ptr, ptr %3, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.h, ptr noundef nonnull %i.e)
          to label %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.b, !inline_history !7 ; 9 uses

_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %._crit_edge.i.i
  %i.m = load ptr, ptr %4, align 8                ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.e
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  %i.o = load i64, ptr %i.e, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.not.i = icmp eq ptr %i.l, null                ; 2 uses
  br i1 %.not.i, label %bb.a, label %bb.d

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 1 dereferenceable(25) @.str.4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(2) @.str.5)
          to label %.invoke unwind label %.thread501

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %4, align 8                ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.e
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262: ; preds = %bb.b
  %i.u = load i64, ptr %i.e, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit319

.thread501:                                       ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.q) #25
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit319

bb.c:                                             ; preds = %.invoke, %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.hd

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load ptr, ptr %i.l, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.e unwind label %bb.c       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  store i32 %i.ac, ptr %i.ad, align 8
  %i.ae = icmp ult i32 %i.ac, 12
  br i1 %i.ae, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.af = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull @.str.6)
          to label %.invoke unwind label %bb.g

.invoke:                                          ; preds = %bb.a, %bb.f
  %i.ag = phi ptr [ %i.af, %bb.f ], [ %i.q, %bb.a ]
  invoke void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.af) #25
  br label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i318

bb.h:                                             ; preds = %bb.e
  %i.ai = and i64 %i.ab, 4294967295               ; 5 uses
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #28
          to label %bb.i unwind label %bb.l       ; 8 uses

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = add nsw i64 %i.ai, -1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ak, i8 0, i64 %i.al, i1 false)
  %i.am = load ptr, ptr %i.l, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = invoke noundef i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %i.aj, i64 noundef 1, i64 noundef %i.ai)
          to label %bb.j unwind label %bb.m       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %2, ptr %i.aq, align 8
  %i.ar = load i32, ptr %i.aj, align 1
  %.not.i266 = icmp eq i32 %i.ar, 1297239878
  br i1 %.not.i266, label %bb.p, label %_ZN6Assimp3IFF10ReadHeaderEPhRj.exit

_ZN6Assimp3IFF10ReadHeaderEPhRj.exit:             ; preds = %bb.j
  %i.as = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull @.str.100)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %_ZN6Assimp3IFF10ReadHeaderEPhRj.exit
  invoke void @__cxa_throw(ptr nonnull %i.as, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.he unwind label %bb.n

bb.l:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i318

bb.m:                                             ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit316

bb.n:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit316

bb.o:                                             ; preds = %_ZN6Assimp3IFF10ReadHeaderEPhRj.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.as) #25
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit316

bb.p:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ay = load i32, ptr %i.ax, align 1            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.az, ptr %i.ba, align 8
  %i.bb = load i32, ptr %i.ad, align 8
  %i.bc = add i32 %i.bb, -12
  store i32 %i.bc, ptr %i.ad, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store i8 0, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %5, ptr %i.be, align 8
  store ptr %5, ptr %5, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i64 0, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  store ptr %5, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %7, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %8, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 9 uses
  store ptr %6, ptr %i.bj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 144
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 152
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 168 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(341) %9, i8 0, i64 144, i1 false)
  store ptr %i.bm, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 160
  store i64 0, ptr %i.bn, align 8
  store i8 0, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 184
  store i32 3, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 192
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 232
  store ptr null, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 240
  store i32 0, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 248
  store ptr null, ptr %i.bs, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.bp, i8 0, i64 36, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6Assimp3LWO13NormalChannelE, i64 16), ptr %i.bk, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 256
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 290
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(34) %i.bt, i8 0, i64 34, i1 false)
  store i16 -1, ptr %i.bu, align 2
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 296
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 312 ; 2 uses
  store ptr %i.bw, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 304
  store i64 0, ptr %i.bx, align 8
  store i8 0, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.by, i8 0, i64 13, i1 false)
  %i.bz = invoke noalias noundef nonnull dereferenceable(360) ptr @_Znwm(i64 noundef 360) #28
          to label %.noexc267 unwind label %bb.u  ; 3 uses

.noexc267:                                        ; preds = %bb.p
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  invoke void @_ZN6Assimp3LWO5LayerC2EOS1_(ptr noundef nonnull align 8 dereferenceable(341) %i.ca, ptr noundef nonnull align 8 dereferenceable(341) %9)
          to label %bb.q unwind label %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp3LWO5LayerEEEED2Ev.exit9.i.i.i

_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp3LWO5LayerEEEED2Ev.exit9.i.i.i: ; preds = %.noexc267
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef 360) #26
  br label %.body

bb.q:                                             ; preds = %.noexc267
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %5) #25
  %i.cc = load i64, ptr %i.bf, align 8
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.bf, align 8
  call void @_ZN6Assimp3LWO5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(341) dereferenceable(341) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.ce = load ptr, ptr %i.bg, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8            ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.ch, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 312
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 320
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, i64 noundef 0, i64 noundef %i.cl, ptr noundef nonnull @.str.7, i64 noundef 12)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.v ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.q
  %i.cn = load ptr, ptr %i.ci, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 290
  store i16 1, ptr %i.co, align 2
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 0, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 74 ; 2 uses
  store i8 0, ptr %i.cq, align 2
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  store i8 0, ptr %i.cr, align 1
  %.sroa.0397.0.insert.insert = call i32 @llvm.bswap.i32(i32 %i.ay) ; 3 uses
  switch i32 %.sroa.0397.0.insert.insert, label %bb.aa [
    i32 1280790338, label %bb.r
    i32 1280790322, label %bb.w
    i32 1280790323, label %bb.x
    i32 1280855874, label %bb.z
  ]

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.cs = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.cs, ptr noundef nonnull @.str.8)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6Assimp11LWOImporter12LoadLWOBFileEv(ptr noundef nonnull align 8 dereferenceable(233) %0)
          to label %.thread478 unwind label %bb.v

bb.u:                                             ; preds = %bb.p
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp3LWO5LayerEEEED2Ev.exit9.i.i.i, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.ct, %bb.u ], [ %i.cb, %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp3LWO5LayerEEEED2Ev.exit9.i.i.i ]
  call void @_ZN6Assimp3LWO5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(341) dereferenceable(341) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit312

bb.v:                                             ; preds = %.invoke1020, %bb.q, %bb.ar, %.thread478, %bb.ap, %bb.ah, %bb.z, %bb.y, %bb.x, %bb.w, %bb.t, %bb.s, %bb.r
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit312

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.cv = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.invoke1020 unwind label %bb.v

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.cw = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.y unwind label %bb.v

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.cw, ptr noundef nonnull @.str.10)
          to label %bb.af unwind label %bb.v

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  store i8 1, ptr %i.cr, align 1
  %i.cx = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.invoke1020 unwind label %bb.v

.invoke1020:                                      ; preds = %bb.z, %bb.w
  %i.cy = phi ptr [ %i.cv, %bb.w ], [ %i.cx, %bb.z ]
  %i.cz = phi ptr [ @.str.9, %bb.w ], [ @.str.11, %bb.z ]
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.cy, ptr noundef nonnull %i.cz)
          to label %bb.ag unwind label %bb.v

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %14 = trunc i32 %i.ay to i16
  store i16 %14, ptr %i.a, align 2
  %i.da = lshr i32 %.sroa.0397.0.insert.insert, 8
  %i.db = trunc i32 %i.da to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.db, ptr %i.dc, align 2
  %i.dd = trunc i32 %.sroa.0397.0.insert.insert to i8
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.dd, ptr %i.de, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 0, ptr %i.df, align 2
  %i.dg = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA25_KcRA5_cEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 1 dereferenceable(25) @.str.12, ptr noundef nonnull align 1 dereferenceable(5) %i.a)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_throw(ptr nonnull %i.dg, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.he unwind label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dg) #25
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn212 = phi { ptr, i32 } [ %i.di, %bb.ad ], [ %i.dh, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit312

bb.af:                                            ; preds = %bb.y
  store i8 1, ptr %i.cq, align 2
  br label %bb.ah

bb.ag:                                            ; preds = %.invoke1020
  store i8 1, ptr %i.cp, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  invoke void @_ZN6Assimp11LWOImporter12LoadLWO2FileEv(ptr noundef nonnull align 8 dereferenceable(233) %0)
          to label %bb.ai unwind label %bb.v

bb.ai:                                            ; preds = %bb.ah
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.dk = load i32, ptr %i.dj, align 4
  %.not215 = icmp eq i32 %i.dk, -1
  br i1 %.not215, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dl = load ptr, ptr %i.bg, align 8            ; 3 uses
  %.sroa.0394.0652 = load ptr, ptr %i.dl, align 8 ; 2 uses
  %.not653 = icmp eq ptr %.sroa.0394.0652, %i.dl
  br i1 %.not653, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.dm = icmp eq i32 %spec.select, 2
  br i1 %i.dm, label %bb.an, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.aj, %.lr.ph
  %.sroa.0394.0655 = phi ptr [ %.sroa.0394.0, %.lr.ph ], [ %.sroa.0394.0652, %bb.aj ] ; 2 uses
  %.0171654 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %bb.aj ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0394.0655, i64 356
  %i.do = load i8, ptr %i.dn, align 4, !range !8, !noundef !9
  %i.dp = xor i8 %i.do, 1
  %i.dq = zext nneg i8 %i.dp to i32
  %spec.select = add i32 %.0171654, %i.dq         ; 2 uses
  %.sroa.0394.0 = load ptr, ptr %.sroa.0394.0655, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0394.0, %i.dl
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge.thread:                               ; preds = %bb.aj, %._crit_edge
  %i.dr = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, ptr noundef nonnull @.str.13)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %._crit_edge.thread
  invoke void @__cxa_throw(ptr nonnull %i.dr, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.he unwind label %bb.am

bb.al:                                            ; preds = %._crit_edge.thread
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dr) #25
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit312

bb.am:                                            ; preds = %bb.ak
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit312

bb.an:                                            ; preds = %._crit_edge, %bb.ai
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dv = load i64, ptr %i.du, align 8
  %.not217 = icmp eq i64 %i.dv, 0
  %i.dw = load i8, ptr %i.bd, align 8, !range !8
  %i.dx = trunc nuw i8 %i.dw to i1
  %or.cond260 = select i1 %.not217, i1 true, i1 %i.dx
  br i1 %or.cond260, label %.thread478, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dz = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA43_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noundef nonnull align 1 dereferenceable(43) @.str.14, ptr noundef nonnull align 8 dereferenceable(32) %i.dy)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  invoke void @__cxa_throw(ptr nonnull %i.dz, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.he unwind label %bb.v

bb.aq:                                            ; preds = %bb.ao
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dz) #25
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit312

.thread478:                                       ; preds = %bb.t, %bb.an
  invoke void @_ZN6Assimp11LWOImporter11ResolveTagsEv(ptr noundef nonnull align 8 dereferenceable(233) %0)
          to label %bb.ar unwind label %bb.v

bb.ar:                                            ; preds = %.thread478
  invoke void @_ZN6Assimp11LWOImporter12ResolveClipsEv(ptr noundef nonnull align 8 dereferenceable(233) %0)
          to label %bb.as unwind label %bb.v

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i32 0, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr null, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.eb, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.eb, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  store i64 0, ptr %i.ef, align 8
  %i.eg = load ptr, ptr %i.bg, align 8            ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = load ptr, ptr %i.ej, align 8
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = sdiv exact i64 %i.ep, 328
  %i.er = and i64 %i.eq, 4294967294
  %.not504 = icmp eq i64 %i.er, 0
  %i.es = select i1 %.not504, i64 0, i64 %i.ei    ; 4 uses
  %i.et = icmp ugt i64 %i.es, 1152921504606846975
  br i1 %i.et, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #27
          to label %.noexc269 unwind label %.thread482

.noexc269:                                        ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %bb.as
  %.not505 = icmp eq i64 %i.es, 0
  br i1 %.not505, label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.au
  %i.eu = shl nuw nsw i64 %i.es, 3
  %i.ev = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #28
          to label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %.thread482 ; 2 uses

_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.es
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit:     ; preds = %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.au
  %.sroa.25.10 = phi ptr [ %i.ew, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.au ] ; 2 uses
  %.sroa.15.5 = phi ptr [ %i.ev, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.au ] ; 3 uses
  %.sroa.0367.0703 = load ptr, ptr %i.eg, align 8 ; 2 uses
  %.not506704 = icmp eq ptr %.sroa.0367.0703, %i.eg
  br i1 %.not506704, label %._crit_edge711.thread, label %.lr.ph710

.lr.ph710:                                        ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.fc = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.fd = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.fe = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ff = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.fg = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.fh = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.fi = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.fk = getelementptr inbounds nuw i8, ptr %12, i64 112
  %i.fl = getelementptr inbounds nuw i8, ptr %12, i64 120 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.fn = getelementptr inbounds nuw i8, ptr %12, i64 136
  %i.fo = getelementptr inbounds nuw i8, ptr %12, i64 144 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %12, i64 152
  %i.fq = getelementptr inbounds nuw i8, ptr %12, i64 160
  %i.fr = getelementptr inbounds nuw i8, ptr %12, i64 168 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %12, i64 176
  %i.ft = getelementptr inbounds nuw i8, ptr %12, i64 184
  %i.fu = getelementptr inbounds nuw i8, ptr %12, i64 192 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %12, i64 200
  %i.fw = getelementptr inbounds nuw i8, ptr %12, i64 208
end_hunk_0
