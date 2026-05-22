inline.NumInlined: 1132
inline.NumDeleted: 755
begin_hunk_0_@_ZN6Assimp11MMDImporterC2Ev:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ac = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #23
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  call void @_ZN6Assimp12BaseImporterD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #22
  resume { ptr, i32 } %i.x
}

; Function Attrs: nounwind
declare void @_ZN6Assimp12BaseImporterC2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare noundef signext i8 @_ZNK6Assimp15DefaultIOSystem14getOsSeparatorEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp8IOSystemD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN6Assimp8IOSystemE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp12BaseImporterD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp12BaseImporterE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #22
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
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp11MMDImporter7CanReadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemEb(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, i1 zeroext %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6Assimp12BaseImporter24SearchFileHeaderForTokenEPNS_8IOSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPPKcmjbb(ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @_ZZNK6Assimp11MMDImporter7CanReadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemEbE6tokens, i64 noundef 1, i32 noundef 200, i1 noundef zeroext false, i1 noundef zeroext false)
  ret i1 %i.a
}

declare noundef zeroext i1 @_ZN6Assimp12BaseImporter24SearchFileHeaderForTokenEPNS_8IOSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPPKcmjbb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZNK6Assimp11MMDImporter7GetInfoEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret ptr @_ZL4desc
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11MMDImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_istringstream", align 8 ; 16 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.pmx::PmxModel", align 8     ; 41 uses
  store ptr %3, ptr %i.b, align 8
  %i.c = load atomic i8, ptr @_ZGVZN6Assimp11MMDImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemEE4modeB5cxx11 acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6Assimp11MMDImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemEE4modeB5cxx11) #22
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN6Assimp11MMDImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemEE4modeB5cxx11, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.f = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZN6Assimp11MMDImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemEE4modeB5cxx11, ptr nonnull @__dso_handle) #22 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6Assimp11MMDImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemEE4modeB5cxx11) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.g = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.h = load ptr, ptr %1, align 8
  %i.i = load ptr, ptr @_ZZN6Assimp11MMDImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemEE4modeB5cxx11, align 8
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef %i.h, ptr noundef %i.i), !inline_history !6 ; 9 uses
  %i.n = ptrtoint ptr %i.b to i64
  store i64 %i.n, ptr %5, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.p = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA21_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 1 dereferenceable(21) @.str.2, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(2) @.str.3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.am unwind label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6Assimp11MMDImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemEE4modeB5cxx11) #22
  br label %bb.al

bb.i:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit39.sink.split

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit39

bb.k:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.m, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = invoke noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.x = icmp ult i64 %i.w, 304
  br i1 %i.x, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.y = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_KcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(15) @.str.4)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.am unwind label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit39

bb.p:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit39.sink.split

bb.q:                                             ; preds = %bb.l
  %i.ab = load ptr, ptr %i.m, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = invoke noundef i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.r unwind label %bb.ac      ; 5 uses

bb.r:                                             ; preds = %bb.q
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.s, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #24
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.s
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.r
  %.not.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #25
          to label %.noexc31 unwind label %bb.ad  ; 5 uses

.noexc31:                                         ; preds = %bb.t
  %i.ah = getelementptr i8, ptr %i.ag, i64 %i.ae  ; 3 uses
  store i8 0, ptr %i.ag, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  %i.aj = add nsw i64 %i.ae, -1                   ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %bb.u

bb.u:                                             ; preds = %.noexc31
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ai, i8 0, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit

