Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/ColorSpaceSet?download=true
inline.NumInlined: 490
inline.NumDeleted: 212
begin_hunk_0_@_ZN16OpenColorIO_v2_513ColorSpaceSet4ImplaSERKS1_:bb.a
_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !35

_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEEEvPT_.exit.i.i.i.i.i
  store ptr %i.a, ptr %i.b, align 8, !tbaa !30
  br label %_ZN16OpenColorIO_v2_513ColorSpaceSet4Impl5clearEv.exit

_ZN16OpenColorIO_v2_513ColorSpaceSet4Impl5clearEv.exit: ; preds = %bb.b, %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.v = load ptr, ptr %1, align 8, !tbaa !39     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !39   ; 2 uses
  %.not1314 = icmp eq ptr %i.v, %i.x
  br i1 %.not1314, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN16OpenColorIO_v2_513ColorSpaceSet4Impl5clearEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.010.015 = phi ptr [ %i.v, %.lr.ph ], [ %i.aw, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.aa = load ptr, ptr %.sroa.010.015, align 8, !tbaa !40
  call void @_ZNK16OpenColorIO_v2_510ColorSpace18createEditableCopyEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.6") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !30  ; 5 uses
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !37
  %.not.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr null, ptr %i.ad, align 8, !tbaa !14
  %i.ae = load <2 x ptr>, ptr %2, align 16, !tbaa !43
  store ptr null, ptr %i.z, align 8, !tbaa !14
  store <2 x ptr> %i.ae, ptr %i.ab, align 8, !tbaa !43
  store ptr null, ptr %2, align 16, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.af, ptr %i.b, align 8, !tbaa !30
  br label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE9push_backEOS3_.exit

bb.k:                                             ; preds = %bb.i
  invoke void @_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE9push_backEOS3_.exit unwind label %bb.r

_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.j, %bb.k
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !14  ; 8 uses
  %.not.i.i8 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i8, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE9push_backEOS3_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ah, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !17
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #22, !inline_history !44
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #22, !inline_history !44
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i9 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i9, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8, !tbaa !33
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i = phi i32 [ %i.ak, %bb.o ], [ %i.au, %bb.p ]
  %i.av = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.av, label %bb.q, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !34

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #22
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE9push_backEOS3_.exit, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.010.015, i64 16 ; 2 uses
  %.not13 = icmp eq ptr %i.aw, %i.x
  br i1 %.not13, label %.loopexit, label %bb.i

bb.r:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.ax

.loopexit:                                        ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN16OpenColorIO_v2_513ColorSpaceSet4Impl5clearEv.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_513ColorSpaceSetELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !17
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !45
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !45
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !33
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !34

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK16OpenColorIO_v2_513ColorSpaceSeteqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24     ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !24     ; 4 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNK16OpenColorIO_v2_513ColorSpaceSet4ImpleqERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30   ; 3 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %.not.i = icmp eq i64 %i.i, %i.o
  br i1 %.not.i, label %.preheader.i, label %_ZNK16OpenColorIO_v2_513ColorSpaceSet4ImpleqERKS1_.exit

.preheader.i:                                     ; preds = %bb.b
  %.not1618.i = icmp eq ptr %i.f, %i.e
  br i1 %.not1618.i, label %_ZNK16OpenColorIO_v2_513ColorSpaceSet4ImpleqERKS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.sroa.013.019.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.f, %.preheader.i ] ; 2 uses
  %i.p = load ptr, ptr %.sroa.013.019.i, align 8, !tbaa !40
  %i.q = tail call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) #22
  %i.r = tail call noundef i32 @_ZNK16OpenColorIO_v2_513ColorSpaceSet4Impl8getIndexEPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %i.q)
  %.not17.not.i.not = icmp ne i32 %i.r, -1        ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.019.i, i64 16 ; 2 uses
  %.not16.i = icmp ne ptr %i.s, %i.e
  %or.cond.not = select i1 %.not17.not.i.not, i1 %.not16.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZNK16OpenColorIO_v2_513ColorSpaceSet4ImpleqERKS1_.exit

_ZNK16OpenColorIO_v2_513ColorSpaceSet4ImpleqERKS1_.exit: ; preds = %.lr.ph.i, %bb.a, %bb.b, %.preheader.i
  %.3.i = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %.preheader.i ], [ %.not17.not.i.not, %.lr.ph.i ]
  ret i1 %.3.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK16OpenColorIO_v2_513ColorSpaceSetneERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24     ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !24     ; 4 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNK16OpenColorIO_v2_513ColorSpaceSet4ImpleqERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30   ; 3 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %.not.i = icmp eq i64 %i.i, %i.o
  br i1 %.not.i, label %.preheader.i, label %_ZNK16OpenColorIO_v2_513ColorSpaceSet4ImpleqERKS1_.exit

