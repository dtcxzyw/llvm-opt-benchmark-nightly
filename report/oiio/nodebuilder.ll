inline.NumInlined: 361
inline.NumDeleted: 228
begin_hunk_0_@_ZN4YAML11NodeBuilder4RootEv:bb.a
bb.e:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %i.u = icmp eq i8 %.pre, 0
  store i8 1, ptr %0, align 8, !tbaa !59
  store ptr %i.n, ptr %i.m, align 8, !tbaa !65
  store i64 0, ptr %i.o, align 8, !tbaa !66
  store i8 0, ptr %i.n, align 8, !tbaa !43
  store ptr %i.h, ptr %i.p, align 8, !tbaa !9
  store ptr %i.j, ptr %i.q, align 8, !tbaa !15
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %i.v = load i32, ptr %i.k, align 4, !tbaa !3
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.k, align 4, !tbaa !3
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.h

_ZN4YAML4NodeC2ERNS_6detail4nodeESt10shared_ptrINS1_13memory_holderEE.exit: ; preds = %bb.c
  store i8 1, ptr %0, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !65
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.aa, align 8, !tbaa !66
  store i8 0, ptr %i.z, align 8, !tbaa !43
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.h, ptr %i.ab, align 8, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.ac, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.b, ptr %i.ad, align 8, !tbaa !67
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.b, ptr %i.ae, align 8, !tbaa !67
  %i.af = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.k, align 8, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !18
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #18, !inline_history !48
  %i.am = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #18, !inline_history !48
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i2 = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.k, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ar = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ah, %bb.k ], [ %i.ar, %bb.l ]
  %i.as = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.as, label %bb.m, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #18
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i, %_ZN4YAML4NodeC2ERNS_6detail4nodeESt10shared_ptrINS1_13memory_holderEE.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN4YAML11NodeBuilder15OnDocumentStartERKNS_4MarkE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #5 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN4YAML11NodeBuilder13OnDocumentEndEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML11NodeBuilder6OnNullERKNS_4MarkEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML11NodeBuilder4PushERKNS_4MarkEm(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 noundef %2) ; 2 uses
  tail call void @_ZN4YAML6detail4node12mark_definedEv(ptr noundef nonnull align 8 dereferenceable(72) %i.a)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71
  tail call void @_ZN4YAML6detail9node_data8set_nullEv(ptr noundef nonnull align 8 dereferenceable(176) %i.c)
  tail call void @_ZN4YAML11NodeBuilder3PopEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML11NodeBuilder4PushERKNS_4MarkEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML6detail6memory11create_nodeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.c) ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  tail call void @_ZN4YAML6detail9node_data8set_markERKNS_4MarkE(ptr noundef nonnull align 8 dereferenceable(176) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %1)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN4YAML11NodeBuilder14RegisterAnchorEmRNS_6detail4nodeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  %.not.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %i.i, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.l, ptr %i.h, align 8, !tbaa !27
  br label %_ZN4YAML11NodeBuilder14RegisterAnchorEmRNS_6detail4nodeE.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !23   ; 4 uses
  %i.n = ptrtoint ptr %i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 5 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorIPN4YAML6detail4nodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
  unreachable

_ZNKSt6vectorIPN4YAML6detail4nodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.d
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #17 ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.p ; 2 uses
  store ptr %i.d, ptr %i.y, align 8, !tbaa !21
  %i.z = icmp sgt i64 %i.p, 0
  br i1 %i.z, label %bb.f, label %_ZNSt6vectorIPN4YAML6detail4nodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN4YAML6detail4nodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.m, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIPN4YAML6detail4nodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

_ZNSt6vectorIPN4YAML6detail4nodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN4YAML6detail4nodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN4YAML6detail4nodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN4YAML6detail4nodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #19
  br label %_ZNSt6vectorIPN4YAML6detail4nodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN4YAML6detail4nodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIPN4YAML6detail4nodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  store ptr %i.x, ptr %i.g, align 8, !tbaa !23
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ab, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4YAML11NodeBuilder14RegisterAnchorEmRNS_6detail4nodeE.exit