_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit:               ; preds = %bb.u, %.noexc31, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.14.0 = phi ptr [ %i.ah, %bb.u ], [ %i.ah, %.noexc31 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.041.0 = phi ptr [ %i.ag, %bb.u ], [ %i.ag, %.noexc31 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ] ; 12 uses
  %.0.i.i.i.i.i = phi ptr [ %i.ah, %bb.u ], [ %i.ai, %.noexc31 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %i.al = ptrtoint ptr %.0.i.i.i.i.i to i64       ; 3 uses
  %i.am = ptrtoint ptr %.sroa.041.0 to i64        ; 4 uses
  %i.an = sub i64 %i.al, %i.am                    ; 11 uses
  %i.ao = load ptr, ptr %i.m, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke noundef i64 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %.sroa.041.0, i64 noundef 1, i64 noundef %i.an)
          to label %bb.v unwind label %bb.ae      ; 0 uses

bb.v:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.as, ptr %7, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.an, ptr %i.a, align 8
  %i.au = icmp ugt i64 %i.an, 15
  br i1 %i.au, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.v
  %i.av = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %bb.af  ; 2 uses

.noexc32:                                         ; preds = %.noexc.i
  store ptr %i.av, ptr %7, align 8
  %i.aw = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.aw, ptr %i.as, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc32, %bb.v
  %i.ax = phi i64 [ %i.aw, %.noexc32 ], [ %i.an, %bb.v ]
  %i.ay = phi ptr [ %i.av, %.noexc32 ], [ %i.as, %bb.v ] ; 7 uses
  %.not5.i.i.i = icmp eq ptr %.sroa.041.0, %.0.i.i.i.i.i
  br i1 %.not5.i.i.i, label %bb.w, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i.i
  %i.az = ptrtoaddr ptr %i.ay to i64
  %min.iters.check = icmp ult i64 %i.an, 4
  %i.ba = sub i64 %i.az, %i.am
  %diff.check = icmp ult i64 %i.ba, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check57 = icmp ult i64 %i.an, 32
  br i1 %min.iters.check57, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.an, 28
  %n.vec = and i64 %i.an, -32                     ; 5 uses
  %i.bb = getelementptr i8, ptr %i.ay, i64 %n.vec
  %i.bc = getelementptr i8, ptr %.sroa.041.0, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %index ; 2 uses
  %next.gep58 = getelementptr i8, ptr %.sroa.041.0, i64 %index ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep58, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep58, align 1
  %wide.load59 = load <16 x i8>, ptr %i.bd, align 1
  %i.be = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1
  store <16 x i8> %wide.load59, ptr %i.be, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !10

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec62 = and i64 %i.an, -4                    ; 4 uses
  %i.bg = getelementptr i8, ptr %i.ay, i64 %n.vec62
  %i.bh = getelementptr i8, ptr %.sroa.041.0, i64 %n.vec62
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index63 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next67, %vec.epilog.vector.body ] ; 3 uses
  %next.gep64 = getelementptr i8, ptr %i.ay, i64 %index63
  %next.gep65 = getelementptr i8, ptr %.sroa.041.0, i64 %index63
  %wide.load66 = load <4 x i8>, ptr %next.gep65, align 1
  store <4 x i8> %wide.load66, ptr %next.gep64, align 1
  %index.next67 = add nuw i64 %index63, 4         ; 2 uses
  %i.bi = icmp eq i64 %index.next67, %n.vec62
  br i1 %i.bi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !11

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n68 = icmp eq i64 %i.an, %n.vec62
  br i1 %cmp.n68, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07.i.i.i.ph = phi ptr [ %i.ay, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bg, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.02.06.i.i.i.ph = phi ptr [ %.sroa.041.0, %iter.check ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.02.06.i.i.i.ph71 = ptrtoint ptr %.sroa.02.06.i.i.i.ph to i64 ; 2 uses
  %i.bj = sub i64 %i.al, %.sroa.02.06.i.i.i.ph71
  %xtraiter = and i64 %i.bj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.07.i.i.i.prol = phi ptr [ %i.bm, %.lr.ph.i.i.i.prol ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.02.06.i.i.i.prol = phi ptr [ %i.bl, %.lr.ph.i.i.i.prol ], [ %.sroa.02.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bk = load i8, ptr %.sroa.02.06.i.i.i.prol, align 1
  store i8 %i.bk, ptr %.07.i.i.i.prol, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i.prol, i64 1 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.07.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !12

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.07.i.i.i.unr = phi ptr [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bm, %.lr.ph.i.i.i.prol ]
  %.sroa.02.06.i.i.i.unr = phi ptr [ %.sroa.02.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bl, %.lr.ph.i.i.i.prol ]
  %i.bn = sub i64 %.sroa.02.06.i.i.i.ph71, %i.al
  %i.bo = icmp ugt i64 %i.bn, -8
  br i1 %i.bo, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i ], [ %.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.02.06.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i ], [ %.sroa.02.06.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.bp = load i8, ptr %.sroa.02.06.i.i.i, align 1
  store i8 %i.bp, ptr %.07.i.i.i, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 1
  %i.br = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 1
  %i.bs = load i8, ptr %i.bq, align 1
  store i8 %i.bs, ptr %i.br, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 2
  %i.bu = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 2
  %i.bv = load i8, ptr %i.bt, align 1
  store i8 %i.bv, ptr %i.bu, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 3
  %i.bx = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 3
  %i.by = load i8, ptr %i.bw, align 1
  store i8 %i.by, ptr %i.bx, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 4
  %i.cb = load i8, ptr %i.bz, align 1
  store i8 %i.cb, ptr %i.ca, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 5
  %i.cd = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 5
  %i.ce = load i8, ptr %i.cc, align 1
  store i8 %i.ce, ptr %i.cd, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 6
  %i.cg = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 6
  %i.ch = load i8, ptr %i.cf, align 1
  store i8 %i.ch, ptr %i.cg, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 7
end_hunk_0
begin_hunk_1_@_ZN6Assimp11MMDImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
  store ptr %i.cw, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 0, ptr %i.cx, align 8
  store i8 0, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  store ptr %i.cz, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i64 0, ptr %i.da, align 8
  store i8 0, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  store ptr %i.dc, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i64 0, ptr %i.dd, align 8
  store i8 0, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 128 ; 2 uses
  store ptr %i.df, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %8, i64 120
  store i64 0, ptr %i.dg, align 8
  store i8 0, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 144
  store i32 0, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 152
  store ptr null, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 160
  store i32 0, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 168
  store ptr null, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 176
  store i32 0, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 184
  store ptr null, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 192
  store i32 0, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 200
  store ptr null, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 208
  store i32 0, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 216
  store ptr null, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 224
  store i32 0, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 232
  store ptr null, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 240
  store i32 0, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 248
  store ptr null, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 256
  store i32 0, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 264
  store ptr null, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 272
  store i32 0, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 280
  store ptr null, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 288
  store i32 0, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 296
  store ptr null, ptr %i.ea, align 8
  invoke void @_ZN3pmx8PmxModel4ReadEPSi(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr noundef nonnull %6)
          to label %bb.y unwind label %bb.ah

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  invoke void @_ZN6Assimp11MMDImporter20CreateDataFromImportEPKN3pmx8PmxModelEP7aiScene(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %8, ptr noundef %2)
          to label %bb.z unwind label %bb.ah

bb.z:                                             ; preds = %bb.y
  call void @_ZN3pmx8PmxModelD2Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.eb = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.eb, ptr %6, align 8
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ed = getelementptr i8, ptr %i.eb, i64 -24
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds i8, ptr %6, i64 %i.ee
  store ptr %i.ec, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.ei = load ptr, ptr %i.eh, align 8            ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.z
  %i.el = load i64, ptr %i.ej, align 8
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #23
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.eg, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.en) #22
  %i.eo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.eo, ptr %6, align 8
  %i.ep = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.eq = getelementptr i8, ptr %i.eo, i64 -24
  %i.er = load i64, ptr %i.eq, align 8
  %i.es = getelementptr inbounds i8, ptr %6, i64 %i.er
  store ptr %i.ep, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.et, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.eu) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %.not.i.i.i33 = icmp eq ptr %.sroa.041.0, null
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.ev = ptrtoint ptr %.sroa.14.0 to i64
  %i.ew = sub i64 %i.ev, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.041.0, i64 noundef %i.ew) #23
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.aa, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.val.i = load ptr, ptr %5, align 8
  %.val.val.i = load ptr, ptr %.val.i, align 8    ; 2 uses
  %i.ex = load ptr, ptr %.val.val.i, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  %i.ez = load ptr, ptr %i.ey, align 8
  invoke void %i.ez(ptr noundef nonnull align 8 dereferenceable(32) %.val.val.i, ptr noundef nonnull %i.m)
          to label %"_ZNSt10unique_ptrIN6Assimp8IOStreamEZNS0_11MMDImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS0_8IOSystemEE3$_0ED2Ev.exit" unwind label %bb.ab, !inline_history !15

bb.ab:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #26
  unreachable

"_ZNSt10unique_ptrIN6Assimp8IOStreamEZNS0_11MMDImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS0_8IOSystemEE3$_0ED2Ev.exit": ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.ac:                                            ; preds = %bb.q
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit39

bb.ad:                                            ; preds = %bb.t, %bb.s
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit39

bb.ae:                                            ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.af:                                            ; preds = %.noexc.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

bb.ag:                                            ; preds = %bb.w
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fh = load ptr, ptr %7, align 8               ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.as
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.ag
  %i.fj = load i64, ptr %i.as, align 8
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.af
  %.pn = phi { ptr, i32 } [ %i.ff, %bb.af ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %i.fg, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ai

bb.ah:                                            ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3pmx8PmxModelD2Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %6) #22
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn17.pn = phi { ptr, i32 } [ %i.fl, %bb.ah ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ae
  %.pn17.pn.pn = phi { ptr, i32 } [ %.pn17.pn, %bb.ai ], [ %i.fe, %bb.ae ] ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %.sroa.041.0, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIcSaIcEED2Ev.exit39, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fm = ptrtoint ptr %.sroa.14.0 to i64
  %i.fn = sub i64 %i.fm, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.041.0, i64 noundef %i.fn) #23
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit39

_ZNSt6vectorIcSaIcEED2Ev.exit39.sink.split:       ; preds = %bb.i, %bb.p
  %.sink = phi ptr [ %i.y, %bb.p ], [ %i.p, %bb.i ]
  %.pn24.ph = phi { ptr, i32 } [ %i.aa, %bb.p ], [ %i.r, %bb.i ]
  call void @__cxa_free_exception(ptr nonnull %.sink) #22
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit39

_ZNSt6vectorIcSaIcEED2Ev.exit39:                  ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit39.sink.split, %bb.ac, %bb.ad, %bb.aj, %bb.ak, %bb.o, %bb.j
  %.pn24 = phi { ptr, i32 } [ %i.s, %bb.j ], [ %.pn17.pn.pn, %bb.aj ], [ %i.z, %bb.o ], [ %.pn17.pn.pn, %bb.ak ], [ %i.fc, %bb.ac ], [ %i.fd, %bb.ad ], [ %.pn24.ph, %_ZNSt6vectorIcSaIcEED2Ev.exit39.sink.split ]
  call fastcc void @"_ZNSt10unique_ptrIN6Assimp8IOStreamEZNS0_11MMDImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS0_8IOSystemEE3$_0ED2Ev"(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit39, %bb.h
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %_ZNSt6vectorIcSaIcEED2Ev.exit39 ], [ %i.q, %bb.h ]
  resume { ptr, i32 } %.pn24.pn

bb.am:                                            ; preds = %bb.n, %bb.g
  unreachable
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.18) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8
  %i.g = load i64, ptr %i.a, align 8
  store i64 %i.g, ptr %i.b, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1
  store i8 %i.i, ptr %i.h, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #7

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA21_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(21) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  invoke void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_KcERA21_S9_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(21) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %4, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #23
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #22
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #22
  resume { ptr, i32 } %i.o
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_KcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(15) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA15_KcERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(15) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #23
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #22
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #22
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #0 align 2

