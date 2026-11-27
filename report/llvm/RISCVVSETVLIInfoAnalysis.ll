Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVVSETVLIInfoAnalysis?download=true
inline.NumInlined: 438
inline.NumDeleted: 239
begin_hunk_0_@_ZN4llvm14RISCVInstrInfo20isScalarExtractInstrERKNS_12MachineInstrE
declare noundef zeroext i1 @_ZN4llvm14RISCVInstrInfo20isScalarExtractInstrERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4llvm14RISCVInstrInfo13isVSlideInstrERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4llvm14RISCVInstrInfo18isScalarSplatInstrERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4llvm5RISCV12isVectorCopyEPKNS_18TargetRegisterInfoERKNS_12MachineInstrE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4llvm14RISCVInstrInfo24isXSfmmVectorConfigInstrERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm5RISCV11VSETVLIInfo18hasCompatibleVTYPEERKNS0_14DemandedFieldsERKS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(10) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 19
  %i.b = load i8, ptr %i.a, align 1               ; 5 uses
  %i.c = lshr i8 %i.b, 4
  %i.d = and i8 %i.c, 7                           ; 2 uses
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext nneg i8 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.g = load i8, ptr %i.f, align 2, !tbaa !184
  %i.h = zext i8 %i.g to i32
  %i.i = and i8 %i.b, 8
  %i.j = icmp ne i8 %i.i, 0
  %i.k = tail call noundef i32 @_ZN4llvm10RISCVVType16encodeXSfmmVTypeEjjb(i32 noundef %i.h, i32 noundef %i.e, i1 noundef zeroext %i.j) #3
  br label %_ZNK4llvm5RISCV11VSETVLIInfo11encodeVTYPEEv.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.m = load i8, ptr %i.l, align 1, !tbaa !185
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.o = load i8, ptr %i.n, align 2, !tbaa !184
  %i.p = zext i8 %i.o to i32
  %i.q = trunc i8 %i.b to i1
  %i.r = and i8 %i.b, 2
  %i.s = icmp ne i8 %i.r, 0
  %i.t = and i8 %i.b, 8
  %i.u = icmp ne i8 %i.t, 0
  %i.v = tail call noundef i32 @_ZN4llvm10RISCVVType11encodeVTYPEENS0_5VLMULEjbbb(i8 noundef zeroext %i.m, i32 noundef %i.p, i1 noundef zeroext %i.q, i1 noundef zeroext %i.s, i1 noundef zeroext %i.u) #3
  br label %_ZNK4llvm5RISCV11VSETVLIInfo11encodeVTYPEEv.exit

_ZNK4llvm5RISCV11VSETVLIInfo11encodeVTYPEEv.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.k, %bb.b ], [ %i.v, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.x = load i8, ptr %i.w, align 1               ; 5 uses
  %i.y = lshr i8 %i.x, 4
  %i.z = and i8 %i.y, 7                           ; 2 uses
  %.not.i3 = icmp eq i8 %i.z, 0
  br i1 %.not.i3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm5RISCV11VSETVLIInfo11encodeVTYPEEv.exit
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !184
  %i.ad = zext i8 %i.ac to i32
  %i.ae = and i8 %i.x, 8
  %i.af = icmp ne i8 %i.ae, 0
  %i.ag = tail call noundef i32 @_ZN4llvm10RISCVVType16encodeXSfmmVTypeEjjb(i32 noundef %i.ad, i32 noundef %i.aa, i1 noundef zeroext %i.af) #3
  br label %_ZNK4llvm5RISCV11VSETVLIInfo11encodeVTYPEEv.exit5

bb.e:                                             ; preds = %_ZNK4llvm5RISCV11VSETVLIInfo11encodeVTYPEEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !185
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !184
  %i.al = zext i8 %i.ak to i32
  %i.am = trunc i8 %i.x to i1
  %i.an = and i8 %i.x, 2
  %i.ao = icmp ne i8 %i.an, 0
  %i.ap = and i8 %i.x, 8
  %i.aq = icmp ne i8 %i.ap, 0
  %i.ar = tail call noundef i32 @_ZN4llvm10RISCVVType11encodeVTYPEENS0_5VLMULEjbbb(i8 noundef zeroext %i.ai, i32 noundef %i.al, i1 noundef zeroext %i.am, i1 noundef zeroext %i.ao, i1 noundef zeroext %i.aq) #3
  br label %_ZNK4llvm5RISCV11VSETVLIInfo11encodeVTYPEEv.exit5

_ZNK4llvm5RISCV11VSETVLIInfo11encodeVTYPEEv.exit5: ; preds = %bb.d, %bb.e
  %.0.i4 = phi i32 [ %i.ag, %bb.d ], [ %i.ar, %bb.e ]
  %i.as = zext i32 %.0.i to i64
  %i.at = zext i32 %.0.i4 to i64
  %i.au = tail call noundef zeroext i1 @_ZN4llvm5RISCV19areCompatibleVTYPEsEmmRKNS0_14DemandedFieldsE(i64 noundef %i.as, i64 noundef %i.at, ptr noundef nonnull align 1 dereferenceable(10) %1)
  ret i1 %i.au
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm5RISCV24RISCVVSETVLIInfoAnalysis17forwardVSETVLIAVLERNS0_11VSETVLIInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(20) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::RISCV::VSETVLIInfo", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !186
  %i.c = icmp ne i8 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.e, null
  %or.cond = select i1 %i.c, i1 true, i1 %.not.i
  br i1 %or.cond, label %_ZNK4llvm5RISCV11VSETVLIInfo11getAVLDefMIEPKNS_13LiveIntervalsE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8 ; 2 uses
  %i.h = and i64 %.0.copyload.i.i.i.i.i.i.i, 6
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZNK4llvm5RISCV11VSETVLIInfo11getAVLDefMIEPKNS_13LiveIntervalsE.exit.thread, label %_ZNK4llvm5RISCV11VSETVLIInfo11getAVLDefMIEPKNS_13LiveIntervalsE.exit

_ZNK4llvm5RISCV11VSETVLIInfo11getAVLDefMIEPKNS_13LiveIntervalsE.exit: ; preds = %bb.b
  %i.j = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !213  ; 3 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %_ZNK4llvm5RISCV11VSETVLIInfo11getAVLDefMIEPKNS_13LiveIntervalsE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm5RISCV11VSETVLIInfo11getAVLDefMIEPKNS_13LiveIntervalsE.exit
  %i.n = tail call noundef zeroext i1 @_ZN4llvm14RISCVInstrInfo19isVectorConfigInstrERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %i.m) #3
  br i1 %i.n, label %bb.d, label %_ZNK4llvm5RISCV11VSETVLIInfo11getAVLDefMIEPKNS_13LiveIntervalsE.exit.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #3
  call void @_ZNK4llvm5RISCV24RISCVVSETVLIInfoAnalysis17getInfoForVSETVLIERKNS_12MachineInstrE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::RISCV::VSETVLIInfo") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 19
  %i.p = load i8, ptr %i.o, align 1
  %i.q = lshr i8 %i.p, 4
  %i.r = and i8 %i.q, 7                           ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.t = load i8, ptr %i.s, align 1
  %i.u = lshr i8 %i.t, 4
  %i.v = and i8 %i.u, 7
  %.not.i8 = icmp eq i8 %i.r, %i.v
  br i1 %.not.i8, label %bb.e, label %_ZNK4llvm5RISCV11VSETVLIInfo12hasSameVLMAXERKS1_.exit.thread

bb.e:                                             ; preds = %bb.d
  %.not5.i = icmp eq i8 %i.r, 0
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.x = load i8, ptr %i.w, align 2, !tbaa !184   ; 2 uses
  br i1 %.not5.i, label %.split, label %_ZNK4llvm5RISCV11VSETVLIInfo12hasSameVLMAXERKS1_.exit

