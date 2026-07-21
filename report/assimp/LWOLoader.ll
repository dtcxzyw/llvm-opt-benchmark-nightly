inline.NumInlined: 3061
inline.NumDeleted: 1386
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6Assimp11LWOImporterD2Ev:bb.a
_ZN6Assimp12BaseImporterD2Ev.exit:                ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
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
define hidden noundef zeroext i1 @_ZNK6Assimp11LWOImporter7CanReadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemEb(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, i1 zeroext %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6Assimp12BaseImporter15CheckMagicTokenEPNS_8IOSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvmjj(ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @_ZZNK6Assimp11LWOImporter7CanReadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemEbE6tokens, i64 noundef 3, i32 noundef 8, i32 noundef 4)
  ret i1 %i.a
}

declare noundef zeroext i1 @_ZN6Assimp12BaseImporter15CheckMagicTokenEPNS_8IOSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvmjj(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11LWOImporter15SetupPropertiesEPKNS_8ImporterE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(233) initializes((192, 193), (196, 200)) %0, ptr noundef nonnull %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
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
          to label %bb.a unwind label %bb.g

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  %i.m = load ptr, ptr %2, align 8                ; 5 uses
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
  switch i64 %i.q, label %bb.d [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.s = load i8, ptr %i.m, align 1
  store i8 %i.s, ptr %i.j, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.d, %bb.c, %bb.b
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
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aa = load i64, ptr %i.k, align 8
  store ptr %i.m, ptr %i.i, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ad = load <2 x i64>, ptr %i.ab, align 8
  store <2 x i64> %i.ad, ptr %i.ac, align 8
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.j, ptr %2, align 8
  store i64 %i.aa, ptr %i.n, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.n, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.e, %bb.f
  %i.ae = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.j, %bb.e ], [ %i.n, %bb.f ]
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

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.g
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.g
  %i.as = load i64, ptr %i.g, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
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
define hidden noundef nonnull ptr @_ZNK6Assimp11LWOImporter7GetInfoEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
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
  %i.a = alloca [5 x i8], align 1                 ; 8 uses
  %10 = alloca %"class.std::map", align 8         ; 14 uses
  %11 = alloca %"class.std::vector.76", align 8   ; 10 uses
  %12 = alloca %"struct.Assimp::LWO::Surface", align 8 ; 47 uses
  %i.b = alloca [8 x i32], align 16               ; 20 uses
  %i.c = alloca [8 x i32], align 16               ; 20 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %13 = alloca %"class.std::unique_ptr.95", align 8 ; 6 uses
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
          to label %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.b, !inline_history !6 ; 9 uses

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
          to label %.invoke unwind label %.thread499

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %4, align 8                ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.e
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260: ; preds = %bb.b
  %i.u = load i64, ptr %i.e, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit317

.thread499:                                       ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.q) #25
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit317

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
  br label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i316

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
  %.not.i264 = icmp eq i32 %i.ar, 1297239878
  br i1 %.not.i264, label %bb.p, label %_ZN6Assimp3IFF10ReadHeaderEPhRj.exit

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
  br label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i316

bb.m:                                             ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit314

bb.n:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit314

bb.o:                                             ; preds = %_ZN6Assimp3IFF10ReadHeaderEPhRj.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.as) #25
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit314

bb.p:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ay = load i32, ptr %i.ax, align 1
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
end_hunk_0
begin_hunk_1_@_ZN6Assimp11LWOImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
.invoke1017:                                      ; preds = %bb.z, %bb.w
  %i.cy = phi ptr [ %i.cv, %bb.w ], [ %i.cx, %bb.z ]
  %i.cz = phi ptr [ @.str.9, %bb.w ], [ @.str.11, %bb.z ]
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.cy, ptr noundef nonnull %i.cz)
          to label %bb.ag unwind label %bb.v

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.da = lshr i32 %.sroa.0395.0.insert.insert, 24
  %i.db = trunc nuw i32 %i.da to i8
  store i8 %i.db, ptr %i.a, align 1
  %i.dc = lshr i32 %.sroa.0395.0.insert.insert, 16
  %i.dd = trunc i32 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.dd, ptr %i.de, align 1
  %i.df = lshr i32 %.sroa.0395.0.insert.insert, 8
  %i.dg = trunc i32 %i.df to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.dg, ptr %i.dh, align 1
  %i.di = trunc i32 %.sroa.0395.0.insert.insert to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.di, ptr %i.dj, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 0, ptr %i.dk, align 1
  %i.dl = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA25_KcRA5_cEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 1 dereferenceable(25) @.str.12, ptr noundef nonnull align 1 dereferenceable(5) %i.a)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_throw(ptr nonnull %i.dl, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.he unwind label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dl) #25
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn212 = phi { ptr, i32 } [ %i.dn, %bb.ad ], [ %i.dm, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit310

bb.af:                                            ; preds = %bb.y
  store i8 1, ptr %i.cq, align 2
  br label %bb.ah

bb.ag:                                            ; preds = %.invoke1017
  store i8 1, ptr %i.cp, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  invoke void @_ZN6Assimp11LWOImporter12LoadLWO2FileEv(ptr noundef nonnull align 8 dereferenceable(233) %0)
          to label %bb.ai unwind label %bb.v

bb.ai:                                            ; preds = %bb.ah
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.dp = load i32, ptr %i.do, align 4
  %.not215 = icmp eq i32 %i.dp, -1
  br i1 %.not215, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dq = load ptr, ptr %i.bg, align 8            ; 3 uses
  %.sroa.0392.0650 = load ptr, ptr %i.dq, align 8 ; 2 uses
  %.not651 = icmp eq ptr %.sroa.0392.0650, %i.dq
  br i1 %.not651, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.dr = icmp eq i32 %spec.select, 2
  br i1 %i.dr, label %bb.an, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.aj, %.lr.ph
  %.sroa.0392.0653 = phi ptr [ %.sroa.0392.0, %.lr.ph ], [ %.sroa.0392.0650, %bb.aj ] ; 2 uses
  %.0171652 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %bb.aj ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0392.0653, i64 356
  %i.dt = load i8, ptr %i.ds, align 4, !range !7, !noundef !8
  %i.du = xor i8 %i.dt, 1
  %i.dv = zext nneg i8 %i.du to i32
  %spec.select = add i32 %.0171652, %i.dv         ; 2 uses
  %.sroa.0392.0 = load ptr, ptr %.sroa.0392.0653, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0392.0, %i.dq
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge.thread:                               ; preds = %bb.aj, %._crit_edge
  %i.dw = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, ptr noundef nonnull @.str.13)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %._crit_edge.thread
  invoke void @__cxa_throw(ptr nonnull %i.dw, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.he unwind label %bb.am

bb.al:                                            ; preds = %._crit_edge.thread
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dw) #25
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit310

bb.am:                                            ; preds = %bb.ak
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit310

bb.an:                                            ; preds = %._crit_edge, %bb.ai
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.eb = load i64, ptr %i.ea, align 8
  %.not217 = icmp eq i64 %i.eb, 0
  br i1 %.not217, label %.thread476, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ec = load i8, ptr %i.bd, align 8, !range !7, !noundef !8
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %.thread476, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ee = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA43_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 1 dereferenceable(43) @.str.14, ptr noundef nonnull align 8 dereferenceable(32) %i.dz)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @__cxa_throw(ptr nonnull %i.ee, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.he unwind label %bb.v

bb.ar:                                            ; preds = %bb.ap
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ee) #25
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit310

.thread476:                                       ; preds = %bb.t, %bb.an, %bb.ao
  invoke void @_ZN6Assimp11LWOImporter11ResolveTagsEv(ptr noundef nonnull align 8 dereferenceable(233) %0)
          to label %bb.as unwind label %bb.v

bb.as:                                            ; preds = %.thread476
  invoke void @_ZN6Assimp11LWOImporter12ResolveClipsEv(ptr noundef nonnull align 8 dereferenceable(233) %0)
          to label %bb.at unwind label %bb.v

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.eg = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i32 0, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr null, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.eg, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.eg, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  store i64 0, ptr %i.ek, align 8
  %i.el = load ptr, ptr %i.bg, align 8            ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load i64, ptr %i.em, align 8
  %i.eo = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = load ptr, ptr %i.eo, align 8
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = sdiv exact i64 %i.eu, 328
  %i.ew = and i64 %i.ev, 4294967294
  %.not502 = icmp eq i64 %i.ew, 0
  %i.ex = select i1 %.not502, i64 0, i64 %i.en    ; 4 uses
  %i.ey = icmp ugt i64 %i.ex, 1152921504606846975
  br i1 %i.ey, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #27
          to label %.noexc267 unwind label %.thread480

.noexc267:                                        ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.at
  %.not503 = icmp eq i64 %i.ex, 0
  br i1 %.not503, label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.av
  %i.ez = shl nuw nsw i64 %i.ex, 3
  %i.fa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ez) #28
          to label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %.thread480 ; 2 uses