declare void @_ZN3pmx8PmxModel4ReadEPSi(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11MMDImporter20CreateDataFromImportEPKN3pmx8PmxModelEP7aiScene(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(128) %0, ptr noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.Assimp::MakeLeftHandedProcess", align 8 ; 6 uses
  %7 = alloca %"class.Assimp::FlipUVsProcess", align 8 ; 7 uses
  %8 = alloca %"class.Assimp::FlipWindingOrderProcess", align 8 ; 6 uses
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.d = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #25 ; 5 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.d)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 4 uses
  %i.h = add i64 %i.g, -1024
  %or.cond = icmp ult i64 %i.h, -1023
  br i1 %or.cond, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = trunc nuw nsw i64 %i.g to i32
  store i32 %i.i, ptr %i.d, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.k = load ptr, ptr %i.e, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 1 %i.k, i64 %i.g, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  store i8 0, ptr %i.l, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %i.d, ptr %i.n, align 8
  %i.o = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #25 ; 3 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.o)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  store ptr %i.o, ptr %i.b, align 8
  %i.p = load ptr, ptr %i.n, align 8
  call void @_ZN6aiNode11addChildrenEjPPS_(ptr noundef nonnull align 8 dereferenceable(1144) %i.p, i32 noundef 1, ptr noundef nonnull %i.b)
  %i.q = load ptr, ptr %i.b, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store ptr %i.r, ptr %4, align 8
  %i.s = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.t = load i64, ptr %i.f, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.t, ptr %i.a, align 8
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.f
  %i.v = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load i64, ptr %i.a, align 8
  store i64 %i.w, ptr %i.r, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.f
  %i.x = phi ptr [ %i.v, %.noexc.i ], [ %i.r, %bb.f ] ; 2 uses
  switch i64 %i.t, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.y = load i8, ptr %i.s, align 1
  store i8 %i.y, ptr %i.x, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.s, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.g, %bb.h
  %i.z = load i64, ptr %i.a, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = load ptr, ptr %4, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ad, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ad, ptr noundef nonnull align 1 dereferenceable(5) @.str.5, i64 5, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 5, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 21
  store i8 0, ptr %i.af, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !16)
  %i.ag = load i64, ptr %i.aa, align 8, !noalias !16 ; 4 uses
  %i.ah = add i64 %i.ag, 5                        ; 2 uses
  %i.ai = load ptr, ptr %4, align 8, !noalias !16 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.r                 ; 2 uses
  br i1 %i.aj, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ak = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ak)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.al = load i64, ptr %i.r, align 8, !noalias !16
  %i.am = select i1 %i.aj, i64 15, i64 %i.al
  %i.an = icmp ule i64 %i.ah, %i.am
  %.not.i = icmp ugt i64 %i.ah, 15
  %or.cond187 = or i1 %i.an, %.not.i
  br i1 %or.cond187, label %bb.k, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.ai, i64 noundef %i.ag)
          to label %.noexc104 unwind label %bb.p  ; 5 uses

