inline.NumInlined: 1132
inline.NumDeleted: 755
begin_hunk_0_@_ZN6Assimp11MMDImporterC2Ev:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN6Assimp15DefaultIOSystemE, i64 16), ptr %1, align 8
  %i.f = invoke noundef signext i8 @_ZNK6Assimp15DefaultIOSystem14getOsSeparatorEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.d, align 8
  %i.h = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, i64 noundef %i.g, i64 noundef 1, i8 noundef signext %i.f)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit: ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN6Assimp8IOSystemE, i64 16), ptr %1, align 8
  %i.i = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i.i, align 8      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.e, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit
  %i.r = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i.i, label %_ZN6Assimp8IOSystemD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #23
  br label %_ZN6Assimp8IOSystemD2Ev.exit

_ZN6Assimp8IOSystemD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp8IOSystemD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.y = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.c
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.aa = load i64, ptr %i.c, align 8
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

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
  call void @__cxa_free_exception(ptr nonnull %i.p) #22
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit39

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
  call void @__cxa_free_exception(ptr nonnull %i.y) #22
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit39

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
end_hunk_0
begin_hunk_1_@_ZN6Assimp11MMDImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a

bb.aj:                                            ; preds = %bb.ai, %bb.ae
  %.pn17.pn.pn = phi { ptr, i32 } [ %.pn17.pn, %bb.ai ], [ %i.fe, %bb.ae ] ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %.sroa.041.0, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIcSaIcEED2Ev.exit39, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fm = ptrtoint ptr %.sroa.14.0 to i64
  %i.fn = sub i64 %i.fm, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.041.0, i64 noundef %i.fn) #23
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit39

_ZNSt6vectorIcSaIcEED2Ev.exit39:                  ; preds = %bb.ac, %bb.ad, %bb.aj, %bb.ak, %bb.o, %bb.p, %bb.j, %bb.i
  %.pn24 = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.r, %bb.i ], [ %i.z, %bb.o ], [ %i.aa, %bb.p ], [ %i.fc, %bb.ac ], [ %i.fd, %bb.ad ], [ %.pn17.pn.pn, %bb.aj ], [ %.pn17.pn.pn, %bb.ak ]
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 1144) #23
  br label %bb.at

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

end_hunk_1
begin_hunk_2_@_ZN3pmx8PmxModelD2Ev:bb.a

.preheader.i.i27:                                 ; preds = %_ZN3pmx7PmxBoneD2Ev.exit.i.i, %.preheader.preheader.i.i26
  %i.cf = phi ptr [ %i.cg, %_ZN3pmx7PmxBoneD2Ev.exit.i.i ], [ %i.ce, %.preheader.preheader.i.i26 ] ; 5 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -176 ; 3 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 -8
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %.not.i.i.i.i28 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i28, label %_ZNSt10unique_ptrIA_N3pmx9PmxIkLinkESt14default_deleteIS2_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIA_N3pmx9PmxIkLinkEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i

_ZNKSt14default_deleteIA_N3pmx9PmxIkLinkEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i: ; preds = %.preheader.i.i27
  tail call void @_ZdaPv(ptr noundef nonnull %i.ci) #23
  br label %_ZNSt10unique_ptrIA_N3pmx9PmxIkLinkESt14default_deleteIS2_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIA_N3pmx9PmxIkLinkESt14default_deleteIS2_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_N3pmx9PmxIkLinkEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, %.preheader.i.i27
  %i.cj = getelementptr inbounds i8, ptr %i.cf, i64 -144
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %i.cf, i64 -128 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i29: ; preds = %_ZNSt10unique_ptrIA_N3pmx9PmxIkLinkESt14default_deleteIS2_EED2Ev.exit.i.i.i
  %i.cn = load i64, ptr %i.cl, align 8
  %i.co = add i64 %i.cn, 1
  tail call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i30: ; preds = %_ZNSt10unique_ptrIA_N3pmx9PmxIkLinkESt14default_deleteIS2_EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i29
  %i.cp = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %i.cf, i64 -160 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZN3pmx7PmxBoneD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i30
  %i.cs = load i64, ptr %i.cq, align 8
  %i.ct = add i64 %i.cs, 1
  tail call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #23
  br label %_ZN3pmx7PmxBoneD2Ev.exit.i.i

_ZN3pmx7PmxBoneD2Ev.exit.i.i:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i31
  %i.cu = icmp eq ptr %i.cg, %i.ca
  br i1 %i.cu, label %_ZNKSt14default_deleteIA_N3pmx7PmxBoneEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i, label %.preheader.i.i27

_ZNKSt14default_deleteIA_N3pmx7PmxBoneEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i: ; preds = %_ZN3pmx7PmxBoneD2Ev.exit.i.i, %bb.g
  %i.cv = or disjoint i64 %.idx.i.i25, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cv) #23
  br label %_ZNSt10unique_ptrIA_N3pmx7PmxBoneESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIA_N3pmx7PmxBoneESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_N3pmx8PmxMorphESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIA_N3pmx7PmxBoneEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @_ZNSt10unique_ptrIA_N3pmx11PmxMaterialESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cw) #22
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cy = load ptr, ptr %i.cx, align 8            ; 4 uses
  %.not.i34 = icmp eq ptr %i.cy, null
  br i1 %.not.i34, label %_ZNSt10unique_ptrIA_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIA_N3pmx7PmxBoneESt14default_deleteIS2_EED2Ev.exit
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8            ; 2 uses
  %.idx.i.i35 = shl i64 %i.da, 5                  ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %_ZNKSt14default_deleteIA_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclIS5_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS6_EE5valueEvE4typeEPSA_.exit.i, label %.preheader.preheader.i.i36

.preheader.preheader.i.i36:                       ; preds = %bb.h
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 %.idx.i.i35
  br label %.preheader.i.i37

.preheader.i.i37:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.preheader.preheader.i.i36
  %i.dd = phi ptr [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.dc, %.preheader.preheader.i.i36 ] ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -32 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.dd, i64 -16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.preheader.i.i37
  %i.di = load i64, ptr %i.dg, align 8
  %i.dj = add i64 %i.di, 1
  tail call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.preheader.i.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.dk = icmp eq ptr %i.de, %i.cy
  br i1 %i.dk, label %_ZNKSt14default_deleteIA_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclIS5_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS6_EE5valueEvE4typeEPSA_.exit.i, label %.preheader.i.i37

_ZNKSt14default_deleteIA_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclIS5_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS6_EE5valueEvE4typeEPSA_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.h
  %i.dl = or disjoint i64 %.idx.i.i35, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dl) #23
  br label %_ZNSt10unique_ptrIA_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EED2Ev.exit

_ZNSt10unique_ptrIA_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_N3pmx7PmxBoneESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIA_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclIS5_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS6_EE5valueEvE4typeEPSA_.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dn = load ptr, ptr %i.dm, align 8            ; 2 uses
  %.not.i38 = icmp eq ptr %i.dn, null
  br i1 %.not.i38, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZNSt10unique_ptrIA_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.dn) #23
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EED2Ev.exit, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.dp = load ptr, ptr %i.do, align 8            ; 4 uses
  %.not.i39 = icmp eq ptr %i.dp, null
  br i1 %.not.i39, label %_ZNSt10unique_ptrIA_N3pmx9PmxVertexESt14default_deleteIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -8 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8            ; 2 uses
  %.idx.i.i40 = mul i64 %i.dr, 120                ; 2 uses
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %_ZNKSt14default_deleteIA_N3pmx9PmxVertexEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i, label %.preheader.preheader.i.i41

.preheader.preheader.i.i41:                       ; preds = %bb.i
  %i.dt = getelementptr inbounds i8, ptr %i.dp, i64 %.idx.i.i40
  br label %.preheader.i.i42

.preheader.i.i42:                                 ; preds = %_ZN3pmx9PmxVertexD2Ev.exit.i.i, %.preheader.preheader.i.i41
  %i.du = phi ptr [ %i.dv, %_ZN3pmx9PmxVertexD2Ev.exit.i.i ], [ %i.dt, %.preheader.preheader.i.i41 ] ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -120 ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %i.du, i64 -16
  %i.dx = load ptr, ptr %i.dw, align 8            ; 3 uses
  %.not.i.i.i.i43 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i43, label %_ZN3pmx9PmxVertexD2Ev.exit.i.i, label %_ZNKSt14default_deleteIN3pmx17PmxVertexSkinningEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN3pmx17PmxVertexSkinningEEclEPS1_.exit.i.i.i.i: ; preds = %.preheader.i.i42
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  tail call void %i.ea(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dx) #22, !inline_history !24
  br label %_ZN3pmx9PmxVertexD2Ev.exit.i.i

_ZN3pmx9PmxVertexD2Ev.exit.i.i:                   ; preds = %_ZNKSt14default_deleteIN3pmx17PmxVertexSkinningEEclEPS1_.exit.i.i.i.i, %.preheader.i.i42
  %i.eb = icmp eq ptr %i.dv, %i.dp
  br i1 %i.eb, label %_ZNKSt14default_deleteIA_N3pmx9PmxVertexEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i, label %.preheader.i.i42

_ZNKSt14default_deleteIA_N3pmx9PmxVertexEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i: ; preds = %_ZN3pmx9PmxVertexD2Ev.exit.i.i, %bb.i
  %i.ec = add i64 %.idx.i.i40, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.dq, i64 noundef %i.ec) #23
  br label %_ZNSt10unique_ptrIA_N3pmx9PmxVertexESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIA_N3pmx9PmxVertexESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit, %_ZNKSt14default_deleteIA_N3pmx9PmxVertexEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ee = load ptr, ptr %i.ed, align 8            ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIA_N3pmx9PmxVertexESt14default_deleteIS2_EED2Ev.exit
  %i.eh = load i64, ptr %i.ef, align 8
  %i.ei = add i64 %i.eh, 1
  tail call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_N3pmx9PmxVertexESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ek = load ptr, ptr %i.ej, align 8            ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.en = load i64, ptr %i.el, align 8
  %i.eo = add i64 %i.en, 1
  tail call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eq = load ptr, ptr %i.ep, align 8            ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %i.et = load i64, ptr %i.er, align 8
  %i.eu = add i64 %i.et, 1
  tail call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.eu) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8            ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.ez = load i64, ptr %i.ex, align 8
  %i.fa = add i64 %i.ez, 1
  tail call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #5 align 2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZNSt10unique_ptrIN6Assimp8IOStreamEZNS0_11MMDImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS0_8IOSystemEE3$_0ED2Ev"(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %"_ZZN6Assimp11MMDImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemEENK3$_0clEPNS_8IOStreamE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8
  %.val.val = load ptr, ptr %.val, align 8        ; 2 uses
  %i.c = load ptr, ptr %.val.val, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %.val.val, ptr noundef nonnull %i.b)
          to label %"_ZZN6Assimp11MMDImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemEENK3$_0clEPNS_8IOStreamE.exit" unwind label %bb.c, !inline_history !15

"_ZZN6Assimp11MMDImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemEENK3$_0clEPNS_8IOStreamE.exit": ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #26
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

declare void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144)) unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