_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ex
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit:     ; preds = %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.av
  %.sroa.25.10 = phi ptr [ %i.fb, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.av ] ; 2 uses
  %.sroa.15.5 = phi ptr [ %i.fa, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.av ] ; 3 uses
  %.sroa.0365.0701 = load ptr, ptr %i.el, align 8 ; 2 uses
  %.not504702 = icmp eq ptr %.sroa.0365.0701, %i.el
  br i1 %.not504702, label %._crit_edge709.thread, label %.lr.ph708

.lr.ph708:                                        ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %19 = getelementptr inbounds nuw i8, ptr %12, i64 40
  %20 = getelementptr inbounds nuw i8, ptr %12, i64 44
  %21 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.fc = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.fd = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.fe = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.ff = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.fh = getelementptr inbounds nuw i8, ptr %12, i64 112
  %i.fi = getelementptr inbounds nuw i8, ptr %12, i64 120 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.fk = getelementptr inbounds nuw i8, ptr %12, i64 136
  %i.fl = getelementptr inbounds nuw i8, ptr %12, i64 144 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %12, i64 152
  %i.fn = getelementptr inbounds nuw i8, ptr %12, i64 160
  %i.fo = getelementptr inbounds nuw i8, ptr %12, i64 168 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %12, i64 176
  %i.fq = getelementptr inbounds nuw i8, ptr %12, i64 184
  %i.fr = getelementptr inbounds nuw i8, ptr %12, i64 192 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %12, i64 200
  %i.ft = getelementptr inbounds nuw i8, ptr %12, i64 208
  %i.fu = getelementptr inbounds nuw i8, ptr %12, i64 216 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %12, i64 224
  %i.fw = getelementptr inbounds nuw i8, ptr %12, i64 232
  %i.fx = getelementptr inbounds nuw i8, ptr %12, i64 240 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %12, i64 248
  %i.fz = getelementptr inbounds nuw i8, ptr %12, i64 256
  %i.ga = getelementptr inbounds nuw i8, ptr %12, i64 264 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %12, i64 272
  %i.gc = getelementptr inbounds nuw i8, ptr %12, i64 280
  %i.gd = getelementptr inbounds nuw i8, ptr %12, i64 288 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 296
  %i.gf = getelementptr inbounds nuw i8, ptr %12, i64 304
  %i.gg = getelementptr inbounds nuw i8, ptr %12, i64 312
  %i.gh = getelementptr inbounds nuw i8, ptr %12, i64 320
  %i.gi = getelementptr inbounds nuw i8, ptr %12, i64 324
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.gq = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.gt = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.gv = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.gw = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.he = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.hh = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.hi = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.hj = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.hk = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  br label %bb.aw

._crit_edge709:                                   ; preds = %bb.gi
  %.pre842 = load i64, ptr %i.ek, align 8
  %i.hl = icmp eq i64 %.pre842, 0
  %i.hm = icmp eq ptr %.sroa.0373.7, %.sroa.15.4
  %or.cond501 = select i1 %i.hl, i1 true, i1 %i.hm
  br i1 %or.cond501, label %._crit_edge709.thread, label %bb.gm

.thread480:                                       ; preds = %bb.au, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapItP6aiNodeSt4lessItESaISt4pairIKtS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit310

bb.aw:                                            ; preds = %.lr.ph708, %bb.gi
  %.sroa.24828.0 = phi ptr [ undef, %.lr.ph708 ], [ %.sroa.24828.11, %bb.gi ] ; 5 uses
  %.sroa.21827.0 = phi ptr [ undef, %.lr.ph708 ], [ %.sroa.21827.11, %bb.gi ] ; 5 uses
  %.sroa.18826.0 = phi ptr [ undef, %.lr.ph708 ], [ %.sroa.18826.11, %bb.gi ] ; 5 uses
  %.sroa.15825.0 = phi ptr [ undef, %.lr.ph708 ], [ %.sroa.15825.11, %bb.gi ] ; 5 uses
  %.sroa.12824.0 = phi ptr [ undef, %.lr.ph708 ], [ %.sroa.12824.11, %bb.gi ] ; 5 uses
  %.sroa.9823.0 = phi ptr [ undef, %.lr.ph708 ], [ %.sroa.9823.11, %bb.gi ] ; 5 uses
  %.sroa.6822.0 = phi ptr [ undef, %.lr.ph708 ], [ %.sroa.6822.11, %bb.gi ] ; 5 uses
  %.sroa.0821.0 = phi ptr [ undef, %.lr.ph708 ], [ %.sroa.0821.11, %bb.gi ] ; 5 uses
  %.sroa.24.0 = phi ptr [ undef, %.lr.ph708 ], [ %.sroa.24.11, %bb.gi ] ; 5 uses
  %.sroa.21.0 = phi ptr [ undef, %.lr.ph708 ], [ %.sroa.21.11, %bb.gi ] ; 5 uses
  %.sroa.18.0 = phi ptr [ undef, %.lr.ph708 ], [ %.sroa.18.11, %bb.gi ] ; 5 uses
  %.sroa.15.0 = phi ptr [ undef, %.lr.ph708 ], [ %.sroa.15.11, %bb.gi ] ; 5 uses
  %.sroa.12.0 = phi ptr [ undef, %.lr.ph708 ], [ %.sroa.12.11, %bb.gi ] ; 5 uses
  %.sroa.9.0 = phi ptr [ undef, %.lr.ph708 ], [ %.sroa.9.11, %bb.gi ] ; 5 uses
  %.sroa.6.0 = phi ptr [ undef, %.lr.ph708 ], [ %.sroa.6.11, %bb.gi ] ; 5 uses
  %.sroa.0.0 = phi ptr [ undef, %.lr.ph708 ], [ %.sroa.0.11, %bb.gi ] ; 5 uses
  %.sroa.0365.0707 = phi ptr [ %.sroa.0365.0701, %.lr.ph708 ], [ %.sroa.0365.0, %bb.gi ] ; 15 uses
  %.0174706 = phi i32 [ -1, %.lr.ph708 ], [ %.6180, %bb.gi ] ; 5 uses
  %.sroa.0373.0705 = phi ptr [ %.sroa.15.5, %.lr.ph708 ], [ %.sroa.0373.7, %bb.gi ] ; 12 uses
  %.sroa.15.0704 = phi ptr [ %.sroa.15.5, %.lr.ph708 ], [ %.sroa.15.4, %bb.gi ] ; 6 uses
  %.sroa.25.0703 = phi ptr [ %.sroa.25.10, %.lr.ph708 ], [ %.sroa.25.7, %bb.gi ] ; 11 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0365.0707, i64 16 ; 5 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0365.0707, i64 356
  %i.hq = load i8, ptr %i.hp, align 4, !range !7, !noundef !8
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %bb.gi, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hs = ptrtoint ptr %.sroa.15.0704 to i64
  %i.ht = ptrtoint ptr %.sroa.0373.0705 to i64
  %i.hu = sub i64 %i.hs, %i.ht                    ; 3 uses
  %i.hv = ashr exact i64 %i.hu, 3                 ; 2 uses
  %i.hw = trunc i64 %i.hv to i32
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0365.0707, i64 272 ; 4 uses
  %i.hy = load ptr, ptr %i.hx, align 8            ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0365.0707, i64 280 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8            ; 2 uses
  %i.ib = icmp eq ptr %i.hy, %i.ia
  br i1 %i.ib, label %bb.fx, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ic = load ptr, ptr %i.ho, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0365.0707, i64 24
  %i.ie = load ptr, ptr %i.id, align 8
  %i.if = icmp eq ptr %i.ic, %i.ie
  br i1 %i.if, label %bb.fx, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ig = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = load ptr, ptr %i.ig, align 8
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = sdiv exact i64 %i.im, 328
  %i.io = add nsw i64 %i.in, 1                    ; 4 uses
  %i.ip = icmp ugt i64 %i.io, 384307168202282325
  br i1 %i.ip, label %bb.ba, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.109) #27
          to label %.noexc270 unwind label %.loopexit.split-lp521

.noexc270:                                        ; preds = %bb.ba
  unreachable

_ZNSt6vectorIS_IjSaIjEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.az
  store i64 0, ptr %11, align 8
  %.not.i.i.i.i269 = icmp eq i64 %i.io, 0
  br i1 %.not.i.i.i.i269, label %_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EEC2EmRKS3_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.iq = mul nuw nsw i64 %i.io, 24               ; 3 uses
  %i.ir = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iq) #28
          to label %.noexc271 unwind label %.loopexit520 ; 5 uses

.noexc271:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.ir, ptr %11, align 8
  %i.is = getelementptr inbounds nuw [24 x i8], ptr %i.ir, i64 %i.io
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ir, i8 0, i64 %i.iq, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ir, i64 %i.iq
  %.pre = load ptr, ptr %i.hx, align 8
  %.pre834 = load ptr, ptr %i.hz, align 8
  br label %_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EEC2EmRKS3_.exit.thread.i

