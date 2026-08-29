Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86FixupVectorConstants?download=true
inline.NumInlined: 943
inline.NumDeleted: 487
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@"_ZZN12_GLOBAL__N_127X86FixupVectorConstantsImpl18processInstructionERN4llvm15MachineFunctionERNS1_17MachineBasicBlockERNS1_12MachineInstrEENK3$_1clENS1_8ArrayRefIZNS0_18processInstructionES3_S5_S7_E10FixupEntryEEjj":bb.a
  %i.bd = fcmp une double %i.ba, %i.bc
  br i1 %i.bd, label %"_ZZN12_GLOBAL__N_127X86FixupVectorConstantsImpl18processInstructionERN4llvm15MachineFunctionERNS1_17MachineBasicBlockERNS1_12MachineInstrEENK3$_0clERKZNS0_18processInstructionES3_S5_S7_E10FixupEntryj.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !165
  %i.bf = call noundef i32 @_ZN4llvm12MCSchedModel19computeInstrLatencyERKNS_15MCSubtargetInfoERKNS_16MCSchedClassDescE(ptr noundef nonnull align 8 dereferenceable(320) %i.be, ptr noundef nonnull align 2 dereferenceable(14) %i.am) #17 ; 2 uses
  %i.bg = load ptr, ptr %i.ay, align 8, !tbaa !165
  %i.bh = call noundef i32 @_ZN4llvm12MCSchedModel19computeInstrLatencyERKNS_15MCSubtargetInfoERKNS_16MCSchedClassDescE(ptr noundef nonnull align 8 dereferenceable(320) %i.bg, ptr noundef nonnull align 2 dereferenceable(14) %i.at) #17 ; 2 uses
  %.not.i = icmp eq i32 %i.bf, %i.bh
  br i1 %.not.i, label %"_ZZN12_GLOBAL__N_127X86FixupVectorConstantsImpl18processInstructionERN4llvm15MachineFunctionERNS1_17MachineBasicBlockERNS1_12MachineInstrEENK3$_0clERKZNS0_18processInstructionES3_S5_S7_E10FixupEntryj.exit.thread", label %.split

.split:                                           ; preds = %bb.h
  %i.bi = mul nsw i32 %i.ax, %i.av
  %i.bj = sub i32 %i.r, %i.bi
  %i.bk = lshr i32 %i.bj, 7
  %i.bl = add nsw i32 %i.bf, %i.bk
  %i.bm = icmp slt i32 %i.bh, %i.bl
  br i1 %i.bm, label %"_ZZN12_GLOBAL__N_127X86FixupVectorConstantsImpl18processInstructionERN4llvm15MachineFunctionERNS1_17MachineBasicBlockERNS1_12MachineInstrEENK3$_0clERKZNS0_18processInstructionES3_S5_S7_E10FixupEntryj.exit.thread", label %.critedge47

"_ZZN12_GLOBAL__N_127X86FixupVectorConstantsImpl18processInstructionERN4llvm15MachineFunctionERNS1_17MachineBasicBlockERNS1_12MachineInstrEENK3$_0clERKZNS0_18processInstructionES3_S5_S7_E10FixupEntryj.exit": ; preds = %bb.g
  %i.bn = fcmp olt double %i.bc, %i.ba
  br i1 %i.bn, label %"_ZZN12_GLOBAL__N_127X86FixupVectorConstantsImpl18processInstructionERN4llvm15MachineFunctionERNS1_17MachineBasicBlockERNS1_12MachineInstrEENK3$_0clERKZNS0_18processInstructionES3_S5_S7_E10FixupEntryj.exit.thread", label %.critedge47