_ZN4YAML11NodeBuilder14RegisterAnchorEmRNS_6detail4nodeE.exit: ; preds = %bb.a, %bb.c, %_ZNSt6vectorIPN4YAML6detail4nodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i
  tail call void @_ZN4YAML11NodeBuilder4PushERNS_6detail4nodeE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.d)
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML11NodeBuilder3PopEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %2 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp eq i64 %i.g, 8
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.i, ptr %i.j, align 8, !tbaa !49
  %i.k = getelementptr inbounds i8, ptr %i.c, i64 -8
  store ptr %i.k, ptr %i.b, align 8, !tbaa !27
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !27
  %i.n = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21   ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !71   ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !74, !range !90, !noundef !91
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = load i32, ptr %i.t, align 8
  %i.v = select i1 %i.s, i32 %i.u, i32 0
  switch i32 %i.v, label %bb.ad [
    i32 3, label %bb.d
    i32 4, label %bb.p
  ]

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !15   ; 2 uses
  %i.aa = load <2 x ptr>, ptr %i.w, align 8, !tbaa !92
  store <2 x ptr> %i.aa, ptr %1, align 16, !tbaa !92
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN4YAML6detail13memory_holderEEC2ERKS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN4YAML6detail13memory_holderEEC2ERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.af = atomicrmw volatile add ptr %i.ab, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4YAML6detail13memory_holderEEC2ERKS3_.exit

_ZNSt10shared_ptrIN4YAML6detail13memory_holderEEC2ERKS3_.exit: ; preds = %bb.d, %bb.f, %bb.g
  invoke void @_ZN4YAML6detail4node9push_backERS1_St10shared_ptrINS0_13memory_holderEE(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull %1)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN4YAML6detail13memory_holderEEC2ERKS3_.exit
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !15  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ah, align 8, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !18
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #18, !inline_history !48
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #18, !inline_history !48
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i13 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i13, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.ak, %bb.l ], [ %i.au, %bb.m ]
  %i.av = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.av, label %bb.n, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #18
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %_ZNSt10shared_ptrIN4YAML6detail13memory_holderEEC2ERKS3_.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.p:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !93 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -8 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !94, !range !90, !noundef !91
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.q, label %bb.ac

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 -16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !96
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !15 ; 2 uses
  %i.bi = load <2 x ptr>, ptr %i.be, align 8, !tbaa !92
  store <2 x ptr> %i.bi, ptr %2, align 16, !tbaa !92
  %.not.i.i.i14 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i14, label %_ZNSt10shared_ptrIN4YAML6detail13memory_holderEEC2ERKS3_.exit16, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 3 uses
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i15 = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i.i15, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN4YAML6detail13memory_holderEEC2ERKS3_.exit16

bb.t:                                             ; preds = %bb.r
  %i.bn = atomicrmw volatile add ptr %i.bj, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4YAML6detail13memory_holderEEC2ERKS3_.exit16

_ZNSt10shared_ptrIN4YAML6detail13memory_holderEEC2ERKS3_.exit16: ; preds = %bb.q, %bb.s, %bb.t
  invoke void @_ZN4YAML6detail4node6insertERS1_S2_St10shared_ptrINS0_13memory_holderEE(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.bd, ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull %2)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %_ZNSt10shared_ptrIN4YAML6detail13memory_holderEEC2ERKS3_.exit16
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !15 ; 8 uses
  %.not.i.i17 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i17, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bp, align 8, !tbaa !16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !18
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !7
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #18, !inline_history !48
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #18, !inline_history !48
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21

bb.x:                                             ; preds = %bb.v
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i18 = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i18, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19

bb.z:                                             ; preds = %bb.x
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i20 = phi i32 [ %i.bs, %bb.y ], [ %i.cc, %bb.z ]
  %i.cd = icmp eq i32 %.0.i.i.i.i20, 1
  br i1 %i.cd, label %bb.aa, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21, !prof !44

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #18
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21

