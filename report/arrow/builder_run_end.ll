inline.NumInlined: 872
inline.NumDeleted: 339
begin_hunk_0_@_ZN5arrow8internal20RunCompressorBuilder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE:_ZN5arrow6StatusD2Ev.exit
  %i.d = load ptr, ptr %3, align 8, !tbaa !86     ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef %2)
  br label %bb.b

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow20RunEndEncodedBuilder15ValueRunBuilderC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS4_INS_8DataTypeEERS0_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(192) initializes((0, 192)) %0, ptr noundef %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(176) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.c = load <2 x ptr>, ptr %2, align 8, !tbaa !57
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56   ; 9 uses
  %.not.i.i.i6 = icmp eq ptr %i.j, null           ; 2 uses
  br i1 %.not.i.i.i6, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i7 = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.k, align 4, !tbaa !3
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !3
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.p, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 64, ptr %i.q, align 8, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.s, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.t, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.v, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.w, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN5arrow8internal20RunCompressorBuilderE, i64 16), ptr %0, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <2 x ptr> %i.c, ptr %i.x, align 8, !tbaa !57
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i6, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.z, align 8, !tbaa !61
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !63
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #18, !inline_history !139
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #18, !inline_history !139
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i8 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i8, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.ac, %bb.l ], [ %i.am, %bb.m ]
  %i.an = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.an, label %bb.n, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #18
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j, %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN5arrow20RunEndEncodedBuilder15ValueRunBuilderE, i64 16), ptr %0, align 8, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %4, ptr %i.ao, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !63
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !64
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !64
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow20RunEndEncodedBuilderC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEES7_S3_INS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(176) initializes((0, 160), (168, 176)) %0, ptr noundef %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef readonly captures(none) %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.31", align 8 ; 9 uses
  %6 = alloca [2 x %"class.std::shared_ptr"], align 16 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 64, ptr %i.b, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.d, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.g, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow20RunEndEncodedBuilderE, i64 16), ptr %0, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !142    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !56   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.m, align 4, !tbaa !3
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !3
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  store ptr %i.j, ptr %i.i, align 8, !tbaa !143, !alias.scope !146
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.l, ptr %i.r, align 8, !tbaa !56, !alias.scope !146
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !155
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !158
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  store ptr null, ptr %5, align 8, !tbaa !164, !alias.scope !161
  %i.x = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #21
          to label %.noexc unwind label %bb.ab    ; 8 uses

.noexc:                                           ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 1, ptr %i.z, align 8, !tbaa !61, !noalias !161
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 1, ptr %i.aa, align 4, !tbaa !63, !noalias !161
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow20RunEndEncodedBuilder15ValueRunBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.x, align 8, !tbaa !54, !noalias !161
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  invoke void @_ZN5arrow20RunEndEncodedBuilder15ValueRunBuilderC1EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS4_INS_8DataTypeEERS0_(ptr noundef nonnull align 8 dereferenceable(192) %i.ab, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(176) %0)
          to label %bb.f unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow20RunEndEncodedBuilder15ValueRunBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i, !noalias !161

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow20RunEndEncodedBuilder15ValueRunBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i: ; preds = %.noexc
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 208) #19, !noalias !161
  br label %.body

bb.f:                                             ; preds = %.noexc
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr %i.x, ptr %i.ad, align 8, !tbaa !56, !alias.scope !161
  store ptr %i.ab, ptr %5, align 8, !tbaa !166, !alias.scope !161
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !56 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %2, align 8, !tbaa !57
  store <2 x ptr> %i.ah, ptr %6, align 16, !tbaa !57
  %.not.i.i.i7 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i7, label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i8 = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i8, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

bb.i:                                             ; preds = %bb.g
  %i.am = atomicrmw volatile add ptr %i.ai, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !164
  %.pre19 = load ptr, ptr %i.ad, align 8, !tbaa !56
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit: ; preds = %bb.f, %bb.h, %bb.i
  %i.an = phi ptr [ %i.x, %bb.f ], [ %i.x, %bb.h ], [ %.pre19, %bb.i ]
  %i.ao = phi ptr [ %i.ab, %bb.f ], [ %i.ab, %bb.h ], [ %.pre, %bb.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ao, ptr %i.ap, align 16, !tbaa !58
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr null, ptr %i.ad, align 8, !tbaa !56
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !56
  store ptr null, ptr %5, align 8, !tbaa !164
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 32
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull %6, ptr noundef nonnull %i.as)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader unwind label %bb.ac

_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader: ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !56 ; 8 uses
  %.not.i.i10 = icmp eq ptr %i.au, null
  br i1 %.not.i.i10, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.av, align 8, !tbaa !61
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !63
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !54
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #18, !inline_history !168
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !54
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #18, !inline_history !168
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i11 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i11, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12

bb.n:                                             ; preds = %bb.l
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i13 = phi i32 [ %i.ay, %bb.m ], [ %i.bi, %bb.n ]
  %i.bj = icmp eq i32 %.0.i.i.i.i13, 1
  br i1 %i.bj, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #18
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12, %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !56 ; 8 uses
  %.not.i.i10.1 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i10.1, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1, label %bb.p

bb.p:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i11.1 = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i11.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = add nsw i32 %i.bp, -1
  store i32 %i.br, ptr %i.bm, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12.1

bb.s:                                             ; preds = %bb.q
  %i.bs = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12.1

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12.1: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i13.1 = phi i32 [ %i.bp, %bb.r ], [ %i.bs, %bb.s ]
  %i.bt = icmp eq i32 %.0.i.i.i.i13.1, 1
  br i1 %i.bt, label %bb.t, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1, !prof !66

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12.1
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #18
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1

bb.u:                                             ; preds = %bb.p
  store i32 0, ptr %i.bm, align 8, !tbaa !61
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !63
  %i.bv = load ptr, ptr %i.bl, align 8, !tbaa !54
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #18, !inline_history !168
  %i.by = load ptr, ptr %i.bl, align 8, !tbaa !54
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #18, !inline_history !168
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1

_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1: ; preds = %bb.u, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12.1, %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.cb = load ptr, ptr %i.ar, align 8, !tbaa !67
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !58
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 112
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !82
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !82
  store i64 0, ptr %i.s, align 8, !tbaa !151
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false)
  %i.ch = load ptr, ptr %i.ad, align 8, !tbaa !56 ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIN5arrow20RunEndEncodedBuilder15ValueRunBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 4 uses
  %i.cj = load atomic i64, ptr %i.ci acquire, align 8 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 4294967297
  %i.cl = trunc i64 %i.cj to i32                  ; 2 uses
  br i1 %i.ck, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.ci, align 8, !tbaa !61
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  store i32 0, ptr %i.cm, align 4, !tbaa !63
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !54
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #18, !inline_history !169
  %i.cq = load ptr, ptr %i.ch, align 8, !tbaa !54
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #18, !inline_history !169
  br label %_ZNSt12__shared_ptrIN5arrow20RunEndEncodedBuilder15ValueRunBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i15 = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i15, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cu = add nsw i32 %i.cl, -1
  store i32 %i.cu, ptr %i.ci, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16

bb.z:                                             ; preds = %bb.x
  %i.cv = atomicrmw volatile add ptr %i.ci, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i17 = phi i32 [ %i.cl, %bb.y ], [ %i.cv, %bb.z ]
  %i.cw = icmp eq i32 %.0.i.i.i.i17, 1
  br i1 %i.cw, label %bb.aa, label %_ZNSt12__shared_ptrIN5arrow20RunEndEncodedBuilder15ValueRunBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #18
  br label %_ZNSt12__shared_ptrIN5arrow20RunEndEncodedBuilder15ValueRunBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow20RunEndEncodedBuilder15ValueRunBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.ab:                                            ; preds = %bb.e
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #18
  call void @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZNSt12__shared_ptrIN5arrow20RunEndEncodedBuilder15ValueRunBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  br label %.body

.body:                                            ; preds = %bb.ab, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow20RunEndEncodedBuilder15ValueRunBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.cy, %bb.ac ], [ %i.cx, %bb.ab ], [ %i.ac, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow20RunEndEncodedBuilder15ValueRunBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZNSt12__shared_ptrIN5arrow17RunEndEncodedTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #18
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow20RunEndEncodedBuilder15ValueRunBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !63
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !64
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !64
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow17RunEndEncodedTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !63
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !64
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !64
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow20RunEndEncodedBuilder14ResizePhysicalEl(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(176) %1, i64 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !170
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58, !noalias !170 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54, !noalias !170
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !noalias !170
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %i.d, i64 noundef %2), !noalias !170, !inline_history !173
  %i.h = load ptr, ptr %3, align 8, !tbaa !86, !noalias !170 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !170
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit19, label %.sink.split

_ZN5arrow6StatusD2Ev.exit19:                      ; preds = %bb.a
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !58, !noalias !170 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.l = load i64, ptr %i.k, align 8, !tbaa !82, !noalias !170
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 %i.l, ptr %i.m, align 8, !tbaa !82, !noalias !170
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !54, !noalias !170
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !170
  %i.q = call noundef i64 %i.p(ptr noundef nonnull align 8 dereferenceable(144) %i.j), !noalias !170, !inline_history !174
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 %i.q, ptr %i.r, align 8, !tbaa !84, !noalias !170
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !58, !noalias !170
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.u = load i64, ptr %i.t, align 8, !tbaa !85, !noalias !170
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i64 %i.u, ptr %i.v, align 8, !tbaa !85, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !67
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !58   ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !54
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(144) %i.y, i64 noundef %2)
  %i.ac = load ptr, ptr %4, align 8, !tbaa !86    ; 2 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit19
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !151
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !67
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !58
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !82
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !82
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.af, ptr %i.al, align 8, !tbaa !84
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %i.h, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !86
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %_ZN5arrow6StatusD2Ev.exit19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(144) ptr @_ZN5arrow20RunEndEncodedBuilder15run_end_builderEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow20RunEndEncodedBuilder5ResetEv(ptr noundef nonnull align 8 captures(none) dereferenceable(176) initializes((104, 120), (168, 176)) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(184) %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !58   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(144) %i.h)
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.o = load i64, ptr %i.n, align 8, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.o, ptr %i.p, align 8, !tbaa !82
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.q, align 8, !tbaa !84
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 0, ptr %i.r, align 8, !tbaa !151
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow20RunEndEncodedBuilder11AppendNullsEl(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(176) %1, i64 noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(184) %i.b, i64 noundef %2)
  %i.f = load ptr, ptr %3, align 8, !tbaa !86     ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.i = load i64, ptr %i.h, align 8, !tbaa !151
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !167
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 176
  %i.l = load i64, ptr %i.k, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !67
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.q = load i64, ptr %i.p, align 8, !tbaa !82
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.q, ptr %i.r, align 8, !tbaa !82
  %i.s = add nsw i64 %i.l, %i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.s, ptr %i.t, align 8, !tbaa !84
  store ptr null, ptr %0, align 8, !tbaa !86, !alias.scope !175
  br label %bb.b

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow20RunEndEncodedBuilder17AppendEmptyValuesEl(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(176) %1, i64 noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(184) %i.b, i64 noundef %2)
  %i.f = load ptr, ptr %3, align 8, !tbaa !86     ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.i = load i64, ptr %i.h, align 8, !tbaa !151
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.n = load i64, ptr %i.m, align 8, !tbaa !82
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.n, ptr %i.o, align 8, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.i, ptr %i.p, align 8, !tbaa !84
  store ptr null, ptr %0, align 8, !tbaa !86, !alias.scope !178
  br label %bb.b

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow20RunEndEncodedBuilder12AppendScalarERKNS_6ScalarEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(41) %2, i64 noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !181
  %i.e = icmp eq i32 %i.d, 38
  br i1 %i.e, label %bb.b, label %_ZN5arrow6StatusD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !194
  %i.h = load ptr, ptr %1, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(41) %i.g, i64 noundef %3)
  br label %bb.d

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !167  ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(184) %i.l, ptr noundef nonnull align 8 dereferenceable(41) %2, i64 noundef %3)
  %i.p = load ptr, ptr %4, align 8, !tbaa !86     ; 2 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.s = load i64, ptr %i.r, align 8, !tbaa !151
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !167
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  %i.v = load i64, ptr %i.u, align 8, !tbaa !74
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !67
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !58
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !82
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !82
  %i.ac = add nsw i64 %i.v, %i.s
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !84
  store ptr null, ptr %0, align 8, !tbaa !86, !alias.scope !196
  br label %bb.d

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow20RunEndEncodedBuilder13AppendScalarsERKSt6vectorISt10shared_ptrINS_6ScalarEESaIS4_EE(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN5arrow12ArrayBuilder13AppendScalarsERKSt6vectorISt10shared_ptrINS_6ScalarEESaIS4_EE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !86     ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.d = load i64, ptr %i.c, align 8, !tbaa !151
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !167
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.h = load i64, ptr %i.g, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !67
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.m = load i64, ptr %i.l, align 8, !tbaa !82
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.m, ptr %i.n, align 8, !tbaa !82
  %i.o = add nsw i64 %i.h, %i.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.o, ptr %i.p, align 8, !tbaa !84
  store ptr null, ptr %0, align 8, !tbaa !86, !alias.scope !199
  br label %bb.b

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow20RunEndEncodedBuilder16AppendArraySliceERKNS_9ArraySpanEll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(184) %i.b)
  %i.f = load ptr, ptr %6, align 8, !tbaa !86     ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.a, label %bb.h

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.h = icmp eq i64 %4, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !86, !alias.scope !202
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !143
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !155
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !158
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !142
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !181
  switch i32 %i.q, label %bb.d [
    i32 5, label %_ZN5arrow6StatusD2Ev.exit36
    i32 7, label %_ZN5arrow6StatusD2Ev.exit42
    i32 9, label %_ZN5arrow6StatusD2Ev.exit48
  ]