"_ZZN12_GLOBAL__N_127X86FixupVectorConstantsImpl18processInstructionERN4llvm15MachineFunctionERNS1_17MachineBasicBlockERNS1_12MachineInstrEENK3$_0clERKZNS0_18processInstructionES3_S5_S7_E10FixupEntryj.exit.thread": ; preds = %bb.h, %bb.f, %.split, %"_ZZN12_GLOBAL__N_127X86FixupVectorConstantsImpl18processInstructionERN4llvm15MachineFunctionERNS1_17MachineBasicBlockERNS1_12MachineInstrEENK3$_0clERKZNS0_18processInstructionES3_S5_S7_E10FixupEntryj.exit", %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %.03963, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !399
  %i.bq = getelementptr inbounds nuw i8, ptr %.03963, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.h, ptr %i.a, align 8, !tbaa !444
  store i32 %i.n, ptr %i.b, align 4, !tbaa !213
  store i32 %i.bp, ptr %i.c, align 4, !tbaa !213
  store i32 %i.br, ptr %i.d, align 4, !tbaa !213
  %i.bs = getelementptr inbounds nuw i8, ptr %.03963, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !401
  %.not.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i, label %bb.i, label %_ZNKSt8functionIFPN4llvm8ConstantEPKS1_jjjEEclES4_jjj.exit

bb.i:                                             ; preds = %"_ZZN12_GLOBAL__N_127X86FixupVectorConstantsImpl18processInstructionERN4llvm15MachineFunctionERNS1_17MachineBasicBlockERNS1_12MachineInstrEENK3$_0clERKZNS0_18processInstructionES3_S5_S7_E10FixupEntryj.exit.thread"
  call void @_ZSt25__throw_bad_function_callv() #18
  unreachable

_ZNKSt8functionIFPN4llvm8ConstantEPKS1_jjjEEclES4_jjj.exit: ; preds = %"_ZZN12_GLOBAL__N_127X86FixupVectorConstantsImpl18processInstructionERN4llvm15MachineFunctionERNS1_17MachineBasicBlockERNS1_12MachineInstrEENK3$_0clERKZNS0_18processInstructionES3_S5_S7_E10FixupEntryj.exit.thread"
  %i.bu = getelementptr inbounds nuw i8, ptr %.03963, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %.03963, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !446
  %i.bx = call noundef ptr %i.bw(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #17, !inline_history !447 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not45 = icmp eq ptr %i.bx, null
  br i1 %.not45, label %.critedge47, label %bb.j

.critedge47:                                      ; preds = %.split, %_ZNKSt8functionIFPN4llvm8ConstantEPKS1_jjjEEclES4_jjj.exit, %"_ZZN12_GLOBAL__N_127X86FixupVectorConstantsImpl18processInstructionERN4llvm15MachineFunctionERNS1_17MachineBasicBlockERNS1_12MachineInstrEENK3$_0clERKZNS0_18processInstructionES3_S5_S7_E10FixupEntryj.exit", %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %.03963, i64 48 ; 2 uses
  %.not43 = icmp eq ptr %i.by, %i.o
  br i1 %.not43, label %.thread, label %bb.d

bb.j:                                             ; preds = %_ZNKSt8functionIFPN4llvm8ConstantEPKS1_jjjEEclES4_jjj.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %.03963, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !448, !nonnull !36, !align !164
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !260
  %i.cd = load i32, ptr %i.bz, align 8, !tbaa !400
  %i.ce = sdiv i32 %i.cd, 8
  %i.cf = sext i32 %i.ce to i64
  %i.cg = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cf, i1 false)
  %i.ch = trunc nuw nsw i64 %i.cg to i8
  %i.ci = sub nsw i8 63, %i.ch
  %i.cj = call noundef i32 @_ZN4llvm19MachineConstantPool20getConstantPoolIndexEPKNS_8ConstantENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(64) %i.cc, ptr noundef nonnull %i.bx, i8 %i.ci) #17
  %i.ck = load ptr, ptr %0, align 8, !tbaa !432, !nonnull !36, !align !164
  %i.cl = load ptr, ptr %i.f, align 8, !tbaa !170
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load i32, ptr %.03963, align 8, !tbaa !395
  %i.co = load ptr, ptr %i.cm, align 8, !tbaa !442
  %i.cp = zext i32 %i.cn to i64
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds [32 x i8], ptr %i.co, i64 %i.cq
  call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %i.cr) #17
  %i.cs = load ptr, ptr %0, align 8, !tbaa !432, !nonnull !36, !align !164
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !449
  %i.cv = zext nneg i32 %4 to i64
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cu, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 112
  store i32 %i.cj, ptr %i.cx, align 8, !tbaa !431
  br label %.thread

