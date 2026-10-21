Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVInstrInfo?download=true
inline.NumInlined: 8782
inline.NumDeleted: 2262
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK4llvm14RISCVInstrInfo28hasReassociableVectorSiblingERKNS_12MachineInstrERb:bb.a

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !75
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !76
  %i.ad = tail call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo15hasOneNonDBGUseENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.f, i32 %i.ac) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %.critedge
  %i.ae = phi i1 [ false, %bb.e ], [ false, %bb.d ], [ false, %.critedge ], [ %i.ad, %bb.f ]
  ret i1 %i.ae
}

declare noundef ptr @_ZNK4llvm19MachineRegisterInfo16getUniqueVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520), i32) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo15hasOneNonDBGUseENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520), i32) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm14RISCVInstrInfo23hasReassociableOperandsERKNS_12MachineInstrEPKNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm14RISCVInstrInfo33isVectorAssociativeAndCommutativeERKNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext false)
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK4llvm14RISCVInstrInfo33isVectorAssociativeAndCommutativeERKNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext true)
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo23hasReassociableOperandsERKNS_12MachineInstrEPKNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2) #27
  br label %.critedge2.thread

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !275
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !432  ; 2 uses
  %i.l = load i32, ptr %i.f, align 8
  %i.m = and i32 %i.l, 255
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.p = load i32, ptr %i.o, align 4, !tbaa !76   ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.r = tail call noundef ptr @_ZNK4llvm19MachineRegisterInfo16getUniqueVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.k, i32 %i.p) #27
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.f, %bb.e
  %.028 = phi ptr [ %i.r, %bb.f ], [ null, %bb.e ], [ null, %bb.d ] ; 2 uses
  %i.s = load i32, ptr %i.g, align 8
  %i.t = and i32 %i.s, 255
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.g, label %.critedge2.thread

bb.g:                                             ; preds = %.critedge
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 100
  %i.w = load i32, ptr %i.v, align 4, !tbaa !76   ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %.critedge2, label %.critedge2.thread

.critedge2:                                       ; preds = %bb.g
  %i.y = tail call noundef ptr @_ZNK4llvm19MachineRegisterInfo16getUniqueVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.k, i32 %i.w) #27 ; 2 uses
  %i.z = icmp ne ptr %.028, null
  %i.aa = icmp ne ptr %i.y, null
  %or.cond = and i1 %i.z, %i.aa
  br i1 %or.cond, label %bb.h, label %.critedge2.thread

bb.h:                                             ; preds = %.critedge2
  %i.ab = getelementptr inbounds nuw i8, ptr %.028, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !431
  %i.ad = icmp eq ptr %i.ac, %2
  br i1 %i.ad, label %.critedge2.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !431
  %i.ag = icmp eq ptr %i.af, %2
  br label %.critedge2.thread

.critedge2.thread:                                ; preds = %.critedge, %bb.g, %.critedge2, %bb.i, %bb.h, %bb.c
  %.0 = phi i1 [ %i.c, %bb.c ], [ false, %.critedge2 ], [ true, %bb.h ], [ %i.ag, %bb.i ], [ false, %bb.g ], [ false, %.critedge ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo23hasReassociableOperandsERKNS_12MachineInstrEPKNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm14RISCVInstrInfo28getReassociateOperandIndicesERKNS_12MachineInstrEjRSt5arrayIjLm5EE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(20) %3) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZNK4llvm15TargetInstrInfo28getReassociateOperandIndicesERKNS_12MachineInstrEjRSt5arrayIjLm5EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(20) %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !74   ; 3 uses
  %i.c = add i32 %i.b, -811
  %.not.i.i = icmp ult i32 %i.c, 12878
  br i1 %.not.i.i, label %_ZSt9__advanceIPKN4llvm18RISCVVPseudosTable10PseudoInfoElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZN4llvm5RISCV14getRVVMCOpcodeEj.exit.thread