_ZN5arrow6StatusD2Ev.exit36:                      ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZN5arrow20RunEndEncodedBuilder18DoAppendArraySliceIsEENS_6StatusERKNS_9ArraySpanEll(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4)
  %i.r = load ptr, ptr %7, align 8, !tbaa !86     ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %bb.h

_ZN5arrow6StatusD2Ev.exit42:                      ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @_ZN5arrow20RunEndEncodedBuilder18DoAppendArraySliceIiEENS_6StatusERKNS_9ArraySpanEll(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4)
  %i.t = load ptr, ptr %8, align 8, !tbaa !86     ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %bb.h

_ZN5arrow6StatusD2Ev.exit48:                      ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @_ZN5arrow20RunEndEncodedBuilder18DoAppendArraySliceIlEENS_6StatusERKNS_9ArraySpanEll(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4)
  %i.v = load ptr, ptr %9, align 8, !tbaa !86     ; 2 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.g, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !205
  call void @_ZN5arrow8internal12JoinToStringIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(34) @.str, ptr noundef nonnull align 8 dereferenceable(16) %i.n), !noalias !205
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %5, align 8, !tbaa !210, !noalias !205 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN5arrow6Status7InvalidIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !65, !noalias !205
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #19
  br label %_ZN5arrow6Status7InvalidIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEES0_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %5, align 8, !tbaa !210, !noalias !205 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.f
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !65, !noalias !205
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !205
  resume { ptr, i32 } %i.ac

_ZN5arrow6Status7InvalidIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEES0_DpOT_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !205
  br label %bb.h

bb.g:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit48, %_ZN5arrow6StatusD2Ev.exit42, %_ZN5arrow6StatusD2Ev.exit36
  store ptr null, ptr %0, align 8, !tbaa !86, !alias.scope !213
  br label %bb.h

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit48, %_ZN5arrow6StatusD2Ev.exit42, %_ZN5arrow6StatusD2Ev.exit36, %_ZN5arrow6StatusD2Ev.exit, %bb.g, %_ZN5arrow6Status7InvalidIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEES0_DpOT_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow20RunEndEncodedBuilder18DoAppendArraySliceIsEENS_6StatusERKNS_9ArraySpanEll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !216
  %i.c = add nsw i64 %i.b, %3                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !223  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !216
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !224
  %i.j = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.g ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !227  ; 3 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE13PhysicalIndexEl.exit.thread

_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE13PhysicalIndexEl.exit.thread: ; preds = %bb.a
  %i.n = ptrtoint ptr %i.j to i64                 ; 2 uses
  br label %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE13PhysicalIndexEl.exit46

_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %bb.a, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %.017.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.j, %bb.a ] ; 2 uses
  %.01116.i.i.i.i = phi i64 [ %.112.i.i.i.i, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.l, %bb.a ] ; 2 uses
  %i.o = lshr i64 %.01116.i.i.i.i, 1              ; 3 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %.017.i.i.i.i, i64 %i.o ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !228
  %i.r = sext i16 %i.q to i64
  %i.s = icmp slt i64 %i.c, %i.r                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.u = xor i64 %i.o, -1
  %i.v = add nsw i64 %.01116.i.i.i.i, %i.u
  %.112.i.i.i.i = select i1 %i.s, i64 %i.o, i64 %i.v ; 2 uses
  %.1.i.i.i.i = select i1 %i.s, ptr %.017.i.i.i.i, ptr %i.t ; 2 uses
  %i.w = icmp sgt i64 %.112.i.i.i.i, 0
  br i1 %i.w, label %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE13PhysicalIndexEl.exit, !llvm.loop !229

_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE13PhysicalIndexEl.exit: ; preds = %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %i.x = add nsw i64 %4, -1
  %i.y = add nsw i64 %i.x, %i.c
  br label %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i39

_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i39: ; preds = %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE13PhysicalIndexEl.exit, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i39
  %.017.i.i.i.i40 = phi ptr [ %.1.i.i.i.i45, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i39 ], [ %i.j, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE13PhysicalIndexEl.exit ] ; 2 uses
  %.01116.i.i.i.i41 = phi i64 [ %.112.i.i.i.i44, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i39 ], [ %i.l, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE13PhysicalIndexEl.exit ] ; 2 uses
  %i.z = lshr i64 %.01116.i.i.i.i41, 1            ; 3 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %.017.i.i.i.i40, i64 %i.z ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !228
  %i.ac = sext i16 %i.ab to i64
  %i.ad = icmp slt i64 %i.y, %i.ac                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.af = xor i64 %i.z, -1
  %i.ag = add nsw i64 %.01116.i.i.i.i41, %i.af
  %.112.i.i.i.i44 = select i1 %i.ad, i64 %i.z, i64 %i.ag ; 2 uses
  %.1.i.i.i.i45 = select i1 %i.ad, ptr %.017.i.i.i.i40, ptr %i.ae ; 2 uses
  %i.ah = icmp sgt i64 %.112.i.i.i.i44, 0
  br i1 %i.ah, label %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i39, label %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE13PhysicalIndexEl.exit46.loopexit, !llvm.loop !229

_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE13PhysicalIndexEl.exit46.loopexit: ; preds = %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i39
  %i.ai = ptrtoint ptr %i.j to i64                ; 2 uses
  %i.aj = ptrtoint ptr %.1.i.i.i.i to i64
  %i.ak = sub i64 %i.aj, %i.ai
  %i.al = ashr exact i64 %i.ak, 1
  %.pre85 = ptrtoint ptr %.1.i.i.i.i45 to i64
  br label %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE13PhysicalIndexEl.exit46

_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE13PhysicalIndexEl.exit46: ; preds = %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE13PhysicalIndexEl.exit46.loopexit, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE13PhysicalIndexEl.exit.thread
  %.pre-phi = phi i64 [ %.pre85, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE13PhysicalIndexEl.exit46.loopexit ], [ %i.n, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE13PhysicalIndexEl.exit.thread ]
  %i.am = phi i64 [ %i.al, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE13PhysicalIndexEl.exit46.loopexit ], [ 0, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE13PhysicalIndexEl.exit.thread ] ; 3 uses
  %i.an = phi i64 [ %i.ai, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE13PhysicalIndexEl.exit46.loopexit ], [ %i.n, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE13PhysicalIndexEl.exit.thread ]
  %i.ao = sub i64 %.pre-phi, %i.an
  %i.ap = ashr exact i64 %i.ao, 1
  %reass.sub = sub nsw i64 %i.ap, %i.am
  %i.aq = add i64 %reass.sub, 1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !82, !noalias !230 ; 2 uses
  %i.at = load ptr, ptr %1, align 8, !tbaa !54, !noalias !230
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !noalias !230
  %i.aw = tail call noundef i64 %i.av(ptr noundef nonnull align 8 dereferenceable(176) %1), !noalias !230, !inline_history !235
  %i.ax = add nsw i64 %i.aw, %i.aq                ; 2 uses
  %.not.i.i = icmp sgt i64 %i.ax, %i.as
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE13PhysicalIndexEl.exit46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %_ZN5arrow6StatusD2Ev.exit50

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE13PhysicalIndexEl.exit46
  %i.ay = shl nsw i64 %i.as, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.ax, i64 %i.ay)
  %i.az = load ptr, ptr %1, align 8, !tbaa !54, !noalias !230
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !230
  call void %i.bb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef %.sroa.speculated.i.i.i), !inline_history !235
  %.pr = load ptr, ptr %6, align 8, !tbaa !86     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.bc = icmp eq ptr %.pr, null
  br i1 %i.bc, label %_ZN5arrow6StatusD2Ev.exit50, label %.critedge

_ZN5arrow6StatusD2Ev.exit50:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %.not79 = icmp sgt i64 %4, 0
  br i1 %.not79, label %_ZN5arrow6StatusD2Ev.exit53.lr.ph, label %.critedge35

_ZN5arrow6StatusD2Ev.exit53.lr.ph:                ; preds = %_ZN5arrow6StatusD2Ev.exit50
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.pre = load i64, ptr %i.bd, align 8, !tbaa !151
  br label %_ZN5arrow6StatusD2Ev.exit53

_ZN5arrow6StatusD2Ev.exit53:                      ; preds = %_ZN5arrow6StatusD2Ev.exit53.lr.ph, %_ZN5arrow6StatusD2Ev.exit57
  %i.bg = phi i64 [ %.pre, %_ZN5arrow6StatusD2Ev.exit53.lr.ph ], [ %i.bm, %_ZN5arrow6StatusD2Ev.exit57 ]
  %.sroa.11.081 = phi i64 [ %i.am, %_ZN5arrow6StatusD2Ev.exit53.lr.ph ], [ %i.bw, %_ZN5arrow6StatusD2Ev.exit57 ] ; 2 uses
  %.sroa.7.080 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit53.lr.ph ], [ %.sroa.speculated.i.i, %_ZN5arrow6StatusD2Ev.exit57 ]
  %i.bh = getelementptr inbounds [2 x i8], ptr %i.j, i64 %.sroa.11.081 ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !228
  %i.bj = sext i16 %i.bi to i64
  %i.bk = sub nsw i64 %i.bj, %i.c
  %.sroa.speculated4.i.i.i = call i64 @llvm.smax.i64(i64 %i.bk, i64 0)
  %.sroa.speculated.i.i.i51 = call noundef i64 @llvm.smin.i64(i64 %4, i64 %.sroa.speculated4.i.i.i)
  %i.bl = sub nsw i64 %.sroa.speculated.i.i.i51, %.sroa.7.080
  %i.bm = add nsw i64 %i.bl, %i.bg                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZN5arrow20RunEndEncodedBuilder14DoAppendRunEndIsEENS_6StatusEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef %i.bm)
  %i.bn = load ptr, ptr %7, align 8, !tbaa !86    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_ZN5arrow6StatusD2Ev.exit57, label %.critedge.sink.split

_ZN5arrow6StatusD2Ev.exit57:                      ; preds = %_ZN5arrow6StatusD2Ev.exit53
  %i.bp = load ptr, ptr %i.be, align 8, !tbaa !67
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !58
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 112
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !82
  store i64 %i.bs, ptr %i.ar, align 8, !tbaa !82
  store i64 %i.bm, ptr %i.bf, align 8, !tbaa !84
  store i64 %i.bm, ptr %i.bd, align 8, !tbaa !151
  %i.bt = load i16, ptr %i.bh, align 2, !tbaa !228
  %i.bu = sext i16 %i.bt to i64
  %i.bv = sub nsw i64 %i.bu, %i.c                 ; 2 uses
  %.sroa.speculated4.i.i = call i64 @llvm.smax.i64(i64 %i.bv, i64 0)
  %.sroa.speculated.i.i = call noundef i64 @llvm.smin.i64(i64 %4, i64 %.sroa.speculated4.i.i)
  %i.bw = add nsw i64 %.sroa.11.081, 1
  %.not = icmp slt i64 %i.bv, %4
  br i1 %.not, label %_ZN5arrow6StatusD2Ev.exit53, label %.critedge35, !llvm.loop !236

