Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUInstructionSelector?download=true
inline.NumInlined: 11496
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 118
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZNK4llvm25AMDGPUInstructionSelector34renderSrcAndDstSelToOpSelXForm_1_0ERNS_19MachineInstrBuilderERKNS_12MachineInstrEi:bb.a
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.c = zext i32 %3 to i64
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !338
  %i.g = shl i64 %i.f, 1
  %i.h = and i64 %i.g, 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !525
  %i.k = load ptr, ptr %1, align 8, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i32 1, ptr %4, align 8, !alias.scope !820
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !421, !alias.scope !820
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.h, ptr %i.m, align 8, !tbaa !338, !alias.scope !820
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull align 8 dereferenceable(1065) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm25AMDGPUInstructionSelector34renderSrcAndDstSelToOpSelXForm_1_1ERNS_19MachineInstrBuilderERKNS_12MachineInstrEi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2, i32 noundef %3) #4 align 2 {
bb.a:
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.c = zext i32 %3 to i64
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !338
  %i.g = shl i64 %i.f, 1
  %i.h = and i64 %i.g, 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !525
  %i.k = load ptr, ptr %1, align 8, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i32 1, ptr %4, align 8, !alias.scope !823
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !421, !alias.scope !823
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.h, ptr %i.m, align 8, !tbaa !338, !alias.scope !823
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull align 8 dereferenceable(1065) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm25AMDGPUInstructionSelector34renderSrcAndDstSelToOpSelXForm_2_0ERNS_19MachineInstrBuilderERKNS_12MachineInstrEi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2, i32 noundef %3) #4 align 2 {
bb.a:
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.c = zext i32 %3 to i64
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !338
  %i.g = shl i64 %i.f, 2
  %i.h = and i64 %i.g, 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !525
  %i.k = load ptr, ptr %1, align 8, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i32 1, ptr %4, align 8, !alias.scope !826
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !421, !alias.scope !826
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.h, ptr %i.m, align 8, !tbaa !338, !alias.scope !826
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull align 8 dereferenceable(1065) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm25AMDGPUInstructionSelector24renderSrcSelToOpSelXFormERNS_19MachineInstrBuilderERKNS_12MachineInstrEi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2, i32 noundef %3) #4 align 2 {
bb.a:
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.c = zext i32 %3 to i64
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !338
  %.not = icmp eq i64 %i.f, 0
  %i.g = select i1 %.not, i64 0, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !525
  %i.j = load ptr, ptr %1, align 8, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i32 1, ptr %4, align 8, !alias.scope !829
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.k, align 8, !tbaa !421, !alias.scope !829
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.g, ptr %i.l, align 8, !tbaa !338, !alias.scope !829
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 8 dereferenceable(1065) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm25AMDGPUInstructionSelector15renderTruncTImmERNS_19MachineInstrBuilderERKNS_12MachineInstrEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1408) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2, i32 noundef %3) #4 align 2 {
bb.a:
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.c = zext i32 %3 to i64
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 255
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %_ZN4llvm14MIPatternMatch8mi_matchINS_8RegisterENS0_13ConstantMatchIlEEEEbT_RKNS_19MachineRegisterInfoEOT0_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !338
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !379
  %i.l = tail call { i64, i8 } @_ZN4llvm23getIConstantVRegSExtValENS_8RegisterERKNS_19MachineRegisterInfoE(i32 %i.i, ptr noundef nonnull align 8 dereferenceable(520) %i.k) #24 ; 2 uses
  %i.m = extractvalue { i64, i8 } %i.l, 1
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %_ZN4llvm14MIPatternMatch8mi_matchINS_8RegisterENS0_13ConstantMatchIlEEEEbT_RKNS_19MachineRegisterInfoEOT0_.exit

bb.c:                                             ; preds = %bb.b
  %i.o = extractvalue { i64, i8 } %i.l, 0
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !525
  %i.r = load ptr, ptr %1, align 8, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store i32 1, ptr %5, align 8, !alias.scope !834
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.s, align 8, !tbaa !421, !alias.scope !834
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.o, ptr %i.t, align 8, !tbaa !338, !alias.scope !834
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull align 8 dereferenceable(1065) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.d