_ZSt9__advanceIPKN4llvm18RISCVVPseudosTable10PseudoInfoElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %bb.a, %_ZSt9__advanceIPKN4llvm18RISCVVPseudosTable10PseudoInfoElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %.05.i.i.i.i = phi i64 [ %.1.i.i.i.i, %_ZSt9__advanceIPKN4llvm18RISCVVPseudosTable10PseudoInfoElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ 12736, %bb.a ] ; 2 uses
  %.0114.i.i.i.i = phi ptr [ %.112.i.i.i.i, %_ZSt9__advanceIPKN4llvm18RISCVVPseudosTable10PseudoInfoElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ @_ZN4llvm18RISCVVPseudosTableL18RISCVVPseudosTableE, %bb.a ] ; 2 uses
  %i.d = lshr i64 %.05.i.i.i.i, 1                 ; 3 uses
  %i.e = getelementptr inbounds nuw [6 x i8], ptr %.0114.i.i.i.i, i64 %i.d ; 2 uses
  %.val.i.i.i.i = load i16, ptr %i.e, align 2, !tbaa !55
  %i.f = zext i16 %.val.i.i.i.i to i32
  %i.g = icmp samesign ugt i32 %i.b, %i.f         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.i = xor i64 %i.d, -1
  %i.j = add nsw i64 %.05.i.i.i.i, %i.i
  %.112.i.i.i.i = select i1 %i.g, ptr %i.h, ptr %.0114.i.i.i.i ; 4 uses
  %.1.i.i.i.i = select i1 %i.g, i64 %i.j, i64 %i.d ; 2 uses
  %i.k = icmp sgt i64 %.1.i.i.i.i, 0
  br i1 %i.k, label %_ZSt9__advanceIPKN4llvm18RISCVVPseudosTable10PseudoInfoElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZSt11lower_boundIPKN4llvm18RISCVVPseudosTable10PseudoInfoEZNS1_13getPseudoInfoEjE7KeyTypeZNS1_13getPseudoInfoEjE4CompET_S7_S7_RKT0_T1_.exit.i.i, !llvm.loop !1

_ZSt11lower_boundIPKN4llvm18RISCVVPseudosTable10PseudoInfoEZNS1_13getPseudoInfoEjE7KeyTypeZNS1_13getPseudoInfoEjE4CompET_S7_S7_RKT0_T1_.exit.i.i: ; preds = %_ZSt9__advanceIPKN4llvm18RISCVVPseudosTable10PseudoInfoElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %i.l = icmp eq ptr %.112.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN4llvm18RISCVVPseudosTableL18RISCVVPseudosTableE, i64 76416)
  br i1 %i.l, label %_ZN4llvm5RISCV14getRVVMCOpcodeEj.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZSt11lower_boundIPKN4llvm18RISCVVPseudosTable10PseudoInfoEZNS1_13getPseudoInfoEjE7KeyTypeZNS1_13getPseudoInfoEjE4CompET_S7_S7_RKT0_T1_.exit.i.i
  %i.m = load i16, ptr %.112.i.i.i.i, align 2, !tbaa !55
  %i.n = zext i16 %i.m to i32
  %.not5.i.not.i = icmp eq i32 %i.b, %i.n
  br i1 %.not5.i.not.i, label %_ZN4llvm5RISCV14getRVVMCOpcodeEj.exit, label %_ZN4llvm5RISCV14getRVVMCOpcodeEj.exit.thread

_ZN4llvm5RISCV14getRVVMCOpcodeEj.exit:            ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i, i64 2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !213
  %.not = icmp eq i16 %i.p, 0
  br i1 %.not, label %_ZN4llvm5RISCV14getRVVMCOpcodeEj.exit.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN4llvm5RISCV14getRVVMCOpcodeEj.exit
  %i.q = load <4 x i32>, ptr %3, align 4, !tbaa !57
  %i.r = add <4 x i32> %i.q, splat (i32 1)
  store <4 x i32> %i.r, ptr %3, align 4, !tbaa !57
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !57
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !57
  br label %_ZN4llvm5RISCV14getRVVMCOpcodeEj.exit.thread

_ZN4llvm5RISCV14getRVVMCOpcodeEj.exit.thread:     ; preds = %.preheader.preheader, %_ZSt11lower_boundIPKN4llvm18RISCVVPseudosTable10PseudoInfoEZNS1_13getPseudoInfoEjE7KeyTypeZNS1_13getPseudoInfoEjE4CompET_S7_S7_RKT0_T1_.exit.i.i, %bb.a, %bb.b, %_ZN4llvm5RISCV14getRVVMCOpcodeEj.exit
  ret void
}