declare void @_ZN6aiNode11addChildrenEjPPS_(ptr noundef nonnull align 8 dereferenceable(1144), i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @_ZN6Assimp11MMDImporter10CreateMeshEPKN3pmx8PmxModelEii(ptr nonnull readnone align 8 captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::tuple.238", align 8    ; 4 uses
  %5 = alloca %"class.std::tuple.241", align 1    ; 3 uses
  %6 = alloca %"class.std::tuple.238", align 8    ; 4 uses
  %7 = alloca %"class.std::tuple.241", align 1    ; 3 uses
  %8 = alloca %"class.std::tuple.238", align 8    ; 4 uses
  %9 = alloca %"class.std::tuple.241", align 1    ; 3 uses
  %10 = alloca %"class.std::tuple.238", align 8   ; 4 uses
  %11 = alloca %"class.std::tuple.241", align 1   ; 3 uses
  %12 = alloca %"class.std::tuple.238", align 8   ; 4 uses
  %13 = alloca %"class.std::tuple.241", align 1   ; 3 uses
  %14 = alloca %"class.std::tuple.238", align 8   ; 4 uses
  %15 = alloca %"class.std::tuple.241", align 1   ; 3 uses
  %16 = alloca %"class.std::tuple.238", align 8   ; 4 uses
  %17 = alloca %"class.std::tuple.241", align 1   ; 3 uses
  %18 = alloca %"class.std::tuple.238", align 8   ; 4 uses
  %19 = alloca %"class.std::tuple.241", align 1   ; 3 uses
  %20 = alloca %"class.std::tuple.238", align 8   ; 4 uses
  %21 = alloca %"class.std::tuple.241", align 1   ; 3 uses
  %22 = alloca %"class.std::tuple.238", align 8   ; 4 uses
  %23 = alloca %"class.std::tuple.241", align 1   ; 3 uses
  %24 = alloca %"class.std::tuple.238", align 8   ; 4 uses
  %25 = alloca %"class.std::tuple.241", align 1   ; 3 uses
  %26 = alloca %"class.std::tuple.238", align 8   ; 4 uses
  %27 = alloca %"class.std::tuple.241", align 1   ; 3 uses
  %28 = alloca %"class.std::tuple.238", align 8   ; 4 uses
  %29 = alloca %"class.std::tuple.241", align 1   ; 3 uses
  %30 = alloca %"class.std::map", align 8         ; 23 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #25 ; 15 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1272
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1312
  store ptr null, ptr %i.g, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.d, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.e, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.f, i8 0, i64 36, i1 false)
  store i32 %3, ptr %i.b, align 4
  %i.h = sdiv i32 %3, 3                           ; 3 uses
  store i32 %i.h, ptr %i.c, align 8
  %i.i = zext i32 %i.h to i64                     ; 5 uses
  %i.j = shl nuw nsw i64 %i.i, 4
  %i.k = or disjoint i64 %i.j, 8
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #25 ; 2 uses
  store i64 %i.i, ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 6 uses
  %.off = add i32 %3, 2
  %i.n = icmp ult i32 %.off, 5
  br i1 %i.n, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.i
  %i.p = add nuw nsw i64 %i.i, 1152921504606846975
  %i.q = and i64 %i.p, 1152921504606846975
  %xtraiter = and i64 %i.i, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.b, %.prol.preheader
  %i.r = phi ptr [ %i.t, %.prol.preheader ], [ %i.m, %bb.b ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.b ]
  store i32 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !25

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.b
  %.unr = phi ptr [ %i.m, %bb.b ], [ %i.t, %.prol.preheader ]
  %i.u = icmp samesign ult i64 %i.q, 7
  br i1 %i.u, label %.lr.ph.preheader, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.v = phi ptr [ %i.al, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr null, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i32 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr null, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store i32 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store ptr null, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store i32 0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store ptr null, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  store i32 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  store i32 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  store ptr null, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  store i32 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  store ptr null, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  store i32 0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  store ptr null, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 128 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.o
  br i1 %i.am, label %.lr.ph.preheader, label %.new

.lr.ph.preheader:                                 ; preds = %.new, %.prol.loopexit
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store ptr %i.m, ptr %i.an, align 8
  %umax = tail call i32 @llvm.umax.i32(i32 %i.h, i32 1)
  %wide.trip.count = zext i32 %umax to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store ptr %i.m, ptr %i.ao, align 8
  %i.ap = zext i32 %3 to i64                      ; 2 uses
  %i.aq = mul nuw nsw i64 %i.ap, 12               ; 5 uses
  %i.ar = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aq) #25 ; 2 uses
  %i.as = icmp eq i32 %3, 0
  br i1 %i.as, label %.thread568, label %.loopexit596.loopexit

.thread568:                                       ; preds = %._crit_edge
  store ptr %i.ar, ptr %i.d, align 8
  %i.at = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aq) #25
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.at, ptr %i.au, align 8
  %i.av = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aq) #25
  br label %.loopexit596

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  store i32 3, ptr %i.aw, align 8
  %i.ax = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #25 ; 4 uses
  %i.ay = trunc nuw i64 %indvars.iv to i32
  %i.az = mul i32 %i.ay, 3                        ; 3 uses
  store i32 %i.az, ptr %i.ax, align 4
  %i.ba = add i32 %i.az, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 %i.ba, ptr %i.bb, align 4
  %i.bc = add i32 %i.az, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 %i.bc, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ax, ptr %i.be, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !26

._crit_edge.thread:                               ; preds = %.lr.ph
  %i.bf = zext i32 %3 to i64                      ; 2 uses
  %i.bg = mul nuw nsw i64 %i.bf, 12               ; 2 uses
  %i.bh = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bg) #25
  br label %.loopexit596.loopexit

.loopexit596.loopexit:                            ; preds = %._crit_edge.thread, %._crit_edge
  %i.bi = phi ptr [ %i.bh, %._crit_edge.thread ], [ %i.ar, %._crit_edge ] ; 2 uses
  %i.bj = phi i64 [ %i.bg, %._crit_edge.thread ], [ %i.aq, %._crit_edge ] ; 4 uses
  %i.bk = phi i64 [ %i.bf, %._crit_edge.thread ], [ %i.ap, %._crit_edge ]
  %i.bl = add nsw i64 %i.bj, -12                  ; 2 uses
  %i.bm = urem i64 %i.bl, 12
  %i.bn = sub nuw nsw i64 %i.bl, %i.bm
  %i.bo = add nsw i64 %i.bn, 12                   ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bi, i8 0, i64 %i.bo, i1 false)
  store ptr %i.bi, ptr %i.d, align 8
  %i.bp = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bj) #25 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bp, i8 0, i64 %i.bo, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.bp, ptr %i.bq, align 8
  %i.br = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bj) #25 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.br, i8 0, i64 %i.bo, i1 false)
  br label %.loopexit596

.loopexit596:                                     ; preds = %.loopexit596.loopexit, %.thread568
  %i.bs = phi i1 [ true, %.thread568 ], [ false, %.loopexit596.loopexit ]
  %i.bt = phi i64 [ %i.aq, %.thread568 ], [ %i.bj, %.loopexit596.loopexit ] ; 3 uses
  %i.bu = phi i64 [ 0, %.thread568 ], [ %i.bk, %.loopexit596.loopexit ]
  %i.bv = phi ptr [ %i.av, %.thread568 ], [ %i.br, %.loopexit596.loopexit ]
  %i.bw = phi ptr [ %i.au, %.thread568 ], [ %i.bq, %.loopexit596.loopexit ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 5 uses
  store ptr %i.bv, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 3 uses
  store i32 2, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 3 uses
  %i.ca = load i8, ptr %i.bz, align 1             ; 2 uses
  %i.cb = zext i8 %i.ca to i32                    ; 2 uses
  %.not640 = icmp eq i8 %i.ca, 0
  br i1 %.not640, label %._crit_edge644, label %.lr.ph643

.lr.ph643:                                        ; preds = %.loopexit596
  br i1 %i.bs, label %.lr.ph643.split.us.preheader, label %.lr.ph643.split.preheader

.lr.ph643.split.preheader:                        ; preds = %.lr.ph643
  %i.cc = add nsw i64 %i.bt, -12                  ; 2 uses
  %i.cd = urem i64 %i.cc, 12
  %i.ce = sub nuw nsw i64 %i.cc, %i.cd
  %i.cf = add nsw i64 %i.ce, 12
  %i.cg = add nuw nsw i32 %i.cb, 1
  %wide.trip.count694 = zext nneg i32 %i.cg to i64
  br label %.lr.ph643.split

.lr.ph643.split.us.preheader:                     ; preds = %.lr.ph643
  %i.ch = add nuw nsw i32 %i.cb, 1
  %wide.trip.count699 = zext nneg i32 %i.ch to i64
  br label %.lr.ph643.split.us

.lr.ph643.split.us:                               ; preds = %.lr.ph643.split.us.preheader, %.lr.ph643.split.us
  %indvars.iv696 = phi i64 [ 1, %.lr.ph643.split.us.preheader ], [ %indvars.iv.next697, %.lr.ph643.split.us ] ; 3 uses
  %i.ci = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bt) #25
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv696
  store ptr %i.ci, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv696
  store i32 4, ptr %i.ck, align 4
  %indvars.iv.next697 = add nuw nsw i64 %indvars.iv696, 1 ; 2 uses
  %exitcond700.not = icmp eq i64 %indvars.iv.next697, %wide.trip.count699
  br i1 %exitcond700.not, label %._crit_edge644, label %.lr.ph643.split.us, !llvm.loop !27

._crit_edge644:                                   ; preds = %.lr.ph643.split, %.lr.ph643.split.us, %.loopexit596
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  %i.cl = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 44 uses
  store i32 0, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 16 uses
  store ptr null, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %30, i64 24
  store ptr %i.cl, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %30, i64 32
  store ptr %i.cl, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %30, i64 40
  store i64 0, ptr %i.cp, align 8
  %i.cq = icmp sgt i32 %3, 0
  br i1 %i.cq, label %.lr.ph652, label %._crit_edge653

.lr.ph652:                                        ; preds = %._crit_edge644
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ct = sext i32 %2 to i64
  br label %bb.c

.lr.ph643.split:                                  ; preds = %.lr.ph643.split.preheader, %.lr.ph643.split
  %indvars.iv691 = phi i64 [ 1, %.lr.ph643.split.preheader ], [ %indvars.iv.next692, %.lr.ph643.split ] ; 3 uses
  %i.cu = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bt) #25 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cu, i8 0, i64 %i.cf, i1 false)
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv691
  store ptr %i.cu, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv691
  store i32 4, ptr %i.cw, align 4
  %indvars.iv.next692 = add nuw nsw i64 %indvars.iv691, 1 ; 2 uses
  %exitcond695.not = icmp eq i64 %indvars.iv.next692, %wide.trip.count694
  br i1 %exitcond695.not, label %._crit_edge644, label %.lr.ph643.split, !llvm.loop !27

._crit_edge653:                                   ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit, %._crit_edge644
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8            ; 5 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i32 %i.cy, 0
  %i.db = shl nsw i64 %i.cz, 3
  %i.dc = select i1 %i.da, i64 -1, i64 %i.db
  %i.dd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dc) #25
          to label %bb.cn unwind label %bb.cp     ; 2 uses

bb.c:                                             ; preds = %.lr.ph652, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit
  %indvars.iv704 = phi i64 [ 0, %.lr.ph652 ], [ %indvars.iv.next705, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit ] ; 32 uses
  %i.de = load ptr, ptr %i.cs, align 8
  %i.df = getelementptr [4 x i8], ptr %i.de, i64 %indvars.iv704
  %i.dg = getelementptr [4 x i8], ptr %i.df, i64 %i.ct
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = sext i32 %i.dh to i64
  %i.dj = load ptr, ptr %i.cr, align 8
  %i.dk = getelementptr inbounds nuw [120 x i8], ptr %i.dj, i64 %i.di ; 9 uses
  %i.dl = load ptr, ptr %i.d, align 8
  %i.dm = getelementptr inbounds nuw [12 x i8], ptr %i.dl, i64 %indvars.iv704 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.do = load float, ptr %i.dn, align 4
  %i.dp = load <2 x float>, ptr %i.dk, align 4
  store <2 x float> %i.dp, ptr %i.dm, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store float %i.do, ptr %i.dq, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  %i.ds = load ptr, ptr %i.bw, align 8
  %i.dt = getelementptr inbounds nuw [12 x i8], ptr %i.ds, i64 %indvars.iv704 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 20
  %i.dv = load float, ptr %i.du, align 4
  %i.dw = load <2 x float>, ptr %i.dr, align 4
  store <2 x float> %i.dw, ptr %i.dt, align 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store float %i.dv, ptr %i.dx, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dz = load float, ptr %i.dy, align 8
  %i.ea = load ptr, ptr %i.bx, align 8
  %i.eb = getelementptr inbounds nuw [12 x i8], ptr %i.ea, i64 %indvars.iv704 ; 2 uses
  store float %i.dz, ptr %i.eb, align 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dk, i64 28
  %i.ed = load float, ptr %i.ec, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  store float %i.ed, ptr %i.ee, align 4
  %i.ef = load i8, ptr %i.bz, align 1
  %.not146645 = icmp eq i8 %i.ef, 0
  br i1 %.not146645, label %._crit_edge649, label %.lr.ph648

.lr.ph648:                                        ; preds = %bb.c
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  br label %bb.d

._crit_edge649:                                   ; preds = %bb.d, %bb.c
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dk, i64 104
  %i.ei = load ptr, ptr %i.eh, align 8            ; 6 uses
  %i.ej = icmp eq ptr %i.ei, null                 ; 2 uses
  br i1 %i.ej, label %.thread571, label %bb.e

bb.d:                                             ; preds = %.lr.ph648, %bb.d
  %indvars.iv701 = phi i64 [ 1, %.lr.ph648 ], [ %indvars.iv.next702, %bb.d ] ; 4 uses
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %indvars.iv701 ; 2 uses
  %i.el = load float, ptr %i.ek, align 8
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv701
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = getelementptr inbounds nuw [12 x i8], ptr %i.en, i64 %indvars.iv704 ; 2 uses
  store float %i.el, ptr %i.eo, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.eq = load float, ptr %i.ep, align 4
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  store float %i.eq, ptr %i.er, align 4
  %indvars.iv.next702 = add nuw nsw i64 %indvars.iv701, 1
  %i.es = load i8, ptr %i.bz, align 1
  %i.et = zext i8 %i.es to i64
  %.not146.not = icmp samesign ult i64 %indvars.iv701, %i.et
  br i1 %.not146.not, label %bb.d, label %._crit_edge649, !llvm.loop !28

