Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMELFStreamer?download=true
inline.NumInlined: 1328
inline.NumDeleted: 655
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN12_GLOBAL__N_120ARMTargetELFStreamer22finishAttributeSectionEv:bb.a
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.p = load i32, ptr %i.h, align 4, !tbaa !41
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sink36.i = phi i32 [ %i.p, %bb.s ], [ %i.n, %bb.r ]
  %i.q = tail call noundef i32 @_ZN4llvm3ARM11getArchAttrENS0_8ArchKindE(i32 noundef %.sink36.i) #22
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 6, i32 noundef %i.q, i1 noundef zeroext false) #22
  %i.r = load i32, ptr %i.h, align 4, !tbaa !41   ; 2 uses
  switch i32 %i.r, label %bb.ag [
    i32 1, label %bb.u
    i32 2, label %bb.v
    i32 3, label %bb.v
    i32 40, label %bb.v
    i32 4, label %bb.v
    i32 6, label %bb.v
    i32 8, label %bb.w
    i32 7, label %bb.x
    i32 9, label %bb.x
    i32 10, label %bb.y
    i32 11, label %bb.z
    i32 13, label %bb.aa
    i32 15, label %bb.ab
    i32 14, label %bb.ab
    i32 16, label %bb.ac
    i32 17, label %bb.ac
    i32 18, label %bb.ac
    i32 19, label %bb.ac
    i32 20, label %bb.ac
    i32 21, label %bb.ac
    i32 22, label %bb.ac
    i32 23, label %bb.ac
    i32 24, label %bb.ac
    i32 25, label %bb.ac
    i32 26, label %bb.ac
    i32 27, label %bb.ac
    i32 28, label %bb.ac
    i32 29, label %bb.ac
    i32 30, label %bb.ac
    i32 31, label %bb.ac
    i32 32, label %bb.ac
    i32 33, label %bb.ac
    i32 35, label %bb.ad
    i32 36, label %bb.ad
    i32 37, label %bb.ad
    i32 38, label %bb.ae
    i32 39, label %bb.af
  ]

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 8, i32 noundef 1, i1 noundef zeroext false) #22
  br label %_ZN12_GLOBAL__N_120ARMTargetELFStreamer25emitArchDefaultAttributesEv.exit

bb.v:                                             ; preds = %bb.t, %bb.t, %bb.t, %bb.t, %bb.t
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 8, i32 noundef 1, i1 noundef zeroext false) #22
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 9, i32 noundef 1, i1 noundef zeroext false) #22
  br label %_ZN12_GLOBAL__N_120ARMTargetELFStreamer25emitArchDefaultAttributesEv.exit

bb.w:                                             ; preds = %bb.t
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 8, i32 noundef 1, i1 noundef zeroext false) #22
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 9, i32 noundef 2, i1 noundef zeroext false) #22
  br label %_ZN12_GLOBAL__N_120ARMTargetELFStreamer25emitArchDefaultAttributesEv.exit

bb.x:                                             ; preds = %bb.t, %bb.t
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 8, i32 noundef 1, i1 noundef zeroext false) #22
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 9, i32 noundef 1, i1 noundef zeroext false) #22
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 68, i32 noundef 1, i1 noundef zeroext false) #22
  br label %_ZN12_GLOBAL__N_120ARMTargetELFStreamer25emitArchDefaultAttributesEv.exit

bb.y:                                             ; preds = %bb.t
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 9, i32 noundef 1, i1 noundef zeroext false) #22
  br label %_ZN12_GLOBAL__N_120ARMTargetELFStreamer25emitArchDefaultAttributesEv.exit

bb.z:                                             ; preds = %bb.t
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 7, i32 noundef 65, i1 noundef zeroext false) #22
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 8, i32 noundef 1, i1 noundef zeroext false) #22
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 9, i32 noundef 2, i1 noundef zeroext false) #22
  br label %_ZN12_GLOBAL__N_120ARMTargetELFStreamer25emitArchDefaultAttributesEv.exit

bb.aa:                                            ; preds = %bb.t
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 7, i32 noundef 82, i1 noundef zeroext false) #22
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 8, i32 noundef 1, i1 noundef zeroext false) #22
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 9, i32 noundef 2, i1 noundef zeroext false) #22
  br label %_ZN12_GLOBAL__N_120ARMTargetELFStreamer25emitArchDefaultAttributesEv.exit

bb.ab:                                            ; preds = %bb.t, %bb.t
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 7, i32 noundef 77, i1 noundef zeroext false) #22
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 9, i32 noundef 2, i1 noundef zeroext false) #22
  br label %_ZN12_GLOBAL__N_120ARMTargetELFStreamer25emitArchDefaultAttributesEv.exit

bb.ac:                                            ; preds = %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 7, i32 noundef 65, i1 noundef zeroext false) #22
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 8, i32 noundef 1, i1 noundef zeroext false) #22
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 9, i32 noundef 2, i1 noundef zeroext false) #22
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 42, i32 noundef 1, i1 noundef zeroext false) #22
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 68, i32 noundef 3, i1 noundef zeroext false) #22
  br label %_ZN12_GLOBAL__N_120ARMTargetELFStreamer25emitArchDefaultAttributesEv.exit

bb.ad:                                            ; preds = %bb.t, %bb.t, %bb.t
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 9, i32 noundef 3, i1 noundef zeroext false) #22
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 7, i32 noundef 77, i1 noundef zeroext false) #22
  br label %_ZN12_GLOBAL__N_120ARMTargetELFStreamer25emitArchDefaultAttributesEv.exit

bb.ae:                                            ; preds = %bb.t
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 8, i32 noundef 1, i1 noundef zeroext false) #22
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 9, i32 noundef 1, i1 noundef zeroext false) #22
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 11, i32 noundef 1, i1 noundef zeroext false) #22
  br label %_ZN12_GLOBAL__N_120ARMTargetELFStreamer25emitArchDefaultAttributesEv.exit