_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %.noexc271
  %i.it = phi ptr [ %i.ir, %.noexc271 ], [ null, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 4 uses
  %i.iu = phi ptr [ %.pre834, %.noexc271 ], [ %i.ia, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 2 uses
  %i.iv = phi ptr [ %.pre, %.noexc271 ], [ %i.hy, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 2 uses
  %.sink.i = phi ptr [ %i.is, %.noexc271 ], [ null, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ]
  %.pre.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc271 ], [ null, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 6 uses
  store ptr %.sink.i, ptr %15, align 8
  store ptr %.pre.i.i, ptr %14, align 8
  %.not505654 = icmp eq ptr %i.iv, %i.iu
  br i1 %.not505654, label %._crit_edge660, label %.lr.ph659

._crit_edge660:                                   ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EEC2EmRKS3_.exit.thread.i
  %.1175.lcssa = phi i32 [ %.0174706, %_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %.4178, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 2 uses
  %i.iw = icmp eq i32 %.1175.lcssa, -1
  br i1 %i.iw, label %bb.bq, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

.loopexit520:                                     ; preds = %.lr.ph.preheader.i.i.i.i.i
  %lpad.loopexit522 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

.loopexit.split-lp521:                            ; preds = %bb.ba
  %lpad.loopexit.split-lp523 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

.lr.ph659:                                        ; preds = %_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EEC2EmRKS3_.exit.thread.i, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.1175657 = phi i32 [ %.4178, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.0174706, %_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EEC2EmRKS3_.exit.thread.i ] ; 5 uses
  %.0656 = phi i32 [ %i.lp, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ 0, %_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EEC2EmRKS3_.exit.thread.i ] ; 3 uses
  %.sroa.0354.0655 = phi ptr [ %i.lo, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.iv, %_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EEC2EmRKS3_.exit.thread.i ] ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0354.0655, i64 24
  %i.iy = load i32, ptr %i.ix, align 8
  switch i32 %i.iy, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit [
    i32 1178682181, label %bb.bb
    i32 1347699528, label %bb.bb
    i32 1112493637, label %bb.bb
    i32 1398096452, label %bb.bb
  ]

bb.bb:                                            ; preds = %.lr.ph659, %.lr.ph659, %.lr.ph659, %.lr.ph659
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0354.0655, i64 16
  %i.ja = load i32, ptr %i.iz, align 8            ; 2 uses
  %i.jb = zext i32 %i.ja to i64                   ; 2 uses
  %i.jc = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = load ptr, ptr %i.jc, align 8
  %i.jg = ptrtoint ptr %i.je to i64
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = sub i64 %i.jg, %i.jh
  %i.jj = ashr exact i64 %i.ji, 5
  %.not235 = icmp ugt i64 %i.jj, %i.jb
  br i1 %.not235, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jk = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bd unwind label %.loopexit515

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.jk, ptr noundef nonnull @.str.15)
          to label %.thread477 unwind label %.loopexit515

.loopexit515:                                     ; preds = %bb.bc, %bb.bd, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit517 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

.loopexit.split-lp516:                            ; preds = %bb.bn
  %lpad.loopexit.split-lp518 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

bb.be:                                            ; preds = %bb.bb
  %i.jl = icmp eq i32 %i.ja, -1
  br i1 %i.jl, label %.thread477, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jm = load ptr, ptr %8, align 8
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.jb
  %i.jo = load i32, ptr %i.jn, align 4            ; 2 uses
  %i.jp = icmp eq i32 %i.jo, -1
  br i1 %i.jp, label %.thread477, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit275

.thread477:                                       ; preds = %bb.bd, %bb.bf, %bb.be
  %i.jq = icmp eq i32 %.1175657, -1
  br i1 %i.jq, label %bb.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit275

bb.bg:                                            ; preds = %.thread477
  %i.jr = load ptr, ptr %i.bj, align 8            ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8 ; 4 uses
  %i.jt = load ptr, ptr %i.js, align 8
  %i.ju = load ptr, ptr %i.jr, align 8
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = sub i64 %i.jv, %i.jw
  %i.jy = sdiv exact i64 %i.jx, 328
  %i.jz = trunc i64 %i.jy to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  store ptr %16, ptr %12, align 8
  store i64 0, ptr %17, align 8
  store i8 0, ptr %16, align 8
  store <2 x float> splat (float f0x3F48C88A), ptr %18, align 8
  store float f0x3F48C88A, ptr %19, align 8
  store i8 0, ptr %20, align 4
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 4.000000e-01>, ptr %21, align 8
  store <2 x float> zeroinitializer, ptr %i.fc, align 8
  store float 0.000000e+00, ptr %i.fd, align 8
  store ptr %i.ff, ptr %i.fe, align 8
  store i64 0, ptr %i.fg, align 8
  store i8 0, ptr %i.ff, align 8
  store i32 1380401729, ptr %i.fh, align 8
  store ptr %i.fi, ptr %i.fj, align 8
  store ptr %i.fi, ptr %i.fi, align 8
  store i64 0, ptr %i.fk, align 8
  store ptr %i.fl, ptr %i.fm, align 8
  store ptr %i.fl, ptr %i.fl, align 8
  store i64 0, ptr %i.fn, align 8
  store ptr %i.fo, ptr %i.fp, align 8
  store ptr %i.fo, ptr %i.fo, align 8
  store i64 0, ptr %i.fq, align 8
  store ptr %i.fr, ptr %i.fs, align 8
  store ptr %i.fr, ptr %i.fr, align 8
  store i64 0, ptr %i.ft, align 8
  store ptr %i.fu, ptr %i.fv, align 8
  store ptr %i.fu, ptr %i.fu, align 8
  store i64 0, ptr %i.fw, align 8
  store ptr %i.fx, ptr %i.fy, align 8
  store ptr %i.fx, ptr %i.fx, align 8
  store i64 0, ptr %i.fz, align 8
  store ptr %i.ga, ptr %i.gb, align 8
  store ptr %i.ga, ptr %i.ga, align 8
  store i64 0, ptr %i.gc, align 8
  store ptr %i.gd, ptr %i.ge, align 8
  store ptr %i.gd, ptr %i.gd, align 8
  store i64 0, ptr %i.gf, align 8
  store <2 x float> splat (float 1.000000e+00), ptr %i.gg, align 8
  store i8 0, ptr %i.gh, align 8
  store float 0.000000e+00, ptr %i.gi, align 4
  %i.ka = load ptr, ptr %i.js, align 8            ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.kc = load ptr, ptr %i.kb, align 8
  %.not.i.i = icmp eq ptr %i.ka, %i.kc
  br i1 %.not.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN6Assimp3LWO7SurfaceC2EOS1_(ptr noundef nonnull align 8 dereferenceable(328) %i.ka, ptr noundef nonnull align 8 dereferenceable(328) %12)
          to label %.noexc272 unwind label %bb.bj

.noexc272:                                        ; preds = %bb.bh
  %i.kd = load ptr, ptr %i.js, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 328
  store ptr %i.ke, ptr %i.js, align 8
  br label %_ZNSt6vectorIN6Assimp3LWO7SurfaceESaIS2_EE9push_backEOS2_.exit

bb.bi:                                            ; preds = %bb.bg
  invoke void @_ZNSt6vectorIN6Assimp3LWO7SurfaceESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.jr, ptr %i.ka, ptr noundef nonnull align 8 dereferenceable(328) %12)
          to label %_ZNSt6vectorIN6Assimp3LWO7SurfaceESaIS2_EE9push_backEOS2_.exit unwind label %bb.bj

_ZNSt6vectorIN6Assimp3LWO7SurfaceESaIS2_EE9push_backEOS2_.exit: ; preds = %.noexc272, %bb.bi
  call void @_ZN6Assimp3LWO7SurfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.kf = load ptr, ptr %i.bj, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8            ; 4 uses
  %i.ki = getelementptr inbounds i8, ptr %i.kh, i64 -328
  %i.kj = getelementptr inbounds i8, ptr %i.kh, i64 -296
  %i.kk = getelementptr inbounds i8, ptr %i.kh, i64 -288
  store float 6.000000e-01, ptr %i.kk, align 8
  store <2 x float> splat (float 6.000000e-01), ptr %i.kj, align 8
  %i.kl = getelementptr inbounds i8, ptr %i.kh, i64 -320
  %i.km = load i64, ptr %i.kl, align 8
  %i.kn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ki, i64 noundef 0, i64 noundef %i.km, ptr noundef nonnull @.str.16, i64 noundef 17)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit275 unwind label %bb.bk ; 0 uses

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp3LWO7SurfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.fv

bb.bk:                                            ; preds = %_ZNSt6vectorIN6Assimp3LWO7SurfaceESaIS2_EE9push_backEOS2_.exit
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit275: ; preds = %_ZNSt6vectorIN6Assimp3LWO7SurfaceESaIS2_EE9push_backEOS2_.exit, %.thread477, %bb.bf
  %.1183 = phi i32 [ %i.jo, %bb.bf ], [ %.1175657, %.thread477 ], [ %i.jz, %_ZNSt6vectorIN6Assimp3LWO7SurfaceESaIS2_EE9push_backEOS2_.exit ]
  %.3177 = phi i32 [ %.1175657, %bb.bf ], [ %.1175657, %.thread477 ], [ %i.jz, %_ZNSt6vectorIN6Assimp3LWO7SurfaceESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.kq = zext i32 %.1183 to i64
  %i.kr = getelementptr inbounds nuw [24 x i8], ptr %i.it, i64 %i.kq ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8 ; 4 uses
  %i.kt = load ptr, ptr %i.ks, align 8            ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 16 ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8
  %.not.i276 = icmp eq ptr %i.kt, %i.kv
  br i1 %.not.i276, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit275
  store i32 %.0656, ptr %i.kt, align 4
  %i.kw = load ptr, ptr %i.ks, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  store ptr %i.kx, ptr %i.ks, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit275
  %i.ky = load ptr, ptr %i.kr, align 8            ; 4 uses
  %i.kz = ptrtoint ptr %i.kt to i64
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = sub i64 %i.kz, %i.la                    ; 6 uses
  %i.lc = icmp eq i64 %i.lb, 9223372036854775804
  br i1 %i.lc, label %bb.bn, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #27
          to label %.noexc277 unwind label %.loopexit.split-lp516

.noexc277:                                        ; preds = %bb.bn
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bm
  %i.ld = ashr exact i64 %i.lb, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ld, i64 1)
  %i.le = add nsw i64 %.sroa.speculated.i.i.i, %i.ld ; 2 uses
  %i.lf = icmp ult i64 %i.le, %i.ld
  %i.lg = call i64 @llvm.umin.i64(i64 %i.le, i64 2305843009213693951)
  %i.lh = select i1 %i.lf, i64 2305843009213693951, i64 %i.lg ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.lh, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.li = shl nuw nsw i64 %i.lh, 2
  %i.lj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.li) #28
          to label %.noexc278 unwind label %.loopexit515 ; 4 uses