.thread:                                          ; preds = %.critedge47, %_ZNK4llvm8TypeSizecvmEv.exit, %bb.a, %bb.j
  %i.cy = phi i1 [ true, %bb.j ], [ false, %bb.a ], [ false, %_ZNK4llvm8TypeSizecvmEv.exit ], [ false, %.critedge47 ]
  ret i1 %i.cy
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZL14rebuildSExtCstPKN4llvm8ConstantEjjj(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZL13rebuildExtCstPKN4llvm8ConstantEbjjj(ptr noundef %0, i1 noundef zeroext true, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZL14rebuildZExtCstPKN4llvm8ConstantEjjj(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZL13rebuildExtCstPKN4llvm8ConstantEbjjj(ptr noundef %0, i1 noundef zeroext false, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZL15rebuildSplatCstPKN4llvm8ConstantEjjj(ptr noundef %0, i32 %1, i32 %2, i32 noundef %3) #0 {
bb.a:
  %4 = alloca %"class.std::optional.222", align 8 ; 11 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %6 = alloca %"class.llvm::SmallVector.273", align 8 ; 11 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 8 uses
  %8 = alloca %"class.std::optional.222", align 8 ; 8 uses
  %9 = alloca %"class.std::optional.222", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !413, !noalias !450
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !450
  call fastcc void @_ZL19extractConstantBitsPKN4llvm8ConstantE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull %0), !noalias !450
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !427, !range !35, !noalias !450, !noundef !36
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit60.i

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef zeroext i1 @_ZNK4llvm5APInt7isSplatEj(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %3) #17, !noalias !450
  br i1 %i.f, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.e

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !450
  call void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %3) #17, !noalias !450
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !429, !noalias !450
  store i32 %i.i, ptr %i.g, align 8, !tbaa !429, !alias.scope !450
  %i.j = load i64, ptr %5, align 8, !noalias !450
  store i64 %i.j, ptr %9, align 8, !alias.scope !450
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 1, ptr %i.k, align 8, !tbaa !427, !alias.scope !450
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !450
  %i.l = load i8, ptr %i.c, align 8, !tbaa !427, !range !35, !noalias !450, !noundef !36
  %i.m = trunc nuw i8 %i.l to i1
  store i8 0, ptr %i.c, align 8, !tbaa !427, !noalias !450
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load i32, ptr %i.n, align 8, !noalias !450
  %i.p = icmp ugt i32 %i.o, 64
  %or.cond.i.i.i.i = select i1 %i.m, i1 %i.p, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_ZL20getSplatableConstantPKN4llvm8ConstantEj.exit.thread

bb.c:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i
  %i.q = load ptr, ptr %4, align 8, !tbaa !431, !noalias !450 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZL20getSplatableConstantPKN4llvm8ConstantEj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.q) #20, !noalias !450
  br label %_ZL20getSplatableConstantPKN4llvm8ConstantEj.exit.thread

_ZL20getSplatableConstantPKN4llvm8ConstantEj.exit.thread: ; preds = %_ZN4llvm5APIntD2Ev.exit.i, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !450
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.ac

bb.e:                                             ; preds = %bb.b
  %.pre.i = load i8, ptr %i.c, align 8, !tbaa !427, !range !35, !noalias !450
  %i.t = trunc nuw i8 %.pre.i to i1
  store i8 0, ptr %i.c, align 8, !tbaa !427, !noalias !450
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = load i32, ptr %i.u, align 8, !noalias !450
  %i.w = icmp ugt i32 %i.v, 64
  %or.cond.i.i.i59.i = select i1 %i.t, i1 %i.w, i1 false
  br i1 %or.cond.i.i.i59.i, label %bb.f, label %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit60.i

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %4, align 8, !tbaa !431, !noalias !450 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit60.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.x) #20, !noalias !450
  br label %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit60.i