bb.e:                                             ; preds = %._crit_edge649
  %i.eu = call ptr @__dynamic_cast(ptr nonnull %i.ei, ptr nonnull @_ZTIN3pmx17PmxVertexSkinningE, ptr nonnull @_ZTIN3pmx22PmxVertexSkinningBDEF1E, i64 0) #22
  %i.ev = call ptr @__dynamic_cast(ptr nonnull %i.ei, ptr nonnull @_ZTIN3pmx17PmxVertexSkinningE, ptr nonnull @_ZTIN3pmx22PmxVertexSkinningBDEF2E, i64 0) #22
  %i.ew = call ptr @__dynamic_cast(ptr nonnull %i.ei, ptr nonnull @_ZTIN3pmx17PmxVertexSkinningE, ptr nonnull @_ZTIN3pmx22PmxVertexSkinningBDEF4E, i64 0) #22
  %i.ex = call ptr @__dynamic_cast(ptr nonnull %i.ei, ptr nonnull @_ZTIN3pmx17PmxVertexSkinningE, ptr nonnull @_ZTIN3pmx21PmxVertexSkinningSDEFE, i64 0) #22
  br label %.thread571

.thread571:                                       ; preds = %._crit_edge649, %bb.e
  %i.ey = phi ptr [ %i.ew, %bb.e ], [ null, %._crit_edge649 ] ; 8 uses
  %i.ez = phi ptr [ %i.eu, %bb.e ], [ null, %._crit_edge649 ]
  %i.fa = phi ptr [ %i.ev, %bb.e ], [ null, %._crit_edge649 ] ; 3 uses
  %i.fb = phi ptr [ %i.ex, %bb.e ], [ null, %._crit_edge649 ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dk, i64 96
  %i.fd = load i8, ptr %i.fc, align 8
  switch i8 %i.fd, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit [
    i8 0, label %bb.f
    i8 1, label %bb.n
    i8 2, label %bb.ab
    i8 3, label %bb.ba
    i8 4, label %31
  ]

bb.f:                                             ; preds = %.thread571
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %i.ff = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ff, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.fg = load i32, ptr %i.fe, align 4            ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ff, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.g ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.g ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = icmp slt i32 %i.fi, %i.fg               ; 3 uses
  %.19.i.i.i.i = select i1 %i.fj, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.fj, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i, label %bb.g, !llvm.loop !29

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i: ; preds = %bb.g
  %i.fk = icmp eq ptr %.19.i.i.i.i, %i.cl
  br i1 %i.fk, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.fj, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.fl = load i32, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.fm = icmp slt i32 %i.fg, %i.fl
  br i1 %i.fm, label %.critedge.i, label %bb.i

.critedge.i:                                      ; preds = %bb.h, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i, %bb.f
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.h ], [ %.19.i.i.i.i, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i ], [ %i.cl, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  store ptr %i.fe, ptr %28, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  %i.fn = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 1 dereferenceable(1) %29)
          to label %.noexc unwind label %.loopexit575.a

.noexc:                                           ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %bb.i

bb.i:                                             ; preds = %.noexc, %bb.h
  %.sroa.06.0.i = phi ptr [ %i.fn, %.noexc ], [ %.19.i.i.i.i, %bb.h ] ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 4 uses
  %i.fq = load ptr, ptr %i.fp, align 8            ; 6 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8
  %.not.i = icmp eq ptr %i.fq, %i.fs
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ft = trunc nuw nsw i64 %indvars.iv704 to i32
  store i32 %i.ft, ptr %i.fq, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store float 1.000000e+00, ptr %i.fu, align 4
  %i.fv = load ptr, ptr %i.fp, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store ptr %i.fw, ptr %i.fp, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.fx = load ptr, ptr %i.fo, align 8            ; 7 uses
  %i.fy = ptrtoint ptr %i.fq to i64               ; 2 uses
  %i.fz = ptrtoint ptr %i.fx to i64               ; 3 uses
  %i.ga = sub i64 %i.fy, %i.fz                    ; 4 uses
  %i.gb = icmp eq i64 %i.ga, 9223372036854775800
  br i1 %i.gb, label %bb.l, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
          to label %.noexc150 unwind label %.loopexit.split-lp591

.noexc150:                                        ; preds = %bb.l
  unreachable

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.gc = ashr exact i64 %i.ga, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gc, i64 1)
  %i.gd = add nsw i64 %.sroa.speculated.i.i.i, %i.gc ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.gc
  %i.gf = call i64 @llvm.umin.i64(i64 %i.gd, i64 1152921504606846975)
  %i.gg = select i1 %i.ge, i64 1152921504606846975, i64 %i.gf ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gg, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.gh = shl nuw nsw i64 %i.gg, 3
  %i.gi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gh) #25
          to label %.noexc151 unwind label %.loopexit590 ; 8 uses

.noexc151:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.ga ; 2 uses
  %i.gk = trunc nuw nsw i64 %indvars.iv704 to i32
  store i32 %i.gk, ptr %i.gj, align 4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  store float 1.000000e+00, ptr %i.gl, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.fx, %i.fq
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc151
  %i.gm = ptrtoaddr ptr %i.gi to i64
  %i.gn = add i64 %i.fy, -8
  %i.go = sub i64 %i.gn, %i.fz                    ; 2 uses
  %i.gp = lshr i64 %i.go, 3
  %i.gq = add nuw nsw i64 %i.gp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.go, 24
  %i.gr = sub i64 %i.gm, %i.fz
  %diff.check = icmp ult i64 %i.gr, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader1096, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.gq, 4611686018427387900     ; 3 uses
  %i.gs = shl i64 %n.vec, 3                       ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gi, i64 %i.gs  ; 2 uses
  %i.gu = getelementptr i8, ptr %i.fx, i64 %i.gs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gi, i64 %i.gv ; 2 uses
  %next.gep865 = getelementptr i8, ptr %i.fx, i64 %i.gv ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.gw = getelementptr i8, ptr %next.gep865, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep865, align 4, !alias.scope !33, !noalias !30
  %wide.load866 = load <2 x i64>, ptr %i.gw, align 4, !alias.scope !33, !noalias !30
  %i.gx = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !30, !noalias !33
  store <2 x i64> %wide.load866, ptr %i.gx, align 4, !alias.scope !30, !noalias !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gy = icmp eq i64 %index.next, %n.vec
  br i1 %i.gy, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader1096

.lr.ph.i.i.i.i.i.preheader1096:                   ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.gi, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gt, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.fx, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gu, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader1096, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.hb, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader1096 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ha, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader1096 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.gz = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !33, !noalias !30
  store i64 %i.gz, ptr %.012.i.i.i.i.i, align 4, !alias.scope !30, !noalias !33
  %i.ha = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ha, %i.fq
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !36

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc151
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.gi, %.noexc151 ], [ %i.gt, %middle.block ], [ %i.hb, %.lr.ph.i.i.i.i.i ]
  %i.hc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i34.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.ga) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i
  store ptr %i.gi, ptr %i.fo, align 8
  store ptr %i.hc, ptr %i.fp, align 8
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gg
  store ptr %i.hd, ptr %i.fr, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit

.loopexit575.a:                                   ; preds = %.critedge.i, %.critedge.i163, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i168, %.critedge.i192, %.critedge.i223, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i228, %.critedge.i254, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i259, %.critedge.i285, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i290, %.critedge.i316, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i321, %.critedge.i347, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i352, %.critedge.i378
  %lpad.loopexit577 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit.split-lp576:                            ; preds = %.invoke
  %lpad.loopexit.split-lp578 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit590:                                     ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit592 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit.split-lp591:                            ; preds = %bb.l
  %lpad.loopexit.split-lp593 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

end_hunk_2
begin_hunk_3_@_ZN6Assimp11MMDImporter10CreateMeshEPKN3pmx8PmxModelEii:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.uq, i64 noundef %i.ut) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i363

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i363: ; preds = %bb.bg, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i360
  store ptr %i.vb, ptr %i.uf, align 8
  store ptr %i.vw, ptr %i.uh, align 8
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.vb, i64 %i.uz
  store ptr %i.vx, ptr %i.uj, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit366

_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit366: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i363, %bb.be
  %i.vy = getelementptr inbounds nuw i8, ptr %i.fb, i64 12 ; 2 uses
  %i.vz = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not10.i.i.i.i367 = icmp eq ptr %i.vz, null
  br i1 %.not10.i.i.i.i367, label %.critedge.i378, label %.lr.ph.i.i.i.i368

.lr.ph.i.i.i.i368:                                ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit366
  %i.wa = load i32, ptr %i.vy, align 4            ; 2 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.lr.ph.i.i.i.i368
  %.012.i.i.i.i369 = phi ptr [ %i.vz, %.lr.ph.i.i.i.i368 ], [ %.1.i.i.i.i374, %bb.bh ] ; 4 uses
  %.0811.i.i.i.i370 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i368 ], [ %.19.i.i.i.i371, %bb.bh ] ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i369, i64 32
  %i.wc = load i32, ptr %i.wb, align 4
  %i.wd = icmp slt i32 %i.wc, %i.wa               ; 3 uses
  %.19.i.i.i.i371 = select i1 %i.wd, ptr %.0811.i.i.i.i370, ptr %.012.i.i.i.i369 ; 5 uses
  %.1.in.v.i.i.i.i372 = select i1 %i.wd, i64 24, i64 16
  %.1.in.i.i.i.i373 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i369, i64 %.1.in.v.i.i.i.i372
  %.1.i.i.i.i374 = load ptr, ptr %.1.in.i.i.i.i373, align 8 ; 2 uses
  %.not.i.i.i.i375 = icmp eq ptr %.1.i.i.i.i374, null
  br i1 %.not.i.i.i.i375, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i376, label %bb.bh, !llvm.loop !29

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i376: ; preds = %bb.bh
  %i.we = icmp eq ptr %.19.i.i.i.i371, %i.cl
  br i1 %i.we, label %.critedge.i378, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i376
  %.19.i.i.i.i371.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.wd, ptr %.0811.i.i.i.i370, ptr %.012.i.i.i.i369
  %.19.i.i.i.i371.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i371.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.wf = load i32, ptr %.19.i.i.i.i371.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.wg = icmp slt i32 %i.wa, %i.wf
  br i1 %i.wg, label %.critedge.i378, label %bb.bj

.critedge.i378:                                   ; preds = %bb.bi, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i376, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit366
  %.08.lcssa.i.i.i11.i379 = phi ptr [ %.19.i.i.i.i371, %bb.bi ], [ %.19.i.i.i.i371, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i376 ], [ %i.cl, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit366 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr %i.vy, ptr %12, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.wh = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr %.08.lcssa.i.i.i11.i379, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc380 unwind label %.loopexit575.a

.noexc380:                                        ; preds = %.critedge.i378
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.bj

bb.bj:                                            ; preds = %.noexc380, %bb.bi
  %.sroa.06.0.i377 = phi ptr [ %i.wh, %.noexc380 ], [ %.19.i.i.i.i371, %bb.bi ] ; 3 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i377, i64 40 ; 2 uses
  %i.wj = load float, ptr %i.ug, align 8
  %i.wk = fsub float 1.000000e+00, %i.wj          ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i377, i64 48 ; 4 uses
  %i.wm = load ptr, ptr %i.wl, align 8            ; 6 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i377, i64 56 ; 2 uses
  %i.wo = load ptr, ptr %i.wn, align 8
  %.not.i382 = icmp eq ptr %i.wm, %i.wo
  br i1 %.not.i382, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.wp = trunc nuw nsw i64 %indvars.iv704 to i32
  store i32 %i.wp, ptr %i.wm, align 4
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wm, i64 4
  store float %i.wk, ptr %i.wq, align 4
  %i.wr = load ptr, ptr %i.wl, align 8
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  store ptr %i.ws, ptr %i.wl, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit

bb.bl:                                            ; preds = %bb.bj
  %i.wt = load ptr, ptr %i.wi, align 8            ; 7 uses
  %i.wu = ptrtoint ptr %i.wm to i64               ; 2 uses
  %i.wv = ptrtoint ptr %i.wt to i64               ; 3 uses
  %i.ww = sub i64 %i.wu, %i.wv                    ; 4 uses
  %i.wx = icmp eq i64 %i.ww, 9223372036854775800
  br i1 %i.wx, label %bb.bm, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i383

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
          to label %.noexc395 unwind label %.loopexit.split-lp581

.noexc395:                                        ; preds = %bb.bm
  unreachable

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i383: ; preds = %bb.bl
  %i.wy = ashr exact i64 %i.ww, 3                 ; 3 uses
  %.sroa.speculated.i.i.i384 = call i64 @llvm.umax.i64(i64 %i.wy, i64 1)
  %i.wz = add nsw i64 %.sroa.speculated.i.i.i384, %i.wy ; 2 uses
  %i.xa = icmp ult i64 %i.wz, %i.wy
  %i.xb = call i64 @llvm.umin.i64(i64 %i.wz, i64 1152921504606846975)
  %i.xc = select i1 %i.xa, i64 1152921504606846975, i64 %i.xb ; 3 uses
  %.not.i.i.i385 = icmp ne i64 %i.xc, 0
  call void @llvm.assume(i1 %.not.i.i.i385)
  %i.xd = shl nuw nsw i64 %i.xc, 3
  %i.xe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xd) #25
          to label %.noexc396 unwind label %.loopexit580 ; 8 uses