.critedge35:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit57, %_ZN5arrow6StatusD2Ev.exit50
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !167 ; 4 uses
  %i.bz = load ptr, ptr %i.d, align 8, !tbaa !223
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !237
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 144 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !58, !noalias !237 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !54, !noalias !237
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 88
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !237
  call void %i.cf(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(144) %i.cc, ptr noundef nonnull align 8 dereferenceable(128) %i.ca, i64 noundef %i.am, i64 noundef %i.aq), !noalias !237, !inline_history !240
  %i.cg = load ptr, ptr %5, align 8, !tbaa !86, !noalias !237 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !237
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_ZN5arrow6StatusD2Ev.exit63, label %.critedge.sink.split

_ZN5arrow6StatusD2Ev.exit63:                      ; preds = %.critedge35
  %i.ci = load ptr, ptr %i.cb, align 8, !tbaa !58, !noalias !237 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 112
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !82, !noalias !237
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 112
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !82, !noalias !237
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !54, !noalias !237
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !237
  %i.cp = call noundef i64 %i.co(ptr noundef nonnull align 8 dereferenceable(144) %i.ci), !noalias !237, !inline_history !241
  %i.cq = getelementptr inbounds nuw i8, ptr %i.by, i64 104
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !84, !noalias !237
  %i.cr = load ptr, ptr %i.cb, align 8, !tbaa !58, !noalias !237
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !85, !noalias !237
  %i.cu = getelementptr inbounds nuw i8, ptr %i.by, i64 96
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !85, !noalias !237
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %_ZN5arrow6StatusD2Ev.exit53, %.critedge35, %_ZN5arrow6StatusD2Ev.exit63
  %.sink = phi ptr [ %i.cg, %.critedge35 ], [ null, %_ZN5arrow6StatusD2Ev.exit63 ], [ %i.bn, %_ZN5arrow6StatusD2Ev.exit53 ]
  store ptr %.sink, ptr %0, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow20RunEndEncodedBuilder18DoAppendArraySliceIiEENS_6StatusERKNS_9ArraySpanEll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !216
  %i.c = add nsw i64 %i.b, %3                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !223  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !216
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !224
  %i.j = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.g ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !227  ; 3 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIiE13PhysicalIndexEl.exit.thread

_ZNK5arrow8ree_util22RunEndEncodedArraySpanIiE13PhysicalIndexEl.exit.thread: ; preds = %bb.a
  %i.n = ptrtoint ptr %i.j to i64                 ; 2 uses
  br label %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIiE13PhysicalIndexEl.exit46

_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %bb.a, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %.017.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.j, %bb.a ] ; 2 uses
  %.01116.i.i.i.i = phi i64 [ %.112.i.i.i.i, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.l, %bb.a ] ; 2 uses
  %i.o = lshr i64 %.01116.i.i.i.i, 1              ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.017.i.i.i.i, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %i.c, %i.r                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.u = xor i64 %i.o, -1
  %i.v = add nsw i64 %.01116.i.i.i.i, %i.u
  %.112.i.i.i.i = select i1 %i.s, i64 %i.o, i64 %i.v ; 2 uses
  %.1.i.i.i.i = select i1 %i.s, ptr %.017.i.i.i.i, ptr %i.t ; 2 uses
  %i.w = icmp sgt i64 %.112.i.i.i.i, 0
  br i1 %i.w, label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIiE13PhysicalIndexEl.exit, !llvm.loop !242

_ZNK5arrow8ree_util22RunEndEncodedArraySpanIiE13PhysicalIndexEl.exit: ; preds = %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %i.x = add nsw i64 %4, -1
  %i.y = add nsw i64 %i.x, %i.c
  br label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i39

_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i39: ; preds = %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIiE13PhysicalIndexEl.exit, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i39
  %.017.i.i.i.i40 = phi ptr [ %.1.i.i.i.i45, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i39 ], [ %i.j, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIiE13PhysicalIndexEl.exit ] ; 2 uses
  %.01116.i.i.i.i41 = phi i64 [ %.112.i.i.i.i44, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i39 ], [ %i.l, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIiE13PhysicalIndexEl.exit ] ; 2 uses
  %i.z = lshr i64 %.01116.i.i.i.i41, 1            ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.017.i.i.i.i40, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %i.y, %i.ac                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.af = xor i64 %i.z, -1
  %i.ag = add nsw i64 %.01116.i.i.i.i41, %i.af
  %.112.i.i.i.i44 = select i1 %i.ad, i64 %i.z, i64 %i.ag ; 2 uses
  %.1.i.i.i.i45 = select i1 %i.ad, ptr %.017.i.i.i.i40, ptr %i.ae ; 2 uses
  %i.ah = icmp sgt i64 %.112.i.i.i.i44, 0
  br i1 %i.ah, label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i39, label %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIiE13PhysicalIndexEl.exit46.loopexit, !llvm.loop !242

_ZNK5arrow8ree_util22RunEndEncodedArraySpanIiE13PhysicalIndexEl.exit46.loopexit: ; preds = %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i39
  %i.ai = ptrtoint ptr %i.j to i64                ; 2 uses
  %i.aj = ptrtoint ptr %.1.i.i.i.i to i64
  %i.ak = sub i64 %i.aj, %i.ai
  %i.al = ashr exact i64 %i.ak, 2
  %.pre85 = ptrtoint ptr %.1.i.i.i.i45 to i64
  br label %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIiE13PhysicalIndexEl.exit46

_ZNK5arrow8ree_util22RunEndEncodedArraySpanIiE13PhysicalIndexEl.exit46: ; preds = %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIiE13PhysicalIndexEl.exit46.loopexit, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIiE13PhysicalIndexEl.exit.thread
  %.pre-phi = phi i64 [ %.pre85, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIiE13PhysicalIndexEl.exit46.loopexit ], [ %i.n, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIiE13PhysicalIndexEl.exit.thread ]
  %i.am = phi i64 [ %i.al, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIiE13PhysicalIndexEl.exit46.loopexit ], [ 0, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIiE13PhysicalIndexEl.exit.thread ] ; 3 uses
  %i.an = phi i64 [ %i.ai, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIiE13PhysicalIndexEl.exit46.loopexit ], [ %i.n, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIiE13PhysicalIndexEl.exit.thread ]
  %i.ao = sub i64 %.pre-phi, %i.an
  %i.ap = ashr exact i64 %i.ao, 2
  %reass.sub = sub nsw i64 %i.ap, %i.am
  %i.aq = add nsw i64 %reass.sub, 1               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !82, !noalias !243 ; 2 uses
  %i.at = load ptr, ptr %1, align 8, !tbaa !54, !noalias !243
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !noalias !243
  %i.aw = tail call noundef i64 %i.av(ptr noundef nonnull align 8 dereferenceable(176) %1), !noalias !243, !inline_history !235
  %i.ax = add nsw i64 %i.aw, %i.aq                ; 2 uses
  %.not.i.i = icmp sgt i64 %i.ax, %i.as
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIiE13PhysicalIndexEl.exit46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %_ZN5arrow6StatusD2Ev.exit50

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIiE13PhysicalIndexEl.exit46
  %i.ay = shl nsw i64 %i.as, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.ax, i64 %i.ay)
  %i.az = load ptr, ptr %1, align 8, !tbaa !54, !noalias !243
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !243
  call void %i.bb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef %.sroa.speculated.i.i.i), !inline_history !235
  %.pr = load ptr, ptr %6, align 8, !tbaa !86     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.bc = icmp eq ptr %.pr, null
  br i1 %i.bc, label %_ZN5arrow6StatusD2Ev.exit50, label %.critedge

_ZN5arrow6StatusD2Ev.exit50:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %.not79 = icmp sgt i64 %4, 0
  br i1 %.not79, label %_ZN5arrow6StatusD2Ev.exit53.lr.ph, label %.critedge35

_ZN5arrow6StatusD2Ev.exit53.lr.ph:                ; preds = %_ZN5arrow6StatusD2Ev.exit50
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.pre = load i64, ptr %i.bd, align 8, !tbaa !151
  br label %_ZN5arrow6StatusD2Ev.exit53

_ZN5arrow6StatusD2Ev.exit53:                      ; preds = %_ZN5arrow6StatusD2Ev.exit53.lr.ph, %_ZN5arrow6StatusD2Ev.exit57
  %i.bg = phi i64 [ %.pre, %_ZN5arrow6StatusD2Ev.exit53.lr.ph ], [ %i.bm, %_ZN5arrow6StatusD2Ev.exit57 ]
  %.sroa.11.081 = phi i64 [ %i.am, %_ZN5arrow6StatusD2Ev.exit53.lr.ph ], [ %i.bw, %_ZN5arrow6StatusD2Ev.exit57 ] ; 2 uses
  %.sroa.7.080 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit53.lr.ph ], [ %.sroa.speculated.i.i, %_ZN5arrow6StatusD2Ev.exit57 ]
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.sroa.11.081 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bj = sext i32 %i.bi to i64
  %i.bk = sub nsw i64 %i.bj, %i.c
  %.sroa.speculated4.i.i.i = call i64 @llvm.smax.i64(i64 %i.bk, i64 0)
  %.sroa.speculated.i.i.i51 = call noundef i64 @llvm.smin.i64(i64 %4, i64 %.sroa.speculated4.i.i.i)
  %i.bl = sub nsw i64 %.sroa.speculated.i.i.i51, %.sroa.7.080
  %i.bm = add nsw i64 %i.bl, %i.bg                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZN5arrow20RunEndEncodedBuilder14DoAppendRunEndIiEENS_6StatusEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef %i.bm)
  %i.bn = load ptr, ptr %7, align 8, !tbaa !86    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_ZN5arrow6StatusD2Ev.exit57, label %.critedge.sink.split

_ZN5arrow6StatusD2Ev.exit57:                      ; preds = %_ZN5arrow6StatusD2Ev.exit53
  %i.bp = load ptr, ptr %i.be, align 8, !tbaa !67
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !58
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 112
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !82
  store i64 %i.bs, ptr %i.ar, align 8, !tbaa !82
  store i64 %i.bm, ptr %i.bf, align 8, !tbaa !84
  store i64 %i.bm, ptr %i.bd, align 8, !tbaa !151
  %i.bt = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bu = sext i32 %i.bt to i64
  %i.bv = sub nsw i64 %i.bu, %i.c                 ; 2 uses
  %.sroa.speculated4.i.i = call i64 @llvm.smax.i64(i64 %i.bv, i64 0)
  %.sroa.speculated.i.i = call noundef i64 @llvm.smin.i64(i64 %4, i64 %.sroa.speculated4.i.i)
  %i.bw = add nsw i64 %.sroa.11.081, 1
  %.not = icmp slt i64 %i.bv, %4
  br i1 %.not, label %_ZN5arrow6StatusD2Ev.exit53, label %.critedge35, !llvm.loop !248

.critedge35:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit57, %_ZN5arrow6StatusD2Ev.exit50
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !167 ; 4 uses
  %i.bz = load ptr, ptr %i.d, align 8, !tbaa !223
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !249
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 144 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !58, !noalias !249 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !54, !noalias !249
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 88
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !249
  call void %i.cf(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(144) %i.cc, ptr noundef nonnull align 8 dereferenceable(128) %i.ca, i64 noundef %i.am, i64 noundef %i.aq), !noalias !249, !inline_history !240
  %i.cg = load ptr, ptr %5, align 8, !tbaa !86, !noalias !249 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !249
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_ZN5arrow6StatusD2Ev.exit63, label %.critedge.sink.split

_ZN5arrow6StatusD2Ev.exit63:                      ; preds = %.critedge35
  %i.ci = load ptr, ptr %i.cb, align 8, !tbaa !58, !noalias !249 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 112
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !82, !noalias !249
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 112
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !82, !noalias !249
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !54, !noalias !249
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !249
  %i.cp = call noundef i64 %i.co(ptr noundef nonnull align 8 dereferenceable(144) %i.ci), !noalias !249, !inline_history !241
  %i.cq = getelementptr inbounds nuw i8, ptr %i.by, i64 104
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !84, !noalias !249
  %i.cr = load ptr, ptr %i.cb, align 8, !tbaa !58, !noalias !249
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !85, !noalias !249
  %i.cu = getelementptr inbounds nuw i8, ptr %i.by, i64 96
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !85, !noalias !249
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %_ZN5arrow6StatusD2Ev.exit53, %.critedge35, %_ZN5arrow6StatusD2Ev.exit63
  %.sink = phi ptr [ %i.cg, %.critedge35 ], [ null, %_ZN5arrow6StatusD2Ev.exit63 ], [ %i.bn, %_ZN5arrow6StatusD2Ev.exit53 ]
  store ptr %.sink, ptr %0, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow20RunEndEncodedBuilder18DoAppendArraySliceIlEENS_6StatusERKNS_9ArraySpanEll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !216
  %i.c = add nsw i64 %i.b, %3                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !223  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !216
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !224
  %i.j = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.g ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !227  ; 3 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit.thread