.split:                                           ; preds = %bb.e
  %i.y = zext i8 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !185
  %i.ab = tail call noundef i32 @_ZN4llvm10RISCVVType15getSEWLMULRatioEjNS0_5VLMULE(i32 noundef %i.y, i8 noundef zeroext %i.aa) #3
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !184
  %i.ae = zext i8 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !185
  %i.ah = tail call noundef i32 @_ZN4llvm10RISCVVType15getSEWLMULRatioEjNS0_5VLMULE(i32 noundef %i.ae, i8 noundef zeroext %i.ag) #3
  %i.ai = icmp eq i32 %i.ab, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZNK4llvm5RISCV11VSETVLIInfo12hasSameVLMAXERKS1_.exit.thread

_ZNK4llvm5RISCV11VSETVLIInfo12hasSameVLMAXERKS1_.exit: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !184
  %i.al = icmp eq i8 %i.x, %i.ak
  br i1 %i.al, label %bb.f, label %_ZNK4llvm5RISCV11VSETVLIInfo12hasSameVLMAXERKS1_.exit.thread

bb.f:                                             ; preds = %.split, %_ZNK4llvm5RISCV11VSETVLIInfo12hasSameVLMAXERKS1_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = load i8, ptr %i.am, align 8, !tbaa !186 ; 3 uses
  switch i8 %i.an, label %bb.h [
    i8 4, label %_ZN4llvm5RISCV11VSETVLIInfo6setAVLERKS1_.exit
    i8 1, label %bb.g
    i8 3, label %_ZN4llvm5RISCV11VSETVLIInfo6setAVLERKS1_.exit
  ]

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %2, align 8, !tbaa !35
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ap, align 8, !tbaa !194
  store ptr %i.ao, ptr %1, align 8, !tbaa !35
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.aq, align 8, !tbaa !194
  br label %_ZN4llvm5RISCV11VSETVLIInfo6setAVLERKS1_.exit

bb.h:                                             ; preds = %bb.f
  %i.ar = load i32, ptr %2, align 8, !tbaa !35
  store i32 %i.ar, ptr %1, align 8, !tbaa !35
  br label %_ZN4llvm5RISCV11VSETVLIInfo6setAVLERKS1_.exit

_ZN4llvm5RISCV11VSETVLIInfo6setAVLERKS1_.exit:    ; preds = %bb.f, %bb.f, %bb.g, %bb.h
  %.sink.i = phi i8 [ 1, %bb.g ], [ 2, %bb.h ], [ %i.an, %bb.f ], [ %i.an, %bb.f ]
  store i8 %.sink.i, ptr %i.a, align 8, !tbaa !186
  br label %_ZNK4llvm5RISCV11VSETVLIInfo12hasSameVLMAXERKS1_.exit.thread

_ZNK4llvm5RISCV11VSETVLIInfo12hasSameVLMAXERKS1_.exit.thread: ; preds = %bb.d, %.split, %_ZNK4llvm5RISCV11VSETVLIInfo12hasSameVLMAXERKS1_.exit, %_ZN4llvm5RISCV11VSETVLIInfo6setAVLERKS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #3
  br label %_ZNK4llvm5RISCV11VSETVLIInfo11getAVLDefMIEPKNS_13LiveIntervalsE.exit.thread

_ZNK4llvm5RISCV11VSETVLIInfo11getAVLDefMIEPKNS_13LiveIntervalsE.exit.thread: ; preds = %bb.b, %_ZNK4llvm5RISCV11VSETVLIInfo12hasSameVLMAXERKS1_.exit.thread, %bb.c, %_ZNK4llvm5RISCV11VSETVLIInfo11getAVLDefMIEPKNS_13LiveIntervalsE.exit, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN4llvm14RISCVInstrInfo19isVectorConfigInstrERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm5RISCV24RISCVVSETVLIInfoAnalysis17getInfoForVSETVLIERKNS_12MachineInstrE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::RISCV::VSETVLIInfo") align 8 captures(none) initializes((0, 4), (16, 19)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #0 align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i16 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 19 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !33
  %i.g = icmp eq i32 %i.f, 10459
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !35
  %i.l = trunc i64 %i.k to i32
  store i32 %i.l, ptr %0, align 8, !tbaa !35
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_ZN4llvm14RISCVInstrInfo26isXSfmmVectorConfigTNInstrERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %2) #3
  %i.n = load i32, ptr %i.e, align 4, !tbaa !33   ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i32 %i.n, 1435
  br i1 %i.o, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !35   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !197
  %i.v = tail call fastcc noundef ptr @_ZN4llvm5RISCVL16getVNInfoFromRegENS_8RegisterERKNS_12MachineInstrEPKNS_13LiveIntervalsE(i32 %i.s, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %i.u)
  store ptr %i.v, ptr %0, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.s, ptr %i.w, align 8, !tbaa !194
  br label %bb.j

bb.f:                                             ; preds = %bb.c
  %i.x = icmp eq i32 %i.n, 10461
  br i1 %i.x, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !36   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = and i32 %i.ab, 268435456
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %0, align 8, !tbaa !35
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !35 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !197
  %i.ah = tail call fastcc noundef ptr @_ZN4llvm5RISCVL16getVNInfoFromRegENS_8RegisterERKNS_12MachineInstrEPKNS_13LiveIntervalsE(i32 %i.ae, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %i.ag)
  store ptr %i.ah, ptr %0, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ae, ptr %i.ai, align 8, !tbaa !194
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.d, %bb.e, %bb.h, %bb.i, %bb.b
  %.sink = phi i8 [ 1, %bb.e ], [ 2, %bb.b ], [ 2, %bb.h ], [ 1, %bb.i ], [ 3, %bb.d ], [ 3, %bb.f ]
  store i8 %.sink, ptr %i.a, align 8, !tbaa !186
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !36
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  %i.am = load i64, ptr %i.al, align 8, !tbaa !35 ; 3 uses
  %i.an = trunc i64 %i.am to i32                  ; 3 uses
  %i.ao = trunc i64 %i.am to i8                   ; 2 uses
  %i.ap = and i8 %i.ao, 7
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.ap, ptr %3, align 1, !tbaa !185
  %i.aq = lshr i32 %i.an, 3
  %i.ar = and i32 %i.aq, 7
  %i.as = shl nuw nsw i32 8, %i.ar
  %i.at = trunc i32 %i.as to i8
  store i8 %i.at, ptr %i.b, align 2, !tbaa !184
  %i.au = and i32 %i.an, 1536
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %_ZN4llvm5RISCV11VSETVLIInfo8setVTYPEEj.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = lshr i32 %i.an, 9
  %i.aw = and i32 %i.av, 3
  %i.ax = add nsw i32 %i.aw, -1
  %i.ay = shl nuw nsw i32 1, %i.ax
  %i.az = trunc i32 %i.ay to i8
  %i.ba = shl i8 %i.az, 4
  %i.bb = and i8 %i.ba, 112
  br label %_ZN4llvm5RISCV11VSETVLIInfo8setVTYPEEj.exit

_ZN4llvm5RISCV11VSETVLIInfo8setVTYPEEj.exit:      ; preds = %bb.j, %bb.k
  %i.bc = phi i8 [ %i.bb, %bb.k ], [ 0, %bb.j ]
  %i.bd = and i8 %i.d, -128
  %i.be = lshr i8 %i.ao, 6
  %i.bf = lshr i64 %i.am, 5
  %i.bg = trunc i64 %i.bf to i8
  %i.bh = and i8 %i.bg, 8
  %i.bi = or disjoint i8 %i.be, %i.bh
  %i.bj = or disjoint i8 %i.bi, %i.bc
  %i.bk = or disjoint i8 %i.bj, %i.bd
  store i8 %i.bk, ptr %i.c, align 1
  tail call void @_ZNK4llvm5RISCV24RISCVVSETVLIInfoAnalysis17forwardVSETVLIAVLERNS0_11VSETVLIInfoE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(20) %0)
  ret void
}