.noexc278:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.lk = getelementptr inbounds i8, ptr %i.lj, i64 %i.lb ; 2 uses
  store i32 %.0656, ptr %i.lk, align 4
  %i.ll = icmp sgt i64 %i.lb, 0
  br i1 %i.ll, label %bb.bo, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.bo:                                            ; preds = %.noexc278
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lj, ptr align 4 %i.ky, i64 %i.lb, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.bo, %.noexc278
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ky, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ky, i64 noundef %i.lb) #26
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.bp, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.lj, ptr %i.kr, align 8
  store ptr %i.lm, ptr %i.ks, align 8
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %i.lh
  store ptr %i.ln, ptr %i.ku, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %.lr.ph659, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.bl
  %.4178 = phi i32 [ %.1175657, %.lr.ph659 ], [ %.3177, %bb.bl ], [ %.3177, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ] ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.0354.0655, i64 32 ; 2 uses
  %i.lp = add i32 %.0656, 1
  %.not505 = icmp eq ptr %i.lo, %i.iu
  br i1 %.not505, label %._crit_edge660, label %.lr.ph659, !llvm.loop !10

bb.bq:                                            ; preds = %._crit_edge660
  %i.lq = getelementptr inbounds i8, ptr %.pre.i.i, i64 -24 ; 5 uses
  %i.lr = ptrtoint ptr %i.lq to i64
  %i.ls = ptrtoint ptr %i.it to i64
  %i.lt = sub i64 %i.lr, %i.ls
  %i.lu = getelementptr inbounds i8, ptr %i.it, i64 %i.lt ; 5 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 24 ; 4 uses
  %.not.i.i279 = icmp ne ptr %i.lv, %.pre.i.i
  %i.lw = ptrtoint ptr %.pre.i.i to i64
  %i.lx = ptrtoint ptr %i.lv to i64
  %i.ly = sub i64 %i.lw, %i.lx
  %i.lz = icmp sgt i64 %i.ly, 0
  %or.cond = and i1 %.not.i.i279, %i.lz
  br i1 %or.cond, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIjSaIjEES2_IS4_SaIS4_EEEES8_ET0_T_SA_S9_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.bq
  %i.ma = load ptr, ptr %i.lu, align 8            ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lu, i64 16 ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 8
  %i.md = load <2 x ptr>, ptr %i.lv, align 8
  store <2 x ptr> %i.md, ptr %i.lu, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.lu, i64 40
  %i.mf = load ptr, ptr %i.me, align 8
  store ptr %i.mf, ptr %i.mb, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ma, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lv, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIjSaIjEES2_IS4_SaIS4_EEEES8_ET0_T_SA_S9_.exit.i.i, label %bb.br

bb.br:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i
  %i.mg = ptrtoint ptr %i.mc to i64
  %i.mh = ptrtoint ptr %i.ma to i64
  %i.mi = sub i64 %i.mg, %i.mh
  call void @_ZdlPvm(ptr noundef nonnull %i.ma, i64 noundef %i.mi) #26
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIjSaIjEES2_IS4_SaIS4_EEEES8_ET0_T_SA_S9_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIjSaIjEES2_IS4_SaIS4_EEEES8_ET0_T_SA_S9_.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %bb.br, %bb.bq
  store ptr %i.lq, ptr %14, align 8
  %i.mj = load ptr, ptr %i.lq, align 8            ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.mj, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIjSaIjEES2_IS4_SaIS4_EEEES8_ET0_T_SA_S9_.exit.i.i
  %i.mk = getelementptr inbounds i8, ptr %.pre.i.i, i64 -8
  %i.ml = load ptr, ptr %i.mk, align 8
  %i.mm = ptrtoint ptr %i.ml to i64
  %i.mn = ptrtoint ptr %i.mj to i64
  %i.mo = sub i64 %i.mm, %i.mn
  call void @_ZdlPvm(ptr noundef nonnull %i.mj, i64 noundef %i.mo) #26
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIjSaIjEES2_IS4_SaIS4_EEEES8_ET0_T_SA_S9_.exit.i.i, %bb.bs, %._crit_edge660
  %i.mp = phi ptr [ %i.lq, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIjSaIjEES2_IS4_SaIS4_EEEES8_ET0_T_SA_S9_.exit.i.i ], [ %i.lq, %bb.bs ], [ %.pre.i.i, %._crit_edge660 ]
  %i.mq = load ptr, ptr %i.bj, align 8            ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.ms = load ptr, ptr %i.mr, align 8
  %i.mt = load ptr, ptr %i.mq, align 8            ; 2 uses
  %.not717 = icmp eq ptr %i.ms, %i.mt
  br i1 %.not717, label %._crit_edge694, label %.lr.ph693

.lr.ph693:                                        ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.0365.0707, i64 176
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.0365.0707, i64 40 ; 4 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.0365.0707, i64 48 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.0365.0707, i64 136 ; 8 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.0365.0707, i64 208
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.0365.0707, i64 112 ; 8 uses
  br label %bb.bv

._crit_edge694.loopexit:                          ; preds = %bb.ft
  %.pre840 = load ptr, ptr %11, align 8
  %.pre841 = load ptr, ptr %14, align 8
  br label %._crit_edge694

