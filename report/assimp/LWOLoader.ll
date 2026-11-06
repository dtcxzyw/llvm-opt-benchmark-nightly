Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/LWOLoader?download=true
inline.NumInlined: 3061
inline.NumDeleted: 1386
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6Assimp11LWOImporterD2Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #26
  br label %_ZN6Assimp12BaseImporterD2Ev.exit

_ZN6Assimp12BaseImporterD2Ev.exit:                ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp11LWOImporterD0Ev(ptr noundef nonnull align 8 dereferenceable(233) initializes((0, 8)) %0) unnamed_addr #0 align 2 !guid !170 {
bb.a:
  tail call void @_ZN6Assimp11LWOImporterD2Ev(ptr noundef nonnull align 8 dereferenceable(233) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 240) #26
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp11LWOImporter7CanReadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemEb(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, i1 zeroext %3) unnamed_addr #3 align 2 !guid !171 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6Assimp12BaseImporter15CheckMagicTokenEPNS_8IOSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvmjj(ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @_ZZNK6Assimp11LWOImporter7CanReadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemEbE6tokens, i64 noundef 3, i32 noundef 8, i32 noundef 4)
  ret i1 %i.a
}

declare noundef zeroext i1 @_ZN6Assimp12BaseImporter15CheckMagicTokenEPNS_8IOSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvmjj(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11LWOImporter15SetupPropertiesEPKNS_8ImporterE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(233) initializes((192, 193), (196, 200)) %0, ptr noundef nonnull %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !172 {
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
define hidden noundef nonnull ptr @_ZNK6Assimp11LWOImporter7GetInfoEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 !guid !173 {
bb.a:
  ret ptr @_ZL4desc
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11LWOImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !185 {
._crit_edge.i.i:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::list", align 8 ; 14 uses
  %6 = alloca %"class.std::vector.24", align 8    ; 21 uses
  %7 = alloca %"class.std::vector.10", align 8    ; 10 uses
  %8 = alloca %"class.std::vector.29", align 8    ; 10 uses
  %9 = alloca %"struct.Assimp::LWO::Layer", align 8 ; 22 uses
  %i.a = alloca [5 x i8], align 4                 ; 5 uses
  %10 = alloca %"class.std::map", align 8         ; 14 uses
  %11 = alloca %"class.std::vector.76", align 8   ; 10 uses
  %12 = alloca %"struct.Assimp::LWO::Surface", align 8 ; 39 uses
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
          to label %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.b, !inline_history !174 ; 9 uses

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
          to label %.invoke unwind label %.thread504

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

.thread504:                                       ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.q) #25
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit317

bb.c:                                             ; preds = %.invoke, %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load ptr, ptr %i.l, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.e unwind label %bb.c       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
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
  %i.ai = and i64 %i.ab, 4294967295               ; 4 uses
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #28
          to label %bb.i unwind label %bb.l       ; 8 uses

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = add nsw i64 %i.ai, -1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ak, i8 0, i64 %i.al, i1 false)
  %i.am = load i32, ptr %i.ad, align 8
  %i.an = zext i32 %i.am to i64
  %i.ao = load ptr, ptr %i.l, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke noundef i64 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %i.aj, i64 noundef 1, i64 noundef %i.an)
          to label %bb.j unwind label %bb.m       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %2, ptr %i.as, align 8
  %i.at = load i32, ptr %i.aj, align 1
  %.not.i264 = icmp eq i32 %i.at, 1297239878
  br i1 %.not.i264, label %bb.o, label %_ZN6Assimp3IFF10ReadHeaderEPhRj.exit

_ZN6Assimp3IFF10ReadHeaderEPhRj.exit:             ; preds = %bb.j
  %i.au = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull @.str.100)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZN6Assimp3IFF10ReadHeaderEPhRj.exit
  invoke void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.gr unwind label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i316

bb.m:                                             ; preds = %bb.i, %bb.k
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit314

bb.n:                                             ; preds = %_ZN6Assimp3IFF10ReadHeaderEPhRj.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.au) #25
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit314

bb.o:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.az = load i32, ptr %i.ay, align 1            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.ba, ptr %i.bb, align 8
  %i.bc = load i32, ptr %i.ad, align 8
  %i.bd = add i32 %i.bc, -12
  store i32 %i.bd, ptr %i.ad, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store i8 0, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %5, ptr %i.bf, align 8
  store ptr %5, ptr %5, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i64 0, ptr %i.bg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  store ptr %5, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %7, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %8, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 9 uses
  store ptr %6, ptr %i.bk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 144
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 152
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 168 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(341) %9, i8 0, i64 144, i1 false)
  store ptr %i.bn, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 160
  store i64 0, ptr %i.bo, align 8
  store i8 0, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 184
  store i32 3, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 192
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 232
  store ptr null, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 240
  store i32 0, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 248
  store ptr null, ptr %i.bt, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.bq, i8 0, i64 36, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6Assimp3LWO13NormalChannelE, i64 16), ptr %i.bl, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 256
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 290
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(34) %i.bu, i8 0, i64 34, i1 false)
  store i16 -1, ptr %i.bv, align 2
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 296
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 312 ; 2 uses
  store ptr %i.bx, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 304
  store i64 0, ptr %i.by, align 8
  store i8 0, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.bz, i8 0, i64 13, i1 false)
  %i.ca = invoke noalias noundef nonnull dereferenceable(360) ptr @_Znwm(i64 noundef 360) #28
          to label %.noexc265 unwind label %bb.t  ; 3 uses

