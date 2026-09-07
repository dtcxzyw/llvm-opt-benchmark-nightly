Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMELFStreamer?download=true
inline.NumInlined: 1328
inline.NumDeleted: 655
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN12_GLOBAL__N_120ARMTargetELFStreamer22finishAttributeSectionEv:bb.a
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
  %i.a = alloca [4 x i8], align 4                 ; 20 uses
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
  %i.k = trunc i32 %1 to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.k, ptr %i.l, align 1, !tbaa !207
  %i.m = lshr i32 %1, 8
  %i.n = trunc i32 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.n, ptr %i.o, align 2, !tbaa !207
  %i.p = lshr i32 %1, 16
  %i.q = trunc i32 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.q, ptr %i.r, align 1, !tbaa !207
  %i.s = lshr i32 %1, 24
  %i.t = trunc nuw i32 %i.s to i8
  store i8 %i.t, ptr %i.a, align 4, !tbaa !207
  br label %_ZN12_GLOBAL__N_114ARMELFStreamer8emitInstEjc.exit

.split41.us.preheader.i:                          ; preds = %bb.b
  store i32 %1, ptr %i.a, align 4
  br label %_ZN12_GLOBAL__N_114ARMELFStreamer8emitInstEjc.exit

bb.c:                                             ; preds = %bb.a
  %i.u = icmp eq i8 %2, 110
  %i.v = select i1 %i.u, i32 2, i32 4             ; 9 uses
  tail call fastcc void @_ZN12_GLOBAL__N_114ARMELFStreamer22EmitThumbMappingSymbolEv(ptr noundef nonnull align 8 dereferenceable(6928) %.val)
  br i1 %i.i, label %.split.us.i.preheader, label %.split.i.preheader

.split.i.preheader:                               ; preds = %bb.c
  %i.w = add nsw i32 %i.v, -2                     ; 3 uses
  %i.x = lshr exact i32 %i.w, 1
  %i.y = add nuw i32 %i.x, 1                      ; 2 uses
  %3 = icmp eq i32 %i.w, 0
  br i1 %3, label %.split.i.epil.preheader, label %.split.i.preheader.new

.split.i.preheader.new:                           ; preds = %.split.i.preheader
  %unroll_iter = and i32 %i.y, -2
  %i.z = trunc i32 %1 to i8
  br label %.split.i

.split.us.i.preheader:                            ; preds = %bb.c
  %i.aa = add nsw i32 %i.v, -2                    ; 3 uses
  %i.ab = lshr exact i32 %i.aa, 1
  %i.ac = add nuw i32 %i.ab, 1                    ; 2 uses
  %4 = icmp eq i32 %i.aa, 0
  br i1 %4, label %.split.us.i.epil.preheader, label %.split.us.i.preheader.new

.split.us.i.preheader.new:                        ; preds = %.split.us.i.preheader
  %unroll_iter33 = and i32 %i.ac, -2
  %i.ad = trunc i32 %1 to i8
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.i, %.split.us.i.preheader.new
  %indvars.iv46.i = phi i64 [ 0, %.split.us.i.preheader.new ], [ %indvars.iv.next47.i.1, %.split.us.i ] ; 3 uses
  %niter34 = phi i32 [ 0, %.split.us.i.preheader.new ], [ %niter34.next.1, %.split.us.i ]
  %i.ae = trunc i64 %indvars.iv46.i to i32        ; 2 uses
  %i.af = shl i32 %i.ae, 3
  %i.ag = sub i32 %i.v, %i.ae                     ; 2 uses
  %i.ah = add nsw i32 %i.ag, -2
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ai
  store i8 %i.ad, ptr %i.aj, align 2, !tbaa !207
  %i.ak = or disjoint i32 %i.af, 8
  %i.al = lshr i32 %1, %i.ak
  %i.am = trunc i32 %i.al to i8
  %i.an = add nsw i32 %i.ag, -1
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ao
  store i8 %i.am, ptr %i.ap, align 1, !tbaa !207
  %i.aq = trunc i64 %indvars.iv46.i to i32
  %i.ar = or disjoint i32 %i.aq, 2                ; 2 uses
  %i.as = shl i32 %i.ar, 3                        ; 2 uses
  %i.at = lshr i32 %1, %i.as
  %i.au = trunc i32 %i.at to i8
  %i.av = sub i32 %i.v, %i.ar                     ; 2 uses
  %i.aw = add nsw i32 %i.av, -2
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  store i8 %i.au, ptr %i.ay, align 1, !tbaa !207
  %i.az = or disjoint i32 %i.as, 8
  %i.ba = lshr i32 %1, %i.az
  %i.bb = trunc nuw i32 %i.ba to i8
  %i.bc = add nsw i32 %i.av, -1
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  store i8 %i.bb, ptr %i.be, align 1, !tbaa !207
  %indvars.iv.next47.i.1 = add nuw nsw i64 %indvars.iv46.i, 4 ; 2 uses
  %niter34.next.1 = add i32 %niter34, 2           ; 2 uses
  %niter34.ncmp.1 = icmp eq i32 %niter34.next.1, %unroll_iter33
  br i1 %niter34.ncmp.1, label %.split39.us.i.loopexit.unr-lcssa, label %.split.us.i, !llvm.loop !523

.split39.us.i.loopexit.unr-lcssa:                 ; preds = %.split.us.i
  %i.bf = and i32 %i.aa, 2
  %lcmp.mod31.not.not = icmp eq i32 %i.bf, 0
  br i1 %lcmp.mod31.not.not, label %.split.us.i.epil.preheader, label %.split39.us.i