.noexc104:                                        ; preds = %.critedge.i
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.ap, ptr %3, align 8, !alias.scope !16
  %i.aq = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 5 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.j:                                             ; preds = %.noexc104
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw nsw i64 %i.au, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.aw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc104
  store ptr %i.aq, ptr %3, align 8, !alias.scope !16
  %i.ax = load i64, ptr %i.ar, align 8
  store i64 %i.ax, ptr %i.ap, align 8, !alias.scope !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !alias.scope !16
  store ptr %i.ar, ptr %i.ao, align 8
  store i64 0, ptr %i.ay, align 8
  store i8 0, ptr %i.ar, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.bb = add i64 %i.ag, -4611686018427387899
  %i.bc = icmp ult i64 %i.bb, 5
  br i1 %i.bc, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #24
          to label %.noexc105 unwind label %bb.p

.noexc105:                                        ; preds = %bb.l
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.k
  %i.bd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %i.ad, i64 noundef 5)
          to label %.noexc106 unwind label %bb.p  ; 5 uses

.noexc106:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.be, ptr %3, align 8, !alias.scope !16
  %i.bf = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 5 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i

bb.m:                                             ; preds = %.noexc106
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bj = load i64, ptr %i.bi, align 8            ; 2 uses
  %i.bk = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i: ; preds = %.noexc106
  store ptr %i.bf, ptr %3, align 8, !alias.scope !16
  %i.bm = load i64, ptr %i.bg, align 8
  store i64 %i.bm, ptr %i.be, align 8, !alias.scope !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i, %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bo, ptr %i.bp, align 8, !alias.scope !16
  store ptr %i.bg, ptr %i.bd, align 8
  store i64 0, ptr %i.bn, align 8
  store i8 0, ptr %i.bg, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load i64, ptr %i.bq, align 8            ; 4 uses
  %i.bs = icmp ugt i64 %i.br, 1023
  br i1 %i.bs, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit107, label %bb.n

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.bt = trunc nuw nsw i64 %i.br to i32
  store i32 %i.bt, ptr %i.q, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.bv = load ptr, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr align 1 %i.bv, i64 %i.br, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.br
  store i8 0, ptr %i.bw, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit107

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit107: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit, %bb.n
  %i.bx = load ptr, ptr %3, align 8               ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit107
  %i.ca = load i64, ptr %i.by, align 8
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  %i.cc = load ptr, ptr %5, align 8               ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.ad
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ce = load i64, ptr %i.ad, align 8
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.cg = load ptr, ptr %4, align 8               ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.r
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %i.ci = load i64, ptr %i.r, align 8
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 8            ; 2 uses
  %i.cm = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1120 ; 2 uses
  store i32 %i.cl, ptr %i.cn, align 8
  %i.co = zext i32 %i.cl to i64
  %i.cp = shl nuw nsw i64 %i.co, 2
  %i.cq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cp) #25
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 1128
  store ptr %i.cq, ptr %i.cr, align 8
  %i.cs = load i32, ptr %i.cn, align 8
  %.not = icmp eq i32 %i.cs, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %i.ct = load i32, ptr %i.ck, align 8            ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 %i.ct, ptr %i.cu, align 8
  %i.cv = zext i32 %i.ct to i64
  %i.cw = shl nuw nsw i64 %i.cv, 3
  %i.cx = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cw) #25
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store ptr %i.cx, ptr %i.cy, align 8
  %.not149 = icmp eq i32 %i.ct, 0
  br i1 %.not149, label %._crit_edge138, label %.lr.ph137

.lr.ph137:                                        ; preds = %._crit_edge
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  br label %bb.q