declare void @_ZNK4llvm15TargetInstrInfo28getReassociateOperandIndicesERKNS_12MachineInstrEjRSt5arrayIjLm5EE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(80), i32 noundef, ptr noundef nonnull align 4 dereferenceable(20)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm14RISCVInstrInfo22hasReassociableSiblingERKNS_12MachineInstrERb(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm14RISCVInstrInfo33isVectorAssociativeAndCommutativeERKNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext false)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK4llvm14RISCVInstrInfo33isVectorAssociativeAndCommutativeERKNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext true)
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm14RISCVInstrInfo28hasReassociableVectorSiblingERKNS_12MachineInstrERb(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %_ZN4llvm5RISCV11hasEqualFRMERKNS_12MachineInstrES3_.exit

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo22hasReassociableSiblingERKNS_12MachineInstrERb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #27
  br i1 %i.d, label %bb.e, label %_ZN4llvm5RISCV11hasEqualFRMERKNS_12MachineInstrES3_.exit

bb.e:                                             ; preds = %bb.d
  %i.e = tail call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #27
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !432
  %i.h = load i8, ptr %2, align 1, !tbaa !445, !range !48, !noundef !49
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75
  %i.l = select i1 %i.i, i64 2, i64 1
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !76
  %i.p = tail call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.g, i32 %i.o) #27 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !74
  %i.s = tail call noundef signext i16 @_ZN4llvm5RISCV18getNamedOperandIdxEjNS0_6OpNameE(i32 noundef %i.r, i8 noundef zeroext 22) #29 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 52
  %i.u = load i32, ptr %i.t, align 4, !tbaa !74
  %i.v = tail call noundef signext i16 @_ZN4llvm5RISCV18getNamedOperandIdxEjNS0_6OpNameE(i32 noundef %i.u, i8 noundef zeroext 22) #29 ; 3 uses
  %i.w = and i16 %i.v, %i.s
  %or.cond.not = icmp sgt i16 %i.w, -1
  br i1 %or.cond.not, label %bb.f, label %_ZN4llvm5RISCV11hasEqualFRMERKNS_12MachineInstrES3_.exit

bb.f:                                             ; preds = %bb.e
  %i.x = or i16 %i.v, %i.s
  %or.cond.not.i = icmp sgt i16 %i.x, -1
  br i1 %or.cond.not.i, label %bb.g, label %_ZN4llvm5RISCV11hasEqualFRMERKNS_12MachineInstrES3_.exit

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !75
  %3 = zext nneg i16 %i.s to i64
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %3
  %.sroa.313.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.313.0.copyload.i = load i64, ptr %.sroa.313.0..sroa_idx.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !75
  %4 = zext nneg i16 %i.v to i64
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %4
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.ad = icmp eq i64 %.sroa.313.0.copyload.i, %.sroa.3.0.copyload.i
  br label %_ZN4llvm5RISCV11hasEqualFRMERKNS_12MachineInstrES3_.exit