_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19, %bb.aa
  %i.ce = load ptr, ptr %i.ax, align 8, !tbaa !97
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -16
  store ptr %i.cf, ptr %i.ax, align 8, !tbaa !97
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ab:                                            ; preds = %_ZNSt10shared_ptrIN4YAML6detail13memory_holderEEC2ERKS3_.exit16
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ac:                                            ; preds = %bb.p
  store i8 1, ptr %i.az, align 8, !tbaa !94
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ad:                                            ; preds = %bb.c
  %.not.i.i22 = icmp eq ptr %i.l, %i.d
  br i1 %.not.i.i22, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZSt8_DestroyIPPN4YAML6detail4nodeES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN4YAML6detail4nodeES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.ad
  store ptr %i.d, ptr %i.b, align 8, !tbaa !27
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt8_DestroyIPPN4YAML6detail4nodeES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.ad, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j, %bb.h, %bb.ac, %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21, %bb.b
  ret void

bb.ae:                                            ; preds = %bb.ab, %bb.o
  %.sink = phi ptr [ %2, %bb.ab ], [ %1, %bb.o ]
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.ab ], [ %i.aw, %bb.o ]
  call void @_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %.sink) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML11NodeBuilder7OnAliasERKNS_4MarkEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, ptr nofree nonnull readnone align 4 captures(none) %1, i64 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %2
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  tail call void @_ZN4YAML11NodeBuilder4PushERNS_6detail4nodeE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.d)
  tail call void @_ZN4YAML11NodeBuilder3PopEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML11NodeBuilder4PushERNS_6detail4nodeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 10 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71   ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !74, !range !90, !noundef !91
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp eq i32 %i.m, 4
  %i.o = select i1 %i.k, i1 %i.n, i1 false
  br i1 %i.o, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !97
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !45
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.y = load i64, ptr %i.x, align 8, !tbaa !99
  %i.z = icmp ult i64 %i.w, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !28
  %.not.i.i = icmp eq ptr %i.d, %i.ab
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %1, ptr %i.d, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !27
  br label %_ZNSt6vectorIPN4YAML6detail4nodeESaIS3_EE9push_backEOS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.ad = ptrtoint ptr %i.d to i64
  %i.ae = ptrtoint ptr %i.b to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 6 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.f, label %_ZNKSt6vectorIPN4YAML6detail4nodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
  unreachable

_ZNKSt6vectorIPN4YAML6detail4nodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.ah = ashr exact i64 %i.af, 3
  %i.ai = ashr exact i64 %i.af, 2                 ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 1152921504606846975)
  %i.al = select i1 %i.aj, i64 1152921504606846975, i64 %i.ak ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #17 ; 4 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.af ; 2 uses
  store ptr %1, ptr %i.ao, align 8, !tbaa !21
  %i.ap = icmp sgt i64 %i.af, 0
  br i1 %i.ap, label %bb.g, label %_ZNSt6vectorIPN4YAML6detail4nodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPN4YAML6detail4nodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %i.b, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIPN4YAML6detail4nodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN4YAML6detail4nodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPN4YAML6detail4nodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4YAML6detail4nodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN4YAML6detail4nodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #19
  br label %_ZNSt6vectorIPN4YAML6detail4nodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4YAML6detail4nodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIPN4YAML6detail4nodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.an, ptr %i.a, align 8, !tbaa !23
  store ptr %i.aq, ptr %i.c, align 8, !tbaa !27
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al
  store ptr %i.ar, ptr %i.aa, align 8, !tbaa !28
  br label %_ZNSt6vectorIPN4YAML6detail4nodeESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN4YAML6detail4nodeESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.d, %_ZNSt6vectorIPN4YAML6detail4nodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  br i1 %i.z, label %bb.i, label %_ZNSt6vectorISt4pairIPN4YAML6detail4nodeEbESaIS5_EE12emplace_backIJS4_bEEEvDpOT_.exit