bb.af:                                            ; preds = %bb.t
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 8, i32 noundef 1, i1 noundef zeroext false) #22
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 9, i32 noundef 1, i1 noundef zeroext false) #22
  tail call void @_ZN4llvm13MCELFStreamer16setAttributeItemEjjb(ptr noundef nonnull align 8 dereferenceable(6625) %.val.i, i32 noundef 11, i32 noundef 2, i1 noundef zeroext false) #22
  br label %_ZN12_GLOBAL__N_120ARMTargetELFStreamer25emitArchDefaultAttributesEv.exit

bb.ag:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.t, align 1, !tbaa !213
  store ptr @.str.78, ptr %2, align 8, !tbaa !207
  store i8 3, ptr %i.s, align 8, !tbaa !212
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.u = tail call { ptr, i64 } @_ZN4llvm3ARM11getArchNameENS0_8ArchKindE(i32 noundef %i.r) #22 ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 0
  %i.w = extractvalue { ptr, i64 } %i.u, 1
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 5, ptr %i.x, align 8, !tbaa !212
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.y, align 1, !tbaa !213
  store ptr %i.v, ptr %3, align 8, !tbaa !207
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.w, ptr %i.z, align 8, !tbaa !207
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %1, ptr noundef nonnull align 8 dereferenceable(34) %2, ptr noundef nonnull align 8 dereferenceable(34) %3)
  call void @_ZN4llvm18report_fatal_errorERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(34) %1, i1 noundef zeroext true) #24
  unreachable

_ZN12_GLOBAL__N_120ARMTargetELFStreamer25emitArchDefaultAttributesEv.exit: ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %_ZN12_GLOBAL__N_120ARMTargetELFStreamer24emitFPUDefaultAttributesEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 448 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 456
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !150 ; 3 uses
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %_ZN12_GLOBAL__N_120ARMTargetELFStreamer25emitArchDefaultAttributesEv.exit
  %.val7 = load ptr, ptr %i.aa, align 8, !tbaa !145 ; 5 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.ad, 48
  %i.ae = getelementptr inbounds nuw i8, ptr %.val7, i64 %.idx.i ; 3 uses
  %i.af = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ad, i1 true)
  %i.ag = shl nuw nsw i64 %i.af, 1
  %i.ah = xor i64 %i.ag, 126
  tail call fastcc void @"_ZSt16__introsort_loopIPN4llvm13MCELFStreamer13AttributeItemElN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120ARMTargetELFStreamer22finishAttributeSectionEvE3$_0EEEvT_SB_T0_T1_"(ptr noundef %.val7, ptr noundef nonnull %i.ae, i64 noundef %i.ah)
  %i.ai = icmp ugt i32 %i.ac, 16
  br i1 %i.ai, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.val7, i64 768 ; 2 uses
  tail call fastcc void @"_ZSt16__insertion_sortIPN4llvm13MCELFStreamer13AttributeItemEN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120ARMTargetELFStreamer22finishAttributeSectionEvE3$_0EEEvT_SB_T0_"(ptr noundef nonnull %.val7, ptr noundef nonnull %i.aj)
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %bb.ai
  %.07.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %i.aj, %bb.ai ] ; 2 uses
  tail call fastcc void @"_ZSt25__unguarded_linear_insertIPN4llvm13MCELFStreamer13AttributeItemEN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_120ARMTargetELFStreamer22finishAttributeSectionEvE3$_0EEEvT_T0_"(ptr noundef nonnull %.07.i.i.i.i.i.i)
  %i.ak = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.ae
  br i1 %.not.i.i.i.i.i.i, label %"_ZN4llvm4sortIRNS_11SmallVectorINS_13MCELFStreamer13AttributeItemELj64EEEZN12_GLOBAL__N_120ARMTargetELFStreamer22finishAttributeSectionEvE3$_0EEvOT_T0_.exit", label %.lr.ph.i.i.i.i.i.i, !llvm.loop !522

bb.aj:                                            ; preds = %bb.ah
  tail call fastcc void @"_ZSt16__insertion_sortIPN4llvm13MCELFStreamer13AttributeItemEN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120ARMTargetELFStreamer22finishAttributeSectionEvE3$_0EEEvT_SB_T0_"(ptr noundef nonnull %.val7, ptr noundef nonnull %i.ae)
  br label %"_ZN4llvm4sortIRNS_11SmallVectorINS_13MCELFStreamer13AttributeItemELj64EEEZN12_GLOBAL__N_120ARMTargetELFStreamer22finishAttributeSectionEvE3$_0EEvOT_T0_.exit"

"_ZN4llvm4sortIRNS_11SmallVectorINS_13MCELFStreamer13AttributeItemELj64EEEZN12_GLOBAL__N_120ARMTargetELFStreamer22finishAttributeSectionEvE3$_0EEvOT_T0_.exit": ; preds = %.lr.ph.i.i.i.i.i.i, %bb.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.al, align 8, !tbaa !389
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.an, align 1, !tbaa !213
  store ptr @.str.76, ptr %7, align 8, !tbaa !207
  store i8 3, ptr %i.am, align 8, !tbaa !212
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZN4llvm13MCELFStreamer23createAttributesSectionENS_9StringRefERKNS_5TwineEjRPNS_9MCSectionERNS_11SmallVectorINS0_13AttributeItemELj64EEE(ptr noundef nonnull align 8 dereferenceable(6625) %.val, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(34) %7, i32 noundef 1879048195, ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 8 dereferenceable(3088) %i.aa) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  store i32 0, ptr %i.b, align 8, !tbaa !40
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN12_GLOBAL__N_120ARMTargetELFStreamer25emitArchDefaultAttributesEv.exit, %"_ZN4llvm4sortIRNS_11SmallVectorINS_13MCELFStreamer13AttributeItemELj64EEEZN12_GLOBAL__N_120ARMTargetELFStreamer22finishAttributeSectionEvE3$_0EEvOT_T0_.exit"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120ARMTargetELFStreamer8emitInstEjc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, i8 noundef signext %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !225 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !226, !nonnull !196, !align !197
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !366, !nonnull !196, !align !197
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i8, ptr %i.g, align 8, !tbaa !525, !range !214, !noundef !196
  %i.i = trunc nuw i8 %i.h to i1                  ; 2 uses
  %i.j = icmp eq i8 %2, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN12_GLOBAL__N_114ARMELFStreamer20EmitARMMappingSymbolEv(ptr noundef nonnull align 8 dereferenceable(6928) %.val)
  br i1 %i.i, label %.split41.us.preheader.i, label %.split41.preheader.i