_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit.thread: ; preds = %bb.a
  %i.n = ptrtoint ptr %i.j to i64                 ; 2 uses
  br label %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit46

_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %bb.a, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %.017.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.j, %bb.a ] ; 2 uses
  %.01116.i.i.i.i = phi i64 [ %.112.i.i.i.i, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.l, %bb.a ] ; 2 uses
  %i.o = lshr i64 %.01116.i.i.i.i, 1              ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.017.i.i.i.i, i64 %i.o ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !252
  %i.r = icmp slt i64 %i.c, %i.q                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = xor i64 %i.o, -1
  %i.u = add nsw i64 %.01116.i.i.i.i, %i.t
  %.112.i.i.i.i = select i1 %i.r, i64 %i.o, i64 %i.u ; 2 uses
  %.1.i.i.i.i = select i1 %i.r, ptr %.017.i.i.i.i, ptr %i.s ; 2 uses
  %i.v = icmp sgt i64 %.112.i.i.i.i, 0
  br i1 %i.v, label %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit, !llvm.loop !253

_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit: ; preds = %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %i.w = add nsw i64 %4, -1
  %i.x = add nsw i64 %i.w, %i.c
  br label %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i39

_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i39: ; preds = %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i39
  %.017.i.i.i.i40 = phi ptr [ %.1.i.i.i.i45, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i39 ], [ %i.j, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit ] ; 2 uses
  %.01116.i.i.i.i41 = phi i64 [ %.112.i.i.i.i44, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i39 ], [ %i.l, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit ] ; 2 uses
  %i.y = lshr i64 %.01116.i.i.i.i41, 1            ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.017.i.i.i.i40, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !252
  %i.ab = icmp slt i64 %i.x, %i.aa                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = xor i64 %i.y, -1
  %i.ae = add nsw i64 %.01116.i.i.i.i41, %i.ad
  %.112.i.i.i.i44 = select i1 %i.ab, i64 %i.y, i64 %i.ae ; 2 uses
  %.1.i.i.i.i45 = select i1 %i.ab, ptr %.017.i.i.i.i40, ptr %i.ac ; 2 uses
  %i.af = icmp sgt i64 %.112.i.i.i.i44, 0
  br i1 %i.af, label %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i39, label %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit46.loopexit, !llvm.loop !253

_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit46.loopexit: ; preds = %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i39
  %i.ag = ptrtoint ptr %i.j to i64                ; 2 uses
  %i.ah = ptrtoint ptr %.1.i.i.i.i to i64
  %i.ai = sub i64 %i.ah, %i.ag
  %i.aj = ashr exact i64 %i.ai, 3
  %.pre86 = ptrtoint ptr %.1.i.i.i.i45 to i64
  br label %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit46

_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit46: ; preds = %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit46.loopexit, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit.thread
  %.pre-phi = phi i64 [ %.pre86, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit46.loopexit ], [ %i.n, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit.thread ]
  %i.ak = phi i64 [ %i.aj, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit46.loopexit ], [ 0, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit.thread ] ; 3 uses
  %i.al = phi i64 [ %i.ag, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit46.loopexit ], [ %i.n, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit.thread ]
  %i.am = sub i64 %.pre-phi, %i.al
  %i.an = ashr exact i64 %i.am, 3
  %reass.sub = sub nsw i64 %i.an, %i.ak
  %i.ao = add nsw i64 %reass.sub, 1               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !82, !noalias !254 ; 2 uses
  %i.ar = load ptr, ptr %1, align 8, !tbaa !54, !noalias !254
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !noalias !254
  %i.au = tail call noundef i64 %i.at(ptr noundef nonnull align 8 dereferenceable(176) %1), !noalias !254, !inline_history !235
  %i.av = add nsw i64 %i.au, %i.ao                ; 2 uses
  %.not.i.i = icmp sgt i64 %i.av, %i.aq
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %_ZN5arrow6StatusD2Ev.exit50

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit46
  %i.aw = shl nsw i64 %i.aq, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.av, i64 %i.aw)
  %i.ax = load ptr, ptr %1, align 8, !tbaa !54, !noalias !254
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !254
  call void %i.az(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef %.sroa.speculated.i.i.i), !inline_history !235
  %.pr = load ptr, ptr %7, align 8, !tbaa !86     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.ba = icmp eq ptr %.pr, null
  br i1 %i.ba, label %_ZN5arrow6StatusD2Ev.exit50, label %.critedge

_ZN5arrow6StatusD2Ev.exit50:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %.not79 = icmp sgt i64 %4, 0
  br i1 %.not79, label %.lr.ph, label %.critedge35

.lr.ph:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit50
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.pre = load i64, ptr %i.bb, align 8, !tbaa !151
  %.pre83 = load ptr, ptr %i.bc, align 8, !tbaa !67, !noalias !259
  %.pre84 = load ptr, ptr %.pre83, align 8, !tbaa !58, !noalias !259 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre84, i64 112
  %.pre85 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !82, !noalias !262
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5arrow6StatusD2Ev.exit57
  %i.be = phi i64 [ %.pre85, %.lr.ph ], [ %i.cw, %_ZN5arrow6StatusD2Ev.exit57 ] ; 2 uses
  %i.bf = phi ptr [ %.pre84, %.lr.ph ], [ %i.cu, %_ZN5arrow6StatusD2Ev.exit57 ] ; 9 uses
  %i.bg = phi i64 [ %.pre, %.lr.ph ], [ %i.bl, %_ZN5arrow6StatusD2Ev.exit57 ]
  %.sroa.11.081 = phi i64 [ %i.ak, %.lr.ph ], [ %i.cz, %_ZN5arrow6StatusD2Ev.exit57 ] ; 2 uses
  %.sroa.7.080 = phi i64 [ 0, %.lr.ph ], [ %.sroa.speculated.i.i, %_ZN5arrow6StatusD2Ev.exit57 ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.sroa.11.081 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !252
  %i.bj = sub nsw i64 %i.bi, %i.c
  %.sroa.speculated4.i.i.i = call i64 @llvm.smax.i64(i64 %i.bj, i64 0)
  %.sroa.speculated.i.i.i51 = call noundef i64 @llvm.smin.i64(i64 %4, i64 %.sroa.speculated4.i.i.i)
  %i.bk = sub nsw i64 %.sroa.speculated.i.i.i51, %.sroa.7.080
  %i.bl = add nsw i64 %i.bk, %i.bg                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18, !noalias !267
  %i.bm = load ptr, ptr %i.bf, align 8, !tbaa !54, !noalias !262
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !262
  %i.bp = call noundef i64 %i.bo(ptr noundef nonnull align 8 dereferenceable(216) %i.bf), !noalias !262, !inline_history !268 ; 2 uses
  %.not.i.not.i.i = icmp slt i64 %i.bp, %i.be
  br i1 %.not.i.not.i.i, label %_ZN5arrow6StatusD2Ev.exit10.thread.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i

_ZN5arrow6StatusD2Ev.exit10.thread.i.i:           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !267
  br label %_ZN5arrow6StatusD2Ev.exit57

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.b
  %i.bq = add nsw i64 %i.bp, 1
  %i.br = shl nsw i64 %i.be, 1
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.bq, i64 %i.br)
  %i.bs = load ptr, ptr %i.bf, align 8, !tbaa !54, !noalias !262
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !262
  call void %i.bu(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(216) %i.bf, i64 noundef %.sroa.speculated.i.i.i.i), !noalias !267, !inline_history !268
  %.pr.i.i = load ptr, ptr %6, align 8, !tbaa !86, !noalias !267 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !267
  %i.bv = icmp eq ptr %.pr.i.i, null
  br i1 %i.bv, label %_ZN5arrow6StatusD2Ev.exit57, label %.critedge.sink.split

_ZN5arrow6StatusD2Ev.exit57:                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i, %_ZN5arrow6StatusD2Ev.exit10.thread.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !52, !noalias !267
  %i.by = getelementptr inbounds nuw i8, ptr %i.bf, i64 80 ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !269, !noalias !267 ; 2 uses
  %i.ca = sdiv i64 %i.bz, 8
  %i.cb = getelementptr inbounds i8, ptr %i.bx, i64 %i.ca ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !65, !noalias !267
  %i.cd = srem i64 %i.bz, 8
  %i.ce = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !65, !noalias !267
  %i.cg = or i8 %i.cf, %i.cc
  store i8 %i.cg, ptr %i.cb, align 1, !tbaa !65, !noalias !267
  %i.ch = load i64, ptr %i.by, align 8, !tbaa !269, !noalias !267
  %i.ci = add nsw i64 %i.ch, 1
  store i64 %i.ci, ptr %i.by, align 8, !tbaa !269, !noalias !267
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bf, i64 104 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !252, !noalias !267
  %i.cl = add nsw i64 %i.ck, 1
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !252, !noalias !267
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bf, i64 184
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !52, !noalias !267
  %i.co = getelementptr inbounds nuw i8, ptr %i.bf, i64 200 ; 3 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !270, !noalias !267
  %i.cq = getelementptr inbounds i8, ptr %i.cn, i64 %i.cp
  store i64 %i.bl, ptr %i.cq, align 1, !noalias !267
  %i.cr = load i64, ptr %i.co, align 8, !tbaa !270, !noalias !267
  %i.cs = add nsw i64 %i.cr, 8
  store i64 %i.cs, ptr %i.co, align 8, !tbaa !270, !noalias !267
  %i.ct = load ptr, ptr %i.bc, align 8, !tbaa !67
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !58 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 112
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !82 ; 2 uses
  store i64 %i.cw, ptr %i.ap, align 8, !tbaa !82
  store i64 %i.bl, ptr %i.bd, align 8, !tbaa !84
  store i64 %i.bl, ptr %i.bb, align 8, !tbaa !151
  %i.cx = load i64, ptr %i.bh, align 8, !tbaa !252
  %i.cy = sub nsw i64 %i.cx, %i.c                 ; 2 uses
  %.sroa.speculated4.i.i = call i64 @llvm.smax.i64(i64 %i.cy, i64 0)
  %.sroa.speculated.i.i = call noundef i64 @llvm.smin.i64(i64 %4, i64 %.sroa.speculated4.i.i)
  %i.cz = add nsw i64 %.sroa.11.081, 1
  %.not = icmp slt i64 %i.cy, %4
  br i1 %.not, label %bb.b, label %.critedge35, !llvm.loop !271

.critedge35:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit57, %_ZN5arrow6StatusD2Ev.exit50
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !167 ; 4 uses
  %i.dc = load ptr, ptr %i.d, align 8, !tbaa !223
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !272
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 144 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !58, !noalias !272 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !54, !noalias !272
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 88
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !272
  call void %i.di(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(144) %i.df, ptr noundef nonnull align 8 dereferenceable(128) %i.dd, i64 noundef %i.ak, i64 noundef %i.ao), !noalias !272, !inline_history !240
  %i.dj = load ptr, ptr %5, align 8, !tbaa !86, !noalias !272 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !272
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %_ZN5arrow6StatusD2Ev.exit63, label %.critedge.sink.split

_ZN5arrow6StatusD2Ev.exit63:                      ; preds = %.critedge35
  %i.dl = load ptr, ptr %i.de, align 8, !tbaa !58, !noalias !272 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 112
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !82, !noalias !272
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 112
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !82, !noalias !272
  %i.dp = load ptr, ptr %i.dl, align 8, !tbaa !54, !noalias !272
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !272
  %i.ds = call noundef i64 %i.dr(ptr noundef nonnull align 8 dereferenceable(144) %i.dl), !noalias !272, !inline_history !241
  %i.dt = getelementptr inbounds nuw i8, ptr %i.db, i64 104
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !84, !noalias !272
  %i.du = load ptr, ptr %i.de, align 8, !tbaa !58, !noalias !272
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 96
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !85, !noalias !272
  %i.dx = getelementptr inbounds nuw i8, ptr %i.db, i64 96
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !85, !noalias !272
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i, %.critedge35, %_ZN5arrow6StatusD2Ev.exit63
  %.sink = phi ptr [ %i.dj, %.critedge35 ], [ null, %_ZN5arrow6StatusD2Ev.exit63 ], [ %.pr.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i ]
  store ptr %.sink, ptr %0, align 8, !tbaa !86
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define void @_ZNK5arrow20RunEndEncodedBuilder4typeEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.7") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(176) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !57
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !57
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2INS0_17RunEndEncodedTypeEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2INS0_17RunEndEncodedTypeEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2INS0_17RunEndEncodedTypeEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2INS0_17RunEndEncodedTypeEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow20RunEndEncodedBuilder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef captures(none) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.47", align 8 ; 8 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"class.std::shared_ptr.50", align 8 ; 7 uses
  %6 = alloca %"class.arrow::Result", align 8     ; 13 uses
  %7 = alloca %"class.std::shared_ptr.50", align 16 ; 7 uses
  %8 = alloca %"class.arrow::Result.55", align 8  ; 13 uses
  %9 = alloca %"class.std::shared_ptr.59", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(184) %i.b, ptr noundef nonnull %3)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !86     ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN5arrow6StatusD2Ev.exit37, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.bt