.noexc265:                                        ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  invoke void @_ZN6Assimp3LWO5LayerC2EOS1_(ptr noundef nonnull align 8 dereferenceable(341) %i.cb, ptr noundef nonnull align 8 dereferenceable(341) %9)
          to label %bb.p unwind label %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp3LWO5LayerEEEED2Ev.exit9.i.i.i

_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp3LWO5LayerEEEED2Ev.exit9.i.i.i: ; preds = %.noexc265
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef 360) #26
  br label %.body

bb.p:                                             ; preds = %.noexc265
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %5) #25
  %i.cd = load i64, ptr %i.bg, align 8
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %i.bg, align 8
  call void @_ZN6Assimp3LWO5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(341) dereferenceable(341) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.cf = load ptr, ptr %i.bh, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8            ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.ci, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 312
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 320
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ck, i64 noundef 0, i64 noundef %i.cm, ptr noundef nonnull @.str.7, i64 noundef 12)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.aj ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.p
  %i.co = load ptr, ptr %i.cj, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 290
  store i16 1, ptr %i.cp, align 2
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 0, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 74 ; 2 uses
  store i8 0, ptr %i.cr, align 2
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  store i8 0, ptr %i.cs, align 1
  %.sroa.0399.0.insert.insert = call i32 @llvm.bswap.i32(i32 %i.az)
  switch i32 %.sroa.0399.0.insert.insert, label %bb.y [
    i32 1280790338, label %bb.q
    i32 1280790322, label %bb.u
    i32 1280790323, label %bb.v
    i32 1280855874, label %bb.x
  ]

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.ct = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.r unwind label %bb.aj

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ct, ptr noundef nonnull @.str.8)
          to label %bb.s unwind label %bb.aj

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6Assimp11LWOImporter12LoadLWOBFileEv(ptr noundef nonnull align 8 dereferenceable(233) %0)
          to label %.thread481 unwind label %bb.aj

bb.t:                                             ; preds = %bb.o
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp3LWO5LayerEEEED2Ev.exit9.i.i.i, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.cu, %bb.t ], [ %i.cc, %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp3LWO5LayerEEEED2Ev.exit9.i.i.i ]
  call void @_ZN6Assimp3LWO5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(341) dereferenceable(341) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit310

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.cv = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.invoke1013 unwind label %bb.aj

.invoke1013:                                      ; preds = %bb.x, %bb.u
  %i.cw = phi ptr [ %i.cv, %bb.u ], [ %i.cz, %bb.x ]
  %i.cx = phi ptr [ @.str.9, %bb.u ], [ @.str.11, %bb.x ]
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.cw, ptr noundef nonnull %i.cx)
          to label %bb.ae unwind label %bb.aj

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.cy = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.w unwind label %bb.aj

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.cy, ptr noundef nonnull @.str.10)
          to label %bb.ad unwind label %bb.aj

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  store i8 1, ptr %i.cs, align 1
  %i.cz = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.invoke1013 unwind label %bb.aj

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 %i.az, ptr %i.a, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 0, ptr %i.da, align 4
  %i.db = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA25_KcRA5_cEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 1 dereferenceable(25) @.str.12, ptr noundef nonnull align 1 dereferenceable(5) %i.a)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @__cxa_throw(ptr nonnull %i.db, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.gr unwind label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.db) #25
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn212 = phi { ptr, i32 } [ %i.dd, %bb.ab ], [ %i.dc, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit310

bb.ad:                                            ; preds = %bb.w
  store i8 1, ptr %i.cr, align 2
  br label %bb.af

bb.ae:                                            ; preds = %.invoke1013
  store i8 1, ptr %i.cq, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  invoke void @_ZN6Assimp11LWOImporter12LoadLWO2FileEv(ptr noundef nonnull align 8 dereferenceable(233) %0)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.df = load i32, ptr %i.de, align 4
  %.not215 = icmp eq i32 %i.df, -1
  br i1 %.not215, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dg = load ptr, ptr %i.bh, align 8            ; 3 uses
  %.sroa.0396.0664 = load ptr, ptr %i.dg, align 8 ; 2 uses
  %.not665 = icmp eq ptr %.sroa.0396.0664, %i.dg
  br i1 %.not665, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.dh = icmp eq i32 %spec.select, 2
  br i1 %i.dh, label %bb.ak, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.ah, %.lr.ph
  %.sroa.0396.0667 = phi ptr [ %.sroa.0396.0, %.lr.ph ], [ %.sroa.0396.0664, %bb.ah ] ; 2 uses
  %.0176666 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %bb.ah ]
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0396.0667, i64 356
  %i.dj = load i8, ptr %i.di, align 4, !range !158, !noundef !159
  %i.dk = xor i8 %i.dj, 1
  %i.dl = zext nneg i8 %i.dk to i32
  %spec.select = add i32 %.0176666, %i.dl         ; 2 uses
  %.sroa.0396.0 = load ptr, ptr %.sroa.0396.0667, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0396.0, %i.dg
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !175