declare noundef zeroext i1 @_ZN4llvm14RISCVInstrInfo26isXSfmmVectorConfigTNInstrERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN4llvm5RISCVL16getVNInfoFromRegENS_8RegisterERKNS_12MachineInstrEPKNS_13LiveIntervalsE(i32 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %_ZNK4llvm9LiveRange15getVNInfoBeforeENS_9SlotIndexE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = and i32 %0, 2147483647                   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !227  ; 3 uses
  %i.d = icmp ugt i32 %i.c, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 3 uses
  br i1 %i.d, label %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i.i, label %bb.c

_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i.i: ; preds = %bb.b
  %i.f = zext nneg i32 %i.a to i64                ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !228  ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !230  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i.i, label %_ZNK4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i32 %i.a, 1
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = zext nneg i32 %i.c to i64                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !237
  %i.o = sub nuw nsw i64 %i.k, %i.l               ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 148
  %i.q = load i32, ptr %i.p, align 4, !tbaa !238
  %.not.i.i.i.i.i.not.i.i.i.i.i = icmp ult i32 %i.a, %i.q
  br i1 %.not.i.i.i.i.i.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i.i, label %bb.d, !prof !239

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(25) %i.e, ptr noundef nonnull %i.m, i64 noundef %i.k, i64 noundef 8) #3
  %.pre.i.i.i.i.i.i.i.i = load i32, ptr %i.b, align 8, !tbaa !227 ; 2 uses
  %.pre.i.i.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i.i.i.i to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.i.i.i.i.i = phi i64 [ %i.l, %bb.c ], [ %.pre.i.i.i.i.i.i.i, %bb.d ]
  %i.r = phi i32 [ %i.c, %bb.c ], [ %.pre.i.i.i.i.i.i.i.i, %bb.d ]
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !228  ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.pre-phi.i.i.i.i.i.i.i ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.o, 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.t, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  store ptr %i.n, ptr %.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !230
  %i.v = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !214

_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.w = trunc nuw i64 %i.o to i32
  %i.x = add i32 %i.r, %i.w
  store i32 %i.x, ptr %i.b, align 8, !tbaa !227
  %.pre.i.i = zext nneg i32 %i.a to i64
  br label %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i.i