._crit_edge694:                                   ; preds = %._crit_edge694.loopexit, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit
  %i.na = phi ptr [ %i.mp, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.pre841, %._crit_edge694.loopexit ] ; 2 uses
  %.pr.i = phi ptr [ %i.it, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.pre840, %._crit_edge694.loopexit ] ; 5 uses
  %.sroa.24828.1 = phi ptr [ %.sroa.24828.0, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.sroa.24828.9, %._crit_edge694.loopexit ]
  %.sroa.21827.1 = phi ptr [ %.sroa.21827.0, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.sroa.21827.9, %._crit_edge694.loopexit ]
  %.sroa.18826.1 = phi ptr [ %.sroa.18826.0, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.sroa.18826.9, %._crit_edge694.loopexit ]
  %.sroa.15825.1 = phi ptr [ %.sroa.15825.0, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.sroa.15825.9, %._crit_edge694.loopexit ]
  %.sroa.12824.1 = phi ptr [ %.sroa.12824.0, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.sroa.12824.9, %._crit_edge694.loopexit ]
  %.sroa.9823.1 = phi ptr [ %.sroa.9823.0, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.sroa.9823.9, %._crit_edge694.loopexit ]
  %.sroa.6822.1 = phi ptr [ %.sroa.6822.0, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.sroa.6822.9, %._crit_edge694.loopexit ]
  %.sroa.0821.1 = phi ptr [ %.sroa.0821.0, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.sroa.0821.9, %._crit_edge694.loopexit ]
  %.sroa.24.1 = phi ptr [ %.sroa.24.0, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.sroa.24.9, %._crit_edge694.loopexit ]
  %.sroa.21.1 = phi ptr [ %.sroa.21.0, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.sroa.21.9, %._crit_edge694.loopexit ]
  %.sroa.18.1 = phi ptr [ %.sroa.18.0, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.sroa.18.9, %._crit_edge694.loopexit ]
  %.sroa.15.1 = phi ptr [ %.sroa.15.0, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.sroa.15.9, %._crit_edge694.loopexit ]
  %.sroa.12.1 = phi ptr [ %.sroa.12.0, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.sroa.12.9, %._crit_edge694.loopexit ]
  %.sroa.9.1 = phi ptr [ %.sroa.9.0, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.sroa.9.9, %._crit_edge694.loopexit ]
  %.sroa.6.1 = phi ptr [ %.sroa.6.0, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.sroa.6.9, %._crit_edge694.loopexit ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.sroa.0.9, %._crit_edge694.loopexit ]
  %.sroa.25.1.lcssa = phi ptr [ %.sroa.25.0703, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.sroa.25.2, %._crit_edge694.loopexit ]
  %.sroa.15.1.lcssa = phi ptr [ %.sroa.15.0704, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.sroa.15.2, %._crit_edge694.loopexit ] ; 2 uses
  %.sroa.0373.1.lcssa = phi ptr [ %.sroa.0373.0705, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.sroa.0373.2, %._crit_edge694.loopexit ] ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.na
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge694, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.nh, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i ], [ %.pr.i, %._crit_edge694 ] ; 3 uses
  %i.nb = load ptr, ptr %.05.i.i.i, align 8       ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.nb, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.i.i.i
  %i.nc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8
  %i.ne = ptrtoint ptr %i.nd to i64
  %i.nf = ptrtoint ptr %i.nb to i64
  %i.ng = sub i64 %i.ne, %i.nf
  call void @_ZdlPvm(ptr noundef nonnull %i.nb, i64 noundef %i.ng) #26
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i:  ; preds = %bb.bt, %.lr.ph.i.i.i
  %i.nh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i280 = icmp eq ptr %i.nh, %i.na
  br i1 %.not.i.i.i280, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !11

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i, %._crit_edge694
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i
  %i.ni = load ptr, ptr %15, align 8
  %i.nj = ptrtoint ptr %i.ni to i64
  %i.nk = ptrtoint ptr %.pr.i to i64
  %i.nl = sub i64 %i.nj, %i.nk
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.nl) #26
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %.pre843 = ptrtoint ptr %.sroa.15.1.lcssa to i64
  %.pre844 = ptrtoint ptr %.sroa.0373.1.lcssa to i64
  %.pre846 = sub i64 %.pre843, %.pre844
  br label %bb.fx

bb.bv:                                            ; preds = %.lr.ph693, %bb.ft
  %i.nm = phi ptr [ %i.mt, %.lr.ph693 ], [ %i.agn, %bb.ft ]
  %i.nn = phi ptr [ %i.mq, %.lr.ph693 ], [ %i.ago, %bb.ft ]
  %.sroa.24828.2 = phi ptr [ %.sroa.24828.0, %.lr.ph693 ], [ %.sroa.24828.9, %bb.ft ] ; 9 uses
  %.sroa.21827.2 = phi ptr [ %.sroa.21827.0, %.lr.ph693 ], [ %.sroa.21827.9, %bb.ft ] ; 8 uses
  %.sroa.18826.2 = phi ptr [ %.sroa.18826.0, %.lr.ph693 ], [ %.sroa.18826.9, %bb.ft ] ; 7 uses
  %.sroa.15825.2 = phi ptr [ %.sroa.15825.0, %.lr.ph693 ], [ %.sroa.15825.9, %bb.ft ] ; 6 uses
  %.sroa.12824.2 = phi ptr [ %.sroa.12824.0, %.lr.ph693 ], [ %.sroa.12824.9, %bb.ft ] ; 5 uses
  %.sroa.9823.2 = phi ptr [ %.sroa.9823.0, %.lr.ph693 ], [ %.sroa.9823.9, %bb.ft ] ; 4 uses
  %.sroa.6822.2 = phi ptr [ %.sroa.6822.0, %.lr.ph693 ], [ %.sroa.6822.9, %bb.ft ] ; 3 uses
  %.sroa.0821.2 = phi ptr [ %.sroa.0821.0, %.lr.ph693 ], [ %.sroa.0821.9, %bb.ft ] ; 2 uses
  %.sroa.24.2 = phi ptr [ %.sroa.24.0, %.lr.ph693 ], [ %.sroa.24.9, %bb.ft ] ; 9 uses
  %.sroa.21.2 = phi ptr [ %.sroa.21.0, %.lr.ph693 ], [ %.sroa.21.9, %bb.ft ] ; 8 uses
  %.sroa.18.2 = phi ptr [ %.sroa.18.0, %.lr.ph693 ], [ %.sroa.18.9, %bb.ft ] ; 7 uses
  %.sroa.15.2829 = phi ptr [ %.sroa.15.0, %.lr.ph693 ], [ %.sroa.15.9, %bb.ft ] ; 6 uses
  %.sroa.12.2 = phi ptr [ %.sroa.12.0, %.lr.ph693 ], [ %.sroa.12.9, %bb.ft ] ; 5 uses
  %.sroa.9.2 = phi ptr [ %.sroa.9.0, %.lr.ph693 ], [ %.sroa.9.9, %bb.ft ] ; 4 uses
  %.sroa.6.2 = phi ptr [ %.sroa.6.0, %.lr.ph693 ], [ %.sroa.6.9, %bb.ft ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0, %.lr.ph693 ], [ %.sroa.0.9, %bb.ft ] ; 2 uses
  %i.no = phi i64 [ 0, %.lr.ph693 ], [ %i.agq, %bb.ft ] ; 12 uses
  %.0185692 = phi i32 [ 0, %.lr.ph693 ], [ %i.agp, %bb.ft ] ; 2 uses
  %.sroa.0373.1691 = phi ptr [ %.sroa.0373.0705, %.lr.ph693 ], [ %.sroa.0373.2, %bb.ft ] ; 8 uses
  %.sroa.15.1690 = phi ptr [ %.sroa.15.0704, %.lr.ph693 ], [ %.sroa.15.2, %bb.ft ] ; 7 uses
  %.sroa.25.1689 = phi ptr [ %.sroa.25.0703, %.lr.ph693 ], [ %.sroa.25.2, %bb.ft ] ; 4 uses
  %i.np = load ptr, ptr %11, align 8
  %i.nq = getelementptr inbounds nuw [24 x i8], ptr %i.np, i64 %i.no ; 7 uses
  %i.nr = load ptr, ptr %i.nq, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 8 ; 3 uses
  %i.nt = load ptr, ptr %i.ns, align 8
  %i.nu = icmp eq ptr %i.nr, %i.nt
  br i1 %i.nu, label %bb.ft, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.nv = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #28
          to label %bb.bx unwind label %.loopexit514 ; 31 uses

bb.bx:                                            ; preds = %bb.bw
  store i32 0, ptr %i.nv, align 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 4 ; 6 uses
  store i32 0, ptr %i.nw, align 4
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 8 ; 3 uses
  store i32 0, ptr %i.nx, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 16 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nv, i64 224
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nv, i64 1272
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nv, i64 1312
  store ptr null, ptr %i.ob, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.ny, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.nz, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.oa, i8 0, i64 36, i1 false)
  %.not.i281 = icmp eq ptr %.sroa.15.1690, %.sroa.25.1689
  br i1 %.not.i281, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store ptr %i.nv, ptr %.sroa.15.1690, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

bb.bz:                                            ; preds = %bb.bx
  %i.oc = ptrtoint ptr %.sroa.15.1690 to i64
  %i.od = ptrtoint ptr %.sroa.0373.1691 to i64
  %i.oe = sub i64 %i.oc, %i.od                    ; 6 uses
  %i.of = icmp eq i64 %i.oe, 9223372036854775800
  br i1 %i.of, label %bb.ca, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #27
          to label %.noexc285 unwind label %.loopexit.split-lp

.noexc285:                                        ; preds = %bb.ca
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bz
  %i.og = ashr exact i64 %i.oe, 3                 ; 3 uses
  %.sroa.speculated.i.i.i282 = call i64 @llvm.umax.i64(i64 %i.og, i64 1)
  %i.oh = add nsw i64 %.sroa.speculated.i.i.i282, %i.og ; 2 uses
  %i.oi = icmp ult i64 %i.oh, %i.og
  %i.oj = call i64 @llvm.umin.i64(i64 %i.oh, i64 1152921504606846975)
  %i.ok = select i1 %i.oi, i64 1152921504606846975, i64 %i.oj ; 3 uses
  %.not.i.i.i283 = icmp ne i64 %i.ok, 0
  call void @llvm.assume(i1 %.not.i.i.i283)
  %i.ol = shl nuw nsw i64 %i.ok, 3
  %i.om = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ol) #28
          to label %.noexc286 unwind label %.loopexit514 ; 4 uses