.noexc396:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i383
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.ww ; 2 uses
  %i.xg = trunc nuw nsw i64 %indvars.iv704 to i32
  store i32 %i.xg, ptr %i.xf, align 4
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xf, i64 4
  store float %i.wk, ptr %i.xh, align 4
  %.not10.i.i.i.i.i386 = icmp eq ptr %i.wt, %i.wm
  br i1 %.not10.i.i.i.i.i386, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i391, label %.lr.ph.i.i.i.i.i387.preheader

.lr.ph.i.i.i.i.i387.preheader:                    ; preds = %.noexc396
  %i.xi = ptrtoaddr ptr %i.xe to i64
  %i.xj = add i64 %i.wu, -8
  %i.xk = sub i64 %i.xj, %i.wv                    ; 2 uses
  %i.xl = lshr i64 %i.xk, 3
  %i.xm = add nuw nsw i64 %i.xl, 1                ; 2 uses
  %min.iters.check979 = icmp ult i64 %i.xk, 24
  %i.xn = sub i64 %i.xi, %i.wv
  %diff.check977 = icmp ult i64 %i.xn, 32
  %or.cond1091 = or i1 %min.iters.check979, %diff.check977
  br i1 %or.cond1091, label %.lr.ph.i.i.i.i.i387.preheader1103, label %vector.ph980

vector.ph980:                                     ; preds = %.lr.ph.i.i.i.i.i387.preheader
  %n.vec982 = and i64 %i.xm, 4611686018427387900  ; 3 uses
  %i.xo = shl i64 %n.vec982, 3                    ; 2 uses
  %i.xp = getelementptr i8, ptr %i.xe, i64 %i.xo  ; 2 uses
  %i.xq = getelementptr i8, ptr %i.wt, i64 %i.xo
  br label %vector.body983

vector.body983:                                   ; preds = %vector.body983, %vector.ph980
  %index984 = phi i64 [ 0, %vector.ph980 ], [ %index.next989, %vector.body983 ] ; 2 uses
  %i.xr = shl i64 %index984, 3                    ; 2 uses
  %next.gep985 = getelementptr i8, ptr %i.xe, i64 %i.xr ; 2 uses
  %next.gep986 = getelementptr i8, ptr %i.wt, i64 %i.xr ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.xs = getelementptr i8, ptr %next.gep986, i64 16
  %wide.load987 = load <2 x i64>, ptr %next.gep986, align 4, !alias.scope !89, !noalias !86
  %wide.load988 = load <2 x i64>, ptr %i.xs, align 4, !alias.scope !89, !noalias !86
  %i.xt = getelementptr i8, ptr %next.gep985, i64 16
  store <2 x i64> %wide.load987, ptr %next.gep985, align 4, !alias.scope !86, !noalias !89
  store <2 x i64> %wide.load988, ptr %i.xt, align 4, !alias.scope !86, !noalias !89
  %index.next989 = add nuw i64 %index984, 4       ; 2 uses
  %i.xu = icmp eq i64 %index.next989, %n.vec982
  br i1 %i.xu, label %middle.block990, label %vector.body983, !llvm.loop !91

middle.block990:                                  ; preds = %vector.body983
  %cmp.n991 = icmp eq i64 %i.xm, %n.vec982
  br i1 %cmp.n991, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i391, label %.lr.ph.i.i.i.i.i387.preheader1103

.lr.ph.i.i.i.i.i387.preheader1103:                ; preds = %.lr.ph.i.i.i.i.i387.preheader, %middle.block990
  %.012.i.i.i.i.i388.ph = phi ptr [ %i.xe, %.lr.ph.i.i.i.i.i387.preheader ], [ %i.xp, %middle.block990 ]
  %.0911.i.i.i.i.i389.ph = phi ptr [ %i.wt, %.lr.ph.i.i.i.i.i387.preheader ], [ %i.xq, %middle.block990 ]
  br label %.lr.ph.i.i.i.i.i387

.lr.ph.i.i.i.i.i387:                              ; preds = %.lr.ph.i.i.i.i.i387.preheader1103, %.lr.ph.i.i.i.i.i387
  %.012.i.i.i.i.i388 = phi ptr [ %i.xx, %.lr.ph.i.i.i.i.i387 ], [ %.012.i.i.i.i.i388.ph, %.lr.ph.i.i.i.i.i387.preheader1103 ] ; 2 uses
  %.0911.i.i.i.i.i389 = phi ptr [ %i.xw, %.lr.ph.i.i.i.i.i387 ], [ %.0911.i.i.i.i.i389.ph, %.lr.ph.i.i.i.i.i387.preheader1103 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.xv = load i64, ptr %.0911.i.i.i.i.i389, align 4, !alias.scope !89, !noalias !86
  store i64 %i.xv, ptr %.012.i.i.i.i.i388, align 4, !alias.scope !86, !noalias !89
  %i.xw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i389, i64 8 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i388, i64 8 ; 2 uses
  %.not.i.i.i.i.i390 = icmp eq ptr %i.xw, %i.wm
  br i1 %.not.i.i.i.i.i390, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i391, label %.lr.ph.i.i.i.i.i387, !llvm.loop !92

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i391: ; preds = %.lr.ph.i.i.i.i.i387, %middle.block990, %.noexc396
  %.0.lcssa.i.i.i.i.i392 = phi ptr [ %i.xe, %.noexc396 ], [ %i.xp, %middle.block990 ], [ %i.xx, %.lr.ph.i.i.i.i.i387 ]
  %i.xy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i392, i64 8
  %.not.i34.i.i393 = icmp eq ptr %i.wt, null
  br i1 %.not.i34.i.i393, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i394, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i391
  call void @_ZdlPvm(ptr noundef nonnull %i.wt, i64 noundef %i.ww) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i394

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i394: ; preds = %bb.bn, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i391
  store ptr %i.xe, ptr %i.wi, align 8
  store ptr %i.xy, ptr %i.wl, align 8
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.xc
  store ptr %i.xz, ptr %i.wn, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit

.loopexit580:                                     ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i383
  %lpad.loopexit582 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit.split-lp581:                            ; preds = %bb.bm
  %lpad.loopexit.split-lp583 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

31:                                               ; preds = %.thread571
  br i1 %i.ej, label %bb.bo, label %32

32:                                               ; preds = %31
  %33 = call ptr @__dynamic_cast(ptr nonnull %i.ei, ptr nonnull @_ZTIN3pmx17PmxVertexSkinningE, ptr nonnull @_ZTIN3pmx21PmxVertexSkinningQDEFE, i64 0) #22
  br label %bb.bo

bb.bo:                                            ; preds = %31, %32
  %34 = phi ptr [ %33, %32 ], [ null, %31 ]       ; 8 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.yb = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not10.i.i.i.i398 = icmp eq ptr %i.yb, null
  br i1 %.not10.i.i.i.i398, label %.critedge.i409, label %.lr.ph.i.i.i.i399

.lr.ph.i.i.i.i399:                                ; preds = %bb.bo
  %i.yc = load i32, ptr %i.ya, align 4            ; 2 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.lr.ph.i.i.i.i399
  %.012.i.i.i.i400 = phi ptr [ %i.yb, %.lr.ph.i.i.i.i399 ], [ %.1.i.i.i.i405, %bb.bp ] ; 4 uses
  %.0811.i.i.i.i401 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i399 ], [ %.19.i.i.i.i402, %bb.bp ] ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i400, i64 32
  %i.ye = load i32, ptr %i.yd, align 4
  %i.yf = icmp slt i32 %i.ye, %i.yc               ; 3 uses
  %.19.i.i.i.i402 = select i1 %i.yf, ptr %.0811.i.i.i.i401, ptr %.012.i.i.i.i400 ; 5 uses
  %.1.in.v.i.i.i.i403 = select i1 %i.yf, i64 24, i64 16
  %.1.in.i.i.i.i404 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i400, i64 %.1.in.v.i.i.i.i403
  %.1.i.i.i.i405 = load ptr, ptr %.1.in.i.i.i.i404, align 8 ; 2 uses
  %.not.i.i.i.i406 = icmp eq ptr %.1.i.i.i.i405, null
  br i1 %.not.i.i.i.i406, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i407, label %bb.bp, !llvm.loop !29

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i407: ; preds = %bb.bp
  %i.yg = icmp eq ptr %.19.i.i.i.i402, %i.cl
  br i1 %i.yg, label %.critedge.i409, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i407
  %.19.i.i.i.i402.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.yf, ptr %.0811.i.i.i.i401, ptr %.012.i.i.i.i400
  %.19.i.i.i.i402.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i402.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.yh = load i32, ptr %.19.i.i.i.i402.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.yi = icmp slt i32 %i.yc, %i.yh
  br i1 %i.yi, label %.critedge.i409, label %bb.br

.critedge.i409:                                   ; preds = %bb.bq, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i407, %bb.bo
  %.08.lcssa.i.i.i11.i410 = phi ptr [ %.19.i.i.i.i402, %bb.bq ], [ %.19.i.i.i.i402, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i407 ], [ %i.cl, %bb.bo ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %i.ya, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.yj = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr %.08.lcssa.i.i.i11.i410, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc411 unwind label %.loopexit574

.noexc411:                                        ; preds = %.critedge.i409
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.br

bb.br:                                            ; preds = %.noexc411, %bb.bq
  %.sroa.06.0.i408 = phi ptr [ %i.yj, %.noexc411 ], [ %.19.i.i.i.i402, %bb.bq ] ; 3 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i408, i64 40 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %34, i64 24 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i408, i64 48 ; 4 uses
  %i.yn = load ptr, ptr %i.ym, align 8            ; 6 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i408, i64 56 ; 2 uses
  %i.yp = load ptr, ptr %i.yo, align 8
  %.not.i413 = icmp eq ptr %i.yn, %i.yp
  br i1 %.not.i413, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.yq = load float, ptr %i.yl, align 4
  %i.yr = trunc nuw nsw i64 %indvars.iv704 to i32
  store i32 %i.yr, ptr %i.yn, align 4
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yn, i64 4
  store float %i.yq, ptr %i.ys, align 4
  %i.yt = load ptr, ptr %i.ym, align 8
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 8
  store ptr %i.yu, ptr %i.ym, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit428

bb.bt:                                            ; preds = %bb.br
  %i.yv = load ptr, ptr %i.yk, align 8            ; 7 uses
  %i.yw = ptrtoint ptr %i.yn to i64               ; 2 uses
  %i.yx = ptrtoint ptr %i.yv to i64               ; 3 uses
  %i.yy = sub i64 %i.yw, %i.yx                    ; 4 uses
  %i.yz = icmp eq i64 %i.yy, 9223372036854775800
  br i1 %i.yz, label %.invoke836, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i414

.invoke836:                                       ; preds = %bb.cl, %bb.cf, %bb.bz, %bb.bt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
          to label %.cont837 unwind label %.loopexit.split-lp

.cont837:                                         ; preds = %.invoke836
  unreachable

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i414: ; preds = %bb.bt
  %i.za = ashr exact i64 %i.yy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i415 = call i64 @llvm.umax.i64(i64 %i.za, i64 1)
  %i.zb = add nsw i64 %.sroa.speculated.i.i.i415, %i.za ; 2 uses
  %i.zc = icmp ult i64 %i.zb, %i.za
  %i.zd = call i64 @llvm.umin.i64(i64 %i.zb, i64 1152921504606846975)
  %i.ze = select i1 %i.zc, i64 1152921504606846975, i64 %i.zd ; 3 uses
  %.not.i.i.i416 = icmp ne i64 %i.ze, 0
  call void @llvm.assume(i1 %.not.i.i.i416)
  %i.zf = shl nuw nsw i64 %i.ze, 3
  %i.zg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zf) #25
          to label %.noexc427 unwind label %.loopexit574 ; 8 uses

.noexc427:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i414
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.yy ; 2 uses
  %i.zi = load float, ptr %i.yl, align 4
  %i.zj = trunc nuw nsw i64 %indvars.iv704 to i32
  store i32 %i.zj, ptr %i.zh, align 4
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zh, i64 4
  store float %i.zi, ptr %i.zk, align 4
  %.not10.i.i.i.i.i417 = icmp eq ptr %i.yv, %i.yn
  br i1 %.not10.i.i.i.i.i417, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i422, label %.lr.ph.i.i.i.i.i418.preheader

.lr.ph.i.i.i.i.i418.preheader:                    ; preds = %.noexc427
  %i.zl = ptrtoaddr ptr %i.zg to i64
  %i.zm = add i64 %i.yw, -8
  %i.zn = sub i64 %i.zm, %i.yx                    ; 2 uses
  %i.zo = lshr i64 %i.zn, 3
  %i.zp = add nuw nsw i64 %i.zo, 1                ; 2 uses
  %min.iters.check1069 = icmp ult i64 %i.zn, 24
  %i.zq = sub i64 %i.zl, %i.yx
  %diff.check1067 = icmp ult i64 %i.zq, 32
  %or.cond1092 = or i1 %min.iters.check1069, %diff.check1067
  br i1 %or.cond1092, label %.lr.ph.i.i.i.i.i418.preheader1108, label %vector.ph1070