_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit60.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !450
  %i.z = load i8, ptr %0, align 8, !tbaa !453, !noalias !450
  %.not.i = icmp eq i8 %i.z, 13
  br i1 %.not.i, label %bb.h, label %_ZL20getSplatableConstantPKN4llvm8ConstantEj.exit.thread25

bb.h:                                             ; preds = %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit60.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !noalias !450
  %i.ac = and i32 %i.ab, 268435455                ; 2 uses
  %i.ad = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #21, !noalias !450 ; 4 uses
  %i.ae = udiv i32 %3, %i.ad                      ; 5 uses
  %i.af = urem i32 %3, %i.ad
  %.not50.i = icmp eq i32 %i.af, 0
  br i1 %.not50.i, label %bb.i, label %_ZL20getSplatableConstantPKN4llvm8ConstantEj.exit.thread25

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !noalias !450
  %i.ag = zext i32 %i.ae to i64                   ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.ah, ptr %6, align 8, !tbaa !454, !noalias !450
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 16, ptr %i.aj, align 4, !tbaa !455, !noalias !450
  %i.ak = icmp ugt i32 %i.ae, 16
  br i1 %i.ak, label %bb.j, label %_ZSt6fill_nIPPN4llvm8ConstantEmS2_ET_S4_T0_RKT1_.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ai, align 8, !tbaa !456, !noalias !450
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull %i.ah, i64 noundef %i.ag, i64 noundef 8) #17, !noalias !450
  %i.al = load ptr, ptr %6, align 8, !tbaa !454, !noalias !450 ; 4 uses
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ag, 3 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i.i.i.i.i.i.i.i
  %i.an = add nsw i64 %.idx.i.i.i.i.i.i.i.i, -8   ; 2 uses
  %i.ao = lshr exact i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check32 = icmp ult i64 %i.an, 24
  br i1 %min.iters.check32, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph33

vector.ph33:                                      ; preds = %bb.j
  %n.vec34 = and i64 %i.ap, 4611686018427387900   ; 3 uses
  %i.aq = shl i64 %n.vec34, 3
  %i.ar = getelementptr i8, ptr %i.al, i64 %i.aq
  br label %vector.body35

vector.body35:                                    ; preds = %vector.body35, %vector.ph33
  %index36 = phi i64 [ 0, %vector.ph33 ], [ %index.next38, %vector.body35 ] ; 2 uses
  %i.as = shl i64 %index36, 3
  %next.gep37 = getelementptr i8, ptr %i.al, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep37, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep37, align 8, !tbaa !444, !noalias !450
  store <2 x ptr> splat (ptr null), ptr %i.at, align 8, !tbaa !444, !noalias !450
  %index.next38 = add nuw i64 %index36, 4         ; 2 uses
  %i.au = icmp eq i64 %index.next38, %n.vec34
  br i1 %i.au, label %middle.block39, label %vector.body35, !llvm.loop !457