_ZN5arrow6StatusD2Ev.exit37:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !67
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !58
  invoke void @_ZN5arrow12ArrayBuilder6FinishEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %i.k)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %6, align 8, !tbaa !86
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.i, label %bb.e, !prof !275

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %0, align 8, !tbaa !86
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit37
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.g:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = load <2 x ptr>, ptr %i.q, align 8, !tbaa !57, !noalias !282
  store ptr null, ptr %i.s, align 8, !tbaa !56, !noalias !282
  store <2 x ptr> %i.t, ptr %7, align 16, !tbaa !57, !alias.scope !282
  store ptr null, ptr %i.q, align 8, !tbaa !283, !noalias !282
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.v = load i64, ptr %i.u, align 8, !tbaa !84
  invoke void @_ZN5arrow18RunEndEncodedArray4MakeElRKSt10shared_ptrINS_5ArrayEES5_l(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.55") align 8 %8, i64 noundef %i.v, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef 0)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %8, align 8, !tbaa !86
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.n, label %bb.k, !prof !275

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %0, align 8, !tbaa !86
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZN5arrow6StatusC2ERKS0_.exit38 unwind label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.m:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ad = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !57, !noalias !292
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !293, !noalias !292 ; 2 uses
  store ptr null, ptr %i.ac, align 8, !tbaa !56, !noalias !292
  store <2 x ptr> %i.ad, ptr %9, align 16, !tbaa !57, !alias.scope !292
  store ptr null, ptr %i.aa, align 8, !tbaa !293, !noalias !292
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !296
  store ptr %i.ag, ptr %2, align 8, !tbaa !296
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !56 ; 4 uses
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not7.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = load i32, ptr %i.al, align 4, !tbaa !3
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.al, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ap = atomicrmw volatile add ptr %i.al, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !56
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.r, %bb.q, %bb.o
  %i.aq = phi ptr [ %i.ak, %bb.o ], [ %i.ak, %bb.q ], [ %.pr.pre.i.i.i, %bb.r ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.ar, align 8, !tbaa !61
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !63
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !54
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #18, !inline_history !299
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !54
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #18, !inline_history !299
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i9.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i9.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i = phi i32 [ %i.au, %bb.v ], [ %i.be, %bb.w ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bf, label %bb.x, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !66

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #18
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.t, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !56
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit: ; preds = %bb.n, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.bg = load ptr, ptr %1, align 8, !tbaa !54
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr noundef nonnull align 8 dereferenceable(176) %1)
          to label %bb.y unwind label %bb.af

bb.y:                                             ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit
  store ptr null, ptr %0, align 8, !tbaa !86, !alias.scope !300
  %i.bj = load ptr, ptr %i.ab, align 8, !tbaa !56 ; 8 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow6ResultISt10shared_ptrINS_18RunEndEncodedArrayEEED2Ev:bb.a

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_18RunEndEncodedArrayEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_18RunEndEncodedArrayEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !63
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !64
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !64
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !86     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread, !prof !275

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !63
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !316
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !316
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit, !prof !66

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !86     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread, !prof !305

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !306, !range !107, !noundef !108
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !63
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !64
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !64
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow20RunEndEncodedBuilder16FinishCurrentRunEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(176) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %2 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(184) %i.b)
  %i.f = load ptr, ptr %2, align 8, !tbaa !86     ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.i = load i64, ptr %i.h, align 8, !tbaa !84
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.n = load i64, ptr %i.m, align 8, !tbaa !82
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.n, ptr %i.o, align 8, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i64 %i.i, ptr %i.p, align 8, !tbaa !151
  store ptr null, ptr %0, align 8, !tbaa !86, !alias.scope !317
  br label %bb.b

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow20RunEndEncodedBuilder12AppendRunEndEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !155
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !142
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !181
  switch i32 %i.i, label %bb.d [
    i32 5, label %_ZN5arrow6StatusD2Ev.exit
    i32 7, label %_ZN5arrow6StatusD2Ev.exit24
    i32 9, label %bb.b
  ]

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN5arrow20RunEndEncodedBuilder14DoAppendRunEndIsEENS_6StatusEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef %2)
  %i.j = load ptr, ptr %5, align 8, !tbaa !86     ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.g, label %bb.h

_ZN5arrow6StatusD2Ev.exit24:                      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZN5arrow20RunEndEncodedBuilder14DoAppendRunEndIiEENS_6StatusEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef %2)
  %i.l = load ptr, ptr %6, align 8, !tbaa !86     ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !67, !noalias !320
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !58, !noalias !320 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !323
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.r = load i64, ptr %i.q, align 8, !tbaa !82, !noalias !326 ; 2 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !54, !noalias !326
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !326
  %i.v = tail call noundef i64 %i.u(ptr noundef nonnull align 8 dereferenceable(216) %i.p), !noalias !326, !inline_history !268 ; 2 uses
  %.not.i.not.i.i = icmp slt i64 %i.v, %i.r
  br i1 %.not.i.not.i.i, label %_ZN5arrow6StatusD2Ev.exit10.thread.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i

_ZN5arrow6StatusD2Ev.exit10.thread.i.i:           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !323
  br label %.thread

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.b
  %i.w = add nsw i64 %i.v, 1
  %i.x = shl nsw i64 %i.r, 1
  %.sroa.speculated.i.i.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.w, i64 %i.x)
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !54, !noalias !326
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !326
  call void %i.aa(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(216) %i.p, i64 noundef %.sroa.speculated.i.i.i.i), !noalias !323, !inline_history !268
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !86, !noalias !323 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !323
  %i.ab = icmp eq ptr %.pr.i.i, null
  br i1 %i.ab, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZN5arrow6StatusD2Ev.exit10.thread.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !52, !noalias !323
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 80 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !269, !noalias !323 ; 2 uses
  %i.ag = sdiv i64 %i.af, 8
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 %i.ag ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !65, !noalias !323
  %i.aj = srem i64 %i.af, 8
  %i.ak = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !65, !noalias !323
  %i.am = or i8 %i.al, %i.ai
  store i8 %i.am, ptr %i.ah, align 1, !tbaa !65, !noalias !323
  %i.an = load i64, ptr %i.ae, align 8, !tbaa !269, !noalias !323
  %i.ao = add nsw i64 %i.an, 1
  store i64 %i.ao, ptr %i.ae, align 8, !tbaa !269, !noalias !323
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 104 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !252, !noalias !323
  %i.ar = add nsw i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !252, !noalias !323
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 184
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !52, !noalias !323
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 200 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !270, !noalias !323
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 %i.av
  store i64 %2, ptr %i.aw, align 1, !noalias !323
  %i.ax = load i64, ptr %i.au, align 8, !tbaa !270, !noalias !323
  %i.ay = add nsw i64 %i.ax, 8
  store i64 %i.ay, ptr %i.au, align 8, !tbaa !270, !noalias !323
  br label %bb.g

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  store ptr %.pr.i.i, ptr %0, align 8, !tbaa !86
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !329
  call void @_ZN5arrow8internal12JoinToStringIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(34) @.str, ptr noundef nonnull align 8 dereferenceable(16) %i.f), !noalias !329
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.az = load ptr, ptr %3, align 8, !tbaa !210, !noalias !329 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZN5arrow6Status7InvalidIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !65, !noalias !329
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #19
  br label %_ZN5arrow6Status7InvalidIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEES0_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %3, align 8, !tbaa !210, !noalias !329 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.f
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !65, !noalias !329
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !329
  resume { ptr, i32 } %i.be

_ZN5arrow6Status7InvalidIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEES0_DpOT_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !329
  br label %bb.h

bb.g:                                             ; preds = %.thread, %_ZN5arrow6StatusD2Ev.exit24, %_ZN5arrow6StatusD2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !86, !alias.scope !334
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %_ZN5arrow6StatusD2Ev.exit24, %_ZN5arrow6StatusD2Ev.exit, %bb.g, %_ZN5arrow6Status7InvalidIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEES0_DpOT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow20RunEndEncodedBuilder14DoAppendRunEndIsEENS_6StatusEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i16 32767, ptr %i.b, align 2, !tbaa !228
  %i.c = icmp sgt i64 %2, 32767
  br i1 %i.c, label %bb.b, label %bb.c, !prof !66

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6Status7InvalidIJRA45_KcRlRA4_S2_RKsRA2_S2_EEES0_DpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(45) @.str.5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(4) @.str.6, ptr noundef nonnull align 2 dereferenceable(2) %i.b, ptr noundef nonnull align 1 dereferenceable(2) @.str.7)
  br label %_ZN5arrow14NumericBuilderINS_9Int16TypeEE6AppendEs.exit

bb.c:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_ZN5arrow12ArrayBuilder16AppendArraySliceERKNS_9ArraySpanEll:bb.a
  store i32 0, ptr %i.v, align 4, !tbaa !63
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #18, !inline_history !139
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !54
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #18, !inline_history !139
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.g ], [ %i.ae, %bb.h ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void

bb.j:                                             ; preds = %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.j ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow8internal20RunCompressorBuilder4typeEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.7") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.7") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %i.b)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow8internal20RunCompressorBuilder12WillCloseRunERKSt10shared_ptrIKNS_6ScalarEEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !86, !alias.scope !371
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow8internal20RunCompressorBuilder25WillCloseRunOfEmptyValuesEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !86, !alias.scope !374
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow20RunEndEncodedBuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow20RunEndEncodedBuilderE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow17RunEndEncodedTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !63
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !377
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !377
  br label %_ZNSt12__shared_ptrIN5arrow17RunEndEncodedTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow17RunEndEncodedTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt12__shared_ptrIN5arrow17RunEndEncodedTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow17RunEndEncodedTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow20RunEndEncodedBuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow20RunEndEncodedBuilderE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow20RunEndEncodedBuilderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !63
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !378
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !378
  br label %_ZN5arrow20RunEndEncodedBuilderD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow20RunEndEncodedBuilderD2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !379
  br label %_ZN5arrow20RunEndEncodedBuilderD2Ev.exit

_ZN5arrow20RunEndEncodedBuilderD2Ev.exit:         ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(176) %0) #18, !inline_history !379
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow20RunEndEncodedBuilder6ResizeEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !noalias !380 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !383
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58, !noalias !383 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54, !noalias !383
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !noalias !383
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %i.d, i64 noundef %2), !noalias !383, !inline_history !386
  %i.h = load ptr, ptr %3, align 8, !tbaa !86, !noalias !383 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !383
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit19.i, label %.sink.split.i

_ZN5arrow6StatusD2Ev.exit19.i:                    ; preds = %bb.a
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !58, !noalias !383 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.l = load i64, ptr %i.k, align 8, !tbaa !82, !noalias !383
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 %i.l, ptr %i.m, align 8, !tbaa !82, !noalias !383
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !54, !noalias !383
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !383
  %i.q = call noundef i64 %i.p(ptr noundef nonnull align 8 dereferenceable(144) %i.j), !noalias !383, !inline_history !387
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 %i.q, ptr %i.r, align 8, !tbaa !84, !noalias !383
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !58, !noalias !383
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.u = load i64, ptr %i.t, align 8, !tbaa !85, !noalias !383
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i64 %i.u, ptr %i.v, align 8, !tbaa !85, !noalias !383
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !380
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !67, !noalias !380
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !58, !noalias !380 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !54, !noalias !380
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !380
  call void %i.ab(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(144) %i.y, i64 noundef %2), !noalias !380, !inline_history !388
  %i.ac = load ptr, ptr %4, align 8, !tbaa !86, !noalias !380 ; 2 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !86, !alias.scope !380
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !380
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.b, label %_ZN5arrow20RunEndEncodedBuilder14ResizePhysicalEl.exit

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit19.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !151, !noalias !380
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !67, !noalias !380
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !58, !noalias !380
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !82, !noalias !380
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !82, !noalias !380
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.af, ptr %i.al, align 8, !tbaa !84, !noalias !380
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.b, %bb.a
  store ptr %i.h, ptr %0, align 8, !tbaa !86, !alias.scope !380
  br label %_ZN5arrow20RunEndEncodedBuilder14ResizePhysicalEl.exit