bb.i:                                             ; preds = %_ZNSt6vectorIPN4YAML6detail4nodeESaIS3_EE9push_backEOS3_.exit
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !97  ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !100
  %.not.i = icmp eq ptr %i.as, %i.au
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %1, ptr %i.as, align 8, !tbaa !96
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i8 0, ptr %i.av, align 8, !tbaa !94
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.aw, ptr %i.q, align 8, !tbaa !97
  br label %_ZNSt6vectorISt4pairIPN4YAML6detail4nodeEbESaIS5_EE12emplace_backIJS4_bEEEvDpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.p, align 8, !tbaa !45  ; 5 uses
  %i.ay = ptrtoint ptr %i.as to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 3 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775792
  br i1 %i.bb, label %bb.l, label %_ZNKSt6vectorISt4pairIPN4YAML6detail4nodeEbESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
  unreachable

_ZNKSt6vectorISt4pairIPN4YAML6detail4nodeEbESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.bc = ashr exact i64 %i.ba, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.bd = add nsw i64 %.sroa.speculated.i.i.i, %i.bc ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 576460752303423487)
  %i.bg = select i1 %i.be, i64 576460752303423487, i64 %i.bf ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #17 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ba ; 2 uses
  store ptr %1, ptr %i.bj, align 8, !tbaa !96
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i8 0, ptr %i.bk, align 8, !tbaa !94
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.as
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN4YAML6detail4nodeEbESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorISt4pairIPN4YAML6detail4nodeEbESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i ], [ %i.bi, %_ZNKSt6vectorISt4pairIPN4YAML6detail4nodeEbESaIS5_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i ], [ %i.ax, %_ZNKSt6vectorISt4pairIPN4YAML6detail4nodeEbESaIS5_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !101
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bl, %i.as
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN4YAML6detail4nodeEbESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !105

_ZNSt6vectorISt4pairIPN4YAML6detail4nodeEbESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorISt4pairIPN4YAML6detail4nodeEbESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bi, %_ZNKSt6vectorISt4pairIPN4YAML6detail4nodeEbESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bm, %.lr.ph.i.i.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i34.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIPN4YAML6detail4nodeEbESaIS5_EE17_M_realloc_insertIJS4_bEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIPN4YAML6detail4nodeEbESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ax) #19
  br label %_ZNSt6vectorISt4pairIPN4YAML6detail4nodeEbESaIS5_EE17_M_realloc_insertIJS4_bEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIPN4YAML6detail4nodeEbESaIS5_EE17_M_realloc_insertIJS4_bEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorISt4pairIPN4YAML6detail4nodeEbESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i
  store ptr %i.bi, ptr %i.p, align 8, !tbaa !45
  store ptr %i.bn, ptr %i.q, align 8, !tbaa !97
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bg
  store ptr %i.bo, ptr %i.at, align 8, !tbaa !100
  br label %_ZNSt6vectorISt4pairIPN4YAML6detail4nodeEbESaIS5_EE12emplace_backIJS4_bEEEvDpOT_.exit

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !28
  %.not.i.i3 = icmp eq ptr %i.d, %i.bq
  br i1 %.not.i.i3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge
  store ptr %1, ptr %i.d, align 8, !tbaa !21
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.br, ptr %i.c, align 8, !tbaa !27
  br label %_ZNSt6vectorISt4pairIPN4YAML6detail4nodeEbESaIS5_EE12emplace_backIJS4_bEEEvDpOT_.exit

bb.o:                                             ; preds = %.critedge
  %i.bs = ptrtoint ptr %i.d to i64
  %i.bt = ptrtoint ptr %i.b to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 5 uses
  %i.bv = icmp eq i64 %i.bu, 9223372036854775800
  br i1 %i.bv, label %bb.p, label %_ZNKSt6vectorIPN4YAML6detail4nodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i4

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
  unreachable

_ZNKSt6vectorIPN4YAML6detail4nodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i4: ; preds = %bb.o
  %i.bw = ashr exact i64 %i.bu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i5 = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %i.bx = add nsw i64 %.sroa.speculated.i.i.i.i5, %i.bw ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.bw
  %i.bz = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 1152921504606846975)
end_hunk_0
begin_hunk_1_@_ZN4YAML6detail4node14add_dependencyERS1_:bb.a
  br i1 %i.t, label %select.unfold.i.i, label %_ZNSt3setIPN4YAML6detail4nodeENS2_4lessESaIS3_EE6insertEOS3_.exit

