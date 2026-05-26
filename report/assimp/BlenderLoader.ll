inline.NumInlined: 3761
inline.NumDeleted: 1782
begin_hunk_0_@_ZN6Assimp15BlenderImporterC2Ev:bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6Assimp12BaseImporterD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #25
  resume { ptr, i32 } %i.c
}

; Function Attrs: nounwind
declare void @_ZN6Assimp12BaseImporterC2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp12BaseImporterD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp12BaseImporterE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #25
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
define hidden void @_ZN6Assimp15BlenderImporterD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not7.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not7.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %bb.e
  %.pre.i.i = load ptr, ptr %i.b, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.b
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN6Assimp7Blender23BlenderModifierShowcaseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #27
  br label %_ZN6Assimp7Blender23BlenderModifierShowcaseD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.e
  %.sroa.04.08.i.i = phi ptr [ %i.r, %bb.e ], [ %i.d, %bb.b ] ; 2 uses
  %i.m = load ptr, ptr %.sroa.04.08.i.i, align 8  ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.o = load ptr, ptr %i.m, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #25, !inline_history !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN6Assimp7Blender23BlenderModifierShowcaseD2Ev.exit: ; preds = %._crit_edge.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #27
  br label %bb.f

bb.f:                                             ; preds = %_ZN6Assimp7Blender23BlenderModifierShowcaseD2Ev.exit, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp12BaseImporterE, i64 16), ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %.not.i.i1 = icmp eq ptr %i.t, null
  br i1 %.not.i.i1, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #25
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i: ; preds = %bb.g, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN6Assimp12BaseImporterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i
  %i.y = load i64, ptr %i.w, align 8
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #27
  br label %_ZN6Assimp12BaseImporterD2Ev.exit

_ZN6Assimp12BaseImporterD2Ev.exit:                ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp15BlenderImporterD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN6Assimp15BlenderImporterD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp15BlenderImporter7CanReadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemEb(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, i1 zeroext %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Assimp::BlenderImporter::StreamOrError", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNK6Assimp15BlenderImporter15ParseMagicTokenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemE(ptr dead_on_unwind nonnull writable sret(%"struct.Assimp::BlenderImporter::StreamOrError") align 8 %4, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.a
  %i.g = icmp ult i64 %i.c, 16
  call void @llvm.assume(i1 %i.g)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.h = load i64, ptr %i.e, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.i) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = load ptr, ptr %i.j, align 8              ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.l, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4
  %i.q = load ptr, ptr %i.k, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #25, !inline_history !4
  %i.t = load ptr, ptr %i.k, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #25, !inline_history !4
  br label %_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.w = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.o, %bb.e ], [ %i.y, %bb.f ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.z, label %bb.g, label %_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !5

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #25
  br label %_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8            ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i1.i, label %_ZN6Assimp15BlenderImporter13StreamOrErrorD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ac, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4
  %i.ah = load ptr, ptr %i.ab, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #25, !inline_history !6
  %i.ak = load ptr, ptr %i.ab, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #25, !inline_history !6
  br label %_ZN6Assimp15BlenderImporter13StreamOrErrorD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.an = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i2.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i2.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

bb.l:                                             ; preds = %bb.j
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4.i = phi i32 [ %i.af, %bb.k ], [ %i.ap, %bb.l ]
  %i.aq = icmp eq i32 %.0.i.i.i.i4.i, 1
  br i1 %i.aq, label %bb.m, label %_ZN6Assimp15BlenderImporter13StreamOrErrorD2Ev.exit, !prof !5

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #25
  br label %_ZN6Assimp15BlenderImporter13StreamOrErrorD2Ev.exit

_ZN6Assimp15BlenderImporter13StreamOrErrorD2Ev.exit: ; preds = %_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i, %bb.m
  %i.ar = icmp eq i64 %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret i1 %i.ar
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp15BlenderImporter15ParseMagicTokenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemE(ptr dead_on_unwind noalias writable sret(%"struct.Assimp::BlenderImporter::StreamOrError") align 8 %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::shared_ptr", align 8   ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.f = alloca [8 x i8], align 8                 ; 11 uses
  %6 = alloca %"class.std::shared_ptr.290", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 5 uses
  %8 = alloca %"class.Assimp::Compression", align 8 ; 9 uses
  %9 = alloca %"class.std::shared_ptr.3", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.g, ptr %5, align 8
  store i16 25202, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i8 0, ptr %i.i, align 2
  %i.j = load ptr, ptr %2, align 8
  %i.k = load ptr, ptr %3, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.j, ptr noundef nonnull %i.g)
          to label %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.h, !inline_history !7 ; 13 uses

_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %._crit_edge.i.i
  store ptr %i.n, ptr %4, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.p = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %bb.g unwind label %bb.a       ; 10 uses

bb.a:                                             ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #25 ; 0 uses
  %i.t = icmp eq ptr %i.n, null
  br i1 %i.t, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %i.n, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #25, !inline_history !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  invoke void @__cxa_rethrow() #28
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #29
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 7 uses
  store i32 1, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 1, ptr %i.ab, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.p, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.n, ptr %i.ac, align 8
  store ptr %i.p, ptr %i.o, align 8
  %i.ad = load ptr, ptr %5, align 8               ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.g
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.af = load i64, ptr %i.g, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %.noexc.i38, label %bb.j

.noexc.i38:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store ptr %i.ai, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store i64 31, ptr %i.e, align 8
  %i.aj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.thread unwind label %bb.i    ; 2 uses

.thread:                                          ; preds = %.noexc.i38
  store ptr %i.aj, ptr %i.ah, align 8
  %i.ak = load i64, ptr %i.e, align 8             ; 3 uses
  store i64 %i.ak, ptr %i.ai, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.aj, ptr noundef nonnull align 1 dereferenceable(31) @.str.100, i64 31, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = load ptr, ptr %i.ah, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 0, ptr %i.an, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %bb.cg

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.ao, %bb.h ], [ %i.x, %bb.d ]
  %i.ap = load ptr, ptr %5, align 8               ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.g
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %.body
  %i.ar = load i64, ptr %i.g, align 8
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.cn

bb.i:                                             ; preds = %.noexc.i38
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  br label %bb.cm

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store i64 0, ptr %i.f, align 8
  %i.av = load ptr, ptr %i.n, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = invoke noundef i64 %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.f, i64 noundef 7, i64 noundef 1)
          to label %bb.k unwind label %bb.o       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %lhsv = load i64, ptr %i.f, align 8
  %.not122 = icmp eq i64 %lhsv, 23157107763530818
  br i1 %.not122, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  store ptr %i.n, ptr %0, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.az, align 8
  %i.ba = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = load i32, ptr %i.aa, align 8
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.aa, align 8
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit

bb.n:                                             ; preds = %bb.l
  %i.bd = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit: ; preds = %bb.m, %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.bg, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.bh, align 8
  store i8 0, ptr %i.bg, align 8
  br label %bb.cf

bb.o:                                             ; preds = %.noexc49, %bb.s, %bb.r, %bb.u, %bb.j
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.p:                                             ; preds = %bb.k
  %i.bj = load i8, ptr %i.f, align 8
  %i.bk = icmp ne i8 %i.bj, 31
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = icmp ne i8 %i.bm, -117
  %or.cond = select i1 %i.bk, i1 true, i1 %i.bn
  br i1 %or.cond, label %.noexc.i45, label %bb.r

.noexc.i45:                                       ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store ptr %i.bp, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i64 65, ptr %i.d, align 8
  %i.bq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc46 unwind label %bb.q   ; 3 uses

.noexc46:                                         ; preds = %.noexc.i45
  store ptr %i.bq, ptr %i.bo, align 8
  %i.br = load i64, ptr %i.d, align 8             ; 3 uses
  store i64 %i.br, ptr %i.bp, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(65) %i.bq, ptr noundef nonnull align 1 dereferenceable(65) @.str.101, i64 65, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.br, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br
  store i8 0, ptr %i.bt, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.cf

bb.q:                                             ; preds = %.noexc.i45
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #25
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  br label %bb.ce

bb.r:                                             ; preds = %bb.p
  %i.bw = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc48 unwind label %bb.o

.noexc48:                                         ; preds = %bb.r
  br i1 %i.bw, label %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE8LogDebugIJRA74_KcEEEvDpOT_.exit, label %bb.s

bb.s:                                             ; preds = %.noexc48
  %i.bx = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc49 unwind label %bb.o

.noexc49:                                         ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store ptr @.str, ptr %i.c, align 8
  invoke void @_ZN6Assimp6Logger5debugIJPKcRA74_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bx, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(74) @.str.102)
          to label %.noexc50 unwind label %bb.o

.noexc50:                                         ; preds = %.noexc49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE8LogDebugIJRA74_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE8LogDebugIJRA74_KcEEEvDpOT_.exit: ; preds = %.noexc50, %.noexc48
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.bz = load i8, ptr %i.by, align 2
  %.not = icmp eq i8 %i.bz, 8
  br i1 %.not, label %bb.u, label %.noexc.i52

.noexc.i52:                                       ; preds = %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE8LogDebugIJRA74_KcEEEvDpOT_.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store ptr %i.cb, ptr %i.ca, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 35, ptr %i.b, align 8
  %i.cc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc53 unwind label %bb.t   ; 2 uses

.noexc53:                                         ; preds = %.noexc.i52
  store ptr %i.cc, ptr %i.ca, align 8
  %i.cd = load i64, ptr %i.b, align 8             ; 3 uses
  store i64 %i.cd, ptr %i.cb, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.cc, ptr noundef nonnull align 1 dereferenceable(35) @.str.103, i64 35, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.cd, ptr %i.ce, align 8
  %i.cf = load ptr, ptr %i.ca, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store i8 0, ptr %i.cg, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.cf

bb.t:                                             ; preds = %.noexc.i52
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #25
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  br label %bb.ce

bb.u:                                             ; preds = %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE8LogDebugIJRA74_KcEEEvDpOT_.exit
  %i.cj = load ptr, ptr %i.n, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = invoke noundef i32 %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0, i32 noundef 0)
          to label %bb.v unwind label %bb.o       ; 0 uses

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.cn = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %bb.w unwind label %bb.aq      ; 11 uses

bb.w:                                             ; preds = %bb.v
  store ptr %i.n, ptr %7, align 16
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store ptr %i.p, ptr %i.co, align 8
  %i.cp = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i56 = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i.i56, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit57, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit57.thread

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit57.thread: ; preds = %bb.w
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cr = load i32, ptr %i.aa, align 8
  %i.cs = add nsw i32 %i.cr, 1
  store i32 %i.cs, ptr %i.aa, align 8
  store ptr %i.n, ptr %i.cn, align 8
  store ptr %i.p, ptr %i.cq, align 8
  br label %bb.x

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit57: ; preds = %bb.w
  %i.ct = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.co, align 8         ; 2 uses
  %i.cu = load <2 x ptr>, ptr %7, align 16
  store <2 x ptr> %i.cu, ptr %i.cn, align 8
  %.not.i.i.i.i58 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i.i.i58, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit57.thread, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit57
  %.pr120 = phi ptr [ %i.p, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit57.thread ], [ %.pr.pre, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit57 ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.pr120, i64 8 ; 3 uses
  %i.cw = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cx = load i32, ptr %i.cv, align 4
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cv, align 4
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i

bb.z:                                             ; preds = %bb.x
  %i.cz = atomicrmw volatile add ptr %i.cv, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i: ; preds = %bb.z, %bb.y, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit57
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.da, i8 0, i64 33, i1 false)
  invoke void @_ZN6Assimp12StreamReaderILb0ELb0EE11InternBeginEv(ptr noundef nonnull align 8 dereferenceable(49) %i.cn)
          to label %_ZN6Assimp12StreamReaderILb0ELb0EEC2ESt10shared_ptrINS_8IOStreamEEb.exit unwind label %bb.ar

_ZN6Assimp12StreamReaderILb0ELb0EEC2ESt10shared_ptrINS_8IOStreamEEb.exit: ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i
  store ptr %i.cn, ptr %6, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.dc = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %bb.ae unwind label %bb.aa     ; 5 uses

bb.aa:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EEC2ESt10shared_ptrINS_8IOStreamEEb.exit
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  %i.df = call ptr @__cxa_begin_catch(ptr %i.de) #25 ; 0 uses
  call void @_ZN6Assimp12StreamReaderILb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %i.cn) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef 56) #27
  invoke void @__cxa_rethrow() #28
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body59.thread unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #29
  unreachable

bb.ad:                                            ; preds = %bb.aa
  unreachable

bb.ae:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EEC2ESt10shared_ptrINS_8IOStreamEEb.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i32 1, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 1, ptr %i.dk, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6Assimp12StreamReaderILb0ELb0EEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dc, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store ptr %i.cn, ptr %i.dl, align 8
  store ptr %i.dc, ptr %i.db, align 8
  %i.dm = load ptr, ptr %i.co, align 8            ; 8 uses
  %.not.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 4 uses
  %i.do = load atomic i64, ptr %i.dn acquire, align 8 ; 2 uses
  %i.dp = icmp eq i64 %i.do, 4294967297
  %i.dq = trunc i64 %i.do to i32                  ; 2 uses
  br i1 %i.dp, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.dn, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  store i32 0, ptr %i.dr, align 4
  %i.ds = load ptr, ptr %i.dm, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #25, !inline_history !9
  %i.dv = load ptr, ptr %i.dm, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #25, !inline_history !9
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ah:                                            ; preds = %bb.af
  %i.dy = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i62 = icmp eq i8 %i.dy, 0
  br i1 %.not.i.i.i62, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dz = add nsw i32 %i.dq, -1
  store i32 %i.dz, ptr %i.dn, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.ea = atomicrmw volatile add ptr %i.dn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i = phi i32 [ %i.dq, %bb.ai ], [ %i.ea, %bb.aj ]
  %i.eb = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.eb, label %bb.ak, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #25
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ae, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZN6Assimp11CompressionC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.al unwind label %bb.as

bb.al:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !10)
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ed = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
          to label %bb.am unwind label %bb.at     ; 5 uses

bb.am:                                            ; preds = %bb.al
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i32 1, ptr %i.ee, align 8, !noalias !10
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  store i32 1, ptr %i.ef, align 4, !noalias !10
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceISt6vectorIcSaIcEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ed, align 8, !noalias !10
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i8 0, i64 24, i1 false), !noalias !10
  store ptr %i.ed, ptr %i.ec, align 8, !alias.scope !10
  store ptr %i.eg, ptr %9, align 16, !alias.scope !10
  %i.eh = invoke noundef zeroext i1 @_ZN6Assimp11Compression4openENS0_6FormatENS0_9FlushModeEi(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 0, i32 noundef 0, i32 noundef 31)
          to label %bb.an unwind label %bb.au

bb.an:                                            ; preds = %bb.am
  br i1 %i.eh, label %bb.ao, label %bb.av

bb.ao:                                            ; preds = %bb.an
  %i.ei = load ptr, ptr %6, align 8               ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8            ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.ek to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = and i64 %i.ep, 4294967295
  %i.er = invoke noundef i64 @_ZN6Assimp11Compression10decompressEPKvmRSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %i.ek, i64 noundef %i.eq, ptr noundef nonnull align 8 dereferenceable(24) %i.eg)
          to label %bb.ap unwind label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.es = invoke noundef zeroext i1 @_ZN6Assimp11Compression5closeEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.av unwind label %bb.au     ; 0 uses

bb.aq:                                            ; preds = %bb.v
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

.body59.thread:                                   ; preds = %bb.ab
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  br label %bb.cd

bb.ar:                                            ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(49) %i.cn) #25
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef 56) #27
  br label %bb.cd

bb.as:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.at:                                            ; preds = %bb.al
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.au:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ap, %bb.ao, %bb.am
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.av:                                            ; preds = %bb.ap, %bb.an
  %.0 = phi i64 [ %i.er, %bb.ap ], [ 0, %bb.an ]
  %i.ey = load ptr, ptr %i.eg, align 8
  %i.ez = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %bb.aw unwind label %bb.bl     ; 9 uses

bb.aw:                                            ; preds = %bb.av
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i32 1, ptr %i.fa, align 8, !noalias !13
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  store i32 1, ptr %i.fb, align 4, !noalias !13
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6Assimp14MemoryIOStreamESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ez, align 8, !noalias !13
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6Assimp14MemoryIOStreamE, i64 16), ptr %i.fc, align 8, !noalias !13
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  store ptr %i.ey, ptr %i.fd, align 8, !noalias !13
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  store i64 %.0, ptr %i.fe, align 8, !noalias !13
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 40
  store i64 0, ptr %i.ff, align 8, !noalias !13
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  store i8 0, ptr %i.fg, align 8, !noalias !13
  store ptr %i.fc, ptr %4, align 8
  %i.fh = load ptr, ptr %i.o, align 8             ; 8 uses
  store ptr %i.ez, ptr %i.o, align 8
  %.not.i.i.i.i65 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i65, label %_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 4 uses
  %i.fj = load atomic i64, ptr %i.fi acquire, align 8 ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 4294967297
  %i.fl = trunc i64 %i.fj to i32                  ; 2 uses
  br i1 %i.fk, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.fi, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 12
  store i32 0, ptr %i.fm, align 4
  %i.fn = load ptr, ptr %i.fh, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(16) %i.fh) #25, !inline_history !16
  %i.fq = load ptr, ptr %i.fh, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(16) %i.fh) #25, !inline_history !16
  br label %_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.az:                                            ; preds = %bb.ax
  %i.ft = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i66 = icmp eq i8 %i.ft, 0
  br i1 %.not.i.i.i.i.i66, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fu = add nsw i32 %i.fl, -1
  store i32 %i.fu, ptr %i.fi, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.fv = atomicrmw volatile add ptr %i.fi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i.i = phi i32 [ %i.fl, %bb.ba ], [ %i.fv, %bb.bb ]
  %i.fw = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.fw, label %bb.bc, label %_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fh) #25
  br label %_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ay, %bb.aw
  %i.fx = load ptr, ptr %4, align 8               ; 3 uses
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = invoke noundef i64 %i.ga(ptr noundef nonnull align 8 dereferenceable(8) %i.fx, ptr noundef nonnull %i.f, i64 noundef 7, i64 noundef 1)
          to label %bb.bd unwind label %bb.au     ; 0 uses

bb.bd:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %lhsv123 = load i64, ptr %i.f, align 8
  %.not124 = icmp eq i64 %lhsv123, 23157107763530818
  br i1 %.not124, label %bb.be, label %.noexc.i77

bb.be:                                            ; preds = %bb.bd
  store ptr %i.fx, ptr %0, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gd = load ptr, ptr %i.o, align 8             ; 3 uses
  store ptr %i.gd, ptr %i.gc, align 8
  %.not.i.i.i71 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i71, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit73, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 3 uses
  %i.gf = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i72 = icmp eq i8 %i.gf, 0
  br i1 %.not.i.i.i.i72, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gg = load i32, ptr %i.ge, align 4
  %i.gh = add nsw i32 %i.gg, 1
  store i32 %i.gh, ptr %i.ge, align 4
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit73

bb.bh:                                            ; preds = %bb.bf
  %i.gi = atomicrmw volatile add ptr %i.ge, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit73

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit73: ; preds = %bb.be, %bb.bg, %bb.bh
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gk = load ptr, ptr %i.ec, align 8            ; 2 uses
  %i.gl = load <2 x ptr>, ptr %9, align 16
  store <2 x ptr> %i.gl, ptr %i.gj, align 8
  %.not.i.i.i74 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i74, label %_ZNSt10shared_ptrISt6vectorIcSaIcEEEC2ERKS3_.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit73
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 3 uses
  %i.gn = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i75 = icmp eq i8 %i.gn, 0
  br i1 %.not.i.i.i.i75, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.go = load i32, ptr %i.gm, align 4
  %i.gp = add nsw i32 %i.go, 1
  store i32 %i.gp, ptr %i.gm, align 4
  br label %_ZNSt10shared_ptrISt6vectorIcSaIcEEEC2ERKS3_.exit

bb.bk:                                            ; preds = %bb.bi
  %i.gq = atomicrmw volatile add ptr %i.gm, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrISt6vectorIcSaIcEEEC2ERKS3_.exit

_ZNSt10shared_ptrISt6vectorIcSaIcEEEC2ERKS3_.exit: ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit73, %bb.bj, %bb.bk
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.gs, ptr %i.gr, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.gt, align 8
  store i8 0, ptr %i.gs, align 8
  br label %bb.bn

bb.bl:                                            ; preds = %bb.av
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.noexc.i77:                                       ; preds = %bb.bd
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store ptr %i.gw, ptr %i.gv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 53, ptr %i.a, align 8
  %i.gx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.gv, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc78 unwind label %bb.bm  ; 2 uses

.noexc78:                                         ; preds = %.noexc.i77
  store ptr %i.gx, ptr %i.gv, align 8
  %i.gy = load i64, ptr %i.a, align 8             ; 3 uses
  store i64 %i.gy, ptr %i.gw, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(53) %i.gx, ptr noundef nonnull align 1 dereferenceable(53) @.str.104, i64 53, i1 false)
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.gy, ptr %i.gz, align 8
  %i.ha = load ptr, ptr %i.gv, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gy
  store i8 0, ptr %i.hb, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.bn

bb.bm:                                            ; preds = %.noexc.i77
  %i.hc = landingpad { ptr, i32 }
          cleanup
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.hd) #25
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  br label %bb.ca

bb.bn:                                            ; preds = %.noexc78, %_ZNSt10shared_ptrISt6vectorIcSaIcEEEC2ERKS3_.exit
  %i.he = load ptr, ptr %i.ec, align 8            ; 8 uses
  %.not.i.i80 = icmp eq ptr %i.he, null
  br i1 %.not.i.i80, label %_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 4 uses
  %i.hg = load atomic i64, ptr %i.hf acquire, align 8 ; 2 uses
  %i.hh = icmp eq i64 %i.hg, 4294967297
  %i.hi = trunc i64 %i.hg to i32                  ; 2 uses
  br i1 %i.hh, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i32 0, ptr %i.hf, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  store i32 0, ptr %i.hj, align 4
  %i.hk = load ptr, ptr %i.he, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8
  call void %i.hm(ptr noundef nonnull align 8 dereferenceable(16) %i.he) #25, !inline_history !17
  %i.hn = load ptr, ptr %i.he, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(16) %i.he) #25, !inline_history !17
  br label %_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bq:                                            ; preds = %bb.bo
  %i.hq = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i81 = icmp eq i8 %i.hq, 0
  br i1 %.not.i.i.i81, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hr = add nsw i32 %i.hi, -1
  store i32 %i.hr, ptr %i.hf, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i82

bb.bs:                                            ; preds = %bb.bq
  %i.hs = atomicrmw volatile add ptr %i.hf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i82

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i82: ; preds = %bb.bs, %bb.br
  %.0.i.i.i.i83 = phi i32 [ %i.hi, %bb.br ], [ %i.hs, %bb.bs ]
  %i.ht = icmp eq i32 %.0.i.i.i.i83, 1
  br i1 %i.ht, label %bb.bt, label %_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.bt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i82
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.he) #25
  br label %_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bn, %bb.bp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i82, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @_ZN6Assimp11CompressionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.hu = load ptr, ptr %i.db, align 8            ; 8 uses
  %.not.i.i84 = icmp eq ptr %i.hu, null
  br i1 %.not.i.i84, label %_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb0ELb0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 4 uses
  %i.hw = load atomic i64, ptr %i.hv acquire, align 8 ; 2 uses
  %i.hx = icmp eq i64 %i.hw, 4294967297
  %i.hy = trunc i64 %i.hw to i32                  ; 2 uses
  br i1 %i.hx, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store i32 0, ptr %i.hv, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 12
  store i32 0, ptr %i.hz, align 4
  %i.ia = load ptr, ptr %i.hu, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8
  call void %i.ic(ptr noundef nonnull align 8 dereferenceable(16) %i.hu) #25, !inline_history !18
  %i.id = load ptr, ptr %i.hu, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(16) %i.hu) #25, !inline_history !18
  br label %_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb0ELb0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bw:                                            ; preds = %bb.bu
  %i.ig = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i85 = icmp eq i8 %i.ig, 0
  br i1 %.not.i.i.i85, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ih = add nsw i32 %i.hy, -1
  store i32 %i.ih, ptr %i.hv, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i86

bb.by:                                            ; preds = %bb.bw
  %i.ii = atomicrmw volatile add ptr %i.hv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i86

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i86: ; preds = %bb.by, %bb.bx
  %.0.i.i.i.i87 = phi i32 [ %i.hy, %bb.bx ], [ %i.ii, %bb.by ]
  %i.ij = icmp eq i32 %.0.i.i.i.i87, 1
  br i1 %i.ij, label %bb.bz, label %_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb0ELb0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.bz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i86
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hu) #25
  br label %_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb0ELb0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb0ELb0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i86, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.cf

bb.ca:                                            ; preds = %bb.bm, %bb.bl, %bb.au
  %.pn26 = phi { ptr, i32 } [ %i.hc, %bb.bm ], [ %i.gu, %bb.bl ], [ %i.ex, %bb.au ]
  call void @_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.at
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %bb.ca ], [ %i.ew, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @_ZN6Assimp11CompressionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.as
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %bb.cb ], [ %i.ev, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb0ELb0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  br label %bb.cd

bb.cd:                                            ; preds = %.body59.thread, %bb.ar, %bb.cc, %bb.aq
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn, %bb.cc ], [ %i.eu, %bb.ar ], [ %i.dg, %.body59.thread ], [ %i.et, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ce

bb.ce:                                            ; preds = %bb.t, %bb.q, %bb.cd, %bb.o
  %.pn31 = phi { ptr, i32 } [ %i.bu, %bb.q ], [ %i.bi, %bb.o ], [ %i.ch, %bb.t ], [ %.pn26.pn.pn.pn, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %bb.cm

bb.cf:                                            ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit, %.noexc46, %.noexc53, %_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb0ELb0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %.pre105 = load ptr, ptr %i.o, align 8          ; 2 uses
  %.not.i.i88 = icmp eq ptr %.pre105, null
  br i1 %.not.i.i88, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92, label %bb.cg

bb.cg:                                            ; preds = %.thread, %bb.cf
  %i.ik = phi ptr [ %i.p, %.thread ], [ %.pre105, %bb.cf ] ; 7 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8 ; 4 uses
  %i.im = load atomic i64, ptr %i.il acquire, align 8 ; 2 uses
  %i.in = icmp eq i64 %i.im, 4294967297
  %i.io = trunc i64 %i.im to i32                  ; 2 uses
  br i1 %i.in, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.il, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 12
  store i32 0, ptr %i.ip, align 4
  %i.iq = load ptr, ptr %i.ik, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load ptr, ptr %i.ir, align 8
  call void %i.is(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #25, !inline_history !9
  %i.it = load ptr, ptr %i.ik, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #25, !inline_history !9
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92

bb.ci:                                            ; preds = %bb.cg
  %i.iw = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i89 = icmp eq i8 %i.iw, 0
  br i1 %.not.i.i.i89, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ix = add nsw i32 %i.io, -1
  store i32 %i.ix, ptr %i.il, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90

bb.ck:                                            ; preds = %bb.ci
  %i.iy = atomicrmw volatile add ptr %i.il, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90: ; preds = %bb.ck, %bb.cj
  %.0.i.i.i.i91 = phi i32 [ %i.io, %bb.cj ], [ %i.iy, %bb.ck ]
  %i.iz = icmp eq i32 %.0.i.i.i.i91, 1
  br i1 %i.iz, label %bb.cl, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92, !prof !5

bb.cl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #25
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92

_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92: ; preds = %bb.cf, %bb.ch, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.cm:                                            ; preds = %bb.i, %bb.ce
  %.pn33 = phi { ptr, i32 } [ %i.at, %bb.i ], [ %.pn31, %bb.ce ]
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #25
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %.pn33.pn = phi { ptr, i32 } [ %.pn33, %bb.cm ], [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn33.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp15BlenderImporter13StreamOrErrorD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 8 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4
  %i.n = load ptr, ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #25, !inline_history !17
  %i.q = load ptr, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #25, !inline_history !17
  br label %_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #25
  br label %_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8              ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.y, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.z, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4
  %i.ae = load ptr, ptr %i.y, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #25, !inline_history !9
  %i.ah = load ptr, ptr %i.y, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #25, !inline_history !9
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i2 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.ac, %bb.k ], [ %i.am, %bb.l ]
  %i.an = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.an, label %bb.m, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #25
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZNK6Assimp15BlenderImporter7GetInfoEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret ptr @_ZL11blenderDesc
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6Assimp15BlenderImporter15SetupPropertiesEPKNS_8ImporterE(ptr nonnull readnone align 8 captures(none) %0, ptr readnone captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp15BlenderImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef captures(none) %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.Assimp::Blender::FileDatabase", align 8 ; 30 uses
  %5 = alloca %"struct.Assimp::BlenderImporter::StreamOrError", align 8 ; 12 uses
  %6 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %i.c = alloca [4 x i8], align 4                 ; 12 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %"class.std::shared_ptr", align 8   ; 4 uses
  %8 = alloca %"struct.Assimp::Blender::Scene", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.g, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 3 uses
  store i32 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 96
  store ptr null, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i8 0, i64 48, i1 false)
  store ptr %4, ptr %i.r, align 8
  %i.s = invoke noalias noundef nonnull dereferenceable(3072) ptr @_Znwm(i64 noundef 3072) #26
          to label %_ZN6Assimp7Blender12FileDatabaseC2Ev.exit unwind label %.body.i ; 3 uses

common.resume:                                    ; preds = %bb.at, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.t, %.body.i ], [ %.pn.pn.pn.pn, %bb.at ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZNSt6vectorISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESaISD_EED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.q) #25
  call void @_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.u) #25
  call void @_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb1ELb1EEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #25
  call void @_ZN6Assimp7Blender3DNAD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.w) #25
  br label %common.resume

_ZN6Assimp7Blender12FileDatabaseC2Ev.exit:        ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 200
  store ptr %i.s, ptr %i.q, align 8
  store ptr %i.s, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 3072
  store ptr %i.z, ptr %i.x, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 224
  store i64 0, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNK6Assimp15BlenderImporter15ParseMagicTokenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemE(ptr dead_on_unwind nonnull writable sret(%"struct.Assimp::BlenderImporter::StreamOrError") align 8 %5, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %3)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZN6Assimp7Blender12FileDatabaseC2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr @.str, ptr %i.b, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @__cxa_free_exception(ptr nonnull %i.af) #25
  br label %.body

bb.f:                                             ; preds = %_ZN6Assimp7Blender12FileDatabaseC2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.g:                                             ; preds = %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.aj = load ptr, ptr %5, align 8               ; 8 uses
  store ptr %i.aj, ptr %6, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  store ptr null, ptr %i.al, align 8
  store ptr %i.am, ptr %i.ak, align 8
  store ptr null, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 0, ptr %i.c, align 4
  %i.an = load ptr, ptr %i.aj, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = invoke noundef i64 %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef 1)
          to label %bb.i unwind label %bb.ao      ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ar = load i8, ptr %i.c, align 4
  %i.as = icmp eq i8 %i.ar, 45
  %i.at = zext i1 %i.as to i8
  store i8 %i.at, ptr %4, align 8
  %i.au = load ptr, ptr %i.aj, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef 1)
          to label %bb.j unwind label %bb.ao      ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ay = load i8, ptr %i.c, align 4
  %i.az = icmp eq i8 %i.ay, 118
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  %i.bb = zext i1 %i.az to i8
  store i8 %i.bb, ptr %i.ba, align 1
  %i.bc = load ptr, ptr %i.aj, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = invoke noundef i64 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull %i.c, i64 noundef 3, i64 noundef 1)
          to label %bb.k unwind label %bb.ao      ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 0, ptr %i.bg, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.bh, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  %i.bi = load i8, ptr %4, align 8, !range !19, !noundef !20
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = select i1 %i.bj, ptr @.str.4, ptr @.str.5
  store ptr %i.bk, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.bl = load i8, ptr %i.ba, align 1, !range !19, !noundef !20
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = select i1 %i.bm, ptr @.str.4, ptr @.str.5
  store ptr %i.bn, ptr %i.f, align 8
  %i.bo = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc13 unwind label %bb.ap

.noexc13:                                         ; preds = %bb.k
  br i1 %i.bo, label %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE7LogInfoIJRA20_KcRcRA2_S4_PcRA10_S4_PS4_RA18_S4_SD_S9_EEEvDpOT_.exit, label %bb.l

bb.l:                                             ; preds = %.noexc13
  %i.bp = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc14 unwind label %bb.ap

.noexc14:                                         ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr @.str, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger4infoIJPKcRA20_S2_RcRA2_S2_PcRA10_S2_S3_RA18_S2_S3_S8_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bp, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(20) @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(2) @.str.2, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(10) @.str.3, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(18) @.str.6, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 1 dereferenceable(2) @.str.7)
          to label %.noexc15 unwind label %bb.ap

.noexc15:                                         ; preds = %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE7LogInfoIJRA20_KcRcRA2_S4_PcRA10_S4_PS4_RA18_S4_SD_S9_EEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE7LogInfoIJRA20_KcRcRA2_S4_PcRA10_S4_PS4_RA18_S4_SD_S9_EEEvDpOT_.exit: ; preds = %.noexc15, %.noexc13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  store ptr %i.aj, ptr %7, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr null, ptr %i.ak, align 8
  store ptr %i.am, ptr %i.bq, align 8
  store ptr null, ptr %6, align 8
  invoke void @_ZN6Assimp15BlenderImporter14ParseBlendFileERNS_7Blender12FileDatabaseESt10shared_ptrINS_8IOStreamEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(232) %4, ptr noundef nonnull %7)
          to label %bb.m unwind label %bb.aq

bb.m:                                             ; preds = %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE7LogInfoIJRA20_KcRcRA2_S4_PcRA10_S4_PS4_RA18_S4_SD_S9_EEEvDpOT_.exit
  %i.br = load ptr, ptr %i.bq, align 8            ; 8 uses
  %.not.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 4 uses
  %i.bt = load atomic i64, ptr %i.bs acquire, align 8 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 4294967297
  %i.bv = trunc i64 %i.bt to i32                  ; 2 uses
  br i1 %i.bu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bs, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 0, ptr %i.bw, align 4
  %i.bx = load ptr, ptr %i.br, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #25, !inline_history !9
  %i.ca = load ptr, ptr %i.br, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #25, !inline_history !9
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.cd = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = add nsw i32 %i.bv, -1
  store i32 %i.ce, ptr %i.bs, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.cf = atomicrmw volatile add ptr %i.bs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.bv, %bb.q ], [ %i.cf, %bb.r ]
  %i.cg = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cg, label %bb.s, label %bb.t, !prof !5

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #25
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.ch, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5SceneE, i64 16), ptr %8, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr null, ptr %i.cj, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender2IDE, i64 16), ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 1064
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 1128
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 1136
  store ptr null, ptr %i.cm, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ck, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8ListBaseE, i64 16), ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 1144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, i8 0, i64 32, i1 false)
  invoke void @_ZN6Assimp15BlenderImporter12ExtractSceneERNS_7Blender5SceneERKNS1_12FileDatabaseE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(1176) %8, ptr noundef nonnull align 8 dereferenceable(232) %4)
          to label %bb.u unwind label %bb.ar

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6Assimp15BlenderImporter16ConvertBlendFileEP7aiSceneRKNS_7Blender5SceneERKNS3_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(1176) %8, ptr noundef nonnull align 8 dereferenceable(232) %4)
          to label %bb.v unwind label %bb.ar

bb.v:                                             ; preds = %bb.u
  call void @_ZN6Assimp7Blender5SceneD2Ev(ptr noundef nonnull align 8 dereferenceable(1176) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.co = load ptr, ptr %i.ak, align 8            ; 8 uses
  %.not.i.i16 = icmp eq ptr %i.co, null
  br i1 %.not.i.i16, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 4 uses
  %i.cq = load atomic i64, ptr %i.cp acquire, align 8 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 4294967297
  %i.cs = trunc i64 %i.cq to i32                  ; 2 uses
  br i1 %i.cr, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.cp, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  store i32 0, ptr %i.ct, align 4
  %i.cu = load ptr, ptr %i.co, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #25, !inline_history !9
  %i.cx = load ptr, ptr %i.co, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #25, !inline_history !9
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20

bb.y:                                             ; preds = %bb.w
  %i.da = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i17 = icmp eq i8 %i.da, 0
  br i1 %.not.i.i.i17, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.db = add nsw i32 %i.cs, -1
  store i32 %i.db, ptr %i.cp, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18

bb.aa:                                            ; preds = %bb.y
  %i.dc = atomicrmw volatile add ptr %i.cp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i19 = phi i32 [ %i.cs, %bb.z ], [ %i.dc, %bb.aa ]
  %i.dd = icmp eq i32 %.0.i.i.i.i19, 1
  br i1 %i.dd, label %bb.ab, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20, !prof !5

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #25
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20

_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20: ; preds = %bb.v, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.de = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20
  %i.dh = load i64, ptr %i.df, align 8
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8            ; 8 uses
  %.not.i.i.i21 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i21, label %_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 4 uses
  %i.dm = load atomic i64, ptr %i.dl acquire, align 8 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 4294967297
  %i.do = trunc i64 %i.dm to i32                  ; 2 uses
  br i1 %i.dn, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.dl, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  store i32 0, ptr %i.dp, align 4
  %i.dq = load ptr, ptr %i.dk, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #25, !inline_history !4
  %i.dt = load ptr, ptr %i.dk, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #25, !inline_history !4
  br label %_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.dw = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dx = add nsw i32 %i.do, -1
  store i32 %i.dx, ptr %i.dl, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.dy = atomicrmw volatile add ptr %i.dl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i = phi i32 [ %i.do, %bb.af ], [ %i.dy, %bb.ag ]
  %i.dz = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dz, label %bb.ah, label %_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !5

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #25
  br label %_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ea = load ptr, ptr %i.al, align 8            ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i1.i, label %_ZN6Assimp15BlenderImporter13StreamOrErrorD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 4 uses
  %i.ec = load atomic i64, ptr %i.eb acquire, align 8 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 4294967297
  %i.ee = trunc i64 %i.ec to i32                  ; 2 uses
  br i1 %i.ed, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.eb, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i32 0, ptr %i.ef, align 4
  %i.eg = load ptr, ptr %i.ea, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #25, !inline_history !6
  %i.ej = load ptr, ptr %i.ea, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #25, !inline_history !6
  br label %_ZN6Assimp15BlenderImporter13StreamOrErrorD2Ev.exit

bb.ak:                                            ; preds = %bb.ai
  %i.em = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i2.i = icmp eq i8 %i.em, 0
  br i1 %.not.i.i.i2.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.en = add nsw i32 %i.ee, -1
  store i32 %i.en, ptr %i.eb, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

bb.am:                                            ; preds = %bb.ak
  %i.eo = atomicrmw volatile add ptr %i.eb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i4.i = phi i32 [ %i.ee, %bb.al ], [ %i.eo, %bb.am ]
  %i.ep = icmp eq i32 %.0.i.i.i.i4.i, 1
  br i1 %i.ep, label %bb.an, label %_ZN6Assimp15BlenderImporter13StreamOrErrorD2Ev.exit, !prof !5

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #25
  br label %_ZN6Assimp15BlenderImporter13StreamOrErrorD2Ev.exit

_ZN6Assimp15BlenderImporter13StreamOrErrorD2Ev.exit: ; preds = %_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN6Assimp7Blender12FileDatabaseD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.ao:                                            ; preds = %bb.j, %bb.i, %bb.h
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ap:                                            ; preds = %.noexc14, %bb.l, %bb.k
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.as

bb.aq:                                            ; preds = %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE7LogInfoIJRA20_KcRcRA2_S4_PcRA10_S4_PS4_RA18_S4_SD_S9_EEEvDpOT_.exit
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  br label %bb.as

bb.ar:                                            ; preds = %bb.u, %bb.t
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp7Blender5SceneD2Ev(ptr noundef nonnull align 8 dereferenceable(1176) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %.pn.pn = phi { ptr, i32 } [ %i.et, %bb.ar ], [ %i.es, %bb.aq ], [ %i.er, %bb.ap ], [ %i.eq, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.body

.body:                                            ; preds = %bb.g, %bb.e, %bb.as
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.as ], [ %i.ai, %bb.g ], [ %i.ag, %bb.e ]
  call void @_ZN6Assimp15BlenderImporter13StreamOrErrorD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #25
  br label %bb.at

bb.at:                                            ; preds = %.body, %bb.f
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.ah, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN6Assimp7Blender12FileDatabaseD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp15BlenderImporter14ParseBlendFileERNS_7Blender12FileDatabaseESt10shared_ptrINS_8IOStreamEE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(232) %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.Assimp::Blender::DNAParser", align 8 ; 5 uses
  %4 = alloca %"class.Assimp::Blender::SectionParser", align 8 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #26, !noalias !21 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 1, ptr %i.e, align 8, !noalias !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.f, align 4, !noalias !21
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6Assimp12StreamReaderILb1ELb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !noalias !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN6Assimp12StreamReaderILb1ELb1EEEJRSt10shared_ptrINS0_8IOStreamEERbEEvPT_DpOT0_(ptr noundef nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %_ZSt11make_sharedIN6Assimp12StreamReaderILb1ELb1EEEJRSt10shared_ptrINS0_8IOStreamEERbEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6Assimp12StreamReaderILb1ELb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i, !noalias !21

common.resume:                                    ; preds = %_ZN6Assimp7Blender13SectionParserD2Ev.exit26, %bb.r, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6Assimp12StreamReaderILb1ELb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6Assimp12StreamReaderILb1ELb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i ], [ %i.dg, %bb.r ], [ %.pn, %_ZN6Assimp7Blender13SectionParserD2Ev.exit26 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6Assimp12StreamReaderILb1ELb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i: ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 72) #27, !noalias !21
  br label %common.resume

_ZSt11make_sharedIN6Assimp12StreamReaderILb1ELb1EEEJRSt10shared_ptrINS0_8IOStreamEERbEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  store ptr %i.g, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 8 uses
  store ptr %i.d, ptr %i.j, align 8
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb1ELb1EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt11make_sharedIN6Assimp12StreamReaderILb1ELb1EEEJRSt10shared_ptrINS0_8IOStreamEERbEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.l, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4
  %i.q = load ptr, ptr %i.k, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #25, !inline_history !24
  %i.t = load ptr, ptr %i.k, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #25, !inline_history !24
  br label %_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb1ELb1EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.w = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.o, %bb.e ], [ %i.y, %bb.f ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.z, label %bb.g, label %_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb1ELb1EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #25
  br label %_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb1ELb1EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb1ELb1EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.c, %_ZSt11make_sharedIN6Assimp12StreamReaderILb1ELb1EEEJRSt10shared_ptrINS0_8IOStreamEERbEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %1, ptr %3, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.aa, align 8            ; 4 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = sdiv exact i64 %i.ag, 72
  %i.ai = icmp ult i64 %i.ah, 128
  br i1 %i.ai, label %_ZNSt12_Vector_baseIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb1ELb1EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.af
  %i.an = tail call noalias noundef nonnull dereferenceable(9216) ptr @_Znwm(i64 noundef 9216) #26 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ad, %i.ak
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_M_allocateEm.exit.i, %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bg, %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.an, %_ZNSt12_Vector_baseIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_M_allocateEm.exit.i ] ; 6 uses
  %.0911.i.i.i.i = phi ptr [ %i.bf, %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.ad, %_ZNSt12_Vector_baseIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_M_allocateEm.exit.i ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.ao = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !28, !noalias !25
  store i64 %i.ao, ptr %.012.i.i.i.i, align 8, !alias.scope !25, !noalias !28
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24 ; 3 uses
  store ptr %i.ar, ptr %i.ap, align 8, !alias.scope !25, !noalias !28
  %i.as = load ptr, ptr %i.aq, align 8, !alias.scope !28, !noalias !25 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !28, !noalias !25 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false), !alias.scope !30
  br label %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.as, ptr %i.ap, align 8, !alias.scope !25, !noalias !28
  %i.az = load i64, ptr %i.at, align 8, !alias.scope !28, !noalias !25
  store i64 %i.az, ptr %i.ar, align 8, !alias.scope !25, !noalias !28
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !alias.scope !28, !noalias !25
  br label %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.h
  %i.ba = phi i64 [ %i.aw, %bb.h ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  store i64 %i.ba, ptr %i.bc, align 8, !alias.scope !25, !noalias !28
  store ptr %i.at, ptr %i.aq, align 8, !alias.scope !28, !noalias !25
  store i64 0, ptr %i.bb, align 8, !alias.scope !28, !noalias !25
  store i8 0, ptr %i.at, align 8, !alias.scope !28, !noalias !25
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 32, i1 false), !alias.scope !30
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 72 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 72
  %.not.i.i.i.i20 = icmp eq ptr %i.bf, %i.ak
  br i1 %.not.i.i.i.i20, label %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !31

_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit.i: ; preds = %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.pre.i = load ptr, ptr %i.aa, align 8
  br label %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit.i, %_ZNSt12_Vector_baseIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_M_allocateEm.exit.i
  %i.bh = phi ptr [ %.pre.i, %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit.i ], [ %i.ad, %_ZNSt12_Vector_baseIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.not.i8.i = icmp eq ptr %i.bh, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp7Blender13FileBlockHeadESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.bi = load ptr, ptr %i.ab, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub i64 %i.bj, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bl) #27
  br label %_ZNSt12_Vector_baseIN6Assimp7Blender13FileBlockHeadESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN6Assimp7Blender13FileBlockHeadESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.an, ptr %i.aa, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  store ptr %i.bm, ptr %i.aj, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 9216
  store ptr %i.bn, ptr %i.ab, align 8
  br label %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb1ELb1EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12_Vector_baseIN6Assimp7Blender13FileBlockHeadESaIS2_EE13_M_deallocateEPS2_m.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bo = load ptr, ptr %i.i, align 8
  %i.bp = load i8, ptr %1, align 8, !range !19, !noundef !20
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  store ptr %i.br, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i64 0, ptr %i.bs, align 8
  store i8 0, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 0, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %i.bo, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i8 %i.bp, ptr %i.bv, align 8
  store i64 0, ptr %4, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store i64 0, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 4 uses
  br label %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE9push_backERKS2_.exit.outer

_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE9push_backERKS2_.exit.outer: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread, %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE7reserveEm.exit
  %.0.ph = phi i1 [ true, %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE7reserveEm.exit ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread ]
  br label %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE9push_backERKS2_.exit.backedge, %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE9push_backERKS2_.exit.outer
  invoke void @_ZN6Assimp7Blender13SectionParser4NextEv(ptr noundef nonnull align 8 dereferenceable(81) %4)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE9push_backERKS2_.exit
  %i.by = load i64, ptr %i.bs, align 8
  %cond = icmp eq i64 %i.by, 4
  br i1 %cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread32

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.j
  %i.bz = load ptr, ptr %i.bq, align 8            ; 4 uses
  %i.ca = load i32, ptr %i.bz, align 1
  %i.cb = icmp ne i32 %i.ca, 1111772741
  %i.cc = zext i1 %i.cb to i32
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread31

bb.k:                                             ; preds = %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE9push_backERKS2_.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit:                                        ; preds = %.noexc.i.i.i, %bb.o
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread31: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cf = load i32, ptr %i.bz, align 1
  %i.cg = icmp ne i32 %i.cf, 826363460
  %i.ch = zext i1 %i.cg to i32
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread32

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread31
  invoke void @_ZN6Assimp7Blender9DNAParser5ParseEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE9push_backERKS2_.exit.outer unwind label %.loopexit.split-lp, !llvm.loop !33

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread32: ; preds = %bb.j, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread31
  %i.cj = load ptr, ptr %i.bx, align 8            ; 7 uses
  %i.ck = load ptr, ptr %i.ab, align 8
  %.not.i = icmp eq ptr %i.cj, %i.ck
  br i1 %.not.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread32
  %i.cl = load i64, ptr %4, align 8
  store i64 %i.cl, ptr %i.cj, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 3 uses
  store ptr %i.cn, ptr %i.cm, align 8
  %i.co = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.cp = load i64, ptr %i.bs, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.cp, ptr %i.b, align 8
  %i.cq = icmp ugt i64 %i.cp, 15
  br i1 %i.cq, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZN6Assimp15BlenderImporter12ExtractSceneERNS_7Blender5SceneERKNS1_12FileDatabaseE:._crit_edge.i.i
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  %i.ar = load i64, ptr %.sroa.028.038, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.au, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = icmp ugt ptr %i.au, %i.ax
  br i1 %i.ay, label %bb.i, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.i:                                             ; preds = %._crit_edge
  %i.az = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull @.str.124)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @__cxa_throw(ptr nonnull %i.az, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw [120 x i8], ptr %i.ae, i64 %i.ad
  call void @_ZNK6Assimp7Blender9Structure7ConvertINS0_5SceneEEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.bb, ptr noundef nonnull align 8 dereferenceable(1176) %1, ptr noundef nonnull align 8 dereferenceable(232) %2)
  %i.bc = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 172
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 180
  call void @_ZN6Assimp6Logger4infoIJRA22_KcRjS4_S5_RA15_S2_S5_RA19_S2_S5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bc, ptr noundef nonnull align 1 dereferenceable(22) @.str.14, ptr noundef nonnull align 4 dereferenceable(4) %i.bd, ptr noundef nonnull align 1 dereferenceable(22) @.str.15, ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull align 1 dereferenceable(15) @.str.16, ptr noundef nonnull align 4 dereferenceable(4) %i.bf, ptr noundef nonnull align 1 dereferenceable(19) @.str.17, ptr noundef nonnull align 4 dereferenceable(4) %i.bg)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp15BlenderImporter16ConvertBlendFileEP7aiSceneRKNS_7Blender5SceneERKNS3_12FileDatabaseE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef captures(none) %1, ptr noundef nonnull align 8 dereferenceable(1176) %2, ptr noundef nonnull align 8 dereferenceable(232) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"struct.Assimp::Blender::ConversionData", align 8 ; 27 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::deque.112", align 8    ; 19 uses
  %7 = alloca %"class.std::shared_ptr.40", align 8 ; 10 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %8 = alloca %"class.std::shared_ptr.40", align 8 ; 10 uses
  %9 = alloca %class.aiMatrix4x4t, align 4        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN6Assimp7Blender14ConversionDataC2ERKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(336) %4, ptr noundef nonnull align 8 dereferenceable(232) %3)
  %i.c = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26
          to label %._crit_edge.i.i unwind label %bb.d ; 7 uses

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.d, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.d, ptr noundef nonnull align 1 dereferenceable(13) @.str.18, i64 13, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 13, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 29
  store i8 0, ptr %i.f, align 1
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.c, ptr %i.g, align 8
  %i.h = load ptr, ptr %5, align 8                ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.d
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.d, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 1112 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not161 = icmp eq ptr %i.m, null
  br i1 %.not161, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN6Assimp15BlenderImporter18ParseSubCollectionERKNS_7Blender5SceneEP6aiNodeRKSt10shared_ptrINS1_10CollectionEERNS1_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(1176) %2, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(336) %4)
          to label %bb.ce unwind label %bb.d

bb.d:                                             ; preds = %bb.da, %bb.cv, %bb.cq, %bb.cl, %bb.cg, %bb.ce, %bb.c, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %5, align 8                ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.e
  %i.r = load i64, ptr %i.d, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 1144) #27
  br label %bb.dh

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %6, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %6, i64 noundef 0)
          to label %_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EEC2Ev.exit unwind label %bb.s

_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EEC2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 1144
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.u = load ptr, ptr %i.t, align 8, !noalias !36 ; 3 uses
  store ptr %i.u, ptr %7, align 8, !alias.scope !36
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 1152
  %i.x = load ptr, ptr %i.w, align 8, !noalias !36 ; 3 uses
  store ptr %i.x, ptr %i.v, align 8, !alias.scope !36
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZSt19static_pointer_castIN6Assimp7Blender4BaseENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EEC2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !noalias !36
  %.not.i.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load i32, ptr %i.y, align 4, !noalias !36
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.y, align 4, !noalias !36
  br label %_ZSt19static_pointer_castIN6Assimp7Blender4BaseENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = atomicrmw volatile add ptr %i.y, i32 1 acq_rel, align 4, !noalias !36 ; 0 uses
  %.pre = load ptr, ptr %7, align 8
  br label %_ZSt19static_pointer_castIN6Assimp7Blender4BaseENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit

_ZSt19static_pointer_castIN6Assimp7Blender4BaseENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit: ; preds = %_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EEC2Ev.exit, %bb.h, %bb.i
  %i.ad = phi ptr [ %i.u, %_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EEC2Ev.exit ], [ %i.u, %bb.h ], [ %.pre, %bb.i ] ; 2 uses
  %.not162167 = icmp eq ptr %i.ad, null
  br i1 %.not162167, label %_ZSt19static_pointer_castIN6Assimp7Blender4BaseENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit.._crit_edge_crit_edge, label %.lr.ph

_ZSt19static_pointer_castIN6Assimp7Blender4BaseENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit.._crit_edge_crit_edge: ; preds = %_ZSt19static_pointer_castIN6Assimp7Blender4BaseENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit
  %.pre182 = load ptr, ptr %i.v, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt19static_pointer_castIN6Assimp7Blender4BaseENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 64
  br label %bb.t

._crit_edge:                                      ; preds = %_ZNSt10shared_ptrIN6Assimp7Blender4BaseEEaSERKS3_.exit, %_ZSt19static_pointer_castIN6Assimp7Blender4BaseENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit.._crit_edge_crit_edge
  %i.ak = phi ptr [ %.pre182, %_ZSt19static_pointer_castIN6Assimp7Blender4BaseENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit.._crit_edge_crit_edge ], [ %i.eg, %_ZNSt10shared_ptrIN6Assimp7Blender4BaseEEaSERKS3_.exit ] ; 8 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp7Blender4BaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.al, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #25, !inline_history !39
  %i.at = load ptr, ptr %i.ak, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #25, !inline_history !39
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender4BaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.aw = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ao, %bb.m ], [ %i.ay, %bb.n ]
  %i.az = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.az, label %bb.o, label %_ZNSt12__shared_ptrIN6Assimp7Blender4BaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #25
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender4BaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp7Blender4BaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %._crit_edge, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 1096
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
  store ptr %i.bb, ptr %8, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 1104
  %i.be = load ptr, ptr %i.bd, align 8            ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8
  %.not.i.i.i77 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i77, label %_ZNSt10shared_ptrIN6Assimp7Blender4BaseEEC2ERKS3_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp7Blender4BaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.bg = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i78 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i78, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = load i32, ptr %i.bf, align 4
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bf, align 4
  br label %_ZNSt10shared_ptrIN6Assimp7Blender4BaseEEC2ERKS3_.exit

bb.r:                                             ; preds = %bb.p
  %i.bj = atomicrmw volatile add ptr %i.bf, i32 1 acq_rel, align 4 ; 0 uses
  %.pre183.a = load ptr, ptr %8, align 8
  br label %_ZNSt10shared_ptrIN6Assimp7Blender4BaseEEC2ERKS3_.exit

_ZNSt10shared_ptrIN6Assimp7Blender4BaseEEC2ERKS3_.exit: ; preds = %_ZNSt12__shared_ptrIN6Assimp7Blender4BaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.q, %bb.r
  %i.bk = phi ptr [ %i.bb, %_ZNSt12__shared_ptrIN6Assimp7Blender4BaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.bb, %bb.q ], [ %.pre183.a, %bb.r ] ; 2 uses
  %.not163168 = icmp eq ptr %i.bk, null
  br i1 %.not163168, label %_ZNSt10shared_ptrIN6Assimp7Blender4BaseEEC2ERKS3_.exit.._crit_edge170_crit_edge, label %.lr.ph169

_ZNSt10shared_ptrIN6Assimp7Blender4BaseEEC2ERKS3_.exit.._crit_edge170_crit_edge: ; preds = %_ZNSt10shared_ptrIN6Assimp7Blender4BaseEEC2ERKS3_.exit
  %.pre189 = load ptr, ptr %i.bc, align 8
  br label %._crit_edge170

.lr.ph169:                                        ; preds = %_ZNSt10shared_ptrIN6Assimp7Blender4BaseEEC2ERKS3_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  br label %bb.aw

bb.s:                                             ; preds = %bb.f
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.t:                                             ; preds = %.lr.ph, %_ZNSt10shared_ptrIN6Assimp7Blender4BaseEEaSERKS3_.exit
  %i.bq = phi ptr [ %i.ad, %.lr.ph ], [ %i.eh, %_ZNSt10shared_ptrIN6Assimp7Blender4BaseEEaSERKS3_.exit ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load ptr, ptr %i.br, align 8            ; 8 uses
  %.not165.a = icmp eq ptr %i.bs, null
  br i1 %.not165.a, label %.noexc83, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1232
  %i.bu = load ptr, ptr %i.bt, align 8
  %.not60 = icmp eq ptr %i.bu, null
  br i1 %.not60, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr %i.bs, ptr %i.b, align 8
  %i.bv = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.bw = load ptr, ptr %i.aj, align 8
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -8
  %.not.i.i79 = icmp eq ptr %i.bv, %i.bx
  br i1 %.not.i.i79, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.bs, ptr %i.bv, align 8
  %i.by = load ptr, ptr %i.ai, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.bz, ptr %i.ai, align 8
  br label %_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EE9push_backEOS4_.exit

bb.x:                                             ; preds = %bb.v
  invoke void @_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_push_back_auxIJS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EE9push_backEOS4_.exit unwind label %bb.y

_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.noexc83

bb.y:                                             ; preds = %bb.x
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.ap

bb.z:                                             ; preds = %bb.u
  %.02022.i = load ptr, ptr %i.ae, align 8        ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 32 ; 2 uses
  %i.cc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cb) #30
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.aa ] ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = call i32 @strncmp(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.cf, i64 noundef %i.cc) #30
  %i.ch = icmp slt i32 %i.cg, 0                   ; 2 uses
  %.in.v.i = select i1 %i.ch, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.aa, !llvm.loop !40

._crit_edge.i:                                    ; preds = %bb.aa
  br i1 %i.ch, label %._crit_edge.thread.i, label %bb.ac

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.z
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.af, %bb.z ] ; 4 uses
  %i.ci = load ptr, ptr %i.ag, align 8
  %i.cj = icmp eq ptr %.019.lcssa29.i, %i.ci
  br i1 %i.cj, label %select.unfold, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.thread.i
  %i.ck = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #30
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %.pre178 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i
  %i.cl = phi ptr [ %.pre178, %bb.ab ], [ %i.ce, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.ab ], [ %.02024.i, %._crit_edge.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.co = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cm) #30
  %i.cp = call i32 @strncmp(ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cn, i64 noundef %i.co) #30
  %.fr167 = freeze i32 %i.cp
  %i.cq = icmp slt i32 %.fr167, 0
  br i1 %i.cq, label %select.unfold, label %.noexc83

select.unfold:                                    ; preds = %bb.ac, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.ac ] ; 3 uses
  %i.cr = icmp eq ptr %.sroa.4.0.i.ph, %i.af
  br i1 %i.cr, label %_ZNSt8_Rb_treeIPKN6Assimp7Blender6ObjectES4_St9_IdentityIS4_ENS1_13ObjectCompareESaIS4_EE10_M_insert_IS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %select.unfold
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bs, i64 32 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cu) #30
  %i.cx = call i32 @strncmp(ptr noundef nonnull %i.cu, ptr noundef nonnull %i.cv, i64 noundef %i.cw) #30
  %i.cy = icmp slt i32 %i.cx, 0
  br label %_ZNSt8_Rb_treeIPKN6Assimp7Blender6ObjectES4_St9_IdentityIS4_ENS1_13ObjectCompareESaIS4_EE10_M_insert_IS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIPKN6Assimp7Blender6ObjectES4_St9_IdentityIS4_ENS1_13ObjectCompareESaIS4_EE10_M_insert_IS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i: ; preds = %bb.ad, %select.unfold
  %i.cz = phi i1 [ %i.cy, %bb.ad ], [ true, %select.unfold ]
  %i.da = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
          to label %.noexc84 unwind label %bb.ae  ; 2 uses

.noexc84:                                         ; preds = %_ZNSt8_Rb_treeIPKN6Assimp7Blender6ObjectES4_St9_IdentityIS4_ENS1_13ObjectCompareESaIS4_EE10_M_insert_IS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  store ptr %i.bs, ptr %i.db, align 8
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cz, ptr noundef nonnull %i.da, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.af) #25
  %i.dc = load i64, ptr %i.ah, align 8
  %i.dd = add i64 %i.dc, 1
  store i64 %i.dd, ptr %i.ah, align 8
  %.pre179 = load ptr, ptr %7, align 8
  br label %.noexc83

bb.ae:                                            ; preds = %_ZNSt8_Rb_treeIPKN6Assimp7Blender6ObjectES4_St9_IdentityIS4_ENS1_13ObjectCompareESaIS4_EE10_M_insert_IS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.noexc83:                                         ; preds = %.noexc84, %bb.ac, %bb.t, %_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EE9push_backEOS4_.exit
  %i.df = phi ptr [ %.pre179, %.noexc84 ], [ %i.bq, %bb.ac ], [ %i.bq, %bb.t ], [ %i.bq, %_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  store ptr %i.dh, ptr %7, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dj = load ptr, ptr %i.di, align 8            ; 5 uses
  %i.dk = load ptr, ptr %i.v, align 8             ; 4 uses
  %.not.i.i.i85 = icmp eq ptr %i.dj, %i.dk
  br i1 %.not.i.i.i85, label %_ZNSt10shared_ptrIN6Assimp7Blender4BaseEEaSERKS3_.exit, label %bb.af

bb.af:                                            ; preds = %.noexc83
  %.not7.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 3 uses
  %i.dm = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i86 = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i.i86, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dn = load i32, ptr %i.dl, align 4
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.dl, align 4
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.dp = atomicrmw volatile add ptr %i.dl, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.i.i.i.pre = load ptr, ptr %i.v, align 8
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.ah, %bb.ai, %bb.af
  %i.dq = phi ptr [ %i.dk, %bb.af ], [ %.pr.i.i.i.pre, %bb.ai ], [ %i.dk, %bb.ah ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 4 uses
  %i.ds = load atomic i64, ptr %i.dr acquire, align 8 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 4294967297
  %i.du = trunc i64 %i.ds to i32                  ; 2 uses
  br i1 %i.dt, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.dr, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i32 0, ptr %i.dv, align 4
  %i.dw = load ptr, ptr %i.dq, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #25, !inline_history !41
  %i.dz = load ptr, ptr %i.dq, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #25, !inline_history !41
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.ec = load i8, ptr @__libc_single_threaded, align 1
  %.not.i9.i.i.i = icmp eq i8 %i.ec, 0
  br i1 %.not.i9.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ed = add nsw i32 %i.du, -1
  store i32 %i.ed, ptr %i.dr, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.ee = atomicrmw volatile add ptr %i.dr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i = phi i32 [ %i.du, %bb.am ], [ %i.ee, %bb.an ]
  %i.ef = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ef, label %bb.ao, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !5

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ak, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.dj, ptr %i.v, align 8
  %.pre181 = load ptr, ptr %7, align 8
  br label %_ZNSt10shared_ptrIN6Assimp7Blender4BaseEEaSERKS3_.exit

_ZNSt10shared_ptrIN6Assimp7Blender4BaseEEaSERKS3_.exit: ; preds = %.noexc83, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.eg = phi ptr [ %i.dk, %.noexc83 ], [ %i.dj, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ]
  %i.eh = phi ptr [ %i.dh, %.noexc83 ], [ %.pre181, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %.not162 = icmp eq ptr %i.eh, null
  br i1 %.not162, label %._crit_edge, label %bb.t, !llvm.loop !42

bb.ap:                                            ; preds = %bb.ae, %bb.y
  %.pn61 = phi { ptr, i32 } [ %i.de, %bb.ae ], [ %i.ca, %bb.y ]
  call void @_ZNSt12__shared_ptrIN6Assimp7Blender4BaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.body

._crit_edge170:                                   ; preds = %_ZNSt10shared_ptrIN6Assimp7Blender4BaseEEaSERKS3_.exit115, %_ZNSt10shared_ptrIN6Assimp7Blender4BaseEEC2ERKS3_.exit.._crit_edge170_crit_edge
  %i.ei = phi ptr [ %.pre189, %_ZNSt10shared_ptrIN6Assimp7Blender4BaseEEC2ERKS3_.exit.._crit_edge170_crit_edge ], [ %i.hn, %_ZNSt10shared_ptrIN6Assimp7Blender4BaseEEaSERKS3_.exit115 ] ; 8 uses
  %.not.i.i87 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i87, label %_ZNSt12__shared_ptrIN6Assimp7Blender4BaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit91, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge170
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 4 uses
  %i.ek = load atomic i64, ptr %i.ej acquire, align 8 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 4294967297
  %i.em = trunc i64 %i.ek to i32                  ; 2 uses
  br i1 %i.el, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.ej, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 0, ptr %i.en, align 4
  %i.eo = load ptr, ptr %i.ei, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #25, !inline_history !39
  %i.er = load ptr, ptr %i.ei, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #25, !inline_history !39
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender4BaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit91

bb.as:                                            ; preds = %bb.aq
  %i.eu = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i88 = icmp eq i8 %i.eu, 0
  br i1 %.not.i.i.i88, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ev = add nsw i32 %i.em, -1
  store i32 %i.ev, ptr %i.ej, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89

bb.au:                                            ; preds = %bb.as
  %i.ew = atomicrmw volatile add ptr %i.ej, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i90 = phi i32 [ %i.em, %bb.at ], [ %i.ew, %bb.au ]
  %i.ex = icmp eq i32 %.0.i.i.i.i90, 1
  br i1 %i.ex, label %bb.av, label %_ZNSt12__shared_ptrIN6Assimp7Blender4BaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit91, !prof !5

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #25
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender4BaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit91

_ZNSt12__shared_ptrIN6Assimp7Blender4BaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit91: ; preds = %._crit_edge170, %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fa = load ptr, ptr %i.ey, align 8            ; 2 uses
  %i.fb = load ptr, ptr %i.ez, align 8            ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %bb.bo, label %bb.bs

bb.aw:                                            ; preds = %.lr.ph169, %_ZNSt10shared_ptrIN6Assimp7Blender4BaseEEaSERKS3_.exit115
  %i.fd = phi ptr [ %i.bk, %.lr.ph169 ], [ %i.ho, %_ZNSt10shared_ptrIN6Assimp7Blender4BaseEEaSERKS3_.exit115 ] ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  %i.ff = load ptr, ptr %i.fe, align 8            ; 6 uses
  %.not164.a = icmp eq ptr %i.ff, null
  br i1 %.not164.a, label %.noexc101, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 1232
  %i.fh = load ptr, ptr %i.fg, align 8
  %.not = icmp eq ptr %i.fh, null
  br i1 %.not, label %.noexc101, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.02022.i123 = load ptr, ptr %i.bl, align 8     ; 2 uses
  %.not23.i124 = icmp eq ptr %.02022.i123, null
  br i1 %.not23.i124, label %._crit_edge.thread.i140, label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %bb.ay
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 32 ; 2 uses
  %i.fj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fi) #30
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.lr.ph.i125
  %.02024.i126 = phi ptr [ %.02022.i123, %.lr.ph.i125 ], [ %.020.i129, %bb.az ] ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.02024.i126, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8            ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fn = call i32 @strncmp(ptr noundef nonnull %i.fi, ptr noundef nonnull %i.fm, i64 noundef %i.fj) #30
  %i.fo = icmp slt i32 %i.fn, 0                   ; 2 uses
  %.in.v.i127 = select i1 %i.fo, i64 16, i64 24
  %.in.i128 = getelementptr inbounds nuw i8, ptr %.02024.i126, i64 %.in.v.i127
  %.020.i129 = load ptr, ptr %.in.i128, align 8   ; 2 uses
  %.not.i130 = icmp eq ptr %.020.i129, null
  br i1 %.not.i130, label %._crit_edge.i131, label %bb.az, !llvm.loop !40

._crit_edge.i131:                                 ; preds = %bb.az
  br i1 %i.fo, label %._crit_edge.thread.i140, label %bb.bb

._crit_edge.thread.i140:                          ; preds = %._crit_edge.i131, %bb.ay
  %.019.lcssa29.i141 = phi ptr [ %.02024.i126, %._crit_edge.i131 ], [ %i.bm, %bb.ay ] ; 4 uses
  %i.fp = load ptr, ptr %i.bn, align 8
  %i.fq = icmp eq ptr %.019.lcssa29.i141, %i.fp
  br i1 %i.fq, label %select.unfold153, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.thread.i140
  %i.fr = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i141) #30
  %.phi.trans.insert184 = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  %.pre185 = load ptr, ptr %.phi.trans.insert184, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %._crit_edge.i131
  %i.fs = phi ptr [ %.pre185, %bb.ba ], [ %i.fl, %._crit_edge.i131 ]
  %.019.lcssa28.i132 = phi ptr [ %.019.lcssa29.i141, %bb.ba ], [ %.02024.i126, %._crit_edge.i131 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 32 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.fv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ft) #30
  %i.fw = call i32 @strncmp(ptr noundef nonnull %i.ft, ptr noundef nonnull %i.fu, i64 noundef %i.fv) #30
  %.fr = freeze i32 %i.fw
  %i.fx = icmp slt i32 %.fr, 0
  br i1 %i.fx, label %select.unfold153, label %.noexc101

select.unfold153:                                 ; preds = %bb.bb, %._crit_edge.thread.i140
  %.sroa.4.0.i137.ph = phi ptr [ %.019.lcssa29.i141, %._crit_edge.thread.i140 ], [ %.019.lcssa28.i132, %bb.bb ] ; 3 uses
  %i.fy = icmp eq ptr %.sroa.4.0.i137.ph, %i.bm
  br i1 %i.fy, label %_ZNSt8_Rb_treeIPKN6Assimp7Blender6ObjectES4_St9_IdentityIS4_ENS1_13ObjectCompareESaIS4_EE10_M_insert_IS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i96, label %bb.bc

bb.bc:                                            ; preds = %select.unfold153
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i137.ph, i64 32
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ff, i64 32 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.gd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gb) #30
  %i.ge = call i32 @strncmp(ptr noundef nonnull %i.gb, ptr noundef nonnull %i.gc, i64 noundef %i.gd) #30
  %i.gf = icmp slt i32 %i.ge, 0
  br label %_ZNSt8_Rb_treeIPKN6Assimp7Blender6ObjectES4_St9_IdentityIS4_ENS1_13ObjectCompareESaIS4_EE10_M_insert_IS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i96

_ZNSt8_Rb_treeIPKN6Assimp7Blender6ObjectES4_St9_IdentityIS4_ENS1_13ObjectCompareESaIS4_EE10_M_insert_IS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i96: ; preds = %bb.bc, %select.unfold153
  %i.gg = phi i1 [ %i.gf, %bb.bc ], [ true, %select.unfold153 ]
  %i.gh = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
          to label %.noexc102 unwind label %bb.bd ; 2 uses

.noexc102:                                        ; preds = %_ZNSt8_Rb_treeIPKN6Assimp7Blender6ObjectES4_St9_IdentityIS4_ENS1_13ObjectCompareESaIS4_EE10_M_insert_IS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i96
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  store ptr %i.ff, ptr %i.gi, align 8
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gg, ptr noundef nonnull %i.gh, ptr noundef nonnull %.sroa.4.0.i137.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.bm) #25
  %i.gj = load i64, ptr %i.bo, align 8
  %i.gk = add i64 %i.gj, 1
  store i64 %i.gk, ptr %i.bo, align 8
  %.pre186 = load ptr, ptr %8, align 8
  br label %.noexc101

bb.bd:                                            ; preds = %_ZNSt8_Rb_treeIPKN6Assimp7Blender6ObjectES4_St9_IdentityIS4_ENS1_13ObjectCompareESaIS4_EE10_M_insert_IS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i96
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN6Assimp7Blender4BaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.body

.noexc101:                                        ; preds = %.noexc102, %bb.bb, %bb.aw, %bb.ax
  %i.gm = phi ptr [ %.pre186, %.noexc102 ], [ %i.fd, %bb.bb ], [ %i.fd, %bb.aw ], [ %i.fd, %bb.ax ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = load ptr, ptr %i.gn, align 8            ; 2 uses
  store ptr %i.go, ptr %8, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8            ; 5 uses
  %i.gr = load ptr, ptr %i.bc, align 8            ; 4 uses
  %.not.i.i.i104 = icmp eq ptr %i.gq, %i.gr
  br i1 %.not.i.i.i104, label %_ZNSt10shared_ptrIN6Assimp7Blender4BaseEEaSERKS3_.exit115, label %bb.be

bb.be:                                            ; preds = %.noexc101
  %.not7.i.i.i105 = icmp eq ptr %i.gq, null
  br i1 %.not7.i.i.i105, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i109, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 3 uses
  %i.gt = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i106 = icmp eq i8 %i.gt, 0
  br i1 %.not.i.i.i.i106, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gu = load i32, ptr %i.gs, align 4
  %i.gv = add nsw i32 %i.gu, 1
  store i32 %i.gv, ptr %i.gs, align 4
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i109

bb.bh:                                            ; preds = %bb.bf
  %i.gw = atomicrmw volatile add ptr %i.gs, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.i.i.i108.pre = load ptr, ptr %i.bc, align 8
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i109

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i109: ; preds = %bb.bg, %bb.bh, %bb.be
  %i.gx = phi ptr [ %i.gr, %bb.be ], [ %.pr.i.i.i108.pre, %bb.bh ], [ %i.gr, %bb.bg ] ; 8 uses
  %.not8.i.i.i110 = icmp eq ptr %i.gx, null
  br i1 %.not8.i.i.i110, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i114, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i109
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 4 uses
  %i.gz = load atomic i64, ptr %i.gy acquire, align 8 ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 4294967297
  %i.hb = trunc i64 %i.gz to i32                  ; 2 uses
  br i1 %i.ha, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store i32 0, ptr %i.gy, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  store i32 0, ptr %i.hc, align 4
  %i.hd = load ptr, ptr %i.gx, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #25, !inline_history !41
  %i.hg = load ptr, ptr %i.gx, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #25, !inline_history !41
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i114

bb.bk:                                            ; preds = %bb.bi
  %i.hj = load i8, ptr @__libc_single_threaded, align 1
  %.not.i9.i.i.i111 = icmp eq i8 %i.hj, 0
  br i1 %.not.i9.i.i.i111, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hk = add nsw i32 %i.hb, -1
  store i32 %i.hk, ptr %i.gy, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i112

bb.bm:                                            ; preds = %bb.bk
  %i.hl = atomicrmw volatile add ptr %i.gy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i112

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i112: ; preds = %bb.bm, %bb.bl
  %.0.i.i.i.i.i113 = phi i32 [ %i.hb, %bb.bl ], [ %i.hl, %bb.bm ]
  %i.hm = icmp eq i32 %.0.i.i.i.i.i113, 1
  br i1 %i.hm, label %bb.bn, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i114, !prof !5

bb.bn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i112
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i114

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i114: ; preds = %bb.bn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i112, %bb.bj, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i109
  store ptr %i.gq, ptr %i.bc, align 8
  %.pre188 = load ptr, ptr %8, align 8
  br label %_ZNSt10shared_ptrIN6Assimp7Blender4BaseEEaSERKS3_.exit115

_ZNSt10shared_ptrIN6Assimp7Blender4BaseEEaSERKS3_.exit115: ; preds = %.noexc101, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i114
  %i.hn = phi ptr [ %i.gr, %.noexc101 ], [ %i.gq, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i114 ]
  %i.ho = phi ptr [ %i.go, %.noexc101 ], [ %.pre188, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i114 ] ; 2 uses
  %.not163 = icmp eq ptr %i.ho, null
  br i1 %.not163, label %._crit_edge170, label %bb.aw, !llvm.loop !43

bb.bo:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp7Blender4BaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit91
  %i.hp = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr @.str, ptr %i.a, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJPKcRA44_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.hp, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(44) @.str.19)
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  invoke void @__cxa_throw(ptr nonnull %i.hp, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %.noexc116 unwind label %bb.br

.noexc116:                                        ; preds = %bb.bp
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @__cxa_free_exception(ptr nonnull %i.hp) #25
  br label %.body

bb.br:                                            ; preds = %bb.bp, %bb.bs
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bs:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp7Blender4BaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit91
  %i.hs = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8            ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = ptrtoint ptr %i.ht to i64
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = ashr exact i64 %i.hy, 3
  %i.ia = icmp ne ptr %i.ht, null
  %.neg.i.i = sext i1 %i.ia to i64
  %i.ib = add nsw i64 %i.hz, %.neg.i.i
  %i.ic = shl nsw i64 %i.ib, 6
  %i.id = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ie = load ptr, ptr %i.id, align 8
  %i.if = ptrtoint ptr %i.fa to i64
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = sub i64 %i.if, %i.ig
  %i.ii = ashr exact i64 %i.ih, 3
  %i.ij = add nsw i64 %i.ic, %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.il = load ptr, ptr %i.ik, align 8
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = ptrtoint ptr %i.fb to i64
  %i.io = sub i64 %i.im, %i.in
  %i.ip = ashr exact i64 %i.io, 3
  %i.iq = add nsw i64 %i.ij, %i.ip                ; 2 uses
  %i.ir = trunc i64 %i.iq to i32                  ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.c, i64 1104 ; 2 uses
  store i32 %i.ir, ptr %i.is, align 8
  %i.it = shl i64 %i.iq, 3
  %i.iu = and i64 %i.it, 34359738360              ; 2 uses
  %i.iv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.iu) #26
          to label %bb.bt unwind label %bb.br     ; 2 uses

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.iv, i8 0, i64 %i.iu, i1 false)
  %i.iw = getelementptr inbounds nuw i8, ptr %i.c, i64 1112 ; 3 uses
  store ptr %i.iv, ptr %i.iw, align 8
  %.not175 = icmp eq i32 %i.ir, 0
  br i1 %.not175, label %._crit_edge174, label %.lr.ph173

.lr.ph173:                                        ; preds = %bb.bt
  %i.ix = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.iy = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.iz = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.ja = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.jb = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.jc = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.jd = getelementptr inbounds nuw i8, ptr %9, i64 60
  br label %bb.bv

._crit_edge174:                                   ; preds = %bb.cb, %bb.bt
  %i.je = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i.i117 = icmp eq ptr %i.je, null
  br i1 %.not.i.i117, label %_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EED2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %._crit_edge174
  %i.jf = load ptr, ptr %i.hu, align 8            ; 2 uses
  %i.jg = load ptr, ptr %i.hs, align 8            ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = icmp ult ptr %i.jf, %i.jh
  br i1 %i.ji, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bu, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.jk, %.lr.ph.i.i.i ], [ %i.jf, %bb.bu ] ; 3 uses
  %i.jj = load ptr, ptr %.06.i.i.i, align 8
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef 512) #27
  %i.jk = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.jl = icmp ult ptr %.06.i.i.i, %i.jg
  br i1 %i.jl, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i, !llvm.loop !44

_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %6, align 8
  br label %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i

_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i, %bb.bu
  %i.jm = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i ], [ %i.je, %bb.bu ]
  %i.jn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.jo = load i64, ptr %i.jn, align 8
  %i.jp = shl i64 %i.jo, 3
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jp) #27
  br label %_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EED2Ev.exit

_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EED2Ev.exit: ; preds = %._crit_edge174, %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ce

bb.bv:                                            ; preds = %.lr.ph173, %bb.cb
  %indvars.iv = phi i64 [ 0, %.lr.ph173 ], [ %indvars.iv.next, %bb.cb ] ; 5 uses
  %i.jq = load ptr, ptr %i.ez, align 8, !noalias !45 ; 2 uses
  %i.jr = load ptr, ptr %i.ix, align 8, !noalias !45
  %i.js = load ptr, ptr %i.hu, align 8, !noalias !45
  %i.jt = ptrtoint ptr %i.jq to i64
  %i.ju = ptrtoint ptr %i.jr to i64
  %i.jv = sub i64 %i.jt, %i.ju
  %i.jw = ashr exact i64 %i.jv, 3
  %i.jx = add nsw i64 %i.jw, %indvars.iv          ; 5 uses
  %i.jy = icmp sgt i64 %i.jx, -1
  br i1 %i.jy, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %i.jz = icmp samesign ult i64 %i.jx, 64
  br i1 %i.jz, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %indvars.iv
  br label %_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EEixEm.exit

bb.by:                                            ; preds = %bb.bw
  %i.kb = lshr i64 %i.jx, 6
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bv
  %i.kc = ashr i64 %i.jx, 6
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.kd = phi i64 [ %i.kb, %bb.by ], [ %i.kc, %bb.bz ] ; 2 uses
  %i.ke = getelementptr inbounds [8 x i8], ptr %i.js, i64 %i.kd
  %i.kf = load ptr, ptr %i.ke, align 8, !noalias !45
  %i.kg = shl nsw i64 %i.kd, 6
  %i.kh = sub nsw i64 %i.jx, %i.kg
  %i.ki = getelementptr inbounds [8 x i8], ptr %i.kf, i64 %i.kh
  br label %_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EEixEm.exit

_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EEixEm.exit: ; preds = %bb.bx, %bb.ca
  %storemerge.i.i.i.i = phi ptr [ %i.ki, %bb.ca ], [ %i.ka, %bb.bx ]
  %i.kj = load ptr, ptr %storemerge.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store float 1.000000e+00, ptr %9, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.iy, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.iz, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ja, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.jb, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jc, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.jd, align 4
  %i.kk = invoke noundef ptr @_ZN6Assimp15BlenderImporter11ConvertNodeERKNS_7Blender5SceneEPKNS1_6ObjectERNS1_14ConversionDataERK12aiMatrix4x4tIfE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(1176) %2, ptr noundef %i.kj, ptr noundef nonnull align 8 dereferenceable(336) %4, ptr noundef nonnull align 4 dereferenceable(64) %9)
          to label %bb.cb unwind label %bb.cc

bb.cb:                                            ; preds = %_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EEixEm.exit
  %i.kl = load ptr, ptr %i.iw, align 8
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %indvars.iv
  store ptr %i.kk, ptr %i.km, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.kn = load ptr, ptr %i.iw, align 8
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv
  %i.kp = load ptr, ptr %i.ko, align 8
end_hunk_1
begin_hunk_2_@_ZN6Assimp15BlenderImporter16ConvertBlendFileEP7aiSceneRKNS_7Blender5SceneERKNS3_12FileDatabaseE:bb.a
  %i.mo = icmp sgt i64 %i.mh, 8
  br i1 %i.mo, label %bb.cs, label %bb.ct, !prof !49

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mm, ptr align 8 %i.me, i64 %i.mh, i1 false)
  br label %_ZSt8_DestroyIPP8aiCameraS1_EvT_S3_RSaIT0_E.exit.i.i.i

bb.ct:                                            ; preds = %bb.cr
  %i.mp = icmp eq i64 %i.mh, 8
  br i1 %i.mp, label %bb.cu, label %_ZSt8_DestroyIPP8aiCameraS1_EvT_S3_RSaIT0_E.exit.i.i.i

bb.cu:                                            ; preds = %bb.ct
  %i.mq = load ptr, ptr %i.me, align 8
  store ptr %i.mq, ptr %i.mm, align 8
  br label %_ZSt8_DestroyIPP8aiCameraS1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPP8aiCameraS1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %bb.cs, %bb.ct, %bb.cu
  store ptr %i.me, ptr %i.mc, align 8
  br label %_ZN6Assimp7Blender9TempArrayISt6vector8aiCameraE7dismissEv.exit

_ZN6Assimp7Blender9TempArrayISt6vector8aiCameraE7dismissEv.exit: ; preds = %_ZSt8_DestroyIPP8aiCameraS1_EvT_S3_RSaIT0_E.exit.i.i.i, %_ZN6Assimp7Blender9TempArrayISt6vector7aiLightE7dismissEv.exit
  %i.mr = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.ms = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %i.mt = load ptr, ptr %i.ms, align 8            ; 2 uses
  %i.mu = load ptr, ptr %i.mr, align 8            ; 5 uses
  %i.mv = ptrtoint ptr %i.mt to i64
  %i.mw = ptrtoint ptr %i.mu to i64
  %i.mx = sub i64 %i.mv, %i.mw                    ; 5 uses
  %.not68 = icmp eq ptr %i.mt, %i.mu
  br i1 %.not68, label %_ZN6Assimp7Blender9TempArrayISt6vector10aiMaterialE7dismissEv.exit, label %bb.cv

bb.cv:                                            ; preds = %_ZN6Assimp7Blender9TempArrayISt6vector8aiCameraE7dismissEv.exit
  %i.my = lshr exact i64 %i.mx, 3
  %i.mz = trunc i64 %i.my to i32
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.mz, ptr %i.na, align 8
  %i.nb = and i64 %i.mx, 34359738360
  %i.nc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.nb) #26
          to label %bb.cw unwind label %bb.d      ; 3 uses

bb.cw:                                            ; preds = %bb.cv
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.nc, ptr %i.nd, align 8
  %i.ne = icmp sgt i64 %i.mx, 8
  br i1 %i.ne, label %bb.cx, label %bb.cy, !prof !49

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.nc, ptr align 8 %i.mu, i64 %i.mx, i1 false)
  br label %_ZSt8_DestroyIPP10aiMaterialS1_EvT_S3_RSaIT0_E.exit.i.i.i

bb.cy:                                            ; preds = %bb.cw
  %i.nf = icmp eq i64 %i.mx, 8
  br i1 %i.nf, label %bb.cz, label %_ZSt8_DestroyIPP10aiMaterialS1_EvT_S3_RSaIT0_E.exit.i.i.i

bb.cz:                                            ; preds = %bb.cy
  %i.ng = load ptr, ptr %i.mu, align 8
  store ptr %i.ng, ptr %i.nc, align 8
  br label %_ZSt8_DestroyIPP10aiMaterialS1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPP10aiMaterialS1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %bb.cx, %bb.cy, %bb.cz
  store ptr %i.mu, ptr %i.ms, align 8
  br label %_ZN6Assimp7Blender9TempArrayISt6vector10aiMaterialE7dismissEv.exit

_ZN6Assimp7Blender9TempArrayISt6vector10aiMaterialE7dismissEv.exit: ; preds = %_ZSt8_DestroyIPP10aiMaterialS1_EvT_S3_RSaIT0_E.exit.i.i.i, %_ZN6Assimp7Blender9TempArrayISt6vector8aiCameraE7dismissEv.exit
  %i.nh = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ni = getelementptr inbounds nuw i8, ptr %4, i64 152 ; 2 uses
  %i.nj = load ptr, ptr %i.ni, align 8            ; 2 uses
  %i.nk = load ptr, ptr %i.nh, align 8            ; 5 uses
  %i.nl = ptrtoint ptr %i.nj to i64
  %i.nm = ptrtoint ptr %i.nk to i64
  %i.nn = sub i64 %i.nl, %i.nm                    ; 5 uses
  %.not69 = icmp eq ptr %i.nj, %i.nk
  br i1 %.not69, label %_ZN6Assimp7Blender9TempArrayISt6vector9aiTextureE7dismissEv.exit, label %bb.da

bb.da:                                            ; preds = %_ZN6Assimp7Blender9TempArrayISt6vector10aiMaterialE7dismissEv.exit
  %i.no = lshr exact i64 %i.nn, 3
  %i.np = trunc i64 %i.no to i32
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 %i.np, ptr %i.nq, align 8
  %i.nr = and i64 %i.nn, 34359738360
  %i.ns = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.nr) #26
          to label %bb.db unwind label %bb.d      ; 3 uses

bb.db:                                            ; preds = %bb.da
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.ns, ptr %i.nt, align 8
  %i.nu = icmp sgt i64 %i.nn, 8
  br i1 %i.nu, label %bb.dc, label %bb.dd, !prof !49

bb.dc:                                            ; preds = %bb.db
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ns, ptr align 8 %i.nk, i64 %i.nn, i1 false)
  br label %_ZSt8_DestroyIPP9aiTextureS1_EvT_S3_RSaIT0_E.exit.i.i.i

bb.dd:                                            ; preds = %bb.db
  %i.nv = icmp eq i64 %i.nn, 8
  br i1 %i.nv, label %bb.de, label %_ZSt8_DestroyIPP9aiTextureS1_EvT_S3_RSaIT0_E.exit.i.i.i

bb.de:                                            ; preds = %bb.dd
  %i.nw = load ptr, ptr %i.nk, align 8
  store ptr %i.nw, ptr %i.ns, align 8
  br label %_ZSt8_DestroyIPP9aiTextureS1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPP9aiTextureS1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %bb.dc, %bb.dd, %bb.de
  store ptr %i.nk, ptr %i.ni, align 8
  br label %_ZN6Assimp7Blender9TempArrayISt6vector9aiTextureE7dismissEv.exit

_ZN6Assimp7Blender9TempArrayISt6vector9aiTextureE7dismissEv.exit: ; preds = %_ZSt8_DestroyIPP9aiTextureS1_EvT_S3_RSaIT0_E.exit.i.i.i, %_ZN6Assimp7Blender9TempArrayISt6vector10aiMaterialE7dismissEv.exit
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ny = load i32, ptr %i.nx, align 8
  %.not72 = icmp eq i32 %i.ny, 0
  br i1 %.not72, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %_ZN6Assimp7Blender9TempArrayISt6vector9aiTextureE7dismissEv.exit
  %i.nz = load i32, ptr %1, align 8
  %i.oa = or i32 %i.nz, 1
  store i32 %i.oa, ptr %1, align 8
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %_ZN6Assimp7Blender9TempArrayISt6vector9aiTextureE7dismissEv.exit
  call void @_ZN6Assimp7Blender14ConversionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.dh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %bb.cd, %bb.d
  %.pn70 = phi { ptr, i32 } [ %i.n, %bb.d ], [ %.pn61.pn.pn, %bb.cd ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ]
  call void @_ZN6Assimp7Blender14ConversionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn70
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender5SceneD2Ev(ptr noundef nonnull align 8 dereferenceable(1176) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10__weak_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.d = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 4              ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.c, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i = phi i32 [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  %i.h = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.h, label %bb.e, label %_ZNSt10__weak_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !50
  br label %_ZNSt10__weak_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt10__weak_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.m = load ptr, ptr %i.l, align 8              ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i, label %_ZN6Assimp7Blender8ListBaseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10__weak_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.n, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4
  %i.s = load ptr, ptr %i.m, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #25, !inline_history !51
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #25, !inline_history !51
  br label %_ZN6Assimp7Blender8ListBaseD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.y = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i2.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i2.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

bb.j:                                             ; preds = %bb.h
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i4.i = phi i32 [ %i.q, %bb.i ], [ %i.aa, %bb.j ]
  %i.ab = icmp eq i32 %.0.i.i.i.i4.i, 1
  br i1 %i.ab, label %bb.k, label %_ZN6Assimp7Blender8ListBaseD2Ev.exit, !prof !5

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #25
  br label %_ZN6Assimp7Blender8ListBaseD2Ev.exit

_ZN6Assimp7Blender8ListBaseD2Ev.exit:             ; preds = %_ZNSt10__weak_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i, %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.ad = load ptr, ptr %i.ac, align 8            ; 8 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp7Blender10CollectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6Assimp7Blender8ListBaseD2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ae, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.ad, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #25, !inline_history !52
  %i.am = load ptr, ptr %i.ad, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #25, !inline_history !52
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender10CollectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.ap = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1 = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i = phi i32 [ %i.ah, %bb.o ], [ %i.ar, %bb.p ]
  %i.as = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.as, label %bb.q, label %_ZNSt12__shared_ptrIN6Assimp7Blender10CollectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #25
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender10CollectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp7Blender10CollectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN6Assimp7Blender8ListBaseD2Ev.exit, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.au = load ptr, ptr %i.at, align 8            ; 8 uses
  %.not.i.i2 = icmp eq ptr %i.au, null
  br i1 %.not.i.i2, label %_ZNSt12__shared_ptrIN6Assimp7Blender4BaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp7Blender10CollectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.av, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4
  %i.ba = load ptr, ptr %i.au, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25, !inline_history !39
  %i.bd = load ptr, ptr %i.au, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25, !inline_history !39
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender4BaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.bg = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i3 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i3, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4

bb.v:                                             ; preds = %bb.t
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i5 = phi i32 [ %i.ay, %bb.u ], [ %i.bi, %bb.v ]
  %i.bj = icmp eq i32 %.0.i.i.i.i5, 1
  br i1 %i.bj, label %bb.w, label %_ZNSt12__shared_ptrIN6Assimp7Blender4BaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender4BaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp7Blender4BaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN6Assimp7Blender10CollectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4, %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.bl = load ptr, ptr %i.bk, align 8            ; 8 uses
  %.not.i.i6 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i6, label %_ZNSt12__shared_ptrIN6Assimp7Blender5WorldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp7Blender4BaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.bm, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4
  %i.br = load ptr, ptr %i.bl, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  tail call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25, !inline_history !53
  %i.bu = load ptr, ptr %i.bl, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25, !inline_history !53
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender5WorldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.bx = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i7 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i7, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8

bb.ab:                                            ; preds = %bb.z
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i9 = phi i32 [ %i.bp, %bb.aa ], [ %i.bz, %bb.ab ]
  %i.ca = icmp eq i32 %.0.i.i.i.i9, 1
  br i1 %i.ca, label %bb.ac, label %_ZNSt12__shared_ptrIN6Assimp7Blender5WorldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender5WorldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp7Blender5WorldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN6Assimp7Blender4BaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8, %bb.ac
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.cc = load ptr, ptr %i.cb, align 8            ; 8 uses
  %.not.i.i10 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i10, label %_ZNSt12__shared_ptrIN6Assimp7Blender6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp7Blender5WorldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.cd, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.ch, align 4
  %i.ci = load ptr, ptr %i.cc, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #25, !inline_history !54
  %i.cl = load ptr, ptr %i.cc, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #25, !inline_history !54
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.af:                                            ; preds = %bb.ad
  %i.co = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i11 = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i11, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12

bb.ah:                                            ; preds = %bb.af
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i13 = phi i32 [ %i.cg, %bb.ag ], [ %i.cq, %bb.ah ]
  %i.cr = icmp eq i32 %.0.i.i.i.i13, 1
  br i1 %i.cr, label %bb.ai, label %_ZNSt12__shared_ptrIN6Assimp7Blender6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #25
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp7Blender6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN6Assimp7Blender5WorldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12, %bb.ai
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender12FileDatabaseD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESD_EvT_SF_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  invoke void @_ZNSt8_Rb_treeIN6Assimp7Blender7PointerESt4pairIKS2_St10shared_ptrINS1_8ElemBaseEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i.i, ptr noundef %i.f)
          to label %_ZSt8_DestroyISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEEEvPT_.exit.i.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #29
  unreachable

_ZSt8_DestroyISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESD_EvT_SF_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !55

_ZSt8_DestroyIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESD_EvT_SF_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8
  br label %_ZSt8_DestroyIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESD_EvT_SF_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESD_EvT_SF_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESD_EvT_SF_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.j = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESD_EvT_SF_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i, label %_ZN6Assimp7Blender11ObjectCacheISt10shared_ptrED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESD_EvT_SF_RSaIT0_E.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #27
  br label %_ZN6Assimp7Blender11ObjectCacheISt10shared_ptrED2Ev.exit

_ZN6Assimp7Blender11ObjectCacheISt10shared_ptrED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESD_EvT_SF_RSaIT0_E.exit.i.i, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.q, %i.s
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp7Blender13FileBlockHeadES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6Assimp7Blender11ObjectCacheISt10shared_ptrED2Ev.exit, %_ZSt8_DestroyIN6Assimp7Blender13FileBlockHeadEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN6Assimp7Blender13FileBlockHeadEEvPT_.exit.i.i.i ], [ %i.q, %_ZN6Assimp7Blender11ObjectCacheISt10shared_ptrED2Ev.exit ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZSt8_DestroyIN6Assimp7Blender13FileBlockHeadEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZSt8_DestroyIN6Assimp7Blender13FileBlockHeadEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6Assimp7Blender13FileBlockHeadEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %i.s
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6Assimp7Blender13FileBlockHeadES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !56

_ZSt8_DestroyIPN6Assimp7Blender13FileBlockHeadES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6Assimp7Blender13FileBlockHeadEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.p, align 8
  br label %_ZSt8_DestroyIPN6Assimp7Blender13FileBlockHeadES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp7Blender13FileBlockHeadES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp7Blender13FileBlockHeadES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZN6Assimp7Blender11ObjectCacheISt10shared_ptrED2Ev.exit
  %i.aa = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6Assimp7Blender13FileBlockHeadES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.q, %_ZN6Assimp7Blender11ObjectCacheISt10shared_ptrED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6Assimp7Blender13FileBlockHeadES2_EvT_S4_RSaIT0_E.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #27
  br label %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp7Blender13FileBlockHeadES2_EvT_S4_RSaIT0_E.exit.i, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ah = load ptr, ptr %i.ag, align 8            ; 8 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb1ELb1EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.ai, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4
  %i.an = load ptr, ptr %i.ah, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #25, !inline_history !57
  %i.aq = load ptr, ptr %i.ah, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #25, !inline_history !57
  br label %_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb1ELb1EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.at = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1 = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = add nsw i32 %i.al, -1
  store i32 %i.au, ptr %i.ai, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.av = atomicrmw volatile add ptr %i.ai, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.al, %bb.h ], [ %i.av, %bb.i ]
  %i.aw = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aw, label %bb.j, label %_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb1ELb1EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #25
  br label %_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb1ELb1EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb1ELb1EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EED2Ev.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef %i.ba)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit.i unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb1ELb1EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #29
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit.i: ; preds = %_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb1ELb1EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not4.i.i.i.i2 = icmp eq ptr %i.be, %i.bg
  br i1 %.not4.i.i.i.i2, label %_ZSt8_DestroyIPN6Assimp7Blender9StructureES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i3

.lr.ph.i.i.i.i3:                                  ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit.i, %.lr.ph.i.i.i.i3
  %.05.i.i.i.i4 = phi ptr [ %i.bh, %.lr.ph.i.i.i.i3 ], [ %i.be, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit.i ] ; 2 uses
  tail call void @_ZN6Assimp7Blender9StructureD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.05.i.i.i.i4) #25
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i4, i64 120 ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %i.bh, %i.bg
  br i1 %.not.i.i.i.i5, label %_ZSt8_DestroyIPN6Assimp7Blender9StructureES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i3, !llvm.loop !58

_ZSt8_DestroyIPN6Assimp7Blender9StructureES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i3
  %.pr.i.i6 = load ptr, ptr %i.bd, align 8
  br label %_ZSt8_DestroyIPN6Assimp7Blender9StructureES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6Assimp7Blender9StructureES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6Assimp7Blender9StructureES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit.i
  %i.bi = phi ptr [ %.pr.i.i6, %_ZSt8_DestroyIPN6Assimp7Blender9StructureES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.be, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i7 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i1.i.i7, label %_ZNSt6vectorIN6Assimp7Blender9StructureESaIS2_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN6Assimp7Blender9StructureES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #27
  br label %_ZNSt6vectorIN6Assimp7Blender9StructureESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN6Assimp7Blender9StructureESaIS2_EED2Ev.exit.i: ; preds = %bb.l, %_ZSt8_DestroyIPN6Assimp7Blender9StructureES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IMN6Assimp7Blender9StructureEKFSt10shared_ptrINS9_8ElemBaseEEvEMSA_KFvSD_RKNS9_12FileDatabaseEEEESt10_Select1stISM_ESt4lessIS5_ESaISM_EE8_M_eraseEPSt13_Rb_tree_nodeISM_E(ptr noundef nonnull align 8 dereferenceable(120) %i.ax, ptr noundef %i.bp)
          to label %_ZN6Assimp7Blender3DNAD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6Assimp7Blender9StructureESaIS2_EED2Ev.exit.i
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  tail call void @__clang_call_terminate(ptr %i.br) #29
  unreachable

_ZN6Assimp7Blender3DNAD2Ev.exit:                  ; preds = %_ZNSt6vectorIN6Assimp7Blender9StructureESaIS2_EED2Ev.exit.i
  ret void
}

declare void @_ZN6Assimp7Blender13SectionParser4NextEv(ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #9

declare void @_ZN6Assimp7Blender9DNAParser5ParseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

declare void @_ZNK6Assimp7Blender9Structure7ConvertINS0_5SceneEEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(1176), ptr noundef nonnull align 8 dereferenceable(232)) local_unnamed_addr #9

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4infoIJRA22_KcRjS4_S5_RA15_S2_S5_RA19_S2_S5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(22) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(22) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(15) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 1 dereferenceable(19) %7, ptr noundef nonnull align 4 dereferenceable(4) %8) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %10)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(22) %1) #25
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %10, ptr noundef nonnull align 1 dereferenceable(22) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA22_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %10) #25
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA22_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJRA22_KcRjRA15_S2_S5_RA19_S2_S5_ES5_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSD_SE_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %10, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(22) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(15) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 1 dereferenceable(19) %7, ptr noundef nonnull align 4 dereferenceable(4) %8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA22_cEERKT_.exit
  %i.d = load ptr, ptr %9, align 8
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %9, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %10, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %10, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #25
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA22_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %9, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp15BlenderImporter18ParseSubCollectionERKNS_7Blender5SceneEP6aiNodeRKSt10shared_ptrINS1_10CollectionEERNS1_14ConversionDataE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(1176) %1, ptr noundef %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(336) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::deque", align 8        ; 19 uses
  %6 = alloca %"class.std::shared_ptr.59", align 8 ; 10 uses
  %7 = alloca %"class.std::deque.62", align 8     ; 18 uses
  %8 = alloca %"class.std::shared_ptr.68", align 8 ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %9 = alloca %class.aiMatrix4x4t, align 4        ; 11 uses
  %10 = alloca %"class.std::shared_ptr.68", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %5, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.c = load ptr, ptr %3, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1080
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.e = load ptr, ptr %i.d, align 8, !noalias !59 ; 3 uses
  store ptr %i.e, ptr %6, align 8, !alias.scope !59
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1088
  %i.h = load ptr, ptr %i.g, align 8, !noalias !59 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !alias.scope !59
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZSt19static_pointer_castIN6Assimp7Blender16CollectionObjectENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !noalias !59
  %.not.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.i, align 4, !noalias !59
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !noalias !59
  br label %_ZSt19static_pointer_castIN6Assimp7Blender16CollectionObjectENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit

bb.d:                                             ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4, !noalias !59 ; 0 uses
  %.pre = load ptr, ptr %6, align 8
  br label %_ZSt19static_pointer_castIN6Assimp7Blender16CollectionObjectENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit

_ZSt19static_pointer_castIN6Assimp7Blender16CollectionObjectENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.n = phi ptr [ %i.e, %bb.a ], [ %i.e, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %.not97107 = icmp eq ptr %i.n, null
  br i1 %.not97107, label %_ZSt19static_pointer_castIN6Assimp7Blender16CollectionObjectENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit.._crit_edge_crit_edge, label %.lr.ph

_ZSt19static_pointer_castIN6Assimp7Blender16CollectionObjectENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit.._crit_edge_crit_edge: ; preds = %_ZSt19static_pointer_castIN6Assimp7Blender16CollectionObjectENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit
  %.pre122 = load ptr, ptr %i.f, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt19static_pointer_castIN6Assimp7Blender16CollectionObjectENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 64
  br label %bb.k

._crit_edge:                                      ; preds = %_ZNSt10shared_ptrIN6Assimp7Blender16CollectionObjectEEaSERKS3_.exit, %_ZSt19static_pointer_castIN6Assimp7Blender16CollectionObjectENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit.._crit_edge_crit_edge
  %i.q = phi ptr [ %.pre122, %_ZSt19static_pointer_castIN6Assimp7Blender16CollectionObjectENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit.._crit_edge_crit_edge ], [ %i.bq, %_ZNSt10shared_ptrIN6Assimp7Blender16CollectionObjectEEaSERKS3_.exit ] ; 8 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp7Blender16CollectionObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.r, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4
  %i.w = load ptr, ptr %i.q, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #25, !inline_history !62
  %i.z = load ptr, ptr %i.q, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #25, !inline_history !62
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender16CollectionObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.h ], [ %i.ae, %bb.i ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.j, label %_ZNSt12__shared_ptrIN6Assimp7Blender16CollectionObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #25
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender16CollectionObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp7Blender16CollectionObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %._crit_edge, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %7, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef 0)
          to label %_ZNSt5dequeIPN6Assimp7Blender10CollectionESaIS3_EEC2Ev.exit unwind label %bb.ai

bb.k:                                             ; preds = %.lr.ph, %_ZNSt10shared_ptrIN6Assimp7Blender16CollectionObjectEEaSERKS3_.exit
  %i.ag = phi ptr [ %i.n, %.lr.ph ], [ %i.br, %_ZNSt10shared_ptrIN6Assimp7Blender16CollectionObjectEEaSERKS3_.exit ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %_ZNSt5dequeIPN6Assimp7Blender6ObjectESaIS3_EE9push_backERKS3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.ak = load ptr, ptr %i.p, align 8
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -8
  %.not.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.ai, ptr %i.aj, align 8
  %i.am = load ptr, ptr %i.o, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.an, ptr %i.o, align 8
  br label %_ZNSt5dequeIPN6Assimp7Blender6ObjectESaIS3_EE9push_backERKS3_.exit

bb.n:                                             ; preds = %bb.l
  invoke void @_ZNSt5dequeIPN6Assimp7Blender6ObjectESaIS3_EE16_M_push_back_auxIJRKS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %._ZNSt5dequeIPN6Assimp7Blender6ObjectESaIS3_EE9push_backERKS3_.exit_crit_edge unwind label %bb.o

._ZNSt5dequeIPN6Assimp7Blender6ObjectESaIS3_EE9push_backERKS3_.exit_crit_edge: ; preds = %bb.n
  %.pre119 = load ptr, ptr %6, align 8
  br label %_ZNSt5dequeIPN6Assimp7Blender6ObjectESaIS3_EE9push_backERKS3_.exit

bb.o:                                             ; preds = %bb.n
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN6Assimp7Blender16CollectionObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.cr

_ZNSt5dequeIPN6Assimp7Blender6ObjectESaIS3_EE9push_backERKS3_.exit: ; preds = %._ZNSt5dequeIPN6Assimp7Blender6ObjectESaIS3_EE9push_backERKS3_.exit_crit_edge, %bb.m, %bb.k
  %i.ap = phi ptr [ %.pre119, %._ZNSt5dequeIPN6Assimp7Blender6ObjectESaIS3_EE9push_backERKS3_.exit_crit_edge ], [ %i.ag, %bb.m ], [ %i.ag, %bb.k ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  store ptr %i.ar, ptr %6, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.at = load ptr, ptr %i.as, align 8            ; 5 uses
  %i.au = load ptr, ptr %i.f, align 8             ; 4 uses
  %.not.i.i.i44 = icmp eq ptr %i.at, %i.au
  br i1 %.not.i.i.i44, label %_ZNSt10shared_ptrIN6Assimp7Blender16CollectionObjectEEaSERKS3_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt5dequeIPN6Assimp7Blender6ObjectESaIS3_EE9push_backERKS3_.exit
  %.not7.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 3 uses
  %i.aw = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i45 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i45, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = load i32, ptr %i.av, align 4
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.av, align 4
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.az = atomicrmw volatile add ptr %i.av, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.i.i.i.pre = load ptr, ptr %i.f, align 8
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.r, %bb.s, %bb.p
  %i.ba = phi ptr [ %i.au, %bb.p ], [ %.pr.i.i.i.pre, %bb.s ], [ %i.au, %bb.r ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4294967297
  %i.be = trunc i64 %i.bc to i32                  ; 2 uses
  br i1 %i.bd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bb, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 0, ptr %i.bf, align 4
  %i.bg = load ptr, ptr %i.ba, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #25, !inline_history !63
  %i.bj = load ptr, ptr %i.ba, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #25, !inline_history !63
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bm = load i8, ptr @__libc_single_threaded, align 1
  %.not.i9.i.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not.i9.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = add nsw i32 %i.be, -1
  store i32 %i.bn, ptr %i.bb, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.bo = atomicrmw volatile add ptr %i.bb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i = phi i32 [ %i.be, %bb.w ], [ %i.bo, %bb.x ]
  %i.bp = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bp, label %bb.y, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !5

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.u, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.at, ptr %i.f, align 8
  %.pre121 = load ptr, ptr %6, align 8
  br label %_ZNSt10shared_ptrIN6Assimp7Blender16CollectionObjectEEaSERKS3_.exit

_ZNSt10shared_ptrIN6Assimp7Blender16CollectionObjectEEaSERKS3_.exit: ; preds = %_ZNSt5dequeIPN6Assimp7Blender6ObjectESaIS3_EE9push_backERKS3_.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.bq = phi ptr [ %i.au, %_ZNSt5dequeIPN6Assimp7Blender6ObjectESaIS3_EE9push_backERKS3_.exit ], [ %i.at, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ]
  %i.br = phi ptr [ %i.ar, %_ZNSt5dequeIPN6Assimp7Blender6ObjectESaIS3_EE9push_backERKS3_.exit ], [ %.pre121, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %.not97 = icmp eq ptr %i.br, null
  br i1 %.not97, label %._crit_edge, label %bb.k, !llvm.loop !64

_ZNSt5dequeIPN6Assimp7Blender10CollectionESaIS3_EEC2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN6Assimp7Blender16CollectionObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.bs = load ptr, ptr %3, align 8               ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1128
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !65 ; 3 uses
  store ptr %i.bu, ptr %8, align 8, !alias.scope !65
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 1136
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !65 ; 3 uses
  store ptr %i.bx, ptr %i.bv, align 8, !alias.scope !65
  %.not.i.i.i.i46 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i46, label %_ZSt19static_pointer_castIN6Assimp7Blender15CollectionChildENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt5dequeIPN6Assimp7Blender10CollectionESaIS3_EEC2Ev.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 3 uses
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !noalias !65
  %.not.i.i.i.i.i47 = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i47, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ca = load i32, ptr %i.by, align 4, !noalias !65
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.by, align 4, !noalias !65
  br label %_ZSt19static_pointer_castIN6Assimp7Blender15CollectionChildENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit

bb.ab:                                            ; preds = %bb.z
  %i.cc = atomicrmw volatile add ptr %i.by, i32 1 acq_rel, align 4, !noalias !65 ; 0 uses
  %.pre123 = load ptr, ptr %8, align 8
  br label %_ZSt19static_pointer_castIN6Assimp7Blender15CollectionChildENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit

_ZSt19static_pointer_castIN6Assimp7Blender15CollectionChildENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit: ; preds = %_ZNSt5dequeIPN6Assimp7Blender10CollectionESaIS3_EEC2Ev.exit, %bb.aa, %bb.ab
  %i.cd = phi ptr [ %i.bu, %_ZNSt5dequeIPN6Assimp7Blender10CollectionESaIS3_EEC2Ev.exit ], [ %i.bu, %bb.aa ], [ %.pre123, %bb.ab ] ; 2 uses
  %.not98108 = icmp eq ptr %i.cd, null
  br i1 %.not98108, label %_ZSt19static_pointer_castIN6Assimp7Blender15CollectionChildENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit.._crit_edge110_crit_edge, label %.lr.ph109

_ZSt19static_pointer_castIN6Assimp7Blender15CollectionChildENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit.._crit_edge110_crit_edge: ; preds = %_ZSt19static_pointer_castIN6Assimp7Blender15CollectionChildENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit
  %.pre126 = load ptr, ptr %i.bv, align 8
  br label %._crit_edge110

.lr.ph109:                                        ; preds = %_ZSt19static_pointer_castIN6Assimp7Blender15CollectionChildENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 64
  br label %bb.aj

._crit_edge110:                                   ; preds = %_ZNSt10shared_ptrIN6Assimp7Blender15CollectionChildEEaSERKS3_.exit, %_ZSt19static_pointer_castIN6Assimp7Blender15CollectionChildENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit.._crit_edge110_crit_edge
  %i.cg = phi ptr [ %.pre126, %_ZSt19static_pointer_castIN6Assimp7Blender15CollectionChildENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit.._crit_edge110_crit_edge ], [ %i.gp, %_ZNSt10shared_ptrIN6Assimp7Blender15CollectionChildEEaSERKS3_.exit ] ; 8 uses
  %.not.i.i48 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i48, label %_ZNSt12__shared_ptrIN6Assimp7Blender15CollectionChildELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge110
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 4 uses
  %i.ci = load atomic i64, ptr %i.ch acquire, align 8 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 4294967297
  %i.ck = trunc i64 %i.ci to i32                  ; 2 uses
  br i1 %i.cj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.ch, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  store i32 0, ptr %i.cl, align 4
  %i.cm = load ptr, ptr %i.cg, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #25, !inline_history !68
  %i.cp = load ptr, ptr %i.cg, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #25, !inline_history !68
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender15CollectionChildELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ae:                                            ; preds = %bb.ac
  %i.cs = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i49 = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i.i49, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ct = add nsw i32 %i.ck, -1
  store i32 %i.ct, ptr %i.ch, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50

bb.ag:                                            ; preds = %bb.ae
  %i.cu = atomicrmw volatile add ptr %i.ch, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i51 = phi i32 [ %i.ck, %bb.af ], [ %i.cu, %bb.ag ]
  %i.cv = icmp eq i32 %.0.i.i.i.i51, 1
  br i1 %i.cv, label %bb.ah, label %_ZNSt12__shared_ptrIN6Assimp7Blender15CollectionChildELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #25
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender15CollectionChildELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp7Blender15CollectionChildELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %._crit_edge110, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8            ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8            ; 3 uses
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = lshr exact i64 %i.de, 3
  %i.dg = icmp ne ptr %i.cz, null
  %.neg.i.i = sext i1 %i.dg to i64
  %i.dh = load ptr, ptr %i.cw, align 8            ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8            ; 2 uses
  %i.dk = ptrtoint ptr %i.dh to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 3
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %i.dq = load ptr, ptr %i.cx, align 8            ; 3 uses
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8            ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = ptrtoint ptr %i.dy to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = lshr exact i64 %i.ed, 3
  %i.ef = icmp ne ptr %i.dy, null
  %.neg.i.i52 = sext i1 %i.ef to i64
  %i.eg = load ptr, ptr %i.dv, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = ptrtoint ptr %i.eg to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = ashr exact i64 %i.el, 3
  %i.en = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = load ptr, ptr %i.dw, align 8
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 3
  %i.eu = add nsw i64 %i.df, %.neg.i.i
  %i.ev = add nsw i64 %i.eu, %.neg.i.i52
  %reass.add = add nsw i64 %i.ev, %i.ee
  %reass.mul = shl i64 %reass.add, 6
  %i.ew = add nsw i64 %i.du, %i.dn
  %i.ex = add nsw i64 %i.ew, %i.em
  %i.ey = add i64 %i.ex, %reass.mul
  %i.ez = add i64 %i.ey, %i.et                    ; 2 uses
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 1104
  store i32 %i.fa, ptr %i.fb, align 8
  %i.fc = shl i64 %i.ez, 3
  %i.fd = and i64 %i.fc, 34359738360              ; 2 uses
  %i.fe = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fd) #26
          to label %bb.az unwind label %bb.bd     ; 2 uses

bb.ai:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp7Blender16CollectionObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.aj:                                            ; preds = %.lr.ph109, %_ZNSt10shared_ptrIN6Assimp7Blender15CollectionChildEEaSERKS3_.exit
  %i.fg = phi ptr [ %i.cd, %.lr.ph109 ], [ %i.gq, %_ZNSt10shared_ptrIN6Assimp7Blender15CollectionChildEEaSERKS3_.exit ] ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fi = load ptr, ptr %i.fh, align 8            ; 3 uses
  %.not101 = icmp eq ptr %i.fi, null
  br i1 %.not101, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr %i.fi, ptr %i.b, align 8
  %i.fj = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.fk = load ptr, ptr %i.cf, align 8
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 -8
  %.not.i.i53 = icmp eq ptr %i.fj, %i.fl
  br i1 %.not.i.i53, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store ptr %i.fi, ptr %i.fj, align 8
  %i.fm = load ptr, ptr %i.ce, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store ptr %i.fn, ptr %i.ce, align 8
  br label %_ZNSt5dequeIPN6Assimp7Blender10CollectionESaIS3_EE9push_backEOS3_.exit

bb.am:                                            ; preds = %bb.ak
  invoke void @_ZNSt5dequeIPN6Assimp7Blender10CollectionESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNSt5dequeIPN6Assimp7Blender10CollectionESaIS3_EE9push_backEOS3_.exit unwind label %bb.an

_ZNSt5dequeIPN6Assimp7Blender10CollectionESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @_ZNSt12__shared_ptrIN6Assimp7Blender15CollectionChildELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.cp

bb.ao:                                            ; preds = %bb.aj, %_ZNSt5dequeIPN6Assimp7Blender10CollectionESaIS3_EE9push_backEOS3_.exit
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8            ; 2 uses
  store ptr %i.fq, ptr %8, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8            ; 5 uses
  %i.ft = load ptr, ptr %i.bv, align 8            ; 4 uses
  %.not.i.i.i55 = icmp eq ptr %i.fs, %i.ft
  br i1 %.not.i.i.i55, label %_ZNSt10shared_ptrIN6Assimp7Blender15CollectionChildEEaSERKS3_.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not7.i.i.i56 = icmp eq ptr %i.fs, null
  br i1 %.not7.i.i.i56, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i60, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 3 uses
  %i.fv = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i57 = icmp eq i8 %i.fv, 0
  br i1 %.not.i.i.i.i57, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fw = load i32, ptr %i.fu, align 4
  %i.fx = add nsw i32 %i.fw, 1
  store i32 %i.fx, ptr %i.fu, align 4
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i60

bb.as:                                            ; preds = %bb.aq
  %i.fy = atomicrmw volatile add ptr %i.fu, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.i.i.i59.pre = load ptr, ptr %i.bv, align 8
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i60

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i60: ; preds = %bb.ar, %bb.as, %bb.ap
  %i.fz = phi ptr [ %i.ft, %bb.ap ], [ %.pr.i.i.i59.pre, %bb.as ], [ %i.ft, %bb.ar ] ; 8 uses
  %.not8.i.i.i61 = icmp eq ptr %i.fz, null
  br i1 %.not8.i.i.i61, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i65, label %bb.at

bb.at:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i60
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 4 uses
  %i.gb = load atomic i64, ptr %i.ga acquire, align 8 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 4294967297
  %i.gd = trunc i64 %i.gb to i32                  ; 2 uses
  br i1 %i.gc, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.ga, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 0, ptr %i.ge, align 4
  %i.gf = load ptr, ptr %i.fz, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #25, !inline_history !69
  %i.gi = load ptr, ptr %i.fz, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #25, !inline_history !69
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i65

bb.av:                                            ; preds = %bb.at
  %i.gl = load i8, ptr @__libc_single_threaded, align 1
  %.not.i9.i.i.i62 = icmp eq i8 %i.gl, 0
  br i1 %.not.i9.i.i.i62, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gm = add nsw i32 %i.gd, -1
  store i32 %i.gm, ptr %i.ga, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i63

bb.ax:                                            ; preds = %bb.av
  %i.gn = atomicrmw volatile add ptr %i.ga, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i63

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i63: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i.i64 = phi i32 [ %i.gd, %bb.aw ], [ %i.gn, %bb.ax ]
  %i.go = icmp eq i32 %.0.i.i.i.i.i64, 1
  br i1 %i.go, label %bb.ay, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i65, !prof !5

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i63
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i65

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i65: ; preds = %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i63, %bb.au, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i60
  store ptr %i.fs, ptr %i.bv, align 8
  %.pre125 = load ptr, ptr %8, align 8
  br label %_ZNSt10shared_ptrIN6Assimp7Blender15CollectionChildEEaSERKS3_.exit

_ZNSt10shared_ptrIN6Assimp7Blender15CollectionChildEEaSERKS3_.exit: ; preds = %bb.ao, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i65
  %i.gp = phi ptr [ %i.ft, %bb.ao ], [ %i.fs, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i65 ]
  %i.gq = phi ptr [ %i.fq, %bb.ao ], [ %.pre125, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i65 ] ; 2 uses
  %.not98 = icmp eq ptr %i.gq, null
  br i1 %.not98, label %._crit_edge110, label %bb.aj, !llvm.loop !70

bb.az:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp7Blender15CollectionChildELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fe, i8 0, i64 %i.fd, i1 false)
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 1112 ; 6 uses
  store ptr %i.fe, ptr %i.gr, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.gt = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.gu = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.gv = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.gw = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.gx = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.gy = getelementptr inbounds nuw i8, ptr %9, i64 60
  %i.gz = ptrtoint ptr %i.cz to i64
  %i.ha = ptrtoint ptr %i.db to i64
  %i.hb = sub i64 %i.gz, %i.ha
  %i.hc = ashr exact i64 %i.hb, 3
  %i.hd = icmp ne ptr %i.cz, null
  %.neg.i.i66185 = sext i1 %i.hd to i64
  %i.he = add nsw i64 %i.hc, %.neg.i.i66185
  %i.hf = shl nsw i64 %i.he, 6
  %i.hg = ptrtoint ptr %i.dh to i64
  %i.hh = ptrtoint ptr %i.dj to i64
  %i.hi = sub i64 %i.hg, %i.hh
  %i.hj = lshr exact i64 %i.hi, 3
  %i.hk = add i64 %i.hf, %i.hj
  %i.hl = ptrtoint ptr %i.dp to i64
  %i.hm = ptrtoint ptr %i.dq to i64               ; 2 uses
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = lshr exact i64 %i.hn, 3
  %i.hp = add i64 %i.hk, %i.ho                    ; 2 uses
  %i.hq = and i64 %i.hp, 4294967295
  %.not191 = icmp eq i64 %i.hq, 0
  br i1 %.not191, label %._crit_edge190, label %.lr.ph189

._crit_edge190:                                   ; preds = %bb.bj, %bb.az
  %.lcssa181 = phi i64 [ %i.hp, %bb.az ], [ %i.jy, %bb.bj ]
  %i.hr = trunc i64 %.lcssa181 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.hs = load ptr, ptr %3, align 8               ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 1128
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.hu = load ptr, ptr %i.ht, align 8, !noalias !71 ; 3 uses
  store ptr %i.hu, ptr %10, align 8, !alias.scope !71
  %i.hv = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 1136
  %i.hx = load ptr, ptr %i.hw, align 8, !noalias !71 ; 3 uses
  store ptr %i.hx, ptr %i.hv, align 8, !alias.scope !71
  %.not.i.i.i.i68 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i.i68, label %_ZSt19static_pointer_castIN6Assimp7Blender15CollectionChildENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit70, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge190
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 3 uses
  %i.hz = load i8, ptr @__libc_single_threaded, align 1, !noalias !71
  %.not.i.i.i.i.i69 = icmp eq i8 %i.hz, 0
  br i1 %.not.i.i.i.i.i69, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ia = load i32, ptr %i.hy, align 4, !noalias !71
  %i.ib = add nsw i32 %i.ia, 1
  store i32 %i.ib, ptr %i.hy, align 4, !noalias !71
  br label %_ZSt19static_pointer_castIN6Assimp7Blender15CollectionChildENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit70

bb.bc:                                            ; preds = %bb.ba
  %i.ic = atomicrmw volatile add ptr %i.hy, i32 1 acq_rel, align 4, !noalias !71 ; 0 uses
  %.pre133 = load ptr, ptr %10, align 8
  br label %_ZSt19static_pointer_castIN6Assimp7Blender15CollectionChildENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit70

_ZSt19static_pointer_castIN6Assimp7Blender15CollectionChildENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit70: ; preds = %._crit_edge190, %bb.bb, %bb.bc
  %i.id = phi ptr [ %i.hu, %._crit_edge190 ], [ %i.hu, %bb.bb ], [ %.pre133, %bb.bc ] ; 2 uses
  %.not99111 = icmp eq ptr %i.id, null
  br i1 %.not99111, label %_ZSt19static_pointer_castIN6Assimp7Blender15CollectionChildENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit70.._crit_edge114_crit_edge, label %.lr.ph113

_ZSt19static_pointer_castIN6Assimp7Blender15CollectionChildENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit70.._crit_edge114_crit_edge: ; preds = %_ZSt19static_pointer_castIN6Assimp7Blender15CollectionChildENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit70
  %.pre136 = load ptr, ptr %i.hv, align 8
  br label %._crit_edge114

.lr.ph113:                                        ; preds = %_ZSt19static_pointer_castIN6Assimp7Blender15CollectionChildENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit70
  %i.ie = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.if = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bb.bt

bb.bd:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp7Blender15CollectionChildELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

.lr.ph189:                                        ; preds = %bb.az, %bb.bj
  %i.ih = phi i64 [ %i.jv, %bb.bj ], [ %i.hm, %bb.az ]
  %indvars.iv186 = phi i64 [ %indvars.iv.next, %bb.bj ], [ 0, %bb.az ] ; 5 uses
  %i.ii = phi ptr [ %.pre128, %bb.bj ], [ %i.db, %bb.az ]
  %i.ij = phi ptr [ %.pre132, %bb.bj ], [ %i.dq, %bb.az ]
  %i.ik = load ptr, ptr %i.gs, align 8, !noalias !74
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = sub i64 %i.ih, %i.il
  %i.in = ashr exact i64 %i.im, 3
  %i.io = add nsw i64 %i.in, %indvars.iv186       ; 5 uses
  %i.ip = icmp sgt i64 %i.io, -1
  br i1 %i.ip, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %.lr.ph189
  %i.iq = icmp samesign ult i64 %i.io, 64
  br i1 %i.iq, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv186
  br label %_ZNSt5dequeIPN6Assimp7Blender6ObjectESaIS3_EEixEm.exit

bb.bg:                                            ; preds = %bb.be
  %i.is = lshr i64 %i.io, 6
  br label %bb.bi

bb.bh:                                            ; preds = %.lr.ph189
  %i.it = ashr i64 %i.io, 6
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.iu = phi i64 [ %i.is, %bb.bg ], [ %i.it, %bb.bh ] ; 2 uses
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.iu
  %i.iw = load ptr, ptr %i.iv, align 8, !noalias !74
  %i.ix = shl nsw i64 %i.iu, 6
  %i.iy = sub nsw i64 %i.io, %i.ix
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %i.iy
  br label %_ZNSt5dequeIPN6Assimp7Blender6ObjectESaIS3_EEixEm.exit

_ZNSt5dequeIPN6Assimp7Blender6ObjectESaIS3_EEixEm.exit: ; preds = %bb.bf, %bb.bi
  %storemerge.i.i.i.i = phi ptr [ %i.iz, %bb.bi ], [ %i.ir, %bb.bf ]
  %i.ja = load ptr, ptr %storemerge.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store float 1.000000e+00, ptr %9, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gt, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.gu, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gv, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.gw, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.gy, align 4
  %i.jb = invoke noundef ptr @_ZN6Assimp15BlenderImporter11ConvertNodeERKNS_7Blender5SceneEPKNS1_6ObjectERNS1_14ConversionDataERK12aiMatrix4x4tIfE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(1176) %1, ptr noundef %i.ja, ptr noundef nonnull align 8 dereferenceable(336) %4, ptr noundef nonnull align 4 dereferenceable(64) %9)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %_ZNSt5dequeIPN6Assimp7Blender6ObjectESaIS3_EEixEm.exit
  %i.jc = load ptr, ptr %i.gr, align 8
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv186
  store ptr %i.jb, ptr %i.jd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.je = load ptr, ptr %i.gr, align 8
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv186
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 1096
  store ptr %2, ptr %i.jh, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %.pre127 = load ptr, ptr %i.cy, align 8         ; 2 uses
  %.pre128 = load ptr, ptr %i.da, align 8         ; 2 uses
  %.pre129 = load ptr, ptr %i.cw, align 8
  %.pre130 = load ptr, ptr %i.di, align 8
  %.pre131 = load ptr, ptr %i.do, align 8
  %.pre132 = load ptr, ptr %i.cx, align 8         ; 2 uses
  %i.ji = ptrtoint ptr %.pre127 to i64
  %i.jj = ptrtoint ptr %.pre128 to i64
  %i.jk = sub i64 %i.ji, %i.jj
  %i.jl = ashr exact i64 %i.jk, 3
  %i.jm = icmp ne ptr %.pre127, null
  %.neg.i.i66 = sext i1 %i.jm to i64
  %i.jn = add nsw i64 %i.jl, %.neg.i.i66
  %i.jo = shl nsw i64 %i.jn, 6
  %i.jp = ptrtoint ptr %.pre129 to i64
  %i.jq = ptrtoint ptr %.pre130 to i64
  %i.jr = sub i64 %i.jp, %i.jq
  %i.js = lshr exact i64 %i.jr, 3
  %i.jt = add i64 %i.jo, %i.js
  %i.ju = ptrtoint ptr %.pre131 to i64
  %i.jv = ptrtoint ptr %.pre132 to i64            ; 2 uses
  %i.jw = sub i64 %i.ju, %i.jv
  %i.jx = lshr exact i64 %i.jw, 3
  %i.jy = add i64 %i.jt, %i.jx                    ; 2 uses
  %i.jz = and i64 %i.jy, 4294967295
  %i.ka = icmp samesign ult i64 %indvars.iv.next, %i.jz
  br i1 %i.ka, label %.lr.ph189, label %._crit_edge190, !llvm.loop !77

bb.bk:                                            ; preds = %_ZNSt5dequeIPN6Assimp7Blender6ObjectESaIS3_EEixEm.exit
  %i.kb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.cp

._crit_edge114:                                   ; preds = %_ZNSt10shared_ptrIN6Assimp7Blender15CollectionChildEEaSERKS3_.exit96, %_ZSt19static_pointer_castIN6Assimp7Blender15CollectionChildENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit70.._crit_edge114_crit_edge
  %i.kc = phi ptr [ %.pre136, %_ZSt19static_pointer_castIN6Assimp7Blender15CollectionChildENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E.exit70.._crit_edge114_crit_edge ], [ %i.ob, %_ZNSt10shared_ptrIN6Assimp7Blender15CollectionChildEEaSERKS3_.exit96 ] ; 8 uses
  %.not.i.i71 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i71, label %_ZNSt12__shared_ptrIN6Assimp7Blender15CollectionChildELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit75, label %bb.bl

bb.bl:                                            ; preds = %._crit_edge114
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8 ; 4 uses
  %i.ke = load atomic i64, ptr %i.kd acquire, align 8 ; 2 uses
  %i.kf = icmp eq i64 %i.ke, 4294967297
  %i.kg = trunc i64 %i.ke to i32                  ; 2 uses
  br i1 %i.kf, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %i.kd, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kc, i64 12
  store i32 0, ptr %i.kh, align 4
  %i.ki = load ptr, ptr %i.kc, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.kk = load ptr, ptr %i.kj, align 8
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(16) %i.kc) #25, !inline_history !68
  %i.kl = load ptr, ptr %i.kc, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  %i.kn = load ptr, ptr %i.km, align 8
  call void %i.kn(ptr noundef nonnull align 8 dereferenceable(16) %i.kc) #25, !inline_history !68
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender15CollectionChildELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit75

bb.bn:                                            ; preds = %bb.bl
  %i.ko = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i72 = icmp eq i8 %i.ko, 0
  br i1 %.not.i.i.i72, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kp = add nsw i32 %i.kg, -1
  store i32 %i.kp, ptr %i.kd, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i73

bb.bp:                                            ; preds = %bb.bn
  %i.kq = atomicrmw volatile add ptr %i.kd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i73

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i73: ; preds = %bb.bp, %bb.bo
  %.0.i.i.i.i74 = phi i32 [ %i.kg, %bb.bo ], [ %i.kq, %bb.bp ]
  %i.kr = icmp eq i32 %.0.i.i.i.i74, 1
  br i1 %i.kr, label %bb.bq, label %_ZNSt12__shared_ptrIN6Assimp7Blender15CollectionChildELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit75, !prof !5

bb.bq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i73
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kc) #25
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender15CollectionChildELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit75

_ZNSt12__shared_ptrIN6Assimp7Blender15CollectionChildELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit75: ; preds = %._crit_edge114, %bb.bm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i73, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.ks = load ptr, ptr %7, align 8               ; 2 uses
  %.not.i.i76 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i76, label %_ZNSt5dequeIPN6Assimp7Blender10CollectionESaIS3_EED2Ev.exit, label %bb.br

bb.br:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp7Blender15CollectionChildELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit75
  %i.kt = load ptr, ptr %i.dz, align 8            ; 2 uses
  %i.ku = load ptr, ptr %i.dx, align 8            ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kw = icmp ult ptr %i.kt, %i.kv
  br i1 %i.kw, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.br, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.ky, %.lr.ph.i.i.i ], [ %i.kt, %bb.br ] ; 3 uses
  %i.kx = load ptr, ptr %.06.i.i.i, align 8
  call void @_ZdlPvm(ptr noundef %i.kx, i64 noundef 512) #27
  %i.ky = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.kz = icmp ult ptr %.06.i.i.i, %i.ku
  br i1 %i.kz, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i, !llvm.loop !78

_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %7, align 8
  br label %_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i

_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i, %bb.br
  %i.la = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i ], [ %i.ks, %bb.br ]
  %i.lb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.lc = load i64, ptr %i.lb, align 8
  %i.ld = shl i64 %i.lc, 3
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.ld) #27
  br label %_ZNSt5dequeIPN6Assimp7Blender10CollectionESaIS3_EED2Ev.exit

_ZNSt5dequeIPN6Assimp7Blender10CollectionESaIS3_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN6Assimp7Blender15CollectionChildELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit75, %_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.le = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i77 = icmp eq ptr %i.le, null
  br i1 %.not.i.i77, label %_ZNSt5dequeIPN6Assimp7Blender6ObjectESaIS3_EED2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt5dequeIPN6Assimp7Blender10CollectionESaIS3_EED2Ev.exit
  %i.lf = load ptr, ptr %i.da, align 8            ; 2 uses
  %i.lg = load ptr, ptr %i.cy, align 8            ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = icmp ult ptr %i.lf, %i.lh
  br i1 %i.li, label %.lr.ph.i.i.i78, label %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i

.lr.ph.i.i.i78:                                   ; preds = %bb.bs, %.lr.ph.i.i.i78
  %.06.i.i.i79 = phi ptr [ %i.lk, %.lr.ph.i.i.i78 ], [ %i.lf, %bb.bs ] ; 3 uses
  %i.lj = load ptr, ptr %.06.i.i.i79, align 8
  call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef 512) #27
  %i.lk = getelementptr inbounds nuw i8, ptr %.06.i.i.i79, i64 8
  %i.ll = icmp ult ptr %.06.i.i.i79, %i.lg
  br i1 %i.ll, label %.lr.ph.i.i.i78, label %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i, !llvm.loop !79

_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i78
  %.pre.i.i80 = load ptr, ptr %5, align 8
  br label %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i

_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i, %bb.bs
  %i.lm = phi ptr [ %.pre.i.i80, %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i ], [ %i.le, %bb.bs ]
  %i.ln = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.lo = load i64, ptr %i.ln, align 8
  %i.lp = shl i64 %i.lo, 3
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lp) #27
  br label %_ZNSt5dequeIPN6Assimp7Blender6ObjectESaIS3_EED2Ev.exit

_ZNSt5dequeIPN6Assimp7Blender6ObjectESaIS3_EED2Ev.exit: ; preds = %_ZNSt5dequeIPN6Assimp7Blender10CollectionESaIS3_EED2Ev.exit, %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void

bb.bt:                                            ; preds = %.lr.ph113, %_ZNSt10shared_ptrIN6Assimp7Blender15CollectionChildEEaSERKS3_.exit96
  %i.lq = phi ptr [ %i.id, %.lr.ph113 ], [ %i.oc, %_ZNSt10shared_ptrIN6Assimp7Blender15CollectionChildEEaSERKS3_.exit96 ] ; 3 uses
  %.0112 = phi i32 [ %i.hr, %.lr.ph113 ], [ %i.na, %_ZNSt10shared_ptrIN6Assimp7Blender15CollectionChildEEaSERKS3_.exit96 ] ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 48 ; 3 uses
  %i.ls = load ptr, ptr %i.lr, align 8
  %.not100 = icmp eq ptr %i.ls, null
  br i1 %.not100, label %bb.cd, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.lt = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26
          to label %bb.bv unwind label %bb.ca     ; 3 uses

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.lu = load ptr, ptr %i.lr, align 8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 34 ; 3 uses
  store ptr %i.ie, ptr %11, align 8
  %i.lw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lv) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.lw, ptr %i.a, align 8
  %i.lx = icmp ugt i64 %i.lw, 15
  br i1 %i.lx, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.bv
  %i.ly = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc81 unwind label %bb.cb  ; 2 uses

.noexc81:                                         ; preds = %.noexc.i
  store ptr %i.ly, ptr %11, align 8
  %i.lz = load i64, ptr %i.a, align 8
  store i64 %i.lz, ptr %i.ie, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc81, %bb.bv
  %i.ma = phi ptr [ %i.ly, %.noexc81 ], [ %i.ie, %bb.bv ] ; 2 uses
  switch i64 %i.lw, label %bb.bx [
    i64 1, label %bb.bw
    i64 0, label %bb.by
  ]

bb.bw:                                            ; preds = %._crit_edge.i.i
  %i.mb = load i8, ptr %i.lv, align 1
  store i8 %i.mb, ptr %i.ma, align 1
  br label %bb.by

bb.bx:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ma, ptr nonnull align 1 %i.lv, i64 %i.lw, i1 false)
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %._crit_edge.i.i
  %i.mc = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.mc, ptr %i.if, align 8
  %i.md = load ptr, ptr %11, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.mc
  store i8 0, ptr %i.me, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.lt, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.bz unwind label %bb.cc

bb.bz:                                            ; preds = %bb.by
  %i.mf = load ptr, ptr %i.gr, align 8
  %i.mg = zext i32 %.0112 to i64                  ; 3 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %i.mg
  store ptr %i.lt, ptr %i.mh, align 8
  %i.mi = load ptr, ptr %11, align 8              ; 2 uses
  %i.mj = icmp eq ptr %i.mi, %i.ie
  br i1 %i.mj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bz
  %i.mk = load i64, ptr %i.ie, align 8
  %i.ml = add i64 %i.mk, 1
  call void @_ZdlPvm(ptr noundef %i.mi, i64 noundef %i.ml) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.mm = load ptr, ptr %i.gr, align 8
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.mg
  %i.mo = load ptr, ptr %i.mn, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 1096
  store ptr %2, ptr %i.mp, align 8
  %i.mq = load ptr, ptr %i.gr, align 8
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %i.mg
  %i.ms = load ptr, ptr %i.mr, align 8
  invoke void @_ZN6Assimp15BlenderImporter18ParseSubCollectionERKNS_7Blender5SceneEP6aiNodeRKSt10shared_ptrINS1_10CollectionEERNS1_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(1176) %1, ptr noundef %i.ms, ptr noundef nonnull align 8 dereferenceable(16) %i.lr, ptr noundef nonnull align 8 dereferenceable(336) %4)
          to label %bb.cd unwind label %bb.ca

bb.ca:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bu
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cb:                                            ; preds = %.noexc.i
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.cc:                                            ; preds = %bb.by
  %i.mv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mw = load ptr, ptr %11, align 8              ; 2 uses
  %i.mx = icmp eq ptr %i.mw, %i.ie
  br i1 %i.mx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.cc
  %i.my = load i64, ptr %i.ie, align 8
  %i.mz = add i64 %i.my, 1
  call void @_ZdlPvm(ptr noundef %i.mw, i64 noundef %i.mz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.cb
  %.pn = phi { ptr, i32 } [ %i.mu, %bb.cb ], [ %i.mv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %i.mv, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.lt, i64 noundef 1144) #27
  br label %bb.co

bb.cd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bt
  %i.na = add i32 %.0112, 1
  %i.nb = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.nc = load ptr, ptr %i.nb, align 8            ; 2 uses
  store ptr %i.nc, ptr %10, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %i.ne = load ptr, ptr %i.nd, align 8            ; 5 uses
  %i.nf = load ptr, ptr %i.hv, align 8            ; 4 uses
  %.not.i.i.i85 = icmp eq ptr %i.ne, %i.nf
  br i1 %.not.i.i.i85, label %_ZNSt10shared_ptrIN6Assimp7Blender15CollectionChildEEaSERKS3_.exit96, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.not7.i.i.i86 = icmp eq ptr %i.ne, null
  br i1 %.not7.i.i.i86, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i90, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 8 ; 3 uses
  %i.nh = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i87 = icmp eq i8 %i.nh, 0
  br i1 %.not.i.i.i.i87, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ni = load i32, ptr %i.ng, align 4
  %i.nj = add nsw i32 %i.ni, 1
  store i32 %i.nj, ptr %i.ng, align 4
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i90

bb.ch:                                            ; preds = %bb.cf
  %i.nk = atomicrmw volatile add ptr %i.ng, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.i.i.i89.pre = load ptr, ptr %i.hv, align 8
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i90

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i90: ; preds = %bb.cg, %bb.ch, %bb.ce
  %i.nl = phi ptr [ %i.nf, %bb.ce ], [ %.pr.i.i.i89.pre, %bb.ch ], [ %i.nf, %bb.cg ] ; 8 uses
  %.not8.i.i.i91 = icmp eq ptr %i.nl, null
  br i1 %.not8.i.i.i91, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i95, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i90
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8 ; 4 uses
  %i.nn = load atomic i64, ptr %i.nm acquire, align 8 ; 2 uses
  %i.no = icmp eq i64 %i.nn, 4294967297
  %i.np = trunc i64 %i.nn to i32                  ; 2 uses
  br i1 %i.no, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i32 0, ptr %i.nm, align 8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nl, i64 12
  store i32 0, ptr %i.nq, align 4
  %i.nr = load ptr, ptr %i.nl, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.nt = load ptr, ptr %i.ns, align 8
  call void %i.nt(ptr noundef nonnull align 8 dereferenceable(16) %i.nl) #25, !inline_history !69
  %i.nu = load ptr, ptr %i.nl, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 24
  %i.nw = load ptr, ptr %i.nv, align 8
  call void %i.nw(ptr noundef nonnull align 8 dereferenceable(16) %i.nl) #25, !inline_history !69
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i95

bb.ck:                                            ; preds = %bb.ci
  %i.nx = load i8, ptr @__libc_single_threaded, align 1
  %.not.i9.i.i.i92 = icmp eq i8 %i.nx, 0
  br i1 %.not.i9.i.i.i92, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ny = add nsw i32 %i.np, -1
  store i32 %i.ny, ptr %i.nm, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93

bb.cm:                                            ; preds = %bb.ck
  %i.nz = atomicrmw volatile add ptr %i.nm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93: ; preds = %bb.cm, %bb.cl
  %.0.i.i.i.i.i94 = phi i32 [ %i.np, %bb.cl ], [ %i.nz, %bb.cm ]
  %i.oa = icmp eq i32 %.0.i.i.i.i.i94, 1
  br i1 %i.oa, label %bb.cn, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i95, !prof !5

bb.cn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nl) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i95

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i95: ; preds = %bb.cn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93, %bb.cj, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i90
  store ptr %i.ne, ptr %i.hv, align 8
  %.pre135 = load ptr, ptr %10, align 8
  br label %_ZNSt10shared_ptrIN6Assimp7Blender15CollectionChildEEaSERKS3_.exit96

_ZNSt10shared_ptrIN6Assimp7Blender15CollectionChildEEaSERKS3_.exit96: ; preds = %bb.cd, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i95
  %i.ob = phi ptr [ %i.nf, %bb.cd ], [ %i.ne, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i95 ]
  %i.oc = phi ptr [ %i.nc, %bb.cd ], [ %.pre135, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i95 ] ; 2 uses
  %.not99 = icmp eq ptr %i.oc, null
  br i1 %.not99, label %._crit_edge114, label %bb.bt, !llvm.loop !80

bb.co:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %bb.ca
  %.pn37 = phi { ptr, i32 } [ %i.mt, %bb.ca ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ]
  call void @_ZNSt12__shared_ptrIN6Assimp7Blender15CollectionChildELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.bk, %bb.bd, %bb.an
  %.pn39 = phi { ptr, i32 } [ %i.fo, %bb.an ], [ %i.kb, %bb.bk ], [ %.pn37, %bb.co ], [ %i.ig, %bb.bd ]
  call void @_ZNSt5dequeIPN6Assimp7Blender10CollectionESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %7) #25
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.ai
  %.pn39.pn = phi { ptr, i32 } [ %.pn39, %bb.cp ], [ %i.ff, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.o
  %.pn42 = phi { ptr, i32 } [ %i.ao, %bb.o ], [ %.pn39.pn, %bb.cq ]
  call void @_ZNSt5dequeIPN6Assimp7Blender6ObjectESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn42
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN6Assimp7Blender16CollectionObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !81
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !81
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN6Assimp7Blender15CollectionChildELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !81
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !81
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN6Assimp15BlenderImporter11ConvertNodeERKNS_7Blender5SceneEPKNS1_6ObjectERNS1_14ConversionDataERK12aiMatrix4x4tIfE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(1176) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(336) %3, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::deque.112", align 8    ; 18 uses
  %i.n = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %"class.std::unique_ptr.277", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %class.aiMatrix4x4t, align 16       ; 22 uses
  %9 = alloca %class.aiMatrix4x4t, align 16       ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %5, i64 noundef 0)
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.not176 = icmp eq ptr %i.p, %i.q
  br i1 %.not176, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.u = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26
          to label %bb.i unwind label %bb.o       ; 12 uses

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.0171.0177 = phi ptr [ %i.p, %.lr.ph ], [ %.sroa.0171.1, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #25
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0171.0177, i64 32
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  store ptr %i.w, ptr %i.n, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1232
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = icmp eq ptr %i.y, %2
  br i1 %i.z, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.ab = load ptr, ptr %i.s, align 8
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %.not.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.w, ptr %i.aa, align 8
  %i.ad = load ptr, ptr %i.r, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ae, ptr %i.r, align 8
  br label %_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EE9push_backERKS4_.exit

bb.e:                                             ; preds = %bb.c
  invoke void @_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_push_back_auxIJRKS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EE9push_backERKS4_.exit unwind label %bb.f

_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.d, %bb.e
  %i.af = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0171.0177) #30
  %i.ag = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.sroa.0171.0177, ptr noundef nonnull align 8 dereferenceable(32) %i.q) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 40) #27
  %i.ah = load i64, ptr %i.t, align 8
  %i.ai = add i64 %i.ah, -1
  store i64 %i.ai, ptr %i.t, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #25
  br label %bb.bq

bb.g:                                             ; preds = %bb.b
  %i.ak = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0171.0177) #30
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EE9push_backERKS4_.exit, %bb.g
  %.sroa.0171.1 = phi ptr [ %i.af, %_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EE9push_backERKS4_.exit ], [ %i.ak, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #25
  %.not = icmp eq ptr %.sroa.0171.1, %i.q
  br i1 %.not, label %._crit_edge, label %bb.b

bb.i:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 34 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.am, ptr %7, align 8
  %i.an = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #25
  store i64 %i.an, ptr %i.m, align 8
  %i.ao = icmp ugt i64 %i.an, 15
  br i1 %i.ao, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.i
  %i.ap = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0)
          to label %.noexc87 unwind label %bb.p   ; 2 uses

.noexc87:                                         ; preds = %.noexc.i
  store ptr %i.ap, ptr %7, align 8
  %i.aq = load i64, ptr %i.m, align 8
  store i64 %i.aq, ptr %i.am, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc87, %bb.i
  %i.ar = phi ptr [ %i.ap, %.noexc87 ], [ %i.am, %bb.i ] ; 2 uses
  switch i64 %i.an, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.as = load i8, ptr %i.al, align 1
  store i8 %i.as, ptr %i.ar, align 1
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr nonnull align 1 %i.al, i64 %i.an, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i
  %i.at = load i64, ptr %i.m, align 8             ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.at, ptr %i.au, align 8
  %i.av = load ptr, ptr %7, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store i8 0, ptr %i.aw, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #25
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  store ptr %i.u, ptr %6, align 8
  %i.ax = load ptr, ptr %7, align 8               ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.am
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.az = load i64, ptr %i.am, align 8
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 1320 ; 4 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 4 uses
  %.not174 = icmp eq ptr %i.bc, null
  br i1 %.not174, label %_ZN12aiMatrix4x4tIfEixEj.exit.3.3, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 1064
  %i.be = load i32, ptr %i.bd, align 8
  switch i32 %i.be, label %_ZN12aiMatrix4x4tIfEixEj.exit.3.3 [
    i32 22, label %bb.bb
    i32 1, label %bb.r
    i32 10, label %bb.y
    i32 11, label %bb.ai
    i32 2, label %bb.ar
    i32 3, label %bb.at
    i32 4, label %bb.av
    i32 5, label %bb.ax
end_hunk_2
begin_hunk_3_@_ZN6Assimp15BlenderImporter11ConvertNodeERKNS_7Blender5SceneEPKNS1_6ObjectERNS1_14ConversionDataERK12aiMatrix4x4tIfE:bb.a
  %i.nu = icmp ult ptr %.06.i.i.i, %i.np
  br i1 %i.nu, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i, !llvm.loop !44

_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %5, align 8
  br label %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i

_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i, %bb.bm
  %i.nv = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i ], [ %i.nn, %bb.bm ]
  %i.nw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.nx = load i64, ptr %i.nw, align 8
  %i.ny = shl i64 %i.nx, 3
  call void @_ZdlPvm(ptr noundef %i.nv, i64 noundef %i.ny) #27
  br label %_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EED2Ev.exit

_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit, %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret ptr %i.nk

bb.bn:                                            ; preds = %bb.bh, %bb.bl, %bb.bg
  %.pn80.pn = phi { ptr, i32 } [ %i.kt, %bb.bh ], [ %i.ks, %bb.bg ], [ %i.nj, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.aq, %bb.ah, %bb.ag, %bb.w
  %.pn80.pn.pn = phi { ptr, i32 } [ %.pn80.pn, %bb.bn ], [ %i.dr, %bb.ag ], [ %i.ck, %bb.w ], [ %i.ds, %bb.ah ], [ %i.es, %bb.aq ]
  call void @_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  br label %bb.bp

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %bb.bo, %bb.o
  %.pn80.pn.pn.pn = phi { ptr, i32 } [ %.pn80.pn.pn, %bb.bo ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.bf, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.f
  %.pn85 = phi { ptr, i32 } [ %i.aj, %bb.f ], [ %.pn80.pn.pn.pn, %bb.bp ]
  call void @_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn85
}

declare void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIPN6Assimp7Blender10CollectionESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i, align 8
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #27
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i, !llvm.loop !78

_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %0, align 8
  br label %_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i

_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i: ; preds = %_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i, %bb.b
  %i.k = phi ptr [ %.pre.i, %_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #27
  br label %_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EED2Ev.exit

_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIPN6Assimp7Blender6ObjectESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i, align 8
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #27
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i, !llvm.loop !79

_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %0, align 8
  br label %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i

_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i: ; preds = %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i, %bb.b
  %i.k = phi ptr [ %.pre.i, %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #27
  br label %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EED2Ev.exit

_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender14ConversionDataC2ERKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(232) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.e, i8 0, i64 208, i1 false)
  invoke void @_ZNSt11_Deque_baseISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 noundef 0)
          to label %_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EEC2Ev.exit unwind label %bb.b

_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EEC2Ev.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i8 0, i64 80, i1 false)
  store ptr %1, ptr %i.h, align 8
  ret void

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN6Assimp7Blender9TempArrayISt6vector9aiTextureED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.j) #25
  tail call void @_ZN6Assimp7Blender9TempArrayISt6vector10aiMaterialED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.k) #25
  tail call void @_ZN6Assimp7Blender9TempArrayISt6vector7aiLightED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.l) #25
  tail call void @_ZN6Assimp7Blender9TempArrayISt6vector8aiCameraED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #25
  tail call void @_ZN6Assimp7Blender9TempArrayISt6vector6aiMeshED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.n) #25
  tail call void @_ZNSt3setIPKN6Assimp7Blender6ObjectENS1_13ObjectCompareESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #25
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN6Assimp7Blender4BaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !81
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !81
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i, align 8
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #27
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i, !llvm.loop !44

_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %0, align 8
  br label %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i

_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i: ; preds = %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i, %bb.b
  %i.k = phi ptr [ %.pre.i, %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #27
  br label %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EED2Ev.exit

_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp15BlenderImporter14BuildMaterialsERNS_7Blender14ConversionDataE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(336) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.aiString, align 4           ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %3 = alloca %struct.aiString, align 4           ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %struct.aiColor3D, align 8          ; 11 uses
  %6 = alloca %struct.aiColor3D, align 8          ; 5 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %i.r = icmp ne ptr %i.k, null
  %.neg.i.i = sext i1 %i.r to i64
  %i.s = add nsw i64 %i.q, %.neg.i.i
  %i.t = shl nsw i64 %i.s, 5
  %i.u = load ptr, ptr %i.h, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 4
  %i.ab = add nsw i64 %i.t, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = load ptr, ptr %i.i, align 8
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 4
  %i.aj = add nsw i64 %i.ab, %i.ai                ; 4 uses
  %i.ak = icmp ugt i64 %i.aj, 1152921504606846975
  br i1 %i.ak, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load ptr, ptr %i.g, align 8             ; 4 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = icmp ult i64 %i.ar, %i.aj
  br i1 %i.as, label %_ZNSt12_Vector_baseIP10aiMaterialSaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIP10aiMaterialSaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIP10aiMaterialSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.ap                    ; 3 uses
  %i.ax = shl nuw nsw i64 %i.aj, 3
  %i.ay = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #26 ; 4 uses
  %i.az = icmp sgt i64 %i.aw, 0
  br i1 %i.az, label %bb.d, label %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIP10aiMaterialSaIS1_EE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr align 8 %i.an, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %bb.d, %_ZNSt12_Vector_baseIP10aiMaterialSaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.an, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIP10aiMaterialSaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.aq) #27
  br label %_ZNSt12_Vector_baseIP10aiMaterialSaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIP10aiMaterialSaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.e, %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.ay, ptr %i.g, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store ptr %i.ba, ptr %i.at, align 8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aj
  store ptr %i.bb, ptr %i.al, align 8
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE7reserveEm.exit

_ZNSt6vectorIP10aiMaterialSaIS1_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIP10aiMaterialSaIS1_EE13_M_deallocateEPS1_m.exit.i
  tail call void @_ZN6Assimp15BlenderImporter20BuildDefaultMaterialERNS_7Blender14ConversionDataE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(336) %1)
  %i.bc = load ptr, ptr %i.i, align 8, !noalias !83 ; 2 uses
  %i.bd = load ptr, ptr %i.h, align 8, !noalias !86 ; 2 uses
  %.not7984 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not7984, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIP10aiMaterialSaIS1_EE7reserveEm.exit
  %i.be = load ptr, ptr %i.l, align 8, !noalias !83
  %i.bf = load ptr, ptr %i.ac, align 8, !noalias !83
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt15_Deque_iteratorISt10shared_ptrIN6Assimp7Blender8MaterialEERS4_PS4_EppEv.exit
  %.sroa.14.087 = phi ptr [ %i.be, %.preheader.lr.ph ], [ %.sroa.14.1, %_ZNSt15_Deque_iteratorISt10shared_ptrIN6Assimp7Blender8MaterialEERS4_PS4_EppEv.exit ] ; 2 uses
  %.sroa.11.086 = phi ptr [ %i.bf, %.preheader.lr.ph ], [ %.sroa.11.1, %_ZNSt15_Deque_iteratorISt10shared_ptrIN6Assimp7Blender8MaterialEERS4_PS4_EppEv.exit ] ; 2 uses
  %.sroa.076.085 = phi ptr [ %i.bc, %.preheader.lr.ph ], [ %.sroa.076.1, %_ZNSt15_Deque_iteratorISt10shared_ptrIN6Assimp7Blender8MaterialEERS4_PS4_EppEv.exit ] ; 12 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %i.bg, i8 0, i64 76, i1 false)
  %i.bq = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26 ; 15 uses
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.bq)
          to label %bb.f unwind label %bb.s

._crit_edge:                                      ; preds = %_ZNSt15_Deque_iteratorISt10shared_ptrIN6Assimp7Blender8MaterialEERS4_PS4_EppEv.exit, %_ZNSt6vectorIP10aiMaterialSaIS1_EE7reserveEm.exit
  ret void

bb.f:                                             ; preds = %.preheader
  %i.br = load ptr, ptr %i.bh, align 8            ; 3 uses
  %i.bs = load ptr, ptr %i.al, align 8
  %.not.i = icmp eq ptr %i.br, %i.bs
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.bq, ptr %i.br, align 8
  %i.bt = load ptr, ptr %i.bh, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bu, ptr %i.bh, align 8
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit

bb.h:                                             ; preds = %bb.f
end_hunk_3
begin_hunk_4_@_ZN6Assimp15BlenderImporter12ResolveImageEP10aiMaterialPKNS_7Blender8MaterialEPKNS3_4MTexEPKNS3_5ImageERNS3_14ConversionDataE:bb.a
  %i.bb = load ptr, ptr %i.ba, align 8            ; 7 uses
  %.ptr58 = getelementptr inbounds nuw i8, ptr %4, i64 1064 ; 2 uses
  %i.bc = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.ptr58) #30 ; 4 uses
  %.add = add i64 %i.bc, 1064                     ; 5 uses
  %.0.ptr74 = getelementptr inbounds i8, ptr %4, i64 %.add ; 2 uses
  %.not75 = icmp slt i64 %i.bc, 0
  br i1 %.not75, label %.critedge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIP9aiTextureSaIS1_EE9push_backEOS1_.exit
  %smin = tail call i64 @llvm.smin.i64(i64 %.add, i64 1064)
  %i.bd = add i64 %smin, -1                       ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.bd
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %.0.ptr77 = phi ptr [ %.0.ptr, %bb.k ], [ %.0.ptr74, %.lr.ph.preheader ] ; 2 uses
  %.0.idx76 = phi i64 [ %.0.add, %bb.k ], [ %.add, %.lr.ph.preheader ] ; 3 uses
  %i.be = load i8, ptr %.0.ptr77, align 1
  %.not60 = icmp eq i8 %i.be, 46
  br i1 %.not60, label %.critedge, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %.0.add = add nsw i64 %.0.idx76, -1             ; 2 uses
  %.0.ptr = getelementptr inbounds i8, ptr %4, i64 %.0.add
  %.not = icmp slt i64 %.0.idx76, 1065
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !90

.critedge:                                        ; preds = %.lr.ph, %bb.k
  %.0.idx.lcssa = phi i64 [ %i.bd, %bb.k ], [ %.0.idx76, %.lr.ph ] ; 3 uses
  %.0.ptr.lcssa = phi ptr [ %scevgep, %bb.k ], [ %.0.ptr77, %.lr.ph ] ; 3 uses
  %.not61 = icmp slt i64 %.0.idx.lcssa, %.add
  br i1 %.not61, label %bb.l, label %.critedge.thread

bb.l:                                             ; preds = %.critedge
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.ptr.lcssa, i64 1
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = zext i8 %i.bg to i32
  %i.bi = tail call i32 @tolower(i32 noundef %i.bh) #30
  %i.bj = trunc i32 %i.bi to i8
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %_ZNSt6vectorIP9aiTextureSaIS1_EE9push_backEOS1_.exit, %.critedge, %bb.l
  %.0.ptr.lcssa93 = phi ptr [ %.0.ptr.lcssa, %bb.l ], [ %.0.ptr.lcssa, %.critedge ], [ %.0.ptr74, %_ZNSt6vectorIP9aiTextureSaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %.0.idx.lcssa92 = phi i64 [ %.0.idx.lcssa, %bb.l ], [ %.0.idx.lcssa, %.critedge ], [ %.add, %_ZNSt6vectorIP9aiTextureSaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %i.bk = phi i8 [ %i.bj, %bb.l ], [ 0, %.critedge ], [ 0, %_ZNSt6vectorIP9aiTextureSaIS1_EE9push_backEOS1_.exit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i8 %i.bk, ptr %i.bl, align 8
  %i.bm = add nsw i64 %i.bc, 1062
  %i.bn = icmp sgt i64 %.0.idx.lcssa92, %i.bm
  br i1 %i.bn, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.ptr.lcssa93, i64 2
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = zext i8 %i.bp to i32
  %i.br = tail call i32 @tolower(i32 noundef %i.bq) #30
  %i.bs = trunc i32 %i.br to i8
  br label %bb.n

bb.n:                                             ; preds = %.critedge.thread, %bb.m
  %i.bt = phi i8 [ %i.bs, %bb.m ], [ 0, %.critedge.thread ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bb, i64 9
  store i8 %i.bt, ptr %i.bu, align 1
  %i.bv = add nsw i64 %i.bc, 1061
  %i.bw = icmp sgt i64 %.0.idx.lcssa92, %i.bv
  br i1 %i.bw, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.ptr.lcssa93, i64 3
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = zext i8 %i.by to i32
  %i.ca = tail call i32 @tolower(i32 noundef %i.bz) #30
  %i.cb = trunc i32 %i.ca to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.cc = phi i8 [ %i.cb, %bb.o ], [ 0, %bb.n ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bb, i64 10
  store i8 %i.cc, ptr %i.cd, align 2
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bb, i64 11
  store i8 0, ptr %i.ce, align 1
  %i.cf = load ptr, ptr %i.c, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load i32, ptr %i.cg, align 8            ; 2 uses
  store i32 %i.ch, ptr %i.bb, align 8
  %i.ci = zext i32 %i.ch to i64
  %i.cj = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ci) #26 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 328 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !20, !align !91
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 128
  %i.cn = load ptr, ptr %i.cm, align 8            ; 3 uses
  %i.co = load ptr, ptr %i.c, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cr ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  store ptr %i.cu, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = icmp ugt ptr %i.cu, %i.cx
  br i1 %i.cy, label %bb.q, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.q:                                             ; preds = %bb.p
  %i.cz = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull @.str.124)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @__cxa_throw(ptr nonnull %i.cz, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

common.resume:                                    ; preds = %bb.v, %bb.s
  %.sink = phi ptr [ %i.dp, %bb.v ], [ %i.cz, %bb.s ]
  %common.resume.op = phi { ptr, i32 } [ %i.dq, %bb.v ], [ %i.da, %bb.s ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #25
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.q
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %bb.p
  %i.db = load ptr, ptr %i.ck, align 8, !nonnull !20, !align !91
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 128
  %i.dd = load ptr, ptr %i.dc, align 8            ; 3 uses
  %i.de = load i32, ptr %i.bb, align 8
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 24 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df ; 3 uses
  store ptr %i.di, ptr %i.dg, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = icmp ugt ptr %i.di, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = icmp ult ptr %i.di, %i.dn
  %or.cond.i.i = select i1 %i.dl, i1 true, i1 %i.do
  br i1 %or.cond.i.i, label %bb.t, label %_ZN6Assimp12StreamReaderILb1ELb1EE14CopyAndAdvanceEPvm.exit

bb.t:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit
  %i.dp = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull @.str.124)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @__cxa_throw(ptr nonnull %i.dp, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE14CopyAndAdvanceEPvm.exit: ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cj, ptr align 1 %i.dh, i64 %i.df, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr %i.cj, ptr %i.dr, align 8
  %i.ds = tail call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.ds, label %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE7LogInfoIJRA45_KcRA240_S4_EEEvDpOT_.exit, label %bb.w

bb.w:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE14CopyAndAdvanceEPvm.exit
  %i.dt = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr @.str, ptr %i.b, align 8
  call void @_ZN6Assimp6Logger4infoIJPKcRA45_S2_RA240_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.dt, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(45) @.str.20, ptr noundef nonnull align 1 dereferenceable(240) %.ptr58)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE7LogInfoIJRA45_KcRA240_S4_EEEvDpOT_.exit

bb.x:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 1064 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.dv, ptr %8, align 8
  %i.dw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.du) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.dw, ptr %i.a, align 8
  %i.dx = icmp ugt i64 %i.dw, 15
  br i1 %i.dx, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.x
  %i.dy = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.dy, ptr %8, align 8
  %i.dz = load i64, ptr %i.a, align 8
  store i64 %i.dz, ptr %i.dv, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.x
  %i.ea = phi ptr [ %i.dy, %.noexc.i ], [ %i.dv, %bb.x ] ; 2 uses
  switch i64 %i.dw, label %bb.z [
    i64 1, label %bb.y
    i64 0, label %bb.aa
  ]

bb.y:                                             ; preds = %._crit_edge.i.i
  %i.eb = load i8, ptr %i.du, align 8
  store i8 %i.eb, ptr %i.ea, align 1
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ea, ptr nonnull align 1 %i.du, i64 %i.dw, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %._crit_edge.i.i
  %i.ec = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.ec, ptr %i.ed, align 8
  %i.ee = load ptr, ptr %8, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ec
  store i8 0, ptr %i.ef, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.eg = load i64, ptr %i.ed, align 8            ; 3 uses
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ei, i8 0, i64 1024, i1 false)
  %i.ej = and i64 %i.eg, 4294966272
  %.not.i = icmp eq i64 %i.ej, 0
  %spec.select.i = select i1 %.not.i, i32 %i.eh, i32 1023 ; 2 uses
  %i.ek = load ptr, ptr %8, align 8               ; 3 uses
  %i.el = zext i32 %spec.select.i to i64          ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ei, ptr align 1 %i.ek, i64 %i.el, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.el
  store i8 0, ptr %i.em, align 1
  store i32 %spec.select.i, ptr %6, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.en, ptr nonnull align 4 %i.ei, i64 %i.el, i1 false)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.el
  store i8 0, ptr %i.eo, align 1
  %i.ep = icmp eq ptr %i.ek, %i.dv
  br i1 %i.ep, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.aa
  %i.eq = icmp ult i64 %i.eg, 16
  call void @llvm.assume(i1 %i.eq)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aa
  %i.er = load i64, ptr %i.dv, align 8
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.es) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE7LogInfoIJRA45_KcRA240_S4_EEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE7LogInfoIJRA45_KcRA240_S4_EEEvDpOT_.exit: ; preds = %bb.w, %_ZN6Assimp12StreamReaderILb1ELb1EE14CopyAndAdvanceEPvm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eu = load i32, ptr %i.et, align 8            ; 8 uses
  %i.ev = and i32 %i.eu, 1
  %.not62 = icmp eq i32 %i.ev, 0
  br i1 %.not62, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE7LogInfoIJRA45_KcRA240_S4_EEEvDpOT_.exit
  %i.ew = and i32 %i.eu, 2
  %.not63 = icmp eq i32 %i.ew, 0
  br i1 %.not63, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1064
  %i.fa = load i32, ptr %i.ez, align 8
  %i.fb = and i32 %i.fa, 2048
  %.not70 = icmp eq i32 %i.fb, 0
  %. = select i1 %.not70, i32 5, i32 6
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.fd = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.fc, i32 noundef 4, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %bb.aj

bb.ad:                                            ; preds = %bb.ab
  %i.fe = and i32 %i.eu, 4
  %.not64 = icmp eq i32 %i.fe, 0
  br i1 %.not64, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.ff = and i32 %i.eu, 8
  %.not65 = icmp eq i32 %i.ff, 0
  br i1 %.not65, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.fg = and i32 %i.eu, 32
  %.not66 = icmp eq i32 %i.fg, 0
  br i1 %.not66, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.fh = and i32 %i.eu, 64
  %.not67 = icmp eq i32 %i.fh, 0
  br i1 %.not67, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.fi = and i32 %i.eu, 2048
  %.not68 = icmp eq i32 %i.fi, 0
  br i1 %.not68, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fj = and i32 %i.eu, 4096
  %.not69 = icmp eq i32 %i.fj, 0
  %spec.select = select i1 %.not69, i32 18, i32 9
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE7LogInfoIJRA45_KcRA240_S4_EEEvDpOT_.exit, %bb.ac
  %.1 = phi i32 [ %spec.select, %bb.ai ], [ %., %bb.ac ], [ 1, %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE7LogInfoIJRA45_KcRA240_S4_EEEvDpOT_.exit ], [ 2, %bb.ad ], [ 11, %bb.ae ], [ 7, %bb.af ], [ 4, %bb.ag ], [ 3, %bb.ah ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 252
  %i.fl = zext nneg i32 %.1 to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fl ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4            ; 2 uses
  %i.fo = add i32 %i.fn, 1
  store i32 %i.fo, ptr %i.fm, align 4
  %i.fp = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %6, ptr noundef nonnull @.str.22, i32 noundef %.1, i32 noundef %i.fn) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #12

declare noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp15BlenderImporter18AddSentinelTextureEP10aiMaterialPKNS_7Blender8MaterialEPKNS3_4MTexERNS3_14ConversionDataE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(80) %0, ptr noundef %1, ptr noundef readnone captures(none) %2, ptr noundef readonly captures(none) %3, ptr noundef nonnull align 8 captures(none) dereferenceable(336) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %struct.aiString, align 4           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 248 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = add i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1068
  %i.h = load i32, ptr %i.g, align 4
  %switch.tableidx = add i32 %i.h, -1             ; 2 uses
  %i.i = icmp ult i32 %switch.tableidx, 13
  br i1 %i.i, label %switch.lookup, label %_ZN6Assimp7Blender27GetTextureTypeDisplayStringENS0_3Tex4TypeE.exit

switch.lookup:                                    ; preds = %bb.a
  %i.j = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6Assimp15BlenderImporter14ResolveTextureEP10aiMaterialPKNS_7Blender8MaterialEPKNS3_4MTexERNS3_14ConversionDataE, i64 %i.j
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN6Assimp7Blender27GetTextureTypeDisplayStringENS0_3Tex4TypeE.exit

_ZN6Assimp7Blender27GetTextureTypeDisplayStringENS0_3Tex4TypeE.exit: ; preds = %bb.a, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.122, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.k, i64 noundef 1024, ptr noundef nonnull @.str.23, i32 noundef %i.c, ptr noundef nonnull %.0.i) #25
  store i32 %i.l, ptr %5, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 256 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8
  %i.p = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %5, ptr noundef nonnull @.str.22, i32 noundef 1, i32 noundef %i.n) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp15BlenderImporter14ResolveTextureEP10aiMaterialPKNS_7Blender8MaterialEPKNS3_4MTexERNS3_14ConversionDataE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(80) %0, ptr noundef %1, ptr noundef readnone captures(none) %2, ptr noundef %3, ptr noundef nonnull align 8 captures(none) dereferenceable(336) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %struct.aiString, align 4           ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1068
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %.not15 = icmp eq i32 %i.f, 0
  br i1 %.not15, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr @.str.24, ptr %i.b, align 8
  switch i32 %i.f, label %bb.i [
    i32 1, label %bb.d
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 4, label %bb.d
    i32 5, label %bb.d
    i32 6, label %bb.d
    i32 7, label %bb.d
    i32 9, label %bb.d
    i32 11, label %bb.d
    i32 12, label %bb.d
end_hunk_4
begin_hunk_5_@_ZN6Assimp15BlenderImporter20BuildDefaultMaterialERNS_7Blender14ConversionDataE:bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.w
  %.022 = phi i32 [ -1, %.lr.ph ], [ %.2, %bb.w ] ; 3 uses
  %.sroa.016.021 = phi ptr [ %i.c, %.lr.ph ], [ %i.co, %bb.w ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.016.021, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 232 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.s = icmp eq i32 %.022, -1
  br i1 %i.s, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.t = call noalias noundef nonnull dereferenceable(1720) ptr @_Znwm(i64 noundef 1720) #26 ; 16 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1440) %i.t, i8 0, i64 1440, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MaterialE, i64 16), ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender2IDE, i64 16), ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 1408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %scevgep.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %scevgep.i, i8 0, i64 288, i1 false)
  store ptr %i.t, ptr %2, align 8
  store ptr null, ptr %i.f, align 8
  %i.w = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN6Assimp7Blender8MaterialEEET_.exit unwind label %bb.e ; 5 uses

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  %i.z = call ptr @__cxa_begin_catch(ptr %i.y) #25 ; 0 uses
  call void @_ZN6Assimp7Blender8MaterialD2Ev(ptr noundef nonnull align 8 dereferenceable(1720) %i.t) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 1720) #27
  invoke void @__cxa_rethrow() #28
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.g

common.resume:                                    ; preds = %bb.f, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.cn, %bb.u ], [ %i.aa, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #29
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN6Assimp7Blender8MaterialEEET_.exit: ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 1, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 1, ptr %i.ae, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.w, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.t, ptr %i.af, align 8
  store ptr %i.w, ptr %i.f, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(15) %i.ag, ptr noundef nonnull align 1 dereferenceable(15) @.str.27, i64 15, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 1064
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 1080
  store <2 x float> splat (float 6.000000e-01), ptr %i.ai, align 8
  store <4 x float> splat (float 6.000000e-01), ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 1092
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 1124
  store float 0.000000e+00, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 1088
  store i16 0, ptr %i.al, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.aj, i8 0, i64 28, i1 false)
  %i.am = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.an = load ptr, ptr %i.j, align 8
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = icmp ne ptr %i.am, null
  %.neg.i.i = sext i1 %i.as to i64
  %i.at = add nsw i64 %i.ar, %.neg.i.i
  %i.au = shl nsw i64 %i.at, 5
  %i.av = load ptr, ptr %i.g, align 8             ; 4 uses
  %i.aw = load ptr, ptr %i.k, align 8
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = lshr exact i64 %i.az, 4
  %i.bb = add i64 %i.au, %i.ba
  %i.bc = load ptr, ptr %i.l, align 8
  %i.bd = load ptr, ptr %i.h, align 8
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = lshr exact i64 %i.bg, 4
  %i.bi = add i64 %i.bb, %i.bh
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = load ptr, ptr %i.m, align 8
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -16
  %.not.i = icmp eq ptr %i.av, %i.bl
  br i1 %.not.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN6Assimp7Blender8MaterialEEET_.exit
  store ptr %i.t, ptr %i.av, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bn = load ptr, ptr %i.f, align 8             ; 3 uses
  store ptr %i.bn, ptr %i.bm, align 8
  %.not.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.bp = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = load i32, ptr %i.bo, align 4
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bo, align 4
  br label %_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bs = atomicrmw volatile add ptr %i.bo, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit.i

_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit.i: ; preds = %bb.l, %bb.k, %bb.i
  %i.bt = load ptr, ptr %i.g, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store ptr %i.bu, ptr %i.g, align 8
  br label %_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE9push_backERKS4_.exit

bb.m:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN6Assimp7Blender8MaterialEEET_.exit
  invoke void @_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE16_M_push_back_auxIJRKS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE9push_backERKS4_.exit unwind label %bb.u

_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit.i, %bb.m
  %i.bv = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc13 unwind label %bb.u

.noexc13:                                         ; preds = %_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE9push_backERKS4_.exit
  br i1 %i.bv, label %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE7LogInfoIJRA24_KcEEEvDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %.noexc13
  %i.bw = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc14 unwind label %bb.u

.noexc14:                                         ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr @.str, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger4infoIJPKcRA24_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bw, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(24) @.str.28)
          to label %.noexc15 unwind label %bb.u

.noexc15:                                         ; preds = %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE7LogInfoIJRA24_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE7LogInfoIJRA24_KcEEEvDpOT_.exit: ; preds = %.noexc15, %.noexc13
  %i.bx = load ptr, ptr %i.f, align 8             ; 8 uses
  %.not.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE7LogInfoIJRA24_KcEEEvDpOT_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 4 uses
  %i.bz = load atomic i64, ptr %i.by acquire, align 8 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 4294967297
  %i.cb = trunc i64 %i.bz to i32                  ; 2 uses
  br i1 %i.ca, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.by, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store i32 0, ptr %i.cc, align 4
  %i.cd = load ptr, ptr %i.bx, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #25, !inline_history !92
  %i.cg = load ptr, ptr %i.bx, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #25, !inline_history !92
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.cj = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = add nsw i32 %i.cb, -1
  store i32 %i.ck, ptr %i.by, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.cl = atomicrmw volatile add ptr %i.by, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i = phi i32 [ %i.cb, %bb.r ], [ %i.cl, %bb.s ]
  %i.cm = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cm, label %bb.t, label %_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #25
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE7LogInfoIJRA24_KcEEEvDpOT_.exit, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.v

bb.u:                                             ; preds = %.noexc14, %bb.n, %_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE9push_backERKS4_.exit, %bb.m
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %common.resume

bb.v:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.c
  %.1 = phi i32 [ %i.bj, %_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %.022, %bb.c ] ; 2 uses
  store i32 %.1, ptr %i.p, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.b
  %.2 = phi i32 [ %.1, %bb.v ], [ %.022, %bb.b ]
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.016.021, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.co, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !81
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !81
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp15BlenderImporter14AddBlendParamsEP10aiMaterialPKNS_7Blender8MaterialE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %struct.aiColor3D, align 8          ; 5 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %4 = alloca %struct.aiColor3D, align 8          ; 5 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca float, align 4                    ; 4 uses
  %i.k = alloca float, align 4                    ; 4 uses
  %i.l = alloca float, align 4                    ; 4 uses
  %i.m = alloca float, align 4                    ; 4 uses
  %i.n = alloca float, align 4                    ; 4 uses
  %i.o = alloca float, align 4                    ; 4 uses
  %i.p = alloca float, align 4                    ; 4 uses
  %i.q = alloca float, align 4                    ; 4 uses
  %i.r = alloca i32, align 4                      ; 4 uses
  %i.s = alloca float, align 4                    ; 4 uses
  %i.t = alloca float, align 4                    ; 4 uses
  %i.u = alloca i32, align 4                      ; 4 uses
  %i.v = alloca i32, align 4                      ; 4 uses
  %i.w = alloca float, align 4                    ; 4 uses
  %5 = alloca %struct.aiColor3D, align 8          ; 5 uses
  %i.x = alloca float, align 4                    ; 4 uses
  %i.y = alloca float, align 4                    ; 4 uses
  %i.z = alloca i32, align 4                      ; 4 uses
  %i.aa = alloca float, align 4                   ; 4 uses
  %i.ab = alloca i32, align 4                     ; 4 uses
  %i.ac = alloca float, align 4                   ; 4 uses
  %i.ad = alloca float, align 4                   ; 4 uses
  %i.ae = alloca i32, align 4                     ; 4 uses
  %i.af = alloca float, align 4                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 1064
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 1072
  %i.ai = load float, ptr %i.ah, align 8
  %i.aj = load <2 x float>, ptr %i.ag, align 8
  store <2 x float> %i.aj, ptr %3, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.ai, ptr %i.ak, align 8
  %i.al = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3, i32 noundef 12, ptr noundef nonnull @.str.29, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 1128
  %i.an = load float, ptr %i.am, align 8
  store float %i.an, ptr %i.a, align 4
  %i.ao = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 1424
  %i.aq = load i16, ptr %i.ap, align 8
  %i.ar = sext i16 %i.aq to i32
  store i32 %i.ar, ptr %i.b, align 4
  %i.as = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 0, ptr %i.c, align 4
  %i.at = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.c, i32 noundef 4, ptr noundef nonnull @.str.32, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 1076
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 1084
  %i.aw = load float, ptr %i.av, align 4
  %i.ax = load <2 x float>, ptr %i.au, align 4
  store <2 x float> %i.ax, ptr %4, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.aw, ptr %i.ay, align 8
  %i.az = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %4, i32 noundef 12, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 1164
  %i.bb = load float, ptr %i.ba, align 4
  store float %i.bb, ptr %i.d, align 4
  %i.bc = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.d, i32 noundef 4, ptr noundef nonnull @.str.34, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 1426
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = sext i16 %i.be to i32
  store i32 %i.bf, ptr %i.e, align 4
  %i.bg = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.e, i32 noundef 4, ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store i32 0, ptr %i.f, align 4
  %i.bh = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.f, i32 noundef 4, ptr noundef nonnull @.str.36, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 1088
  %i.bj = load i16, ptr %i.bi, align 8
  %i.bk = sext i16 %i.bj to i32
  store i32 %i.bk, ptr %i.g, align 4
  %i.bl = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.g, i32 noundef 4, ptr noundef nonnull @.str.37, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 1136 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = lshr i32 %i.bn, 16
  %.lobit = and i32 %i.bo, 1
  store i32 %.lobit, ptr %i.h, align 4
  %i.bp = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.h, i32 noundef 4, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.bq = load i32, ptr %i.bm, align 8            ; 2 uses
  %i.br = and i32 %i.bq, 131072
  %.not = icmp eq i32 %i.br, 0
  %i.bs = lshr i32 %i.bq, 6
  %.lobit76 = and i32 %i.bs, 1
  %i.bt = select i1 %.not, i32 %.lobit76, i32 2
  store i32 %i.bt, ptr %i.i, align 4
  %i.bu = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.i, i32 noundef 4, ptr noundef nonnull @.str.39, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 1124
  %i.bw = load float, ptr %i.bv, align 4
  store float %i.bw, ptr %i.j, align 4
  %i.bx = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.j, i32 noundef 4, ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #25
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 1160
  %i.bz = load float, ptr %i.by, align 8
  store float %i.bz, ptr %i.k, align 4
  %i.ca = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.k, i32 noundef 4, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #25
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 1184
  %i.cc = load float, ptr %i.cb, align 8
  store float %i.cc, ptr %i.l, align 4
  %i.cd = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.l, i32 noundef 4, ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #25
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 1188
  %i.cf = load float, ptr %i.ce, align 4
  store float %i.cf, ptr %i.m, align 4
  %i.cg = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.m, i32 noundef 4, ptr noundef nonnull @.str.43, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #25
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 1156
  %i.ci = load float, ptr %i.ch, align 4
  store float %i.ci, ptr %i.n, align 4
  %i.cj = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.n, i32 noundef 4, ptr noundef nonnull @.str.44, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #25
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 1192
  %i.cl = load float, ptr %i.ck, align 8
  store float %i.cl, ptr %i.o, align 4
  %i.cm = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.o, i32 noundef 4, ptr noundef nonnull @.str.45, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #25
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 1200
  %i.co = load float, ptr %i.cn, align 8
  store float %i.co, ptr %i.p, align 4
  %i.cp = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.p, i32 noundef 4, ptr noundef nonnull @.str.46, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #25
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 1196
  %i.cr = load float, ptr %i.cq, align 4
  store float %i.cr, ptr %i.q, align 4
  %i.cs = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.q, i32 noundef 4, ptr noundef nonnull @.str.47, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #25
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 1358
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = sext i16 %i.cu to i32
  store i32 %i.cv, ptr %i.r, align 4
  %i.cw = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.r, i32 noundef 4, ptr noundef nonnull @.str.48, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #25
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 1208
  %i.cy = load float, ptr %i.cx, align 8
  store float %i.cy, ptr %i.s, align 4
  %i.cz = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.s, i32 noundef 4, ptr noundef nonnull @.str.49, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #25
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 1216
  %i.db = load float, ptr %i.da, align 8
  store float %i.db, ptr %i.t, align 4
  %i.dc = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.t, i32 noundef 4, ptr noundef nonnull @.str.50, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #25
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 1362
  %i.de = load i16, ptr %i.dd, align 2
  %i.df = sext i16 %i.de to i32
  store i32 %i.df, ptr %i.u, align 4
  %i.dg = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.u, i32 noundef 4, ptr noundef nonnull @.str.51, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #25
  %i.dh = load i32, ptr %i.bm, align 8
  %i.di = lshr i32 %i.dh, 18
  %.lobit78 = and i32 %i.di, 1
  store i32 %.lobit78, ptr %i.v, align 4
  %i.dj = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.v, i32 noundef 4, ptr noundef nonnull @.str.52, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #25
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 1120
  %i.dl = load float, ptr %i.dk, align 8
  store float %i.dl, ptr %i.w, align 4
  %i.dm = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.w, i32 noundef 4, ptr noundef nonnull @.str.53, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 1104
end_hunk_5
begin_hunk_6_@_ZN6Assimp15BlenderImporter11ConvertMeshERKNS_7Blender5SceneEPKNS1_6ObjectEPKNS1_4MeshERNS1_14ConversionDataERNS1_9TempArrayISt6vector6aiMeshEE:bb.a
  %i.gq = call i64 @llvm.umin.i64(i64 %i.go, i64 1152921504606846975)
  %i.gr = select i1 %i.gp, i64 1152921504606846975, i64 %i.gq ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.gr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.gs = shl nuw nsw i64 %i.gr, 3
  %i.gt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gs) #26
          to label %.noexc480 unwind label %.loopexit715 ; 4 uses

.noexc480:                                        ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 %i.gl ; 3 uses
  store ptr %i.fx, ptr %i.gu, align 8
  %i.gv = icmp sgt i64 %i.gl, 0
  br i1 %i.gv, label %bb.aj, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.aj:                                            ; preds = %.noexc480
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gt, ptr align 8 %i.gi, i64 %i.gl, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.aj, %.noexc480
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.gi, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.gl) #27
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ak, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.gt, ptr %5, align 8
  store ptr %i.gw, ptr %i.cv, align 8
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gr
  store ptr %i.gx, ptr %i.df, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ag
  %i.gy = phi ptr [ %i.gu, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.gg, %bb.ag ]
  %i.gz = load ptr, ptr %i.gy, align 8            ; 8 uses
  %i.ha = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 4 dereferenceable(4) %i.fn)
          to label %bb.al unwind label %.loopexit716

bb.al:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backEOS1_.exit
  %i.hb = load i64, ptr %i.ha, align 8
  %.fr965 = freeze i64 %i.hb                      ; 2 uses
  %i.hc = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.fr965, i64 12) ; 2 uses
  %i.hd = extractvalue { i64, i1 } %i.hc, 1
  %i.he = extractvalue { i64, i1 } %i.hc, 0       ; 2 uses
  %i.hf = select i1 %i.hd, i64 -1, i64 %i.he
  %i.hg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hf) #26
          to label %bb.am unwind label %.loopexit716 ; 2 uses

bb.am:                                            ; preds = %bb.al
  %i.hh = icmp eq i64 %.fr965, 0
  br i1 %i.hh, label %.loopexit714, label %.loopexit714.loopexit

.loopexit714.loopexit:                            ; preds = %bb.am
  %i.hi = add i64 %i.he, -12                      ; 2 uses
  %i.hj = urem i64 %i.hi, 12
  %i.hk = sub nuw i64 %i.hi, %i.hj
  %i.hl = add i64 %i.hk, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hg, i8 0, i64 %i.hl, i1 false)
  br label %.loopexit714

.loopexit714:                                     ; preds = %.loopexit714.loopexit, %bb.am
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store ptr %i.hg, ptr %i.hm, align 8
  %i.hn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 4 dereferenceable(4) %i.fn)
          to label %bb.an unwind label %.loopexit716

bb.an:                                            ; preds = %.loopexit714
  %i.ho = load i64, ptr %i.hn, align 8
  %.fr = freeze i64 %i.ho                         ; 3 uses
  %i.hp = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.fr, i64 12) ; 2 uses
  %i.hq = extractvalue { i64, i1 } %i.hp, 1
  %i.hr = extractvalue { i64, i1 } %i.hp, 0
  %i.hs = select i1 %i.hq, i64 -1, i64 %i.hr
  %i.ht = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hs) #26
          to label %bb.ao unwind label %.loopexit716 ; 2 uses

bb.ao:                                            ; preds = %bb.an
  %i.hu = icmp eq i64 %.fr, 0
  br i1 %i.hu, label %.loopexit713, label %.loopexit713.loopexit

.loopexit713.loopexit:                            ; preds = %bb.ao
  %i.hv = mul i64 %.fr, 12
  %i.hw = add i64 %i.hv, -12                      ; 2 uses
  %i.hx = urem i64 %i.hw, 12
  %i.hy = sub nuw i64 %i.hw, %i.hx
  %i.hz = add i64 %i.hy, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ht, i8 0, i64 %i.hz, i1 false)
  br label %.loopexit713

.loopexit713:                                     ; preds = %.loopexit713.loopexit, %bb.ao
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  store ptr %i.ht, ptr %i.ia, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0670.0750, i64 40
  %i.ic = load i64, ptr %i.ib, align 8            ; 7 uses
  %i.id = icmp ugt i64 %i.ic, 1152921504606846975
  %i.ie = shl i64 %i.ic, 4
  %i.if = or disjoint i64 %i.ie, 8
  %i.ig = select i1 %i.id, i64 -1, i64 %i.if
  %i.ih = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ig) #26
          to label %bb.ap unwind label %.loopexit716 ; 2 uses

bb.ap:                                            ; preds = %.loopexit713
  store i64 %i.ic, ptr %i.ih, align 16
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8 ; 4 uses
  %i.ij = icmp eq i64 %i.ic, 0
  br i1 %i.ij, label %.loopexit712, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ik = getelementptr inbounds [16 x i8], ptr %i.ii, i64 %i.ic
  %i.il = add i64 %i.ic, 1152921504606846975
  %i.im = and i64 %i.il, 1152921504606846975
  %xtraiter = and i64 %i.ic, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.aq, %.prol.preheader
  %i.in = phi ptr [ %i.ip, %.prol.preheader ], [ %i.ii, %bb.aq ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.aq ]
  store i32 0, ptr %i.in, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store ptr null, ptr %i.io, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !95

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.aq
  %.unr = phi ptr [ %i.ii, %bb.aq ], [ %i.ip, %.prol.preheader ]
  %i.iq = icmp samesign ult i64 %i.im, 7
  br i1 %i.iq, label %.loopexit712, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.ir = phi ptr [ %i.jh, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.ir, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store ptr null, ptr %i.is, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  store i32 0, ptr %i.it, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  store ptr null, ptr %i.iu, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 32
  store i32 0, ptr %i.iv, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 40
  store ptr null, ptr %i.iw, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ir, i64 48
  store i32 0, ptr %i.ix, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 56
  store ptr null, ptr %i.iy, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ir, i64 64
  store i32 0, ptr %i.iz, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ir, i64 72
  store ptr null, ptr %i.ja, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ir, i64 80
  store i32 0, ptr %i.jb, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ir, i64 88
  store ptr null, ptr %i.jc, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ir, i64 96
  store i32 0, ptr %i.jd, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.ir, i64 104
  store ptr null, ptr %i.je, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ir, i64 112
  store i32 0, ptr %i.jf, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ir, i64 120
  store ptr null, ptr %i.jg, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ir, i64 128 ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.ik
  br i1 %i.ji, label %.loopexit712, label %.new

.loopexit712:                                     ; preds = %.prol.loopexit, %.new, %bb.ap
  %i.jj = getelementptr inbounds nuw i8, ptr %i.gz, i64 208
  store ptr %i.ii, ptr %i.jj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  store ptr %i.es, ptr %14, align 8
  %i.jk = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.er) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #25
  store i64 %i.jk, ptr %i.k, align 8
  %i.jl = icmp ugt i64 %i.jk, 15
  br i1 %i.jl, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.loopexit712
  %i.jm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc481 unwind label %bb.ay ; 2 uses

.noexc481:                                        ; preds = %.noexc.i
  store ptr %i.jm, ptr %14, align 8
  %i.jn = load i64, ptr %i.k, align 8
  store i64 %i.jn, ptr %i.es, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc481, %.loopexit712
  %i.jo = phi ptr [ %i.jm, %.noexc481 ], [ %i.es, %.loopexit712 ] ; 2 uses
  switch i64 %i.jk, label %bb.as [
    i64 1, label %bb.ar
    i64 0, label %_ZN8aiStringaSERKS_.exit
  ]

bb.ar:                                            ; preds = %._crit_edge.i.i
  %i.jp = load i8, ptr %i.er, align 2
  store i8 %i.jp, ptr %i.jo, align 1
  br label %_ZN8aiStringaSERKS_.exit

bb.as:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jo, ptr nonnull align 1 %i.er, i64 %i.jk, i1 false)
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %bb.as, %bb.ar, %._crit_edge.i.i
  %i.jq = load i64, ptr %i.k, align 8             ; 2 uses
  store i64 %i.jq, ptr %i.et, align 8
  %i.jr = load ptr, ptr %14, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.jq
  store i8 0, ptr %i.js, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25
  %i.jt = load i64, ptr %i.et, align 8            ; 2 uses
  %i.ju = trunc i64 %i.jt to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.eu, i8 0, i64 1024, i1 false)
  %i.jv = and i64 %i.jt, 4294966272
  %.not.i = icmp eq i64 %i.jv, 0
  %spec.select.i = select i1 %.not.i, i32 %i.ju, i32 1023 ; 3 uses
  store i32 %spec.select.i, ptr %13, align 4
  %i.jw = load ptr, ptr %14, align 8
  %i.jx = zext i32 %spec.select.i to i64          ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.eu, ptr align 1 %i.jw, i64 %i.jx, i1 false)
  %i.jy = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.jx
  store i8 0, ptr %i.jy, align 1
  %i.jz = getelementptr inbounds nuw i8, ptr %i.gz, i64 236
  store i32 %spec.select.i, ptr %i.jz, align 4
  %i.ka = getelementptr inbounds nuw i8, ptr %i.gz, i64 240 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ka, ptr nonnull align 4 %i.eu, i64 %i.jx, i1 false)
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.jx
  store i8 0, ptr %i.kb, align 1
  %i.kc = load ptr, ptr %14, align 8              ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.es
  br i1 %i.kd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8aiStringaSERKS_.exit
  %i.ke = load i64, ptr %i.es, align 8
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8aiStringaSERKS_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.kg = load ptr, ptr %i.ev, align 8            ; 3 uses
  %i.kh = load ptr, ptr %i.ew, align 8            ; 2 uses
  %.not692 = icmp eq ptr %i.kg, %i.kh
  br i1 %.not692, label %bb.bs, label %bb.at

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ki = load i32, ptr %i.fn, align 8
  %i.kj = sext i32 %i.ki to i64                   ; 2 uses
  %i.kk = ptrtoint ptr %i.kh to i64
  %i.kl = ptrtoint ptr %i.kg to i64
  %i.km = sub i64 %i.kk, %i.kl
  %i.kn = ashr exact i64 %i.km, 4
  %.not466 = icmp ugt i64 %i.kn, %i.kj
  br i1 %.not466, label %bb.az, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ko = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  store ptr @.str, ptr %i.j, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJPKcRA31_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ko, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(31) @.str.81)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  invoke void @__cxa_throw(ptr nonnull %i.ko, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %.noexc483 unwind label %.loopexit.split-lp717

.noexc483:                                        ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.kp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25
  call void @__cxa_free_exception(ptr nonnull %i.ko) #25
  br label %.body

bb.ax:                                            ; preds = %bb.ad
  %i.kq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #25
  br label %.body

.loopexit715:                                     ; preds = %bb.ae, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ai
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit716:                                     ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backEOS1_.exit, %bb.al, %.loopexit714, %bb.an, %.loopexit713
  %lpad.loopexit718 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp717:                            ; preds = %bb.av
  %lpad.loopexit.split-lp719 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ay:                                            ; preds = %.noexc.i
  %i.kr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %.body

bb.az:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.ks = getelementptr inbounds nuw [16 x i8], ptr %i.kg, i64 %i.kj ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8
  store ptr %i.kt, ptr %15, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8            ; 3 uses
  store ptr %i.kv, ptr %i.ex, align 8
  %.not.i.i.i = icmp eq ptr %i.kv, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8 ; 3 uses
  %i.kx = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i484 = icmp eq i8 %i.kx, 0
  br i1 %.not.i.i.i.i484, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ky = load i32, ptr %i.kw, align 4
  %i.kz = add nsw i32 %i.ky, 1
  store i32 %i.kz, ptr %i.kw, align 4
  br label %_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit

bb.bc:                                            ; preds = %bb.ba
  %i.la = atomicrmw volatile add ptr %i.kw, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit

_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit: ; preds = %bb.az, %bb.bb, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !97
  %i.lb = load <2 x ptr>, ptr %i.ez, align 8, !noalias !100
  store <2 x ptr> %i.lb, ptr %8, align 16, !noalias !103
  %i.lc = load <2 x ptr>, ptr %i.fa, align 8, !noalias !100
  store <2 x ptr> %i.lc, ptr %i.fg, align 16, !noalias !103
  %i.ld = load <2 x ptr>, ptr %i.fc, align 8, !noalias !106
  store <2 x ptr> %i.ld, ptr %9, align 16, !noalias !103
  %i.le = load <2 x ptr>, ptr %i.fe, align 8, !noalias !106
  store <2 x ptr> %i.le, ptr %i.fh, align 16, !noalias !103
  invoke void @_ZSt9__find_ifISt15_Deque_iteratorISt10shared_ptrIN6Assimp7Blender8MaterialEERS5_PS5_EN9__gnu_cxx5__ops16_Iter_equals_valIKS5_EEET_SE_SE_T0_St26random_access_iterator_tag(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator.111") align 8 %16, ptr noundef nonnull dead_on_return %8, ptr noundef nonnull dead_on_return %9, ptr nonnull align 8 dereferenceable(16) %15)
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !97
  %i.lf = load ptr, ptr %i.fc, align 8, !noalias !109 ; 2 uses
  %i.lg = load ptr, ptr %16, align 8              ; 2 uses
  %.not693 = icmp eq ptr %i.lg, %i.lf
  br i1 %.not693, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lh = load ptr, ptr %i.ez, align 8, !noalias !112
  %i.li = load ptr, ptr %i.fa, align 8, !noalias !112
  %i.lj = load ptr, ptr %i.fb, align 8, !noalias !112
  %i.lk = load ptr, ptr %i.fi, align 8
  %i.ll = load ptr, ptr %i.fj, align 8            ; 2 uses
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = ptrtoint ptr %i.lj to i64
  %i.lo = sub i64 %i.lm, %i.ln
  %i.lp = ashr exact i64 %i.lo, 3
  %i.lq = icmp ne ptr %i.ll, null
  %.neg.i = sext i1 %i.lq to i64
  %i.lr = add nsw i64 %i.lp, %.neg.i
  %i.ls = shl nsw i64 %i.lr, 5
  %i.lt = ptrtoint ptr %i.lg to i64
  %i.lu = ptrtoint ptr %i.lk to i64
  %i.lv = sub i64 %i.lt, %i.lu
  %i.lw = lshr exact i64 %i.lv, 4
  %i.lx = ptrtoint ptr %i.li to i64
  %i.ly = ptrtoint ptr %i.lh to i64
  %i.lz = sub i64 %i.lx, %i.ly
  %i.ma = lshr exact i64 %i.lz, 4
  %i.mb = add nuw nsw i64 %i.lw, %i.ma
  %i.mc = add i64 %i.mb, %i.ls
  %i.md = trunc i64 %i.mc to i32
  %i.me = getelementptr inbounds nuw i8, ptr %i.gz, i64 232
  store i32 %i.md, ptr %i.me, align 8
  br label %_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE9push_backERKS4_.exit

bb.bf:                                            ; preds = %bb.bl, %_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit
  %i.mf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %.body

bb.bg:                                            ; preds = %bb.bd
  %i.mg = load ptr, ptr %i.ff, align 8            ; 2 uses
  %i.mh = load ptr, ptr %i.fb, align 8
  %i.mi = ptrtoint ptr %i.mg to i64
  %i.mj = ptrtoint ptr %i.mh to i64
  %i.mk = sub i64 %i.mi, %i.mj
  %i.ml = ashr exact i64 %i.mk, 3
  %i.mm = icmp ne ptr %i.mg, null
  %.neg.i.i = sext i1 %i.mm to i64
  %i.mn = add nsw i64 %i.ml, %.neg.i.i
  %i.mo = shl nsw i64 %i.mn, 5
  %i.mp = load ptr, ptr %i.fd, align 8
  %i.mq = ptrtoint ptr %i.lf to i64
  %i.mr = ptrtoint ptr %i.mp to i64
  %i.ms = sub i64 %i.mq, %i.mr
  %i.mt = lshr exact i64 %i.ms, 4
  %i.mu = add i64 %i.mo, %i.mt
  %i.mv = load ptr, ptr %i.fa, align 8
  %i.mw = load ptr, ptr %i.ez, align 8
  %i.mx = ptrtoint ptr %i.mv to i64
  %i.my = ptrtoint ptr %i.mw to i64
  %i.mz = sub i64 %i.mx, %i.my
  %i.na = lshr exact i64 %i.mz, 4
  %i.nb = add i64 %i.mu, %i.na
  %i.nc = trunc i64 %i.nb to i32
  %i.nd = getelementptr inbounds nuw i8, ptr %i.gz, i64 232
  store i32 %i.nc, ptr %i.nd, align 8
  %i.ne = load ptr, ptr %i.fc, align 8            ; 3 uses
  %i.nf = load ptr, ptr %i.fe, align 8
  %i.ng = getelementptr inbounds i8, ptr %i.nf, i64 -16
  %.not.i486 = icmp eq ptr %i.ne, %i.ng
  br i1 %.not.i486, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nh = load ptr, ptr %15, align 8
  store ptr %i.nh, ptr %i.ne, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.nj = load ptr, ptr %i.ex, align 8            ; 3 uses
  store ptr %i.nj, ptr %i.ni, align 8
  %.not.i.i.i.i487 = icmp eq ptr %i.nj, null
  br i1 %.not.i.i.i.i487, label %_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8 ; 3 uses
  %i.nl = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.nl, 0
  br i1 %.not.i.i.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.nm = load i32, ptr %i.nk, align 4
  %i.nn = add nsw i32 %i.nm, 1
  store i32 %i.nn, ptr %i.nk, align 4
  br label %_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit.i

bb.bk:                                            ; preds = %bb.bi
  %i.no = atomicrmw volatile add ptr %i.nk, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit.i

_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit.i: ; preds = %bb.bk, %bb.bj, %bb.bh
  %i.np = load ptr, ptr %i.fc, align 8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 16
  store ptr %i.nq, ptr %i.fc, align 8
  br label %_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE9push_backERKS4_.exit

bb.bl:                                            ; preds = %bb.bg
  invoke void @_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE16_M_push_back_auxIJRKS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ey, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE9push_backERKS4_.exit unwind label %bb.bf

_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit.i, %bb.bl, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  %i.nr = load ptr, ptr %i.ex, align 8            ; 8 uses
  %.not.i.i489 = icmp eq ptr %i.nr, null
  br i1 %.not.i.i489, label %_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE9push_backERKS4_.exit
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 8 ; 4 uses
  %i.nt = load atomic i64, ptr %i.ns acquire, align 8 ; 2 uses
  %i.nu = icmp eq i64 %i.nt, 4294967297
  %i.nv = trunc i64 %i.nt to i32                  ; 2 uses
  br i1 %i.nu, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.ns, align 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nr, i64 12
  store i32 0, ptr %i.nw, align 4
  %i.nx = load ptr, ptr %i.nr, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %i.nz = load ptr, ptr %i.ny, align 8
  call void %i.nz(ptr noundef nonnull align 8 dereferenceable(16) %i.nr) #25, !inline_history !92
  %i.oa = load ptr, ptr %i.nr, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 24
  %i.oc = load ptr, ptr %i.ob, align 8
  call void %i.oc(ptr noundef nonnull align 8 dereferenceable(16) %i.nr) #25, !inline_history !92
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bo:                                            ; preds = %bb.bm
  %i.od = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i490 = icmp eq i8 %i.od, 0
  br i1 %.not.i.i.i490, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.oe = add nsw i32 %i.nv, -1
  store i32 %i.oe, ptr %i.ns, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.of = atomicrmw volatile add ptr %i.ns, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bq, %bb.bp
  %.0.i.i.i.i = phi i32 [ %i.nv, %bb.bp ], [ %i.of, %bb.bq ]
  %i.og = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.og, label %bb.br, label %_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.br:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nr) #25
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE9push_backERKS4_.exit, %bb.bn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.bt

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.oh = getelementptr inbounds nuw i8, ptr %i.gz, i64 232
  store i32 -1, ptr %i.oh, align 8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.oi = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0670.0750) #30 ; 2 uses
  %.not682 = icmp eq ptr %i.oi, %i.bq
  br i1 %.not682, label %.preheader711, label %bb.ad

.preheader710:                                    ; preds = %bb.co, %.preheader711
  %i.oj = load i32, ptr %i.cb, align 8
  %i.ok = icmp sgt i32 %i.oj, 0
  br i1 %i.ok, label %.lr.ph761, label %._crit_edge762

.lr.ph761:                                        ; preds = %.preheader710
  %i.ol = getelementptr inbounds nuw i8, ptr %3, i64 1288
  br label %bb.cp

.lr.ph753:                                        ; preds = %.preheader711, %bb.co
  %indvars.iv848 = phi i64 [ %indvars.iv.next849, %bb.co ], [ 0, %.preheader711 ] ; 2 uses
  %i.om = load ptr, ptr %i.af, align 8
  %i.on = getelementptr inbounds nuw [40 x i8], ptr %i.om, i64 %indvars.iv848 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #25
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 32
  %i.op = load i32, ptr %i.oo, align 8
  %i.oq = sext i32 %i.op to i64
  store i64 %i.oq, ptr %i.r, align 8
  %i.or = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.bu unwind label %bb.bz

bb.bu:                                            ; preds = %.lr.ph753
  %i.os = load i64, ptr %i.or, align 8
  %i.ot = load ptr, ptr %5, align 8
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %i.os
  %i.ov = load ptr, ptr %i.ou, align 8            ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #25
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 208
  %i.ox = load ptr, ptr %i.ow, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 8 ; 2 uses
  %i.oz = load i32, ptr %i.oy, align 8            ; 2 uses
  %i.pa = add i32 %i.oz, 1
  store i32 %i.pa, ptr %i.oy, align 8
  %i.pb = zext i32 %i.oz to i64
  %i.pc = getelementptr inbounds nuw [16 x i8], ptr %i.ox, i64 %i.pb ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.on, i64 28 ; 2 uses
  %i.pe = load i32, ptr %i.pd, align 4
  %.not455 = icmp eq i32 %i.pe, 0
  %i.pf = select i1 %.not455, i32 3, i32 4        ; 2 uses
  store i32 %i.pf, ptr %i.pc, align 8
  %i.pg = shl nuw nsw i32 %i.pf, 2
  %i.ph = zext nneg i32 %i.pg to i64
  %i.pi = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ph) #26
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pc, i64 8 ; 5 uses
  store ptr %i.pi, ptr %i.pj, align 8
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  %i.pl = load ptr, ptr %i.pk, align 8
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ov, i64 4 ; 9 uses
  %i.pn = load i32, ptr %i.pm, align 4
  %i.po = zext i32 %i.pn to i64                   ; 2 uses
  %i.pp = getelementptr inbounds nuw [12 x i8], ptr %i.pl, i64 %i.po ; 12 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.ov, i64 24
  %i.pr = load ptr, ptr %i.pq, align 8
  %i.ps = getelementptr inbounds nuw [12 x i8], ptr %i.pr, i64 %i.po ; 12 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.pu = load i32, ptr %i.pt, align 8            ; 2 uses
  %i.pv = load i32, ptr %i.ac, align 8
  %.not456 = icmp slt i32 %i.pu, %i.pv
  br i1 %.not456, label %bb.cc, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.pw = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  store ptr @.str, ptr %i.i, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJPKcRA29_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.pw, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 1 dereferenceable(29) @.str.82)
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %bb.bw
  invoke void @__cxa_throw(ptr nonnull %i.pw, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %.noexc491 unwind label %bb.cb

.noexc491:                                        ; preds = %bb.bx
  unreachable

bb.by:                                            ; preds = %bb.bw
  %i.px = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  call void @__cxa_free_exception(ptr nonnull %i.pw) #25
  br label %.body

bb.bz:                                            ; preds = %.lr.ph753
  %i.py = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #25
  br label %.body

bb.ca:                                            ; preds = %bb.bu
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cb:                                            ; preds = %bb.bx
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cc:                                            ; preds = %bb.bv
  %i.qb = sext i32 %i.pu to i64
  %i.qc = load ptr, ptr %i.ar, align 8
  %i.qd = getelementptr inbounds nuw [56 x i8], ptr %i.qc, i64 %i.qb ; 6 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qf = load float, ptr %i.qe, align 8
  store float %i.qf, ptr %i.pp, align 4
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qd, i64 20
  %i.qh = load float, ptr %i.qg, align 4
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pp, i64 4
  store float %i.qh, ptr %i.qi, align 4
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qd, i64 24
  %i.qk = load float, ptr %i.qj, align 8
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  store float %i.qk, ptr %i.ql, align 4
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qd, i64 28
  %i.qn = load float, ptr %i.qm, align 4
  store float %i.qn, ptr %i.ps, align 4
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qd, i64 32
  %i.qp = load float, ptr %i.qo, align 8
  %i.qq = getelementptr inbounds nuw i8, ptr %i.ps, i64 4
  store float %i.qp, ptr %i.qq, align 4
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qd, i64 36
  %i.qs = load float, ptr %i.qr, align 4
  %i.qt = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  store float %i.qs, ptr %i.qt, align 4
  %i.qu = load i32, ptr %i.pm, align 4            ; 2 uses
  %i.qv = add i32 %i.qu, 1
  store i32 %i.qv, ptr %i.pm, align 4
  %i.qw = load ptr, ptr %i.pj, align 8
  store i32 %i.qu, ptr %i.qw, align 4
  %i.qx = getelementptr inbounds nuw i8, ptr %i.on, i64 20
  %i.qy = load i32, ptr %i.qx, align 4            ; 2 uses
  %i.qz = load i32, ptr %i.ac, align 8
  %.not457 = icmp slt i32 %i.qy, %i.qz
  br i1 %.not457, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ra = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  store ptr @.str, ptr %i.h, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJPKcRA29_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ra, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(29) @.str.83)
          to label %.invoke unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.rb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  call void @__cxa_free_exception(ptr nonnull %i.ra) #25
  br label %.body

bb.cf:                                            ; preds = %.invoke
  %i.rc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cg:                                            ; preds = %bb.cc
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ps, i64 12
  %i.re = getelementptr inbounds nuw i8, ptr %i.pp, i64 12
  %i.rf = sext i32 %i.qy to i64
  %i.rg = load ptr, ptr %i.ar, align 8
  %i.rh = getelementptr inbounds nuw [56 x i8], ptr %i.rg, i64 %i.rf ; 6 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  %i.rj = load float, ptr %i.ri, align 8
  store float %i.rj, ptr %i.re, align 4
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rh, i64 20
  %i.rl = load float, ptr %i.rk, align 4
  %i.rm = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  store float %i.rl, ptr %i.rm, align 4
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rh, i64 24
  %i.ro = load float, ptr %i.rn, align 8
end_hunk_6
begin_hunk_7_@_ZN6Assimp15BlenderImporter11ConvertMeshERKNS_7Blender5SceneEPKNS1_6ObjectEPKNS1_4MeshERNS1_14ConversionDataERNS1_9TempArrayISt6vector6aiMeshEE:bb.a
.noexc589:                                        ; preds = %bb.cw
  invoke void @_ZN15DeadlyErrorBaseC2IJRA26_KcEPS1_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.xn, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(26) @.str.86)
          to label %bb.da unwind label %bb.db

bb.da:                                            ; preds = %.noexc589
  %i.yp = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.yp, ptr %6, align 8
  %i.yq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.yr = getelementptr i8, ptr %i.yp, i64 -24
  %i.ys = load i64, ptr %i.yr, align 8
  %i.yt = getelementptr inbounds i8, ptr %6, i64 %i.ys
  store ptr %i.yq, ptr %i.yt, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.yc, align 8
  %i.yu = load ptr, ptr %i.yg, align 8            ; 2 uses
  %i.yv = icmp eq ptr %i.yu, %i.yh
  br i1 %i.yv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.da
  %i.yw = load i64, ptr %i.yh, align 8
  %i.yx = add i64 %i.yw, 1
  call void @_ZdlPvm(ptr noundef %i.yu, i64 noundef %i.yx) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

bb.db:                                            ; preds = %.noexc589
  %i.yy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %6) #25
  br label %.body590

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.yc, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ye) #25
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.xo) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %i.xn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  invoke void @__cxa_throw(ptr nonnull %i.xn, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %.noexc506 unwind label %bb.dc

.noexc506:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  unreachable

.body590:                                         ; preds = %bb.cz, %bb.db
  %eh.lpad-body591 = phi { ptr, i32 } [ %i.yy, %bb.db ], [ %.pn.pn.i, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @__cxa_free_exception(ptr nonnull %i.xn) #25
  br label %.body

bb.dc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.yz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dd:                                            ; preds = %bb.cu
  %i.za = sext i32 %i.xl to i64
  %i.zb = load ptr, ptr %i.ar, align 8
  %i.zc = getelementptr inbounds nuw [56 x i8], ptr %i.zb, i64 %i.za ; 6 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 16
  %i.ze = load float, ptr %i.zd, align 8
  store float %i.ze, ptr %.0406756, align 4
  %i.zf = getelementptr inbounds nuw i8, ptr %i.zc, i64 20
  %i.zg = load float, ptr %i.zf, align 4
  %i.zh = getelementptr inbounds nuw i8, ptr %.0406756, i64 4
  store float %i.zg, ptr %i.zh, align 4
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zc, i64 24
  %i.zj = load float, ptr %i.zi, align 8
  %i.zk = getelementptr inbounds nuw i8, ptr %.0406756, i64 8
  store float %i.zj, ptr %i.zk, align 4
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zc, i64 28
  %i.zm = load float, ptr %i.zl, align 4
  store float %i.zm, ptr %.0408755, align 4
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zc, i64 32
  %i.zo = load float, ptr %i.zn, align 8
  %i.zp = getelementptr inbounds nuw i8, ptr %.0408755, i64 4
  store float %i.zo, ptr %i.zp, align 4
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zc, i64 36
  %i.zr = load float, ptr %i.zq, align 4
  %i.zs = getelementptr inbounds nuw i8, ptr %.0408755, i64 8
  store float %i.zr, ptr %i.zs, align 4
  %i.zt = load i32, ptr %i.wp, align 4            ; 2 uses
  %i.zu = add i32 %i.zt, 1
  store i32 %i.zu, ptr %i.wp, align 4
  %i.zv = load ptr, ptr %i.wo, align 8
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %indvars.iv851
  store i32 %i.zt, ptr %i.zw, align 4
  %i.zx = getelementptr inbounds nuw i8, ptr %.0406756, i64 12
  %i.zy = getelementptr inbounds nuw i8, ptr %.0408755, i64 12
  %indvars.iv.next852 = add nuw nsw i64 %indvars.iv851, 1 ; 2 uses
  %i.zz = load i32, ptr %i.wj, align 4            ; 2 uses
  %i.aaa = sext i32 %i.zz to i64
  %i.aab = icmp slt i64 %indvars.iv.next852, %i.aaa
  br i1 %i.aab, label %bb.cu, label %._crit_edge759, !llvm.loop !116

._crit_edge759.thread:                            ; preds = %bb.cr, %._crit_edge759
  br label %bb.de

bb.de:                                            ; preds = %._crit_edge759, %._crit_edge759.thread
  %.sink983 = phi i32 [ 8, %._crit_edge759.thread ], [ 4, %._crit_edge759 ]
  %i.aac = load i32, ptr %i.wb, align 8
  %i.aad = or i32 %i.aac, %.sink983
  store i32 %i.aad, ptr %i.wb, align 8
  %indvars.iv.next855 = add nuw nsw i64 %indvars.iv854, 1 ; 2 uses
  %i.aae = load i32, ptr %i.cb, align 8
  %i.aaf = sext i32 %i.aae to i64
  %i.aag = icmp slt i64 %indvars.iv.next855, %i.aaf
  br i1 %i.aag, label %bb.cp, label %._crit_edge762, !llvm.loop !117

._crit_edge767:                                   ; preds = %_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit548, %._crit_edge762
  %i.aah = getelementptr inbounds nuw i8, ptr %3, i64 1120 ; 2 uses
  %i.aai = load ptr, ptr %i.aah, align 8          ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %3, i64 1128
  %i.aak = load ptr, ptr %i.aaj, align 8          ; 2 uses
  %.not683 = icmp eq ptr %i.aai, %i.aak
  br i1 %.not683, label %bb.eu, label %bb.ev

bb.df:                                            ; preds = %.lr.ph766, %_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit548
  %indvars.iv860 = phi i64 [ 0, %.lr.ph766 ], [ %indvars.iv.next861, %_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit548 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.aal = load ptr, ptr %i.uu, align 8
  %i.aam = getelementptr inbounds nuw [16 x i8], ptr %i.aal, i64 %indvars.iv860 ; 2 uses
  %i.aan = load ptr, ptr %i.aam, align 8
  store ptr %i.aan, ptr %18, align 8
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aam, i64 8
  %i.aap = load ptr, ptr %i.aao, align 8          ; 3 uses
  store ptr %i.aap, ptr %i.vd, align 8
  %.not.i.i.i509 = icmp eq ptr %i.aap, null
  br i1 %.not.i.i.i509, label %_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit511, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 8 ; 3 uses
  %i.aar = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i510 = icmp eq i8 %i.aar, 0
  br i1 %.not.i.i.i.i510, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.aas = load i32, ptr %i.aaq, align 4
  %i.aat = add nsw i32 %i.aas, 1
  store i32 %i.aat, ptr %i.aaq, align 4
  br label %_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit511

bb.di:                                            ; preds = %bb.dg
  %i.aau = atomicrmw volatile add ptr %i.aaq, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit511

_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit511: ; preds = %bb.df, %bb.dh, %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  store i32 0, ptr %i.ve, align 8
  store ptr null, ptr %i.vf, align 8
  store ptr %i.ve, ptr %i.vg, align 8
  store ptr %i.ve, ptr %i.vh, align 8
  store i64 0, ptr %i.vi, align 8
  br label %bb.dk

bb.dj:                                            ; preds = %bb.ea
  %i.aav = load i64, ptr %i.vi, align 8
  %.not439 = icmp eq i64 %i.aav, 0
  %.pre898 = load ptr, ptr %i.vf, align 8         ; 3 uses
  br i1 %.not439, label %bb.em, label %bb.eb

bb.dk:                                            ; preds = %_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit511, %bb.ea
  %indvars.iv857 = phi i64 [ 0, %_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit511 ], [ %indvars.iv.next858, %bb.ea ] ; 5 uses
  %i.aaw = load ptr, ptr %18, align 8
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 1432
  %i.aay = getelementptr inbounds nuw [16 x i8], ptr %i.aax, i64 %indvars.iv857
  %i.aaz = load ptr, ptr %i.aay, align 8          ; 2 uses
  %.not691 = icmp eq ptr %i.aaz, null
  br i1 %.not691, label %bb.ea, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 56 ; 4 uses
  %i.abb = load i8, ptr %i.aba, align 8
  %.not442 = icmp eq i8 %i.abb, 0
  br i1 %.not442, label %bb.ea, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  store ptr %i.vj, ptr %20, align 8
  %i.abc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aba) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i64 %i.abc, ptr %i.d, align 8
  %i.abd = icmp ugt i64 %i.abc, 15
  br i1 %i.abd, label %.noexc.i513, label %._crit_edge.i.i512

.noexc.i513:                                      ; preds = %bb.dm
  %i.abe = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc514 unwind label %bb.dr ; 2 uses

.noexc514:                                        ; preds = %.noexc.i513
  store ptr %i.abe, ptr %20, align 8
  %i.abf = load i64, ptr %i.d, align 8
  store i64 %i.abf, ptr %i.vj, align 8
  br label %._crit_edge.i.i512

._crit_edge.i.i512:                               ; preds = %.noexc514, %bb.dm
  %i.abg = phi ptr [ %i.abe, %.noexc514 ], [ %i.vj, %bb.dm ] ; 2 uses
  switch i64 %i.abc, label %bb.do [
    i64 1, label %bb.dn
    i64 0, label %bb.dp
  ]

bb.dn:                                            ; preds = %._crit_edge.i.i512
  %i.abh = load i8, ptr %i.aba, align 8
  store i8 %i.abh, ptr %i.abg, align 1
  br label %bb.dp

bb.do:                                            ; preds = %._crit_edge.i.i512
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abg, ptr nonnull align 1 %i.aba, i64 %i.abc, i1 false)
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn, %._crit_edge.i.i512
  %i.abi = load i64, ptr %i.d, align 8            ; 2 uses
  store i64 %i.abi, ptr %i.vk, align 8
  %i.abj = load ptr, ptr %20, align 8
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.abi
  store i8 0, ptr %i.abk, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.abl = invoke noundef ptr @_ZN6Assimp7Blender22getCustomDataLayerDataERKNS0_10CustomDataENS0_14CustomDataTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224) %i.vl, i32 noundef 16, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.dq unwind label %bb.ds     ; 2 uses

bb.dq:                                            ; preds = %bb.dp
  %i.abm = load ptr, ptr %20, align 8             ; 2 uses
  %i.abn = icmp eq ptr %i.abm, %i.vj
  br i1 %i.abn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i516

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i516: ; preds = %bb.dq
  %i.abo = load i64, ptr %i.vj, align 8
  %i.abp = add i64 %i.abo, 1
  call void @_ZdlPvm(ptr noundef %i.abm, i64 noundef %i.abp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i516
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  %.not445 = icmp eq ptr %i.abl, null
  br i1 %.not445, label %bb.ea, label %bb.dt

bb.dr:                                            ; preds = %.noexc.i513
  %i.abq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521

bb.ds:                                            ; preds = %bb.dp
  %i.abr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abs = load ptr, ptr %20, align 8             ; 2 uses
  %i.abt = icmp eq ptr %i.abs, %i.vj
  br i1 %i.abt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519: ; preds = %bb.ds
  %i.abu = load i64, ptr %i.vj, align 8
  %i.abv = add i64 %i.abu, 1
  call void @_ZdlPvm(ptr noundef %i.abs, i64 noundef %i.abv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519, %bb.dr
  %.pn443 = phi { ptr, i32 } [ %i.abq, %bb.dr ], [ %i.abr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519 ], [ %i.abr, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %.body595

bb.dt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518
  %i.abw = call ptr @__dynamic_cast(ptr nonnull %i.abl, ptr nonnull @_ZTIN6Assimp7Blender8ElemBaseE, ptr nonnull @_ZTIN6Assimp7Blender7MLoopUVE, i64 0) #25
  %i.abx = load ptr, ptr %i.vf, align 8           ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.abx, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.dt, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.abx, %bb.dt ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ve, %bb.dt ] ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.abz = load i32, ptr %i.aby, align 4
  %i.aca = zext i32 %i.abz to i64
  %i.acb = icmp samesign ugt i64 %indvars.iv857, %i.aca ; 3 uses
  %.19.i.i.i.i = select i1 %i.acb, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.acb, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i522 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i522, label %_ZNSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !118

_ZNSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.acc = icmp eq ptr %.19.i.i.i.i, %i.ve
  br i1 %i.acc, label %.critedge.i, label %bb.du

bb.du:                                            ; preds = %_ZNSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.acb, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.acd = load i32, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.ace = zext i32 %i.acd to i64
  %i.acf = icmp samesign ult i64 %indvars.iv857, %i.ace
  br i1 %i.acf, label %.critedge.i, label %bb.ea

.critedge.i:                                      ; preds = %bb.du, %_ZNSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i, %bb.dt
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.du ], [ %.19.i.i.i.i, %_ZNSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i ], [ %i.ve, %bb.dt ]
  %i.acg = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26
          to label %.noexc594 unwind label %bb.dz ; 5 uses

.noexc594:                                        ; preds = %.critedge.i
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 32 ; 3 uses
  %i.aci = trunc nuw nsw i64 %indvars.iv857 to i32
  store i32 %i.aci, ptr %i.ach, align 8
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acg, i64 40
  store ptr %i.abw, ptr %i.acj, align 8
  %i.ack = invoke { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 4 dereferenceable(4) %i.ach)
          to label %bb.dv unwind label %_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.dv:                                            ; preds = %.noexc594
  %i.acl = extractvalue { ptr, ptr } %i.ack, 1    ; 4 uses
  %.not.i592 = icmp eq ptr %i.acl, null
  br i1 %.not.i592, label %bb.dy, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.acm = extractvalue { ptr, ptr } %i.ack, 0
  %.not.i.i.i593 = icmp ne ptr %i.acm, null
  %i.acn = icmp eq ptr %i.acl, %i.ve
  %or.cond.i.i.i = or i1 %.not.i.i.i593, %i.acn
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acl, i64 32
  %i.acp = load i32, ptr %i.ach, align 8
  %i.acq = load i32, ptr %i.aco, align 4
  %i.acr = icmp ult i32 %i.acp, %i.acq
  br label %.thread.i

.thread.i:                                        ; preds = %bb.dx, %bb.dw
  %i.acs = phi i1 [ %i.acr, %bb.dx ], [ true, %bb.dw ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.acs, ptr noundef nonnull %i.acg, ptr noundef nonnull %i.acl, ptr noundef nonnull align 8 dereferenceable(32) %i.ve) #25
  %i.act = load i64, ptr %i.vi, align 8
  %i.acu = add i64 %i.act, 1
  store i64 %i.acu, ptr %i.vi, align 8
  br label %bb.ea

_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.noexc594
  %i.acv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.acg, i64 noundef 48) #27
  br label %.body595

bb.dy:                                            ; preds = %bb.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.acg, i64 noundef 48) #27
  br label %bb.ea

bb.dz:                                            ; preds = %.critedge.i
  %i.acw = landingpad { ptr, i32 }
          cleanup
  br label %.body595

bb.ea:                                            ; preds = %.thread.i, %bb.dy, %bb.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518, %bb.dk, %bb.dl
  %indvars.iv.next858 = add nuw nsw i64 %indvars.iv857, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next858, 18
  br i1 %exitcond.not, label %bb.dj, label %bb.dk, !llvm.loop !119

bb.eb:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.acx = trunc nuw i64 %indvars.iv860 to i32
  store i32 %i.acx, ptr %21, align 8, !alias.scope !120
  store i32 0, ptr %i.vm, align 8, !alias.scope !120
  store ptr null, ptr %i.vn, align 8, !alias.scope !120
  store ptr %i.vm, ptr %i.vo, align 8, !alias.scope !120
  store ptr %i.vm, ptr %i.vp, align 8, !alias.scope !120
  store i64 0, ptr %i.vq, align 8, !alias.scope !120
  %.not.i.i.i.i526 = icmp eq ptr %.pre898, null
  br i1 %.not.i.i.i.i526, label %_ZSt9make_pairIRjRSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS6_EEEES9_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSF_INSG_IT0_E4typeEE6__typeEEOSH_OSM_.exit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !120
  store ptr %i.vr, ptr %7, align 8, !noalias !120
  %i.acy = invoke noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE7_M_copyILb0ENSD_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS7_ESI_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.vr, ptr noundef nonnull %.pre898, ptr noundef nonnull %i.vm, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc.i.i.i.i unwind label %bb.ej ; 4 uses

.noexc.i.i.i.i:                                   ; preds = %bb.ec, %.noexc.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.ada, %.noexc.i.i.i.i ], [ %i.acy, %bb.ec ] ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i, i64 16
  %i.ada = load ptr, ptr %i.acz, align 8          ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ada, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i, label %.noexc.i.i.i.i, !llvm.loop !123

_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i
  store ptr %.0.i.i.i.i.i.i.i.i, ptr %i.vo, align 8, !alias.scope !120
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ed, %_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i.i = phi ptr [ %i.acy, %_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i ], [ %i.adc, %bb.ed ] ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i, i64 24
  %i.adc = load ptr, ptr %i.adb, align 8          ; 2 uses
  %.not.i.i8.i.i.i.i.i.i = icmp eq ptr %i.adc, null
  br i1 %.not.i.i8.i.i.i.i.i.i, label %bb.ee, label %bb.ed, !llvm.loop !124

bb.ee:                                            ; preds = %bb.ed
  store ptr %.0.i.i7.i.i.i.i.i.i, ptr %i.vp, align 8, !alias.scope !120
  %i.add = load i64, ptr %i.vi, align 8, !noalias !120
  store i64 %i.add, ptr %i.vq, align 8, !alias.scope !120
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !120
  store ptr %i.acy, ptr %i.vn, align 8, !alias.scope !120
  br label %_ZSt9make_pairIRjRSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS6_EEEES9_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSF_INSG_IT0_E4typeEE6__typeEEOSH_OSM_.exit

_ZSt9make_pairIRjRSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS6_EEEES9_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSF_INSG_IT0_E4typeEE6__typeEEOSH_OSM_.exit: ; preds = %bb.ee, %bb.eb
  %i.ade = phi ptr [ %i.acy, %bb.ee ], [ null, %bb.eb ]
  %i.adf = load ptr, ptr %i.uq, align 8           ; 2 uses
  %.not10.i.i.i.i528 = icmp eq ptr %i.adf, null
  br i1 %.not10.i.i.i.i528, label %.critedge.i541, label %.lr.ph.i.i.i.i529

.lr.ph.i.i.i.i529:                                ; preds = %_ZSt9make_pairIRjRSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS6_EEEES9_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSF_INSG_IT0_E4typeEE6__typeEEOSH_OSM_.exit
  %i.adg = load i32, ptr %21, align 8             ; 2 uses
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ef, %.lr.ph.i.i.i.i529
  %.012.i.i.i.i530 = phi ptr [ %i.adf, %.lr.ph.i.i.i.i529 ], [ %.1.i.i.i.i535, %bb.ef ] ; 4 uses
  %.0811.i.i.i.i531 = phi ptr [ %i.up, %.lr.ph.i.i.i.i529 ], [ %.19.i.i.i.i532, %bb.ef ] ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i530, i64 32
  %i.adi = load i32, ptr %i.adh, align 4
  %i.adj = icmp ult i32 %i.adi, %i.adg            ; 3 uses
  %.19.i.i.i.i532 = select i1 %i.adj, ptr %.0811.i.i.i.i531, ptr %.012.i.i.i.i530 ; 4 uses
  %.1.in.v.i.i.i.i533 = select i1 %i.adj, i64 24, i64 16
  %.1.in.i.i.i.i534 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i530, i64 %.1.in.v.i.i.i.i533
  %.1.i.i.i.i535 = load ptr, ptr %.1.in.i.i.i.i534, align 8 ; 2 uses
  %.not.i.i.i.i536 = icmp eq ptr %.1.i.i.i.i535, null
  br i1 %.not.i.i.i.i536, label %_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEE11lower_boundERS8_.exit.i, label %bb.ef, !llvm.loop !125

_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEE11lower_boundERS8_.exit.i: ; preds = %bb.ef
  %i.adk = icmp eq ptr %.19.i.i.i.i532, %i.up
  br i1 %i.adk, label %.critedge.i541, label %bb.eg

bb.eg:                                            ; preds = %_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEE11lower_boundERS8_.exit.i
  %.19.i.i.i.i532.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.adj, ptr %.0811.i.i.i.i531, ptr %.012.i.i.i.i530
  %.19.i.i.i.i532.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i532.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.adl = load i32, ptr %.19.i.i.i.i532.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.adm = icmp ult i32 %i.adg, %i.adl
  br i1 %i.adm, label %.critedge.i541, label %bb.eh

.critedge.i541:                                   ; preds = %bb.eg, %_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEE11lower_boundERS8_.exit.i, %_ZSt9make_pairIRjRSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS6_EEEES9_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSF_INSG_IT0_E4typeEE6__typeEEOSH_OSM_.exit
  %.08.lcssa.i.i.i14.i542 = phi ptr [ %.19.i.i.i.i532, %bb.eg ], [ %.19.i.i.i.i532, %_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEE11lower_boundERS8_.exit.i ], [ %i.up, %_ZSt9make_pairIRjRSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS6_EEEES9_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSF_INSG_IT0_E4typeEE6__typeEEOSH_OSM_.exit ]
  %i.adn = invoke ptr @_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE22_M_emplace_hint_uniqueIJS0_IjSC_EEEESt17_Rb_tree_iteratorISD_ESt23_Rb_tree_const_iteratorISD_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr %.08.lcssa.i.i.i14.i542, ptr noundef nonnull align 8 dereferenceable(56) %21)
          to label %.critedge.i541._crit_edge unwind label %bb.ek ; 0 uses

.critedge.i541._crit_edge:                        ; preds = %.critedge.i541
  %.pre = load ptr, ptr %i.vn, align 8
  br label %bb.eh

bb.eh:                                            ; preds = %.critedge.i541._crit_edge, %bb.eg
  %i.ado = phi ptr [ %.pre, %.critedge.i541._crit_edge ], [ %i.ade, %bb.eg ]
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.vr, ptr noundef %i.ado)
          to label %_ZNSt4pairIjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS_IKjS5_EEEED2Ev.exit unwind label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.adp = landingpad { ptr, i32 }
          catch ptr null
  %i.adq = extractvalue { ptr, i32 } %i.adp, 0
  call void @__clang_call_terminate(ptr %i.adq) #29
  unreachable

_ZNSt4pairIjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS_IKjS5_EEEED2Ev.exit: ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  %.pre897 = load ptr, ptr %i.vf, align 8
  br label %bb.em

bb.ej:                                            ; preds = %bb.ec
  %i.adr = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.ek:                                            ; preds = %.critedge.i541
  %i.ads = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS_IKjS5_EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %21) #25
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %.pn440 = phi { ptr, i32 } [ %i.ads, %bb.ek ], [ %i.adr, %bb.ej ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %.body595

bb.em:                                            ; preds = %_ZNSt4pairIjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS_IKjS5_EEEED2Ev.exit, %bb.dj
  %i.adt = phi ptr [ %.pre897, %_ZNSt4pairIjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS_IKjS5_EEEED2Ev.exit ], [ %.pre898, %bb.dj ]
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef %i.adt)
          to label %_ZNSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEED2Ev.exit unwind label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.adu = landingpad { ptr, i32 }
          catch ptr null
  %i.adv = extractvalue { ptr, i32 } %i.adu, 0
  call void @__clang_call_terminate(ptr %i.adv) #29
  unreachable

_ZNSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEED2Ev.exit: ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  %i.adw = load ptr, ptr %i.vd, align 8           ; 8 uses
  %.not.i.i544 = icmp eq ptr %i.adw, null
  br i1 %.not.i.i544, label %_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit548, label %bb.eo

bb.eo:                                            ; preds = %_ZNSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEED2Ev.exit
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 8 ; 4 uses
  %i.ady = load atomic i64, ptr %i.adx acquire, align 8 ; 2 uses
  %i.adz = icmp eq i64 %i.ady, 4294967297
  %i.aea = trunc i64 %i.ady to i32                ; 2 uses
  br i1 %i.adz, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  store i32 0, ptr %i.adx, align 8
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adw, i64 12
  store i32 0, ptr %i.aeb, align 4
  %i.aec = load ptr, ptr %i.adw, align 8
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 16
  %i.aee = load ptr, ptr %i.aed, align 8
  call void %i.aee(ptr noundef nonnull align 8 dereferenceable(16) %i.adw) #25, !inline_history !92
  %i.aef = load ptr, ptr %i.adw, align 8
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 24
  %i.aeh = load ptr, ptr %i.aeg, align 8
  call void %i.aeh(ptr noundef nonnull align 8 dereferenceable(16) %i.adw) #25, !inline_history !92
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit548

bb.eq:                                            ; preds = %bb.eo
  %i.aei = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i545 = icmp eq i8 %i.aei, 0
  br i1 %.not.i.i.i545, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.aej = add nsw i32 %i.aea, -1
  store i32 %i.aej, ptr %i.adx, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i546

bb.es:                                            ; preds = %bb.eq
  %i.aek = atomicrmw volatile add ptr %i.adx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i546

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i546: ; preds = %bb.es, %bb.er
  %.0.i.i.i.i547 = phi i32 [ %i.aea, %bb.er ], [ %i.aek, %bb.es ]
  %i.ael = icmp eq i32 %.0.i.i.i.i547, 1
  br i1 %i.ael, label %bb.et, label %_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit548, !prof !5

bb.et:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i546
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.adw) #25
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit548

_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit548: ; preds = %_ZNSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEED2Ev.exit, %bb.ep, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i546, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  %indvars.iv.next861 = add nuw nsw i64 %indvars.iv860, 1 ; 2 uses
  %exitcond863.not = icmp eq i64 %indvars.iv.next861, %wide.trip.count
  br i1 %exitcond863.not, label %._crit_edge767, label %bb.df, !llvm.loop !126

.body595:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521, %_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE10_Auto_nodeD2Ev.exit.i, %bb.dz, %bb.el
  %.pn446.pn = phi { ptr, i32 } [ %.pn440, %bb.el ], [ %.pn443, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521 ], [ %i.acw, %bb.dz ], [ %i.acv, %_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE10_Auto_nodeD2Ev.exit.i ]
  call void @_ZNSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  call void @_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %.body550

bb.eu:                                            ; preds = %._crit_edge767
  %i.aem = getelementptr inbounds nuw i8, ptr %3, i64 1240
  %i.aen = load ptr, ptr %i.aem, align 8
  %i.aeo = getelementptr inbounds nuw i8, ptr %3, i64 1248
  %i.aep = load ptr, ptr %i.aeo, align 8
  %.not684 = icmp eq ptr %i.aen, %i.aep
  br i1 %.not684, label %.loopexit704, label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %._crit_edge767
  %i.aeq = load i32, ptr %i.y, align 8            ; 2 uses
  %i.aer = ptrtoint ptr %i.aak to i64
  %i.aes = ptrtoint ptr %i.aai to i64
  %i.aet = sub i64 %i.aer, %i.aes
  %i.aeu = sdiv exact i64 %i.aet, 56
  %i.aev = trunc i64 %i.aeu to i32
  %i.aew = icmp sgt i32 %i.aeq, %i.aev
  br i1 %i.aew, label %bb.ew, label %bb.ez

bb.ew:                                            ; preds = %bb.ev
  %i.aex = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store ptr @.str, ptr %i.c, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJPKcRA71_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aex, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(71) @.str.87)
          to label %.invoke984 unwind label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.aey = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @__cxa_free_exception(ptr nonnull %i.aex) #25
  br label %.body550

bb.ey:                                            ; preds = %.invoke984
  %i.aez = landingpad { ptr, i32 }
          cleanup
  br label %.body550

bb.ez:                                            ; preds = %bb.ev
  %i.afa = load ptr, ptr %5, align 8
  %i.afb = getelementptr inbounds i8, ptr %i.afa, i64 %i.da ; 2 uses
  %i.afc = load ptr, ptr %i.cv, align 8
  %.not685770 = icmp eq ptr %i.afb, %i.afc
  br i1 %.not685770, label %.preheader705, label %.lr.ph774

.preheader705.loopexit:                           ; preds = %.loopexit709
  %.pre899 = load i32, ptr %i.y, align 8
  br label %.preheader705

.preheader705:                                    ; preds = %.preheader705.loopexit, %bb.ez
  %i.afd = phi i32 [ %.pre899, %.preheader705.loopexit ], [ %i.aeq, %bb.ez ]
  %i.afe = icmp sgt i32 %i.afd, 0
  br i1 %i.afe, label %.lr.ph781, label %.preheader703

.lr.ph774:                                        ; preds = %bb.ez, %.loopexit709
  %.sroa.0628.0771 = phi ptr [ %i.ahc, %.loopexit709 ], [ %i.afb, %bb.ez ] ; 7 uses
  %i.aff = load ptr, ptr %.sroa.0628.0771, align 8 ; 2 uses
  %i.afg = load ptr, ptr %i.uq, align 8           ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.afg, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEE4findERS8_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph774
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aff, i64 232
  %i.afi = load i32, ptr %i.afh, align 4          ; 2 uses
  br label %bb.fa

bb.fa:                                            ; preds = %bb.fa, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.afg, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.fa ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.up, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.fa ] ; 2 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.afk = load i32, ptr %i.afj, align 4
  %i.afl = icmp ult i32 %i.afk, %i.afi            ; 3 uses
  %.19.i.i.i = select i1 %i.afl, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.afl, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i552 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i552, label %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %bb.fa, !llvm.loop !125

_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %bb.fa
  %i.afm = icmp eq ptr %.19.i.i.i, %i.up
  br i1 %i.afm, label %_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEE4findERS8_.exit.thread, label %_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEE4findERS8_.exit

_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEE4findERS8_.exit: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.afl, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.afn = load i32, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.afo = icmp ult i32 %i.afi, %i.afn
  br i1 %i.afo, label %_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEE4findERS8_.exit.thread, label %.preheader708

.preheader708:                                    ; preds = %_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEE4findERS8_.exit
  %i.afp = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 80 ; 2 uses
  %i.afq = load i64, ptr %i.afp, align 8
  %.not825 = icmp eq i64 %i.afq, 0
  br i1 %.not825, label %.loopexit709, label %.lr.ph769

_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEE4findERS8_.exit.thread: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %.lr.ph774, %_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEE4findERS8_.exit
  %i.afr = getelementptr inbounds nuw i8, ptr %i.aff, i64 4
  %i.afs = load i32, ptr %i.afr, align 4          ; 2 uses
  %i.aft = zext i32 %i.afs to i64
  %i.afu = mul nuw nsw i64 %i.aft, 12             ; 2 uses
  %i.afv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.afu) #26
          to label %bb.fb unwind label %bb.fc     ; 2 uses

bb.fb:                                            ; preds = %_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEE4findERS8_.exit.thread
  %i.afw = icmp eq i32 %i.afs, 0
  br i1 %i.afw, label %.loopexit707, label %.loopexit707.loopexit

.loopexit707.loopexit:                            ; preds = %bb.fb
  %i.afx = add nsw i64 %i.afu, -12                ; 2 uses
  %i.afy = urem i64 %i.afx, 12
  %i.afz = sub nuw nsw i64 %i.afx, %i.afy
  %i.aga = add nsw i64 %i.afz, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.afv, i8 0, i64 %i.aga, i1 false)
  br label %.loopexit707

.loopexit707:                                     ; preds = %.loopexit707.loopexit, %bb.fb
  %i.agb = load ptr, ptr %.sroa.0628.0771, align 8
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 112
  store ptr %i.afv, ptr %i.agc, align 8
  br label %.loopexit709

bb.fc:                                            ; preds = %_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEE4findERS8_.exit.thread
  %i.agd = landingpad { ptr, i32 }
          cleanup
  br label %.body550

.lr.ph769:                                        ; preds = %.preheader708, %.loopexit706
  %i.age = phi i64 [ %i.agu, %.loopexit706 ], [ 0, %.preheader708 ]
  %.0412768 = phi i32 [ %i.agt, %.loopexit706 ], [ 0, %.preheader708 ]
  %i.agf = load ptr, ptr %.sroa.0628.0771, align 8
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 4
  %i.agh = load i32, ptr %i.agg, align 4          ; 2 uses
  %i.agi = zext i32 %i.agh to i64
  %i.agj = mul nuw nsw i64 %i.agi, 12             ; 2 uses
  %i.agk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.agj) #26
          to label %bb.fd unwind label %bb.fe     ; 2 uses

bb.fd:                                            ; preds = %.lr.ph769
  %i.agl = icmp eq i32 %i.agh, 0
  br i1 %i.agl, label %.loopexit706, label %.loopexit706.loopexit

.loopexit706.loopexit:                            ; preds = %bb.fd
  %i.agm = add nsw i64 %i.agj, -12                ; 2 uses
  %i.agn = urem i64 %i.agm, 12
  %i.ago = sub nuw nsw i64 %i.agm, %i.agn
  %i.agp = add nsw i64 %i.ago, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.agk, i8 0, i64 %i.agp, i1 false)
  br label %.loopexit706

.loopexit706:                                     ; preds = %.loopexit706.loopexit, %bb.fd
  %i.agq = load ptr, ptr %.sroa.0628.0771, align 8
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 112
  %i.ags = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %i.age
  store ptr %i.agk, ptr %i.ags, align 8
  %i.agt = add i32 %.0412768, 1                   ; 2 uses
  %i.agu = zext i32 %i.agt to i64                 ; 2 uses
  %i.agv = load i64, ptr %i.afp, align 8
  %i.agw = icmp ugt i64 %i.agv, %i.agu
  br i1 %i.agw, label %.lr.ph769, label %.loopexit709, !llvm.loop !127

bb.fe:                                            ; preds = %.lr.ph769
  %i.agx = landingpad { ptr, i32 }
          cleanup
  br label %.body550

.loopexit709:                                     ; preds = %.loopexit706, %.preheader708, %.loopexit707
  %i.agy = load ptr, ptr %.sroa.0628.0771, align 8
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 4
  store i32 0, ptr %i.agz, align 4
  %i.aha = load ptr, ptr %.sroa.0628.0771, align 8
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 8
end_hunk_7
begin_hunk_8_@_ZN6Assimp15BlenderImporter11ConvertMeshERKNS_7Blender5SceneEPKNS1_6ObjectEPKNS1_4MeshERNS1_14ConversionDataERNS1_9TempArrayISt6vector6aiMeshEE:bb.a
bb.fg:                                            ; preds = %.lr.ph781
  %i.aim = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #25
  br label %.body550

bb.fh:                                            ; preds = %.lr.ph778, %bb.fh
  %indvars.iv864 = phi i64 [ 0, %.lr.ph778 ], [ %indvars.iv.next865, %bb.fh ] ; 2 uses
  %.0416776 = phi ptr [ %i.aih, %.lr.ph778 ], [ %i.ais, %bb.fh ] ; 3 uses
  %i.ain = getelementptr inbounds nuw [8 x i8], ptr %i.aii, i64 %indvars.iv864 ; 2 uses
  %i.aio = load float, ptr %i.ain, align 8
  store float %i.aio, ptr %.0416776, align 4
  %i.aip = getelementptr inbounds nuw i8, ptr %i.ain, i64 4
  %i.aiq = load float, ptr %i.aip, align 4
  %i.air = getelementptr inbounds nuw i8, ptr %.0416776, i64 4
  store float %i.aiq, ptr %i.air, align 4
  %indvars.iv.next865 = add nuw nsw i64 %indvars.iv864, 1 ; 2 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %.0416776, i64 12
  %i.ait = load i32, ptr %i.aib, align 4
  %i.aiu = add i32 %i.ait, 1
  store i32 %i.aiu, ptr %i.aib, align 4
  %i.aiv = load i32, ptr %i.aia, align 8
  %i.aiw = zext i32 %i.aiv to i64
  %i.aix = icmp samesign ult i64 %indvars.iv.next865, %i.aiw
  br i1 %i.aix, label %bb.fh, label %._crit_edge779, !llvm.loop !130

bb.fi:                                            ; preds = %.lr.ph794, %.loopexit700
  %indvars.iv870 = phi i64 [ 0, %.lr.ph794 ], [ %indvars.iv.next871, %.loopexit700 ] ; 2 uses
  %i.aiy = load ptr, ptr %i.ahg, align 8
  %i.aiz = getelementptr inbounds nuw [32 x i8], ptr %i.aiy, i64 %indvars.iv870 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #25
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 24 ; 2 uses
  %i.ajb = load i16, ptr %i.aja, align 8
  %i.ajc = sext i16 %i.ajb to i64
  store i64 %i.ajc, ptr %i.u, align 8
  %i.ajd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %bb.fj unwind label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.aje = load i64, ptr %i.ajd, align 8
  %i.ajf = load ptr, ptr %5, align 8
  %i.ajg = getelementptr inbounds nuw [8 x i8], ptr %i.ajf, i64 %i.aje
  %i.ajh = load ptr, ptr %i.ajg, align 8          ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #25
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 208
  %i.ajj = load ptr, ptr %i.aji, align 8
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajh, i64 8 ; 2 uses
  %i.ajl = load i32, ptr %i.ajk, align 8          ; 2 uses
  %i.ajm = add i32 %i.ajl, 1
  store i32 %i.ajm, ptr %i.ajk, align 8
  %i.ajn = zext i32 %i.ajl to i64
  %i.ajo = getelementptr inbounds nuw [16 x i8], ptr %i.ajj, i64 %i.ajn ; 4 uses
  %i.ajp = load i16, ptr %i.aja, align 8
  %i.ajq = sext i16 %i.ajp to i32                 ; 2 uses
  %i.ajr = load ptr, ptr %i.uq, align 8           ; 2 uses
  %.not10.i.i.i553 = icmp eq ptr %i.ajr, null
  br i1 %.not10.i.i.i553, label %_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEE4findERS8_.exit565.thread, label %.lr.ph.i.i.i554

.lr.ph.i.i.i554:                                  ; preds = %bb.fj, %.lr.ph.i.i.i554
  %.012.i.i.i555 = phi ptr [ %.1.i.i.i560, %.lr.ph.i.i.i554 ], [ %i.ajr, %bb.fj ] ; 4 uses
  %.0811.i.i.i556 = phi ptr [ %.19.i.i.i557, %.lr.ph.i.i.i554 ], [ %i.up, %bb.fj ] ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %.012.i.i.i555, i64 32
  %i.ajt = load i32, ptr %i.ajs, align 4
  %i.aju = icmp ult i32 %i.ajt, %i.ajq            ; 3 uses
  %.19.i.i.i557 = select i1 %i.aju, ptr %.0811.i.i.i556, ptr %.012.i.i.i555 ; 6 uses
  %.1.in.v.i.i.i558 = select i1 %i.aju, i64 24, i64 16
  %.1.in.i.i.i559 = getelementptr inbounds nuw i8, ptr %.012.i.i.i555, i64 %.1.in.v.i.i.i558
  %.1.i.i.i560 = load ptr, ptr %.1.in.i.i.i559, align 8 ; 2 uses
  %.not.i.i.i561 = icmp eq ptr %.1.i.i.i560, null
  br i1 %.not.i.i.i561, label %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS1_.exit.i.i562, label %.lr.ph.i.i.i554, !llvm.loop !125

_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS1_.exit.i.i562: ; preds = %.lr.ph.i.i.i554
  %i.ajv = icmp eq ptr %.19.i.i.i557, %i.up
  br i1 %i.ajv, label %_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEE4findERS8_.exit565.thread, label %_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEE4findERS8_.exit565

_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEE4findERS8_.exit565: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS1_.exit.i.i562
  %.19.i.i.i557.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.aju, ptr %.0811.i.i.i556, ptr %.012.i.i.i555
  %.19.i.i.i557.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i557.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ajw = load i32, ptr %.19.i.i.i557.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.ajx = icmp ugt i32 %i.ajw, %i.ajq
  br i1 %i.ajx, label %_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEE4findERS8_.exit565.thread, label %.preheader701

.preheader701:                                    ; preds = %_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEE4findERS8_.exit565
  %.19.i.i.i557.lcssa.sroa.gep = getelementptr inbounds nuw i8, ptr %.19.i.i.i557, i64 40
  %.19.i.i.i557.lcssa.sroa.gep889 = getelementptr inbounds nuw i8, ptr %.19.i.i.i557, i64 80 ; 5 uses
  %i.ajy = load i64, ptr %.19.i.i.i557.lcssa.sroa.gep889, align 8
  %.not827 = icmp eq i64 %i.ajy, 0
  br i1 %.not827, label %.loopexit700, label %.lr.ph789

.lr.ph789:                                        ; preds = %.preheader701
  %.19.i.i.i557.lcssa.sroa.gep892 = getelementptr inbounds nuw i8, ptr %.19.i.i.i557, i64 56
  %.19.i.i.i557.lcssa.sroa.gep895 = getelementptr inbounds nuw i8, ptr %.19.i.i.i557, i64 48 ; 5 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajh, i64 112
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajh, i64 4 ; 3 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aiz, i64 16
  br label %bb.fm

_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEE4findERS8_.exit565.thread: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS1_.exit.i.i562, %bb.fj, %_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEE4findERS8_.exit565
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajh, i64 4 ; 3 uses
  %i.akd = load i32, ptr %i.ajo, align 8
  %.not829 = icmp eq i32 %i.akd, 0
  br i1 %.not829, label %.loopexit700, label %.lr.ph792

.lr.ph792:                                        ; preds = %_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEE4findERS8_.exit565.thread
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajh, i64 112
  %i.akf = load ptr, ptr %i.ake, align 8
  %i.akg = load i32, ptr %i.akc, align 4
  %i.akh = zext i32 %i.akg to i64
  %i.aki = getelementptr inbounds nuw [12 x i8], ptr %i.akf, i64 %i.akh
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aiz, i64 16
  br label %bb.fl

bb.fk:                                            ; preds = %bb.fi
  %i.akk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #25
  br label %.body550

bb.fl:                                            ; preds = %.lr.ph792, %bb.fl
  %.0413791 = phi i32 [ 0, %.lr.ph792 ], [ %i.akv, %bb.fl ] ; 2 uses
  %.0414790 = phi ptr [ %i.aki, %.lr.ph792 ], [ %i.akw, %bb.fl ] ; 3 uses
  %i.akl = load i32, ptr %i.akj, align 8
  %i.akm = add i32 %i.akl, %.0413791
  %i.akn = zext i32 %i.akm to i64
  %i.ako = load ptr, ptr %i.ahh, align 8
  %i.akp = getelementptr inbounds nuw [32 x i8], ptr %i.ako, i64 %i.akn ; 2 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 16
  %i.akr = load float, ptr %i.akq, align 8
  store float %i.akr, ptr %.0414790, align 4
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akp, i64 20
  %i.akt = load float, ptr %i.aks, align 4
  %i.aku = getelementptr inbounds nuw i8, ptr %.0414790, i64 4
  store float %i.akt, ptr %i.aku, align 4
  %i.akv = add nuw i32 %.0413791, 1               ; 2 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %.0414790, i64 12
  %i.akx = load i32, ptr %i.akc, align 4
  %i.aky = add i32 %i.akx, 1
  store i32 %i.aky, ptr %i.akc, align 4
  %i.akz = load i32, ptr %i.ajo, align 8
  %i.ala = icmp ult i32 %i.akv, %i.akz
  br i1 %i.ala, label %bb.fl, label %.loopexit700, !llvm.loop !131

bb.fm:                                            ; preds = %.lr.ph789, %bb.fv
  %i.alb = phi i64 [ 0, %.lr.ph789 ], [ %i.anb, %bb.fv ] ; 2 uses
  %storemerge433788 = phi i32 [ 0, %.lr.ph789 ], [ %i.ana, %bb.fv ] ; 4 uses
  %i.alc = load ptr, ptr %.19.i.i.i557.lcssa.sroa.gep892, align 8 ; 2 uses
  %.not10.i.i.i.i566 = icmp eq ptr %i.alc, null
  br i1 %.not10.i.i.i.i566, label %.critedge.i576, label %.lr.ph.i.i.i.i567

.lr.ph.i.i.i.i567:                                ; preds = %bb.fm, %.lr.ph.i.i.i.i567
  %.012.i.i.i.i568 = phi ptr [ %.1.i.i.i.i573, %.lr.ph.i.i.i.i567 ], [ %i.alc, %bb.fm ] ; 4 uses
  %.0811.i.i.i.i569 = phi ptr [ %.19.i.i.i.i570, %.lr.ph.i.i.i.i567 ], [ %.19.i.i.i557.lcssa.sroa.gep895, %bb.fm ] ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i568, i64 32
  %i.ale = load i32, ptr %i.ald, align 4
  %i.alf = icmp ult i32 %i.ale, %storemerge433788 ; 3 uses
  %.19.i.i.i.i570 = select i1 %i.alf, ptr %.0811.i.i.i.i569, ptr %.012.i.i.i.i568 ; 5 uses
  %.1.in.v.i.i.i.i571 = select i1 %i.alf, i64 24, i64 16
  %.1.in.i.i.i.i572 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i568, i64 %.1.in.v.i.i.i.i571
  %.1.i.i.i.i573 = load ptr, ptr %.1.in.i.i.i.i572, align 8 ; 2 uses
  %.not.i.i.i.i574 = icmp eq ptr %.1.i.i.i.i573, null
  br i1 %.not.i.i.i.i574, label %_ZNSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i575, label %.lr.ph.i.i.i.i567, !llvm.loop !118

_ZNSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i575: ; preds = %.lr.ph.i.i.i.i567
  %i.alg = icmp eq ptr %.19.i.i.i.i570, %.19.i.i.i557.lcssa.sroa.gep895
  br i1 %i.alg, label %.critedge.i576, label %bb.fn

bb.fn:                                            ; preds = %_ZNSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i575
  %.19.i.i.i.i570.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.alf, ptr %.0811.i.i.i.i569, ptr %.012.i.i.i.i568
  %.19.i.i.i.i570.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i570.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.alh = load i32, ptr %.19.i.i.i.i570.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.ali = icmp ult i32 %storemerge433788, %i.alh
  br i1 %i.ali, label %.critedge.i576, label %bb.fs

.critedge.i576:                                   ; preds = %bb.fn, %_ZNSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i575, %bb.fm
  %.08.lcssa.i.i.i14.i577 = phi ptr [ %.19.i.i.i.i570, %bb.fn ], [ %.19.i.i.i.i570, %_ZNSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i575 ], [ %.19.i.i.i557.lcssa.sroa.gep895, %bb.fm ]
  %i.alj = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26
          to label %.noexc579 unwind label %bb.ft ; 6 uses

.noexc579:                                        ; preds = %.critedge.i576
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 32 ; 3 uses
  store i32 %storemerge433788, ptr %i.alk, align 8
  %i.all = getelementptr inbounds nuw i8, ptr %i.alj, i64 40
  store ptr null, ptr %i.all, align 8
  %i.alm = invoke { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %.19.i.i.i557.lcssa.sroa.gep, ptr %.08.lcssa.i.i.i14.i577, ptr noundef nonnull align 4 dereferenceable(4) %i.alk)
          to label %bb.fo unwind label %_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE10_Auto_nodeD2Ev.exit.i.i ; 2 uses

bb.fo:                                            ; preds = %.noexc579
  %i.aln = extractvalue { ptr, ptr } %i.alm, 0    ; 2 uses
  %i.alo = extractvalue { ptr, ptr } %i.alm, 1    ; 4 uses
  %.not.i.i578 = icmp eq ptr %i.alo, null
  br i1 %.not.i.i578, label %bb.fr, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %.not.i.i.i4.i = icmp ne ptr %i.aln, null
  %i.alp = icmp eq ptr %i.alo, %.19.i.i.i557.lcssa.sroa.gep895
  %or.cond.i.i.i.i = select i1 %.not.i.i.i4.i, i1 true, i1 %i.alp
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alo, i64 32
  %i.alr = load i32, ptr %i.alk, align 8
  %i.als = load i32, ptr %i.alq, align 4
  %i.alt = icmp ult i32 %i.alr, %i.als
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.fq, %bb.fp
  %i.alu = phi i1 [ %i.alt, %bb.fq ], [ true, %bb.fp ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.alu, ptr noundef nonnull %i.alj, ptr noundef nonnull %i.alo, ptr noundef nonnull align 8 dereferenceable(32) %.19.i.i.i557.lcssa.sroa.gep895) #25
  %i.alv = load i64, ptr %.19.i.i.i557.lcssa.sroa.gep889, align 8
  %i.alw = add i64 %i.alv, 1
  store i64 %i.alw, ptr %.19.i.i.i557.lcssa.sroa.gep889, align 8
  br label %bb.fs

_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE10_Auto_nodeD2Ev.exit.i.i: ; preds = %.noexc579
  %i.alx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.alj, i64 noundef 48) #27
  br label %.body550

bb.fr:                                            ; preds = %bb.fo
  call void @_ZdlPvm(ptr noundef nonnull %i.alj, i64 noundef 48) #27
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %.thread.i.i, %bb.fn
  %.sroa.09.0.i = phi ptr [ %.19.i.i.i.i570, %bb.fn ], [ %i.alj, %.thread.i.i ], [ %i.aln, %bb.fr ]
  %i.aly = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 40
  %i.alz = load ptr, ptr %i.aly, align 8
  %i.ama = load i32, ptr %i.ajo, align 8
  %.not828 = icmp eq i32 %i.ama, 0
  br i1 %.not828, label %._crit_edge786, label %.lr.ph785.preheader

.lr.ph785.preheader:                              ; preds = %bb.fs
  %i.amb = getelementptr inbounds nuw [8 x i8], ptr %i.ajz, i64 %i.alb
  %i.amc = load ptr, ptr %i.amb, align 8
  %i.amd = load i32, ptr %i.aka, align 4
  %i.ame = zext i32 %i.amd to i64
  %i.amf = getelementptr inbounds nuw [12 x i8], ptr %i.amc, i64 %i.ame
  br label %.lr.ph785

.lr.ph785:                                        ; preds = %.lr.ph785.preheader, %.lr.ph785
  %.0409783 = phi i32 [ %i.amp, %.lr.ph785 ], [ 0, %.lr.ph785.preheader ] ; 2 uses
  %.0410782 = phi ptr [ %i.amq, %.lr.ph785 ], [ %i.amf, %.lr.ph785.preheader ] ; 3 uses
  %i.amg = load i32, ptr %i.akb, align 8
  %i.amh = add i32 %i.amg, %.0409783
  %i.ami = zext i32 %i.amh to i64
  %i.amj = getelementptr inbounds nuw [32 x i8], ptr %i.alz, i64 %i.ami ; 2 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 16
  %i.aml = load float, ptr %i.amk, align 8
  store float %i.aml, ptr %.0410782, align 4
  %i.amm = getelementptr inbounds nuw i8, ptr %i.amj, i64 20
  %i.amn = load float, ptr %i.amm, align 4
  %i.amo = getelementptr inbounds nuw i8, ptr %.0410782, i64 4
  store float %i.amn, ptr %i.amo, align 4
  %i.amp = add nuw i32 %.0409783, 1               ; 3 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %.0410782, i64 12
  %i.amr = load i32, ptr %i.ajo, align 8
  %i.ams = icmp ult i32 %i.amp, %i.amr
  br i1 %i.ams, label %.lr.ph785, label %._crit_edge786, !llvm.loop !132

bb.ft:                                            ; preds = %.critedge.i576
  %i.amt = landingpad { ptr, i32 }
          cleanup
  br label %.body550

._crit_edge786:                                   ; preds = %.lr.ph785, %bb.fs
  %.0409.lcssa = phi i32 [ 0, %bb.fs ], [ %i.amp, %.lr.ph785 ]
  %i.amu = load i64, ptr %.19.i.i.i557.lcssa.sroa.gep889, align 8 ; 2 uses
  %i.amv = add i64 %i.amu, -1
  %i.amw = icmp eq i64 %i.amv, %i.alb
  br i1 %i.amw, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %._crit_edge786
  %i.amx = load i32, ptr %i.aka, align 4
  %i.amy = add i32 %i.amx, %.0409.lcssa
  store i32 %i.amy, ptr %i.aka, align 4
  %.pre900 = load i64, ptr %.19.i.i.i557.lcssa.sroa.gep889, align 8
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %._crit_edge786
  %i.amz = phi i64 [ %.pre900, %bb.fu ], [ %i.amu, %._crit_edge786 ]
  %i.ana = add i32 %storemerge433788, 1           ; 2 uses
  %i.anb = zext i32 %i.ana to i64                 ; 2 uses
  %i.anc = icmp ugt i64 %i.amz, %i.anb
  br i1 %i.anc, label %bb.fm, label %.loopexit700, !llvm.loop !133

.loopexit700:                                     ; preds = %bb.fv, %bb.fl, %.preheader701, %_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEE4findERS8_.exit565.thread
  %indvars.iv.next871 = add nuw nsw i64 %indvars.iv870, 1 ; 2 uses
  %i.and = load i32, ptr %i.cb, align 8
  %i.ane = sext i32 %i.and to i64
  %i.anf = icmp slt i64 %indvars.iv.next871, %i.ane
  br i1 %i.anf, label %bb.fi, label %.loopexit704, !llvm.loop !134

.loopexit704:                                     ; preds = %.loopexit700, %.preheader703, %bb.eu
  %i.ang = getelementptr inbounds nuw i8, ptr %3, i64 1144 ; 2 uses
  %i.anh = load ptr, ptr %i.ang, align 8          ; 2 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %3, i64 1152
  %i.anj = load ptr, ptr %i.ani, align 8          ; 2 uses
  %.not686 = icmp eq ptr %i.anh, %i.anj
  br i1 %.not686, label %.loopexit698, label %bb.fw

bb.fw:                                            ; preds = %.loopexit704
  %i.ank = load i32, ptr %i.y, align 8            ; 2 uses
  %i.anl = ptrtoint ptr %i.anj to i64
  %i.anm = ptrtoint ptr %i.anh to i64
  %i.ann = sub i64 %i.anl, %i.anm
  %i.ano = sdiv exact i64 %i.ann, 72
  %i.anp = trunc i64 %i.ano to i32
  %i.anq = icmp sgt i32 %i.ank, %i.anp
  br i1 %i.anq, label %bb.fx, label %bb.fz

bb.fx:                                            ; preds = %bb.fw
  %i.anr = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr @.str, ptr %i.b, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJPKcRA68_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.anr, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(68) @.str.88)
          to label %.invoke984 unwind label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ans = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @__cxa_free_exception(ptr nonnull %i.anr) #25
  br label %.body550

bb.fz:                                            ; preds = %bb.fw
  %i.ant = load ptr, ptr %5, align 8
  %i.anu = getelementptr inbounds i8, ptr %i.ant, i64 %i.da ; 2 uses
  %i.anv = load ptr, ptr %i.cv, align 8
  %.not687795 = icmp eq ptr %i.anu, %i.anv
  br i1 %.not687795, label %.preheader697, label %.lr.ph798

.preheader697.loopexit:                           ; preds = %.loopexit699
  %.pre901 = load i32, ptr %i.y, align 8
  br label %.preheader697

.preheader697:                                    ; preds = %.preheader697.loopexit, %bb.fz
  %i.anw = phi i32 [ %.pre901, %.preheader697.loopexit ], [ %i.ank, %bb.fz ]
  %i.anx = icmp sgt i32 %i.anw, 0
  br i1 %i.anx, label %.lr.ph805, label %.loopexit698

.lr.ph798:                                        ; preds = %bb.fz, %.loopexit699
  %.sroa.0608.0796 = phi ptr [ %i.aop, %.loopexit699 ], [ %i.anu, %bb.fz ] ; 5 uses
  %i.any = load ptr, ptr %.sroa.0608.0796, align 8
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 4
  %i.aoa = load i32, ptr %i.anz, align 4          ; 2 uses
  %i.aob = zext i32 %i.aoa to i64
  %i.aoc = mul nuw nsw i64 %i.aob, 12             ; 2 uses
  %i.aod = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aoc) #26
          to label %bb.ga unwind label %bb.gb     ; 2 uses

bb.ga:                                            ; preds = %.lr.ph798
  %i.aoe = icmp eq i32 %i.aoa, 0
  br i1 %i.aoe, label %.loopexit699, label %.loopexit699.loopexit

.loopexit699.loopexit:                            ; preds = %bb.ga
  %i.aof = add nsw i64 %i.aoc, -12                ; 2 uses
  %i.aog = urem i64 %i.aof, 12
  %i.aoh = sub nuw nsw i64 %i.aof, %i.aog
  %i.aoi = add nsw i64 %i.aoh, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aod, i8 0, i64 %i.aoi, i1 false)
  br label %.loopexit699

.loopexit699:                                     ; preds = %.loopexit699.loopexit, %bb.ga
  %i.aoj = load ptr, ptr %.sroa.0608.0796, align 8
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoj, i64 112
  store ptr %i.aod, ptr %i.aok, align 8
  %i.aol = load ptr, ptr %.sroa.0608.0796, align 8
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aol, i64 4
  store i32 0, ptr %i.aom, align 4
  %i.aon = load ptr, ptr %.sroa.0608.0796, align 8
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aon, i64 8
  store i32 0, ptr %i.aoo, align 8
  %i.aop = getelementptr inbounds nuw i8, ptr %.sroa.0608.0796, i64 8 ; 2 uses
  %i.aoq = load ptr, ptr %i.cv, align 8
  %.not687 = icmp eq ptr %i.aop, %i.aoq
  br i1 %.not687, label %.preheader697.loopexit, label %.lr.ph798, !llvm.loop !135

bb.gb:                                            ; preds = %.lr.ph798
  %i.aor = landingpad { ptr, i32 }
          cleanup
  br label %.body550

.lr.ph805:                                        ; preds = %.preheader697, %._crit_edge803
  %indvars.iv876 = phi i64 [ %indvars.iv.next877, %._crit_edge803 ], [ 0, %.preheader697 ] ; 3 uses
  %i.aos = load ptr, ptr %i.ang, align 8
  %i.aot = getelementptr inbounds nuw [72 x i8], ptr %i.aos, i64 %indvars.iv876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #25
  %i.aou = load ptr, ptr %i.af, align 8
  %i.aov = getelementptr inbounds nuw [40 x i8], ptr %i.aou, i64 %indvars.iv876
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 32
  %i.aox = load i32, ptr %i.aow, align 8
  %i.aoy = sext i32 %i.aox to i64
  store i64 %i.aoy, ptr %i.v, align 8
  %i.aoz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %bb.gc unwind label %bb.gd

bb.gc:                                            ; preds = %.lr.ph805
  %i.apa = load i64, ptr %i.aoz, align 8
  %i.apb = load ptr, ptr %5, align 8
  %i.apc = getelementptr inbounds nuw [8 x i8], ptr %i.apb, i64 %i.apa
  %i.apd = load ptr, ptr %i.apc, align 8          ; 4 uses
end_hunk_8
begin_hunk_9_@_ZN6Assimp15BlenderImporter11ConvertMeshERKNS_7Blender5SceneEPKNS1_6ObjectEPKNS1_4MeshERNS1_14ConversionDataERNS1_9TempArrayISt6vector6aiMeshEE:bb.a
  br i1 %.not832, label %._crit_edge821, label %.lr.ph820

.lr.ph820:                                        ; preds = %bb.gq
  %i.auv = getelementptr inbounds nuw i8, ptr %i.aul, i64 48
  %i.auw = load ptr, ptr %i.auv, align 8
  %i.aux = load i32, ptr %i.aut, align 4
  %i.auy = zext i32 %i.aux to i64
  %i.auz = getelementptr inbounds nuw [16 x i8], ptr %i.auw, i64 %i.auy
  %i.ava = getelementptr inbounds nuw i8, ptr %i.aud, i64 16
  br label %bb.gs

._crit_edge821:                                   ; preds = %bb.gs, %bb.gq
  %indvars.iv.next886 = add nuw nsw i64 %indvars.iv885, 1 ; 2 uses
  %i.avb = load i32, ptr %i.cb, align 8
  %i.avc = sext i32 %i.avb to i64
  %i.avd = icmp slt i64 %indvars.iv.next886, %i.avc
  br i1 %i.avd, label %bb.gp, label %.loopexit, !llvm.loop !141

bb.gr:                                            ; preds = %bb.gp
  %i.ave = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #25
  br label %.body550

bb.gs:                                            ; preds = %.lr.ph820, %bb.gs
  %.0374818 = phi i32 [ 0, %.lr.ph820 ], [ %i.awd, %bb.gs ] ; 2 uses
  %.0376817 = phi ptr [ %i.auz, %.lr.ph820 ], [ %i.awe, %bb.gs ] ; 5 uses
  %i.avf = load i32, ptr %i.ava, align 8
  %i.avg = add i32 %i.avf, %.0374818
  %i.avh = zext i32 %i.avg to i64
  %i.avi = load ptr, ptr %i.arz, align 8
  %i.avj = getelementptr inbounds nuw [24 x i8], ptr %i.avi, i64 %i.avh ; 4 uses
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avj, i64 16
  %i.avl = load i8, ptr %i.avk, align 8
  %i.avm = uitofp i8 %i.avl to float
  %i.avn = fmul nnan float %i.avm, f0x3B808081
  store float %i.avn, ptr %.0376817, align 4
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avj, i64 17
  %i.avp = load i8, ptr %i.avo, align 1
  %i.avq = uitofp i8 %i.avp to float
  %i.avr = fmul nnan float %i.avq, f0x3B808081
  %i.avs = getelementptr inbounds nuw i8, ptr %.0376817, i64 4
  store float %i.avr, ptr %i.avs, align 4
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avj, i64 18
  %i.avu = load i8, ptr %i.avt, align 2
  %i.avv = uitofp i8 %i.avu to float
  %i.avw = fmul nnan float %i.avv, f0x3B808081
  %i.avx = getelementptr inbounds nuw i8, ptr %.0376817, i64 8
  store float %i.avw, ptr %i.avx, align 4
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avj, i64 19
  %i.avz = load i8, ptr %i.avy, align 1
  %i.awa = uitofp i8 %i.avz to float
  %i.awb = fmul nnan float %i.awa, f0x3B808081
  %i.awc = getelementptr inbounds nuw i8, ptr %.0376817, i64 12
  store float %i.awb, ptr %i.awc, align 4
  %i.awd = add nuw i32 %.0374818, 1               ; 2 uses
  %i.awe = getelementptr inbounds nuw i8, ptr %.0376817, i64 16
  %i.awf = load i32, ptr %i.aut, align 4
  %i.awg = add i32 %i.awf, 1
  store i32 %i.awg, ptr %i.aut, align 4
  %i.awh = load i32, ptr %i.aus, align 8
  %i.awi = icmp ult i32 %i.awd, %i.awh
  br i1 %i.awi, label %bb.gs, label %._crit_edge821, !llvm.loop !142

.loopexit:                                        ; preds = %._crit_edge821, %.preheader, %bb.gf
  %i.awj = load ptr, ptr %i.uq, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef %i.awj)
          to label %_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEED2Ev.exit unwind label %bb.gt

bb.gt:                                            ; preds = %.loopexit
  %i.awk = landingpad { ptr, i32 }
          catch ptr null
  %i.awl = extractvalue { ptr, i32 } %i.awk, 0
  call void @__clang_call_terminate(ptr %i.awl) #29
  unreachable

_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEED2Ev.exit: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %i.awm = load ptr, ptr %i.em, align 8
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %i.awm)
          to label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEED2Ev.exit unwind label %bb.gu

bb.gu:                                            ; preds = %_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEED2Ev.exit
  %i.awn = landingpad { ptr, i32 }
          catch ptr null
  %i.awo = extractvalue { ptr, i32 } %i.awn, 0
  call void @__clang_call_terminate(ptr %i.awo) #29
  unreachable

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEED2Ev.exit: ; preds = %_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.awp = load ptr, ptr %i.bw, align 8
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKimESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.awp)
          to label %_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEED2Ev.exit unwind label %bb.gv

bb.gv:                                            ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEED2Ev.exit
  %i.awq = landingpad { ptr, i32 }
          catch ptr null
  %i.awr = extractvalue { ptr, i32 } %i.awq, 0
  call void @__clang_call_terminate(ptr %i.awr) #29
  unreachable

_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEED2Ev.exit: ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.aws = load ptr, ptr %i.br, align 8
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKimESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef %i.aws)
          to label %_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEED2Ev.exit588 unwind label %bb.gw

bb.gw:                                            ; preds = %_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEED2Ev.exit
  %i.awt = landingpad { ptr, i32 }
          catch ptr null
  %i.awu = extractvalue { ptr, i32 } %i.awt, 0
  call void @__clang_call_terminate(ptr %i.awu) #29
  unreachable

_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEED2Ev.exit588: ; preds = %_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.gy

.body550:                                         ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE10_Auto_nodeD2Ev.exit.i.i, %bb.ft, %bb.fc, %bb.fe, %bb.ex, %bb.ey, %bb.gi, %bb.fy, %bb.fk, %bb.gr, %bb.gn, %bb.gl, %bb.gd, %bb.gb, %bb.fg, %.body595
  %.pn446.pn.pn = phi { ptr, i32 } [ %.pn446.pn, %.body595 ], [ %i.ara, %bb.gi ], [ %i.aim, %bb.fg ], [ %i.akk, %bb.fk ], [ %i.aor, %bb.gb ], [ %i.apw, %bb.gd ], [ %i.arv, %bb.gl ], [ %i.atc, %bb.gn ], [ %i.ave, %bb.gr ], [ %i.agx, %bb.fe ], [ %i.aey, %bb.ex ], [ %i.ans, %bb.fy ], [ %i.aez, %bb.ey ], [ %i.agd, %bb.fc ], [ %i.alx, %_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE10_Auto_nodeD2Ev.exit.i.i ], [ %i.amt, %bb.ft ]
  call void @_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %.body

.body:                                            ; preds = %.loopexit716, %.loopexit.split-lp717, %.loopexit715, %.loopexit.split-lp, %bb.dc, %.body590, %bb.ce, %bb.cf, %bb.cl, %bb.ci, %bb.cb, %bb.by, %bb.ax, %bb.bf, %bb.ay, %bb.aw, %bb.cs, %bb.ct, %bb.bz, %bb.ca, %.body550
  %.pn467.pn.pn = phi { ptr, i32 } [ %i.xd, %bb.ct ], [ %.pn446.pn.pn, %.body550 ], [ %i.kp, %bb.aw ], [ %i.py, %bb.bz ], [ %i.pz, %bb.ca ], [ %i.px, %bb.by ], [ %i.xc, %bb.cs ], [ %i.tm, %bb.cl ], [ %i.kq, %bb.ax ], [ %eh.lpad-body591, %.body590 ], [ %i.mf, %bb.bf ], [ %i.kr, %bb.ay ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.qa, %bb.cb ], [ %i.rb, %bb.ce ], [ %i.sg, %bb.ci ], [ %i.rc, %bb.cf ], [ %i.yz, %bb.dc ], [ %lpad.loopexit, %.loopexit715 ], [ %lpad.loopexit718, %.loopexit716 ], [ %lpad.loopexit.split-lp719, %.loopexit.split-lp717 ]
  call void @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.gx

bb.gx:                                            ; preds = %bb.ac, %.body, %bb.aa, %bb.ab, %bb.s
  %.pn475 = phi { ptr, i32 } [ %i.cu, %bb.s ], [ %i.ej, %bb.aa ], [ %i.ek, %bb.ab ], [ %.pn467.pn.pn, %.body ], [ %i.fm, %bb.ac ]
  call void @_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume

bb.gy:                                            ; preds = %bb.b, %bb.c, %_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEED2Ev.exit588
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre = load i32, ptr %1, align 4               ; 3 uses
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp slt i32 %i.e, %.pre                 ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEE11lower_boundERS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !143

_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEE11lower_boundERS3_.exit: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEE11lower_boundERS3_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp slt i32 %.pre, %i.i
  br i1 %i.j, label %.critedge, label %_ZNSt8_Rb_treeIiSt4pairIKimESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEE11lower_boundERS3_.exit, %bb.b
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.b ], [ %.19.i.i.i, %_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEE11lower_boundERS3_.exit ], [ %i.c, %bb.a ]
  %i.k = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store i32 %.pre, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 0, ptr %i.m, align 8
  %i.n = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKimESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
          to label %bb.c unwind label %_ZNSt8_Rb_treeIiSt4pairIKimESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.c:                                             ; preds = %.critedge
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i4 = icmp ne ptr %i.o, null
  %i.q = icmp eq ptr %i.p, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.q
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load i32, ptr %i.l, align 8
  %i.t = load i32, ptr %i.r, align 4
  %i.u = icmp slt i32 %i.s, %i.t
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.v = phi i1 [ %i.u, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef nonnull %i.k, ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #25
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8
  br label %_ZNSt8_Rb_treeIiSt4pairIKimESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeIiSt4pairIKimESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #27
  resume { ptr, i32 } %i.z

bb.f:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #27
  br label %_ZNSt8_Rb_treeIiSt4pairIKimESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeIiSt4pairIKimESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.b
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.b ], [ %i.k, %.thread.i ], [ %i.o, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.aa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEEixEOi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre = load i32, ptr %1, align 4               ; 3 uses
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp slt i32 %i.e, %.pre                 ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEE11lower_boundERS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !143

_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEE11lower_boundERS3_.exit: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEE11lower_boundERS3_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp slt i32 %.pre, %i.i
  br i1 %i.j, label %.critedge, label %_ZNSt8_Rb_treeIiSt4pairIKimESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEE11lower_boundERS3_.exit, %bb.b
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.b ], [ %.19.i.i.i, %_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEE11lower_boundERS3_.exit ], [ %i.c, %bb.a ]
  %i.k = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store i32 %.pre, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 0, ptr %i.m, align 8
  %i.n = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKimESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
          to label %bb.c unwind label %_ZNSt8_Rb_treeIiSt4pairIKimESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.c:                                             ; preds = %.critedge
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i4 = icmp ne ptr %i.o, null
  %i.q = icmp eq ptr %i.p, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.q
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load i32, ptr %i.l, align 8
  %i.t = load i32, ptr %i.r, align 4
  %i.u = icmp slt i32 %i.s, %i.t
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.v = phi i1 [ %i.u, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef nonnull %i.k, ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #25
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8
  br label %_ZNSt8_Rb_treeIiSt4pairIKimESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeIiSt4pairIKimESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #27
  resume { ptr, i32 } %i.z

bb.f:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #27
  br label %_ZNSt8_Rb_treeIiSt4pairIKimESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeIiSt4pairIKimESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.b
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.b ], [ %i.k, %.thread.i ], [ %i.o, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.aa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre = load i64, ptr %1, align 8               ; 3 uses
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp ult i64 %i.e, %.pre                 ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !144

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp ult i64 %.pre, %i.i
  br i1 %i.j, label %.critedge, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit, %bb.b
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.b ], [ %.19.i.i.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit ], [ %i.c, %bb.a ]
  %i.k = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store i64 %.pre, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 0, ptr %i.m, align 8
  %i.n = invoke { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.c unwind label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.c:                                             ; preds = %.critedge
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i4 = icmp ne ptr %i.o, null
  %i.q = icmp eq ptr %i.p, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.q
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load i64, ptr %i.l, align 8
  %i.t = load i64, ptr %i.r, align 8
  %i.u = icmp ult i64 %i.s, %i.t
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.v = phi i1 [ %i.u, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef nonnull %i.k, ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #25
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #27
  resume { ptr, i32 } %i.z

bb.f:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #27
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.b
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.b ], [ %i.k, %.thread.i ], [ %i.o, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.aa
}

declare noundef ptr @_ZN6Assimp7Blender22getCustomDataLayerDataERKNS0_10CustomDataENS0_14CustomDataTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt4pairIjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS_IKjS5_EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #29
  unreachable

_ZNSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #29
  unreachable

_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIjS_IjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS4_EEES6_SaIS7_IS8_SB_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #29
  unreachable

_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #29
  unreachable

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_9
begin_hunk_10_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.ct = extractelement <2 x float> %foldExtExtBinop55, i64 0 ; 2 uses
  %i.cu = fmul float %i.ct, %i.ad
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.n, float %i.cs)
  %i.cw = fmul float %i.ba, %i.ct
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.w, float %i.cv)
  %foldExtExtBinop57 = fmul <2 x float> %i.ah, %i.bc ; 2 uses
  %i.cy = extractelement <2 x float> %foldExtExtBinop57, i64 0
  %i.cz = fmul float %i.cy, %i.bb
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.aa, float %i.cx)
  %foldExtExtBinop59 = fmul <2 x float> %i.u, %foldExtExtBinop57
  %i.db = extractelement <2 x float> %foldExtExtBinop59, i64 0
  %i.dc = tail call noundef float @llvm.fmuladd.f32(float %i.db, float %i.n, float %i.da) ; 2 uses
  %i.dd = fcmp oeq float %i.dc, 0.000000e+00
  br i1 %i.dd, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.de = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.df = fdiv float 1.000000e+00, %i.dc          ; 3 uses
  %i.dg = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <4 x i32> <i32 3, i32 1, i32 poison, i32 poison>
  %i.dh = shufflevector <2 x float> %i.ai, <2 x float> %i.ah, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.di = fmul <4 x float> %i.dh, %i.de
  %i.dj = fneg float %i.e
  %i.dk = fneg float %i.aa
  %i.dl = fneg float %i.df                        ; 2 uses
  %i.dm = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 1, i32 1, i32 3, i32 3> ; 2 uses
  %i.dn = insertelement <4 x float> poison, float %i.e, i64 0 ; 2 uses
  %i.do = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dp = shufflevector <4 x float> %i.dn, <4 x float> %i.do, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> %i.dp, <4 x float> %i.di) ; 2 uses
  %i.dr = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 3 uses
  %i.ds = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 0, i32 0, i32 2, i32 2> ; 2 uses
  %i.dt = insertelement <4 x float> poison, float %i.dj, i64 0
  %i.du = insertelement <4 x float> %i.dt, float %i.ak, i64 1
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.dw = fmul <4 x float> %i.ds, %i.dv
  %i.dx = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> %i.dg, <4 x i32> <i32 0, i32 4, i32 5, i32 5> ; 2 uses
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> %i.dr, <4 x i32> <i32 1, i32 0, i32 0, i32 4>
  %i.ea = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dy, <4 x float> %i.dz, <4 x float> %i.dw)
  %i.eb = shufflevector <2 x float> %i.r, <2 x float> %i.ae, <4 x i32> <i32 1, i32 3, i32 3, i32 3>
  %i.ec = fmul <4 x float> %i.eb, %i.ea
  %i.ed = shufflevector <2 x float> %i.r, <2 x float> %i.ae, <4 x i32> <i32 0, i32 2, i32 2, i32 2> ; 2 uses
  %i.ee = shufflevector <2 x float> %i.r, <2 x float> %i.ae, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.ef = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ee, <4 x float> %i.dq, <4 x float> %i.ec)
  %i.eg = insertelement <4 x float> poison, float %i.dk, i64 0
  %i.eh = insertelement <4 x float> %i.eg, float %i.ac, i64 1
  %i.ei = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.ej = fmul <4 x float> %i.dm, %i.ei
  %i.ek = shufflevector <2 x float> %i.v, <2 x float> %i.u, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.el = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ds, <4 x float> %i.ek, <4 x float> %i.ej) ; 2 uses
  %i.em = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 1, i32 3, i32 3, i32 3>
  %i.en = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.em, <4 x float> %i.el, <4 x float> %i.ef)
  %i.eo = insertelement <4 x float> poison, float %i.df, i64 0
  %i.ep = insertelement <4 x float> %i.eo, float %i.dl, i64 1 ; 2 uses
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.er = fmul <4 x float> %i.en, %i.eq
  %i.es = fneg float %i.n
  %i.et = shufflevector <2 x float> %i.az, <2 x float> %i.bc, <4 x i32> <i32 1, i32 3, i32 1, i32 3> ; 2 uses
  %i.eu = fmul <4 x float> %i.et, %i.dv
  %i.ev = insertelement <4 x float> poison, float %i.n, i64 0
  %i.ew = insertelement <4 x float> %i.do, float %i.n, i64 0
  %i.ex = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ey = shufflevector <4 x float> %i.ew, <4 x float> %i.ex, <4 x i32> <i32 0, i32 5, i32 1, i32 5>
  %i.ez = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fa = insertelement <4 x float> %i.ez, float %i.n, i64 1
  %i.fb = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fc = shufflevector <4 x float> %i.fa, <4 x float> %i.fb, <4 x i32> <i32 0, i32 1, i32 1, i32 5>
  %i.fd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ey, <4 x float> %i.fc, <4 x float> %i.eu) ; 2 uses
  %i.fe = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.ff = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.fg = fmul <4 x float> %i.ff, %i.fd
  %i.fh = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fi = insertelement <4 x float> %i.fh, float %i.a, i64 1
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.fk = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 0, i32 3>
  %i.fl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fj, <4 x float> %i.fk, <4 x float> %i.fg)
  %i.fm = shufflevector <2 x float> %i.ai, <2 x float> %i.ah, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.fn = insertelement <4 x float> poison, float %i.es, i64 0
  %i.fo = insertelement <4 x float> %i.fn, float %i.bb, i64 1
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.fq = fmul <4 x float> %i.fm, %i.fp
  %i.fr = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fs = insertelement <2 x float> %i.fr, float %i.w, i64 0
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.ft, <4 x float> %i.fq)
  %i.fv = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 1, i32 3, i32 3, i32 3>
  %i.fw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fv, <4 x float> %i.fu, <4 x float> %i.fl)
  %i.fx = insertelement <4 x float> poison, float %i.dl, i64 0
  %i.fy = insertelement <4 x float> %i.fx, float %i.df, i64 1 ; 2 uses
  %i.fz = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ga = fmul <4 x float> %i.fw, %i.fz
  %i.gb = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gc = insertelement <2 x float> %i.gb, float %i.aj, i64 0
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ge = fmul <4 x float> %i.gd, %i.ei
  %i.gf = insertelement <4 x float> %i.dn, float %i.aj, i64 1
  %i.gg = shufflevector <4 x float> %i.gf, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dr, <4 x float> %i.gg, <4 x float> %i.ge)
  %i.gi = shufflevector <4 x float> %i.fd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.gj = fmul <4 x float> %i.ed, %i.gi
  %i.gk = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gl = insertelement <2 x float> %i.gk, float %i.a, i64 1
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.gn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gm, <4 x float> %i.gh, <4 x float> %i.gj)
  %i.go = fmul <4 x float> %i.dr, %i.fp
  %i.gp = shufflevector <2 x float> %i.az, <2 x float> %i.bc, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.gq = shufflevector <2 x float> %i.v, <2 x float> %i.u, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.gr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gp, <4 x float> %i.gq, <4 x float> %i.go) ; 2 uses
  %i.gs = shufflevector <2 x float> %i.az, <2 x float> %i.bc, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.gt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gs, <4 x float> %i.gr, <4 x float> %i.gn)
  %i.gu = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.gv = fmul <4 x float> %i.gt, %i.gu
  %i.gw = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.gx = insertelement <4 x float> %i.gw, float %i.bd, i64 1
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.gz = fmul <4 x float> %i.gy, %i.de
  %i.ha = shufflevector <2 x float> %i.ai, <2 x float> %i.ah, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.hb = insertelement <4 x float> %i.ev, float %i.ba, i64 1
  %i.hc = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ha, <4 x float> %i.hc, <4 x float> %i.gz)
  %i.he = fmul <4 x float> %i.ed, %i.hd
  %i.hf = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.hg = insertelement <4 x float> %i.hf, float %i.a, i64 1
  %i.hh = shufflevector <4 x float> %i.hg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.hi = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.hj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hh, <4 x float> %i.hi, <4 x float> %i.he)
  %i.hk = shufflevector <4 x float> %i.gr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 3>
  %i.hl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fe, <4 x float> %i.hk, <4 x float> %i.hj)
  %i.hm = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hn = fmul <4 x float> %i.hl, %i.hm
  %i.ho = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.hp = shufflevector <4 x float> %i.gv, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.hq = phi <4 x float> [ %i.er, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.hr = phi <4 x float> [ %i.ho, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.hs = phi <4 x float> [ %i.hp, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.ht = phi <4 x float> [ %i.hn, %bb.b ], [ splat (float +qnan), %bb.a ]
  store <4 x float> %i.hq, ptr %0, align 4
  store <4 x float> %i.hr, ptr %i.p, align 4
  store <4 x float> %i.hs, ptr %i.o, align 4
  store <4 x float> %i.ht, ptr %i.m, align 4
  ret ptr %0
}

declare void @_ZN6Assimp7Blender23BlenderModifierShowcase14ApplyModifiersER6aiNodeRNS0_14ConversionDataERKNS0_5SceneERKNS0_6ObjectE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(1144), ptr noundef nonnull align 8 dereferenceable(336), ptr noundef nonnull align 8 dereferenceable(1176), ptr noundef nonnull align 8 dereferenceable(1384)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit

_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit:      ; preds = %bb.a
  tail call void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144) %i.a) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1144) #27
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !81
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !81
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZN6Assimp11CompressionC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

declare noundef zeroext i1 @_ZN6Assimp11Compression4openENS0_6FormatENS0_9FlushModeEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

declare noundef i64 @_ZN6Assimp11Compression10decompressEPKvmRSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN6Assimp11Compression5closeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN6Assimp11CompressionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb0ELb0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !81
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !81
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6Assimp7Blender13FileBlockHeadES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6Assimp7Blender13FileBlockHeadEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN6Assimp7Blender13FileBlockHeadEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6Assimp7Blender13FileBlockHeadEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZSt8_DestroyIN6Assimp7Blender13FileBlockHeadEEvPT_.exit.i.i

_ZSt8_DestroyIN6Assimp7Blender13FileBlockHeadEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6Assimp7Blender13FileBlockHeadES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !56

_ZSt8_DestroyIPN6Assimp7Blender13FileBlockHeadES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6Assimp7Blender13FileBlockHeadEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPN6Assimp7Blender13FileBlockHeadES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN6Assimp7Blender13FileBlockHeadES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6Assimp7Blender13FileBlockHeadES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPN6Assimp7Blender13FileBlockHeadES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6Assimp7Blender13FileBlockHeadESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6Assimp7Blender13FileBlockHeadES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #27
  br label %_ZNSt12_Vector_baseIN6Assimp7Blender13FileBlockHeadESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN6Assimp7Blender13FileBlockHeadESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp7Blender13FileBlockHeadES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender3DNAD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #29
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp7Blender9StructureES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i ], [ %i.g, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit ] ; 2 uses
  tail call void @_ZN6Assimp7Blender9StructureD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.05.i.i.i) #25
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 120 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6Assimp7Blender9StructureES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !58

_ZSt8_DestroyIPN6Assimp7Blender9StructureES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.f, align 8
  br label %_ZSt8_DestroyIPN6Assimp7Blender9StructureES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp7Blender9StructureES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp7Blender9StructureES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6Assimp7Blender9StructureES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.g, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6Assimp7Blender9StructureESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6Assimp7Blender9StructureES2_EvT_S4_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #27
  br label %_ZNSt6vectorIN6Assimp7Blender9StructureESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp7Blender9StructureESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp7Blender9StructureES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IMN6Assimp7Blender9StructureEKFSt10shared_ptrINS9_8ElemBaseEEvEMSA_KFvSD_RKNS9_12FileDatabaseEEEESt10_Select1stISM_ESt4lessIS5_ESaISM_EE8_M_eraseEPSt13_Rb_tree_nodeISM_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.r)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIMN6Assimp7Blender9StructureEKFSt10shared_ptrINS8_8ElemBaseEEvEMS9_KFvSC_RKNS8_12FileDatabaseEEESt4lessIS5_ESaIS6_IKS5_SK_EEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6Assimp7Blender9StructureESaIS2_EED2Ev.exit
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #29
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIMN6Assimp7Blender9StructureEKFSt10shared_ptrINS8_8ElemBaseEEvEMS9_KFvSC_RKNS8_12FileDatabaseEEESt4lessIS5_ESaIS6_IKS5_SK_EEED2Ev.exit: ; preds = %_ZNSt6vectorIN6Assimp7Blender9StructureESaIS2_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESaISD_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESD_EvT_SF_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  invoke void @_ZNSt8_Rb_treeIN6Assimp7Blender7PointerESt4pairIKS2_St10shared_ptrINS1_8ElemBaseEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i, ptr noundef %i.e)
          to label %_ZSt8_DestroyISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEEEvPT_.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #29
  unreachable

_ZSt8_DestroyISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESD_EvT_SF_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !55

_ZSt8_DestroyIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESD_EvT_SF_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESD_EvT_SF_RSaIT0_E.exit

_ZSt8_DestroyIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESD_EvT_SF_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESD_EvT_SF_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESD_EvT_SF_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESaISD_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESD_EvT_SF_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #27
  br label %_ZNSt12_Vector_baseISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESaISD_EED2Ev.exit

_ZNSt12_Vector_baseISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESaISD_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESD_EvT_SF_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN6Assimp7Blender7PointerESt4pairIKS2_St10shared_ptrINS1_8ElemBaseEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIN6Assimp7Blender7PointerESt4pairIKS2_St10shared_ptrINS1_8ElemBaseEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIN6Assimp7Blender7PointerESt4pairIKS2_St10shared_ptrINS1_8ElemBaseEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIN6Assimp7Blender7PointerESt4pairIKS2_St10shared_ptrINS1_8ElemBaseEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 48
  %i.f = load ptr, ptr %i.e, align 8              ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8_Rb_treeIN6Assimp7Blender7PointerESt4pairIKS2_St10shared_ptrINS1_8ElemBaseEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4
  %i.l = load ptr, ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #25, !inline_history !145
  %i.o = load ptr, ptr %i.f, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #25, !inline_history !145
  br label %_ZNSt8_Rb_treeIN6Assimp7Blender7PointerESt4pairIKS2_St10shared_ptrINS1_8ElemBaseEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZNSt8_Rb_treeIN6Assimp7Blender7PointerESt4pairIKS2_St10shared_ptrINS1_8ElemBaseEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, !prof !5

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #25
  br label %_ZNSt8_Rb_treeIN6Assimp7Blender7PointerESt4pairIKS2_St10shared_ptrINS1_8ElemBaseEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeIN6Assimp7Blender7PointerESt4pairIKS2_St10shared_ptrINS1_8ElemBaseEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %.lr.ph, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 56) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !146

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIN6Assimp7Blender7PointerESt4pairIKS2_St10shared_ptrINS1_8ElemBaseEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !147
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4              ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !147
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !148

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender9StructureD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #29
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp7Blender5FieldES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit, %_ZSt8_DestroyIN6Assimp7Blender5FieldEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN6Assimp7Blender5FieldEEvPT_.exit.i.i.i ], [ %i.g, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.n = load i64, ptr %i.l, align 8
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.p = load ptr, ptr %.05.i.i.i, align 8        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyIN6Assimp7Blender5FieldEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #27
  br label %_ZSt8_DestroyIN6Assimp7Blender5FieldEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6Assimp7Blender5FieldEEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.i
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6Assimp7Blender5FieldES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !149

_ZSt8_DestroyIPN6Assimp7Blender5FieldES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6Assimp7Blender5FieldEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.f, align 8
  br label %_ZSt8_DestroyIPN6Assimp7Blender5FieldES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp7Blender5FieldES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp7Blender5FieldES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6Assimp7Blender5FieldES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.g, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6Assimp7Blender5FieldESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6Assimp7Blender5FieldES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #27
  br label %_ZNSt6vectorIN6Assimp7Blender5FieldESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp7Blender5FieldESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp7Blender5FieldES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.ab = load ptr, ptr %0, align 8               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN6Assimp7Blender5FieldESaIS2_EED2Ev.exit
  %i.ae = load i64, ptr %i.ac, align 8
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN6Assimp7Blender5FieldESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IMN6Assimp7Blender9StructureEKFSt10shared_ptrINS9_8ElemBaseEEvEMSA_KFvSD_RKNS9_12FileDatabaseEEEESt10_Select1stISM_ESt4lessIS5_ESaISM_EE8_M_eraseEPSt13_Rb_tree_nodeISM_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IMN6Assimp7Blender9StructureEKFSt10shared_ptrINS9_8ElemBaseEEvEMSA_KFvSD_RKNS9_12FileDatabaseEEEESt10_Select1stISM_ESt4lessIS5_ESaISM_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISM_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IMN6Assimp7Blender9StructureEKFSt10shared_ptrINS9_8ElemBaseEEvEMSA_KFvSD_RKNS9_12FileDatabaseEEEESt10_Select1stISM_ESt4lessIS5_ESaISM_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISM_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IMN6Assimp7Blender9StructureEKFSt10shared_ptrINS9_8ElemBaseEEvEMSA_KFvSD_RKNS9_12FileDatabaseEEEESt10_Select1stISM_ESt4lessIS5_ESaISM_EE8_M_eraseEPSt13_Rb_tree_nodeISM_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IMN6Assimp7Blender9StructureEKFSt10shared_ptrINS9_8ElemBaseEEvEMSA_KFvSD_RKNS9_12FileDatabaseEEEESt10_Select1stISM_ESt4lessIS5_ESaISM_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISM_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IMN6Assimp7Blender9StructureEKFSt10shared_ptrINS9_8ElemBaseEEvEMSA_KFvSD_RKNS9_12FileDatabaseEEEESt10_Select1stISM_ESt4lessIS5_ESaISM_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISM_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IMN6Assimp7Blender9StructureEKFSt10shared_ptrINS9_8ElemBaseEEvEMSA_KFvSD_RKNS9_12FileDatabaseEEEESt10_Select1stISM_ESt4lessIS5_ESaISM_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISM_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 96) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !150

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IMN6Assimp7Blender9StructureEKFSt10shared_ptrINS9_8ElemBaseEEvEMSA_KFvSD_RKNS9_12FileDatabaseEEEESt10_Select1stISM_ESt4lessIS5_ESaISM_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISM_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender8ElemBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender5SceneD0Ev(ptr noundef nonnull align 8 dereferenceable(1176) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN6Assimp7Blender5SceneD2Ev(ptr noundef nonnull align 8 dereferenceable(1176) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1176) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender2IDD0Ev(ptr noundef nonnull align 8 dereferenceable(1048) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1048) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender8ListBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10__weak_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.d = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 4              ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.c, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i32 [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  %i.h = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.h, label %bb.e, label %_ZNSt10__weak_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !151
  br label %_ZNSt10__weak_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt10__weak_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8              ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10__weak_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.n, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4
  %i.s = load ptr, ptr %i.m, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #25, !inline_history !152
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #25, !inline_history !152
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.y = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i2 = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.j:                                             ; preds = %bb.h
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i4 = phi i32 [ %i.q, %bb.i ], [ %i.aa, %bb.j ]
  %i.ab = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ab, label %bb.k, label %_ZNSt12__shared_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #25
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10__weak_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender8ListBaseD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10__weak_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.d = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 4              ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.c, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i = phi i32 [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  %i.h = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.h, label %bb.e, label %_ZNSt10__weak_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !50
  br label %_ZNSt10__weak_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt10__weak_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8              ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i, label %_ZN6Assimp7Blender8ListBaseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10__weak_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.n, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4
  %i.s = load ptr, ptr %i.m, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #25, !inline_history !51
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #25, !inline_history !51
  br label %_ZN6Assimp7Blender8ListBaseD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.y = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i2.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i2.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

bb.j:                                             ; preds = %bb.h
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i4.i = phi i32 [ %i.q, %bb.i ], [ %i.aa, %bb.j ]
  %i.ab = icmp eq i32 %.0.i.i.i.i4.i, 1
  br i1 %i.ab, label %bb.k, label %_ZN6Assimp7Blender8ListBaseD2Ev.exit, !prof !5

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #25
  br label %_ZN6Assimp7Blender8ListBaseD2Ev.exit

_ZN6Assimp7Blender8ListBaseD2Ev.exit:             ; preds = %_ZNSt10__weak_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 6                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #26 ; 2 uses
  store ptr %i.f, ptr %0, align 8
  %i.g = sub nsw i64 %.sroa.speculated, %i.b
  %i.h = lshr i64 %i.g, 1
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.l, %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_allocate_nodeEv.exit.i ], [ %i.i, %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #26
          to label %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.k, ptr %.011.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.i, label %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE15_M_create_nodesEPPS3_S7_.exit, !llvm.loop !153

bb.a:                                             ; preds = %.lr.ph.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #25 ; 0 uses
  %i.q = icmp ult ptr %i.i, %.011.i
  br i1 %i.q, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.r = load ptr, ptr %.06.i.i, align 8
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef 512) #27
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.t = icmp ult ptr %i.s, %.011.i
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i, !llvm.loop !79

_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #28
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #29
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.x = extractvalue { ptr, i32 } %i.u, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #25 ; 0 uses
  %i.z = load ptr, ptr %0, align 8
  %i.aa = load i64, ptr %i.d, align 8
  %i.ab = shl i64 %i.aa, 3
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ab) #27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #28
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ac

_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE15_M_create_nodesEPPS3_S7_.exit: ; preds = %_ZNSt11_Deque_baseIPN6Assimp7Blender6ObjectESaIS3_EE16_M_allocate_nodeEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %i.ae, align 8
  %i.af = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ak, ptr %i.al, align 8
  %i.am = load ptr, ptr %i.ak, align 8            ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.am, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ao, ptr %i.ap, align 8
  store ptr %i.af, ptr %i.ad, align 8
  %i.aq = and i64 %1, 63
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aq
  store ptr %i.ar, ptr %i.aj, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #29
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 6                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #26 ; 2 uses
  store ptr %i.f, ptr %0, align 8
  %i.g = sub nsw i64 %.sroa.speculated, %i.b
  %i.h = lshr i64 %i.g, 1
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.l, %_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE16_M_allocate_nodeEv.exit.i ], [ %i.i, %_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #26
          to label %_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.k, ptr %.011.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.i, label %_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE15_M_create_nodesEPPS3_S7_.exit, !llvm.loop !154

bb.a:                                             ; preds = %.lr.ph.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #25 ; 0 uses
  %i.q = icmp ult ptr %i.i, %.011.i
  br i1 %i.q, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.r = load ptr, ptr %.06.i.i, align 8
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef 512) #27
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.t = icmp ult ptr %i.s, %.011.i
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i, !llvm.loop !78

_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #28
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseIPN6Assimp7Blender10CollectionESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
end_hunk_10
begin_hunk_11_@_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE17_M_initialize_mapEm:_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE15_M_allocate_mapEm.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #29
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.x = extractvalue { ptr, i32 } %i.u, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #25 ; 0 uses
  %i.z = load ptr, ptr %0, align 8
  %i.aa = load i64, ptr %i.d, align 8
  %i.ab = shl i64 %i.aa, 3
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ab) #27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #28
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ac

_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE15_M_create_nodesEPPS4_S8_.exit: ; preds = %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_allocate_nodeEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %i.ae, align 8
  %i.af = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ak, ptr %i.al, align 8
  %i.am = load ptr, ptr %i.ak, align 8            ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.am, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ao, ptr %i.ap, align 8
  store ptr %i.af, ptr %i.ad, align 8
  %i.aq = and i64 %1, 63
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aq
  store ptr %i.ar, ptr %i.aj, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #29
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::_Deque_iterator.111", align 16 ; 5 uses
  %2 = alloca %"struct.std::_Deque_iterator.111", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.g = load <2 x ptr>, ptr %i.a, align 8, !noalias !165
  store <2 x ptr> %i.g, ptr %1, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load <2 x ptr>, ptr %i.b, align 8, !noalias !165
  store <2 x ptr> %i.i, ptr %i.h, align 16
  %i.j = load <2 x ptr>, ptr %i.d, align 8, !noalias !168
  store <2 x ptr> %i.j, ptr %2, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load <2 x ptr>, ptr %i.e, align 8, !noalias !168
  store <2 x ptr> %i.l, ptr %i.k, align 16
  invoke void @_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE19_M_destroy_data_auxESt15_Deque_iteratorIS4_RS4_PS4_ESA_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull dead_on_return %1, ptr noundef nonnull dead_on_return %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.m = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNSt11_Deque_baseISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = icmp ult ptr %i.n, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.r = load ptr, ptr %.06.i.i, align 8
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef 512) #27
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.t = icmp ult ptr %.06.i.i, %i.o
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i, !llvm.loop !156

_ZNSt11_Deque_baseISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %0, align 8
  br label %_ZNSt11_Deque_baseISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i

_ZNSt11_Deque_baseISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i: ; preds = %_ZNSt11_Deque_baseISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i, %bb.c
  %i.u = phi ptr [ %.pre.i, %_ZNSt11_Deque_baseISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i ], [ %i.m, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8
  %i.x = shl i64 %i.w, 3
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #27
  br label %_ZNSt11_Deque_baseISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EED2Ev.exit

_ZNSt11_Deque_baseISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EED2Ev.exit: ; preds = %bb.b, %_ZNSt11_Deque_baseISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i
  ret void

bb.d:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE19_M_destroy_data_auxESt15_Deque_iteratorIS4_RS4_PS4_ESA_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.036 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp ult ptr %.036, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN6Assimp7Blender8MaterialEEEvT_S6_.exit
  %.pre = load ptr, ptr %i.a, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.f = phi ptr [ %i.b, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.z, %._crit_edge.loopexit ]
  %.not = icmp eq ptr %i.f, %.lcssa
  %i.g = load ptr, ptr %1, align 8                ; 4 uses
  br i1 %.not, label %bb.u, label %bb.h

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIPSt10shared_ptrIN6Assimp7Blender8MaterialEEEvT_S6_.exit
  %.037 = phi ptr [ %.0, %_ZSt8_DestroyIPSt10shared_ptrIN6Assimp7Blender8MaterialEEEvT_S6_.exit ], [ %.036, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %.037, align 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i
  %.05.i.i.idx = phi i64 [ %.05.i.i.add, %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %.05.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.h, i64 %.05.i.i.idx
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.ptr, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4
  %i.p = load ptr, ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #25, !inline_history !171
  %i.s = load ptr, ptr %i.j, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #25, !inline_history !171
  br label %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.v = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.n, %bb.e ], [ %i.x, %bb.f ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i, !prof !5

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #25
  br label %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %.05.i.i.add = add nuw nsw i64 %.05.i.i.idx, 16 ; 2 uses
  %.not.i.i = icmp eq i64 %.05.i.i.add, 512
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN6Assimp7Blender8MaterialEEEvT_S6_.exit, label %.lr.ph.i.i, !llvm.loop !172

_ZSt8_DestroyIPSt10shared_ptrIN6Assimp7Blender8MaterialEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i
  %.0 = getelementptr inbounds nuw i8, ptr %.037, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.aa = icmp ult ptr %.0, %i.z
  br i1 %i.aa, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !173

bb.h:                                             ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not4.i.i = icmp eq ptr %i.g, %i.ac
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN6Assimp7Blender8MaterialEEEvT_S6_.exit14, label %.lr.ph.i.i6

.lr.ph.i.i6:                                      ; preds = %bb.h, %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i12
  %.05.i.i7 = phi ptr [ %i.au, %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i12 ], [ %i.g, %bb.h ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i7, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8            ; 8 uses
  %.not.i.i.i.i.i8 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i8, label %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i12, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i6
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.af, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.ae, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #25, !inline_history !171
  %i.an = load ptr, ptr %i.ae, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #25, !inline_history !171
  br label %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i12

bb.k:                                             ; preds = %bb.i
  %i.aq = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i9 = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i9, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i10

bb.m:                                             ; preds = %bb.k
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i10

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i10: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i11 = phi i32 [ %i.ai, %bb.l ], [ %i.as, %bb.m ]
  %i.at = icmp eq i32 %.0.i.i.i.i.i.i.i11, 1
  br i1 %i.at, label %bb.n, label %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i12, !prof !5

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i10
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #25
  br label %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i12

_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i12: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i10, %bb.j, %.lr.ph.i.i6
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i7, i64 16 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.au, %i.ac
  br i1 %.not.i.i13, label %_ZSt8_DestroyIPSt10shared_ptrIN6Assimp7Blender8MaterialEEEvT_S6_.exit14, label %.lr.ph.i.i6, !llvm.loop !172

_ZSt8_DestroyIPSt10shared_ptrIN6Assimp7Blender8MaterialEEEvT_S6_.exit14: ; preds = %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i12, %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = load ptr, ptr %2, align 8               ; 2 uses
  %.not4.i.i15 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not4.i.i15, label %_ZSt8_DestroyIPSt10shared_ptrIN6Assimp7Blender8MaterialEEEvT_S6_.exit24, label %.lr.ph.i.i16

.lr.ph.i.i16:                                     ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN6Assimp7Blender8MaterialEEEvT_S6_.exit14, %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i22
  %.05.i.i17 = phi ptr [ %i.bp, %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i22 ], [ %i.aw, %_ZSt8_DestroyIPSt10shared_ptrIN6Assimp7Blender8MaterialEEEvT_S6_.exit14 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i17, i64 8
  %i.az = load ptr, ptr %i.ay, align 8            ; 8 uses
  %.not.i.i.i.i.i18 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i18, label %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i22, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ba, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4
  %i.bf = load ptr, ptr %i.az, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #25, !inline_history !171
  %i.bi = load ptr, ptr %i.az, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #25, !inline_history !171
  br label %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i22

bb.q:                                             ; preds = %bb.o
  %i.bl = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i19 = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i19, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i20

bb.s:                                             ; preds = %bb.q
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i20

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i20: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i.i21 = phi i32 [ %i.bd, %bb.r ], [ %i.bn, %bb.s ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i.i.i21, 1
  br i1 %i.bo, label %bb.t, label %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i22, !prof !5

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i20
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #25
  br label %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i22

_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i22: ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i20, %bb.p, %.lr.ph.i.i16
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i17, i64 16 ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.bp, %i.ax
  br i1 %.not.i.i23, label %_ZSt8_DestroyIPSt10shared_ptrIN6Assimp7Blender8MaterialEEEvT_S6_.exit24, label %.lr.ph.i.i16, !llvm.loop !172

bb.u:                                             ; preds = %._crit_edge
  %i.bq = load ptr, ptr %2, align 8               ; 2 uses
  %.not4.i.i25 = icmp eq ptr %i.g, %i.bq
  br i1 %.not4.i.i25, label %_ZSt8_DestroyIPSt10shared_ptrIN6Assimp7Blender8MaterialEEEvT_S6_.exit24, label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %bb.u, %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i32
  %.05.i.i27 = phi ptr [ %i.ci, %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i32 ], [ %i.g, %bb.u ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i27, i64 8
  %i.bs = load ptr, ptr %i.br, align 8            ; 8 uses
  %.not.i.i.i.i.i28 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i28, label %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i32, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i26
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 4 uses
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 4294967297
  %i.bw = trunc i64 %i.bu to i32                  ; 2 uses
  br i1 %i.bv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bt, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 0, ptr %i.bx, align 4
  %i.by = load ptr, ptr %i.bs, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #25, !inline_history !171
  %i.cb = load ptr, ptr %i.bs, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  tail call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #25, !inline_history !171
  br label %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i32

bb.x:                                             ; preds = %bb.v
  %i.ce = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i29 = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i.i.i.i29, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = add nsw i32 %i.bw, -1
  store i32 %i.cf, ptr %i.bt, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i30

bb.z:                                             ; preds = %bb.x
  %i.cg = atomicrmw volatile add ptr %i.bt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i30

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i30: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i.i31 = phi i32 [ %i.bw, %bb.y ], [ %i.cg, %bb.z ]
  %i.ch = icmp eq i32 %.0.i.i.i.i.i.i.i31, 1
  br i1 %i.ch, label %bb.aa, label %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i32, !prof !5

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i30
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #25
  br label %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i32

_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i32: ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i30, %bb.w, %.lr.ph.i.i26
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i27, i64 16 ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.ci, %i.bq
  br i1 %.not.i.i33, label %_ZSt8_DestroyIPSt10shared_ptrIN6Assimp7Blender8MaterialEEEvT_S6_.exit24, label %.lr.ph.i.i26, !llvm.loop !172

_ZSt8_DestroyIPSt10shared_ptrIN6Assimp7Blender8MaterialEEEvT_S6_.exit24: ; preds = %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i22, %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i32, %bb.u, %_ZSt8_DestroyIPSt10shared_ptrIN6Assimp7Blender8MaterialEEEvT_S6_.exit14
  ret void
}

declare noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender8MaterialD2Ev(ptr noundef nonnull align 8 dereferenceable(1720) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp7Blender4MTexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.a
  %.idx = phi i64 [ 1720, %bb.a ], [ %.add, %_ZNSt12__shared_ptrIN6Assimp7Blender4MTexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %.add = add nsw i64 %.idx, -16                  ; 3 uses
  %.ptr1 = getelementptr inbounds i8, ptr %0, i64 %.add
  %i.a = getelementptr inbounds nuw i8, ptr %.ptr1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp7Blender4MTexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !174
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !174
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender4MTexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.f ], [ %i.p, %bb.g ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.h, label %_ZNSt12__shared_ptrIN6Assimp7Blender4MTexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender4MTexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp7Blender4MTexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.r = icmp eq i64 %.add, 1432
  br i1 %i.r, label %bb.i, label %bb.b

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp7Blender4MTexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.t = load ptr, ptr %i.s, align 8              ; 8 uses
  %.not.i.i3 = icmp eq ptr %i.t, null
  br i1 %.not.i.i3, label %_ZNSt12__shared_ptrIN6Assimp7Blender5GroupELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.u, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4
  %i.z = load ptr, ptr %i.t, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #25, !inline_history !175
  %i.ac = load ptr, ptr %i.t, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #25, !inline_history !175
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender5GroupELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.af = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i4 = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i4, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5

bb.n:                                             ; preds = %bb.l
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i6 = phi i32 [ %i.x, %bb.m ], [ %i.ah, %bb.n ]
  %i.ai = icmp eq i32 %.0.i.i.i.i6, 1
  br i1 %i.ai, label %bb.o, label %_ZNSt12__shared_ptrIN6Assimp7Blender5GroupELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #25
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender5GroupELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp7Blender5GroupELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5, %bb.o
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender8MaterialD0Ev(ptr noundef nonnull align 8 dereferenceable(1720) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp7Blender4MTexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.a
  %.idx.i = phi i64 [ 1720, %bb.a ], [ %.add.i, %_ZNSt12__shared_ptrIN6Assimp7Blender4MTexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ]
  %.add.i = add nsw i64 %.idx.i, -16              ; 3 uses
  %.ptr1.i = getelementptr inbounds i8, ptr %0, i64 %.add.i
  %i.a = getelementptr inbounds nuw i8, ptr %.ptr1.i, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN6Assimp7Blender4MTexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !176
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !176
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender4MTexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.f ], [ %i.p, %bb.g ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.h, label %_ZNSt12__shared_ptrIN6Assimp7Blender4MTexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !5

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender4MTexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN6Assimp7Blender4MTexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.r = icmp eq i64 %.add.i, 1432
  br i1 %i.r, label %bb.i, label %bb.b

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp7Blender4MTexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.t = load ptr, ptr %i.s, align 8              ; 8 uses
  %.not.i.i3.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i3.i, label %_ZN6Assimp7Blender8MaterialD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.u, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4
  %i.z = load ptr, ptr %i.t, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #25, !inline_history !177
  %i.ac = load ptr, ptr %i.t, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #25, !inline_history !177
  br label %_ZN6Assimp7Blender8MaterialD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.af = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i4.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i4.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5.i

bb.n:                                             ; preds = %bb.l
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i6.i = phi i32 [ %i.x, %bb.m ], [ %i.ah, %bb.n ]
  %i.ai = icmp eq i32 %.0.i.i.i.i6.i, 1
  br i1 %i.ai, label %bb.o, label %_ZN6Assimp7Blender8MaterialD2Ev.exit, !prof !5

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #25
  br label %_ZN6Assimp7Blender8MaterialD2Ev.exit

_ZN6Assimp7Blender8MaterialD2Ev.exit:             ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5.i, %bb.o
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1720) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE7_M_copyILb0ENSD_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS7_ESI_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.d = load i32, ptr %1, align 8
  store i32 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = invoke noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE7_M_copyILb0ENSD_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS7_ESI_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.i, ptr %i.j, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.a
  %.0.in35 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.036 = load ptr, ptr %.0.in35, align 8         ; 2 uses
  %.not3237 = icmp eq ptr %.036, null
  br i1 %.not3237, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.l
  %.039 = phi ptr [ %.0, %bb.l ], [ %.036, %bb.e ] ; 4 uses
  %.03138 = phi ptr [ %i.l, %bb.l ], [ %i.b, %bb.e ] ; 2 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26
          to label %bb.f unwind label %bb.i       ; 8 uses

bb.f:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.039, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false)
  %i.o = load i32, ptr %.039, align 8
  store i32 %i.o, ptr %i.l, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.03138, i64 16
  store ptr %i.l, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.03138, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.039, i64 24
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not33 = icmp eq ptr %i.t, null
  br i1 %.not33, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = invoke noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE7_M_copyILb0ENSD_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS7_ESI_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.t, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.u, ptr %i.v, align 8
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph, %bb.g
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.k, %bb.d ]
  %.030 = extractvalue { ptr, i32 } %.pn, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %.030) #25 ; 0 uses
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_rethrow() #28
          to label %bb.p unwind label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.f
  %.0.in = getelementptr inbounds nuw i8, ptr %.039, i64 16
  %.0 = load ptr, ptr %.0.in, align 8             ; 2 uses
  %.not32 = icmp eq ptr %.0, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !178

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.y

._crit_edge:                                      ; preds = %bb.l, %bb.e
  ret ptr %i.b

bb.o:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #29
  unreachable

bb.p:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !179

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 56
  %i.g = load ptr, ptr %i.f, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef %i.g)
          to label %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #29
  unreachable

_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit: ; preds = %.lr.ph
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 88) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !180

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
end_hunk_11
begin_hunk_12_@_ZN6Assimp6Logger13formatMessageIJRA2_KcEPS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS9_SA_EEOT0_DpOT_:bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #25
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJERA2_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %5, ptr noundef nonnull align 1 dereferenceable(2) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %5, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %5, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #25
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #25
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #25
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERA2_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %3) #25
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(2) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !205
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !205
  store i8 0, ptr %i.c, align 8, !alias.scope !205
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !205 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !205 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !205 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !205 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !205
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #27
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #25
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #25
  resume { ptr, i32 } %i.p
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN6Assimp12StreamReaderILb1ELb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN6Assimp12StreamReaderILb1ELb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN6Assimp12StreamReaderILb1ELb1EEEEvPT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !206
  %i.n = load ptr, ptr %i.e, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !206
  br label %_ZSt8_DestroyIN6Assimp12StreamReaderILb1ELb1EEEEvPT_.exit

bb.f:                                             ; preds = %bb.d
  %i.q = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.i, %bb.g ], [ %i.s, %bb.h ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.i, label %_ZSt8_DestroyIN6Assimp12StreamReaderILb1ELb1EEEEvPT_.exit, !prof !5

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25
  br label %_ZSt8_DestroyIN6Assimp12StreamReaderILb1ELb1EEEEvPT_.exit

_ZSt8_DestroyIN6Assimp12StreamReaderILb1ELb1EEEEvPT_.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN6Assimp12StreamReaderILb1ELb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6Assimp12StreamReaderILb1ELb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6Assimp12StreamReaderILb1ELb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #25
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt10_ConstructIN6Assimp12StreamReaderILb1ELb1EEEJRSt10shared_ptrINS0_8IOStreamEERbEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  store ptr %i.a, ptr %3, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  store ptr %i.d, ptr %i.b, align 8
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread, label %bb.b

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread: ; preds = %bb.a
  %i.e = load i8, ptr %2, align 1, !range !19, !noundef !20
  store ptr %i.a, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.f, align 8
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread9

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread9: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.g, align 4
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.g, align 4
  %i.l = load i8, ptr %2, align 1, !range !19, !noundef !20
  store ptr %i.a, ptr %0, align 8
  store ptr %i.d, ptr %i.i, align 8
  br label %bb.c

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit: ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  %i.n = load i8, ptr %2, align 1, !range !19, !noundef !20 ; 2 uses
  %.pr.pre = load ptr, ptr %i.b, align 8          ; 2 uses
  %i.o = load <2 x ptr>, ptr %3, align 16
  store <2 x ptr> %i.o, ptr %0, align 8
  %.not.i.i.i.i4 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i.i.i4, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread9, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit
  %i.p = phi i8 [ %i.l, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread9 ], [ %i.n, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit ] ; 2 uses
  %.pr12 = phi ptr [ %i.d, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread9 ], [ %.pr.pre, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %.pr12, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %i.q, align 4
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i: ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread, %bb.e, %bb.d, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit
  %i.v = phi i8 [ %i.e, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread ], [ %i.p, %bb.e ], [ %i.p, %bb.d ], [ %i.n, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false)
  store i8 %i.v, ptr %i.x, align 8
  invoke void @_ZN6Assimp12StreamReaderILb1ELb1EE11InternBeginEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
          to label %_ZN6Assimp12StreamReaderILb1ELb1EEC2ESt10shared_ptrINS_8IOStreamEEb.exit unwind label %.body

.body:                                            ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(49) %0) #25
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #25
  resume { ptr, i32 } %i.y

_ZN6Assimp12StreamReaderILb1ELb1EEC2ESt10shared_ptrINS_8IOStreamEEb.exit: ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i
  %i.z = load ptr, ptr %i.b, align 8              ; 8 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EEC2ESt10shared_ptrINS_8IOStreamEEb.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.aa, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4
  %i.af = load ptr, ptr %i.z, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #25, !inline_history !9
  %i.ai = load ptr, ptr %i.z, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #25, !inline_history !9
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.al = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i5 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i5, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.ad, %bb.i ], [ %i.an, %bb.j ]
  %i.ao = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ao, label %bb.k, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #25
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EEC2ESt10shared_ptrINS_8IOStreamEEb.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp12StreamReaderILb1ELb1EE11InternBeginEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.127)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 2 uses
  %i.m = icmp eq i64 %i.g, %i.l
  br i1 %i.m, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.128)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.p = sub i64 %i.g, %i.l                       ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #26 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.q, ptr %i.s, align 8
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %i.q, i64 noundef 1, i64 noundef %i.p)
  %i.y = load ptr, ptr %i.r, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 %i.x     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.z, ptr %i.ab, align 8
  ret void

bb.j:                                             ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.n, %bb.h ], [ %i.b, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb1ELb1EEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !81
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !81
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #28
  unreachable

_ZNKSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = sdiv exact i64 %i.g, 72                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 128102389400760775)
  %i.m = select i1 %i.k, i64 128102389400760775, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = mul nuw nsw i64 %i.m, 72                 ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #26 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 5 uses
  %i.s = load i64, ptr %2, align 8
  store i64 %i.s, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  store ptr %i.v, ptr %i.t, align 8
  %i.w = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load i64, ptr %i.x, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.y, ptr %i.a, align 8
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNKSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE12_M_check_lenEmPKc.exit
  %i.aa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.aa, ptr %i.t, align 8
  %i.ab = load i64, ptr %i.a, align 8
  store i64 %i.ab, ptr %i.v, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNKSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ac = phi ptr [ %i.aa, %.noexc ], [ %i.v, %_ZNKSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.y, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.ad = load i8, ptr %i.w, align 1
  store i8 %i.ad, ptr %i.ac, align 1
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.w, i64 %i.y, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.ae = load i64, ptr %i.a, align 8             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.ae, ptr %i.af, align 8
  %i.ag = load ptr, ptr %i.t, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 32, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bc, %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.e ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.bb, %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.ak = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !210, !noalias !207
  store i64 %i.ak, ptr %.012.i.i.i, align 8, !alias.scope !207, !noalias !210
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.an, ptr %i.al, align 8, !alias.scope !207, !noalias !210
  %i.ao = load ptr, ptr %i.am, align 8, !alias.scope !210, !noalias !207 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !210, !noalias !207 ; 3 uses
  %i.at = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.at)
  %i.au = add nuw nsw i64 %i.as, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.ap, i64 %i.au, i1 false), !alias.scope !212
  br label %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ao, ptr %i.al, align 8, !alias.scope !207, !noalias !210
  %i.av = load i64, ptr %i.ap, align 8, !alias.scope !210, !noalias !207
  store i64 %i.av, ptr %i.an, align 8, !alias.scope !207, !noalias !210
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !210, !noalias !207
  br label %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.aw = phi i64 [ %i.as, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.aw, ptr %i.ay, align 8, !alias.scope !207, !noalias !210
  store ptr %i.ap, ptr %i.am, align 8, !alias.scope !210, !noalias !207
  store i64 0, ptr %i.ax, align 8, !alias.scope !210, !noalias !207
  store i8 0, ptr %i.ap, align 8, !alias.scope !210, !noalias !207
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 32, i1 false), !alias.scope !212
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bb, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !31

_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.bc, %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 72 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bw, %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.bd, %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 6 uses
  %.0911.i.i.i29 = phi ptr [ %i.bv, %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.be = load i64, ptr %.0911.i.i.i29, align 8, !alias.scope !216, !noalias !213
  store i64 %i.be, ptr %.012.i.i.i28, align 8, !alias.scope !213, !noalias !216
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 24 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !alias.scope !213, !noalias !216
  %i.bi = load ptr, ptr %i.bg, align 8, !alias.scope !216, !noalias !213 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24 ; 5 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !216, !noalias !213 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bn)
  %i.bo = add nuw nsw i64 %i.bm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bh, ptr noundef nonnull align 8 dereferenceable(1) %i.bj, i64 %i.bo, i1 false), !alias.scope !218
  br label %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.bi, ptr %i.bf, align 8, !alias.scope !213, !noalias !216
  %i.bp = load i64, ptr %i.bj, align 8, !alias.scope !216, !noalias !213
  store i64 %i.bp, ptr %i.bh, align 8, !alias.scope !213, !noalias !216
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !alias.scope !216, !noalias !213
  br label %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.g
  %i.bq = phi i64 [ %i.bm, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16
  store i64 %i.bq, ptr %i.bs, align 8, !alias.scope !213, !noalias !216
  store ptr %i.bj, ptr %i.bg, align 8, !alias.scope !216, !noalias !213
  store i64 0, ptr %i.br, align 8, !alias.scope !216, !noalias !213
  store i8 0, ptr %i.bj, align 8, !alias.scope !216, !noalias !213
end_hunk_12
begin_hunk_13_@_ZN15DeadlyErrorBaseC2IJERA15_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_:bb.a
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
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #25
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #25
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Assimp::Blender::FileBlockHead", align 8 ; 9 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 1152
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.l = icmp eq i64 %2, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph44

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit
  %i.m = icmp eq i64 %i.s, 0
  br i1 %i.m, label %._crit_edge, label %.lr.ph44, !llvm.loop !219

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %._crit_edge, %.lr.ph.i8.i
  %.sroa.0.05.i.i = phi ptr [ %i.n, %.lr.ph.i8.i ], [ %storemerge14.lcssa, %._crit_edge ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -72 ; 4 uses
  call void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_(ptr %0, ptr nonnull %i.n, ptr nonnull %i.n, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = icmp sgt i64 %i.p, 72
  br i1 %i.q, label %.lr.ph.i8.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit, !llvm.loop !220

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit: ; preds = %.lr.ph.i8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1443 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.01542 = phi i64 [ %i.s, %bb.b ], [ %2, %.lr.ph ]
  %i.r = phi i64 [ %i.cp, %bb.b ], [ %i.c, %.lr.ph ]
  %i.s = add nsw i64 %.01542, -1                  ; 3 uses
  %i.t = udiv i64 %i.r, 144
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.t ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %storemerge1443, i64 -72 ; 2 uses
  %i.w = load i64, ptr %i.f, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  %i.z = icmp ult i64 %i.w, %i.y
  %i.aa = getelementptr inbounds i8, ptr %storemerge1443, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8            ; 4 uses
  br i1 %i.z, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph44
  %i.ac = icmp ult i64 %i.y, %i.ab
  br i1 %i.ac, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp ult i64 %i.w, %i.ab
  %..i.i = select i1 %i.ad, ptr %i.v, ptr %i.e
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i

bb.e:                                             ; preds = %.lr.ph44
  %i.ae = icmp ult i64 %i.w, %i.ab
  br i1 %i.ae, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = icmp ult i64 %i.y, %i.ab
  %.30.i.i = select i1 %i.af, ptr %i.v, ptr %i.u
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.sink.i.i = phi ptr [ %i.u, %bb.c ], [ %i.e, %bb.e ], [ %.30.i.i, %bb.f ], [ %..i.i, %bb.d ]
  call void @_ZSt4swapIN6Assimp7Blender13FileBlockHeadEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %.sink.i.i) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZSt4swapIN6Assimp7Blender13FileBlockHeadEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i
  %.sroa.010.0.i.i = phi ptr [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i ], [ %i.ak, %_ZSt4swapIN6Assimp7Blender13FileBlockHeadEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge1443, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i ], [ %.sroa.0.1.i.i, %_ZSt4swapIN6Assimp7Blender13FileBlockHeadEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit ]
  %i.ag = load i64, ptr %i.g, align 8             ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %bb.g ], [ %i.ak, %bb.h ] ; 15 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 48
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = icmp ult i64 %i.ai, %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 72 ; 2 uses
  br i1 %i.aj, label %bb.h, label %.preheader.i.i, !llvm.loop !221

.preheader.i.i:                                   ; preds = %bb.h, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.h ] ; 8 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -72 ; 6 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = icmp ult i64 %i.ag, %i.am
  br i1 %i.an, label %.preheader.i.i, label %bb.i, !llvm.loop !222

bb.i:                                             ; preds = %.preheader.i.i
  %i.ao = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ao, label %bb.j, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ap = load i64, ptr %.sroa.010.1.i.i, align 8
  store i64 %i.ap, ptr %3, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8 ; 3 uses
  store ptr %i.i, ptr %i.h, align 8
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 24 ; 9 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16
  %i.av = load i64, ptr %i.au, align 8            ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  store ptr %i.ar, ptr %i.h, align 8
  %i.ay = load i64, ptr %i.as, align 8
  store i64 %i.ay, ptr %i.i, align 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.k
  %i.az = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.av, %bb.k ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 3 uses
  store i64 %i.az, ptr %i.j, align 8
  store ptr %i.as, ptr %i.aq, align 8
  store i64 0, ptr %i.ba, align 8
  store i8 0, ptr %i.as, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 32, i1 false)
  %i.bc = load i64, ptr %.sroa.0.1.i.i, align 8
  store i64 %i.bc, ptr %.sroa.010.1.i.i, align 8
  %i.bd = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -64 ; 7 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 4 uses
  %i.bf = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -48 ; 8 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.bh = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -56 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8            ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bj)
  switch i64 %i.bi, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.bk = load i8, ptr %i.be, align 1
  store i8 %i.bk, ptr %i.as, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 1 %i.be, i64 %i.bi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.bl = load i64, ptr %i.bh, align 8            ; 2 uses
  store i64 %i.bl, ptr %i.ba, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bl
  store i8 0, ptr %i.bm, align 1
  %.pre.i.i.i = load ptr, ptr %i.bd, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit.i

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  store ptr %i.be, ptr %i.aq, align 8
  %i.bn = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -56
  %i.bo = load i64, ptr %i.bn, align 8
  store i64 %i.bo, ptr %i.ba, align 8
  %i.bp = load i64, ptr %i.bf, align 8
  store i64 %i.bp, ptr %i.as, align 8
  store ptr %i.bf, ptr %i.bd, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit.i

_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit.i:  ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
  %i.bq = phi ptr [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.bf, %bb.o ]
  %i.br = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -56 ; 4 uses
  store i64 0, ptr %i.br, align 8
  store i8 0, ptr %i.bq, align 1
  %i.bs = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i64 32, i1 false)
  %i.bt = load i64, ptr %3, align 8
  store i64 %i.bt, ptr %.sroa.0.1.i.i, align 8
  %i.bu = load ptr, ptr %i.bd, align 8            ; 6 uses
  %i.bv = icmp eq ptr %i.bu, %i.bf
  %i.bw = load ptr, ptr %i.h, align 8             ; 6 uses
  %i.bx = icmp eq ptr %i.bw, %i.i                 ; 2 uses
  br i1 %i.bv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i: ; preds = %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit.i
  br i1 %i.bx, label %bb.p, label %.thread.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5.i: ; preds = %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit.i
  br i1 %i.bx, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i6.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  %i.by = load i64, ptr %i.j, align 8             ; 3 uses
  %i.bz = icmp ult i64 %i.by, 16
  call void @llvm.assume(i1 %i.bz)
  %.not21.i.i8.i = icmp eq ptr %3, %.sroa.0.1.i.i
  br i1 %.not21.i.i8.i, label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit13.i, label %bb.q, !prof !5

bb.q:                                             ; preds = %bb.p
  switch i64 %i.by, label %bb.s [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9.i
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.ca = load i8, ptr %i.bw, align 1
  store i8 %i.ca, ptr %i.bu, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr align 1 %i.bw, i64 %i.by, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.cb = load i64, ptr %i.j, align 8             ; 2 uses
  store i64 %i.cb, ptr %i.br, align 8
  %i.cc = load ptr, ptr %i.bd, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cb
  store i8 0, ptr %i.cd, align 1
  %.pre.i.i10.i = load ptr, ptr %i.h, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit13.i

.thread.i.i12.i:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  store ptr %i.bw, ptr %i.bd, align 8
  %i.ce = load i64, ptr %i.j, align 8
  store i64 %i.ce, ptr %i.br, align 8
  %i.cf = load i64, ptr %i.i, align 8
  store i64 %i.cf, ptr %i.bf, align 8
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i6.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5.i
  %i.cg = load i64, ptr %i.bf, align 8
  store ptr %i.bw, ptr %i.bd, align 8
  %i.ch = load i64, ptr %i.j, align 8
  store i64 %i.ch, ptr %i.br, align 8
  %i.ci = load i64, ptr %i.i, align 8
  store i64 %i.ci, ptr %i.bf, align 8
  %.not.i.i7.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i7.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i6.i
  store ptr %i.bu, ptr %i.h, align 8
  store i64 %i.cg, ptr %i.i, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit13.i

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i6.i, %.thread.i.i12.i
  store ptr %i.i, ptr %i.h, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit13.i

_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit13.i: ; preds = %bb.u, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9.i, %bb.p
  %i.cj = phi ptr [ %.pre.i.i10.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9.i ], [ %i.bu, %bb.t ], [ %i.i, %bb.u ], [ %i.bw, %bb.p ]
  store i64 0, ptr %i.j, align 8
  store i8 0, ptr %i.cj, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.ck = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.i
  br i1 %i.cl, label %_ZSt4swapIN6Assimp7Blender13FileBlockHeadEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit13.i
  %i.cm = load i64, ptr %i.i, align 8
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #27
  br label %_ZSt4swapIN6Assimp7Blender13FileBlockHeadEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit

_ZSt4swapIN6Assimp7Blender13FileBlockHeadEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit: ; preds = %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit13.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.g, !llvm.loop !223

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit: ; preds = %bb.i
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1443, i64 noundef %i.s)
  %i.co = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.cp = sub i64 %i.co, %i.a                     ; 2 uses
  %i.cq = icmp sgt i64 %i.cp, 1152
  br i1 %i.cq, label %bb.b, label %.loopexit, !llvm.loop !219

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit, %bb.a, %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Assimp::Blender::FileBlockHead", align 8 ; 8 uses
  %4 = alloca %"struct.Assimp::Blender::FileBlockHead", align 8 ; 6 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 72                  ; 2 uses
  %i.e = icmp slt i64 %i.c, 144
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2
  %i.g = lshr i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.c

bb.c:                                             ; preds = %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit13, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.am, %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit13 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.p = getelementptr inbounds [72 x i8], ptr %0, i64 %.08 ; 7 uses
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  store i64 %i.q, ptr %3, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  store ptr %i.s, ptr %i.h, align 8
  %i.z = load i64, ptr %i.t, align 8
  store i64 %i.z, ptr %i.i, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit

_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit:    ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = phi ptr [ %i.i, %bb.d ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.ab = phi i64 [ %i.w, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.t, ptr %i.r, align 8
  store i64 0, ptr %i.ac, align 8
  store i8 0, ptr %i.t, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false)
  store i64 %i.q, ptr %4, align 8
  store ptr %i.m, ptr %i.l, align 8
  %i.ae = icmp eq ptr %i.aa, %i.i
  br i1 %i.ae, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

bb.e:                                             ; preds = %_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit
  %i.af = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.ag, i1 false)
  br label %_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit
  store ptr %i.aa, ptr %i.l, align 8
  %i.ah = load i64, ptr %i.i, align 8
  store i64 %i.ah, ptr %i.m, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit10

_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit10:  ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  store i64 %i.ab, ptr %i.n, align 8
  store ptr %i.i, ptr %i.h, align 8
  store i64 0, ptr %i.j, align 8
  store i8 0, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false)
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_(ptr nonnull %0, i64 noundef %.08, i64 noundef %i.d, ptr noundef nonnull %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit10
  %i.ai = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.m
  br i1 %i.aj, label %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.ak = load i64, ptr %i.m, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #27
  br label %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit

_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit:       ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.not = icmp eq i64 %.08, 0
  %i.am = add nsw i64 %.08, -1
  %i.an = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.i
  br i1 %i.ao, label %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11: ; preds = %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit
  %i.ap = load i64, ptr %i.i, align 8
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #27
  br label %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit13

_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit13:     ; preds = %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !224

bb.g:                                             ; preds = %_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit10
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.m
  br i1 %i.at, label %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14: ; preds = %bb.g
  %i.au = load i64, ptr %i.m, align 8
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #27
  br label %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit16

_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit16:     ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14
  %i.aw = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.i
  br i1 %i.ax, label %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17: ; preds = %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit16
  %i.ay = load i64, ptr %i.i, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #27
  br label %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit19

_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit19:     ; preds = %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.ar

.loopexit:                                        ; preds = %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit13, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_(ptr %0, ptr %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Assimp::Blender::FileBlockHead", align 8 ; 9 uses
  %5 = alloca %"struct.Assimp::Blender::FileBlockHead", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = load i64, ptr %2, align 8
  store i64 %i.a, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 12 uses
  store ptr %i.d, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 9 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.e, ptr %i.b, align 8
  %i.l = load i64, ptr %i.f, align 8
  store i64 %i.l, ptr %i.d, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.m = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store i64 %i.m, ptr %i.o, align 8
  store ptr %i.f, ptr %i.c, align 8
  store i64 0, ptr %i.n, align 8
  store i8 0, ptr %i.f, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  %i.r = load i64, ptr %0, align 8
  store i64 %i.r, ptr %2, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %.not21.i.i = icmp eq ptr %0, %2
  br i1 %.not21.i.i, label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  switch i64 %i.x, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.z = load i8, ptr %i.t, align 1
  store i8 %i.z, ptr %i.f, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr align 1 %i.t, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.aa = load i64, ptr %i.w, align 8             ; 2 uses
  store i64 %i.aa, ptr %i.n, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.aa
  store i8 0, ptr %i.ab, align 1
  %.pre.i.i = load ptr, ptr %i.s, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  store ptr %i.t, ptr %i.c, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 8
  store i64 %i.ad, ptr %i.n, align 8
  %i.ae = load i64, ptr %i.u, align 8
  store i64 %i.ae, ptr %i.f, align 8
  store ptr %i.u, ptr %i.s, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit

_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit:    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.g
  %i.af = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.t, %bb.c ], [ %i.u, %bb.g ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ag, align 8
  store i8 0, ptr %i.af, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  %i.ai = ptrtoint ptr %1 to i64
  %i.aj = ptrtoint ptr %0 to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 72
  %i.am = load i64, ptr %4, align 8
  store i64 %i.am, ptr %5, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 7 uses
  store ptr %i.ao, ptr %i.an, align 8
  %i.ap = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.d
  br i1 %i.aq, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

bb.h:                                             ; preds = %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit
  %i.ar = load i64, ptr %i.o, align 8             ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.at, i1 false)
  br label %_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit
  store ptr %i.ap, ptr %i.an, align 8
  %i.au = load i64, ptr %i.d, align 8
  store i64 %i.au, ptr %i.ao, align 8
  %.pre17 = load i64, ptr %i.o, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit3

_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit3:   ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  %i.av = phi i64 [ %i.ar, %bb.h ], [ %.pre17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.av, ptr %i.aw, align 8
  store ptr %i.d, ptr %i.b, align 8
  store i64 0, ptr %i.o, align 8
  store i8 0, ptr %i.d, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.al, ptr noundef nonnull %5)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit3
  %i.ay = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ao
  br i1 %i.az, label %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.ba = load i64, ptr %i.ao, align 8
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #27
  br label %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit

_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit:       ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bc = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.d
  br i1 %i.bd, label %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit
  %i.be = load i64, ptr %i.d, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #27
  br label %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit6

_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit6:      ; preds = %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.j:                                             ; preds = %_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit3
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ao
  br i1 %i.bi, label %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %bb.j
  %i.bj = load i64, ptr %i.ao, align 8
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #27
  br label %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit9

_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit9:      ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  %i.bl = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.d
  br i1 %i.bm, label %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10: ; preds = %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit9
  %i.bn = load i64, ptr %i.d, align 8
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #27
  br label %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit12

_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit12:     ; preds = %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.bg
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val", align 1 ; 4 uses
  %5 = alloca %"struct.Assimp::Blender::FileBlockHead", align 8 ; 6 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit
  %.047 = phi i64 [ %spec.select, %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.d = shl i64 %.047, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [72 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [72 x i8], ptr %0, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp ult i64 %i.j, %i.l
  %spec.select = select i1 %i.m, i64 %i.g, i64 %i.e ; 5 uses
  %i.n = getelementptr inbounds [72 x i8], ptr %0, i64 %spec.select ; 8 uses
  %i.o = getelementptr inbounds [72 x i8], ptr %0, i64 %.047 ; 7 uses
  %i.p = load i64, ptr %i.n, align 8
  store i64 %i.p, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.s = load ptr, ptr %i.q, align 8              ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  %i.v = load ptr, ptr %i.r, align 8              ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 4 uses
  %i.x = icmp eq ptr %i.v, %i.w                   ; 2 uses
  br i1 %i.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.lr.ph
  br i1 %i.x, label %bb.b, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.lr.ph
  br i1 %i.x, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8              ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %.not21.i.i = icmp eq i64 %spec.select, %.047
  br i1 %.not21.i.i, label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  switch i64 %i.z, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ab = load i8, ptr %i.v, align 1
  store i8 %i.ab, ptr %i.s, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.v, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.ac = load i64, ptr %i.y, align 8             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.ac, ptr %i.ad, align 8
  %i.ae = load ptr, ptr %i.q, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1
  %.pre.i.i = load ptr, ptr %i.r, align 8
end_hunk_13
begin_hunk_14_@_ZN6Assimp6Logger5errorIJPKcRA65_S2_EEEvDpOT_:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.r, ptr %4, align 8
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.t = getelementptr i8, ptr %i.r, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %4, i64 %i.u
  store ptr %i.s, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.w, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #25
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ae) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.g:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.h:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %3, align 8               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.h
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.g
  %.pn = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.ag, %bb.h ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %common.resume
}

declare void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERA65_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(65) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(65) %3) #25
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(65) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  call void @llvm.experimental.noalias.scope.decl(metadata !272)
  call void @llvm.experimental.noalias.scope.decl(metadata !275)
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !281
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !281
  store i8 0, ptr %i.c, align 8, !alias.scope !281
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !281 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !281 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !281 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !281 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !281
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #27
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #25
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #25
  resume { ptr, i32 } %i.p
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.o, label %.preheader

.preheader:                                       ; preds = %bb.a, %_ZNSt12__shared_ptrIN6Assimp7Blender4MTexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %.idx.i = phi i64 [ %.add.i, %_ZNSt12__shared_ptrIN6Assimp7Blender4MTexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ], [ 1720, %bb.a ]
  %.add.i = add nsw i64 %.idx.i, -16              ; 3 uses
  %.ptr1.i = getelementptr inbounds i8, ptr %i.b, i64 %.add.i
  %i.d = getelementptr inbounds nuw i8, ptr %.ptr1.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN6Assimp7Blender4MTexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !176
  %i.n = load ptr, ptr %i.e, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !176
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender4MTexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZNSt12__shared_ptrIN6Assimp7Blender4MTexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !5

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender4MTexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN6Assimp7Blender4MTexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %.preheader
  %i.u = icmp eq i64 %.add.i, 1432
  br i1 %i.u, label %bb.h, label %.preheader

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp7Blender4MTexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 1416
  %i.w = load ptr, ptr %i.v, align 8              ; 8 uses
  %.not.i.i3.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i3.i, label %_ZN6Assimp7Blender8MaterialD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.x, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4
  %i.ac = load ptr, ptr %i.w, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #25, !inline_history !177
  %i.af = load ptr, ptr %i.w, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #25, !inline_history !177
  br label %_ZN6Assimp7Blender8MaterialD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ai = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i4.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i4.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5.i

bb.m:                                             ; preds = %bb.k
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i6.i = phi i32 [ %i.aa, %bb.l ], [ %i.ak, %bb.m ]
  %i.al = icmp eq i32 %.0.i.i.i.i6.i, 1
  br i1 %i.al, label %bb.n, label %_ZN6Assimp7Blender8MaterialD2Ev.exit, !prof !5

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #25
  br label %_ZN6Assimp7Blender8MaterialD2Ev.exit

_ZN6Assimp7Blender8MaterialD2Ev.exit:             ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5.i, %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1720) #27
  br label %bb.o

bb.o:                                             ; preds = %_ZN6Assimp7Blender8MaterialD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE16_M_push_back_auxIJRKS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 5
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 4
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 576460752303423487
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = phi ptr [ %i.d, %bb.c ], [ %.pre, %bb.d ]
  %i.an = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #26
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.an, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.aq = load ptr, ptr %1, align 8
  store ptr %i.aq, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  store ptr %i.at, ptr %i.ar, align 8
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE22_M_reserve_map_at_backEm.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 3 uses
  %i.av = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = load i32, ptr %i.au, align 4
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.au, align 4
  br label %_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.ay = atomicrmw volatile add ptr %i.au, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit

_ZNSt10shared_ptrIN6Assimp7Blender8MaterialEEC2ERKS3_.exit: ; preds = %_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE22_M_reserve_map_at_backEm.exit, %bb.f, %bb.g
  %i.az = load ptr, ptr %i.c, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  store ptr %i.ba, ptr %i.c, align 8
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
  store ptr %i.bb, ptr %i.o, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 512
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bc, ptr %i.bd, align 8
  store ptr %i.bb, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8              ; 5 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !49

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPSt10shared_ptrIN6Assimp7Blender8MaterialEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPSt10shared_ptrIN6Assimp7Blender8MaterialEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8
  store ptr %i.aa, ptr %i.t, align 8
  br label %_ZSt4copyIPPSt10shared_ptrIN6Assimp7Blender8MaterialEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !49

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPSt10shared_ptrIN6Assimp7Blender8MaterialEES6_ET0_T_S8_S7_.exit

bb.i:                                             ; preds = %bb.g
end_hunk_14
begin_hunk_15_@_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_:bb.a
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #30 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp ult i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8      ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = icmp ult i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8     ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !312

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #30 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #30 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = icmp ult i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8      ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = icmp ult i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8     ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !312

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #30 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE22_M_emplace_hint_uniqueIJS0_IjSC_EEEESt17_Rb_tree_iteratorISD_ESt23_Rb_tree_const_iteratorISD_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, std::map<unsigned int, const Assimp::Blender::MLoopUV *>>, std::_Select1st<std::pair<const unsigned int, std::map<unsigned int, const Assimp::Blender::MLoopUV *>>>, std::less<unsigned int>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %0, ptr %3, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i32, ptr %2, align 8
  store i32 %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8
  store i32 %i.h, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.m = load <2 x ptr>, ptr %i.j, align 8
  store <2 x ptr> %i.m, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.d, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8
  store ptr null, ptr %i.e, align 8
  store ptr %i.g, ptr %i.j, align 8
  store ptr %i.g, ptr %i.l, align 8
  store i64 0, ptr %i.o, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr null, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.d, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.d, ptr %i.s, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink.i.i = phi i64 [ 0, %bb.c ], [ %i.p, %bb.b ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %.sink.i.i, ptr %i.u, align 8
  store ptr %i.a, ptr %i.t, align 8
  %i.v = invoke { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISD_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.e unwind label %bb.h       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.w = extractvalue { ptr, ptr } %i.v, 0        ; 2 uses
  %i.x = extractvalue { ptr, ptr } %i.v, 1        ; 4 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp ne ptr %i.w, null
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.z
  br i1 %or.cond.i.i, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ab = load i32, ptr %i.b, align 8
  %i.ac = load i32, ptr %i.aa, align 4
  %i.ad = icmp ult i32 %i.ab, %i.ac
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.g
  %i.ae = phi i1 [ %i.ad, %bb.g ], [ true, %bb.f ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ae, ptr noundef nonnull %i.a, ptr noundef nonnull %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.y) #25
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8
  br label %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE10_Auto_nodeD2Ev.exit

bb.h:                                             ; preds = %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.ai

bb.i:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjPKN6Assimp7Blender7MLoopUVEESt10_Select1stIS7_ESt4lessIjESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef %i.al)
          to label %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #29
  unreachable

_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i: ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #27
  br label %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i
  %.sroa.0.08 = phi ptr [ %i.a, %.thread ], [ %i.w, %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret ptr %.sroa.0.08
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISD_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4
  %i.i = load i32, ptr %2, align 4
  %i.j = icmp ult i32 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8         ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i32, ptr %2, align 4                ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = icmp ult i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !313

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #30 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4
  %.pre82 = load i32, ptr %2, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i32 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i32 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult i32 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %2, align 4                ; 8 uses
  %i.y = load i32, ptr %i.w, align 4              ; 2 uses
  %i.z = icmp ult i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8            ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #30 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp ult i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8      ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = icmp ult i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8     ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !313

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #30 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaIS0_IS1_S7_EEEESt10_Select1stISD_ES9_SaISD_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #30 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = icmp ult i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
end_hunk_15
begin_hunk_16_@_ZN6Assimp6Logger13formatMessageIJERA74_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !326
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !326
  store i8 0, ptr %i.c, align 8, !alias.scope !326
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !326 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !326 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !326 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !326 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !326
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #27
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #25
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #25
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp12StreamReaderILb0ELb0EE11InternBeginEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.127)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 2 uses
  %i.m = icmp eq i64 %i.g, %i.l
  br i1 %i.m, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.128)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.p = sub i64 %i.g, %i.l                       ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #26 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.q, ptr %i.s, align 8
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %i.q, i64 noundef 1, i64 noundef %i.p)
  %i.y = load ptr, ptr %i.r, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 %i.x     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.z, ptr %i.ab, align 8
  ret void

bb.j:                                             ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.n, %bb.h ], [ %i.b, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp12StreamReaderILb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 8 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !9
  %i.n = load ptr, ptr %i.e, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !9
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.q = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.i, %bb.g ], [ %i.s, %bb.h ]
  %i.t = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.t, label %bb.i, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN6Assimp12StreamReaderILb0ELb0EEELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN6Assimp12StreamReaderILb0ELb0EEELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4
  %i.n = load ptr, ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #25, !inline_history !327
  %i.q = load ptr, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #25, !inline_history !327
  br label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.t = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi i32 [ %i.l, %bb.h ], [ %i.v, %bb.i ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.w, label %bb.j, label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit, !prof !5

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #25
  br label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit

_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit:      ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 56) #27
  br label %bb.k

bb.k:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN6Assimp12StreamReaderILb0ELb0EEELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN6Assimp12StreamReaderILb0ELb0EEELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceISt6vectorIcSaIcEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceISt6vectorIcSaIcEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #27
  br label %_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_.exit

_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_.exit:        ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceISt6vectorIcSaIcEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt6vectorIcSaIcEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceISt6vectorIcSaIcEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #25
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN6Assimp14MemoryIOStreamESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN6Assimp14MemoryIOStreamESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(33) %i.a) #25, !inline_history !328
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN6Assimp14MemoryIOStreamESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6Assimp14MemoryIOStreamESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6Assimp14MemoryIOStreamESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #25
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp14MemoryIOStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6Assimp14MemoryIOStreamE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !19, !noundef !20
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp14MemoryIOStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6Assimp14MemoryIOStreamE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !19, !noundef !20
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN6Assimp14MemoryIOStreamD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN6Assimp14MemoryIOStreamD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #27, !inline_history !329
  br label %_ZN6Assimp14MemoryIOStreamD2Ev.exit

_ZN6Assimp14MemoryIOStreamD2Ev.exit:              ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN6Assimp6Intern22AllocateFromAssimpHeapdlEPv(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN6Assimp14MemoryIOStream4ReadEPvmm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = udiv i64 %i.e, %2
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %3) ; 2 uses
  %i.g = mul i64 %.sroa.speculated, %2            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.j, i64 %i.g, i1 false)
  %i.k = load i64, ptr %i.c, align 8
  %i.l = add i64 %i.k, %i.g
  store i64 %i.l, ptr %i.c, align 8
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN6Assimp14MemoryIOStream5WriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6Assimp14MemoryIOStream4SeekEm8aiOrigin(ptr noundef nonnull align 8 dereferenceable(33) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #5 comdat align 2 {
bb.a:
  switch i32 %2, label %bb.f [
    i32 0, label %bb.b
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %i.d, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = sub nuw i64 %i.f, %1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.h, ptr %i.i, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.k, %1                         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp ugt i64 %i.l, %i.n
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.l, ptr %i.j, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %bb.e, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.b ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK6Assimp14MemoryIOStream4TellEv(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK6Assimp14MemoryIOStream8FileSizeEv(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp14MemoryIOStream5FlushEv(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6Assimp6Intern22AllocateFromAssimpHeapdlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !81
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !81
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #16 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold noreturn }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nounwind }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn }
attributes #29 = { noreturn nounwind }
attributes #30 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{null, null}
!4 = distinct !{ptr @_ZN6Assimp15BlenderImporter13StreamOrErrorD2Ev, ptr @_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = distinct !{ptr @_ZN6Assimp15BlenderImporter13StreamOrErrorD2Ev, ptr @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7 = distinct !{null}
!8 = distinct !{null, null, null, null}
!9 = distinct !{ptr @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZSt11make_sharedISt6vectorIcSaIcEEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!12 = distinct !{!12, !"_ZSt11make_sharedISt6vectorIcSaIcEEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZSt11make_sharedIN6Assimp14MemoryIOStreamEJPhRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_: argument 0"}
!15 = distinct !{!15, !"_ZSt11make_sharedIN6Assimp14MemoryIOStreamEJPhRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_"}
!16 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!17 = distinct !{ptr @_ZNSt12__shared_ptrISt6vectorIcSaIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!18 = distinct !{ptr @_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb0ELb0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!19 = !{i8 0, i8 2}
!20 = !{}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZSt11make_sharedIN6Assimp12StreamReaderILb1ELb1EEEJRSt10shared_ptrINS0_8IOStreamEERbEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!23 = distinct !{!23, !"_ZSt11make_sharedIN6Assimp12StreamReaderILb1ELb1EEEJRSt10shared_ptrINS0_8IOStreamEERbEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!24 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb1ELb1EEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!27 = distinct !{!27, !"_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_"}
!28 = !{!29}
!29 = distinct !{!29, !27, !"_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!30 = !{!26, !29}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = distinct !{!33, !32}
!34 = distinct !{!34, !32}
!35 = distinct !{!35, !32}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZSt19static_pointer_castIN6Assimp7Blender4BaseENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E: argument 0"}
!38 = distinct !{!38, !"_ZSt19static_pointer_castIN6Assimp7Blender4BaseENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E"}
!39 = distinct !{ptr @_ZNSt12__shared_ptrIN6Assimp7Blender4BaseELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!40 = distinct !{!40, !32}
!41 = distinct !{null, null, null, null}
!42 = distinct !{!42, !32}
!43 = distinct !{!43, !32}
!44 = distinct !{!44, !32}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZStplRKSt15_Deque_iteratorIPKN6Assimp7Blender6ObjectERS4_PS4_El: argument 0"}
!47 = distinct !{!47, !"_ZStplRKSt15_Deque_iteratorIPKN6Assimp7Blender6ObjectERS4_PS4_El"}
!48 = distinct !{!48, !32}
!49 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!50 = distinct !{ptr @_ZN6Assimp7Blender8ListBaseD2Ev, null, null, null}
!51 = distinct !{ptr @_ZN6Assimp7Blender8ListBaseD2Ev, null, null, null}
!52 = distinct !{null, null, null}
!53 = distinct !{null, null, null}
!54 = distinct !{null, null, null}
!55 = distinct !{!55, !32}
!56 = distinct !{!56, !32}
!57 = distinct !{ptr @_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb1ELb1EEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!58 = distinct !{!58, !32}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZSt19static_pointer_castIN6Assimp7Blender16CollectionObjectENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E: argument 0"}
!61 = distinct !{!61, !"_ZSt19static_pointer_castIN6Assimp7Blender16CollectionObjectENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E"}
!62 = distinct !{ptr @_ZNSt12__shared_ptrIN6Assimp7Blender16CollectionObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!63 = distinct !{null, null, null, null}
!64 = distinct !{!64, !32}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZSt19static_pointer_castIN6Assimp7Blender15CollectionChildENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E: argument 0"}
!67 = distinct !{!67, !"_ZSt19static_pointer_castIN6Assimp7Blender15CollectionChildENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E"}
!68 = distinct !{ptr @_ZNSt12__shared_ptrIN6Assimp7Blender15CollectionChildELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!69 = distinct !{null, null, null, null}
!70 = distinct !{!70, !32}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZSt19static_pointer_castIN6Assimp7Blender15CollectionChildENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E: argument 0"}
!73 = distinct !{!73, !"_ZSt19static_pointer_castIN6Assimp7Blender15CollectionChildENS1_8ElemBaseEESt10shared_ptrIT_ERKS4_IT0_E"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZStplRKSt15_Deque_iteratorIPN6Assimp7Blender6ObjectERS3_PS3_El: argument 0"}
!76 = distinct !{!76, !"_ZStplRKSt15_Deque_iteratorIPN6Assimp7Blender6ObjectERS3_PS3_El"}
!77 = distinct !{!77, !32}
!78 = distinct !{!78, !32}
!79 = distinct !{!79, !32}
!80 = distinct !{!80, !32}
!81 = distinct !{null, null}
!82 = distinct !{!82, !32}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE5beginEv: argument 0"}
!85 = distinct !{!85, !"_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE5beginEv"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE3endEv: argument 0"}
!88 = distinct !{!88, !"_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE3endEv"}
!89 = distinct !{!89, !32}
!90 = distinct !{!90, !32}
!91 = !{i64 8}
!92 = distinct !{ptr @_ZNSt12__shared_ptrIN6Assimp7Blender8MaterialELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!93 = distinct !{!93, !32}
!94 = distinct !{!94, !32}
!95 = distinct !{!95, !96}
!96 = !{!"llvm.loop.unroll.disable"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZSt4findISt15_Deque_iteratorISt10shared_ptrIN6Assimp7Blender8MaterialEERS5_PS5_ES5_ET_S9_S9_RKT0_: argument 0"}
!99 = distinct !{!99, !"_ZSt4findISt15_Deque_iteratorISt10shared_ptrIN6Assimp7Blender8MaterialEERS5_PS5_ES5_ET_S9_S9_RKT0_"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE5beginEv: argument 0"}
!102 = distinct !{!102, !"_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE5beginEv"}
!103 = !{!104, !98}
!104 = distinct !{!104, !105, !"_ZSt9__find_ifISt15_Deque_iteratorISt10shared_ptrIN6Assimp7Blender8MaterialEERS5_PS5_EN9__gnu_cxx5__ops16_Iter_equals_valIKS5_EEET_SE_SE_T0_: argument 0"}
!105 = distinct !{!105, !"_ZSt9__find_ifISt15_Deque_iteratorISt10shared_ptrIN6Assimp7Blender8MaterialEERS5_PS5_EN9__gnu_cxx5__ops16_Iter_equals_valIKS5_EEET_SE_SE_T0_"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE3endEv: argument 0"}
!108 = distinct !{!108, !"_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE3endEv"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE3endEv: argument 0"}
!111 = distinct !{!111, !"_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE3endEv"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE5beginEv: argument 0"}
!114 = distinct !{!114, !"_ZNSt5dequeISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE5beginEv"}
!115 = distinct !{!115, !32}
!116 = distinct !{!116, !32}
!117 = distinct !{!117, !32}
!118 = distinct !{!118, !32}
!119 = distinct !{!119, !32}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZSt9make_pairIRjRSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS6_EEEES9_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSF_INSG_IT0_E4typeEE6__typeEEOSH_OSM_: argument 0"}
!122 = distinct !{!122, !"_ZSt9make_pairIRjRSt3mapIjPKN6Assimp7Blender7MLoopUVESt4lessIjESaISt4pairIKjS6_EEEES9_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSF_INSG_IT0_E4typeEE6__typeEEOSH_OSM_"}
!123 = distinct !{!123, !32}
!124 = distinct !{!124, !32}
end_hunk_16