bb.o:                                             ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.l, %.critedge.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  %i.dc = load ptr, ptr %5, align 8               ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.ad
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %bb.p
  %i.de = load i64, ptr %i.ad, align 8
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.dg = load ptr, ptr %4, align 8               ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.r
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %i.di = load i64, ptr %i.r, align 8
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.at

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ] ; 3 uses
  %i.dk = phi ptr [ %i.dp, %.lr.ph ], [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1128
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv
  %i.do = trunc nuw i64 %indvars.iv to i32
  store i32 %i.do, ptr %i.dn, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dp = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1120
  %i.dr = load i32, ptr %i.dq, align 8
  %i.ds = zext i32 %i.dr to i64
  %i.dt = icmp samesign ult i64 %indvars.iv.next, %i.ds
  br i1 %i.dt, label %.lr.ph, label %._crit_edge, !llvm.loop !19

._crit_edge138:                                   ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %._crit_edge
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.dv = load i32, ptr %i.du, align 8            ; 3 uses
  %i.dw = sext i32 %i.dv to i64
  %i.dx = icmp slt i32 %i.dv, 0
  %i.dy = shl nsw i64 %i.dw, 3
  %i.dz = select i1 %i.dx, i64 -1, i64 %i.dy
  %i.ea = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dz) #25 ; 6 uses
  %i.eb = icmp sgt i32 %i.dv, 0
  br i1 %i.eb, label %.lr.ph141, label %._crit_edge144

.lr.ph141:                                        ; preds = %._crit_edge138
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 216
  br label %bb.s

bb.q:                                             ; preds = %.lr.ph137, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %indvars.iv153 = phi i64 [ 0, %.lr.ph137 ], [ %indvars.iv.next154, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 7 uses
  %.088135 = phi i32 [ 0, %.lr.ph137 ], [ %i.fc, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  %i.ed = load ptr, ptr %i.cz, align 8
  %i.ee = getelementptr inbounds nuw [192 x i8], ptr %i.ed, i64 %indvars.iv153
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 184
  %i.eg = load i32, ptr %i.ef, align 8            ; 2 uses
  %i.eh = call noundef ptr @_ZN6Assimp11MMDImporter10CreateMeshEPKN3pmx8PmxModelEii(ptr nonnull align 8 poison, ptr noundef nonnull %1, i32 noundef %.088135, i32 noundef %i.eg)
  %i.ei = load ptr, ptr %i.cy, align 8
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv153
  store ptr %i.eh, ptr %i.ej, align 8
  %i.ek = load ptr, ptr %i.cz, align 8
  %i.el = getelementptr inbounds nuw [192 x i8], ptr %i.ek, i64 %indvars.iv153 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load i64, ptr %i.em, align 8            ; 4 uses
  %i.eo = icmp ugt i64 %i.en, 1023
  br i1 %i.eo, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ep = load ptr, ptr %i.cy, align 8
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv153
  %i.er = load ptr, ptr %i.eq, align 8            ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 236
  %i.et = trunc nuw nsw i64 %i.en to i32
  store i32 %i.et, ptr %i.es, align 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 240 ; 2 uses
  %i.ev = load ptr, ptr %i.el, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.eu, ptr align 1 %i.ev, i64 %i.en, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.en
  store i8 0, ptr %i.ew, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.q, %bb.r
  %i.ex = load ptr, ptr %i.cy, align 8
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv153
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 232
  %i.fb = trunc nuw i64 %indvars.iv153 to i32
  store i32 %i.fb, ptr %i.fa, align 8
  %i.fc = add i32 %i.eg, %.088135
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %i.fd = load i32, ptr %i.cu, align 8
  %i.fe = zext i32 %i.fd to i64
  %i.ff = icmp samesign ult i64 %indvars.iv.next154, %i.fe
  br i1 %i.ff, label %bb.q, label %._crit_edge138, !llvm.loop !20

.preheader:                                       ; preds = %bb.u
  %i.fg = icmp sgt i32 %i.fm, 0
  br i1 %i.fg, label %.lr.ph143, label %._crit_edge144

.lr.ph143:                                        ; preds = %.preheader
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  br label %bb.x

bb.s:                                             ; preds = %.lr.ph141, %bb.u
  %indvars.iv156 = phi i64 [ 0, %.lr.ph141 ], [ %indvars.iv.next157, %bb.u ] ; 3 uses
  %i.fi = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #25
          to label %bb.t unwind label %bb.v       ; 3 uses

bb.t:                                             ; preds = %bb.s
  %i.fj = load ptr, ptr %i.ec, align 8
  %i.fk = getelementptr inbounds nuw [176 x i8], ptr %i.fj, i64 %indvars.iv156
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.fi, ptr noundef nonnull align 8 dereferenceable(32) %i.fk)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv156
  store ptr %i.fi, ptr %i.fl, align 8
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %i.fm = load i32, ptr %i.du, align 8            ; 2 uses
  %i.fn = sext i32 %i.fm to i64
  %i.fo = icmp slt i64 %indvars.iv.next157, %i.fn
  br i1 %i.fo, label %bb.s, label %.preheader, !llvm.loop !21

bb.v:                                             ; preds = %bb.s
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_P6aiNodeSt14default_deleteIS2_EED2Ev.exit124

bb.w:                                             ; preds = %bb.t
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef 1144) #23
  br label %_ZNSt10unique_ptrIA_P6aiNodeSt14default_deleteIS2_EED2Ev.exit124

._crit_edge144:                                   ; preds = %bb.ac, %._crit_edge138, %.preheader
  %i.fr = load i32, ptr %i.ck, align 8            ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i32 %i.fr, ptr %i.fs, align 8
  %i.ft = zext i32 %i.fr to i64
  %i.fu = shl nuw nsw i64 %i.ft, 3
  %i.fv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fu) #25
          to label %bb.ad unwind label %bb.ae