vector.ph1070:                                    ; preds = %.lr.ph.i.i.i.i.i418.preheader
  %n.vec1072 = and i64 %i.zp, 4611686018427387900 ; 3 uses
  %i.zr = shl i64 %n.vec1072, 3                   ; 2 uses
  %i.zs = getelementptr i8, ptr %i.zg, i64 %i.zr  ; 2 uses
  %i.zt = getelementptr i8, ptr %i.yv, i64 %i.zr
  br label %vector.body1073

vector.body1073:                                  ; preds = %vector.body1073, %vector.ph1070
  %index1074 = phi i64 [ 0, %vector.ph1070 ], [ %index.next1079, %vector.body1073 ] ; 2 uses
  %i.zu = shl i64 %index1074, 3                   ; 2 uses
  %next.gep1075 = getelementptr i8, ptr %i.zg, i64 %i.zu ; 2 uses
  %next.gep1076 = getelementptr i8, ptr %i.yv, i64 %i.zu ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.zv = getelementptr i8, ptr %next.gep1076, i64 16
  %wide.load1077 = load <2 x i64>, ptr %next.gep1076, align 4, !alias.scope !96, !noalias !93
  %wide.load1078 = load <2 x i64>, ptr %i.zv, align 4, !alias.scope !96, !noalias !93
  %i.zw = getelementptr i8, ptr %next.gep1075, i64 16
  store <2 x i64> %wide.load1077, ptr %next.gep1075, align 4, !alias.scope !93, !noalias !96
  store <2 x i64> %wide.load1078, ptr %i.zw, align 4, !alias.scope !93, !noalias !96
  %index.next1079 = add nuw i64 %index1074, 4     ; 2 uses
  %i.zx = icmp eq i64 %index.next1079, %n.vec1072
  br i1 %i.zx, label %middle.block1080, label %vector.body1073, !llvm.loop !98

middle.block1080:                                 ; preds = %vector.body1073
  %cmp.n1081 = icmp eq i64 %i.zp, %n.vec1072
  br i1 %cmp.n1081, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i422, label %.lr.ph.i.i.i.i.i418.preheader1108

.lr.ph.i.i.i.i.i418.preheader1108:                ; preds = %.lr.ph.i.i.i.i.i418.preheader, %middle.block1080
  %.012.i.i.i.i.i419.ph = phi ptr [ %i.zg, %.lr.ph.i.i.i.i.i418.preheader ], [ %i.zs, %middle.block1080 ]
  %.0911.i.i.i.i.i420.ph = phi ptr [ %i.yv, %.lr.ph.i.i.i.i.i418.preheader ], [ %i.zt, %middle.block1080 ]
  br label %.lr.ph.i.i.i.i.i418

.lr.ph.i.i.i.i.i418:                              ; preds = %.lr.ph.i.i.i.i.i418.preheader1108, %.lr.ph.i.i.i.i.i418
  %.012.i.i.i.i.i419 = phi ptr [ %i.aaa, %.lr.ph.i.i.i.i.i418 ], [ %.012.i.i.i.i.i419.ph, %.lr.ph.i.i.i.i.i418.preheader1108 ] ; 2 uses
  %.0911.i.i.i.i.i420 = phi ptr [ %i.zz, %.lr.ph.i.i.i.i.i418 ], [ %.0911.i.i.i.i.i420.ph, %.lr.ph.i.i.i.i.i418.preheader1108 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.zy = load i64, ptr %.0911.i.i.i.i.i420, align 4, !alias.scope !96, !noalias !93
  store i64 %i.zy, ptr %.012.i.i.i.i.i419, align 4, !alias.scope !93, !noalias !96
  %i.zz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i420, i64 8 ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i419, i64 8 ; 2 uses
  %.not.i.i.i.i.i421 = icmp eq ptr %i.zz, %i.yn
  br i1 %.not.i.i.i.i.i421, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i422, label %.lr.ph.i.i.i.i.i418, !llvm.loop !99

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i422: ; preds = %.lr.ph.i.i.i.i.i418, %middle.block1080, %.noexc427
  %.0.lcssa.i.i.i.i.i423 = phi ptr [ %i.zg, %.noexc427 ], [ %i.zs, %middle.block1080 ], [ %i.aaa, %.lr.ph.i.i.i.i.i418 ]
  %i.aab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i423, i64 8
  %.not.i34.i.i424 = icmp eq ptr %i.yv, null
  br i1 %.not.i34.i.i424, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i425, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i422
  call void @_ZdlPvm(ptr noundef nonnull %i.yv, i64 noundef %i.yy) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i425

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i425: ; preds = %bb.bu, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i422
  store ptr %i.zg, ptr %i.yk, align 8
  store ptr %i.aab, ptr %i.ym, align 8
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.zg, i64 %i.ze
  store ptr %i.aac, ptr %i.yo, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit428

_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit428: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i425, %bb.bs
  %i.aad = getelementptr inbounds nuw i8, ptr %34, i64 12 ; 2 uses
  %i.aae = load ptr, ptr %i.cm, align 8           ; 2 uses
  %.not10.i.i.i.i429 = icmp eq ptr %i.aae, null
  br i1 %.not10.i.i.i.i429, label %.critedge.i440, label %.lr.ph.i.i.i.i430

.lr.ph.i.i.i.i430:                                ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit428
  %i.aaf = load i32, ptr %i.aad, align 4          ; 2 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.lr.ph.i.i.i.i430
  %.012.i.i.i.i431 = phi ptr [ %i.aae, %.lr.ph.i.i.i.i430 ], [ %.1.i.i.i.i436, %bb.bv ] ; 4 uses
  %.0811.i.i.i.i432 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i430 ], [ %.19.i.i.i.i433, %bb.bv ] ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i431, i64 32
  %i.aah = load i32, ptr %i.aag, align 4
  %i.aai = icmp slt i32 %i.aah, %i.aaf            ; 3 uses
  %.19.i.i.i.i433 = select i1 %i.aai, ptr %.0811.i.i.i.i432, ptr %.012.i.i.i.i431 ; 5 uses
  %.1.in.v.i.i.i.i434 = select i1 %i.aai, i64 24, i64 16
  %.1.in.i.i.i.i435 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i431, i64 %.1.in.v.i.i.i.i434
  %.1.i.i.i.i436 = load ptr, ptr %.1.in.i.i.i.i435, align 8 ; 2 uses
  %.not.i.i.i.i437 = icmp eq ptr %.1.i.i.i.i436, null
  br i1 %.not.i.i.i.i437, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i438, label %bb.bv, !llvm.loop !29

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i438: ; preds = %bb.bv
  %i.aaj = icmp eq ptr %.19.i.i.i.i433, %i.cl
  br i1 %i.aaj, label %.critedge.i440, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i438
  %.19.i.i.i.i433.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.aai, ptr %.0811.i.i.i.i432, ptr %.012.i.i.i.i431
  %.19.i.i.i.i433.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i433.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.aak = load i32, ptr %.19.i.i.i.i433.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.aal = icmp slt i32 %i.aaf, %i.aak
  br i1 %i.aal, label %.critedge.i440, label %bb.bx

.critedge.i440:                                   ; preds = %bb.bw, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i438, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit428
  %.08.lcssa.i.i.i11.i441 = phi ptr [ %.19.i.i.i.i433, %bb.bw ], [ %.19.i.i.i.i433, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i438 ], [ %i.cl, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit428 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %i.aad, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.aam = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr %.08.lcssa.i.i.i11.i441, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc442 unwind label %.loopexit574

.noexc442:                                        ; preds = %.critedge.i440
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.bx

bb.bx:                                            ; preds = %.noexc442, %bb.bw
  %.sroa.06.0.i439 = phi ptr [ %i.aam, %.noexc442 ], [ %.19.i.i.i.i433, %bb.bw ] ; 3 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i439, i64 40 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %34, i64 28 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i439, i64 48 ; 4 uses
  %i.aaq = load ptr, ptr %i.aap, align 8          ; 6 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i439, i64 56 ; 2 uses
  %i.aas = load ptr, ptr %i.aar, align 8
  %.not.i444 = icmp eq ptr %i.aaq, %i.aas
  br i1 %.not.i444, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.aat = load float, ptr %i.aao, align 4
  %i.aau = trunc nuw nsw i64 %indvars.iv704 to i32
  store i32 %i.aau, ptr %i.aaq, align 4
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aaq, i64 4
  store float %i.aat, ptr %i.aav, align 4
  %i.aaw = load ptr, ptr %i.aap, align 8
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8
  store ptr %i.aax, ptr %i.aap, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit459

bb.bz:                                            ; preds = %bb.bx
  %i.aay = load ptr, ptr %i.aan, align 8          ; 7 uses
  %i.aaz = ptrtoint ptr %i.aaq to i64             ; 2 uses
  %i.aba = ptrtoint ptr %i.aay to i64             ; 3 uses
  %i.abb = sub i64 %i.aaz, %i.aba                 ; 4 uses
  %i.abc = icmp eq i64 %i.abb, 9223372036854775800
  br i1 %i.abc, label %.invoke836, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i445

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i445: ; preds = %bb.bz
  %i.abd = ashr exact i64 %i.abb, 3               ; 3 uses
  %.sroa.speculated.i.i.i446 = call i64 @llvm.umax.i64(i64 %i.abd, i64 1)
  %i.abe = add nsw i64 %.sroa.speculated.i.i.i446, %i.abd ; 2 uses
  %i.abf = icmp ult i64 %i.abe, %i.abd
  %i.abg = call i64 @llvm.umin.i64(i64 %i.abe, i64 1152921504606846975)
  %i.abh = select i1 %i.abf, i64 1152921504606846975, i64 %i.abg ; 3 uses
  %.not.i.i.i447 = icmp ne i64 %i.abh, 0
  call void @llvm.assume(i1 %.not.i.i.i447)
  %i.abi = shl nuw nsw i64 %i.abh, 3
  %i.abj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abi) #25
          to label %.noexc458 unwind label %.loopexit574 ; 8 uses

.noexc458:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i445
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.abb ; 2 uses
  %i.abl = load float, ptr %i.aao, align 4
  %i.abm = trunc nuw nsw i64 %indvars.iv704 to i32
  store i32 %i.abm, ptr %i.abk, align 4
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abk, i64 4
  store float %i.abl, ptr %i.abn, align 4
  %.not10.i.i.i.i.i448 = icmp eq ptr %i.aay, %i.aaq
  br i1 %.not10.i.i.i.i.i448, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i453, label %.lr.ph.i.i.i.i.i449.preheader

.lr.ph.i.i.i.i.i449.preheader:                    ; preds = %.noexc458
  %i.abo = ptrtoaddr ptr %i.abj to i64
  %i.abp = add i64 %i.aaz, -8
  %i.abq = sub i64 %i.abp, %i.aba                 ; 2 uses
  %i.abr = lshr i64 %i.abq, 3
  %i.abs = add nuw nsw i64 %i.abr, 1              ; 2 uses
  %min.iters.check1051 = icmp ult i64 %i.abq, 24
  %i.abt = sub i64 %i.abo, %i.aba
  %diff.check1049 = icmp ult i64 %i.abt, 32
  %or.cond1093 = or i1 %min.iters.check1051, %diff.check1049
  br i1 %or.cond1093, label %.lr.ph.i.i.i.i.i449.preheader1107, label %vector.ph1052

vector.ph1052:                                    ; preds = %.lr.ph.i.i.i.i.i449.preheader
  %n.vec1054 = and i64 %i.abs, 4611686018427387900 ; 3 uses
  %i.abu = shl i64 %n.vec1054, 3                  ; 2 uses
  %i.abv = getelementptr i8, ptr %i.abj, i64 %i.abu ; 2 uses
  %i.abw = getelementptr i8, ptr %i.aay, i64 %i.abu
  br label %vector.body1055

vector.body1055:                                  ; preds = %vector.body1055, %vector.ph1052
  %index1056 = phi i64 [ 0, %vector.ph1052 ], [ %index.next1061, %vector.body1055 ] ; 2 uses
  %i.abx = shl i64 %index1056, 3                  ; 2 uses
  %next.gep1057 = getelementptr i8, ptr %i.abj, i64 %i.abx ; 2 uses
  %next.gep1058 = getelementptr i8, ptr %i.aay, i64 %i.abx ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.aby = getelementptr i8, ptr %next.gep1058, i64 16
  %wide.load1059 = load <2 x i64>, ptr %next.gep1058, align 4, !alias.scope !103, !noalias !100
  %wide.load1060 = load <2 x i64>, ptr %i.aby, align 4, !alias.scope !103, !noalias !100
  %i.abz = getelementptr i8, ptr %next.gep1057, i64 16
  store <2 x i64> %wide.load1059, ptr %next.gep1057, align 4, !alias.scope !100, !noalias !103
  store <2 x i64> %wide.load1060, ptr %i.abz, align 4, !alias.scope !100, !noalias !103
  %index.next1061 = add nuw i64 %index1056, 4     ; 2 uses
  %i.aca = icmp eq i64 %index.next1061, %n.vec1054
  br i1 %i.aca, label %middle.block1062, label %vector.body1055, !llvm.loop !105