_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i.i: ; preds = %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i.i, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i.i ], [ %i.f, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i.i ]
  %i.y = phi ptr [ %i.s, %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i.i ], [ %i.g, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i.i ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.pre-phi.i.i
  %i.aa = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4llvm13LiveIntervals14createIntervalENS_8RegisterE(i32 %0) #3 ; 3 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !230
  %i.ab = tail call noundef zeroext i1 @_ZN4llvm13LiveIntervals22computeVirtRegIntervalERNS_12LiveIntervalE(ptr noundef nonnull align 8 dereferenceable(424) %2, ptr noundef nonnull align 8 dereferenceable(120) %i.aa) #3 ; 0 uses
  br label %_ZNK4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit

_ZNK4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit: ; preds = %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i.i, %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i.i
  %.0.i.i = phi ptr [ %i.aa, %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i.i ], [ %i.i, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !283 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !28 ; 2 uses
  %i.ag = and i32 %i.af, 4
  %.not2.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not2.i.i, label %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit, %.lr.ph.i.i
  %.sroa.0.03.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %1, %_ZNK4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit ]
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.03.i.i, align 8
  %i.ah = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.ai = inttoptr i64 %i.ah to ptr               ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 44
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !28
  %i.al = and i32 %i.ak, 4
  %.not.i.i10 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i10, label %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i, label %.lr.ph.i.i, !llvm.loop !215

_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i: ; preds = %.lr.ph.i.i, %_ZNK4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit
  %.sroa.0.0.lcssa.i.i = phi ptr [ %1, %_ZNK4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit ], [ %i.ai, %.lr.ph.i.i ] ; 3 uses
  %i.am = and i32 %i.af, 8
  %.not3.i.i = icmp eq i32 %i.am, 0
  br i1 %.not3.i.i, label %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i, label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i, %.lr.ph.i11.i
  %.sroa.0.04.i.i = phi ptr [ %i.ao, %.lr.ph.i11.i ], [ %1, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !284 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 44
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !28
  %i.ar = and i32 %i.aq, 8
  %.not.i12.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i12.i, label %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i, label %.lr.ph.i11.i, !llvm.loop !216

_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i: ; preds = %.lr.ph.i11.i, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i
  %.sroa.0.0.lcssa.i13.i = phi ptr [ %1, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i ], [ %i.ao, %.lr.ph.i11.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i13.i, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !284 ; 3 uses
  %.not8.i.i = icmp eq ptr %.sroa.0.0.lcssa.i.i, %i.at
  br i1 %.not8.i.i, label %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i, label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i, %.critedge2.i.i
  %.sroa.03.09.i.i = phi ptr [ %i.ax, %.critedge2.i.i ], [ %.sroa.0.0.lcssa.i.i, %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i, i64 52
  %i.av = load i32, ptr %i.au, align 4, !tbaa !33
  switch i32 %i.av, label %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i [
    i32 25, label %.critedge2.i.i
    i32 18, label %.critedge2.i.i
    i32 17, label %.critedge2.i.i
    i32 16, label %.critedge2.i.i
    i32 15, label %.critedge2.i.i
    i32 14, label %.critedge2.i.i
  ]

.critedge2.i.i:                                   ; preds = %.lr.ph.i14.i, %.lr.ph.i14.i, %.lr.ph.i14.i, %.lr.ph.i14.i, %.lr.ph.i14.i, %.lr.ph.i14.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !284 ; 2 uses
  %.not.i15.i = icmp eq ptr %i.ax, %i.at
  br i1 %.not.i15.i, label %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i, label %.lr.ph.i14.i, !llvm.loop !217

_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i: ; preds = %.critedge2.i.i, %.lr.ph.i14.i, %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i
  %i.ay = phi ptr [ %.sroa.0.0.lcssa.i.i, %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i ], [ %i.at, %.critedge2.i.i ], [ %.sroa.03.09.i.i, %.lr.ph.i14.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !287, !noalias !288 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 112
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !289, !noalias !288 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ad, i64 124
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !290, !noalias !288 ; 3 uses
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %.loopexit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i
  %i.bg = add i32 %i.be, -1                       ; 2 uses
  %i.bh = ptrtoint ptr %i.ay to i64
  %i.bi = mul i64 %i.bh, -4658895280553007687     ; 2 uses
  %i.bj = lshr i64 %i.bi, 31
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = and i32 %i.bg, %i.bl                    ; 3 uses
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %i.bo = lshr i64 %i.bn, 5
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !194, !noalias !291
  %i.br = and i32 %i.bm, 31
  %i.bs = lshr i32 %i.bq, %i.br
  %i.bt = trunc i32 %i.bs to i1
  br i1 %i.bt, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !292

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %i.bu = phi i64 [ %i.ca, %bb.f ], [ %i.bn, %bb.e ] ; 2 uses
  %.017.i.i.i.i = phi i32 [ %i.bz, %bb.f ], [ %i.bm, %bb.e ]
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !293, !noalias !291
  %i.bx = icmp eq ptr %i.ay, %i.bw
  br i1 %i.bx, label %_ZNK4llvm11SlotIndexes19getInstructionIndexERKNS_12MachineInstrEb.exit, label %bb.f, !prof !239

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.by = add nuw i32 %.017.i.i.i.i, 1
  %i.bz = and i32 %i.by, %i.bg                    ; 3 uses
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = lshr i64 %i.ca, 5
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !194, !noalias !291
  %i.ce = and i32 %i.bz, 31
  %i.cf = lshr i32 %i.cd, %i.ce
  %i.cg = trunc i32 %i.cf to i1
  br i1 %i.cg, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !294

.loopexit.i.i.i:                                  ; preds = %bb.f, %bb.e, %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i
  %i.ch = zext i32 %i.be to i64
  br label %_ZNK4llvm11SlotIndexes19getInstructionIndexERKNS_12MachineInstrEb.exit

_ZNK4llvm11SlotIndexes19getInstructionIndexERKNS_12MachineInstrEb.exit: ; preds = %.lr.ph.i.i.i.i, %.loopexit.i.i.i
  %i.ci = phi i64 [ %i.ch, %.loopexit.i.i.i ], [ %i.bu, %.lr.ph.i.i.i.i ]
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.sroa.010.0.copyload.i = load i64, ptr %i.ck, align 8, !tbaa !35 ; 2 uses
  %i.cl = trunc i64 %.sroa.010.0.copyload.i to i32
  %i.cm = lshr i32 %i.cl, 1
  %i.cn = and i32 %i.cm, 3                        ; 2 uses
  %i.co = icmp eq i32 %i.cn, 0
  %i.cp = and i64 %.sroa.010.0.copyload.i, -8     ; 2 uses
  br i1 %i.co, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK4llvm11SlotIndexes19getInstructionIndexERKNS_12MachineInstrEb.exit
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !295
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = or i64 %i.cs, 6
  br label %_ZNK4llvm9SlotIndex11getPrevSlotEv.exit.i

bb.h:                                             ; preds = %_ZNK4llvm11SlotIndexes19getInstructionIndexERKNS_12MachineInstrEb.exit
  %i.cu = add nsw i32 %i.cn, -1
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = shl nuw nsw i64 %i.cv, 1
  %i.cx = or i64 %i.cw, %i.cp
  br label %_ZNK4llvm9SlotIndex11getPrevSlotEv.exit.i

_ZNK4llvm9SlotIndex11getPrevSlotEv.exit.i:        ; preds = %bb.h, %bb.g
  %.sroa.05.0.i.i = phi i64 [ %i.ct, %bb.g ], [ %i.cx, %bb.h ] ; 3 uses
  %i.cy = tail call noundef ptr @_ZN4llvm9LiveRange4findENS_9SlotIndexE(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i, i64 %.sroa.05.0.i.i) #3 ; 3 uses
  %i.cz = load ptr, ptr %.0.i.i, align 8, !tbaa !228
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.db = load i32, ptr %i.da, align 8, !tbaa !227
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %i.dc
  %.not.i.i11 = icmp eq ptr %i.cy, %i.dd
  br i1 %.not.i.i11, label %_ZNK4llvm9LiveRange15getVNInfoBeforeENS_9SlotIndexE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm9SlotIndex11getPrevSlotEv.exit.i
  %.0.copyload.i.i.i.i.i.i.i.i12 = load i64, ptr %i.cy, align 8 ; 2 uses
  %i.de = and i64 %.0.copyload.i.i.i.i.i.i.i.i12, -8
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !296
  %i.di = trunc i64 %.0.copyload.i.i.i.i.i.i.i.i12 to i32
  %i.dj = lshr i32 %i.di, 1
  %i.dk = and i32 %i.dj, 3
  %i.dl = or i32 %i.dk, %i.dh
  %i.dm = and i64 %.sroa.05.0.i.i, -8
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !296
  %i.dq = trunc i64 %.sroa.05.0.i.i to i32
  %i.dr = lshr i32 %i.dq, 1
  %i.ds = and i32 %i.dr, 3
  %i.dt = or i32 %i.dp, %i.ds
  %.not7.i.i = icmp ugt i32 %i.dl, %i.dt
  br i1 %.not7.i.i, label %_ZNK4llvm9LiveRange15getVNInfoBeforeENS_9SlotIndexE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !302
  br label %_ZNK4llvm9LiveRange15getVNInfoBeforeENS_9SlotIndexE.exit

_ZNK4llvm9LiveRange15getVNInfoBeforeENS_9SlotIndexE.exit: ; preds = %bb.j, %bb.i, %_ZNK4llvm9SlotIndex11getPrevSlotEv.exit.i, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.dv, %bb.j ], [ null, %bb.i ], [ null, %_ZNK4llvm9SlotIndex11getPrevSlotEv.exit.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm5RISCV24RISCVVSETVLIInfoAnalysis19computeInfoForInstrERKNS_12MachineInstrE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::RISCV::VSETVLIInfo") align 8 captures(none) initializes((0, 4), (16, 19)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #0 align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i16 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 19 ; 3 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, -128                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !34   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 2 uses
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  %i.m = and i32 %i.l, 16777471
  %or.cond.i.i = icmp eq i32 %i.m, 16777216
  %i.n = and i32 %i.l, 15728640
  %i.o = icmp ne i32 %i.n, 0
  %or.cond11.i.i = and i1 %or.cond.i.i, %i.o
  br i1 %or.cond11.i.i, label %bb.b, label %_ZN4llvm5RISCVL20hasUndefinedPassthruERKNS_12MachineInstrE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef i32 @_ZNK4llvm12MachineInstr18findTiedOperandIdxEj(ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef 0) #3
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !36   ; 5 uses
  %i.r = zext i32 %i.p to i64
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !35
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %_ZN4llvm5RISCVL20hasUndefinedPassthruERKNS_12MachineInstrE.exit.thread, label %_ZN4llvm5RISCVL20hasUndefinedPassthruERKNS_12MachineInstrE.exit

_ZN4llvm5RISCVL20hasUndefinedPassthruERKNS_12MachineInstrE.exit: ; preds = %bb.b
  %i.v = load i32, ptr %i.s, align 8
  %i.w = and i32 %i.v, 268435456
  %.not73 = icmp eq i32 %i.w, 0
  br i1 %.not73, label %bb.c, label %_ZN4llvm5RISCVL20hasUndefinedPassthruERKNS_12MachineInstrE.exit.thread

bb.c:                                             ; preds = %_ZN4llvm5RISCVL20hasUndefinedPassthruERKNS_12MachineInstrE.exit
  %i.x = and i64 %i.i, 16384
  %.not74 = icmp eq i64 %i.x, 0
  br i1 %.not74, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val65 = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.y = getelementptr i8, ptr %.val65, i64 4
  %.val65.val = load i16, ptr %i.y, align 4, !tbaa !303
  %i.z = zext i16 %.val65.val to i64
  %i.aa = add nuw nsw i64 %i.z, 4294967295
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !35
  %i.af = trunc i64 %i.ae to i8                   ; 2 uses
  %i.ag = and i8 %i.af, 1
  %i.ah = and i8 %i.af, 2
  %i.ai = icmp ne i8 %i.ah, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.054 = phi i1 [ %i.ai, %bb.d ], [ false, %bb.c ]
  %.0 = phi i8 [ %i.ag, %bb.d ], [ 0, %bb.c ]
  %i.aj = and i64 %i.i, 65536
  %.not75 = icmp eq i64 %i.aj, 0
  %i.ak = select i1 %.not75, i1 true, i1 %.054
  %i.al = select i1 %i.ak, i8 2, i8 0
  %i.am = or disjoint i8 %i.al, %.0
  br label %_ZN4llvm5RISCVL20hasUndefinedPassthruERKNS_12MachineInstrE.exit.thread

_ZN4llvm5RISCVL20hasUndefinedPassthruERKNS_12MachineInstrE.exit.thread: ; preds = %bb.b, %bb.a, %bb.e, %_ZN4llvm5RISCVL20hasUndefinedPassthruERKNS_12MachineInstrE.exit
  %.val63 = phi ptr [ %i.q, %_ZN4llvm5RISCVL20hasUndefinedPassthruERKNS_12MachineInstrE.exit ], [ %i.q, %bb.e ], [ %i.k, %bb.a ], [ %i.q, %bb.b ] ; 4 uses
  %.155 = phi i8 [ 3, %_ZN4llvm5RISCVL20hasUndefinedPassthruERKNS_12MachineInstrE.exit ], [ %i.am, %bb.e ], [ 3, %bb.a ], [ 3, %bb.b ] ; 2 uses
  %i.an = lshr i64 %i.i, 8
  %i.ao = trunc i64 %i.an to i8
  %i.ap = and i8 %i.ao, 7                         ; 3 uses
  %i.aq = and i64 %i.i, 402653184
  %i.ar = icmp eq i64 %i.aq, 268435456
  %i.as = select i1 %i.ar, i8 8, i8 0             ; 2 uses
  %i.at = or disjoint i8 %i.as, %i.e
  %.val62 = load ptr, ptr %i.f, align 8, !tbaa !29 ; 2 uses
  %i.au = getelementptr i8, ptr %.val62, i64 4
  %.val62.val = load i16, ptr %i.au, align 4
  %i.av = getelementptr i8, ptr %.val62, i64 24
  %.val62.val64 = load i64, ptr %i.av, align 8, !tbaa !34 ; 5 uses
  %i.aw = and i64 %.val62.val64, 536887296
  %or.cond.not.i.i = icmp eq i64 %i.aw, 0
  %.0.neg.i.i = select i1 %or.cond.not.i.i, i64 4294967295, i64 4294967294
  %i.ax = zext i16 %.val62.val to i64             ; 4 uses
  %i.ay = add nuw nsw i64 %.0.neg.i.i, %i.ax
  %i.az = and i64 %i.ay, 4294967295
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %.val63, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !35
  %i.bd = trunc i64 %i.bc to i32                  ; 3 uses
  %.not = icmp eq i32 %i.bd, 0                    ; 2 uses
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = select i1 %.not, i32 8, i32 %i.be       ; 2 uses
  %i.bg = and i64 %i.i, 536870912
  %.not76 = icmp eq i64 %i.bg, 0
  br i1 %.not76, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm5RISCVL20hasUndefinedPassthruERKNS_12MachineInstrE.exit.thread
  %i.bh = add nuw nsw i64 %i.ax, 4294967295
  %i.bi = and i64 %i.bh, 4294967295
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %.val63, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !35
  store i8 3, ptr %i.a, align 8, !tbaa !186
  %i.bm = and i64 %i.i, 8192
  %.not79 = icmp eq i64 %i.bm, 0
  br i1 %.not79, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = and i64 %.val62.val64, 2147483648
  %.not.i69 = icmp eq i64 %i.bn, 0
  %spec.select.i = select i1 %.not.i69, i64 4294967293, i64 4294967292
  %i.bo = add nuw nsw i64 %spec.select.i, %i.ax
  %i.bp = and i64 %i.bo, 4294967295
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %.val63, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !35 ; 2 uses
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !197
  %i.bw = tail call fastcc noundef ptr @_ZN4llvm5RISCVL16getVNInfoFromRegENS_8RegisterERKNS_12MachineInstrEPKNS_13LiveIntervalsE(i32 %i.bs, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %i.bv)
  %i.bx = load i32, ptr %i.br, align 4, !tbaa !35
  store ptr %i.bw, ptr %0, align 8, !tbaa !35
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bx, ptr %i.by, align 8, !tbaa !194
  store i8 1, ptr %i.a, align 8, !tbaa !186
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.ap, ptr %3, align 1, !tbaa !185
  %i.bz = trunc i32 %i.bf to i8
  store i8 %i.bz, ptr %i.b, align 2, !tbaa !184
  %i.ca = trunc i64 %i.bl to i8
  %i.cb = shl i8 %i.ca, 4
  %i.cc = and i8 %i.cb, 112
  %i.cd = or disjoint i8 %i.e, %i.cc
  %i.ce = or disjoint i8 %i.cd, %i.as
  %i.cf = or i8 %i.ce, %.155
  store i8 %i.cf, ptr %i.c, align 1
  br label %bb.z

bb.j:                                             ; preds = %_ZN4llvm5RISCVL20hasUndefinedPassthruERKNS_12MachineInstrE.exit.thread
  %i.cg = and i64 %i.i, 8192
  %.not77 = icmp eq i64 %i.cg, 0
  br i1 %.not77, label %bb.x, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ch = and i64 %.val62.val64, 536870912
  %.not.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ci = and i64 %.val62.val64, 2147483648
  %.not.i.i.i = icmp eq i64 %i.ci, 0
  %spec.select.i.i.i = select i1 %.not.i.i.i, i64 4294967293, i64 4294967292
  br label %_ZN4llvm5RISCVL7getVLOpERKNS_12MachineInstrE.exit

bb.m:                                             ; preds = %bb.k
  %i.cj = and i64 %.val62.val64, 16384
  %.not1.i.i = icmp eq i64 %i.cj, 0
  %spec.select.i.i = select i1 %.not1.i.i, i64 4294967294, i64 4294967293
  br label %_ZN4llvm5RISCVL7getVLOpERKNS_12MachineInstrE.exit

_ZN4llvm5RISCVL7getVLOpERKNS_12MachineInstrE.exit: ; preds = %bb.l, %bb.m
  %spec.select.sink.i.i = phi i64 [ %spec.select.i.i, %bb.m ], [ %spec.select.i.i.i, %bb.l ]
  %i.ck = add nuw nsw i64 %spec.select.sink.i.i, %i.ax
  %i.cl = and i64 %i.ck, 4294967295
  %i.cm = getelementptr inbounds nuw [32 x i8], ptr %.val63, i64 %i.cl ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 8            ; 2 uses
  %i.co = and i32 %i.cn, 255
  %i.cp = icmp eq i32 %i.co, 1
  br i1 %i.cp, label %bb.n, label %bb.u

bb.n:                                             ; preds = %_ZN4llvm5RISCVL7getVLOpERKNS_12MachineInstrE.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !35 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, -1
  br i1 %i.cs, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.ct = load ptr, ptr %1, align 8, !tbaa !304
  %i.cu = tail call noundef i32 @_ZNK4llvm14RISCVSubtarget25getMaxRVVVectorSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(519768) %i.ct) #3 ; 2 uses
  %i.cv = icmp eq i32 %i.cu, 0
  %i.cw = select i1 %i.cv, i32 65536, i32 %i.cu   ; 2 uses
  %i.cx = tail call i64 @_ZN4llvm10RISCVVType11decodeVLMULENS0_5VLMULE(i8 noundef zeroext range(i8 0, 8) %i.ap) #3 ; 2 uses
  %i.cy = and i64 %i.cx, 4294967296
  %.not.i70 = icmp eq i64 %i.cy, 0
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.cx to i32 ; 2 uses
  br i1 %.not.i70, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cz = udiv i32 %i.cw, %.sroa.0.0.extract.trunc.i
  br label %_ZN4llvm5RISCVL12computeVLMAXEjjNS_10RISCVVType5VLMULE.exit

bb.q:                                             ; preds = %bb.o
  %i.da = mul i32 %i.cw, %.sroa.0.0.extract.trunc.i
  br label %_ZN4llvm5RISCVL12computeVLMAXEjjNS_10RISCVVType5VLMULE.exit

_ZN4llvm5RISCVL12computeVLMAXEjjNS_10RISCVVType5VLMULE.exit: ; preds = %bb.p, %bb.q
  %.0.i71 = phi i32 [ %i.cz, %bb.p ], [ %i.da, %bb.q ]
  %i.db = select i1 %.not, i32 3, i32 %i.bd
  %i.dc = lshr i32 %.0.i71, %i.db                 ; 2 uses
  %i.dd = load ptr, ptr %1, align 8, !tbaa !304   ; 2 uses
  %i.de = tail call noundef i32 @_ZNK4llvm14RISCVSubtarget25getMinRVVVectorSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(519768) %i.dd) #3 ; 2 uses
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.r, label %_ZNK4llvm14RISCVSubtarget14getRealMinVLenEv.exit

bb.r:                                             ; preds = %_ZN4llvm5RISCVL12computeVLMAXEjjNS_10RISCVVType5VLMULE.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 680
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !305
  br label %_ZNK4llvm14RISCVSubtarget14getRealMinVLenEv.exit

_ZNK4llvm14RISCVSubtarget14getRealMinVLenEv.exit: ; preds = %_ZN4llvm5RISCVL12computeVLMAXEjjNS_10RISCVVType5VLMULE.exit, %bb.r
  %i.di = phi i32 [ %i.dh, %bb.r ], [ %i.de, %_ZN4llvm5RISCVL12computeVLMAXEjjNS_10RISCVVType5VLMULE.exit ]
  %i.dj = load ptr, ptr %1, align 8, !tbaa !304
  %i.dk = tail call noundef i32 @_ZNK4llvm14RISCVSubtarget25getMaxRVVVectorSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(519768) %i.dj) #3 ; 2 uses
  %i.dl = icmp eq i32 %i.dk, 0
  %i.dm = select i1 %i.dl, i32 65536, i32 %i.dk
  %i.dn = icmp eq i32 %i.di, %i.dm
  %i.do = icmp ult i32 %i.dc, 32
  %or.cond = and i1 %i.do, %i.dn
  br i1 %or.cond, label %bb.s, label %bb.y

bb.s:                                             ; preds = %_ZNK4llvm14RISCVSubtarget14getRealMinVLenEv.exit
  store i32 %i.dc, ptr %0, align 8, !tbaa !35
  br label %bb.y

bb.t:                                             ; preds = %bb.n
  %i.dp = trunc i64 %i.cr to i32
  store i32 %i.dp, ptr %0, align 8, !tbaa !35
  br label %bb.y

bb.u:                                             ; preds = %_ZN4llvm5RISCVL7getVLOpERKNS_12MachineInstrE.exit
  %i.dq = and i32 %i.cn, 268435456
  %.not78 = icmp eq i32 %i.dq, 0
  br i1 %.not78, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 1, ptr %0, align 8, !tbaa !35
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cm, i64 4 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !35
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !197
  %i.dv = tail call fastcc noundef ptr @_ZN4llvm5RISCVL16getVNInfoFromRegENS_8RegisterERKNS_12MachineInstrEPKNS_13LiveIntervalsE(i32 %i.ds, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %i.du)
  %i.dw = load i32, ptr %i.dr, align 4, !tbaa !35
  store ptr %i.dv, ptr %0, align 8, !tbaa !35
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.dw, ptr %i.dx, align 8, !tbaa !194
  br label %bb.y

bb.x:                                             ; preds = %bb.j
  store i32 1, ptr %0, align 8, !tbaa !35
  br label %bb.y

bb.y:                                             ; preds = %_ZNK4llvm14RISCVSubtarget14getRealMinVLenEv.exit, %bb.w, %bb.v, %bb.s, %bb.t, %bb.x
  %.sink = phi i8 [ 1, %bb.w ], [ 2, %bb.v ], [ 2, %bb.s ], [ 2, %bb.x ], [ 2, %bb.t ], [ 3, %_ZNK4llvm14RISCVSubtarget14getRealMinVLenEv.exit ]
  store i8 %.sink, ptr %i.a, align 8, !tbaa !186
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.ap, ptr %4, align 1, !tbaa !185
  %i.dy = trunc i32 %i.bf to i8
  store i8 %i.dy, ptr %i.b, align 2, !tbaa !184
  %i.dz = or disjoint i8 %i.at, %.155
  store i8 %i.dz, ptr %i.c, align 1
  tail call void @_ZNK4llvm5RISCV24RISCVVSETVLIInfoAnalysis17forwardVSETVLIAVLERNS0_11VSETVLIInfoE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(20) %0)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.i
  ret void
}