middle.block39:                                   ; preds = %vector.body35
  %cmp.n40 = icmp eq i64 %i.ap, %n.vec34
  br i1 %cmp.n40, label %_ZN4llvm11SmallVectorIPNS_8ConstantELj16EEC2EmRKS2_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.j, %middle.block39
  %.07.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.al, %bb.j ], [ %i.ar, %middle.block39 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store ptr null, ptr %.07.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !444, !noalias !450
  %i.av = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.am
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIPNS_8ConstantELj16EEC2EmRKS2_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !460

_ZSt6fill_nIPPN4llvm8ConstantEmS2_ET_S4_T0_RKT1_.exit.i.i.i: ; preds = %bb.i
  %.not.i.i = icmp ugt i32 %i.ad, %3
  br i1 %.not.i.i, label %_ZN4llvm11SmallVectorIPNS_8ConstantELj16EEC2EmRKS2_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZSt6fill_nIPPN4llvm8ConstantEmS2_ET_S4_T0_RKT1_.exit.i.i.i
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ag, 3  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i.i.i.i.i.i.i
  %i.ax = add nsw i64 %.idx.i.i.i.i.i.i.i, -8     ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 3
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ax, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.k
  %n.vec = and i64 %i.az, 4611686018427387900     ; 3 uses
  %i.ba = shl i64 %n.vec, 3
  %i.bb = getelementptr i8, ptr %i.ah, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ah, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep, align 8, !tbaa !444, !noalias !450
  store <2 x ptr> splat (ptr null), ptr %i.bd, align 8, !tbaa !444, !noalias !450
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !461

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %_ZN4llvm11SmallVectorIPNS_8ConstantELj16EEC2EmRKS2_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.k, %middle.block
  %.07.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ah, %bb.k ], [ %i.bb, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store ptr null, ptr %.07.i.i.i.i.i.i.i.i.i, align 8, !tbaa !444, !noalias !450
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, %i.aw
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIPNS_8ConstantELj16EEC2EmRKS2_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !462

_ZN4llvm11SmallVectorIPNS_8ConstantELj16EEC2EmRKS2_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %middle.block39, %_ZSt6fill_nIPPN4llvm8ConstantEmS2_ET_S4_T0_RKT1_.exit.i.i.i
  store i32 %i.ae, ptr %i.ai, align 8, !tbaa !456, !noalias !450
  %.not4574.i = icmp eq i32 %i.ac, 0
  br i1 %.not4574.i, label %.critedge52.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm11SmallVectorIPNS_8ConstantELj16EEC2EmRKS2_.exit.i, %bb.o
  %.04275.i = phi i32 [ %i.bp, %bb.o ], [ 0, %_ZN4llvm11SmallVectorIPNS_8ConstantELj16EEC2EmRKS2_.exit.i ] ; 3 uses
  %i.bg = call noundef ptr @_ZNK4llvm8Constant19getAggregateElementEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %.04275.i) #17, !noalias !450 ; 4 uses
  %.not46.i = icmp eq ptr %i.bg, null
  br i1 %.not46.i, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !453, !noalias !450
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.bh, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = urem i32 %.04275.i, %i.ae
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = load ptr, ptr %6, align 8, !tbaa !454, !noalias !450
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bj ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !444, !noalias !450 ; 2 uses
  %.not47.i = icmp eq ptr %i.bm, null
  %i.bn = icmp eq ptr %i.bm, %i.bg
  %or.cond.i = or i1 %.not47.i, %i.bn
  br i1 %or.cond.i, label %bb.n, label %.thread.i

bb.n:                                             ; preds = %bb.m
  store ptr %i.bg, ptr %i.bl, align 8, !tbaa !444, !noalias !450
  br label %bb.o

.thread.i:                                        ; preds = %bb.m, %.lr.ph.i
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 0, ptr %i.bo, align 8, !tbaa !427, !alias.scope !450
  br label %bb.aa

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.bp = add nuw nsw i32 %.04275.i, 1            ; 2 uses
  %.not45.i = icmp eq i32 %i.bp, %i.ac
  br i1 %.not45.i, label %.critedge52.i, label %.lr.ph.i, !llvm.loop !463

.critedge52.i:                                    ; preds = %bb.o, %_ZN4llvm11SmallVectorIPNS_8ConstantELj16EEC2EmRKS2_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17, !noalias !450
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i32 %3, ptr %i.bq, align 8, !tbaa !429, !alias.scope !464, !noalias !450
  %i.br = icmp ult i32 %3, 65
  br i1 %i.br, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.critedge52.i
  store i64 0, ptr %7, align 8, !tbaa !431, !alias.scope !464, !noalias !450
  br label %_ZN4llvm5APInt7getZeroEj.exit.i

bb.q:                                             ; preds = %.critedge52.i
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %7, i64 noundef 0, i1 noundef zeroext false) #17, !noalias !450
  br label %_ZN4llvm5APInt7getZeroEj.exit.i