middle.block1062:                                 ; preds = %vector.body1055
  %cmp.n1063 = icmp eq i64 %i.abs, %n.vec1054
  br i1 %cmp.n1063, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i453, label %.lr.ph.i.i.i.i.i449.preheader1107

.lr.ph.i.i.i.i.i449.preheader1107:                ; preds = %.lr.ph.i.i.i.i.i449.preheader, %middle.block1062
  %.012.i.i.i.i.i450.ph = phi ptr [ %i.abj, %.lr.ph.i.i.i.i.i449.preheader ], [ %i.abv, %middle.block1062 ]
  %.0911.i.i.i.i.i451.ph = phi ptr [ %i.aay, %.lr.ph.i.i.i.i.i449.preheader ], [ %i.abw, %middle.block1062 ]
  br label %.lr.ph.i.i.i.i.i449

.lr.ph.i.i.i.i.i449:                              ; preds = %.lr.ph.i.i.i.i.i449.preheader1107, %.lr.ph.i.i.i.i.i449
  %.012.i.i.i.i.i450 = phi ptr [ %i.acd, %.lr.ph.i.i.i.i.i449 ], [ %.012.i.i.i.i.i450.ph, %.lr.ph.i.i.i.i.i449.preheader1107 ] ; 2 uses
  %.0911.i.i.i.i.i451 = phi ptr [ %i.acc, %.lr.ph.i.i.i.i.i449 ], [ %.0911.i.i.i.i.i451.ph, %.lr.ph.i.i.i.i.i449.preheader1107 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.acb = load i64, ptr %.0911.i.i.i.i.i451, align 4, !alias.scope !103, !noalias !100
  store i64 %i.acb, ptr %.012.i.i.i.i.i450, align 4, !alias.scope !100, !noalias !103
  %i.acc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i451, i64 8 ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i450, i64 8 ; 2 uses
  %.not.i.i.i.i.i452 = icmp eq ptr %i.acc, %i.aaq
  br i1 %.not.i.i.i.i.i452, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i453, label %.lr.ph.i.i.i.i.i449, !llvm.loop !106

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i453: ; preds = %.lr.ph.i.i.i.i.i449, %middle.block1062, %.noexc458
  %.0.lcssa.i.i.i.i.i454 = phi ptr [ %i.abj, %.noexc458 ], [ %i.abv, %middle.block1062 ], [ %i.acd, %.lr.ph.i.i.i.i.i449 ]
  %i.ace = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i454, i64 8
  %.not.i34.i.i455 = icmp eq ptr %i.aay, null
  br i1 %.not.i34.i.i455, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i456, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i453
  call void @_ZdlPvm(ptr noundef nonnull %i.aay, i64 noundef %i.abb) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i456

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i456: ; preds = %bb.ca, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i453
  store ptr %i.abj, ptr %i.aan, align 8
  store ptr %i.ace, ptr %i.aap, align 8
  %i.acf = getelementptr inbounds nuw [8 x i8], ptr %i.abj, i64 %i.abh
  store ptr %i.acf, ptr %i.aar, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit459

_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit459: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i456, %bb.by
  %i.acg = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.ach = load ptr, ptr %i.cm, align 8           ; 2 uses
  %.not10.i.i.i.i460 = icmp eq ptr %i.ach, null
  br i1 %.not10.i.i.i.i460, label %.critedge.i471, label %.lr.ph.i.i.i.i461

.lr.ph.i.i.i.i461:                                ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit459
  %i.aci = load i32, ptr %i.acg, align 4          ; 2 uses
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %.lr.ph.i.i.i.i461
  %.012.i.i.i.i462 = phi ptr [ %i.ach, %.lr.ph.i.i.i.i461 ], [ %.1.i.i.i.i467, %bb.cb ] ; 4 uses
  %.0811.i.i.i.i463 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i461 ], [ %.19.i.i.i.i464, %bb.cb ] ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i462, i64 32
  %i.ack = load i32, ptr %i.acj, align 4
  %i.acl = icmp slt i32 %i.ack, %i.aci            ; 3 uses
  %.19.i.i.i.i464 = select i1 %i.acl, ptr %.0811.i.i.i.i463, ptr %.012.i.i.i.i462 ; 5 uses
  %.1.in.v.i.i.i.i465 = select i1 %i.acl, i64 24, i64 16
  %.1.in.i.i.i.i466 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i462, i64 %.1.in.v.i.i.i.i465
  %.1.i.i.i.i467 = load ptr, ptr %.1.in.i.i.i.i466, align 8 ; 2 uses
  %.not.i.i.i.i468 = icmp eq ptr %.1.i.i.i.i467, null
  br i1 %.not.i.i.i.i468, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i469, label %bb.cb, !llvm.loop !29

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i469: ; preds = %bb.cb
  %i.acm = icmp eq ptr %.19.i.i.i.i464, %i.cl
  br i1 %i.acm, label %.critedge.i471, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i469
  %.19.i.i.i.i464.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.acl, ptr %.0811.i.i.i.i463, ptr %.012.i.i.i.i462
  %.19.i.i.i.i464.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i464.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.acn = load i32, ptr %.19.i.i.i.i464.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.aco = icmp slt i32 %i.aci, %i.acn
  br i1 %i.aco, label %.critedge.i471, label %bb.cd

.critedge.i471:                                   ; preds = %bb.cc, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i469, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit459
  %.08.lcssa.i.i.i11.i472 = phi ptr [ %.19.i.i.i.i464, %bb.cc ], [ %.19.i.i.i.i464, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i469 ], [ %i.cl, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit459 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %i.acg, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.acp = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr %.08.lcssa.i.i.i11.i472, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc473 unwind label %.loopexit574

.noexc473:                                        ; preds = %.critedge.i471
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.cd

bb.cd:                                            ; preds = %.noexc473, %bb.cc
  %.sroa.06.0.i470 = phi ptr [ %i.acp, %.noexc473 ], [ %.19.i.i.i.i464, %bb.cc ] ; 3 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i470, i64 40 ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %34, i64 32 ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i470, i64 48 ; 4 uses
  %i.act = load ptr, ptr %i.acs, align 8          ; 6 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i470, i64 56 ; 2 uses
  %i.acv = load ptr, ptr %i.acu, align 8
  %.not.i475 = icmp eq ptr %i.act, %i.acv
  br i1 %.not.i475, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.acw = load float, ptr %i.acr, align 4
  %i.acx = trunc nuw nsw i64 %indvars.iv704 to i32
  store i32 %i.acx, ptr %i.act, align 4
  %i.acy = getelementptr inbounds nuw i8, ptr %i.act, i64 4
  store float %i.acw, ptr %i.acy, align 4
  %i.acz = load ptr, ptr %i.acs, align 8
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 8
  store ptr %i.ada, ptr %i.acs, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit490

bb.cf:                                            ; preds = %bb.cd
  %i.adb = load ptr, ptr %i.acq, align 8          ; 7 uses
  %i.adc = ptrtoint ptr %i.act to i64             ; 2 uses
  %i.add = ptrtoint ptr %i.adb to i64             ; 3 uses
  %i.ade = sub i64 %i.adc, %i.add                 ; 4 uses
  %i.adf = icmp eq i64 %i.ade, 9223372036854775800
  br i1 %i.adf, label %.invoke836, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i476

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i476: ; preds = %bb.cf
  %i.adg = ashr exact i64 %i.ade, 3               ; 3 uses
  %.sroa.speculated.i.i.i477 = call i64 @llvm.umax.i64(i64 %i.adg, i64 1)
  %i.adh = add nsw i64 %.sroa.speculated.i.i.i477, %i.adg ; 2 uses
  %i.adi = icmp ult i64 %i.adh, %i.adg
  %i.adj = call i64 @llvm.umin.i64(i64 %i.adh, i64 1152921504606846975)
  %i.adk = select i1 %i.adi, i64 1152921504606846975, i64 %i.adj ; 3 uses
  %.not.i.i.i478 = icmp ne i64 %i.adk, 0
  call void @llvm.assume(i1 %.not.i.i.i478)
  %i.adl = shl nuw nsw i64 %i.adk, 3
  %i.adm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adl) #25
          to label %.noexc489 unwind label %.loopexit574 ; 8 uses

.noexc489:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i476
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 %i.ade ; 2 uses
  %i.ado = load float, ptr %i.acr, align 4
  %i.adp = trunc nuw nsw i64 %indvars.iv704 to i32
  store i32 %i.adp, ptr %i.adn, align 4
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adn, i64 4
  store float %i.ado, ptr %i.adq, align 4
  %.not10.i.i.i.i.i479 = icmp eq ptr %i.adb, %i.act
  br i1 %.not10.i.i.i.i.i479, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i484, label %.lr.ph.i.i.i.i.i480.preheader

.lr.ph.i.i.i.i.i480.preheader:                    ; preds = %.noexc489
  %i.adr = ptrtoaddr ptr %i.adm to i64
  %i.ads = add i64 %i.adc, -8
  %i.adt = sub i64 %i.ads, %i.add                 ; 2 uses
  %i.adu = lshr i64 %i.adt, 3
  %i.adv = add nuw nsw i64 %i.adu, 1              ; 2 uses
  %min.iters.check1033 = icmp ult i64 %i.adt, 24
  %i.adw = sub i64 %i.adr, %i.add
  %diff.check1031 = icmp ult i64 %i.adw, 32
  %or.cond1094 = or i1 %min.iters.check1033, %diff.check1031
  br i1 %or.cond1094, label %.lr.ph.i.i.i.i.i480.preheader1106, label %vector.ph1034

vector.ph1034:                                    ; preds = %.lr.ph.i.i.i.i.i480.preheader
  %n.vec1036 = and i64 %i.adv, 4611686018427387900 ; 3 uses
  %i.adx = shl i64 %n.vec1036, 3                  ; 2 uses
  %i.ady = getelementptr i8, ptr %i.adm, i64 %i.adx ; 2 uses
  %i.adz = getelementptr i8, ptr %i.adb, i64 %i.adx
  br label %vector.body1037

vector.body1037:                                  ; preds = %vector.body1037, %vector.ph1034
  %index1038 = phi i64 [ 0, %vector.ph1034 ], [ %index.next1043, %vector.body1037 ] ; 2 uses
  %i.aea = shl i64 %index1038, 3                  ; 2 uses
  %next.gep1039 = getelementptr i8, ptr %i.adm, i64 %i.aea ; 2 uses
  %next.gep1040 = getelementptr i8, ptr %i.adb, i64 %i.aea ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.aeb = getelementptr i8, ptr %next.gep1040, i64 16
  %wide.load1041 = load <2 x i64>, ptr %next.gep1040, align 4, !alias.scope !110, !noalias !107
  %wide.load1042 = load <2 x i64>, ptr %i.aeb, align 4, !alias.scope !110, !noalias !107
  %i.aec = getelementptr i8, ptr %next.gep1039, i64 16
  store <2 x i64> %wide.load1041, ptr %next.gep1039, align 4, !alias.scope !107, !noalias !110
  store <2 x i64> %wide.load1042, ptr %i.aec, align 4, !alias.scope !107, !noalias !110
  %index.next1043 = add nuw i64 %index1038, 4     ; 2 uses
  %i.aed = icmp eq i64 %index.next1043, %n.vec1036
  br i1 %i.aed, label %middle.block1044, label %vector.body1037, !llvm.loop !112

middle.block1044:                                 ; preds = %vector.body1037
  %cmp.n1045 = icmp eq i64 %i.adv, %n.vec1036
  br i1 %cmp.n1045, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i484, label %.lr.ph.i.i.i.i.i480.preheader1106

.lr.ph.i.i.i.i.i480.preheader1106:                ; preds = %.lr.ph.i.i.i.i.i480.preheader, %middle.block1044
  %.012.i.i.i.i.i481.ph = phi ptr [ %i.adm, %.lr.ph.i.i.i.i.i480.preheader ], [ %i.ady, %middle.block1044 ]
  %.0911.i.i.i.i.i482.ph = phi ptr [ %i.adb, %.lr.ph.i.i.i.i.i480.preheader ], [ %i.adz, %middle.block1044 ]
  br label %.lr.ph.i.i.i.i.i480