.preheader.i:                                     ; preds = %bb.b
  %.not1618.i = icmp eq ptr %i.f, %i.e
  br i1 %.not1618.i, label %_ZNK16OpenColorIO_v2_513ColorSpaceSet4ImpleqERKS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.sroa.013.019.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.f, %.preheader.i ] ; 2 uses
  %i.p = load ptr, ptr %.sroa.013.019.i, align 8, !tbaa !40
  %i.q = tail call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) #22
  %i.r = tail call noundef i32 @_ZNK16OpenColorIO_v2_513ColorSpaceSet4Impl8getIndexEPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %i.q)
  %.not17.not.i = icmp eq i32 %i.r, -1            ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.019.i, i64 16 ; 2 uses
  %.not16.i = icmp eq ptr %i.s, %i.e
  %or.cond = select i1 %.not17.not.i, i1 true, i1 %.not16.i
  br i1 %or.cond, label %_ZNK16OpenColorIO_v2_513ColorSpaceSet4ImpleqERKS1_.exit, label %.lr.ph.i

_ZNK16OpenColorIO_v2_513ColorSpaceSet4ImpleqERKS1_.exit: ; preds = %.lr.ph.i, %bb.a, %bb.b, %.preheader.i
  %i.t = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ false, %.preheader.i ], [ %.not17.not.i, %.lr.ph.i ]
  ret i1 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK16OpenColorIO_v2_513ColorSpaceSet17getNumColorSpacesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 4
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZNK16OpenColorIO_v2_513ColorSpaceSet24getColorSpaceNameByIndexEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZNK16OpenColorIO_v2_513ColorSpaceSet4Impl7getNameEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 4
  %i.j = trunc i64 %i.i to i32
  %.not.i = icmp slt i32 %1, %i.j
  br i1 %.not.i, label %bb.c, label %_ZNK16OpenColorIO_v2_513ColorSpaceSet4Impl7getNameEi.exit

bb.c:                                             ; preds = %bb.b
  %i.k = zext nneg i32 %1 to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.n = tail call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #22
  br label %_ZNK16OpenColorIO_v2_513ColorSpaceSet4Impl7getNameEi.exit

_ZNK16OpenColorIO_v2_513ColorSpaceSet4Impl7getNameEi.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ %i.n, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define void @_ZNK16OpenColorIO_v2_513ColorSpaceSet20getColorSpaceByIndexEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.0") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !24     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.b = icmp slt i32 %2, 0
  br i1 %i.b, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30, !noalias !46
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !27, !noalias !46 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 4
  %i.j = trunc i64 %i.i to i32
  %.not.i = icmp slt i32 %2, %i.j
  br i1 %.not.i, label %bb.c, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !46
  br label %_ZNK16OpenColorIO_v2_513ColorSpaceSet4Impl3getEi.exit

bb.c:                                             ; preds = %bb.b
  %i.k = zext nneg i32 %2 to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14, !noalias !46 ; 2 uses
  %i.o = load <2 x ptr>, ptr %i.l, align 8, !tbaa !43, !noalias !46
  store <2 x ptr> %i.o, ptr %0, align 8, !tbaa !43, !alias.scope !46
  %.not.i.i.i3.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i3.i, label %_ZNK16OpenColorIO_v2_513ColorSpaceSet4Impl3getEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32, !noalias !46
  %.not.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %i.p, align 4, !tbaa !33, !noalias !46
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !33, !noalias !46
  br label %_ZNK16OpenColorIO_v2_513ColorSpaceSet4Impl3getEi.exit

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4, !noalias !46 ; 0 uses
  br label %_ZNK16OpenColorIO_v2_513ColorSpaceSet4Impl3getEi.exit

_ZNK16OpenColorIO_v2_513ColorSpaceSet4Impl3getEi.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.c, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK16OpenColorIO_v2_513ColorSpaceSet13getColorSpaceEPKc(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.0") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !24     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.b = tail call noundef i32 @_ZNK16OpenColorIO_v2_513ColorSpaceSet4Impl8getIndexEPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef %2), !noalias !49 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30, !noalias !55
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !27, !noalias !55 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 4
  %i.k = trunc i64 %i.j to i32
  %.not.i.i = icmp slt i32 %i.b, %i.k
  br i1 %.not.i.i, label %bb.c, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !55
  br label %_ZNK16OpenColorIO_v2_513ColorSpaceSet4Impl9getByNameEPKc.exit

bb.c:                                             ; preds = %bb.b
  %i.l = zext nneg i32 %i.b to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14, !noalias !55 ; 2 uses
  %i.p = load <2 x ptr>, ptr %i.m, align 8, !tbaa !43, !noalias !55
  store <2 x ptr> %i.p, ptr %0, align 8, !tbaa !43, !alias.scope !55
  %.not.i.i.i3.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i3.i.i, label %_ZNK16OpenColorIO_v2_513ColorSpaceSet4Impl9getByNameEPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32, !noalias !55
  %.not.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %i.q, align 4, !tbaa !33, !noalias !55
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !33, !noalias !55
  br label %_ZNK16OpenColorIO_v2_513ColorSpaceSet4Impl9getByNameEPKc.exit

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4, !noalias !55 ; 0 uses
  br label %_ZNK16OpenColorIO_v2_513ColorSpaceSet4Impl9getByNameEPKc.exit

_ZNK16OpenColorIO_v2_513ColorSpaceSet4Impl9getByNameEPKc.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %bb.c, %bb.e, %bb.f
end_hunk_0