select.unfold.i.i:                                ; preds = %bb.f, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.f ] ; 3 uses
  %i.u = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.f
  br i1 %i.u, label %_ZNSt8_Rb_treeIPN4YAML6detail4nodeES3_St9_IdentityIS3_ENS2_4lessESaIS3_EE10_M_insert_IS3_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %select.unfold.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load i64, ptr %i.x, align 8, !tbaa !107
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !107
  %i.ab = icmp ult i64 %i.y, %i.aa
  br label %_ZNSt8_Rb_treeIPN4YAML6detail4nodeES3_St9_IdentityIS3_ENS2_4lessESaIS3_EE10_M_insert_IS3_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIPN4YAML6detail4nodeES3_St9_IdentityIS3_ENS2_4lessESaIS3_EE10_M_insert_IS3_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i: ; preds = %bb.g, %select.unfold.i.i
  %i.ac = phi i1 [ %i.ab, %bb.g ], [ true, %select.unfold.i.i ]
  %i.ad = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #17 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr %1, ptr %i.ae, align 8, !tbaa !21
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ac, ptr noundef nonnull %i.ad, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.f) #18
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !36
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !36
  br label %_ZNSt3setIPN4YAML6detail4nodeENS2_4lessESaIS3_EE6insertEOS3_.exit

_ZNSt3setIPN4YAML6detail4nodeENS2_4lessESaIS3_EE6insertEOS3_.exit: ; preds = %_ZNSt8_Rb_treeIPN4YAML6detail4nodeES3_St9_IdentityIS3_ENS2_4lessESaIS3_EE10_M_insert_IS3_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i, %bb.f, %bb.b
  ret void
}