_ZN5arrow20RunEndEncodedBuilder14ResizePhysicalEl.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit19.i, %.sink.split.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow20RunEndEncodedBuilder10AppendNullEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow20RunEndEncodedBuilder16AppendEmptyValueEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef 1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow8internal20RunCompressorBuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(184) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN5arrow8internal20RunCompressorBuilderE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !63
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !389
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !389
  br label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !56   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !61
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !63
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18, !inline_history !168
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18, !inline_history !168
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow20RunEndEncodedBuilder15ValueRunBuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow8internal20RunCompressorBuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #19
  ret void
}

end_hunk_2
begin_hunk_3_@_ZN5arrow20RunEndEncodedBuilder15ValueRunBuilder12WillCloseRunERKSt10shared_ptrIKNS_6ScalarEEl:bb.a

_ZN5arrow6StatusD2Ev.exit11.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !67, !noalias !393
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58, !noalias !393
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.o = load i64, ptr %i.n, align 8, !tbaa !82, !noalias !393
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 %i.o, ptr %i.p, align 8, !tbaa !82, !noalias !393
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 %i.h, ptr %i.q, align 8, !tbaa !84, !noalias !393
  store i64 %i.h, ptr %i.d, align 8, !tbaa !151, !noalias !393
  store ptr null, ptr %0, align 8, !tbaa !86, !alias.scope !396
  br label %_ZN5arrow20RunEndEncodedBuilder8CloseRunEl.exit

_ZN5arrow20RunEndEncodedBuilder8CloseRunEl.exit:  ; preds = %bb.b, %bb.d, %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit11.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow20RunEndEncodedBuilder15ValueRunBuilder25WillCloseRunOfEmptyValuesEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !390, !nonnull !108, !align !392 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.c = icmp sgt i64 %2, 2147483647
  br i1 %i.c, label %bb.b, label %bb.c, !prof !66

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA70_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(70) @.str.1)
  br label %_ZN5arrow20RunEndEncodedBuilder8CloseRunEl.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !151, !noalias !399
  %i.f = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.e, i64 %2) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0         ; 3 uses
  br i1 %i.g, label %bb.d, label %_ZN5arrow6StatusD2Ev.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5arrow6Status8FromArgsIJRA41_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(41) @.str.2)
  br label %_ZN5arrow20RunEndEncodedBuilder8CloseRunEl.exit

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !399
  call void @_ZN5arrow20RunEndEncodedBuilder12AppendRunEndEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(176) %i.b, i64 noundef %i.h), !noalias !399
  %i.i = load ptr, ptr %3, align 8, !tbaa !86, !noalias !399 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !86, !alias.scope !399
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !399
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit11.i, label %_ZN5arrow20RunEndEncodedBuilder8CloseRunEl.exit

_ZN5arrow6StatusD2Ev.exit11.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !67, !noalias !399
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58, !noalias !399
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.o = load i64, ptr %i.n, align 8, !tbaa !82, !noalias !399
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 %i.o, ptr %i.p, align 8, !tbaa !82, !noalias !399
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 %i.h, ptr %i.q, align 8, !tbaa !84, !noalias !399
  store i64 %i.h, ptr %i.d, align 8, !tbaa !151, !noalias !399
  store ptr null, ptr %0, align 8, !tbaa !86, !alias.scope !402
  br label %_ZN5arrow20RunEndEncodedBuilder8CloseRunEl.exit

_ZN5arrow20RunEndEncodedBuilder8CloseRunEl.exit:  ; preds = %bb.b, %bb.d, %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit11.i
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !inline_history !405
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !inline_history !405
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !86     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !63
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !406
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !406
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !66

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !210  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN5arrow6Status5StateD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !65
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #19
  br label %_ZN5arrow6Status5StateD2Ev.exit

_ZN5arrow6Status5StateD2Ev.exit:                  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #19
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6Status5StateD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.g = load ptr, ptr %0, align 8, !tbaa !67     ; 4 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.d, 576460752303423487
  br i1 %i.l, label %bb.c, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #20
  unreachable

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #21 ; 3 uses
  %.not9.i.i.i.i.i = icmp eq ptr %1, %2
  br i1 %.not9.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.w, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.m, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.v, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !56   ; 2 uses
  %i.p = load <2 x ptr>, ptr %.0810.i.i.i.i.i, align 8, !tbaa !57
  store <2 x ptr> %i.p, ptr %.011.i.i.i.i.i, align 8, !tbaa !57
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %2
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !407

_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE11_M_allocateEm.exit.i
  %3 = load ptr, ptr %0, align 8, !tbaa !67       ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !68   ; 2 uses
  %.not4.i.i = icmp eq ptr %3, %i.y
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.aq, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i ], [ %3, %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !56  ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ab, align 8, !tbaa !61
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !63
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !54
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #18, !inline_history !408
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !54
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #18, !inline_history !408
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ae, %bb.j ], [ %i.ao, %bb.k ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ap, label %bb.l, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i, !prof !66

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #18
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.h, %.lr.ph.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.aq, %i.y
  br i1 %.not.i.i16, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEEEvT_S5_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !70

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEEEvT_S5_.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !67
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEEEvT_S5_.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEEEvT_S5_.exitthread-pre-split, %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit
  %i.ar = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEEEvT_S5_.exitthread-pre-split ], [ %3, %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEEEvT_S5_.exit
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #19
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEEEvT_S5_.exit, %bb.m
  store ptr %i.m, ptr %0, align 8, !tbaa !67
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c ; 2 uses
  store ptr %i.aw, ptr %i.x, align 8, !tbaa !68
  store ptr %i.aw, ptr %i.e, align 8, !tbaa !72
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE15_M_erase_at_endEPS3_.exit

bb.n:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !68 ; 3 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.i                     ; 3 uses
  %.not = icmp ult i64 %i.ba, %i.c
  br i1 %.not, label %_ZSt9__advanceIPKSt10shared_ptrIN5arrow12ArrayBuilderEElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = icmp sgt i64 %i.d, 0
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i17, label %_ZSt4copyIPKSt10shared_ptrIN5arrow12ArrayBuilderEEPS3_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i17:                               ; preds = %bb.o, %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEaSERKS2_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ce, %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEaSERKS2_.exit.i.i.i.i.i ], [ %i.d, %bb.o ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.cd, %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEaSERKS2_.exit.i.i.i.i.i ], [ %i.g, %bb.o ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cc, %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEaSERKS2_.exit.i.i.i.i.i ], [ %1, %bb.o ] ; 3 uses
  %i.bc = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !58
  store ptr %i.bc, ptr %.0811.i.i.i.i.i, align 8, !tbaa !58
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !56 ; 4 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, %i.bg
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEaSERKS2_.exit.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i17
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i.i.i.i.i.i18 = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i18, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bl = atomicrmw volatile add ptr %i.bh, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !tbaa !56
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.p
  %i.bm = phi ptr [ %i.bg, %bb.p ], [ %i.bg, %bb.r ], [ %.pr.pre.i.i.i.i.i.i.i.i, %bb.s ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not8.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bn, align 8, !tbaa !61
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !63
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !54
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #18, !inline_history !409
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !54
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  tail call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #18, !inline_history !409
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i9.i.i.i.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bq, %bb.w ], [ %i.ca, %bb.x ]
  %i.cb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cb, label %bb.y, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, !prof !66

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #18
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.u, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !56
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEaSERKS2_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEaSERKS2_.exit.i.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i17
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 2 uses
  %i.ce = add nsw i64 %.012.i.i.i.i.i, -1
  %i.cf = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i17, label %_ZSt4copyIPKSt10shared_ptrIN5arrow12ArrayBuilderEEPS3_ET0_T_S8_S7_.exit.loopexit, !llvm.loop !410

_ZSt4copyIPKSt10shared_ptrIN5arrow12ArrayBuilderEEPS3_ET0_T_S8_S7_.exit.loopexit: ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEaSERKS2_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.ax, align 8, !tbaa !68
  br label %_ZSt4copyIPKSt10shared_ptrIN5arrow12ArrayBuilderEEPS3_ET0_T_S8_S7_.exit

_ZSt4copyIPKSt10shared_ptrIN5arrow12ArrayBuilderEEPS3_ET0_T_S8_S7_.exit: ; preds = %_ZSt4copyIPKSt10shared_ptrIN5arrow12ArrayBuilderEEPS3_ET0_T_S8_S7_.exit.loopexit, %bb.o
  %i.cg = phi ptr [ %i.ay, %bb.o ], [ %.pre, %_ZSt4copyIPKSt10shared_ptrIN5arrow12ArrayBuilderEEPS3_ET0_T_S8_S7_.exit.loopexit ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.g, %bb.o ], [ %i.cd, %_ZSt4copyIPKSt10shared_ptrIN5arrow12ArrayBuilderEEPS3_ET0_T_S8_S7_.exit.loopexit ] ; 3 uses
  %.not.i19 = icmp eq ptr %i.cg, %.08.lcssa.i.i.i.i.i
  br i1 %.not.i19, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE15_M_erase_at_endEPS3_.exit, label %.lr.ph.i.i.i