._crit_edge.thread:                               ; preds = %bb.ah, %._crit_edge
  %i.dm = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull @.str.13)
          to label %.invoke1014 unwind label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.thread
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dm) #25
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit310

bb.aj:                                            ; preds = %.invoke1014, %.invoke1013, %bb.p, %bb.q, %bb.r, %bb.s, %bb.u, %bb.v, %bb.w, %bb.x, %bb.af, %.thread481, %bb.ao
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit310

bb.ak:                                            ; preds = %._crit_edge, %bb.ag
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dr = load i64, ptr %i.dq, align 8
  %.not217 = icmp eq i64 %i.dr, 0
  br i1 %.not217, label %.thread481, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ds = load i8, ptr %i.be, align 8, !range !158, !noundef !159
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %.thread481, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.du = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA43_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 1 dereferenceable(43) @.str.14, ptr noundef nonnull align 8 dereferenceable(32) %i.dp)
          to label %.invoke1014 unwind label %bb.an

.invoke1014:                                      ; preds = %._crit_edge.thread, %bb.am
  %i.dv = phi ptr [ %i.du, %bb.am ], [ %i.dm, %._crit_edge.thread ]
  invoke void @__cxa_throw(ptr nonnull %i.dv, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %.cont1015 unwind label %bb.aj

.cont1015:                                        ; preds = %.invoke1014
  unreachable

bb.an:                                            ; preds = %bb.am
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.du) #25
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit310

.thread481:                                       ; preds = %bb.s, %bb.ak, %bb.al
  invoke void @_ZN6Assimp11LWOImporter11ResolveTagsEv(ptr noundef nonnull align 8 dereferenceable(233) %0)
          to label %bb.ao unwind label %bb.aj

bb.ao:                                            ; preds = %.thread481
  invoke void @_ZN6Assimp11LWOImporter12ResolveClipsEv(ptr noundef nonnull align 8 dereferenceable(233) %0)
          to label %bb.ap unwind label %bb.aj

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i32 0, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr null, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.dx, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.dx, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  store i64 0, ptr %i.eb, align 8
  %i.ec = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = load ptr, ptr %i.ef, align 8
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = sdiv exact i64 %i.el, 328
  %i.en = and i64 %i.em, 4294967294
  %.not507 = icmp eq i64 %i.en, 0
  %i.eo = select i1 %.not507, i64 0, i64 %i.ee    ; 4 uses
  %i.ep = icmp ugt i64 %i.eo, 1152921504606846975
  br i1 %i.ep, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #27
          to label %.noexc267 unwind label %.thread485

.noexc267:                                        ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %.not508 = icmp eq i64 %i.eo, 0
  br i1 %.not508, label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.ar
  %i.eq = shl nuw nsw i64 %i.eo, 3
  %i.er = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eq) #28
          to label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %.thread485 ; 2 uses

_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.eo
  %.pre = load ptr, ptr %i.bh, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit:     ; preds = %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.ar
  %i.et = phi ptr [ %.pre, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.ec, %bb.ar ] ; 3 uses
  %.sroa.0373.10 = phi ptr [ %i.er, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.ar ] ; 3 uses
  %.sroa.27.10 = phi ptr [ %i.es, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.ar ] ; 2 uses
  %.sroa.0365.0715 = load ptr, ptr %i.et, align 8 ; 2 uses
  %.not509716 = icmp eq ptr %.sroa.0365.0715, %i.et
  br i1 %.not509716, label %._crit_edge723.thread, label %.lr.ph722

.lr.ph722:                                        ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ez = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.fa = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.fb = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.fc = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.fd = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.fe = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.ff = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.fh = getelementptr inbounds nuw i8, ptr %12, i64 112
  %i.fi = getelementptr inbounds nuw i8, ptr %12, i64 120 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %12, i64 136
  %i.fk = getelementptr inbounds nuw i8, ptr %12, i64 144 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %12, i64 160
  %i.fm = getelementptr inbounds nuw i8, ptr %12, i64 168 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %12, i64 184
  %i.fo = getelementptr inbounds nuw i8, ptr %12, i64 192 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %12, i64 208
end_hunk_0