_ZN4llvm14MIPatternMatch8mi_matchINS_8RegisterENS0_13ConstantMatchIlEEEEbT_RKNS_19MachineRegisterInfoEOT0_.exit: ; preds = %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !338
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !525
  %i.y = load ptr, ptr %1, align 8, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i32 1, ptr %4, align 8, !alias.scope !835
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.z, align 8, !tbaa !421, !alias.scope !835
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.v, ptr %i.aa, align 8, !tbaa !338, !alias.scope !835
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 8 dereferenceable(1065) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm14MIPatternMatch8mi_matchINS_8RegisterENS0_13ConstantMatchIlEEEEbT_RKNS_19MachineRegisterInfoEOT0_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm25AMDGPUInstructionSelector18renderVOP3PModsNegERNS_19MachineInstrBuilderERKNS_12MachineInstrEi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2, i32 noundef %3) #4 align 2 {
bb.a:
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.c = zext i32 %3 to i64
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !338
  %.not = icmp eq i64 %i.f, 0
  %spec.select = select i1 %.not, i64 8, i64 9
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !525
  %i.i = load ptr, ptr %1, align 8, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i32 1, ptr %4, align 8, !alias.scope !838
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.j, align 8, !tbaa !421, !alias.scope !838
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %spec.select, ptr %i.k, align 8, !tbaa !338, !alias.scope !838
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(1065) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm25AMDGPUInstructionSelector21renderVOP3PModsNegAbsERNS_19MachineInstrBuilderERKNS_12MachineInstrEi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2, i32 noundef %3) #4 align 2 {
bb.a:
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.c = zext i32 %3 to i64
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !338
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = icmp eq i32 %i.g, 1
  %spec.select = select i1 %i.h, i64 9, i64 8
  %i.i = icmp eq i32 %i.g, 2
  %.1 = select i1 %i.i, i64 10, i64 %spec.select
  %i.j = icmp eq i32 %i.g, 3
  %.2 = select i1 %i.j, i64 11, i64 %.1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !525
  %i.m = load ptr, ptr %1, align 8, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i32 1, ptr %4, align 8, !alias.scope !841
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.n, align 8, !tbaa !421, !alias.scope !841
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.2, ptr %i.o, align 8, !tbaa !338, !alias.scope !841
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.l, ptr noundef nonnull align 8 dereferenceable(1065) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm25AMDGPUInstructionSelector19renderVOP3PModsNegsERNS_19MachineInstrBuilderERKNS_12MachineInstrEi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2, i32 noundef %3) #4 align 2 {
bb.a:
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.c = zext i32 %3 to i64
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !338
  %.not = icmp eq i64 %i.f, 0
  %spec.select = select i1 %.not, i64 8, i64 11
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !525
  %i.i = load ptr, ptr %1, align 8, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i32 1, ptr %4, align 8, !alias.scope !844
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.j, align 8, !tbaa !421, !alias.scope !844
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %spec.select, ptr %i.k, align 8, !tbaa !338, !alias.scope !844
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(1065) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm25AMDGPUInstructionSelector18renderZextBoolTImmERNS_19MachineInstrBuilderERKNS_12MachineInstrEi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2, i32 noundef %3) #4 align 2 {
bb.a:
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.c = zext i32 %3 to i64
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !338
  %i.g = icmp ne i64 %i.f, 0
  %i.h = zext i1 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !525
  %i.k = load ptr, ptr %1, align 8, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i32 1, ptr %4, align 8, !alias.scope !847
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !421, !alias.scope !847
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.h, ptr %i.m, align 8, !tbaa !338, !alias.scope !847
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull align 8 dereferenceable(1065) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm25AMDGPUInstructionSelector10selectImplERNS_12MachineInstrERNS_15CodeGenCoverageE(ptr noundef nonnull align 8 dereferenceable(1408) initializes((200, 204)) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Bitset", align 16     ; 7 uses
  %4 = alloca %"class.llvm::MachineIRBuilder", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !854
  %i.c = load <2 x i64>, ptr %i.b, align 8, !tbaa !203, !noalias !855
  %i.d = load <2 x i64>, ptr %3, align 16, !tbaa !203, !alias.scope !855
  %i.e = or <2 x i64> %i.d, %i.c
  store <2 x i64> %i.e, ptr %3, align 16, !tbaa !203, !alias.scope !855
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load i64, ptr %i.f, align 8, !tbaa !203, !noalias !855
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 16, !tbaa !203, !alias.scope !855
  %i.j = or i64 %i.i, %i.g
  store i64 %i.j, ptr %i.h, align 16, !tbaa !203, !alias.scope !855
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !422
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm16MachineIRBuilderE, i64 16), ptr %4, align 8, !tbaa !488
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.m, i8 0, i64 88, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !471
  call void @_ZN4llvm16MachineIRBuilder5setMFERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(1065) %i.o) #24
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !422
  store ptr %i.r, ptr %i.p, align 8, !tbaa !497
  %i.s = ptrtoint ptr %1 to i64
  store i64 %i.s, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load i64, ptr %i.t, align 8, !tbaa !338  ; 3 uses
  %i.v = icmp ugt i64 %i.u, 7
  br i1 %i.v, label %bb.b, label %_ZNK4llvm12MachineInstr15getMMRAMetadataEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.w = and i64 %i.u, 7
  %.not.i.i = icmp eq i64 %i.w, 3
  %i.x = and i64 %i.u, -8
  %i.y = inttoptr i64 %i.x to ptr                 ; 21 uses
  br i1 %.not.i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 7
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !499, !range !201, !noundef !202
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ad = load i32, ptr %i.y, align 8, !tbaa !500
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !501, !range !201, !noundef !202
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 5
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !502, !range !201, !noundef !202
  %narrow.i.i.i.i.i.i.i = add nuw nsw i8 %i.aj, %i.ah
  %i.ak = zext nneg i8 %narrow.i.i.i.i.i.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.an = load i8, ptr %i.am, align 2, !tbaa !503, !range !201, !noundef !202
  %i.ao = zext nneg i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !504
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.i.i.ph.ph = phi ptr [ %i.aq, %bb.d ], [ null, %bb.c ]
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %.1.i.i.ph.ph, ptr %i.ar, align 8, !tbaa !505
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 9
  %i.at = load i8, ptr %i.as, align 1, !tbaa !506, !range !201, !noundef !202
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aw = load i32, ptr %i.y, align 8, !tbaa !500
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ba = load i8, ptr %i.az, align 4, !tbaa !501, !range !201, !noundef !202
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 5
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !502, !range !201, !noundef !202
  %narrow.i.i.i.i.i.i8.i = add nuw nsw i8 %i.bc, %i.ba
  %i.bd = zext nneg i8 %narrow.i.i.i.i.i.i8.i to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !503, !range !201, !noundef !202
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 7
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !499, !range !201, !noundef !202
  %narrow.i.i.i = add nuw nsw i8 %i.bi, %i.bg
  %i.bj = zext nneg i8 %narrow.i.i.i to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !504
  br label %bb.h

_ZNK4llvm12MachineInstr15getMMRAMetadataEv.exit.i: ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  br label %_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE.exit

bb.g:                                             ; preds = %bb.b
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  br label %_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %.1.i6.i.ph.ph = phi ptr [ %i.bl, %bb.f ], [ null, %bb.e ]
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %.1.i6.i.ph.ph, ptr %i.bo, align 8, !tbaa !507
  %i.bp = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  %i.bq = load i8, ptr %i.bp, align 2, !tbaa !508, !range !201, !noundef !202
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.i, label %_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE.exit

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.bt = load i32, ptr %i.y, align 8, !tbaa !500
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.bx = load i8, ptr %i.bw, align 4, !tbaa !501, !range !201, !noundef !202
  %i.by = getelementptr inbounds nuw i8, ptr %i.y, i64 5
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !502, !range !201, !noundef !202
  %narrow.i.i.i.i.i.i.i.i.i = add nuw nsw i8 %i.bz, %i.bx
  %i.ca = zext nneg i8 %narrow.i.i.i.i.i.i.i.i.i to i64
end_hunk_0