declare void @_ZN4YAML6detail9node_data9push_backERNS0_4nodeERKSt10shared_ptrINS0_13memory_holderEE(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #13

declare void @_ZN4YAML6detail9node_data6insertERNS0_4nodeES3_RKSt10shared_ptrINS0_13memory_holderEE(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4YAML6detail13memory_holderD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN4YAML6detail6memoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !18
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !124
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !124
  br label %_ZNSt12__shared_ptrIN4YAML6detail6memoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN4YAML6detail6memoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt12__shared_ptrIN4YAML6detail6memoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4YAML6detail6memoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN4YAML6detail13memory_holderD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !18
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #18, !inline_history !125
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #18, !inline_history !125
  br label %_ZN4YAML6detail13memory_holderD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZN4YAML6detail13memory_holderD2Ev.exit, !prof !44

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #18
  br label %_ZN4YAML6detail13memory_holderD2Ev.exit

_ZN4YAML6detail13memory_holderD2Ev.exit:          ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #19
  br label %bb.i

bb.i:                                             ; preds = %_ZN4YAML6detail13memory_holderD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0, !13, i64 8}
!11 = !{!"p1 _ZTSN4YAML6detail13memory_holderE", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!14 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!15 = !{!13, !14, i64 0}
!16 = !{!17, !4, i64 8}
!17 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!18 = !{!17, !4, i64 12}
!19 = !{!20, !11, i64 16}
!20 = !{!"_ZTSSt15_Sp_counted_ptrIPN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0, !11, i64 16}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTSN4YAML6detail4nodeE", !12, i64 0}
!23 = !{!24, !25, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIPN4YAML6detail4nodeESaIS3_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!25 = !{!"p2 _ZTSN4YAML6detail4nodeE", !26, i64 0}
!26 = !{!"any p2 pointer", !12, i64 0}
!27 = !{!24, !25, i64 8}
!28 = !{!24, !25, i64 16}
!29 = !{!30, !33, i64 16}
!30 = !{!"_ZTSSt15_Rb_tree_header", !31, i64 0, !34, i64 32}
!31 = !{!"_ZTSSt18_Rb_tree_node_base", !32, i64 0, !33, i64 8, !33, i64 16, !33, i64 24}
!32 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!33 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !12, i64 0}
!34 = !{!"long", !5, i64 0}
!35 = !{!30, !33, i64 24}
!36 = !{!30, !34, i64 32}
!37 = !{!38, !39, i64 0}
!38 = !{!"_ZTSSt12__shared_ptrIN4YAML6detail6memoryELN9__gnu_cxx12_Lock_policyE2EE", !39, i64 0, !13, i64 8}
!39 = !{!"p1 _ZTSN4YAML6detail6memoryE", !12, i64 0}
!40 = !{!41, !39, i64 16}
!41 = !{!"_ZTSSt15_Sp_counted_ptrIPN4YAML6detail6memoryELN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0, !39, i64 16}
!42 = distinct !{null, null}
!43 = !{!5, !5, i64 0}
!44 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!45 = !{!46, !47, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4YAML6detail4nodeEbESaIS5_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!47 = !{!"p1 _ZTSSt4pairIPN4YAML6detail4nodeEbE", !12, i64 0}
!48 = distinct !{ptr @_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!49 = !{!50, !22, i64 24}
!50 = !{!"_ZTSN4YAML11NodeBuilderE", !51, i64 0, !52, i64 8, !22, i64 24, !53, i64 32, !53, i64 56, !56, i64 80, !34, i64 104}
!51 = !{!"_ZTSN4YAML12EventHandlerE"}
!52 = !{!"_ZTSSt10shared_ptrIN4YAML6detail13memory_holderEE", !10, i64 0}
!53 = !{!"_ZTSSt6vectorIPN4YAML6detail4nodeESaIS3_EE", !54, i64 0}
!54 = !{!"_ZTSSt12_Vector_baseIPN4YAML6detail4nodeESaIS3_EE", !55, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIPN4YAML6detail4nodeESaIS3_EE12_Vector_implE", !24, i64 0}
!56 = !{!"_ZTSSt6vectorISt4pairIPN4YAML6detail4nodeEbESaIS5_EE", !57, i64 0}
!57 = !{!"_ZTSSt12_Vector_baseISt4pairIPN4YAML6detail4nodeEbESaIS5_EE", !58, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4YAML6detail4nodeEbESaIS5_EE12_Vector_implE", !46, i64 0}
!59 = !{!60, !61, i64 0}
!60 = !{!"_ZTSN4YAML4NodeE", !61, i64 0, !62, i64 8, !52, i64 40, !22, i64 56}
!61 = !{!"bool", !5, i64 0}
!62 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !63, i64 0, !34, i64 8, !5, i64 16}
!63 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !64, i64 0}
!64 = !{!"p1 omnipotent char", !12, i64 0}
!65 = !{!63, !64, i64 0}
!66 = !{!62, !34, i64 8}
!67 = !{!60, !22, i64 56}
!68 = !{!69, !70, i64 0}
!69 = !{!"_ZTSSt12__shared_ptrIN4YAML6detail8node_refELN9__gnu_cxx12_Lock_policyE2EE", !70, i64 0, !13, i64 8}
!70 = !{!"p1 _ZTSN4YAML6detail8node_refE", !12, i64 0}
!71 = !{!72, !73, i64 0}
!72 = !{!"_ZTSSt12__shared_ptrIN4YAML6detail9node_dataELN9__gnu_cxx12_Lock_policyE2EE", !73, i64 0, !13, i64 8}
!73 = !{!"p1 _ZTSN4YAML6detail9node_dataE", !12, i64 0}
!74 = !{!75, !61, i64 0}
!75 = !{!"_ZTSN4YAML6detail9node_dataE", !61, i64 0, !76, i64 4, !77, i64 16, !62, i64 24, !78, i64 56, !62, i64 64, !53, i64 96, !34, i64 120, !79, i64 128, !84, i64 152}
!76 = !{!"_ZTSN4YAML4MarkE", !4, i64 0, !4, i64 4, !4, i64 8}
!77 = !{!"_ZTSN4YAML8NodeType5valueE", !5, i64 0}
!78 = !{!"_ZTSN4YAML12EmitterStyle5valueE", !5, i64 0}
!79 = !{!"_ZTSSt6vectorISt4pairIPN4YAML6detail4nodeES4_ESaIS5_EE", !80, i64 0}
!80 = !{!"_ZTSSt12_Vector_baseISt4pairIPN4YAML6detail4nodeES4_ESaIS5_EE", !81, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4YAML6detail4nodeES4_ESaIS5_EE12_Vector_implE", !82, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4YAML6detail4nodeES4_ESaIS5_EE17_Vector_impl_dataE", !83, i64 0, !83, i64 8, !83, i64 16}
!83 = !{!"p1 _ZTSSt4pairIPN4YAML6detail4nodeES3_E", !12, i64 0}
!84 = !{!"_ZTSNSt7__cxx114listISt4pairIPN4YAML6detail4nodeES5_ESaIS6_EEE", !85, i64 0}
!85 = !{!"_ZTSNSt7__cxx1110_List_baseISt4pairIPN4YAML6detail4nodeES5_ESaIS6_EEE", !86, i64 0}
!86 = !{!"_ZTSNSt7__cxx1110_List_baseISt4pairIPN4YAML6detail4nodeES5_ESaIS6_EE10_List_implE", !87, i64 0}
!87 = !{!"_ZTSNSt8__detail17_List_node_headerE", !88, i64 0, !34, i64 16}
!88 = !{!"_ZTSNSt8__detail15_List_node_baseE", !89, i64 0, !89, i64 8}
!89 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !12, i64 0}
!90 = !{i8 0, i8 2}
!91 = !{}
!92 = !{!12, !12, i64 0}
!93 = !{!47, !47, i64 0}
!94 = !{!95, !61, i64 8}
!95 = !{!"_ZTSSt4pairIPN4YAML6detail4nodeEbE", !22, i64 0, !61, i64 8}
!96 = !{!95, !22, i64 0}
!97 = !{!46, !47, i64 8}
!98 = !{!25, !25, i64 0}
!99 = !{!50, !34, i64 104}
!100 = !{!46, !47, i64 16}
!101 = !{!102, !104}
!102 = distinct !{!102, !103, !"_ZSt19__relocate_object_aISt4pairIPN4YAML6detail4nodeEbES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!103 = distinct !{!103, !"_ZSt19__relocate_object_aISt4pairIPN4YAML6detail4nodeEbES5_SaIS5_EEvPT_PT0_RT1_"}
!104 = distinct !{!104, !103, !"_ZSt19__relocate_object_aISt4pairIPN4YAML6detail4nodeEbES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!105 = distinct !{!105, !106}
!106 = !{!"llvm.loop.mustprogress"}
!107 = !{!108, !34, i64 64}
!108 = !{!"_ZTSN4YAML6detail4nodeE", !109, i64 0, !110, i64 16, !34, i64 64}
!109 = !{!"_ZTSSt10shared_ptrIN4YAML6detail8node_refEE", !69, i64 0}
!110 = !{!"_ZTSSt3setIPN4YAML6detail4nodeENS2_4lessESaIS3_EE", !111, i64 0}
!111 = !{!"_ZTSSt8_Rb_treeIPN4YAML6detail4nodeES3_St9_IdentityIS3_ENS2_4lessESaIS3_EE", !112, i64 0}
!112 = !{!"_ZTSNSt8_Rb_treeIPN4YAML6detail4nodeES3_St9_IdentityIS3_ENS2_4lessESaIS3_EE13_Rb_tree_implIS6_Lb1EEE", !113, i64 0, !30, i64 8}
!113 = !{!"_ZTSSt20_Rb_tree_key_compareIN4YAML6detail4node4lessEE", !114, i64 0}
!114 = !{!"_ZTSN4YAML6detail4node4lessE"}
!115 = !{!30, !33, i64 8}
!116 = !{!31, !33, i64 24}
!117 = !{!31, !33, i64 16}
!118 = distinct !{null, null, null, null, null}
!119 = distinct !{!119, !106}
!120 = distinct !{null}
!121 = distinct !{!121, !106}
!122 = !{!33, !33, i64 0}
!123 = distinct !{!123, !106}
!124 = distinct !{null, null, null}
!125 = distinct !{ptr @_ZN4YAML6detail13memory_holderD2Ev, null, null, null}
end_hunk_1