.lr.ph.i.i.i.i.i480:                              ; preds = %.lr.ph.i.i.i.i.i480.preheader1106, %.lr.ph.i.i.i.i.i480
  %.012.i.i.i.i.i481 = phi ptr [ %i.aeg, %.lr.ph.i.i.i.i.i480 ], [ %.012.i.i.i.i.i481.ph, %.lr.ph.i.i.i.i.i480.preheader1106 ] ; 2 uses
  %.0911.i.i.i.i.i482 = phi ptr [ %i.aef, %.lr.ph.i.i.i.i.i480 ], [ %.0911.i.i.i.i.i482.ph, %.lr.ph.i.i.i.i.i480.preheader1106 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.aee = load i64, ptr %.0911.i.i.i.i.i482, align 4, !alias.scope !110, !noalias !107
  store i64 %i.aee, ptr %.012.i.i.i.i.i481, align 4, !alias.scope !107, !noalias !110
  %i.aef = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i482, i64 8 ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i481, i64 8 ; 2 uses
  %.not.i.i.i.i.i483 = icmp eq ptr %i.aef, %i.act
  br i1 %.not.i.i.i.i.i483, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i484, label %.lr.ph.i.i.i.i.i480, !llvm.loop !113

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i484: ; preds = %.lr.ph.i.i.i.i.i480, %middle.block1044, %.noexc489
  %.0.lcssa.i.i.i.i.i485 = phi ptr [ %i.adm, %.noexc489 ], [ %i.ady, %middle.block1044 ], [ %i.aeg, %.lr.ph.i.i.i.i.i480 ]
  %i.aeh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i485, i64 8
  %.not.i34.i.i486 = icmp eq ptr %i.adb, null
  br i1 %.not.i34.i.i486, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i487, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i484
  call void @_ZdlPvm(ptr noundef nonnull %i.adb, i64 noundef %i.ade) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i487

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i487: ; preds = %bb.cg, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i484
  store ptr %i.adm, ptr %i.acq, align 8
  store ptr %i.aeh, ptr %i.acs, align 8
  %i.aei = getelementptr inbounds nuw [8 x i8], ptr %i.adm, i64 %i.adk
  store ptr %i.aei, ptr %i.acu, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit490

_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit490: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i487, %bb.ce
  %i.aej = getelementptr inbounds nuw i8, ptr %34, i64 20 ; 2 uses
  %i.aek = load ptr, ptr %i.cm, align 8           ; 2 uses
  %.not10.i.i.i.i491 = icmp eq ptr %i.aek, null
  br i1 %.not10.i.i.i.i491, label %.critedge.i502, label %.lr.ph.i.i.i.i492

.lr.ph.i.i.i.i492:                                ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit490
  %i.ael = load i32, ptr %i.aej, align 4          ; 2 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ch, %.lr.ph.i.i.i.i492
  %.012.i.i.i.i493 = phi ptr [ %i.aek, %.lr.ph.i.i.i.i492 ], [ %.1.i.i.i.i498, %bb.ch ] ; 4 uses
  %.0811.i.i.i.i494 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i492 ], [ %.19.i.i.i.i495, %bb.ch ] ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i493, i64 32
  %i.aen = load i32, ptr %i.aem, align 4
  %i.aeo = icmp slt i32 %i.aen, %i.ael            ; 3 uses
  %.19.i.i.i.i495 = select i1 %i.aeo, ptr %.0811.i.i.i.i494, ptr %.012.i.i.i.i493 ; 5 uses
  %.1.in.v.i.i.i.i496 = select i1 %i.aeo, i64 24, i64 16
  %.1.in.i.i.i.i497 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i493, i64 %.1.in.v.i.i.i.i496
  %.1.i.i.i.i498 = load ptr, ptr %.1.in.i.i.i.i497, align 8 ; 2 uses
  %.not.i.i.i.i499 = icmp eq ptr %.1.i.i.i.i498, null
  br i1 %.not.i.i.i.i499, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i500, label %bb.ch, !llvm.loop !29

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i500: ; preds = %bb.ch
  %i.aep = icmp eq ptr %.19.i.i.i.i495, %i.cl
  br i1 %i.aep, label %.critedge.i502, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i500
  %.19.i.i.i.i495.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.aeo, ptr %.0811.i.i.i.i494, ptr %.012.i.i.i.i493
  %.19.i.i.i.i495.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i495.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.aeq = load i32, ptr %.19.i.i.i.i495.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.aer = icmp slt i32 %i.ael, %i.aeq
  br i1 %i.aer, label %.critedge.i502, label %bb.cj

.critedge.i502:                                   ; preds = %bb.ci, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i500, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit490
  %.08.lcssa.i.i.i11.i503 = phi ptr [ %.19.i.i.i.i495, %bb.ci ], [ %.19.i.i.i.i495, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i500 ], [ %i.cl, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit490 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.aej, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.aes = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr %.08.lcssa.i.i.i11.i503, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc504 unwind label %.loopexit574

.noexc504:                                        ; preds = %.critedge.i502
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.cj

bb.cj:                                            ; preds = %.noexc504, %bb.ci
  %.sroa.06.0.i501 = phi ptr [ %i.aes, %.noexc504 ], [ %.19.i.i.i.i495, %bb.ci ] ; 3 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i501, i64 40 ; 2 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %34, i64 36 ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i501, i64 48 ; 4 uses
  %i.aew = load ptr, ptr %i.aev, align 8          ; 6 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i501, i64 56 ; 2 uses
  %i.aey = load ptr, ptr %i.aex, align 8
  %.not.i506 = icmp eq ptr %i.aew, %i.aey
  br i1 %.not.i506, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.aez = load float, ptr %i.aeu, align 4
  %i.afa = trunc nuw nsw i64 %indvars.iv704 to i32
  store i32 %i.afa, ptr %i.aew, align 4
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aew, i64 4
  store float %i.aez, ptr %i.afb, align 4
  %i.afc = load ptr, ptr %i.aev, align 8
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 8
  store ptr %i.afd, ptr %i.aev, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit

bb.cl:                                            ; preds = %bb.cj
  %i.afe = load ptr, ptr %i.aet, align 8          ; 7 uses
  %i.aff = ptrtoint ptr %i.aew to i64             ; 2 uses
  %i.afg = ptrtoint ptr %i.afe to i64             ; 3 uses
  %i.afh = sub i64 %i.aff, %i.afg                 ; 4 uses
  %i.afi = icmp eq i64 %i.afh, 9223372036854775800
  br i1 %i.afi, label %.invoke836, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i507

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i507: ; preds = %bb.cl
  %i.afj = ashr exact i64 %i.afh, 3               ; 3 uses
  %.sroa.speculated.i.i.i508 = call i64 @llvm.umax.i64(i64 %i.afj, i64 1)
  %i.afk = add nsw i64 %.sroa.speculated.i.i.i508, %i.afj ; 2 uses
  %i.afl = icmp ult i64 %i.afk, %i.afj
  %i.afm = call i64 @llvm.umin.i64(i64 %i.afk, i64 1152921504606846975)
  %i.afn = select i1 %i.afl, i64 1152921504606846975, i64 %i.afm ; 3 uses
  %.not.i.i.i509 = icmp ne i64 %i.afn, 0
  call void @llvm.assume(i1 %.not.i.i.i509)
  %i.afo = shl nuw nsw i64 %i.afn, 3
  %i.afp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afo) #25
          to label %.noexc520 unwind label %.loopexit574 ; 8 uses

.noexc520:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i507
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 %i.afh ; 2 uses
  %i.afr = load float, ptr %i.aeu, align 4
  %i.afs = trunc nuw nsw i64 %indvars.iv704 to i32
  store i32 %i.afs, ptr %i.afq, align 4
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afq, i64 4
  store float %i.afr, ptr %i.aft, align 4
  %.not10.i.i.i.i.i510 = icmp eq ptr %i.afe, %i.aew
  br i1 %.not10.i.i.i.i.i510, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i515, label %.lr.ph.i.i.i.i.i511.preheader

.lr.ph.i.i.i.i.i511.preheader:                    ; preds = %.noexc520
  %i.afu = ptrtoaddr ptr %i.afp to i64
  %i.afv = add i64 %i.aff, -8
  %i.afw = sub i64 %i.afv, %i.afg                 ; 2 uses
  %i.afx = lshr i64 %i.afw, 3
  %i.afy = add nuw nsw i64 %i.afx, 1              ; 2 uses
  %min.iters.check1015 = icmp ult i64 %i.afw, 24
  %i.afz = sub i64 %i.afu, %i.afg
  %diff.check1013 = icmp ult i64 %i.afz, 32
  %or.cond1095 = or i1 %min.iters.check1015, %diff.check1013
  br i1 %or.cond1095, label %.lr.ph.i.i.i.i.i511.preheader1105, label %vector.ph1016

vector.ph1016:                                    ; preds = %.lr.ph.i.i.i.i.i511.preheader
  %n.vec1018 = and i64 %i.afy, 4611686018427387900 ; 3 uses
  %i.aga = shl i64 %n.vec1018, 3                  ; 2 uses
  %i.agb = getelementptr i8, ptr %i.afp, i64 %i.aga ; 2 uses
  %i.agc = getelementptr i8, ptr %i.afe, i64 %i.aga
  br label %vector.body1019

vector.body1019:                                  ; preds = %vector.body1019, %vector.ph1016
  %index1020 = phi i64 [ 0, %vector.ph1016 ], [ %index.next1025, %vector.body1019 ] ; 2 uses
  %i.agd = shl i64 %index1020, 3                  ; 2 uses
  %next.gep1021 = getelementptr i8, ptr %i.afp, i64 %i.agd ; 2 uses
  %next.gep1022 = getelementptr i8, ptr %i.afe, i64 %i.agd ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.age = getelementptr i8, ptr %next.gep1022, i64 16
  %wide.load1023 = load <2 x i64>, ptr %next.gep1022, align 4, !alias.scope !117, !noalias !114
  %wide.load1024 = load <2 x i64>, ptr %i.age, align 4, !alias.scope !117, !noalias !114
  %i.agf = getelementptr i8, ptr %next.gep1021, i64 16
  store <2 x i64> %wide.load1023, ptr %next.gep1021, align 4, !alias.scope !114, !noalias !117
  store <2 x i64> %wide.load1024, ptr %i.agf, align 4, !alias.scope !114, !noalias !117
  %index.next1025 = add nuw i64 %index1020, 4     ; 2 uses
  %i.agg = icmp eq i64 %index.next1025, %n.vec1018
  br i1 %i.agg, label %middle.block1026, label %vector.body1019, !llvm.loop !119

middle.block1026:                                 ; preds = %vector.body1019
  %cmp.n1027 = icmp eq i64 %i.afy, %n.vec1018
  br i1 %cmp.n1027, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i515, label %.lr.ph.i.i.i.i.i511.preheader1105

.lr.ph.i.i.i.i.i511.preheader1105:                ; preds = %.lr.ph.i.i.i.i.i511.preheader, %middle.block1026
  %.012.i.i.i.i.i512.ph = phi ptr [ %i.afp, %.lr.ph.i.i.i.i.i511.preheader ], [ %i.agb, %middle.block1026 ]
  %.0911.i.i.i.i.i513.ph = phi ptr [ %i.afe, %.lr.ph.i.i.i.i.i511.preheader ], [ %i.agc, %middle.block1026 ]
  br label %.lr.ph.i.i.i.i.i511

.lr.ph.i.i.i.i.i511:                              ; preds = %.lr.ph.i.i.i.i.i511.preheader1105, %.lr.ph.i.i.i.i.i511
  %.012.i.i.i.i.i512 = phi ptr [ %i.agj, %.lr.ph.i.i.i.i.i511 ], [ %.012.i.i.i.i.i512.ph, %.lr.ph.i.i.i.i.i511.preheader1105 ] ; 2 uses
  %.0911.i.i.i.i.i513 = phi ptr [ %i.agi, %.lr.ph.i.i.i.i.i511 ], [ %.0911.i.i.i.i.i513.ph, %.lr.ph.i.i.i.i.i511.preheader1105 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.agh = load i64, ptr %.0911.i.i.i.i.i513, align 4, !alias.scope !117, !noalias !114
  store i64 %i.agh, ptr %.012.i.i.i.i.i512, align 4, !alias.scope !114, !noalias !117
  %i.agi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i513, i64 8 ; 2 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i512, i64 8 ; 2 uses
  %.not.i.i.i.i.i514 = icmp eq ptr %i.agi, %i.aew
  br i1 %.not.i.i.i.i.i514, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i515, label %.lr.ph.i.i.i.i.i511, !llvm.loop !120

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i515: ; preds = %.lr.ph.i.i.i.i.i511, %middle.block1026, %.noexc520
  %.0.lcssa.i.i.i.i.i516 = phi ptr [ %i.afp, %.noexc520 ], [ %i.agb, %middle.block1026 ], [ %i.agj, %.lr.ph.i.i.i.i.i511 ]
  %i.agk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i516, i64 8
  %.not.i34.i.i517 = icmp eq ptr %i.afe, null
  br i1 %.not.i34.i.i517, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i518, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i515
  call void @_ZdlPvm(ptr noundef nonnull %i.afe, i64 noundef %i.afh) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i518

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i518: ; preds = %bb.cm, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i515
  store ptr %i.afp, ptr %i.aet, align 8
  store ptr %i.agk, ptr %i.aev, align 8
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr %i.afp, i64 %i.afn
  store ptr %i.agl, ptr %i.aex, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit

.loopexit574:                                     ; preds = %.critedge.i409, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i414, %.critedge.i440, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i445, %.critedge.i471, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i476, %.critedge.i502, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i507
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit.split-lp:                               ; preds = %.invoke836
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i518, %bb.ck, %bb.bk, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i394, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i332, %bb.ax, %bb.x, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i208, %bb.j, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %.thread571
  %indvars.iv.next705 = add nuw nsw i64 %indvars.iv704, 1 ; 2 uses
  %exitcond708.not = icmp eq i64 %indvars.iv.next705, %i.bu
  br i1 %exitcond708.not, label %._crit_edge653, label %bb.c, !llvm.loop !121

bb.cn:                                            ; preds = %._crit_edge653
  %i.agm = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i32 %i.cy, ptr %i.agm, align 8
  store ptr %i.dd, ptr %i.e, align 8
  %i.agn = icmp sgt i32 %i.cy, 0
  br i1 %i.agn, label %.lr.ph659, label %._crit_edge660

.lr.ph659:                                        ; preds = %bb.cn
  %i.ago = getelementptr inbounds nuw i8, ptr %1, i64 216
  br label %bb.cq

._crit_edge660:                                   ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread, %bb.cn
  %i.agp = load ptr, ptr %i.cm, align 8
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef %i.agp)
          to label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEED2Ev.exit unwind label %bb.co