.noexc286:                                        ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.on = getelementptr inbounds i8, ptr %i.om, i64 %i.oe ; 2 uses
  store ptr %i.nv, ptr %i.on, align 8
  %i.oo = icmp sgt i64 %i.oe, 0
  br i1 %i.oo, label %bb.cb, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.cb:                                            ; preds = %.noexc286
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.om, ptr align 8 %.sroa.0373.1691, i64 %i.oe, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.cb, %.noexc286
  %.not.i17.i.i284 = icmp eq ptr %.sroa.0373.1691, null
  br i1 %.not.i17.i.i284, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0373.1691, i64 noundef %i.oe) #26
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.cc, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.om, i64 %i.ok
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.by
  %.sroa.25.11 = phi ptr [ %i.op, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.25.1689, %bb.by ] ; 4 uses
  %.pn506 = phi ptr [ %i.on, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.15.1690, %bb.by ]
  %.sroa.0373.11 = phi ptr [ %i.om, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0373.1691, %bb.by ] ; 4 uses
  %.sroa.15.6 = getelementptr inbounds nuw i8, ptr %.pn506, i64 8
  %i.oq = load ptr, ptr %i.ns, align 8
  %i.or = load ptr, ptr %i.nq, align 8
  %i.os = ptrtoint ptr %i.oq to i64
  %i.ot = ptrtoint ptr %i.or to i64
  %i.ou = sub i64 %i.os, %i.ot
  %i.ov = lshr exact i64 %i.ou, 2                 ; 3 uses
  %i.ow = trunc i64 %i.ov to i32                  ; 2 uses
  store i32 %i.ow, ptr %i.nx, align 8
  %i.ox = load ptr, ptr %i.nq, align 8            ; 2 uses
  %i.oy = load ptr, ptr %i.ns, align 8            ; 4 uses
  %.not507662 = icmp eq ptr %i.ox, %i.oy
  %.pre836 = load i32, ptr %i.nw, align 4         ; 2 uses
  br i1 %.not507662, label %._crit_edge665, label %.lr.ph664

.lr.ph664:                                        ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit, %.lr.ph664
  %i.oz = phi i32 [ %i.pf, %.lr.ph664 ], [ %.pre836, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ]
  %.sroa.0329.0663 = phi ptr [ %i.pg, %.lr.ph664 ], [ %i.ox, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.pa = load i32, ptr %.sroa.0329.0663, align 4
  %i.pb = zext i32 %i.pa to i64
  %i.pc = load ptr, ptr %i.hx, align 8
  %i.pd = getelementptr inbounds nuw [32 x i8], ptr %i.pc, i64 %i.pb
  %i.pe = load i32, ptr %i.pd, align 8
  %i.pf = add i32 %i.oz, %i.pe                    ; 3 uses
  store i32 %i.pf, ptr %i.nw, align 4
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.0329.0663, i64 4 ; 2 uses
  %.not507 = icmp eq ptr %i.pg, %i.oy
  br i1 %.not507, label %._crit_edge665, label %.lr.ph664, !llvm.loop !12

.loopexit514:                                     ; preds = %bb.bw, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.25.1689.lcssa = phi ptr [ %.sroa.25.1689, %bb.bw ], [ %.sroa.15.1690, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

.loopexit.split-lp:                               ; preds = %bb.ca
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

._crit_edge665:                                   ; preds = %.lr.ph664, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit
  %i.ph = phi i32 [ %.pre836, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ], [ %i.pf, %.lr.ph664 ] ; 2 uses
  %i.pi = zext i32 %i.ph to i64
  %i.pj = mul nuw nsw i64 %i.pi, 12               ; 2 uses
  %i.pk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.pj) #28
          to label %bb.cd unwind label %bb.ci     ; 3 uses

bb.cd:                                            ; preds = %._crit_edge665
  %i.pl = icmp eq i32 %i.ph, 0
  br i1 %i.pl, label %.loopexit512, label %.loopexit512.loopexit

.loopexit512.loopexit:                            ; preds = %bb.cd
  %i.pm = add nsw i64 %i.pj, -12                  ; 2 uses
  %i.pn = urem i64 %i.pm, 12
  %i.po = sub nuw nsw i64 %i.pm, %i.pn
  %i.pp = add nsw i64 %i.po, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.pk, i8 0, i64 %i.pp, i1 false)
  br label %.loopexit512

.loopexit512:                                     ; preds = %.loopexit512.loopexit, %bb.cd
  store ptr %i.pk, ptr %i.ny, align 8
  %i.pq = and i64 %i.ov, 4294967295               ; 4 uses
  %i.pr = shl nuw nsw i64 %i.pq, 4
  %i.ps = or disjoint i64 %i.pr, 8
  %i.pt = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ps) #28
          to label %bb.ce unwind label %bb.cj     ; 2 uses

bb.ce:                                            ; preds = %.loopexit512
  store i64 %i.pq, ptr %i.pt, align 16
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 8 ; 5 uses
  %i.pv = icmp eq i32 %i.ow, 0
  br i1 %i.pv, label %.loopexit511, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.pw = getelementptr inbounds nuw [16 x i8], ptr %i.pu, i64 %i.pq
  %i.px = add nuw nsw i64 %i.pq, 1152921504606846975
  %i.py = and i64 %i.px, 1152921504606846975
end_hunk_1
begin_hunk_2_@_ZN6Assimp11LWOImporter14ComputeNormalsEP6aiMeshRKSt6vectorIjSaIjEERKNS_3LWO7SurfaceE:bb.a
  %i.ew = extractelement <2 x float> %i.eu, i64 0 ; 2 uses
  %i.ex = call float @llvm.fmuladd.f32(float %i.ew, float %i.ew, float %i.ev)
  %i.ey = call noundef float @llvm.fmuladd.f32(float %.sroa.14219.0.lcssa, float %.sroa.14219.0.lcssa, float %i.ex) ; 2 uses
  %i.ez = fcmp oeq float %i.ey, 0.000000e+00
  br i1 %i.ez, label %_ZN10aiVector3tIfE9NormalizeEv.exit159, label %_ZN10aiVector3tIfEdVEf.exit.i157

_ZN10aiVector3tIfEdVEf.exit.i157:                 ; preds = %._crit_edge295
  %sqrt.i.i158 = call noundef float @llvm.sqrt.f32(float %i.ey)
  %i.fa = fdiv float 1.000000e+00, %sqrt.i.i158   ; 2 uses
  %i.fb = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = fmul <2 x float> %i.eu, %i.fc
  %i.fe = fmul float %.sroa.14219.0.lcssa, %i.fa
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit159

bb.q:                                             ; preds = %._crit_edge287
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit173
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.s:                                             ; preds = %.lr.ph301
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.t:                                             ; preds = %.lr.ph294, %bb.t
  %.sroa.14219.0292 = phi float [ 0.000000e+00, %.lr.ph294 ], [ %.sroa.14219.1, %bb.t ] ; 2 uses
  %.sroa.0212.0289 = phi ptr [ %i.em, %.lr.ph294 ], [ %i.ga, %bb.t ] ; 2 uses
  %i.fi = phi <2 x float> [ zeroinitializer, %.lr.ph294 ], [ %i.fz, %bb.t ] ; 2 uses
  %i.fj = load i32, ptr %.sroa.0212.0289, align 4
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0236.0, i64 %i.fk ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load float, ptr %i.fm, align 4          ; 2 uses
  %i.fo = load <2 x float>, ptr %i.fl, align 4    ; 3 uses
  %i.fp = extractelement <2 x float> %i.fo, i64 1
  %i.fq = fmul float %i.fp, %i.er
  %i.fr = extractelement <2 x float> %i.fo, i64 0
  %i.fs = call float @llvm.fmuladd.f32(float %i.fr, float %i.ep, float %i.fq)
  %i.ft = call noundef float @llvm.fmuladd.f32(float %i.fn, float %i.et, float %i.fs)
  %i.fu = fcmp olt float %i.ft, %i.dy             ; 2 uses
  %i.fv = fadd <2 x float> %i.fi, %i.fo
  %i.fw = fadd float %.sroa.14219.0292, %i.fn
  %i.fx = insertelement <2 x i1> poison, i1 %i.fu, i64 0
  %i.fy = shufflevector <2 x i1> %i.fx, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.fz = select <2 x i1> %i.fy, <2 x float> %i.fi, <2 x float> %i.fv ; 2 uses
  %.sroa.14219.1 = select i1 %i.fu, float %.sroa.14219.0292, float %i.fw ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0212.0289, i64 4 ; 2 uses
  %.not272 = icmp eq ptr %i.ga, %i.en
  br i1 %.not272, label %._crit_edge295, label %bb.t, !llvm.loop !43