bb.x:                                             ; preds = %.lr.ph143, %bb.ac
  %indvars.iv159 = phi i64 [ 0, %.lr.ph143 ], [ %indvars.iv.next160, %bb.ac ] ; 4 uses
  %i.fw = load ptr, ptr %i.fh, align 8
  %i.fx = getelementptr inbounds nuw [176 x i8], ptr %i.fw, i64 %indvars.iv159 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 76 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4            ; 2 uses
  %i.ga = icmp slt i32 %i.fz, 0
  br i1 %i.ga, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.gb = load ptr, ptr %i.n, align 8
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv159
  invoke void @_ZN6aiNode11addChildrenEjPPS_(ptr noundef nonnull align 8 dereferenceable(1144) %i.gb, i32 noundef 1, ptr noundef nonnull %i.gc)
          to label %bb.ac unwind label %bb.z

bb.z:                                             ; preds = %bb.aa, %bb.y
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_P6aiNodeSt14default_deleteIS2_EED2Ev.exit124

bb.aa:                                            ; preds = %bb.x
  %i.ge = zext nneg i32 %i.fz to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ge
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv159 ; 2 uses
  invoke void @_ZN6aiNode11addChildrenEjPPS_(ptr noundef nonnull align 8 dereferenceable(1144) %i.gg, i32 noundef 1, ptr noundef nonnull %i.gh)
          to label %bb.ab unwind label %bb.z

bb.ab:                                            ; preds = %bb.aa
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fx, i64 64
  %i.gj = load float, ptr %i.gi, align 8
  %i.gk = load i32, ptr %i.fy, align 4
  %i.gl = sext i32 %i.gk to i64
  %i.gm = load ptr, ptr %i.fh, align 8
  %i.gn = getelementptr inbounds nuw [176 x i8], ptr %i.gm, i64 %i.gl ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 64
  %i.gp = load float, ptr %i.go, align 8
  %i.gq = fsub float %i.gj, %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fx, i64 68
  %i.gs = load float, ptr %i.gr, align 4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 68
  %i.gu = load float, ptr %i.gt, align 4
  %i.gv = fsub float %i.gs, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fx, i64 72
  %i.gx = load float, ptr %i.gw, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gn, i64 72
  %i.gz = load float, ptr %i.gy, align 8
  %i.ha = fsub float %i.gx, %i.gz
  %i.hb = load ptr, ptr %i.gh, align 8            ; 10 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 1028
  store float 1.000000e+00, ptr %i.hc, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 1048
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 1052
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 1068
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 1072
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 1076
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hd, i8 0, i64 12, i1 false)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 1088
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 4
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 1040
  store float %i.gq, ptr %i.he, align 4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 1056
  store float %i.gv, ptr %i.hf, align 4
  store float %i.ha, ptr %.sroa.8.0..sroa_idx.i, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.ab
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %i.hg = load i32, ptr %i.du, align 8
  %i.hh = sext i32 %i.hg to i64
  %i.hi = icmp slt i64 %indvars.iv.next160, %i.hh
  br i1 %i.hi, label %bb.x, label %._crit_edge144, !llvm.loop !22

bb.ad:                                            ; preds = %._crit_edge144
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr %i.fv, ptr %i.hj, align 8
  %.not150 = icmp eq i32 %i.fr, 0
  br i1 %.not150, label %._crit_edge148, label %.lr.ph147

.lr.ph147:                                        ; preds = %bb.ad
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 200
  br label %bb.af

._crit_edge148:                                   ; preds = %bb.ag, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #22
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp21MakeLeftHandedProcessE, i64 16), ptr %6, align 8
  invoke void @_ZN6Assimp21MakeLeftHandedProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %2)
          to label %bb.ai unwind label %bb.am

bb.ae:                                            ; preds = %._crit_edge144
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_P6aiNodeSt14default_deleteIS2_EED2Ev.exit124

bb.af:                                            ; preds = %.lr.ph147, %bb.ag
  %indvars.iv162 = phi i64 [ 0, %.lr.ph147 ], [ %indvars.iv.next163, %bb.ag ] ; 3 uses
  %i.hm = load ptr, ptr %i.hk, align 8
  %i.hn = getelementptr inbounds nuw [192 x i8], ptr %i.hm, i64 %indvars.iv162
  %i.ho = invoke noundef ptr @_ZN6Assimp11MMDImporter14CreateMaterialEPKN3pmx11PmxMaterialEPKNS1_8PmxModelE(ptr nonnull align 8 poison, ptr noundef nonnull %i.hn, ptr noundef nonnull %1)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hp = load ptr, ptr %i.hj, align 8
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %indvars.iv162
  store ptr %i.ho, ptr %i.hq, align 8
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %i.hr = load i32, ptr %i.fs, align 8
  %i.hs = zext i32 %i.hr to i64
  %i.ht = icmp samesign ult i64 %indvars.iv.next163, %i.hs
  br i1 %i.ht, label %bb.af, label %._crit_edge148, !llvm.loop !23

bb.ah:                                            ; preds = %bb.af
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_P6aiNodeSt14default_deleteIS2_EED2Ev.exit124

bb.ai:                                            ; preds = %._crit_edge148
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZN6Assimp14FlipUVsProcessC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN6Assimp14FlipUVsProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull %2)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #22
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp23FlipWindingOrderProcessE, i64 16), ptr %8, align 8
  invoke void @_ZN6Assimp23FlipWindingOrderProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull %2)
          to label %_ZNSt10unique_ptrIA_P6aiNodeSt14default_deleteIS2_EED2Ev.exit unwind label %bb.ap

_ZNSt10unique_ptrIA_P6aiNodeSt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN6Assimp14FlipUVsProcessD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZdaPv(ptr noundef nonnull %i.ea) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.al

bb.al:                                            ; preds = %bb.a, %_ZNSt10unique_ptrIA_P6aiNodeSt14default_deleteIS2_EED2Ev.exit
  ret void