declare i64 @_ZN4llvm10RISCVVType11decodeVLMULENS0_5VLMULE(i8 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80), i64 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80), i32, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef i32 @_ZN4llvm5RISCV14getRVVMCOpcodeEj(i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK4llvm12MachineInstr18findTiedOperandIdxEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN4llvm10RISCVVType16encodeXSfmmVTypeEjjb(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef i32 @_ZN4llvm10RISCVVType11encodeVTYPEENS0_5VLMULEjbbb(i8 noundef zeroext, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4llvm13LiveIntervals22computeVirtRegIntervalERNS_12LiveIntervalE(ptr noundef nonnull align 8 dereferenceable(424), ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm13LiveIntervals14createIntervalENS_8RegisterE(i32) local_unnamed_addr #2

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm9LiveRange4findENS_9SlotIndexE(ptr noundef nonnull align 8 dereferenceable(104), i64) local_unnamed_addr #2

declare noundef i32 @_ZNK4llvm14RISCVSubtarget25getMaxRVVVectorSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(519768)) local_unnamed_addr #2

declare noundef i32 @_ZNK4llvm14RISCVSubtarget25getMinRVVVectorSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(519768)) local_unnamed_addr #2

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"bool", !4, i64 0}
!9 = !{i8 0, i8 2}
!10 = !{}
!11 = !{!"_ZTSN4llvm6detail13PunnedPointerIPNS_15ilist_node_baseILb1EvEEEE", !4, i64 0}
!12 = !{!"_ZTSN4llvm14PointerIntPairIPNS_15ilist_node_baseILb1EvEELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEE", !11, i64 0}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb1EvEE", !13, i64 0}
!15 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb1EvEELb1EEE", !12, i64 0, !14, i64 8}
!16 = !{!"_ZTSN4llvm15ilist_node_baseILb1EvEE", !15, i64 0}
!17 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEEEE", !16, i64 0}
!18 = !{!"_ZTSN4llvm10ilist_nodeINS_12MachineInstrEJNS_23ilist_sentinel_trackingILb1EEEEEE", !17, i64 0}
!19 = !{!"_ZTSN4llvm22ilist_node_with_parentINS_12MachineInstrENS_17MachineBasicBlockEJNS_23ilist_sentinel_trackingILb1EEEEEE", !18, i64 0}
!20 = !{!"p1 _ZTSN4llvm11MCInstrDescE", !13, i64 0}
!21 = !{!"p1 _ZTSN4llvm17MachineBasicBlockE", !13, i64 0}
!22 = !{!"p1 _ZTSN4llvm14MachineOperandE", !13, i64 0}
!23 = !{!"_ZTSN4llvm13ArrayRecyclerINS_14MachineOperandELm8EE8CapacityE", !4, i64 0}
!24 = !{!"_ZTSN4llvm14PointerSumTypeINS_12MachineInstr20ExtraInfoInlineKindsEJNS_20PointerSumTypeMemberILm0EPNS_17MachineMemOperandENS_21PointerLikeTypeTraitsIS5_EEEENS3_ILm1EPNS_8MCSymbolENS6_ISA_EEEENS3_ILm2ESA_SB_EENS3_ILm3EPNS1_9ExtraInfoENS6_ISF_EEEEEEE", !4, i64 0}
!25 = !{!"p1 _ZTSN4llvm10DILocationE", !13, i64 0}
!26 = !{!"_ZTSN4llvm8DebugLocE", !25, i64 0}
!27 = !{!"_ZTSN4llvm12MachineInstrE", !19, i64 0, !20, i64 16, !21, i64 24, !22, i64 32, !5, i64 40, !23, i64 43, !5, i64 44, !4, i64 48, !5, i64 52, !5, i64 56, !24, i64 64, !26, i64 72}
!28 = !{!27, !5, i64 44}
!29 = !{!27, !20, i64 16}
!30 = !{!"short", !4, i64 0}
!31 = !{!"long", !4, i64 0}
!32 = !{!"_ZTSN4llvm11MCInstrDescE", !5, i64 0, !30, i64 4, !4, i64 6, !4, i64 7, !30, i64 8, !4, i64 10, !4, i64 11, !30, i64 12, !30, i64 14, !31, i64 16, !31, i64 24}
!33 = !{!27, !5, i64 52}
!34 = !{!32, !31, i64 24}
!35 = !{!4, !4, i64 0}
!36 = !{!27, !22, i64 32}
!37 = !{!"p1 omnipotent char", !13, i64 0}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !37, i64 0}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !38, i64 0, !31, i64 8, !4, i64 16}
!40 = !{!"_ZTSN4llvm6Triple8ArchTypeE", !4, i64 0}
!41 = !{!"_ZTSN4llvm6Triple11SubArchTypeE", !4, i64 0}
!42 = !{!"_ZTSN4llvm6Triple10VendorTypeE", !4, i64 0}
!43 = !{!"_ZTSN4llvm6Triple6OSTypeE", !4, i64 0}
!44 = !{!"_ZTSN4llvm6Triple15EnvironmentTypeE", !4, i64 0}
!45 = !{!"_ZTSN4llvm6Triple16ObjectFormatTypeE", !4, i64 0}
!46 = !{!"_ZTSN4llvm6TripleE", !39, i64 0, !40, i64 32, !41, i64 36, !42, i64 40, !43, i64 44, !44, i64 48, !45, i64 52}
!47 = !{!"_ZTSN4llvm9StringRefE", !37, i64 0, !31, i64 8}
!48 = !{!"_ZTSN4llvm11StringTableE", !47, i64 0}
!49 = !{!"p1 _ZTSN4llvm18SubtargetFeatureKVE", !13, i64 0}
!50 = !{!"_ZTSN4llvm8ArrayRefINS_18SubtargetFeatureKVEEE", !49, i64 0, !31, i64 8}
!51 = !{!"p1 _ZTSN4llvm18SubtargetSubTypeKVE", !13, i64 0}
!52 = !{!"_ZTSN4llvm8ArrayRefINS_18SubtargetSubTypeKVEEE", !51, i64 0, !31, i64 8}
!53 = !{!"p1 _ZTSN4llvm12MCSchedModelE", !13, i64 0}
!54 = !{!"p1 _ZTSN4llvm19MCWriteProcResEntryE", !13, i64 0}
!55 = !{!"p1 _ZTSN4llvm19MCWriteLatencyEntryE", !13, i64 0}
!56 = !{!"p1 _ZTSN4llvm18MCReadAdvanceEntryE", !13, i64 0}
!57 = !{!"p1 _ZTSN4llvm10InstrStageE", !13, i64 0}
!58 = !{!"p1 int", !13, i64 0}
!59 = !{!"_ZTSSt5arrayImLm6EE", !4, i64 0}
!60 = !{!"_ZTSN4llvm13FeatureBitsetE", !59, i64 0}
!61 = !{!"_ZTSN4llvm15MCSubtargetInfoE", !46, i64 8, !39, i64 64, !39, i64 96, !48, i64 128, !50, i64 144, !52, i64 160, !53, i64 176, !54, i64 184, !55, i64 192, !56, i64 200, !53, i64 208, !57, i64 216, !58, i64 224, !58, i64 232, !60, i64 240, !39, i64 288}
!62 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIjbEE", !13, i64 0}
!63 = !{!"_ZTSN4llvm8DenseMapIjbNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjbEEEE", !62, i64 0, !58, i64 8, !5, i64 16, !5, i64 20}
!64 = !{!"_ZTSN4llvm19TargetSubtargetInfoE", !61, i64 0, !63, i64 320}
!65 = !{!"_ZTSN4llvm21RISCVGenSubtargetInfoE", !64, i64 0}
!66 = !{!"_ZTSN4llvm14RISCVSubtarget19RISCVProcFamilyEnumE", !4, i64 0}
!67 = !{!"_ZTSN4llvm14RISCVSubtarget26RISCVVRGatherCostModelEnumE", !4, i64 0}
!68 = !{!"_ZTSN4llvm8RISCVABI3ABIE", !4, i64 0}
!69 = !{!"_ZTSSt12_Base_bitsetILm11EE", !4, i64 0}
!70 = !{!"_ZTSSt6bitsetILm645EE", !69, i64 0}
!71 = !{!"p1 _ZTSN4llvm18RISCVTuneInfoTable13RISCVTuneInfoE", !13, i64 0}
!72 = !{!"_ZTSN4llvm19TargetFrameLowering14StackDirectionE", !4, i64 0}
!73 = !{!"_ZTSN4llvm5AlignE", !4, i64 0}
!74 = !{!"_ZTSN4llvm19TargetFrameLoweringE", !72, i64 8, !73, i64 12, !73, i64 13, !5, i64 16, !8, i64 20}
!75 = !{!"p1 _ZTSN4llvm14RISCVSubtargetE", !13, i64 0}
!76 = !{!"_ZTSN4llvm18RISCVFrameLoweringE", !74, i64 0, !75, i64 24}
!77 = !{!"p1 short", !13, i64 0}
!78 = !{!"_ZTSN4llvm11MCInstrInfoE", !20, i64 0, !58, i64 8, !37, i64 16, !37, i64 24, !13, i64 32, !5, i64 40, !77, i64 48, !30, i64 56}
!79 = !{!"p1 _ZTSN4llvm18TargetRegisterInfoE", !13, i64 0}
!80 = !{!"p1 _ZTSN4llvm12MIRFormatterE", !13, i64 0}
!81 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm12MIRFormatterELb0EE", !80, i64 0}
!82 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm12MIRFormatterESt14default_deleteIS1_EEE", !81, i64 0}
!83 = !{!"_ZTSSt5tupleIJPN4llvm12MIRFormatterESt14default_deleteIS1_EEE", !82, i64 0}
!84 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm12MIRFormatterESt14default_deleteIS1_EE", !83, i64 0}
!85 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm12MIRFormatterESt14default_deleteIS1_ELb1ELb1EE", !84, i64 0}
!86 = !{!"_ZTSSt10unique_ptrIN4llvm12MIRFormatterESt14default_deleteIS1_EE", !85, i64 0}
!87 = !{!"_ZTSN4llvm15TargetInstrInfoE", !78, i64 8, !79, i64 72, !77, i64 80, !86, i64 88, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108}
!88 = !{!"_ZTSN4llvm17RISCVGenInstrInfoE", !87, i64 0}
!89 = !{!"p1 _ZTSN4llvm14MCRegisterDescE", !13, i64 0}
!90 = !{!"_ZTSN4llvm10MCRegisterE", !5, i64 0}
!91 = !{!"p1 _ZTSN4llvm15MCRegisterClassE", !13, i64 0}
!92 = !{!"p1 _ZTSN4llvm11LaneBitmaskE", !13, i64 0}
!93 = !{!"p1 _ZTSN4llvm14MCRegisterInfo16DwarfLLVMRegPairE", !13, i64 0}
!94 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_10MCRegisterEiEE", !13, i64 0}
!95 = !{!"_ZTSN4llvm8DenseMapINS_10MCRegisterEiNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_iEEEE", !94, i64 0, !58, i64 8, !5, i64 16, !5, i64 20}
!96 = !{!"p1 _ZTSSt6vectorItSaItEE", !13, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseISt6vectorItSaItEESaIS2_EE17_Vector_impl_dataE", !96, i64 0, !96, i64 8, !96, i64 16}
!98 = !{!"_ZTSNSt12_Vector_baseISt6vectorItSaItEESaIS2_EE12_Vector_implE", !97, i64 0}
!99 = !{!"_ZTSSt12_Vector_baseISt6vectorItSaItEESaIS2_EE", !98, i64 0}
!100 = !{!"_ZTSSt6vectorIS_ItSaItEESaIS1_EE", !99, i64 0}
!101 = !{!"_ZTSN4llvm14MCRegisterInfoE", !89, i64 8, !5, i64 16, !90, i64 20, !90, i64 24, !91, i64 32, !5, i64 40, !5, i64 44, !77, i64 48, !77, i64 56, !92, i64 64, !37, i64 72, !37, i64 80, !77, i64 88, !5, i64 96, !77, i64 104, !58, i64 112, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !93, i64 136, !93, i64 144, !93, i64 152, !93, i64 160, !95, i64 168, !95, i64 192, !100, i64 216}
!102 = !{!"p1 _ZTSN4llvm22TargetRegisterInfoDescE", !13, i64 0}
!103 = !{!"_ZTSN4llvm8ArrayRefIjEE", !58, i64 0, !31, i64 8}
!104 = !{!"p1 _ZTSN4llvm18TargetRegisterInfo17SubRegCoveredBitsE", !13, i64 0}
!105 = !{!"_ZTSN4llvm11LaneBitmaskE", !31, i64 0}
!106 = !{!"p1 _ZTSN4llvm18TargetRegisterInfo12RegClassInfoE", !13, i64 0}
!107 = !{!"_ZTSN4llvm18TargetRegisterInfoE", !101, i64 0, !102, i64 240, !37, i64 248, !103, i64 256, !104, i64 272, !92, i64 280, !105, i64 288, !106, i64 296, !13, i64 304, !5, i64 312}
!108 = !{!"_ZTSN4llvm20RISCVGenRegisterInfoE", !107, i64 0}
!109 = !{!"_ZTSN4llvm17RISCVRegisterInfoE", !108, i64 0}
!110 = !{!"_ZTSN4llvm14RISCVInstrInfoE", !88, i64 0, !109, i64 112, !75, i64 432}
!111 = !{!"p1 _ZTSN4llvm13TargetMachineE", !13, i64 0}
!112 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIjjEE", !13, i64 0}
!113 = !{!"_ZTSN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEE", !112, i64 0, !58, i64 8, !5, i64 16, !5, i64 20}
!114 = !{!"_ZTSN4llvm18TargetLoweringBase14BooleanContentE", !4, i64 0}
!115 = !{!"_ZTSN4llvm5Sched10PreferenceE", !4, i64 0}
!116 = !{!"_ZTSN4llvm8RegisterE", !5, i64 0}
!117 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairISt5tupleIJjNS_3MVT15SimpleValueTypeES4_EENS_18TargetLoweringBase14LegalizeActionEEE", !13, i64 0}
!118 = !{!"_ZTSN4llvm8DenseMapISt5tupleIJjNS_3MVT15SimpleValueTypeES3_EENS_18TargetLoweringBase14LegalizeActionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEE", !117, i64 0, !58, i64 8, !5, i64 16, !5, i64 20}
!119 = !{!"_ZTSN4llvm18TargetLoweringBase19ValueTypeActionImplE", !4, i64 0}
!120 = !{!"_ZTSSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEE"}
!121 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEE", !120, i64 0}
!122 = !{!"_ZTSSt14_Rb_tree_color", !4, i64 0}
!123 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!124 = !{!"_ZTSSt18_Rb_tree_node_base", !122, i64 0, !123, i64 8, !123, i64 16, !123, i64 24}
!125 = !{!"_ZTSSt15_Rb_tree_header", !124, i64 0, !31, i64 32}
!126 = !{!"_ZTSNSt8_Rb_treeISt4pairIjN4llvm3MVT15SimpleValueTypeEES0_IKS4_S3_ESt10_Select1stIS6_ESt4lessIS4_ESaIS6_EE13_Rb_tree_implISA_Lb1EEE", !121, i64 0, !125, i64 8}
!127 = !{!"_ZTSSt8_Rb_treeISt4pairIjN4llvm3MVT15SimpleValueTypeEES0_IKS4_S3_ESt10_Select1stIS6_ESt4lessIS4_ESaIS6_EE", !126, i64 0}
!128 = !{!"_ZTSSt3mapISt4pairIjN4llvm3MVT15SimpleValueTypeEES3_St4lessIS4_ESaIS0_IKS4_S3_EEE", !127, i64 0}
!129 = !{!"_ZTSSt5arrayImLm47EE", !4, i64 0}
!130 = !{!"_ZTSN4llvm6BitsetILj3008EEE", !129, i64 0}
!131 = !{!"_ZTSN4llvm5RTLIB17LibcallImplBitsetE", !130, i64 0}
!132 = !{!"_ZTSN4llvm5RTLIB19RuntimeLibcallsInfoE", !131, i64 0, !4, i64 376}
!133 = !{!"p1 _ZTSN4llvm5RTLIB19RuntimeLibcallsInfoE", !13, i64 0}
!134 = !{!"_ZTSN4llvm19LibcallLoweringInfoE", !133, i64 0, !4, i64 8}
!135 = !{!"_ZTSN4llvm18TargetLoweringBaseE", !111, i64 8, !8, i64 16, !113, i64 24, !8, i64 48, !114, i64 52, !114, i64 56, !114, i64 60, !115, i64 64, !73, i64 65, !73, i64 66, !73, i64 67, !73, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !8, i64 100, !116, i64 104, !4, i64 112, !4, i64 2224, !4, i64 2752, !4, i64 3280, !4, i64 5392, !4, i64 5656, !4, i64 6184, !4, i64 147952, !4, i64 287344, !4, i64 426736, !4, i64 496432, !4, i64 499072, !118, i64 502240, !119, i64 502264, !4, i64 502528, !128, i64 502600, !132, i64 502648, !134, i64 515056, !5, i64 518392, !5, i64 518396, !5, i64 518400, !5, i64 518404, !5, i64 518408, !5, i64 518412, !5, i64 518416, !5, i64 518420, !5, i64 518424, !5, i64 518428, !8, i64 518432, !8, i64 518433, !8, i64 518434}
!136 = !{!"_ZTSN4llvm14TargetLoweringE", !135, i64 0}
!137 = !{!"_ZTSN4llvm19RISCVTargetLoweringE", !136, i64 0, !75, i64 518440}
!138 = !{!"p1 _ZTSN4llvm22SelectionDAGTargetInfoE", !13, i64 0}
!139 = !{!"_ZTSSt10_Head_baseILm0EPKN4llvm22SelectionDAGTargetInfoELb0EE", !138, i64 0}
!140 = !{!"_ZTSSt11_Tuple_implILm0EJPKN4llvm22SelectionDAGTargetInfoESt14default_deleteIS2_EEE", !139, i64 0}
!141 = !{!"_ZTSSt5tupleIJPKN4llvm22SelectionDAGTargetInfoESt14default_deleteIS2_EEE", !140, i64 0}
!142 = !{!"_ZTSSt15__uniq_ptr_implIKN4llvm22SelectionDAGTargetInfoESt14default_deleteIS2_EE", !141, i64 0}
!143 = !{!"_ZTSSt15__uniq_ptr_dataIKN4llvm22SelectionDAGTargetInfoESt14default_deleteIS2_ELb1ELb1EE", !142, i64 0}
!144 = !{!"_ZTSSt10unique_ptrIKN4llvm22SelectionDAGTargetInfoESt14default_deleteIS2_EE", !143, i64 0}
!145 = !{!"p1 _ZTSN4llvm12CallLoweringE", !13, i64 0}
!146 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm12CallLoweringELb0EE", !145, i64 0}
!147 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm12CallLoweringESt14default_deleteIS1_EEE", !146, i64 0}
!148 = !{!"_ZTSSt5tupleIJPN4llvm12CallLoweringESt14default_deleteIS1_EEE", !147, i64 0}
!149 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm12CallLoweringESt14default_deleteIS1_EE", !148, i64 0}
!150 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm12CallLoweringESt14default_deleteIS1_ELb1ELb1EE", !149, i64 0}
!151 = !{!"_ZTSSt10unique_ptrIN4llvm12CallLoweringESt14default_deleteIS1_EE", !150, i64 0}
!152 = !{!"p1 _ZTSN4llvm19InstructionSelectorE", !13, i64 0}
!153 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm19InstructionSelectorELb0EE", !152, i64 0}
end_hunk_0