_ZN10aiVector3tIfE9NormalizeEv.exit159:           ; preds = %_ZN10aiVector3tIfEdVEf.exit.i157, %._crit_edge295
  %.sroa.14219.2 = phi float [ %.sroa.14219.0.lcssa, %._crit_edge295 ], [ %i.fe, %_ZN10aiVector3tIfEdVEf.exit.i157 ]
  %i.gb = phi <2 x float> [ %i.eu, %._crit_edge295 ], [ %i.fd, %_ZN10aiVector3tIfEdVEf.exit.i157 ]
  %i.gc = load ptr, ptr %i.x, align 8
  %i.gd = getelementptr inbounds nuw [12 x i8], ptr %i.gc, i64 %i.ej ; 2 uses
  store <2 x float> %i.gb, ptr %i.gd, align 4
  %.sroa.14219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store float %.sroa.14219.2, ptr %.sroa.14219.0..sroa_idx, align 4
  %i.ge = getelementptr inbounds nuw i8, ptr %.0124299, i64 4 ; 2 uses
  %.not131 = icmp eq ptr %i.ge, %i.eg
  br i1 %.not131, label %._crit_edge302, label %.lr.ph301, !llvm.loop !44

._crit_edge302:                                   ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit159, %bb.o
  %i.gf = getelementptr inbounds nuw i8, ptr %.2120305, i64 16 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0221.1304, i64 4
  %.not130 = icmp eq ptr %i.gf, %i.ad
  br i1 %.not130, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit173, label %bb.o, !llvm.loop !45

bb.u:                                             ; preds = %bb.m, %.noexc156
  %i.gh = load i32, ptr %i.a, align 4             ; 2 uses
  %.not.i.i160 = icmp eq i32 %i.gh, 0
  br i1 %.not.i.i160, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gi = zext i32 %i.gh to i64
  %i.gj = add nuw nsw i64 %i.gi, 63               ; 2 uses
  %i.gk = lshr i64 %i.gj, 3
  %i.gl = and i64 %i.gk, 1073741816
  %i.gm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gl) #28
          to label %.noexc161 unwind label %bb.x  ; 3 uses

.noexc161:                                        ; preds = %bb.v
  %i.gn = lshr i64 %i.gj, 6                       ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gn
  %.idx.i = shl nuw nsw i64 %i.gn, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.gm, i8 0, i64 %.idx.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %.noexc161, %bb.u
  %.sroa.15208.0 = phi ptr [ null, %bb.u ], [ %i.go, %.noexc161 ] ; 4 uses
  %.sroa.0202.0 = phi ptr [ null, %bb.u ], [ %i.gm, %.noexc161 ] ; 5 uses
  %i.gp = load ptr, ptr %i.y, align 8             ; 2 uses
  %.not133327 = icmp eq ptr %i.gp, %i.ad
  br i1 %.not133327, label %._crit_edge331, label %.lr.ph330

.lr.ph330:                                        ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.gq = load ptr, ptr %2, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph330, %._crit_edge326
  %.3121329 = phi ptr [ %i.gp, %.lr.ph330 ], [ %i.jd, %._crit_edge326 ] ; 3 uses
  %.sroa.0221.2328 = phi ptr [ %i.gq, %.lr.ph330 ], [ %i.je, %._crit_edge326 ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.3121329, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8            ; 2 uses
  %i.gu = load i32, ptr %.3121329, align 8        ; 2 uses
  %i.gv = zext i32 %i.gu to i64
  %.idx335 = shl nuw nsw i64 %i.gv, 2
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.idx335
  %.not134322 = icmp eq i32 %i.gu, 0
  br i1 %.not134322, label %._crit_edge326, label %.lr.ph325

.lr.ph325:                                        ; preds = %bb.w, %.loopexit
  %.0117323 = phi ptr [ %i.jc, %.loopexit ], [ %i.gt, %bb.w ] ; 2 uses
  %i.gx = load i32, ptr %.0117323, align 4        ; 2 uses
  %i.gy = zext i32 %i.gx to i64                   ; 2 uses
  %i.gz = lshr i32 %i.gx, 6
  %.zext = zext nneg i32 %i.gz to i64
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0202.0, i64 %.zext
  %i.hb = and i64 %i.gy, 63
  %i.hc = shl nuw i64 1, %i.hb
  %i.hd = load i64, ptr %i.ha, align 8
  %i.he = and i64 %i.hc, %i.hd
  %.not273 = icmp eq i64 %i.he, 0
  br i1 %.not273, label %bb.y, label %.loopexit

bb.x:                                             ; preds = %bb.v
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.y:                                             ; preds = %.lr.ph325
  %i.hg = load ptr, ptr %i.gr, align 8
  %i.hh = getelementptr inbounds nuw [12 x i8], ptr %i.hg, i64 %i.gy
  %i.hi = load i32, ptr %.sroa.0221.2328, align 4
  invoke void @_ZNK6Assimp13SGSpatialSort13FindPositionsERK10aiVector3tIfEjfRSt6vectorIjSaIjEEb(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.hh, i32 noundef %i.hi, float noundef %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true)
          to label %bb.z unwind label %.thread249

bb.z:                                             ; preds = %bb.y
  %i.hj = load ptr, ptr %5, align 8               ; 3 uses
  %i.hk = load ptr, ptr %i.dr, align 8            ; 2 uses
  %.not274308 = icmp eq ptr %i.hj, %i.hk          ; 2 uses
  br i1 %.not274308, label %._crit_edge315, label %.lr.ph314

._crit_edge315:                                   ; preds = %.lr.ph314, %bb.z
  %.sroa.14.0.lcssa = phi float [ 0.000000e+00, %bb.z ], [ %i.il, %.lr.ph314 ] ; 4 uses
  %i.hl = phi <2 x float> [ zeroinitializer, %bb.z ], [ %i.ii, %.lr.ph314 ] ; 5 uses
  %foldExtExtBinop378 = fmul <2 x float> %i.hl, %i.hl
  %i.hm = extractelement <2 x float> %foldExtExtBinop378, i64 1
  %i.hn = extractelement <2 x float> %i.hl, i64 0 ; 2 uses
  %i.ho = call float @llvm.fmuladd.f32(float %i.hn, float %i.hn, float %i.hm)
  %i.hp = call noundef float @llvm.fmuladd.f32(float %.sroa.14.0.lcssa, float %.sroa.14.0.lcssa, float %i.ho) ; 2 uses
  %i.hq = fcmp oeq float %i.hp, 0.000000e+00
  br i1 %i.hq, label %_ZN10aiVector3tIfE9NormalizeEv.exit166, label %_ZN10aiVector3tIfEdVEf.exit.i164

_ZN10aiVector3tIfEdVEf.exit.i164:                 ; preds = %._crit_edge315
  %sqrt.i.i165 = call noundef float @llvm.sqrt.f32(float %i.hp)
  %i.hr = fdiv float 1.000000e+00, %sqrt.i.i165   ; 2 uses
  %i.hs = insertelement <2 x float> poison, float %i.hr, i64 0
  %i.ht = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hu = fmul <2 x float> %i.hl, %i.ht
  %i.hv = fmul float %.sroa.14.0.lcssa, %i.hr
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit166

.thread249:                                       ; preds = %bb.y
  %i.hw = landingpad { ptr, i32 }
          cleanup
  %i.hx = ptrtoint ptr %.sroa.15208.0 to i64
  %i.hy = ptrtoint ptr %.sroa.0202.0 to i64
  %i.hz = sub i64 %i.hx, %i.hy                    ; 2 uses
  %i.ia = ashr exact i64 %i.hz, 3
  %i.ib = sub nsw i64 0, %i.ia
  %i.ic = getelementptr inbounds [8 x i8], ptr %.sroa.15208.0, i64 %i.ib
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.hz) #26
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

.lr.ph314:                                        ; preds = %bb.z, %.lr.ph314
  %.sroa.0192.0312 = phi ptr [ %i.im, %.lr.ph314 ], [ %i.hj, %bb.z ] ; 2 uses
  %.sroa.14.0309 = phi float [ %i.il, %.lr.ph314 ], [ 0.000000e+00, %bb.z ]
  %i.id = phi <2 x float> [ %i.ii, %.lr.ph314 ], [ zeroinitializer, %bb.z ]
  %i.ie = load i32, ptr %.sroa.0192.0312, align 4
  %i.if = zext i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0236.0, i64 %i.if ; 2 uses
  %i.ih = load <2 x float>, ptr %i.ig, align 4
  %i.ii = fadd <2 x float> %i.id, %i.ih           ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ik = load float, ptr %i.ij, align 4
  %i.il = fadd float %.sroa.14.0309, %i.ik        ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0192.0312, i64 4 ; 2 uses
  %.not274 = icmp eq ptr %i.im, %i.hk
  br i1 %.not274, label %._crit_edge315, label %.lr.ph314, !llvm.loop !46