bb.am:                                            ; preds = %._crit_edge148
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.an:                                            ; preds = %bb.ai
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ao:                                            ; preds = %bb.aj
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ak
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn94 = phi { ptr, i32 } [ %i.hy, %bb.ap ], [ %i.hx, %bb.ao ]
  call void @_ZN6Assimp14FlipUVsProcessD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #22
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %.pn94.pn = phi { ptr, i32 } [ %.pn94, %bb.aq ], [ %i.hw, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.am
  %.pn94.pn.pn = phi { ptr, i32 } [ %.pn94.pn, %bb.ar ], [ %i.hv, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt10unique_ptrIA_P6aiNodeSt14default_deleteIS2_EED2Ev.exit124

_ZNSt10unique_ptrIA_P6aiNodeSt14default_deleteIS2_EED2Ev.exit124: ; preds = %bb.v, %bb.w, %bb.as, %bb.ah, %bb.ae, %bb.z
  %.pn98.pn = phi { ptr, i32 } [ %i.hl, %bb.ae ], [ %i.gd, %bb.z ], [ %i.hu, %bb.ah ], [ %.pn94.pn.pn, %bb.as ], [ %i.fq, %bb.w ], [ %i.fp, %bb.v ]
  call void @_ZdaPv(ptr noundef nonnull %i.ea) #23
  br label %bb.at

.sink.split:                                      ; preds = %bb.e, %bb.o
  %.sink = phi ptr [ %i.o, %bb.o ], [ %i.d, %bb.e ]
  %.pn98.pn.pn.ph = phi { ptr, i32 } [ %i.da, %bb.o ], [ %i.m, %bb.e ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 1144) #23
  br label %bb.at

bb.at:                                            ; preds = %.sink.split, %_ZNSt10unique_ptrIA_P6aiNodeSt14default_deleteIS2_EED2Ev.exit124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120
  %.pn98.pn.pn = phi { ptr, i32 } [ %.pn98.pn, %_ZNSt10unique_ptrIA_P6aiNodeSt14default_deleteIS2_EED2Ev.exit124 ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120 ], [ %.pn98.pn.pn.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  resume { ptr, i32 } %.pn98.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3pmx8PmxModelD2Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_N3pmx11PmxSoftBodyESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt14default_deleteIA_N3pmx11PmxSoftBodyEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b)
  br label %_ZNSt10unique_ptrIA_N3pmx11PmxSoftBodyESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIA_N3pmx11PmxSoftBodyESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %.not.i1 = icmp eq ptr %i.d, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIA_N3pmx8PmxJointESt14default_deleteIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIA_N3pmx11PmxSoftBodyESt14default_deleteIS2_EED2Ev.exit
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %.idx.i.i = mul i64 %i.f, 176                   ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZNKSt14default_deleteIA_N3pmx8PmxJointEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.c
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %.idx.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN3pmx8PmxJointD2Ev.exit.i.i, %.preheader.preheader.i.i
  %i.i = phi ptr [ %i.j, %_ZN3pmx8PmxJointD2Ev.exit.i.i ], [ %i.h, %.preheader.preheader.i.i ] ; 4 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -176 ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -144
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 -128 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.preheader.i.i
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.preheader.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.q = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.i, i64 -160 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN3pmx8PmxJointD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #23
  br label %_ZN3pmx8PmxJointD2Ev.exit.i.i

_ZN3pmx8PmxJointD2Ev.exit.i.i:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  %i.v = icmp eq ptr %i.j, %i.d
  br i1 %i.v, label %_ZNKSt14default_deleteIA_N3pmx8PmxJointEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i, label %.preheader.i.i

_ZNKSt14default_deleteIA_N3pmx8PmxJointEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i: ; preds = %_ZN3pmx8PmxJointD2Ev.exit.i.i, %bb.c
  %i.w = or disjoint i64 %.idx.i.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.e, i64 noundef %i.w) #23
  br label %_ZNSt10unique_ptrIA_N3pmx8PmxJointESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIA_N3pmx8PmxJointESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_N3pmx11PmxSoftBodyESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIA_N3pmx8PmxJointEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.y = load ptr, ptr %i.x, align 8              ; 4 uses
  %.not.i2 = icmp eq ptr %i.y, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIA_N3pmx12PmxRigidBodyESt14default_deleteIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIA_N3pmx8PmxJointESt14default_deleteIS2_EED2Ev.exit
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %.idx.i.i3 = mul i64 %i.aa, 136                 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZNKSt14default_deleteIA_N3pmx12PmxRigidBodyEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i, label %.preheader.preheader.i.i4

.preheader.preheader.i.i4:                        ; preds = %bb.d
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 %.idx.i.i3
  br label %.preheader.i.i5

.preheader.i.i5:                                  ; preds = %_ZN3pmx12PmxRigidBodyD2Ev.exit.i.i, %.preheader.preheader.i.i4
  %i.ad = phi ptr [ %i.ae, %_ZN3pmx12PmxRigidBodyD2Ev.exit.i.i ], [ %i.ac, %.preheader.preheader.i.i4 ] ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -136 ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -104
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 -88 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i6: ; preds = %.preheader.i.i5
  %i.aj = load i64, ptr %i.ah, align 8
  %i.ak = add i64 %i.aj, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i7: ; preds = %.preheader.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i6
  %i.al = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.ad, i64 -120 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZN3pmx12PmxRigidBodyD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i7
  %i.ao = load i64, ptr %i.am, align 8
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #23
  br label %_ZN3pmx12PmxRigidBodyD2Ev.exit.i.i

_ZN3pmx12PmxRigidBodyD2Ev.exit.i.i:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i8
  %i.aq = icmp eq ptr %i.ae, %i.y
  br i1 %i.aq, label %_ZNKSt14default_deleteIA_N3pmx12PmxRigidBodyEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i, label %.preheader.i.i5

_ZNKSt14default_deleteIA_N3pmx12PmxRigidBodyEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i: ; preds = %_ZN3pmx12PmxRigidBodyD2Ev.exit.i.i, %bb.d
  %i.ar = add i64 %.idx.i.i3, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.z, i64 noundef %i.ar) #23
  br label %_ZNSt10unique_ptrIA_N3pmx12PmxRigidBodyESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIA_N3pmx12PmxRigidBodyESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_N3pmx8PmxJointESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIA_N3pmx12PmxRigidBodyEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.at = load ptr, ptr %i.as, align 8            ; 4 uses
  %.not.i11 = icmp eq ptr %i.at, null
  br i1 %.not.i11, label %_ZNSt10unique_ptrIA_N3pmx8PmxFrameESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIA_N3pmx12PmxRigidBodyESt14default_deleteIS2_EED2Ev.exit
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -8 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8            ; 2 uses
  %.idx.i.i12 = mul i64 %i.av, 80                 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_ZNKSt14default_deleteIA_N3pmx8PmxFrameEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i, label %.preheader.preheader.i.i13