.split41.preheader.i:                             ; preds = %bb.b
  %3 = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %3, ptr %i.a, align 4, !tbaa !207
  br label %_ZN12_GLOBAL__N_114ARMELFStreamer8emitInstEjc.exit

.split41.us.preheader.i:                          ; preds = %bb.b
  store i32 %1, ptr %i.a, align 4
  br label %_ZN12_GLOBAL__N_114ARMELFStreamer8emitInstEjc.exit

bb.c:                                             ; preds = %bb.a
  %i.k = icmp eq i8 %2, 110
  %i.l = select i1 %i.k, i32 2, i32 4             ; 9 uses
  tail call fastcc void @_ZN12_GLOBAL__N_114ARMELFStreamer22EmitThumbMappingSymbolEv(ptr noundef nonnull align 8 dereferenceable(6928) %.val)
  br i1 %i.i, label %.split.us.i.preheader, label %.split.i.preheader

.split.i.preheader:                               ; preds = %bb.c
  %i.m = add nsw i32 %i.l, -2                     ; 3 uses
  %i.n = lshr exact i32 %i.m, 1
  %i.o = add nuw i32 %i.n, 1                      ; 2 uses
  %i.p = icmp eq i32 %i.m, 0
  br i1 %i.p, label %.split.i.epil.preheader, label %.split.i.preheader.new

.split.i.preheader.new:                           ; preds = %.split.i.preheader
  %unroll_iter = and i32 %i.o, -2
  %i.q = trunc i32 %1 to i8
  br label %.split.i

.split.us.i.preheader:                            ; preds = %bb.c
  %i.r = add nsw i32 %i.l, -2                     ; 3 uses
  %i.s = lshr exact i32 %i.r, 1
  %i.t = add nuw i32 %i.s, 1                      ; 2 uses
  %i.u = icmp eq i32 %i.r, 0
  br i1 %i.u, label %.split.us.i.epil.preheader, label %.split.us.i.preheader.new

.split.us.i.preheader.new:                        ; preds = %.split.us.i.preheader
  %unroll_iter33 = and i32 %i.t, -2
  %i.v = trunc i32 %1 to i8
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.i, %.split.us.i.preheader.new
  %indvars.iv46.i = phi i64 [ 0, %.split.us.i.preheader.new ], [ %indvars.iv.next47.i.1, %.split.us.i ] ; 3 uses
  %niter34 = phi i32 [ 0, %.split.us.i.preheader.new ], [ %niter34.next.1, %.split.us.i ]
  %i.w = trunc i64 %indvars.iv46.i to i32         ; 2 uses
  %i.x = shl i32 %i.w, 3
  %i.y = sub i32 %i.l, %i.w                       ; 2 uses
  %i.z = add nsw i32 %i.y, -2
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aa
  store i8 %i.v, ptr %i.ab, align 2, !tbaa !207
  %i.ac = or disjoint i32 %i.x, 8
  %i.ad = lshr i32 %1, %i.ac
  %i.ae = trunc i32 %i.ad to i8
  %i.af = add nsw i32 %i.y, -1
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ag
  store i8 %i.ae, ptr %i.ah, align 1, !tbaa !207
  %i.ai = trunc i64 %indvars.iv46.i to i32
  %i.aj = or disjoint i32 %i.ai, 2                ; 2 uses
  %i.ak = shl i32 %i.aj, 3                        ; 2 uses
  %i.al = lshr i32 %1, %i.ak
  %i.am = trunc i32 %i.al to i8
  %i.an = sub i32 %i.l, %i.aj                     ; 2 uses
  %i.ao = add nsw i32 %i.an, -2
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ap
  store i8 %i.am, ptr %i.aq, align 1, !tbaa !207
  %i.ar = or disjoint i32 %i.ak, 8
  %i.as = lshr i32 %1, %i.ar
  %i.at = trunc nuw i32 %i.as to i8
  %i.au = add nsw i32 %i.an, -1
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.av
  store i8 %i.at, ptr %i.aw, align 1, !tbaa !207
  %indvars.iv.next47.i.1 = add nuw nsw i64 %indvars.iv46.i, 4 ; 2 uses
  %niter34.next.1 = add i32 %niter34, 2           ; 2 uses
  %niter34.ncmp.1 = icmp eq i32 %niter34.next.1, %unroll_iter33
  br i1 %niter34.ncmp.1, label %.split39.us.i.loopexit.unr-lcssa, label %.split.us.i, !llvm.loop !523

.split39.us.i.loopexit.unr-lcssa:                 ; preds = %.split.us.i
  %i.ax = and i32 %i.r, 2
  %lcmp.mod31.not.not = icmp eq i32 %i.ax, 0
  br i1 %lcmp.mod31.not.not, label %.split.us.i.epil.preheader, label %.split39.us.i

.split.us.i.epil.preheader:                       ; preds = %.split39.us.i.loopexit.unr-lcssa, %.split.us.i.preheader
  %indvars.iv46.i.epil.init = phi i64 [ 0, %.split.us.i.preheader ], [ %indvars.iv.next47.i.1, %.split39.us.i.loopexit.unr-lcssa ]
  %lcmp.mod32 = trunc i32 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod32)
  %i.ay = trunc i64 %indvars.iv46.i.epil.init to i32 ; 2 uses
  %i.az = shl i32 %i.ay, 3                        ; 2 uses
  %i.ba = lshr i32 %1, %i.az
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = sub i32 %i.l, %i.ay                     ; 2 uses
  %i.bd = add nsw i32 %i.bc, -2
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be
  store i8 %i.bb, ptr %i.bf, align 1, !tbaa !207
  %i.bg = or disjoint i32 %i.az, 8
  %i.bh = lshr i32 %1, %i.bg
  %i.bi = trunc i32 %i.bh to i8
  %i.bj = add nsw i32 %i.bc, -1
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bk
  store i8 %i.bi, ptr %i.bl, align 1, !tbaa !207
  br label %.split39.us.i