bb.co:                                            ; preds = %._crit_edge660
  %i.agq = landingpad { ptr, i32 }
          catch ptr null
  %i.agr = extractvalue { ptr, i32 } %i.agq, 0
  call void @__clang_call_terminate(ptr %i.agr) #26
  unreachable

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEED2Ev.exit: ; preds = %._crit_edge660
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  ret ptr %i.a

bb.cp:                                            ; preds = %._crit_edge653
  %i.ags = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.cq:                                            ; preds = %.lr.ph659, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread
  %i.agt = phi i32 [ %i.cy, %.lr.ph659 ], [ %i.ajf, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread ] ; 4 uses
  %indvars.iv712 = phi i64 [ 0, %.lr.ph659 ], [ %indvars.iv.next713, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread ] ; 5 uses
  %i.agu = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #25
          to label %bb.cr unwind label %bb.cw     ; 16 uses

bb.cr:                                            ; preds = %bb.cq
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 1056 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.agu, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.agv, align 4
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agu, i64 1060 ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agu, i64 1076 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.agw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.agx, align 4
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agu, i64 1080 ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agu, i64 1096 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.agy, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.agz, align 4
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agu, i64 1100 ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agu, i64 1116 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aha, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ahb, align 4
  %i.ahc = load ptr, ptr %i.ago, align 8
  %i.ahd = getelementptr inbounds nuw [176 x i8], ptr %i.ahc, i64 %indvars.iv712 ; 5 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 8
  %i.ahf = load i64, ptr %i.ahe, align 8          ; 4 uses
  %i.ahg = icmp ugt i64 %i.ahf, 1023
  br i1 %i.ahg, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ahh = trunc nuw nsw i64 %i.ahf to i32
  store i32 %i.ahh, ptr %i.agu, align 4
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.agu, i64 4 ; 2 uses
  %i.ahj = load ptr, ptr %i.ahd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ahi, ptr align 1 %i.ahj, i64 %i.ahf, i1 false)
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahi, i64 %i.ahf
  store i8 0, ptr %i.ahk, align 1
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahd, i64 64
  %i.ahm = load float, ptr %i.ahl, align 8
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahd, i64 68
  %i.aho = load float, ptr %i.ahn, align 4
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahd, i64 72
  %i.ahq = load float, ptr %i.ahp, align 8
  %i.ahr = fneg float %i.ahm
  %i.ahs = fneg float %i.aho
  %i.aht = fneg float %i.ahq
  store float 1.000000e+00, ptr %i.agv, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.agw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.agx, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.agy, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.agz, align 4
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.agu, i64 1104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ahu, i8 0, i64 12, i1 false)
  store float 1.000000e+00, ptr %i.ahb, align 4
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.agu, i64 1068
  store float %i.ahr, ptr %i.ahv, align 4
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.agu, i64 1084
  store float %i.ahs, ptr %i.ahw, align 4
  store float %i.aht, ptr %i.aha, align 4
  %i.ahx = load ptr, ptr %i.cm, align 8           ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ahx, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ct, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.ahx, %bb.ct ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.cl, %bb.ct ] ; 2 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ahz = load i32, ptr %i.ahy, align 4
  %i.aia = sext i32 %i.ahz to i64
  %i.aib = icmp sgt i64 %indvars.iv712, %i.aia    ; 3 uses
  %.19.i.i.i = select i1 %i.aib, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.aib, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i522 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i522, label %_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !29

_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.aic = icmp eq ptr %.19.i.i.i, %i.cl
  br i1 %i.aic, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.aib, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.aid = load i32, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.aie = sext i32 %i.aid to i64
  %i.aif = icmp slt i64 %indvars.iv712, %i.aie
  br i1 %i.aif, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit
  %i.aig = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40 ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 48
  %i.aii = load ptr, ptr %i.aih, align 8
  %i.aij = load ptr, ptr %i.aig, align 8
  %i.aik = ptrtoint ptr %i.aii to i64
  %i.ail = ptrtoint ptr %i.aij to i64
  %i.aim = sub i64 %i.aik, %i.ail
  %i.ain = ashr exact i64 %i.aim, 3               ; 2 uses
  %i.aio = trunc i64 %i.ain to i32                ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %i.agu, i64 1028 ; 2 uses
  store i32 %i.aio, ptr %i.aip, align 4
  %i.aiq = and i64 %i.ain, 4294967295             ; 2 uses
  %i.air = shl nuw nsw i64 %i.aiq, 3              ; 2 uses
  %i.ais = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.air) #25
          to label %bb.cv unwind label %bb.cx     ; 2 uses

bb.cv:                                            ; preds = %bb.cu
  %i.ait = icmp eq i64 %i.aiq, 0
  br i1 %i.ait, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.cv
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ais, i8 0, i64 %i.air, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.cv
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.agu, i64 1048 ; 2 uses
  store ptr %i.ais, ptr %i.aiu, align 8
  %.not = icmp eq i32 %i.aio, 0
  br i1 %.not, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread, label %.lr.ph656

bb.cw:                                            ; preds = %bb.cq
  %i.aiv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cu
  %i.aiw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.lr.ph656:                                        ; preds = %.loopexit, %.lr.ph656
  %indvars.iv709 = phi i64 [ %indvars.iv.next710, %.lr.ph656 ], [ 0, %.loopexit ] ; 3 uses
  %i.aix = load ptr, ptr %i.aig, align 8
  %i.aiy = getelementptr inbounds nuw [8 x i8], ptr %i.aix, i64 %indvars.iv709
  %i.aiz = load ptr, ptr %i.aiu, align 8
  %i.aja = getelementptr inbounds nuw [8 x i8], ptr %i.aiz, i64 %indvars.iv709
  %i.ajb = load i64, ptr %i.aiy, align 4
  store i64 %i.ajb, ptr %i.aja, align 4
  %indvars.iv.next710 = add nuw nsw i64 %indvars.iv709, 1 ; 2 uses
  %i.ajc = load i32, ptr %i.aip, align 4
  %i.ajd = zext i32 %i.ajc to i64
  %i.aje = icmp samesign ult i64 %indvars.iv.next710, %i.ajd
  br i1 %i.aje, label %.lr.ph656, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread.loopexit, !llvm.loop !122

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread.loopexit: ; preds = %.lr.ph656
  %.pre = load i32, ptr %i.cx, align 8
  br label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread: ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread.loopexit, %.loopexit, %_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.ct, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit
  %i.ajf = phi i32 [ %.pre, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread.loopexit ], [ %i.agt, %.loopexit ], [ %i.agt, %_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i ], [ %i.agt, %bb.ct ], [ %i.agt, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit ] ; 2 uses
  %i.ajg = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv712
  store ptr %i.agu, ptr %i.ajg, align 8
  %indvars.iv.next713 = add nuw nsw i64 %indvars.iv712, 1 ; 2 uses
  %i.ajh = sext i32 %i.ajf to i64
  %i.aji = icmp slt i64 %indvars.iv.next713, %i.ajh
  br i1 %i.aji, label %bb.cq, label %._crit_edge660, !llvm.loop !123

bb.cy:                                            ; preds = %.loopexit574, %.loopexit.split-lp, %.loopexit580, %.loopexit.split-lp581, %.loopexit585, %.loopexit.split-lp586, %.loopexit590, %.loopexit.split-lp591, %.loopexit575.a, %.loopexit.split-lp576, %bb.cw, %bb.cx, %bb.cp
  %.pn147.pn = phi { ptr, i32 } [ %i.ags, %bb.cp ], [ %lpad.loopexit.split-lp583, %.loopexit.split-lp581 ], [ %lpad.loopexit.split-lp578, %.loopexit.split-lp576 ], [ %i.aiw, %bb.cx ], [ %lpad.loopexit.split-lp593, %.loopexit.split-lp591 ], [ %lpad.loopexit.split-lp588, %.loopexit.split-lp586 ], [ %i.aiv, %bb.cw ], [ %lpad.loopexit577, %.loopexit575.a ], [ %lpad.loopexit592, %.loopexit590 ], [ %lpad.loopexit587, %.loopexit585 ], [ %lpad.loopexit582, %.loopexit580 ], [ %lpad.loopexit, %.loopexit574 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %30) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  resume { ptr, i32 } %.pn147.pn
}

declare void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN6Assimp11MMDImporter14CreateMaterialEPKN3pmx11PmxMaterialEPKNS1_8PmxModelE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.aiString, align 4           ; 5 uses
  %4 = alloca %struct.aiColor3D, align 8          ; 5 uses
  %5 = alloca %struct.aiColor3D, align 8          ; 5 uses
  %6 = alloca %struct.aiColor3D, align 8          ; 5 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %7 = alloca %struct.aiString, align 4           ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25 ; 11 uses
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.i, i8 0, i64 1024, i1 false)
  %i.j = and i64 %i.g, 4294966272
  %.not.i = icmp eq i64 %i.j, 0
  %spec.select.i = select i1 %.not.i, i32 %i.h, i32 1023 ; 2 uses
  store i32 %spec.select.i, ptr %3, align 4
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = zext i32 %spec.select.i to i64           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr align 1 %i.k, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  store i8 0, ptr %i.m, align 1
  %i.n = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %3, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.q = load float, ptr %i.p, align 8
  %i.r = load <2 x float>, ptr %i.o, align 8
  store <2 x float> %i.r, ptr %4, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.q, ptr %i.s, align 8
  %i.t = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %4, i32 noundef 12, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.w = load float, ptr %i.v, align 8
  %i.x = load <2 x float>, ptr %i.u, align 8
  store <2 x float> %i.x, ptr %5, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.w, ptr %i.y, align 8
  %i.z = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %5, i32 noundef 12, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ac = load float, ptr %i.ab, align 8
  %i.ad = load <2 x float>, ptr %i.aa, align 8
  store <2 x float> %i.ad, ptr %6, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.ac, ptr %i.ae, align 8
  %i.af = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %6, i32 noundef 12, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ah = load float, ptr %i.ag, align 4
  store float %i.ah, ptr %i.a, align 4
  %i.ai = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ak = load float, ptr %i.aj, align 4
  store float %i.ak, ptr %i.b, align 4
  %i.al = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.an = load i32, ptr %i.am, align 4            ; 2 uses
  %i.ao = icmp sgt i32 %i.an, -1
  br i1 %i.ao, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.aq = zext nneg i32 %i.an to i64
  %i.ar = load ptr, ptr %i.ap, align 8
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %i.aq ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = trunc i64 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.aw, i8 0, i64 1024, i1 false)
  %i.ax = and i64 %i.au, 4294966272
  %.not.i25 = icmp eq i64 %i.ax, 0
  %spec.select.i26 = select i1 %.not.i25, i32 %i.av, i32 1023 ; 2 uses
  store i32 %spec.select.i26, ptr %7, align 4
  %i.ay = load ptr, ptr %i.as, align 8
  %i.az = zext i32 %spec.select.i26 to i64        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aw, ptr align 1 %i.ay, i64 %i.az, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az
  store i8 0, ptr %i.ba, align 1
  %i.bb = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %7, ptr noundef nonnull @.str.12, i32 noundef 1, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.bc = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 16) #23
  resume { ptr, i32 } %i.bc

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 0, ptr %i.c, align 4
  %i.bd = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %i.c, i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef 1, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret ptr %i.d
}

declare void @_ZN6Assimp21MakeLeftHandedProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #4

declare void @_ZN6Assimp14FlipUVsProcessC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

declare void @_ZN6Assimp14FlipUVsProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #4

declare void @_ZN6Assimp23FlipWindingOrderProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6Assimp14FlipUVsProcessD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #26
  unreachable

_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EED2Ev.exit: ; preds = %bb.a
  ret void
}

declare void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

declare noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp11MMDImporterD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp11MMDImporterE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #23
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp12BaseImporterE, i64 16), ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #22
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i: ; preds = %bb.c, %_ZNSt6vectorIcSaIcEED2Ev.exit
end_hunk_3