end_hunk_3
begin_hunk_4_@_ZN5arrow6Status8FromArgsIJRA41_KcEEES0_NS_10StatusCodeEDpOT_:bb.a
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTSN5arrow18TypedChunkLocationIiEE", !4, i64 0, !4, i64 4}
!9 = !{!8, !4, i64 4}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSN5arrow18TypedChunkLocationIsEE", !12, i64 0, !12, i64 2}
!12 = !{!"short", !5, i64 0}
!13 = !{!11, !12, i64 2}
!14 = !{!15, !5, i64 0}
!15 = !{!"_ZTSN5arrow18TypedChunkLocationIaEE", !5, i64 0, !5, i64 1}
!16 = !{!15, !5, i64 1}
!17 = !{!18, !5, i64 0}
!18 = !{!"_ZTSN5arrow18TypedChunkLocationIhEE", !5, i64 0, !5, i64 1}
!19 = !{!18, !5, i64 1}
!20 = !{!21, !12, i64 0}
!21 = !{!"_ZTSN5arrow18TypedChunkLocationItEE", !12, i64 0, !12, i64 2}
!22 = !{!21, !12, i64 2}
!23 = !{!24, !4, i64 0}
!24 = !{!"_ZTSN5arrow18TypedChunkLocationIjEE", !4, i64 0, !4, i64 4}
!25 = !{!24, !4, i64 4}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSN5arrow18TypedChunkLocationIlEE", !28, i64 0, !28, i64 8}
!28 = !{!"long", !5, i64 0}
!29 = !{!27, !28, i64 8}
!30 = !{!31, !28, i64 0}
!31 = !{!"_ZTSN5arrow18TypedChunkLocationImEE", !28, i64 0, !28, i64 8}
!32 = !{!31, !28, i64 8}
!33 = !{!34, !35, i64 8}
!34 = !{!"_ZTSN5arrow12ArrayBuilderE", !35, i64 8, !28, i64 16, !37, i64 24, !28, i64 96, !28, i64 104, !28, i64 112, !45, i64 120}
!35 = !{!"p1 _ZTSN5arrow10MemoryPoolE", !36, i64 0}
!36 = !{!"any pointer", !5, i64 0}
!37 = !{!"_ZTSN5arrow18TypedBufferBuilderIbvEE", !38, i64 0, !28, i64 56, !28, i64 64}
!38 = !{!"_ZTSN5arrow13BufferBuilderE", !39, i64 0, !35, i64 16, !44, i64 24, !28, i64 32, !28, i64 40, !28, i64 48}
!39 = !{!"_ZTSSt10shared_ptrIN5arrow15ResizableBufferEE", !40, i64 0}
!40 = !{!"_ZTSSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EE", !41, i64 0, !42, i64 8}
!41 = !{!"p1 _ZTSN5arrow15ResizableBufferE", !36, i64 0}
!42 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !43, i64 0}
!43 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !36, i64 0}
!44 = !{!"p1 omnipotent char", !36, i64 0}
!45 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE", !46, i64 0}
!46 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE", !47, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE12_Vector_implE", !48, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!49 = !{!"p1 _ZTSSt10shared_ptrIN5arrow12ArrayBuilderEE", !36, i64 0}
!50 = !{!34, !28, i64 16}
!51 = !{!38, !35, i64 16}
!52 = !{!38, !44, i64 24}
!53 = !{!38, !28, i64 48}
!54 = !{!55, !55, i64 0}
!55 = !{!"vtable pointer", !6, i64 0}
!56 = !{!42, !43, i64 0}
!57 = !{!36, !36, i64 0}
!58 = !{!59, !60, i64 0}
!59 = !{!"_ZTSSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EE", !60, i64 0, !42, i64 8}
!60 = !{!"p1 _ZTSN5arrow12ArrayBuilderE", !36, i64 0}
!61 = !{!62, !4, i64 8}
!62 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!63 = !{!62, !4, i64 12}
!64 = distinct !{null, null}
!65 = !{!5, !5, i64 0}
!66 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!67 = !{!48, !49, i64 0}
!68 = !{!48, !49, i64 8}
!69 = distinct !{null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!48, !49, i64 16}
!73 = distinct !{null, null, null, null, null}
!74 = !{!75, !28, i64 176}
!75 = !{!"_ZTSN5arrow8internal20RunCompressorBuilderE", !34, i64 0, !76, i64 144, !77, i64 160, !28, i64 176}
!76 = !{!"_ZTSSt10shared_ptrIN5arrow12ArrayBuilderEE", !59, i64 0}
!77 = !{!"_ZTSSt10shared_ptrIKN5arrow6ScalarEE", !78, i64 0}
!78 = !{!"_ZTSSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE", !79, i64 0, !42, i64 8}
!79 = !{!"p1 _ZTSN5arrow6ScalarE", !36, i64 0}
!80 = !{!79, !79, i64 0}
!81 = distinct !{null, ptr @_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!82 = !{!34, !28, i64 112}
!83 = distinct !{null}
!84 = !{!34, !28, i64 104}
!85 = !{!34, !28, i64 96}
!86 = !{!87, !88, i64 0}
!87 = !{!"_ZTSN5arrow6StatusE", !88, i64 0}
!88 = !{!"p1 _ZTSN5arrow6Status5StateE", !36, i64 0}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZN5arrow6Status2OKEv: argument 0"}
!91 = distinct !{!91, !"_ZN5arrow6Status2OKEv"}
!92 = !{!78, !79, i64 0}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZN5arrow12ArrayBuilder12AppendScalarERKNS_6ScalarE: argument 0"}
!95 = distinct !{!95, !"_ZN5arrow12ArrayBuilder12AppendScalarERKNS_6ScalarE"}
!96 = distinct !{null}
!97 = !{!98, !106, i64 40}
!98 = !{!"_ZTSN5arrow6ScalarE", !99, i64 8, !103, i64 24, !106, i64 40}
!99 = !{!"_ZTSSt23enable_shared_from_thisIN5arrow6ScalarEE", !100, i64 0}
!100 = !{!"_ZTSSt8weak_ptrIN5arrow6ScalarEE", !101, i64 0}
!101 = !{!"_ZTSSt10__weak_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE", !79, i64 0, !102, i64 8}
!102 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !43, i64 0}
!103 = !{!"_ZTSSt10shared_ptrIN5arrow8DataTypeEE", !104, i64 0}
!104 = !{!"_ZTSSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !105, i64 0, !42, i64 8}
!105 = !{!"p1 _ZTSN5arrow8DataTypeE", !36, i64 0}
!106 = !{!"bool", !5, i64 0}
!107 = !{i8 0, i8 2}
!108 = !{}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZN5arrow12EqualOptions8DefaultsEv: argument 0"}
!111 = distinct !{!111, !"_ZN5arrow12EqualOptions8DefaultsEv"}
!112 = !{!113, !114, i64 0}
!113 = !{!"_ZTSN5arrow12EqualOptionsE", !114, i64 0, !106, i64 8, !106, i64 9, !106, i64 10, !106, i64 11, !106, i64 12, !115, i64 16}
!114 = !{!"double", !5, i64 0}
!115 = !{!"p1 _ZTSSo", !36, i64 0}
!116 = !{!113, !115, i64 16}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZN5arrow12ArrayBuilder12AppendScalarERKNS_6ScalarE: argument 0"}
!119 = distinct !{!119, !"_ZN5arrow12ArrayBuilder12AppendScalarERKNS_6ScalarE"}
!120 = !{!102, !43, i64 0}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZNKSt23enable_shared_from_thisIN5arrow6ScalarEE16shared_from_thisEv: argument 0"}
!123 = distinct !{!123, !"_ZNKSt23enable_shared_from_thisIN5arrow6ScalarEE16shared_from_thisEv"}
!124 = distinct !{!124, !71}
!125 = !{!101, !79, i64 0}
!126 = distinct !{ptr @_ZNSt10shared_ptrIKN5arrow6ScalarEEaSEOS3_, null, ptr @_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!127 = distinct !{null, ptr @_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!128 = !{!129, !129, i64 0}
!129 = !{!"p1 _ZTSSt10shared_ptrIN5arrow6ScalarEE", !36, i64 0}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZN5arrow6Status2OKEv: argument 0"}
!132 = distinct !{!132, !"_ZN5arrow6Status2OKEv"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZN5arrow12ArrayBuilder12AppendScalarERKNS_6ScalarE: argument 0"}
!135 = distinct !{!135, !"_ZN5arrow12ArrayBuilder12AppendScalarERKNS_6ScalarE"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZN5arrow6Status2OKEv: argument 0"}
!138 = distinct !{!138, !"_ZN5arrow6Status2OKEv"}
!139 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!140 = !{!141, !141, i64 0}
!141 = !{!"p1 _ZTSN5arrow20RunEndEncodedBuilderE", !36, i64 0}
!142 = !{!104, !105, i64 0}
!143 = !{!144, !145, i64 0}
!144 = !{!"_ZTSSt12__shared_ptrIN5arrow17RunEndEncodedTypeELN9__gnu_cxx12_Lock_policyE2EE", !145, i64 0, !42, i64 8}
!145 = !{!"p1 _ZTSN5arrow17RunEndEncodedTypeE", !36, i64 0}
!146 = !{!147, !149}
!147 = distinct !{!147, !148, !"_ZSt19static_pointer_castIN5arrow17RunEndEncodedTypeENS0_8DataTypeEESt10shared_ptrIT_EOS3_IT0_E: argument 0"}
!148 = distinct !{!148, !"_ZSt19static_pointer_castIN5arrow17RunEndEncodedTypeENS0_8DataTypeEESt10shared_ptrIT_EOS3_IT0_E"}
!149 = distinct !{!149, !150, !"_ZN5arrow8internal20checked_pointer_castINS_17RunEndEncodedTypeENS_8DataTypeEEESt10shared_ptrIT_ES4_IT0_E: argument 0"}
!150 = distinct !{!150, !"_ZN5arrow8internal20checked_pointer_castINS_17RunEndEncodedTypeENS_8DataTypeEEESt10shared_ptrIT_ES4_IT0_E"}
!151 = !{!152, !28, i64 168}
!152 = !{!"_ZTSN5arrow20RunEndEncodedBuilderE", !34, i64 0, !153, i64 144, !154, i64 160, !28, i64 168}
!153 = !{!"_ZTSSt10shared_ptrIN5arrow17RunEndEncodedTypeEE", !144, i64 0}
!154 = !{!"p1 _ZTSN5arrow20RunEndEncodedBuilder15ValueRunBuilderE", !36, i64 0}
!155 = !{!156, !157, i64 0}
!156 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_Vector_impl_dataE", !157, i64 0, !157, i64 8, !157, i64 16}
!157 = !{!"p1 _ZTSSt10shared_ptrIN5arrow5FieldEE", !36, i64 0}
!158 = !{!159, !160, i64 0}
!159 = !{!"_ZTSSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EE", !160, i64 0, !42, i64 8}
!160 = !{!"p1 _ZTSN5arrow5FieldE", !36, i64 0}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZSt11make_sharedIN5arrow20RunEndEncodedBuilder15ValueRunBuilderEJRPNS0_10MemoryPoolERKSt10shared_ptrINS0_12ArrayBuilderEERKS6_INS0_8DataTypeEERS1_EES6_IT_EDpOT0_: argument 0"}
!163 = distinct !{!163, !"_ZSt11make_sharedIN5arrow20RunEndEncodedBuilder15ValueRunBuilderEJRPNS0_10MemoryPoolERKSt10shared_ptrINS0_12ArrayBuilderEERKS6_INS0_8DataTypeEERS1_EES6_IT_EDpOT0_"}
!164 = !{!165, !154, i64 0}
!165 = !{!"_ZTSSt12__shared_ptrIN5arrow20RunEndEncodedBuilder15ValueRunBuilderELN9__gnu_cxx12_Lock_policyE2EE", !154, i64 0, !42, i64 8}
!166 = !{!154, !154, i64 0}
!167 = !{!152, !154, i64 160}
!168 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!169 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow20RunEndEncodedBuilder15ValueRunBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZN5arrow8internal20RunCompressorBuilder14ResizePhysicalEl: argument 0"}
!172 = distinct !{!172, !"_ZN5arrow8internal20RunCompressorBuilder14ResizePhysicalEl"}
!173 = !{ptr @_ZN5arrow8internal20RunCompressorBuilder14ResizePhysicalEl}
!174 = distinct !{ptr @_ZN5arrow8internal20RunCompressorBuilder14ResizePhysicalEl, null}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_ZN5arrow6Status2OKEv: argument 0"}
!177 = distinct !{!177, !"_ZN5arrow6Status2OKEv"}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_ZN5arrow6Status2OKEv: argument 0"}
!180 = distinct !{!180, !"_ZN5arrow6Status2OKEv"}
!181 = !{!182, !190, i64 40}
!182 = !{!"_ZTSN5arrow8DataTypeE", !183, i64 0, !187, i64 24, !190, i64 40, !191, i64 48}
!183 = !{!"_ZTSN5arrow6detail15FingerprintableE", !184, i64 8, !184, i64 16}
!184 = !{!"_ZTSSt6atomicIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !185, i64 0}
!185 = !{!"_ZTSSt13__atomic_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !186, i64 0}
!186 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !36, i64 0}
!187 = !{!"_ZTSSt23enable_shared_from_thisIN5arrow8DataTypeEE", !188, i64 0}
!188 = !{!"_ZTSSt8weak_ptrIN5arrow8DataTypeEE", !189, i64 0}
!189 = !{!"_ZTSSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !105, i64 0, !102, i64 8}
!190 = !{!"_ZTSN5arrow4Type4typeE", !5, i64 0}
!191 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE", !192, i64 0}
!192 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE", !193, i64 0}
!193 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_Vector_implE", !156, i64 0}
!194 = !{!195, !79, i64 0}
!195 = !{!"_ZTSSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE", !79, i64 0, !42, i64 8}
!196 = !{!197}
!197 = distinct !{!197, !198, !"_ZN5arrow6Status2OKEv: argument 0"}
!198 = distinct !{!198, !"_ZN5arrow6Status2OKEv"}
!199 = !{!200}
!200 = distinct !{!200, !201, !"_ZN5arrow6Status2OKEv: argument 0"}
!201 = distinct !{!201, !"_ZN5arrow6Status2OKEv"}
!202 = !{!203}
!203 = distinct !{!203, !204, !"_ZN5arrow6Status2OKEv: argument 0"}
!204 = distinct !{!204, !"_ZN5arrow6Status2OKEv"}
!205 = !{!206, !208}
!206 = distinct !{!206, !207, !"_ZN5arrow6Status8FromArgsIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEES0_NS_10StatusCodeEDpOT_: argument 0"}
!207 = distinct !{!207, !"_ZN5arrow6Status8FromArgsIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEES0_NS_10StatusCodeEDpOT_"}
!208 = distinct !{!208, !209, !"_ZN5arrow6Status7InvalidIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEES0_DpOT_: argument 0"}
!209 = distinct !{!209, !"_ZN5arrow6Status7InvalidIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEES0_DpOT_"}
!210 = !{!211, !44, i64 0}
!211 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !212, i64 0, !28, i64 8, !5, i64 16}
!212 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !44, i64 0}
!213 = !{!214}
!214 = distinct !{!214, !215, !"_ZN5arrow6Status2OKEv: argument 0"}
!215 = distinct !{!215, !"_ZN5arrow6Status2OKEv"}
!216 = !{!217, !28, i64 24}
!217 = !{!"_ZTSN5arrow9ArraySpanE", !105, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !5, i64 32, !218, i64 104}
!218 = !{!"_ZTSSt6vectorIN5arrow9ArraySpanESaIS1_EE", !219, i64 0}
!219 = !{!"_ZTSSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EE", !220, i64 0}
!220 = !{!"_ZTSNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EE12_Vector_implE", !221, i64 0}
!221 = !{!"_ZTSNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EE17_Vector_impl_dataE", !222, i64 0, !222, i64 8, !222, i64 16}
!222 = !{!"p1 _ZTSN5arrow9ArraySpanE", !36, i64 0}
!223 = !{!221, !222, i64 0}
!224 = !{!225, !44, i64 0}
!225 = !{!"_ZTSN5arrow10BufferSpanE", !44, i64 0, !28, i64 8, !226, i64 16}
!226 = !{!"p1 _ZTSSt10shared_ptrIN5arrow6BufferEE", !36, i64 0}
!227 = !{!217, !28, i64 8}
!228 = !{!12, !12, i64 0}
!229 = distinct !{!229, !71}
!230 = !{!231, !233}
!231 = distinct !{!231, !232, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!232 = distinct !{!232, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!233 = distinct !{!233, !234, !"_ZN5arrow20RunEndEncodedBuilder15ReservePhysicalEl: argument 0"}
!234 = distinct !{!234, !"_ZN5arrow20RunEndEncodedBuilder15ReservePhysicalEl"}
!235 = distinct !{null, null}
!236 = distinct !{!236, !71}
!237 = !{!238}
!238 = distinct !{!238, !239, !"_ZN5arrow8internal20RunCompressorBuilder29AppendRunCompressedArraySliceERKNS_9ArraySpanEll: argument 0"}
!239 = distinct !{!239, !"_ZN5arrow8internal20RunCompressorBuilder29AppendRunCompressedArraySliceERKNS_9ArraySpanEll"}
!240 = !{ptr @_ZN5arrow8internal20RunCompressorBuilder29AppendRunCompressedArraySliceERKNS_9ArraySpanEll}
!241 = distinct !{ptr @_ZN5arrow8internal20RunCompressorBuilder29AppendRunCompressedArraySliceERKNS_9ArraySpanEll, null}
!242 = distinct !{!242, !71}
!243 = !{!244, !246}
!244 = distinct !{!244, !245, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!245 = distinct !{!245, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!246 = distinct !{!246, !247, !"_ZN5arrow20RunEndEncodedBuilder15ReservePhysicalEl: argument 0"}
!247 = distinct !{!247, !"_ZN5arrow20RunEndEncodedBuilder15ReservePhysicalEl"}
!248 = distinct !{!248, !71}
!249 = !{!250}
!250 = distinct !{!250, !251, !"_ZN5arrow8internal20RunCompressorBuilder29AppendRunCompressedArraySliceERKNS_9ArraySpanEll: argument 0"}
!251 = distinct !{!251, !"_ZN5arrow8internal20RunCompressorBuilder29AppendRunCompressedArraySliceERKNS_9ArraySpanEll"}
!252 = !{!28, !28, i64 0}
!253 = distinct !{!253, !71}
!254 = !{!255, !257}
!255 = distinct !{!255, !256, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!256 = distinct !{!256, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!257 = distinct !{!257, !258, !"_ZN5arrow20RunEndEncodedBuilder15ReservePhysicalEl: argument 0"}
!258 = distinct !{!258, !"_ZN5arrow20RunEndEncodedBuilder15ReservePhysicalEl"}
!259 = !{!260}
!260 = distinct !{!260, !261, !"_ZN5arrow20RunEndEncodedBuilder14DoAppendRunEndIlEENS_6StatusEl: argument 0"}
!261 = distinct !{!261, !"_ZN5arrow20RunEndEncodedBuilder14DoAppendRunEndIlEENS_6StatusEl"}
!262 = !{!263, !265, !260}
!263 = distinct !{!263, !264, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!264 = distinct !{!264, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!265 = distinct !{!265, !266, !"_ZN5arrow14NumericBuilderINS_9Int64TypeEE6AppendEl: argument 0"}
!266 = distinct !{!266, !"_ZN5arrow14NumericBuilderINS_9Int64TypeEE6AppendEl"}
!267 = !{!265, !260}
!268 = distinct !{null, null, null}
!269 = !{!37, !28, i64 56}
!270 = !{!38, !28, i64 40}
!271 = distinct !{!271, !71}
!272 = !{!273}
!273 = distinct !{!273, !274, !"_ZN5arrow8internal20RunCompressorBuilder29AppendRunCompressedArraySliceERKNS_9ArraySpanEll: argument 0"}
!274 = distinct !{!274, !"_ZN5arrow8internal20RunCompressorBuilder29AppendRunCompressedArraySliceERKNS_9ArraySpanEll"}
!275 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!276 = !{!277}
!277 = distinct !{!277, !278, !"_ZNO5arrow6ResultISt10shared_ptrINS_5ArrayEEE11ValueUnsafeEv: argument 0"}
!278 = distinct !{!278, !"_ZNO5arrow6ResultISt10shared_ptrINS_5ArrayEEE11ValueUnsafeEv"}
!279 = !{!280}
!280 = distinct !{!280, !281, !"_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE15MoveValueUnsafeEv: argument 0"}
!281 = distinct !{!281, !"_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE15MoveValueUnsafeEv"}
!282 = !{!280, !277}
!283 = !{!284, !285, i64 0}
!284 = !{!"_ZTSSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EE", !285, i64 0, !42, i64 8}
!285 = !{!"p1 _ZTSN5arrow5ArrayE", !36, i64 0}
!286 = !{!287}
!287 = distinct !{!287, !288, !"_ZNO5arrow6ResultISt10shared_ptrINS_18RunEndEncodedArrayEEE11ValueUnsafeEv: argument 0"}
!288 = distinct !{!288, !"_ZNO5arrow6ResultISt10shared_ptrINS_18RunEndEncodedArrayEEE11ValueUnsafeEv"}
!289 = !{!290}
!290 = distinct !{!290, !291, !"_ZN5arrow6ResultISt10shared_ptrINS_18RunEndEncodedArrayEEE15MoveValueUnsafeEv: argument 0"}
!291 = distinct !{!291, !"_ZN5arrow6ResultISt10shared_ptrINS_18RunEndEncodedArrayEEE15MoveValueUnsafeEv"}
!292 = !{!290, !287}
!293 = !{!294, !295, i64 0}
!294 = !{!"_ZTSSt12__shared_ptrIN5arrow18RunEndEncodedArrayELN9__gnu_cxx12_Lock_policyE2EE", !295, i64 0, !42, i64 8}
!295 = !{!"p1 _ZTSN5arrow18RunEndEncodedArrayE", !36, i64 0}
!296 = !{!297, !298, i64 0}
!297 = !{!"_ZTSSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EE", !298, i64 0, !42, i64 8}
!298 = !{!"p1 _ZTSN5arrow9ArrayDataE", !36, i64 0}
!299 = distinct !{null, null, null, null}
!300 = !{!301}
!301 = distinct !{!301, !302, !"_ZN5arrow6Status2OKEv: argument 0"}
!302 = distinct !{!302, !"_ZN5arrow6Status2OKEv"}
!303 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow18RunEndEncodedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!304 = distinct !{ptr @_ZN5arrow6ResultISt10shared_ptrINS_18RunEndEncodedArrayEEED2Ev, null, null, ptr @_ZNSt12__shared_ptrIN5arrow18RunEndEncodedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!305 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!306 = !{!307, !106, i64 1}
!307 = !{!"_ZTSN5arrow6Status5StateE", !308, i64 0, !106, i64 1, !211, i64 8, !309, i64 40}
!308 = !{!"_ZTSN5arrow10StatusCodeE", !5, i64 0}
!309 = !{!"_ZTSSt10shared_ptrIN5arrow12StatusDetailEE", !310, i64 0}
!310 = !{!"_ZTSSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EE", !311, i64 0, !42, i64 8}
!311 = !{!"p1 _ZTSN5arrow12StatusDetailE", !36, i64 0}
!312 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!313 = distinct !{ptr @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev, null, null, ptr @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!314 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!315 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow18RunEndEncodedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!316 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!317 = !{!318}
!318 = distinct !{!318, !319, !"_ZN5arrow6Status2OKEv: argument 0"}
!319 = distinct !{!319, !"_ZN5arrow6Status2OKEv"}
!320 = !{!321}
!321 = distinct !{!321, !322, !"_ZN5arrow20RunEndEncodedBuilder14DoAppendRunEndIlEENS_6StatusEl: argument 0"}
!322 = distinct !{!322, !"_ZN5arrow20RunEndEncodedBuilder14DoAppendRunEndIlEENS_6StatusEl"}
!323 = !{!324, !321}
!324 = distinct !{!324, !325, !"_ZN5arrow14NumericBuilderINS_9Int64TypeEE6AppendEl: argument 0"}
!325 = distinct !{!325, !"_ZN5arrow14NumericBuilderINS_9Int64TypeEE6AppendEl"}
!326 = !{!327, !324, !321}
!327 = distinct !{!327, !328, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!328 = distinct !{!328, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!329 = !{!330, !332}
!330 = distinct !{!330, !331, !"_ZN5arrow6Status8FromArgsIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEES0_NS_10StatusCodeEDpOT_: argument 0"}
!331 = distinct !{!331, !"_ZN5arrow6Status8FromArgsIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEES0_NS_10StatusCodeEDpOT_"}
!332 = distinct !{!332, !333, !"_ZN5arrow6Status7InvalidIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEES0_DpOT_: argument 0"}
!333 = distinct !{!333, !"_ZN5arrow6Status7InvalidIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEES0_DpOT_"}
!334 = !{!335}
!335 = distinct !{!335, !336, !"_ZN5arrow6Status2OKEv: argument 0"}
!336 = distinct !{!336, !"_ZN5arrow6Status2OKEv"}
!337 = !{!338}
!338 = distinct !{!338, !339, !"_ZN5arrow14NumericBuilderINS_9Int16TypeEE6AppendEs: argument 0"}
!339 = distinct !{!339, !"_ZN5arrow14NumericBuilderINS_9Int16TypeEE6AppendEs"}
!340 = !{!341, !338}
!341 = distinct !{!341, !342, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!342 = distinct !{!342, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!343 = distinct !{null, null}
!344 = !{!345, !338}
!345 = distinct !{!345, !346, !"_ZN5arrow6Status2OKEv: argument 0"}
!346 = distinct !{!346, !"_ZN5arrow6Status2OKEv"}
!347 = !{!348}
!348 = distinct !{!348, !349, !"_ZN5arrow14NumericBuilderINS_9Int32TypeEE6AppendEi: argument 0"}
!349 = distinct !{!349, !"_ZN5arrow14NumericBuilderINS_9Int32TypeEE6AppendEi"}
!350 = !{!351, !348}
!351 = distinct !{!351, !352, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!352 = distinct !{!352, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!353 = distinct !{null, null}
!354 = !{!355, !348}
!355 = distinct !{!355, !356, !"_ZN5arrow6Status2OKEv: argument 0"}
!356 = distinct !{!356, !"_ZN5arrow6Status2OKEv"}
!357 = !{!358}
!358 = distinct !{!358, !359, !"_ZN5arrow6Status2OKEv: argument 0"}
!359 = distinct !{!359, !"_ZN5arrow6Status2OKEv"}
!360 = !{!361}
!361 = distinct !{!361, !362, !"_ZN5arrow8internal20RunCompressorBuilder14ResizePhysicalEl: argument 0"}
!362 = distinct !{!362, !"_ZN5arrow8internal20RunCompressorBuilder14ResizePhysicalEl"}
!363 = !{!364, !361}
!364 = distinct !{!364, !365, !"_ZN5arrow6Status2OKEv: argument 0"}
!365 = distinct !{!365, !"_ZN5arrow6Status2OKEv"}
!366 = !{!367, !369}
!367 = distinct !{!367, !368, !"_ZN5arrow6Status8FromArgsIJRA34_KcRNS_8DataTypeEEEES0_NS_10StatusCodeEDpOT_: argument 0"}
end_hunk_4