.split39.us.i.loopexit28.unr-lcssa:               ; preds = %.split.i
  %i.bm = and i32 %i.m, 2
  %lcmp.mod.not.not = icmp eq i32 %i.bm, 0
  br i1 %lcmp.mod.not.not, label %.split.i.epil.preheader, label %.split39.us.i

.split.i.epil.preheader:                          ; preds = %.split39.us.i.loopexit28.unr-lcssa, %.split.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.split.i.preheader ], [ %indvars.iv.next.i.1, %.split39.us.i.loopexit28.unr-lcssa ]
  %lcmp.mod29 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod29)
  %i.bn = trunc i64 %indvars.iv.i.epil.init to i32 ; 2 uses
  %i.bo = shl i32 %i.bn, 3                        ; 2 uses
  %i.bp = or disjoint i32 %i.bo, 8
  %i.bq = lshr i32 %1, %i.bp
  %i.br = trunc i32 %i.bq to i8
  %i.bs = sub i32 %i.l, %i.bn                     ; 2 uses
  %i.bt = add nsw i32 %i.bs, -2
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bu
  store i8 %i.br, ptr %i.bv, align 1, !tbaa !207
  %i.bw = lshr i32 %1, %i.bo
  %i.bx = trunc i32 %i.bw to i8
  %i.by = add nsw i32 %i.bs, -1
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bz
  store i8 %i.bx, ptr %i.ca, align 1, !tbaa !207
  br label %.split39.us.i

.split39.us.i:                                    ; preds = %.split.i.epil.preheader, %.split39.us.i.loopexit28.unr-lcssa, %.split.us.i.epil.preheader, %.split39.us.i.loopexit.unr-lcssa
  %.pre-phi.i = zext nneg i32 %i.l to i64
  br label %_ZN12_GLOBAL__N_114ARMELFStreamer8emitInstEjc.exit

.split.i:                                         ; preds = %.split.i, %.split.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.split.i.preheader.new ], [ %indvars.iv.next.i.1, %.split.i ] ; 3 uses
  %niter = phi i32 [ 0, %.split.i.preheader.new ], [ %niter.next.1, %.split.i ]
  %i.cb = trunc i64 %indvars.iv.i to i32          ; 2 uses
  %i.cc = shl i32 %i.cb, 3
  %i.cd = or disjoint i32 %i.cc, 8
  %i.ce = lshr i32 %1, %i.cd
  %i.cf = trunc i32 %i.ce to i8
  %i.cg = sub i32 %i.l, %i.cb                     ; 2 uses
  %i.ch = add nsw i32 %i.cg, -2
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ci
  store i8 %i.cf, ptr %i.cj, align 2, !tbaa !207
  %i.ck = add nsw i32 %i.cg, -1
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cl
  store i8 %i.q, ptr %i.cm, align 1, !tbaa !207
  %i.cn = trunc i64 %indvars.iv.i to i32
  %i.co = or disjoint i32 %i.cn, 2                ; 2 uses
  %i.cp = shl i32 %i.co, 3                        ; 2 uses
  %i.cq = or disjoint i32 %i.cp, 8
  %i.cr = lshr i32 %1, %i.cq
  %i.cs = trunc nuw i32 %i.cr to i8
  %i.ct = sub i32 %i.l, %i.co                     ; 2 uses
  %i.cu = add nsw i32 %i.ct, -2
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cv
  store i8 %i.cs, ptr %i.cw, align 1, !tbaa !207
  %i.cx = lshr i32 %1, %i.cp
  %i.cy = trunc i32 %i.cx to i8
  %i.cz = add nsw i32 %i.ct, -1
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.da
  store i8 %i.cy, ptr %i.db, align 1, !tbaa !207
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.split39.us.i.loopexit28.unr-lcssa, label %.split.i, !llvm.loop !524

_ZN12_GLOBAL__N_114ARMELFStreamer8emitInstEjc.exit: ; preds = %.split41.preheader.i, %.split41.us.preheader.i, %.split39.us.i
  %.0.i = phi i64 [ %.pre-phi.i, %.split39.us.i ], [ 4, %.split41.us.preheader.i ], [ 4, %.split41.preheader.i ]
  call void @_ZN4llvm16MCObjectStreamer9emitBytesENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(6928) %.val, ptr nonnull %i.a, i64 %.0.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120ARMTargetELFStreamer29annotateTLSDescriptorSequenceEPKN4llvm15MCSymbolRefExprE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !225
  tail call void @_ZN4llvm16MCObjectStreamer8addFixupEPKNS_6MCExprEt(ptr noundef nonnull align 8 dereferenceable(448) %.val, ptr noundef %1, i16 noundef zeroext 4003) #22
  ret void
}

declare void @_ZN4llvm17ARMTargetStreamer17emitSyntaxUnifiedEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN12_GLOBAL__N_120ARMTargetELFStreamer10emitCode16Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !225
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 6625
  store i8 1, ptr %i.b, align 1, !tbaa !141
  ret void
}

end_hunk_0
begin_hunk_1_@_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer13AttributeItemELb0EE9push_backERKS2_:bb.a
  %i.n = load ptr, ptr %0, align 8, !tbaa !145    ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 %i.m
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer13AttributeItemELb0EE28reserveForParamAndGetAddressERKS2_m.exit

.critedge.i.i:                                    ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer13AttributeItemELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.e)
  %.pre = load ptr, ptr %0, align 8, !tbaa !145
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer13AttributeItemELb0EE28reserveForParamAndGetAddressERKS2_m.exit