_ZN4llvm5APInt7getZeroEj.exit.i:                  ; preds = %bb.q, %bb.p
  %.not4876.i = icmp ugt i32 %i.ad, %3
  br i1 %.not4876.i, label %.thread71.i, label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %_ZN4llvm5APInt7getZeroEj.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.w, %.lr.ph79.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph79.i ], [ %indvars.iv.next.i, %bb.w ] ; 3 uses
  %i.bu = load ptr, ptr %6, align 8, !tbaa !454, !noalias !450
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.i ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !444, !noalias !450
  %.not49.i = icmp eq ptr %i.bw, null
  br i1 %.not49.i, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17, !noalias !450
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !444, !noalias !450
  call fastcc void @_ZL19extractConstantBitsPKN4llvm8ConstantE(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef %i.bx), !noalias !450
  %i.by = load i8, ptr %i.bs, align 8, !tbaa !427, !range !35, !noalias !450, !noundef !36
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ca = load i32, ptr %i.bt, align 8, !tbaa !429, !noalias !450
  %i.cb = trunc nuw i64 %indvars.iv.i to i32
  %i.cc = mul i32 %i.ca, %i.cb
  call void @_ZN4llvm5APInt10insertBitsERKS0_j(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %8, i32 noundef %i.cc) #17, !noalias !450
  %.pre82.i = load i8, ptr %i.bs, align 8, !tbaa !427, !range !35, !noalias !450
  %i.cd = trunc nuw i8 %.pre82.i to i1
  store i8 0, ptr %i.bs, align 8, !tbaa !427, !noalias !450
  %i.ce = load i32, ptr %i.bt, align 8, !noalias !450
  %i.cf = icmp ugt i32 %i.ce, 64
  %or.cond.i.i.i61.i = select i1 %i.cd, i1 %i.cf, i1 false
  br i1 %or.cond.i.i.i61.i, label %bb.u, label %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit62.thread.i

bb.u:                                             ; preds = %bb.t
  %i.cg = load ptr, ptr %8, align 8, !tbaa !431, !noalias !450 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit62.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.cg) #20, !noalias !450
  br label %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit62.thread.i

_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit62.thread.i: ; preds = %bb.v, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17, !noalias !450
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit62.thread.i, %bb.r
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32
  %.not48.i = icmp eq i32 %i.ae, %indvars.i
  br i1 %.not48.i, label %.thread71.i, label %bb.r, !llvm.loop !467

.thread71.i:                                      ; preds = %bb.w, %_ZN4llvm5APInt7getZeroEj.exit.i
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cj = load i32, ptr %i.bq, align 8, !tbaa !429, !noalias !450
  store i32 %i.cj, ptr %i.ci, align 8, !tbaa !429, !alias.scope !450
  %i.ck = load i64, ptr %7, align 8, !noalias !450
  store i64 %i.ck, ptr %9, align 8, !alias.scope !450
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 1, ptr %i.cl, align 8, !tbaa !427, !alias.scope !450
  br label %_ZN4llvm5APIntD2Ev.exit63.i

bb.x:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17, !noalias !450
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 0, ptr %i.cm, align 8, !tbaa !427, !alias.scope !450
  %.pr.i = load i32, ptr %i.bq, align 8, !tbaa !429, !noalias !450
  %i.cn = icmp ugt i32 %.pr.i, 64
  br i1 %i.cn, label %bb.y, label %_ZN4llvm5APIntD2Ev.exit63.i

bb.y:                                             ; preds = %bb.x
  %i.co = load ptr, ptr %7, align 8, !tbaa !431, !noalias !450 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %_ZN4llvm5APIntD2Ev.exit63.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %i.co) #20, !noalias !450
  br label %_ZN4llvm5APIntD2Ev.exit63.i