_ZN10aiVector3tIfE9NormalizeEv.exit166:           ; preds = %_ZN10aiVector3tIfEdVEf.exit.i164, %._crit_edge315
  %.sroa.14.1 = phi float [ %.sroa.14.0.lcssa, %._crit_edge315 ], [ %i.hv, %_ZN10aiVector3tIfEdVEf.exit.i164 ]
  %i.in = phi <2 x float> [ %i.hl, %._crit_edge315 ], [ %i.hu, %_ZN10aiVector3tIfEdVEf.exit.i164 ] ; 2 uses
  br i1 %.not274308, label %.loopexit, label %.lr.ph321.preheader

.lr.ph321.preheader:                              ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit166
  %6 = extractelement <2 x float> %i.in, i64 0
  %7 = extractelement <2 x float> %i.in, i64 1
  br label %.lr.ph321

.lr.ph321:                                        ; preds = %.lr.ph321.preheader, %.lr.ph321
  %.sroa.0186.0320 = phi ptr [ %i.ja, %.lr.ph321 ], [ %i.hj, %.lr.ph321.preheader ] ; 3 uses
  %i.io = load ptr, ptr %i.x, align 8
  %i.ip = load i32, ptr %.sroa.0186.0320, align 4
  %i.iq = zext i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [12 x i8], ptr %i.io, i64 %i.iq ; 3 uses
  store float %6, ptr %i.ir, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  store float %7, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store float %.sroa.14.1, ptr %.sroa.14.0..sroa_idx, align 4
  %i.is = load i32, ptr %.sroa.0186.0320, align 4 ; 2 uses
  %i.it = lshr i32 %i.is, 6
  %.zext269 = zext nneg i32 %i.it to i64
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0202.0, i64 %.zext269 ; 2 uses
  %i.iv = and i32 %i.is, 63
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = shl nuw i64 1, %i.iw
  %i.iy = load i64, ptr %i.iu, align 8
  %i.iz = or i64 %i.ix, %i.iy
  store i64 %i.iz, ptr %i.iu, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0186.0320, i64 4 ; 2 uses
  %i.jb = load ptr, ptr %i.dr, align 8
  %.not275 = icmp eq ptr %i.ja, %i.jb
  br i1 %.not275, label %.loopexit, label %.lr.ph321, !llvm.loop !47

.loopexit:                                        ; preds = %.lr.ph321, %_ZN10aiVector3tIfE9NormalizeEv.exit166, %.lr.ph325
  %i.jc = getelementptr inbounds nuw i8, ptr %.0117323, i64 4 ; 2 uses
  %.not134 = icmp eq ptr %i.jc, %i.gw
  br i1 %.not134, label %._crit_edge326, label %.lr.ph325, !llvm.loop !48

._crit_edge326:                                   ; preds = %.loopexit, %bb.w
  %i.jd = getelementptr inbounds nuw i8, ptr %.3121329, i64 16 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0221.2328, i64 4
  %.not133 = icmp eq ptr %i.jd, %i.ad
  br i1 %.not133, label %._crit_edge331, label %bb.w, !llvm.loop !49

._crit_edge331:                                   ; preds = %._crit_edge326, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %.not.i.i172 = icmp eq ptr %.sroa.0202.0, null
  br i1 %.not.i.i172, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit173, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge331
  %i.jf = ptrtoint ptr %.sroa.15208.0 to i64
  %i.jg = ptrtoint ptr %.sroa.0202.0 to i64
  %i.jh = sub i64 %i.jf, %i.jg                    ; 2 uses
  %i.ji = ashr exact i64 %i.jh, 3
  %i.jj = sub nsw i64 0, %i.ji
  %i.jk = getelementptr inbounds [8 x i8], ptr %.sroa.15208.0, i64 %i.jj
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jh) #26
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit173

_ZNSt13_Bvector_baseISaIbEED2Ev.exit173:          ; preds = %._crit_edge302, %bb.n, %bb.aa, %._crit_edge331
  %i.jl = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.jm = load i32, ptr %i.a, align 4
  %i.jn = zext i32 %i.jm to i64
  invoke void @_ZN6Assimp13GeometryUtils20normalizeVectorArrayEP10aiVector3tIfES3_m(ptr noundef %i.jl, ptr noundef %i.jl, i64 noundef %i.jn)
          to label %bb.ab unwind label %bb.r

bb.ab:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit173
  %i.jo = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jp = load ptr, ptr %i.dp, align 8
  %i.jq = ptrtoint ptr %i.jp to i64
  %i.jr = ptrtoint ptr %i.jo to i64
  %i.js = sub i64 %i.jq, %i.jr
  call void @_ZdlPvm(ptr noundef nonnull %i.jo, i64 noundef %i.js) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.jt = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ju, null
  br i1 %.not.i.i.i.i, label %_ZN6Assimp13SGSpatialSortD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.jv = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.jw = load ptr, ptr %i.jv, align 8
  %i.jx = ptrtoint ptr %i.jw to i64
  %i.jy = ptrtoint ptr %i.ju to i64
  %i.jz = sub i64 %i.jx, %i.jy
  call void @_ZdlPvm(ptr noundef nonnull %i.ju, i64 noundef %i.jz) #26
  br label %_ZN6Assimp13SGSpatialSortD2Ev.exit

_ZN6Assimp13SGSpatialSortD2Ev.exit:               ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge, %_ZN6Assimp13SGSpatialSortD2Ev.exit
  %.not.i.i.i174 = icmp eq ptr %.sroa.0236.0, null
  br i1 %.not.i.i.i174, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ka = ptrtoint ptr %.sroa.0236.0 to i64
  %i.kb = sub i64 %.sroa.18.0, %i.ka
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0236.0, i64 noundef %i.kb) #26
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %bb.ae, %bb.af
  ret void

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.x, %.thread249, %bb.s, %bb.r
  %.pn135.pn.pn.pn = phi { ptr, i32 } [ %i.fh, %bb.s ], [ %i.fg, %bb.r ], [ %i.hw, %.thread249 ], [ %i.hf, %bb.x ]
  %i.kc = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i.i175 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i.i175, label %_ZNSt6vectorIjSaIjEED2Ev.exit176, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.kd = load ptr, ptr %i.dp, align 8
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = ptrtoint ptr %i.kc to i64
  %i.kg = sub i64 %i.ke, %i.kf
  call void @_ZdlPvm(ptr noundef nonnull %i.kc, i64 noundef %i.kg) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit176

_ZNSt6vectorIjSaIjEED2Ev.exit176:                 ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit176, %bb.q, %bb.l
  %.pn140 = phi { ptr, i32 } [ %i.do, %bb.l ], [ %.pn135.pn.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit176 ], [ %i.ff, %bb.q ] ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8            ; 3 uses
  %.not.i.i.i.i177 = icmp eq ptr %i.ki, null
  br i1 %.not.i.i.i.i177, label %_ZN6Assimp13SGSpatialSortD2Ev.exit178, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.kj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.kk = load ptr, ptr %i.kj, align 8
  %i.kl = ptrtoint ptr %i.kk to i64
  %i.km = ptrtoint ptr %i.ki to i64
  %i.kn = sub i64 %i.kl, %i.km
  call void @_ZdlPvm(ptr noundef nonnull %i.ki, i64 noundef %i.kn) #26
  br label %_ZN6Assimp13SGSpatialSortD2Ev.exit178

_ZN6Assimp13SGSpatialSortD2Ev.exit178:            ; preds = %bb.ai, %bb.ah, %bb.i
  %.pn140.pn = phi { ptr, i32 } [ %i.dd, %bb.i ], [ %.pn140, %bb.ah ], [ %.pn140, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN6Assimp13SGSpatialSortD2Ev.exit178, %bb.h
  %.pn144.pn.pn = phi { ptr, i32 } [ %i.dc, %bb.h ], [ %.pn140.pn, %_ZN6Assimp13SGSpatialSortD2Ev.exit178 ]
  %.not.i.i.i179 = icmp eq ptr %.sroa.0236.0, null
  br i1 %.not.i.i.i179, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit180, label %.thread260

.thread260:                                       ; preds = %bb.aj
  %i.ko = ptrtoint ptr %.sroa.0236.0 to i64
  %i.kp = sub i64 %.sroa.18.0, %i.ko
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0236.0, i64 noundef %i.kp) #26
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit180

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit180: ; preds = %bb.aj, %.thread260
  resume { ptr, i32 } %.pn144.pn.pn
}

declare void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8          ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #26
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !11

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #26
  br label %_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
end_hunk_2