_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer13AttributeItemELb0EE28reserveForParamAndGetAddressERKS2_m.exit: ; preds = %bb.a, %bb.c, %.critedge.i.i
  %i.p = phi ptr [ %.pre3, %bb.a ], [ %i.n, %bb.c ], [ %.pre, %.critedge.i.i ]
  %.016.i.i = phi ptr [ %1, %bb.a ], [ %i.o, %bb.c ], [ %1, %.critedge.i.i ] ; 3 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !150
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.r ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %.016.i.i, i64 12, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !452
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !218  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !219  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.y, ptr %i.a, align 8, !tbaa !217
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer13AttributeItemELb0EE28reserveForParamAndGetAddressERKS2_m.exit
  %i.aa = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #22 ; 2 uses
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !218
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !217
  store i64 %i.ab, ptr %i.v, align 8, !tbaa !207
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer13AttributeItemELb0EE28reserveForParamAndGetAddressERKS2_m.exit
  %i.ac = phi ptr [ %i.aa, %bb.d ], [ %i.v, %_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer13AttributeItemELb0EE28reserveForParamAndGetAddressERKS2_m.exit ] ; 2 uses
  switch i64 %i.y, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN4llvm13MCELFStreamer13AttributeItemC2ERKS1_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ad = load i8, ptr %i.w, align 1, !tbaa !207
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !207
  br label %_ZN4llvm13MCELFStreamer13AttributeItemC2ERKS1_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.w, i64 %i.y, i1 false)
  br label %_ZN4llvm13MCELFStreamer13AttributeItemC2ERKS1_.exit

_ZN4llvm13MCELFStreamer13AttributeItemC2ERKS1_.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !217 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !219
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !218
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ai = load i32, ptr %i.b, align 8, !tbaa !150
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.b, align 8, !tbaa !150
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer13AttributeItemELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef %1, i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #22 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !145    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !150  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i = mul nuw nsw i64 %i.g, 48
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer13AttributeItemELb0EE19moveElementsForGrowEPS2_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %_ZSt10_ConstructIN4llvm13MCELFStreamer13AttributeItemEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.x, %_ZSt10_ConstructIN4llvm13MCELFStreamer13AttributeItemEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 5 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.w, %_ZSt10_ConstructIN4llvm13MCELFStreamer13AttributeItemEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.d, %bb.a ] ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.04.08.i.i.i.i.i.i, i64 12, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32 ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !452
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !218  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 32 ; 5 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !219  ; 2 uses
  %i.q = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.r, i1 false)
  br label %_ZSt10_ConstructIN4llvm13MCELFStreamer13AttributeItemEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.l, ptr %i.i, align 8, !tbaa !218
  %i.s = load i64, ptr %i.m, align 8, !tbaa !207
  store i64 %i.s, ptr %i.k, align 8, !tbaa !207
  br label %_ZSt10_ConstructIN4llvm13MCELFStreamer13AttributeItemEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN4llvm13MCELFStreamer13AttributeItemEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !219
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  store i64 %i.u, ptr %i.v, align 8, !tbaa !219
  store ptr %i.m, ptr %i.j, align 8, !tbaa !218
  store i64 0, ptr %i.t, align 8, !tbaa !219
  store i8 0, ptr %i.m, align 8, !tbaa !207
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i.i = icmp eq ptr %i.w, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer13AttributeItemELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !588

_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer13AttributeItemELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i: ; preds = %_ZSt10_ConstructIN4llvm13MCELFStreamer13AttributeItemEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !145 ; 3 uses
  %.pre3.i = load i32, ptr %i.e, align 8, !tbaa !150 ; 2 uses
  %.not4.i.i = icmp eq i32 %.pre3.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer13AttributeItemELb0EE19moveElementsForGrowEPS2_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer13AttributeItemELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i
  %i.y = zext i32 %.pre3.i to i64
  %.idx2.i = mul nuw nsw i64 %i.y, 48
  %i.z = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx2.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm13MCELFStreamer13AttributeItemD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.aa, %_ZN4llvm13MCELFStreamer13AttributeItemD2Ev.exit.i.i ], [ %i.z, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %.05.i.i, i64 -48 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %.05.i.i, i64 -32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !218 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.05.i.i, i64 -16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN4llvm13MCELFStreamer13AttributeItemD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !207
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #23
  br label %_ZN4llvm13MCELFStreamer13AttributeItemD2Ev.exit.i.i

_ZN4llvm13MCELFStreamer13AttributeItemD2Ev.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.not.i.i = icmp eq ptr %.pre.i, %i.aa
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer13AttributeItemELb0EE19moveElementsForGrowEPS2_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !6

_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer13AttributeItemELb0EE19moveElementsForGrowEPS2_.exit.loopexit: ; preds = %_ZN4llvm13MCELFStreamer13AttributeItemD2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !145
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer13AttributeItemELb0EE19moveElementsForGrowEPS2_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer13AttributeItemELb0EE19moveElementsForGrowEPS2_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer13AttributeItemELb0EE19moveElementsForGrowEPS2_.exit.loopexit, %bb.a, %_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer13AttributeItemELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i
  %i.ah = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer13AttributeItemELb0EE19moveElementsForGrowEPS2_.exit.loopexit ], [ %i.d, %bb.a ], [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer13AttributeItemELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i ] ; 2 uses
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !217
  %i.aj = icmp eq ptr %i.ah, %i.b
  br i1 %i.aj, label %_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer13AttributeItemELb0EE21takeAllocationForGrowEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer13AttributeItemELb0EE19moveElementsForGrowEPS2_.exit
  call void @free(ptr noundef %i.ah) #22
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer13AttributeItemELb0EE21takeAllocationForGrowEPS2_m.exit

_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer13AttributeItemELb0EE21takeAllocationForGrowEPS2_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer13AttributeItemELb0EE19moveElementsForGrowEPS2_.exit, %bb.c
  store ptr %i.c, ptr %0, align 8, !tbaa !145
  %i.ak = trunc i64 %i.ai to i32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

declare noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4llvm9MCContext11reportErrorENS_5SMLocERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(2208), ptr, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

declare void @_ZN4llvm16MCObjectStreamer13emitValueImplEPKNS_6MCExprEjNS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef, i32 noundef, ptr) unnamed_addr #2