_ZN4llvm5APIntD2Ev.exit63.i:                      ; preds = %bb.z, %bb.y, %bb.x, %.thread71.i
  %i.cq = phi i1 [ false, %bb.z ], [ false, %bb.y ], [ false, %bb.x ], [ true, %.thread71.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !noalias !450
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit63.i, %.thread.i
  %i.cr = phi i1 [ %i.cq, %_ZN4llvm5APIntD2Ev.exit63.i ], [ false, %.thread.i ]
  %i.cs = load ptr, ptr %6, align 8, !tbaa !454, !noalias !450 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.ah
  br i1 %i.ct, label %_ZL20getSplatableConstantPKN4llvm8ConstantEj.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef %i.cs) #17, !noalias !450
  br label %_ZL20getSplatableConstantPKN4llvm8ConstantEj.exit

_ZL20getSplatableConstantPKN4llvm8ConstantEj.exit.thread25: ; preds = %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit60.i, %bb.h
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %.thread

_ZL20getSplatableConstantPKN4llvm8ConstantEj.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !450
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br i1 %i.cr, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %_ZL20getSplatableConstantPKN4llvm8ConstantEj.exit.thread, %_ZL20getSplatableConstantPKN4llvm8ConstantEj.exit
  %i.cw = phi ptr [ %i.s, %_ZL20getSplatableConstantPKN4llvm8ConstantEj.exit.thread ], [ %i.cv, %_ZL20getSplatableConstantPKN4llvm8ConstantEj.exit ] ; 2 uses
  %i.cx = load ptr, ptr %i.a, align 8, !tbaa !413 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i32, ptr %i.cy, align 8
  %i.da = and i32 %i.cz, 254
  %spec.select.i.i = icmp eq i32 %i.da, 18
  br i1 %spec.select.i.i, label %bb.ad, label %_ZNK4llvm4Type13getScalarTypeEv.exit

bb.ad:                                            ; preds = %bb.ac
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !417
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !422
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit

_ZNK4llvm4Type13getScalarTypeEv.exit:             ; preds = %bb.ac, %bb.ad
  %.0.i = phi ptr [ %i.dd, %bb.ad ], [ %i.cx, %bb.ac ] ; 2 uses
  %i.de = call { i64, i8 } @_ZNK4llvm4Type22getPrimitiveSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %.0.i) #21 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.de, 1
  %i.df = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.df, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.4) #18
  unreachable

.thread:                                          ; preds = %_ZL20getSplatableConstantPKN4llvm8ConstantEj.exit, %_ZL20getSplatableConstantPKN4llvm8ConstantEj.exit.thread25
  %.ph = phi ptr [ %i.cu, %_ZL20getSplatableConstantPKN4llvm8ConstantEj.exit.thread25 ], [ %i.cv, %_ZL20getSplatableConstantPKN4llvm8ConstantEj.exit ]
  store i8 0, ptr %.ph, align 8, !tbaa !427
  br label %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit

bb.af:                                            ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit
  %.fca.0.extract = extractvalue { i64, i8 } %i.de, 0
  %i.dg = trunc i64 %.fca.0.extract to i32
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %3, i32 %i.dg) ; 4 uses
  %i.dh = icmp eq i32 %.sroa.speculated, 8
  %i.di = icmp eq i32 %.sroa.speculated, 16
  %or.cond = or i1 %i.dh, %i.di
  %i.dj = icmp eq i32 %.sroa.speculated, 32
  %or.cond3 = or i1 %i.dj, %or.cond
  %i.dk = select i1 %or.cond3, i32 %.sroa.speculated, i32 64
  %i.dl = load ptr, ptr %i.cx, align 8, !tbaa !423, !nonnull !36, !align !164
  %i.dm = call fastcc noundef ptr @_ZL15rebuildConstantRN4llvm11LLVMContextEPNS_4TypeERKNS_5APIntEj(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull %.0.i, ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef %i.dk) ; 3 uses
  %.pre = load i8, ptr %i.cw, align 8, !tbaa !427, !range !35
  %i.dn = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.cw, align 8, !tbaa !427
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dp = load i32, ptr %i.do, align 8
  %i.dq = icmp ugt i32 %i.dp, 64
  %or.cond.i.i.i = select i1 %i.dn, i1 %i.dq, i1 false
  br i1 %or.cond.i.i.i, label %bb.ag, label %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit

bb.ag:                                            ; preds = %bb.af
  %i.dr = load ptr, ptr %9, align 8, !tbaa !431   ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.dr) #20
  br label %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit: ; preds = %.thread, %bb.af, %bb.ag, %bb.ah
  %.028 = phi ptr [ null, %.thread ], [ %i.dm, %bb.af ], [ %i.dm, %bb.ag ], [ %i.dm, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  ret ptr %.028
}

declare noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare { i64, i8 } @_ZNK4llvm4Type22getPrimitiveSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL15rebuildConstantRN4llvm11LLVMContextEPNS_4TypeERKNS_5APIntEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.llvm::SmallVector.241", align 8 ; 10 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %6 = alloca %"class.llvm::SmallVector.248", align 8 ; 10 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %8 = alloca %"class.llvm::SmallVector.192", align 8 ; 10 uses
  %9 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %10 = alloca %"class.llvm::SmallVector.254", align 8 ; 10 uses
  %11 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !429  ; 5 uses
  %.not79 = icmp eq i32 %i.b, 0                   ; 4 uses
  switch i32 %3, label %bb.ac [
    i32 8, label %bb.b
    i32 16, label %bb.i
    i32 32, label %bb.s
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !468
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i64 0, ptr %i.d, align 8, !tbaa !470
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 40, ptr %i.e, align 8, !tbaa !471
  br i1 %.not79, label %._crit_edge78, label %.lr.ph77

.lr.ph77:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.d

._crit_edge78.loopexit:                           ; preds = %_ZN4llvm5APIntD2Ev.exit
  %.pre = load ptr, ptr %4, align 8, !tbaa !468
  %.pre84 = load i64, ptr %i.d, align 8, !tbaa !470
  br label %._crit_edge78

._crit_edge78:                                    ; preds = %._crit_edge78.loopexit, %bb.b
  %i.g = phi i64 [ %.pre84, %._crit_edge78.loopexit ], [ 0, %bb.b ]
  %i.h = phi ptr [ %.pre, %._crit_edge78.loopexit ], [ %i.c, %bb.b ]
  %i.i = call noundef ptr @_ZN4llvm18ConstantDataVector3getERNS_11LLVMContextENS_8ArrayRefIhEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %i.h, i64 %i.g) #17
  %i.j = load ptr, ptr %4, align 8, !tbaa !468    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %_ZN4llvm11SmallVectorIhLj40EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge78
  call void @free(ptr noundef %i.j) #17
  br label %_ZN4llvm11SmallVectorIhLj40EED2Ev.exit

_ZN4llvm11SmallVectorIhLj40EED2Ev.exit:           ; preds = %._crit_edge78, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.am

bb.d:                                             ; preds = %.lr.ph77, %_ZN4llvm5APIntD2Ev.exit
  %.03675 = phi i32 [ 0, %.lr.ph77 ], [ %i.z, %_ZN4llvm5APIntD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZNK4llvm5APInt11extractBitsEjj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 8, i32 noundef %.03675) #17
  %i.l = load i32, ptr %i.f, align 8, !tbaa !429
  %i.m = icmp ult i32 %i.l, 65
  %i.n = load ptr, ptr %5, align 8
  %spec.select.i = select i1 %i.m, ptr %5, ptr %i.n
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !431
  %i.o = trunc i64 %.0.i to i8                    ; 2 uses
  %i.p = load i64, ptr %i.d, align 8, !tbaa !470  ; 2 uses
  %i.q = load i64, ptr %i.e, align 8, !tbaa !471
  %.not.i = icmp ult i64 %i.p, %i.q
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !472

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIhLb1EE15growAndPushBackEh(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef zeroext %i.o)
  br label %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit

bb.f:                                             ; preds = %bb.d
end_hunk_0