.preheader.preheader.i.i13:                       ; preds = %bb.e
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 %.idx.i.i12
  br label %.preheader.i.i14

.preheader.i.i14:                                 ; preds = %_ZN3pmx8PmxFrameD2Ev.exit.i.i, %.preheader.preheader.i.i13
  %i.ay = phi ptr [ %i.az, %_ZN3pmx8PmxFrameD2Ev.exit.i.i ], [ %i.ax, %.preheader.preheader.i.i13 ] ; 5 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -80 ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_N3pmx15PmxFrameElementESt14default_deleteIS2_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIA_N3pmx15PmxFrameElementEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i

_ZNKSt14default_deleteIA_N3pmx15PmxFrameElementEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i: ; preds = %.preheader.i.i14
  tail call void @_ZdaPv(ptr noundef nonnull %i.bb) #23
  br label %_ZNSt10unique_ptrIA_N3pmx15PmxFrameElementESt14default_deleteIS2_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIA_N3pmx15PmxFrameElementESt14default_deleteIS2_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_N3pmx15PmxFrameElementEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, %.preheader.i.i14
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 -48
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.ay, i64 -32 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i15: ; preds = %_ZNSt10unique_ptrIA_N3pmx15PmxFrameElementESt14default_deleteIS2_EED2Ev.exit.i.i.i
  %i.bg = load i64, ptr %i.be, align 8
  %i.bh = add i64 %i.bg, 1
  tail call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i16: ; preds = %_ZNSt10unique_ptrIA_N3pmx15PmxFrameElementESt14default_deleteIS2_EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i15
  %i.bi = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.ay, i64 -64 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZN3pmx8PmxFrameD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i16
  %i.bl = load i64, ptr %i.bj, align 8
  %i.bm = add i64 %i.bl, 1
  tail call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #23
  br label %_ZN3pmx8PmxFrameD2Ev.exit.i.i

_ZN3pmx8PmxFrameD2Ev.exit.i.i:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i17
  %i.bn = icmp eq ptr %i.az, %i.at
  br i1 %i.bn, label %_ZNKSt14default_deleteIA_N3pmx8PmxFrameEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i, label %.preheader.i.i14

_ZNKSt14default_deleteIA_N3pmx8PmxFrameEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i: ; preds = %_ZN3pmx8PmxFrameD2Ev.exit.i.i, %bb.e
  %i.bo = or disjoint i64 %.idx.i.i12, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.au, i64 noundef %i.bo) #23
  br label %_ZNSt10unique_ptrIA_N3pmx8PmxFrameESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIA_N3pmx8PmxFrameESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_N3pmx12PmxRigidBodyESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIA_N3pmx8PmxFrameEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bq = load ptr, ptr %i.bp, align 8            ; 4 uses
  %.not.i20 = icmp eq ptr %i.bq, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIA_N3pmx8PmxMorphESt14default_deleteIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIA_N3pmx8PmxFrameESt14default_deleteIS2_EED2Ev.exit
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8            ; 2 uses
  %.idx.i.i21 = shl i64 %i.bs, 7                  ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_ZNKSt14default_deleteIA_N3pmx8PmxMorphEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i, label %.preheader.preheader.i.i22

.preheader.preheader.i.i22:                       ; preds = %bb.f
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %.idx.i.i21
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E:bb.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !125

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit, %bb.a
  ret void
}

declare noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_KcERA21_S9_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(21) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(2) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(21) %2) #22
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(21) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA2_KcERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(2) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %5, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #23
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #22
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #22
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #22
  resume { ptr, i32 } %i.q
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #23
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #23
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !135
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !135
  store i8 0, ptr %i.a, align 8, !alias.scope !135
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !135 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !135 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !135 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !135 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.d, %bb.b
  %i.r = load ptr, ptr %2, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.r, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.u = load ptr, ptr %2, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.w = load i64, ptr %i.a, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.e:                                             ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.e, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ %i.z, %bb.e ]
  %.pn.ph = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ac) #23
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e, %.body.sink.split
  %.pn = phi { ptr, i32 } [ %.pn.ph, %.body.sink.split ], [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRA2_KcERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA2_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(2) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %4, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %4, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #23
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #22
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #22
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #22
  resume { ptr, i32 } %i.s
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERA2_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(2) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %2) #22
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(2) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #23
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #22
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #22
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #22
  resume { ptr, i32 } %i.q
}

declare void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRA15_KcERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(15) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA15_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(15) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %4, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %4, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #23
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #22
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #22
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #22
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERA15_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(15) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(15) %2) #22
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(15) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #23
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #22
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #22
  ret void
end_hunk_2