declare void @_ZN4llvm16MCObjectStreamer8emitFillERKNS_6MCExprEmNS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr) unnamed_addr #2

declare void @_ZN4llvm16MCObjectStreamer15emitInstructionERKNS_6MCInstERKNS_15MCSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(320)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #20

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { builtin nounwind allocsize(0) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn nounwind }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{null, null}
!1 = distinct !{null}
!2 = distinct !{!2, !209}
!3 = distinct !{!3, !209}
!4 = distinct !{!4, !209}
!5 = distinct !{null, null}
!6 = distinct !{!6, !209}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"vtable pointer", !10, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"any pointer", !11, i64 0}
!18 = !{!"p1 _ZTSN4llvm21formatted_raw_ostreamE", !17, i64 0}
!19 = !{!"p1 _ZTSN4llvm13MCInstPrinterE", !17, i64 0}
!20 = !{!"p1 _ZTSN4llvm10MCStreamerE", !17, i64 0}
!21 = !{!"_ZTSN4llvm16MCTargetStreamerE", !20, i64 8}
!22 = !{!"p1 _ZTSN4llvm22AssemblerConstantPoolsE", !17, i64 0}
!23 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm22AssemblerConstantPoolsELb0EE", !22, i64 0}
!24 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm22AssemblerConstantPoolsESt14default_deleteIS1_EEE", !23, i64 0}
!25 = !{!"_ZTSSt5tupleIJPN4llvm22AssemblerConstantPoolsESt14default_deleteIS1_EEE", !24, i64 0}
!26 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm22AssemblerConstantPoolsESt14default_deleteIS1_EE", !25, i64 0}
!27 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm22AssemblerConstantPoolsESt14default_deleteIS1_ELb1ELb1EE", !26, i64 0}
!28 = !{!"_ZTSSt10unique_ptrIN4llvm22AssemblerConstantPoolsESt14default_deleteIS1_EE", !27, i64 0}
!29 = !{!"_ZTSN4llvm17ARMTargetStreamerE", !21, i64 0, !28, i64 16}
!30 = !{!"bool", !11, i64 0}
!31 = !{!"_ZTSN12_GLOBAL__N_120ARMTargetAsmStreamerE", !29, i64 0, !18, i64 24, !19, i64 32, !30, i64 40}
!32 = !{!31, !30, i64 40}
!33 = !{!"p1 omnipotent char", !17, i64 0}
!34 = !{!"long", !11, i64 0}
!35 = !{!"_ZTSN4llvm9StringRefE", !33, i64 0, !34, i64 8}
!36 = !{!"_ZTSN4llvm3ARM7FPUKindE", !11, i64 0}
!37 = !{!"_ZTSN4llvm3ARM8ArchKindE", !11, i64 0}
!38 = !{!"p1 _ZTSN4llvm9MCSectionE", !17, i64 0}
!39 = !{!"_ZTSN12_GLOBAL__N_120ARMTargetELFStreamerE", !29, i64 0, !35, i64 24, !36, i64 40, !37, i64 44, !37, i64 48, !38, i64 56}
!40 = !{!39, !36, i64 40}
!41 = !{!39, !37, i64 44}
!42 = !{!39, !37, i64 48}
!43 = !{!39, !38, i64 56}
!44 = !{!"p1 _ZTSN4llvm9MCContextE", !17, i64 0}
!45 = !{!"p1 _ZTSN4llvm16MCTargetStreamerE", !17, i64 0}
!46 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm16MCTargetStreamerELb0EE", !45, i64 0}
!47 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm16MCTargetStreamerESt14default_deleteIS1_EEE", !46, i64 0}
!48 = !{!"_ZTSSt5tupleIJPN4llvm16MCTargetStreamerESt14default_deleteIS1_EEE", !47, i64 0}
!49 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm16MCTargetStreamerESt14default_deleteIS1_EE", !48, i64 0}
!50 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm16MCTargetStreamerESt14default_deleteIS1_ELb1ELb1EE", !49, i64 0}
!51 = !{!"_ZTSSt10unique_ptrIN4llvm16MCTargetStreamerESt14default_deleteIS1_EE", !50, i64 0}
!52 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !17, i64 0, !12, i64 8, !12, i64 12}
!53 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairImPNS_9MCSectionEEvEE", !52, i64 0}
!54 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairImPNS_9MCSectionEELb1EEE", !53, i64 0}
!55 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairImPNS_9MCSectionEEEE", !54, i64 0}
!56 = !{!"_ZTSN4llvm18SmallVectorStorageISt4pairImPNS_9MCSectionEELj1EEE", !11, i64 0}
!57 = !{!"_ZTSN4llvm11SmallVectorISt4pairImPNS_9MCSectionEELj1EEE", !55, i64 0, !56, i64 16}
!58 = !{!"p1 _ZTSSt10unique_ptrIN4llvm5WinEH9FrameInfoESt14default_deleteIS2_EE", !17, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4llvm5WinEH9FrameInfoESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!60 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4llvm5WinEH9FrameInfoESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !59, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN4llvm5WinEH9FrameInfoESt14default_deleteIS3_EESaIS6_EE", !60, i64 0}
!62 = !{!"_ZTSSt6vectorISt10unique_ptrIN4llvm5WinEH9FrameInfoESt14default_deleteIS3_EESaIS6_EE", !61, i64 0}
!63 = !{!"p1 _ZTSN4llvm5WinEH9FrameInfoE", !17, i64 0}
!64 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIS1_IPNS_9MCSectionEjES4_EvEE", !52, i64 0}
!65 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIS1_IPNS_9MCSectionEjES4_ELb1EEE", !64, i64 0}
!66 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIS1_IPNS_9MCSectionEjES4_EEE", !65, i64 0}
!67 = !{!"_ZTSN4llvm18SmallVectorStorageISt4pairIS1_IPNS_9MCSectionEjES4_ELj4EEE", !11, i64 0}
!68 = !{!"_ZTSN4llvm11SmallVectorISt4pairIS1_IPNS_9MCSectionEjES4_ELj4EEE", !66, i64 0, !67, i64 16}
!69 = !{!"p1 _ZTSN4llvm5SMLocE", !17, i64 0}
!70 = !{!"p1 _ZTSN4llvm5WinEH9FrameInfo6EpilogE", !17, i64 0}
!71 = !{!"p1 _ZTSN4llvm10MCFragmentE", !17, i64 0}
!72 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_16MCDwarfFrameInfoEvEE", !52, i64 0}
!73 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_16MCDwarfFrameInfoELb0EEE", !72, i64 0}
!74 = !{!"_ZTSN4llvm15SmallVectorImplINS_16MCDwarfFrameInfoEEE", !73, i64 0}
!75 = !{!"_ZTSN4llvm11SmallVectorINS_16MCDwarfFrameInfoELj0EEE", !74, i64 0}
!76 = !{!"p1 _ZTSN4llvm13MCLFIRewriterE", !17, i64 0}
!77 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm13MCLFIRewriterELb0EE", !76, i64 0}
!78 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm13MCLFIRewriterESt14default_deleteIS1_EEE", !77, i64 0}
!79 = !{!"_ZTSSt5tupleIJPN4llvm13MCLFIRewriterESt14default_deleteIS1_EEE", !78, i64 0}
!80 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm13MCLFIRewriterESt14default_deleteIS1_EE", !79, i64 0}
!81 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm13MCLFIRewriterESt14default_deleteIS1_ELb1ELb1EE", !80, i64 0}
!82 = !{!"_ZTSSt10unique_ptrIN4llvm13MCLFIRewriterESt14default_deleteIS1_EE", !81, i64 0}
!83 = !{!"_ZTSN4llvm10MCStreamerE", !44, i64 8, !51, i64 16, !57, i64 24, !62, i64 56, !63, i64 80, !34, i64 88, !11, i64 96, !68, i64 104, !69, i64 248, !12, i64 256, !30, i64 260, !30, i64 261, !30, i64 262, !70, i64 264, !71, i64 272, !75, i64 280, !82, i64 296}
!84 = !{!"p1 _ZTSN4llvm11MCAssemblerE", !17, i64 0}
!85 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm11MCAssemblerELb0EE", !84, i64 0}
!86 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm11MCAssemblerESt14default_deleteIS1_EEE", !85, i64 0}
!87 = !{!"_ZTSSt5tupleIJPN4llvm11MCAssemblerESt14default_deleteIS1_EEE", !86, i64 0}
!88 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm11MCAssemblerESt14default_deleteIS1_EE", !87, i64 0}
!89 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm11MCAssemblerESt14default_deleteIS1_ELb1ELb1EE", !88, i64 0}
!90 = !{!"_ZTSSt10unique_ptrIN4llvm11MCAssemblerESt14default_deleteIS1_EE", !89, i64 0}
!91 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_8MCSymbolENS_11SmallVectorINS_16MCObjectStreamer17PendingAssignmentELj1EEEEE", !17, i64 0}
!92 = !{!"p1 int", !17, i64 0}
!93 = !{!"_ZTSN4llvm8DenseMapIPKNS_8MCSymbolENS_11SmallVectorINS_16MCObjectStreamer17PendingAssignmentELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEE", !91, i64 0, !92, i64 8, !12, i64 16, !12, i64 20}
!94 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt10unique_ptrIA_hSt14default_deleteIS2_EEvEE", !52, i64 0}
!95 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt10unique_ptrIA_hSt14default_deleteIS2_EELb0EEE", !94, i64 0}
!96 = !{!"_ZTSN4llvm15SmallVectorImplISt10unique_ptrIA_hSt14default_deleteIS2_EEEE", !95, i64 0}
!97 = !{!"_ZTSN4llvm11SmallVectorISt10unique_ptrIA_hSt14default_deleteIS2_EELj0EEE", !96, i64 0}
!98 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPvvEE", !52, i64 0}
!99 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPvLb1EEE", !98, i64 0}
!100 = !{!"_ZTSN4llvm15SmallVectorImplIPvEE", !99, i64 0}
!101 = !{!"_ZTSN4llvm18SmallVectorStorageIPvLj4EEE", !11, i64 0}
!102 = !{!"_ZTSN4llvm11SmallVectorIPvLj4EEE", !100, i64 0, !101, i64 16}
!103 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPvmEvEE", !52, i64 0}
!104 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EEE", !103, i64 0}
!105 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPvmEEE", !104, i64 0}
!106 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPvmELj0EEE", !105, i64 0}
!107 = !{!"_ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE", !33, i64 0, !34, i64 8, !102, i64 16, !106, i64 64}
!108 = !{!"_ZTSN4llvm16MCObjectStreamerE", !83, i64 0, !90, i64 304, !30, i64 312, !30, i64 313, !30, i64 314, !93, i64 320, !97, i64 344, !34, i64 360, !107, i64 368}
!109 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_13MCELFStreamer13AttributeItemEvEE", !52, i64 0}
!110 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer13AttributeItemELb0EEE", !109, i64 0}
!111 = !{!"_ZTSN4llvm15SmallVectorImplINS_13MCELFStreamer13AttributeItemEEE", !110, i64 0}
!112 = !{!"_ZTSN4llvm18SmallVectorStorageINS_13MCELFStreamer13AttributeItemELj64EEE", !11, i64 0}
!113 = !{!"_ZTSN4llvm11SmallVectorINS_13MCELFStreamer13AttributeItemELj64EEE", !111, i64 0, !112, i64 16}
!114 = !{!"_ZTSN4llvm13MCELFStreamerE", !108, i64 0, !113, i64 448, !113, i64 3536, !30, i64 6624}
!115 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_9MCSectionESt10unique_ptrIN12_GLOBAL__N_114ARMELFStreamer20ElfMappingSymbolInfoESt14default_deleteIS8_EEEE", !17, i64 0}
!116 = !{!"_ZTSN4llvm8DenseMapIPKNS_9MCSectionESt10unique_ptrIN12_GLOBAL__N_114ARMELFStreamer20ElfMappingSymbolInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEE", !115, i64 0, !92, i64 8, !12, i64 16, !12, i64 20}
!117 = !{!"p1 _ZTSN12_GLOBAL__N_114ARMELFStreamer20ElfMappingSymbolInfoE", !17, i64 0}
!118 = !{!"_ZTSSt10_Head_baseILm0EPN12_GLOBAL__N_114ARMELFStreamer20ElfMappingSymbolInfoELb0EE", !117, i64 0}
!119 = !{!"_ZTSSt11_Tuple_implILm0EJPN12_GLOBAL__N_114ARMELFStreamer20ElfMappingSymbolInfoESt14default_deleteIS2_EEE", !118, i64 0}
!120 = !{!"_ZTSSt5tupleIJPN12_GLOBAL__N_114ARMELFStreamer20ElfMappingSymbolInfoESt14default_deleteIS2_EEE", !119, i64 0}
!121 = !{!"_ZTSSt15__uniq_ptr_implIN12_GLOBAL__N_114ARMELFStreamer20ElfMappingSymbolInfoESt14default_deleteIS2_EE", !120, i64 0}
!122 = !{!"_ZTSSt15__uniq_ptr_dataIN12_GLOBAL__N_114ARMELFStreamer20ElfMappingSymbolInfoESt14default_deleteIS2_ELb1ELb1EE", !121, i64 0}
!123 = !{!"_ZTSSt10unique_ptrIN12_GLOBAL__N_114ARMELFStreamer20ElfMappingSymbolInfoESt14default_deleteIS2_EE", !122, i64 0}
!124 = !{!"p1 _ZTSN4llvm8MCSymbolE", !17, i64 0}
!125 = !{!"_ZTSN4llvm10MCRegisterE", !12, i64 0}
!126 = !{!"_ZTSN4llvm15SmallVectorBaseImEE", !17, i64 0, !34, i64 8, !34, i64 16}
!127 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIhvEE", !126, i64 0}
!128 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIhLb1EEE", !127, i64 0}
!129 = !{!"_ZTSN4llvm15SmallVectorImplIhEE", !128, i64 0}
!130 = !{!"_ZTSN4llvm18SmallVectorStorageIhLj64EEE", !11, i64 0}
!131 = !{!"_ZTSN4llvm11SmallVectorIhLj64EEE", !129, i64 0, !130, i64 24}
!132 = !{!"_ZTSN4llvm18SmallVectorStorageIhLj32EEE", !11, i64 0}
!133 = !{!"_ZTSN4llvm11SmallVectorIhLj32EEE", !129, i64 0, !132, i64 24}
!134 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIjvEE", !52, i64 0}
!135 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIjLb1EEE", !134, i64 0}
!136 = !{!"_ZTSN4llvm15SmallVectorImplIjEE", !135, i64 0}
!137 = !{!"_ZTSN4llvm18SmallVectorStorageIjLj8EEE", !11, i64 0}
!138 = !{!"_ZTSN4llvm11SmallVectorIjLj8EEE", !136, i64 0, !137, i64 16}
!139 = !{!"_ZTSN4llvm21UnwindOpcodeAssemblerE", !133, i64 0, !138, i64 56, !30, i64 104}
!140 = !{!"_ZTSN12_GLOBAL__N_114ARMELFStreamerE", !114, i64 0, !30, i64 6625, !30, i64 6626, !116, i64 6632, !123, i64 6656, !124, i64 6664, !124, i64 6672, !124, i64 6680, !12, i64 6688, !125, i64 6692, !34, i64 6696, !34, i64 6704, !34, i64 6712, !30, i64 6720, !30, i64 6721, !131, i64 6728, !139, i64 6816}
!141 = !{!140, !30, i64 6625}
!142 = !{!140, !30, i64 6626}
!143 = !{!126, !17, i64 0}
!144 = !{!126, !34, i64 16}
!145 = !{!52, !17, i64 0}
!146 = !{!52, !12, i64 12}
!147 = !{!140, !12, i64 6688}
!148 = !{!12, !12, i64 0}
!149 = !{!126, !34, i64 8}
!150 = !{!52, !12, i64 8}
!151 = !{!139, !30, i64 104}
!152 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEvEE", !52, i64 0}
!153 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb0EEE", !152, i64 0}
!154 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEE", !153, i64 0}
!155 = !{!"_ZTSN4llvm11SmallVectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELj0EEE", !154, i64 0}
!156 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !33, i64 0}
!157 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !156, i64 0, !34, i64 8, !11, i64 16}
!158 = !{!"any p2 pointer", !17, i64 0}
!159 = !{!"p2 _ZTSN4llvm8MCSymbolE", !158, i64 0}
!160 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm8MCSymbolESaIS3_EE17_Vector_impl_dataE", !159, i64 0, !159, i64 8, !159, i64 16}
!161 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm8MCSymbolESaIS3_EE12_Vector_implE", !160, i64 0}
!162 = !{!"_ZTSSt12_Vector_baseIPKN4llvm8MCSymbolESaIS3_EE", !161, i64 0}
!163 = !{!"_ZTSSt6vectorIPKN4llvm8MCSymbolESaIS3_EE", !162, i64 0}
!164 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_14MCObjectWriter14CGProfileEntryEvEE", !52, i64 0}
!165 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_14MCObjectWriter14CGProfileEntryELb1EEE", !164, i64 0}
!166 = !{!"_ZTSN4llvm15SmallVectorImplINS_14MCObjectWriter14CGProfileEntryEEE", !165, i64 0}
!167 = !{!"_ZTSN4llvm11SmallVectorINS_14MCObjectWriter14CGProfileEntryELj0EEE", !166, i64 0}
!168 = !{!"_ZTSN4llvm14MCObjectWriterE", !84, i64 8, !155, i64 16, !157, i64 32, !163, i64 64, !30, i64 88, !30, i64 89, !167, i64 96}
!169 = !{!"p1 _ZTSN4llvm23MCELFObjectTargetWriterE", !17, i64 0}
end_hunk_1