_ZN4llvm5RISCV11hasEqualFRMERKNS_12MachineInstrES3_.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.d ], [ true, %bb.e ], [ %i.ad, %bb.g ], [ false, %bb.f ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo22hasReassociableSiblingERKNS_12MachineInstrERb(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm5RISCV11hasEqualFRMERKNS_12MachineInstrES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !74
  %i.c = tail call noundef signext i16 @_ZN4llvm5RISCV18getNamedOperandIdxEjNS0_6OpNameE(i32 noundef %i.b, i8 noundef zeroext 22) #29 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !74
  %i.f = tail call noundef signext i16 @_ZN4llvm5RISCV18getNamedOperandIdxEjNS0_6OpNameE(i32 noundef %i.e, i8 noundef zeroext 22) #29 ; 2 uses
  %i.g = or i16 %i.f, %i.c
  %or.cond.not = icmp sgt i16 %i.g, -1
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  %2 = zext nneg i16 %i.c to i64
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %2
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.313.0.copyload = load i64, ptr %.sroa.313.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75
  %3 = zext nneg i16 %i.f to i64
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %3
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  %i.n = icmp eq i64 %.sroa.313.0.copyload, %.sroa.3.0.copyload
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.n, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm14RISCVInstrInfo27isAssociativeAndCommutativeERKNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, i1 noundef zeroext %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm14RISCVInstrInfo33isVectorAssociativeAndCommutativeERKNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2)
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !74   ; 2 uses
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 616
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i64 %i.f(ptr noundef nonnull align 8 dereferenceable(440) %0, i32 noundef %i.c) #27 ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.g to i32
  %i.h = and i64 %i.g, 4294967296
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i32 [ %i.c, %bb.b ], [ %.sroa.0.0.extract.trunc, %bb.c ]
  switch i32 %.1, label %.critedge [
    i32 14573, label %_ZL6isFADDj.exit.thread
    i32 14576, label %_ZL6isFADDj.exit.thread
    i32 14570, label %_ZL6isFADDj.exit.thread
    i32 14763, label %_ZL6isFADDj.exit.thread
    i32 14766, label %_ZL6isFADDj.exit.thread
    i32 14760, label %_ZL6isFADDj.exit.thread
    i32 13725, label %bb.f
    i32 13729, label %bb.f
    i32 14123, label %bb.f
    i32 15112, label %bb.f
    i32 16853, label %bb.f
    i32 15019, label %bb.f
    i32 15042, label %bb.f
    i32 14949, label %bb.f
    i32 14950, label %bb.f
    i32 14936, label %bb.f
    i32 14937, label %bb.f
    i32 14747, label %bb.f
    i32 14750, label %bb.f
    i32 14744, label %bb.f
    i32 14735, label %bb.f
    i32 14738, label %bb.f
    i32 14732, label %bb.f
  ]

_ZL6isFADDj.exit.thread:                          ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !218  ; 2 uses
  %i.k = and i32 %i.j, 1024
  %.not18 = icmp eq i32 %i.k, 0
  br i1 %.not18, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZL6isFADDj.exit.thread
  %i.l = and i32 %i.j, 64
  %i.m = icmp ne i32 %i.l, 0
  br label %.critedge

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.c, %bb.f, %bb.e, %_ZL6isFADDj.exit.thread, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ false, %_ZL6isFADDj.exit.thread ], [ %i.m, %bb.e ], [ true, %bb.f ], [ false, %bb.d ], [ false, %bb.c ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 4294983245) i64 @_ZNK4llvm14RISCVInstrInfo16getInverseOpcodeEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #4 align 2 {
bb.a:
  switch i32 %1, label %bb.an [
    i32 14573, label %bb.b
    i32 14576, label %bb.c
    i32 14570, label %bb.d
    i32 14841, label %bb.e
    i32 14844, label %bb.f
    i32 14838, label %bb.g
    i32 13725, label %bb.h
    i32 15946, label %bb.i
    i32 13729, label %bb.j
    i32 15948, label %bb.k
    i32 1654, label %bb.l
    i32 1656, label %bb.m
    i32 1658, label %bb.n
    i32 1660, label %bb.o
    i32 1662, label %bb.p
    i32 1664, label %bb.q
    i32 1666, label %bb.r
    i32 1655, label %bb.s
    i32 1657, label %bb.t
    i32 1659, label %bb.u
    i32 1661, label %bb.v
    i32 1663, label %bb.w
    i32 1665, label %bb.x
    i32 1667, label %bb.y
    i32 12193, label %bb.z
    i32 12195, label %bb.aa
    i32 12197, label %bb.ab
    i32 12199, label %bb.ac
    i32 12201, label %bb.ad
    i32 12203, label %bb.ae
    i32 12205, label %bb.af
    i32 12194, label %bb.ag
    i32 12196, label %bb.ah
    i32 12198, label %bb.ai
    i32 12200, label %bb.aj
    i32 12202, label %bb.ak
    i32 12204, label %bb.al
    i32 12206, label %bb.am
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.an

bb.c:                                             ; preds = %bb.a
  br label %bb.an

bb.d:                                             ; preds = %bb.a
  br label %bb.an

bb.e:                                             ; preds = %bb.a
  br label %bb.an

bb.f:                                             ; preds = %bb.a
  br label %bb.an

bb.g:                                             ; preds = %bb.a
  br label %bb.an

bb.h:                                             ; preds = %bb.a
  br label %bb.an

bb.i:                                             ; preds = %bb.a
  br label %bb.an

bb.j:                                             ; preds = %bb.a
  br label %bb.an

bb.k:                                             ; preds = %bb.a
  br label %bb.an

bb.l:                                             ; preds = %bb.a
  br label %bb.an

bb.m:                                             ; preds = %bb.a
  br label %bb.an

bb.n:                                             ; preds = %bb.a
  br label %bb.an

bb.o:                                             ; preds = %bb.a
  br label %bb.an

bb.p:                                             ; preds = %bb.a
  br label %bb.an

bb.q:                                             ; preds = %bb.a
  br label %bb.an

bb.r:                                             ; preds = %bb.a
  br label %bb.an

bb.s:                                             ; preds = %bb.a
  br label %bb.an

bb.t:                                             ; preds = %bb.a
  br label %bb.an

bb.u:                                             ; preds = %bb.a
  br label %bb.an

bb.v:                                             ; preds = %bb.a
  br label %bb.an

bb.w:                                             ; preds = %bb.a
  br label %bb.an

bb.x:                                             ; preds = %bb.a
  br label %bb.an

bb.y:                                             ; preds = %bb.a
  br label %bb.an

bb.z:                                             ; preds = %bb.a
  br label %bb.an

bb.aa:                                            ; preds = %bb.a
  br label %bb.an
end_hunk_0