.split.us.i.epil.preheader:                       ; preds = %.split39.us.i.loopexit.unr-lcssa, %.split.us.i.preheader
  %indvars.iv46.i.epil.init = phi i64 [ 0, %.split.us.i.preheader ], [ %indvars.iv.next47.i.1, %.split39.us.i.loopexit.unr-lcssa ]
  %lcmp.mod32 = trunc i32 %i.ac to i1
  tail call void @llvm.assume(i1 %lcmp.mod32)
  %i.bg = trunc i64 %indvars.iv46.i.epil.init to i32 ; 2 uses
  %i.bh = shl i32 %i.bg, 3                        ; 2 uses
  %i.bi = lshr i32 %1, %i.bh
  %i.bj = trunc i32 %i.bi to i8
  %i.bk = sub i32 %i.v, %i.bg                     ; 2 uses
  %i.bl = add nsw i32 %i.bk, -2
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bm
  store i8 %i.bj, ptr %i.bn, align 1, !tbaa !207
  %i.bo = or disjoint i32 %i.bh, 8
  %i.bp = lshr i32 %1, %i.bo
  %i.bq = trunc i32 %i.bp to i8
  %i.br = add nsw i32 %i.bk, -1
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bs
  store i8 %i.bq, ptr %i.bt, align 1, !tbaa !207
  br label %.split39.us.i

.split39.us.i.loopexit28.unr-lcssa:               ; preds = %.split.i
  %i.bu = and i32 %i.w, 2
  %lcmp.mod.not.not = icmp eq i32 %i.bu, 0
  br i1 %lcmp.mod.not.not, label %.split.i.epil.preheader, label %.split39.us.i

.split.i.epil.preheader:                          ; preds = %.split39.us.i.loopexit28.unr-lcssa, %.split.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.split.i.preheader ], [ %indvars.iv.next.i.1, %.split39.us.i.loopexit28.unr-lcssa ]
  %lcmp.mod29 = trunc i32 %i.y to i1
  tail call void @llvm.assume(i1 %lcmp.mod29)
  %i.bv = trunc i64 %indvars.iv.i.epil.init to i32 ; 2 uses
  %i.bw = shl i32 %i.bv, 3                        ; 2 uses
  %i.bx = or disjoint i32 %i.bw, 8
  %i.by = lshr i32 %1, %i.bx
  %i.bz = trunc i32 %i.by to i8
  %i.ca = sub i32 %i.v, %i.bv                     ; 2 uses
  %i.cb = add nsw i32 %i.ca, -2
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cc
  store i8 %i.bz, ptr %i.cd, align 1, !tbaa !207
  %i.ce = lshr i32 %1, %i.bw
  %i.cf = trunc i32 %i.ce to i8
  %i.cg = add nsw i32 %i.ca, -1
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ch
  store i8 %i.cf, ptr %i.ci, align 1, !tbaa !207
  br label %.split39.us.i

.split39.us.i:                                    ; preds = %.split.i.epil.preheader, %.split39.us.i.loopexit28.unr-lcssa, %.split.us.i.epil.preheader, %.split39.us.i.loopexit.unr-lcssa
  %.pre-phi.i = zext nneg i32 %i.v to i64
  br label %_ZN12_GLOBAL__N_114ARMELFStreamer8emitInstEjc.exit

.split.i:                                         ; preds = %.split.i, %.split.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.split.i.preheader.new ], [ %indvars.iv.next.i.1, %.split.i ] ; 3 uses
  %niter = phi i32 [ 0, %.split.i.preheader.new ], [ %niter.next.1, %.split.i ]
  %i.cj = trunc i64 %indvars.iv.i to i32          ; 2 uses
  %i.ck = shl i32 %i.cj, 3
  %i.cl = or disjoint i32 %i.ck, 8
  %i.cm = lshr i32 %1, %i.cl
  %i.cn = trunc i32 %i.cm to i8
  %i.co = sub i32 %i.v, %i.cj                     ; 2 uses
  %i.cp = add nsw i32 %i.co, -2
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cq
  store i8 %i.cn, ptr %i.cr, align 2, !tbaa !207
  %i.cs = add nsw i32 %i.co, -1
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ct
  store i8 %i.z, ptr %i.cu, align 1, !tbaa !207
  %i.cv = trunc i64 %indvars.iv.i to i32
  %i.cw = or disjoint i32 %i.cv, 2                ; 2 uses
  %i.cx = shl i32 %i.cw, 3                        ; 2 uses
  %i.cy = or disjoint i32 %i.cx, 8
  %i.cz = lshr i32 %1, %i.cy
  %i.da = trunc nuw i32 %i.cz to i8
  %i.db = sub i32 %i.v, %i.cw                     ; 2 uses
  %i.dc = add nsw i32 %i.db, -2
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dd
  store i8 %i.da, ptr %i.de, align 1, !tbaa !207
  %i.df = lshr i32 %1, %i.cx
  %i.dg = trunc i32 %i.df to i8
  %i.dh = add nsw i32 %i.db, -1
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.di
  store i8 %i.dg, ptr %i.dj, align 1, !tbaa !207
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN12_GLOBAL__N_120ARMTargetELFStreamer10emitCode32Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !225
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 6625
  store i8 0, ptr %i.b, align 1, !tbaa !141
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120ARMTargetELFStreamer13emitThumbFuncEPN4llvm8MCSymbolE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val3 = load ptr, ptr %i.a, align 8, !tbaa !225
  %i.b = getelementptr inbounds nuw i8, ptr %.val3, i64 304
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !390  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.f = load i8, ptr %i.e, align 8, !tbaa !446, !range !214, !noalias !528, !noundef !196
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !447, !noalias !528 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 132 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !448, !noalias !528 ; 4 uses
  %i.k = zext i32 %i.j to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.k, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i.i ; 2 uses
end_hunk_0
