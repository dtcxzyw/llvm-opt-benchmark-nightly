Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPURegisterBankInfo?download=true
inline.NumInlined: 5206
inline.NumDeleted: 1306
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK4llvm22AMDGPURegisterBankInfo19addMappingFromTableILj4EEENS_11SmallVectorIPKNS_16RegisterBankInfo18InstructionMappingELj4EEERKNS_12MachineInstrERKNS_19MachineRegisterInfoESt5arrayIjXT_EENS_8ArrayRefINS0_14OpRegBankEntryIXT_EEEEE:bb.a
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm6AMDGPUL11ValMappingsE, i64 %i.ee
  br label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit47.2

_ZN4llvm6AMDGPU15getValueMappingEjj.exit47.2:     ; preds = %bb.w, %bb.u
  %.012.i.2 = phi ptr [ %i.ef, %bb.w ], [ @_ZN4llvm6AMDGPUL11ValMappingsE, %bb.u ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.bq
  store ptr %.012.i.2, ptr %i.eg, align 8, !tbaa !97
  %i.eh = getelementptr inbounds nuw i8, ptr %.03957, i64 3
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !83  ; 8 uses
  switch i32 %i.ba, label %switch.lookup175 [
    i32 1, label %bb.x
    i32 96, label %switch.lookup171
    i32 288, label %switch.lookup167
    i32 320, label %switch.lookup163
    i32 352, label %switch.lookup159
    i32 384, label %switch.lookup155
  ]

bb.x:                                             ; preds = %_ZN4llvm6AMDGPU15getValueMappingEjj.exit47.2
  %i.ej = icmp eq i8 %i.ei, 2
  br i1 %i.ej, label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit47.3, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ek = icmp eq i8 %i.ei, 1
  %i.el = select i1 %i.ek, i32 1, i32 12
  br label %bb.z

switch.lookup175:                                 ; preds = %_ZN4llvm6AMDGPU15getValueMappingEjj.exit47.2
  %i.em = zext nneg i8 %i.ei to i64
  %switch.gep176 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm22AMDGPURegisterBankInfo16getSGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE.96, i64 %i.em
  %switch.load177 = load i8, ptr %switch.gep176, align 1
  %switch.ext178 = zext i8 %switch.load177 to i32
  %.reass83.reass = add i32 %switch.ext178, %invariant.op181
  br label %bb.z

switch.lookup155:                                 ; preds = %_ZN4llvm6AMDGPU15getValueMappingEjj.exit47.2
  %i.en = zext nneg i8 %i.ei to i64
  %switch.gep156 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm22AMDGPURegisterBankInfo16getSGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE.95, i64 %i.en
  %switch.load157 = load i8, ptr %switch.gep156, align 1
  %switch.ext158 = zext i8 %switch.load157 to i32
  br label %bb.z

switch.lookup159:                                 ; preds = %_ZN4llvm6AMDGPU15getValueMappingEjj.exit47.2
  %i.eo = zext nneg i8 %i.ei to i64
  %switch.gep160 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm22AMDGPURegisterBankInfo16getSGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE.94, i64 %i.eo
  %switch.load161 = load i8, ptr %switch.gep160, align 1
  %switch.ext162 = zext i8 %switch.load161 to i32
  br label %bb.z

switch.lookup163:                                 ; preds = %_ZN4llvm6AMDGPU15getValueMappingEjj.exit47.2
  %i.ep = zext nneg i8 %i.ei to i64
  %switch.gep164 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm22AMDGPURegisterBankInfo16getSGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE.93, i64 %i.ep
  %switch.load165 = load i8, ptr %switch.gep164, align 1
  %switch.ext166 = zext i8 %switch.load165 to i32
  br label %bb.z

switch.lookup167:                                 ; preds = %_ZN4llvm6AMDGPU15getValueMappingEjj.exit47.2
  %i.eq = zext nneg i8 %i.ei to i64
  %switch.gep168 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm22AMDGPURegisterBankInfo16getSGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE.92, i64 %i.eq
  %switch.load169 = load i8, ptr %switch.gep168, align 1
  %switch.ext170 = zext i8 %switch.load169 to i32
  br label %bb.z

switch.lookup171:                                 ; preds = %_ZN4llvm6AMDGPU15getValueMappingEjj.exit47.2
  %i.er = zext nneg i8 %i.ei to i64
  %switch.gep172 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm22AMDGPURegisterBankInfo16getSGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE, i64 %i.er
  %switch.load173 = load i8, ptr %switch.gep172, align 1
  %switch.ext174 = zext i8 %switch.load173 to i32
  br label %bb.z

bb.z:                                             ; preds = %switch.lookup171, %switch.lookup167, %switch.lookup163, %switch.lookup159, %switch.lookup155, %switch.lookup175, %bb.y
  %.1.i45.3 = phi i32 [ %.reass83.reass, %switch.lookup175 ], [ %i.el, %bb.y ], [ %switch.ext158, %switch.lookup155 ], [ %switch.ext162, %switch.lookup159 ], [ %switch.ext170, %switch.lookup167 ], [ %switch.ext174, %switch.lookup171 ], [ %switch.ext166, %switch.lookup163 ]
  %i.es = zext nneg i32 %.1.i45.3 to i64
  %i.et = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm6AMDGPUL11ValMappingsE, i64 %i.es
  br label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit47.3

_ZN4llvm6AMDGPU15getValueMappingEjj.exit47.3:     ; preds = %bb.z, %bb.x
  %.012.i.3 = phi ptr [ %i.et, %bb.z ], [ @_ZN4llvm6AMDGPUL11ValMappingsE, %bb.x ]
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.bt
  store ptr %.012.i.3, ptr %i.eu, align 8, !tbaa !97
  %i.ev = add i32 %.04056, 1
  %i.ew = getelementptr inbounds nuw i8, ptr %.03957, i64 4
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !555
  %i.ey = sext i16 %i.ex to i32
  %i.ez = call noundef ptr @_ZNK4llvm16RegisterBankInfo18getOperandsMappingERKNS_15SmallVectorImplIPKNS0_12ValueMappingEEE(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull align 8 dereferenceable(16) %7) #21
  %i.fa = load i32, ptr %i.i, align 8, !tbaa !94
  %i.fb = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNK4llvm16RegisterBankInfo25getInstructionMappingImplEbjjPKNS0_12ValueMappingEj(ptr noundef nonnull align 8 dereferenceable(160) %1, i1 noundef zeroext false, i32 noundef %.04056, i32 noundef %i.ey, ptr noundef %i.ez, i32 noundef %i.fa) #21 ; 2 uses
  %i.fc = load i32, ptr %i.b, align 8, !tbaa !94  ; 2 uses
  %i.fd = load i32, ptr %i.c, align 4, !tbaa !95
  %.not.i = icmp ult i32 %i.fc, %i.fd
  br i1 %.not.i, label %bb.n, label %bb.m, !prof !99
}

declare void @_ZNK4llvm16RegisterBankInfo27getInstrAlternativeMappingsERKNS_12MachineInstrE(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.88") align 8, ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm22AMDGPURegisterBankInfo48getInstrAlternativeMappingsIntrinsicWSideEffectsERKNS_12MachineInstrERKNS_19MachineRegisterInfoE(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.88") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(520) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::ArrayRef.160", align 8 ; 3 uses
  %5 = alloca %"class.llvm::ArrayRef.94", align 8 ; 3 uses
  %6 = alloca %"class.llvm::ArrayRef.163", align 8 ; 3 uses
  %i.a = tail call noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #21
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.d = zext i32 %i.a to i64
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !83
  switch i32 %i.g, label %bb.e [
    i32 3475, label %bb.b
    i32 2465, label %bb.c
    i32 2466, label %bb.c
    i32 3496, label %bb.d
    i32 3498, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZZNK4llvm22AMDGPURegisterBankInfo48getInstrAlternativeMappingsIntrinsicWSideEffectsERKNS_12MachineInstrERKNS_19MachineRegisterInfoEE5Table, ptr %4, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.h, align 8, !tbaa !103
  tail call void @_ZNK4llvm22AMDGPURegisterBankInfo19addMappingFromTableILj2EEENS_11SmallVectorIPKNS_16RegisterBankInfo18InstructionMappingELj4EEERKNS_12MachineInstrERKNS_19MachineRegisterInfoESt5arrayIjXT_EENS_8ArrayRefINS0_14OpRegBankEntryIXT_EEEEE(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.88") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(520) %3, i64 12884901890, ptr noundef nonnull byval(%"class.llvm::ArrayRef.160") align 8 %4)
  br label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.a
  store ptr @_ZZNK4llvm22AMDGPURegisterBankInfo48getInstrAlternativeMappingsIntrinsicWSideEffectsERKNS_12MachineInstrERKNS_19MachineRegisterInfoEE5Table_0, ptr %5, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 2, ptr %i.i, align 8, !tbaa !87
  tail call void @_ZNK4llvm22AMDGPURegisterBankInfo19addMappingFromTableILj3EEENS_11SmallVectorIPKNS_16RegisterBankInfo18InstructionMappingELj4EEERKNS_12MachineInstrERKNS_19MachineRegisterInfoESt5arrayIjXT_EENS_8ArrayRefINS0_14OpRegBankEntryIXT_EEEEE(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.88") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(520) %3, i64 8589934592, i32 3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.94") align 8 %5)
  br label %bb.f

bb.d:                                             ; preds = %bb.a, %bb.a
  store ptr @_ZZNK4llvm22AMDGPURegisterBankInfo48getInstrAlternativeMappingsIntrinsicWSideEffectsERKNS_12MachineInstrERKNS_19MachineRegisterInfoEE5Table_1, ptr %6, align 8, !tbaa !106
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 2, ptr %i.j, align 8, !tbaa !107
  tail call void @_ZNK4llvm22AMDGPURegisterBankInfo19addMappingFromTableILj1EEENS_11SmallVectorIPKNS_16RegisterBankInfo18InstructionMappingELj4EEERKNS_12MachineInstrERKNS_19MachineRegisterInfoESt5arrayIjXT_EENS_8ArrayRefINS0_14OpRegBankEntryIXT_EEEEE(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.88") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(520) %3, i32 2, ptr noundef nonnull byval(%"class.llvm::ArrayRef.163") align 8 %6)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZNK4llvm16RegisterBankInfo27getInstrAlternativeMappingsERKNS_12MachineInstrE(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.88") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull align 8 dereferenceable(80) %2) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK4llvm22AMDGPURegisterBankInfo19addMappingFromTableILj2EEENS_11SmallVectorIPKNS_16RegisterBankInfo18InstructionMappingELj4EEERKNS_12MachineInstrERKNS_19MachineRegisterInfoESt5arrayIjXT_EENS_8ArrayRefINS0_14OpRegBankEntryIXT_EEEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.88") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(520) %3, i64 %4, ptr noundef byval(%"class.llvm::ArrayRef.160") align 8 %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.llvm::SmallVector.570", align 8 ; 12 uses
  %.sroa.3.0.extract.shift = lshr i64 %4, 32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !93
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !94
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 4, ptr %i.c, align 4, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.e = load i24, ptr %i.d, align 8              ; 4 uses
  %i.f = zext i24 %i.e to i32
  %i.g = zext i24 %i.e to i64                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !93
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 0, ptr %i.i, align 8, !tbaa !94
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 10, ptr %i.j, align 4, !tbaa !95
  %i.k = icmp eq i24 %i.e, 0
  br i1 %i.k, label %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj10EEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i24 %i.e, 10
  br i1 %i.l, label %_ZN4llvm15SmallVectorImplIPKNS_16RegisterBankInfo12ValueMappingEE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIPKNS_16RegisterBankInfo12ValueMappingEE7reserveEm.exit.i.i.i: ; preds = %bb.b
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull %i.h, i64 noundef %i.g, i64 noundef 8) #21
  %.pre.i.i.i = load i32, ptr %i.i, align 8, !tbaa !94
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64     ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %i.g, %.pre13.i.i.i
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %_ZN4llvm15SmallVectorImplIPKNS_16RegisterBankInfo12ValueMappingEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplIPKNS_16RegisterBankInfo12ValueMappingEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplIPKNS_16RegisterBankInfo12ValueMappingEE7reserveEm.exit.i.i.i
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !93
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIPKNS_16RegisterBankInfo12ValueMappingEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %bb.b
  %i.m = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplIPKNS_16RegisterBankInfo12ValueMappingEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.h, %bb.b ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIPKNS_16RegisterBankInfo12ValueMappingEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %bb.b ] ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %i.m, i64 %.pre-phi.i.i3.i
  %i.o = sub nsw i64 %i.g, %.pre-phi.i.i3.i
  %i.p = shl nsw i64 %i.o, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 0, i64 %i.p, i1 false), !tbaa !97
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplIPKNS_16RegisterBankInfo12ValueMappingEE7reserveEm.exit.i.i.i
  store i32 %i.f, ptr %i.i, align 8, !tbaa !94
  br label %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj10EEC2Em.exit

_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj10EEC2Em.exit: ; preds = %bb.a, %.sink.split.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !82
  %7 = and i64 %4, 4294967295
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %7
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !83
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !52
  %i.x = call { i64, i8 } @_ZNK4llvm16RegisterBankInfo13getSizeInBitsENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(160) %1, i32 %i.v, ptr noundef nonnull align 8 dereferenceable(520) %3, ptr noundef nonnull align 8 dereferenceable(316) %i.w) #21 ; 2 uses
  %.fca.1.extract22 = extractvalue { i64, i8 } %i.x, 1
  %i.y = trunc nuw i8 %.fca.1.extract22 to i1
  br i1 %i.y, label %bb.c, label %_ZNK4llvm8TypeSizecvmEv.exit

.lr.ph:                                           ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.1
  %i.z = zext i32 %i.aj to i64
  br label %bb.d

bb.c:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj10EEC2Em.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj10EEC2Em.exit
  %.fca.0.extract21 = extractvalue { i64, i8 } %i.x, 0
  %i.aa = trunc i64 %.fca.0.extract21 to i32      ; 2 uses
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !82
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %.sroa.3.0.extract.shift
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !83
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !52
  %i.ag = call { i64, i8 } @_ZNK4llvm16RegisterBankInfo13getSizeInBitsENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(160) %1, i32 %i.ae, ptr noundef nonnull align 8 dereferenceable(520) %3, ptr noundef nonnull align 8 dereferenceable(316) %i.af) #21 ; 2 uses
  %.fca.1.extract22.1 = extractvalue { i64, i8 } %i.ag, 1
  %i.ah = trunc nuw i8 %.fca.1.extract22.1 to i1
  br i1 %i.ah, label %bb.c, label %_ZNK4llvm8TypeSizecvmEv.exit.1

_ZNK4llvm8TypeSizecvmEv.exit.1:                   ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %.fca.0.extract21.1 = extractvalue { i64, i8 } %i.ag, 0
  %i.ai = trunc i64 %.fca.0.extract21.1 to i32    ; 2 uses
  %i.aj = call noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #21 ; 2 uses
  %.not52 = icmp eq i32 %i.aj, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm6AMDGPU15getValueMappingEjj.exit, %_ZNK4llvm8TypeSizecvmEv.exit.1
  %i.ak = load ptr, ptr %5, align 8, !tbaa !102   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !103 ; 2 uses
  %.idx = shl nuw nsw i64 %i.am, 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx
  %.not4355 = icmp eq i64 %i.am, 0
  br i1 %.not4355, label %._crit_edge58, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge
  %i.ao = add i32 %i.aa, -1
  %i.ap = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ao, i1 false)
  %i.aq = shl i64 %4, 32
  %i.ar = ashr exact i64 %i.aq, 29
  %i.as = add i32 %i.ai, -1
  %i.at = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.as, i1 false)
  %i.au = ashr i64 %4, 32
  %invariant.op = sub i32 32, %i.ap
  %invariant.op120 = sub i32 32, %i.at
  br label %.preheader

bb.d:                                             ; preds = %.lr.ph, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit ] ; 3 uses
  %i.av = load ptr, ptr %i.q, align 8, !tbaa !82
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !83
  %i.az = load ptr, ptr %i.r, align 8, !tbaa !52
  %i.ba = call { i64, i8 } @_ZNK4llvm16RegisterBankInfo13getSizeInBitsENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(160) %1, i32 %i.ay, ptr noundef nonnull align 8 dereferenceable(520) %3, ptr noundef nonnull align 8 dereferenceable(316) %i.az) #21 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.ba, 1
  %i.bb = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.bb, label %bb.e, label %_ZNK4llvm8TypeSizecvmEv.exit44

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit44:                   ; preds = %bb.d
  %.fca.0.extract = extractvalue { i64, i8 } %i.ba, 0
  %i.bc = trunc i64 %.fca.0.extract to i32        ; 2 uses
  switch i32 %i.bc, label %bb.k [
    i32 1, label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit
    i32 96, label %bb.f
    i32 288, label %bb.g
    i32 320, label %bb.h
    i32 352, label %bb.i
    i32 384, label %bb.j
  ]

bb.f:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit44
  br label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit

bb.g:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit44
  br label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit

bb.h:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit44
  br label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit

bb.i:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit44
  br label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit

bb.j:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit44
  br label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit

bb.k:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit44
  %i.bd = add i32 %i.bc, -1
  %i.be = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bd, i1 false)
  %i.bf = sub nuw nsw i32 44, %i.be
  %i.bg = zext nneg i32 %i.bf to i64
  br label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit

_ZN4llvm6AMDGPU15getValueMappingEjj.exit:         ; preds = %_ZNK4llvm8TypeSizecvmEv.exit44, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.1.i = phi i64 [ %i.bg, %bb.k ], [ 36, %bb.j ], [ 30, %bb.h ], [ 27, %bb.g ], [ 33, %bb.i ], [ 24, %bb.f ], [ 12, %_ZNK4llvm8TypeSizecvmEv.exit44 ]
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm6AMDGPUL11ValMappingsE, i64 %.1.i
  %i.bi = load ptr, ptr %6, align 8, !tbaa !93
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !97
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.z
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !556

.preheader:                                       ; preds = %.preheader.preheader, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_16RegisterBankInfo18InstructionMappingELb1EE9push_backES4_.exit
  %.03957 = phi ptr [ %i.bt, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_16RegisterBankInfo18InstructionMappingELb1EE9push_backES4_.exit ], [ %i.ak, %.preheader.preheader ] ; 4 uses
  %.04056 = phi i32 [ %i.ct, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_16RegisterBankInfo18InstructionMappingELb1EE9push_backES4_.exit ], [ 2, %.preheader.preheader ] ; 2 uses
  %i.bk = load ptr, ptr %6, align 8               ; 2 uses
  %i.bl = load i8, ptr %.03957, align 1, !tbaa !83 ; 8 uses
  switch i32 %i.aa, label %switch.lookup92 [
    i32 1, label %bb.o
    i32 96, label %switch.lookup
    i32 288, label %switch.lookup76
    i32 320, label %switch.lookup80
    i32 352, label %switch.lookup84
    i32 384, label %switch.lookup88
  ]

._crit_edge58:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKNS_16RegisterBankInfo18InstructionMappingELb1EE9push_backES4_.exit, %._crit_edge
  %i.bm = load ptr, ptr %6, align 8, !tbaa !93    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.h
  br i1 %i.bn, label %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj10EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge58
  call void @free(ptr noundef %i.bm) #21
  br label %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj10EED2Ev.exit

_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj10EED2Ev.exit: ; preds = %._crit_edge58, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret void

bb.m:                                             ; preds = %_ZN4llvm6AMDGPU15getValueMappingEjj.exit47.1
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_16RegisterBankInfo18InstructionMappingELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.cz)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_16RegisterBankInfo18InstructionMappingELb1EE9push_backES4_.exit

bb.n:                                             ; preds = %_ZN4llvm6AMDGPU15getValueMappingEjj.exit47.1
  %i.bo = zext i32 %i.da to i64
  %i.bp = load ptr, ptr %0, align 8, !tbaa !93
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo
  store ptr %i.cz, ptr %i.bq, align 1
  %i.br = load i32, ptr %i.b, align 8, !tbaa !94
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.b, align 8, !tbaa !94
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_16RegisterBankInfo18InstructionMappingELb1EE9push_backES4_.exit

_ZN4llvm23SmallVectorTemplateBaseIPKNS_16RegisterBankInfo18InstructionMappingELb1EE9push_backES4_.exit: ; preds = %bb.m, %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.03957, i64 4 ; 2 uses
  %.not43 = icmp eq ptr %i.bt, %i.an
  br i1 %.not43, label %._crit_edge58, label %.preheader

bb.o:                                             ; preds = %.preheader
  %i.bu = icmp eq i8 %i.bl, 2
  br i1 %i.bu, label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit47, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = icmp eq i8 %i.bl, 1
  %i.bw = select i1 %i.bv, i32 1, i32 12
  br label %bb.q

switch.lookup92:                                  ; preds = %.preheader
  %i.bx = zext nneg i8 %i.bl to i64
  %switch.gep93 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm22AMDGPURegisterBankInfo16getSGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE.96, i64 %i.bx
  %switch.load94 = load i8, ptr %switch.gep93, align 1
  %switch.ext95 = zext i8 %switch.load94 to i32
  %.reass.reass = add i32 %switch.ext95, %invariant.op
  br label %bb.q

switch.lookup:                                    ; preds = %.preheader
  %i.by = zext nneg i8 %i.bl to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm22AMDGPURegisterBankInfo16getSGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE, i64 %i.by
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.q

switch.lookup76:                                  ; preds = %.preheader
  %i.bz = zext nneg i8 %i.bl to i64
  %switch.gep77 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm22AMDGPURegisterBankInfo16getSGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE.92, i64 %i.bz
  %switch.load78 = load i8, ptr %switch.gep77, align 1
  %switch.ext79 = zext i8 %switch.load78 to i32
  br label %bb.q

switch.lookup80:                                  ; preds = %.preheader
  %i.ca = zext nneg i8 %i.bl to i64
  %switch.gep81 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm22AMDGPURegisterBankInfo16getSGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE.93, i64 %i.ca
  %switch.load82 = load i8, ptr %switch.gep81, align 1
  %switch.ext83 = zext i8 %switch.load82 to i32
  br label %bb.q

switch.lookup84:                                  ; preds = %.preheader
  %i.cb = zext nneg i8 %i.bl to i64
  %switch.gep85 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm22AMDGPURegisterBankInfo16getSGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE.94, i64 %i.cb
  %switch.load86 = load i8, ptr %switch.gep85, align 1
  %switch.ext87 = zext i8 %switch.load86 to i32
  br label %bb.q

switch.lookup88:                                  ; preds = %.preheader
  %i.cc = zext nneg i8 %i.bl to i64
  %switch.gep89 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm22AMDGPURegisterBankInfo16getSGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE.95, i64 %i.cc
  %switch.load90 = load i8, ptr %switch.gep89, align 1
  %switch.ext91 = zext i8 %switch.load90 to i32
  br label %bb.q

bb.q:                                             ; preds = %switch.lookup88, %switch.lookup84, %switch.lookup80, %switch.lookup76, %switch.lookup, %switch.lookup92, %bb.p
  %.1.i45 = phi i32 [ %.reass.reass, %switch.lookup92 ], [ %i.bw, %bb.p ], [ %switch.ext83, %switch.lookup80 ], [ %switch.ext91, %switch.lookup88 ], [ %switch.ext79, %switch.lookup76 ], [ %switch.ext, %switch.lookup ], [ %switch.ext87, %switch.lookup84 ]
  %i.cd = zext nneg i32 %.1.i45 to i64
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm6AMDGPUL11ValMappingsE, i64 %i.cd
  br label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit47

_ZN4llvm6AMDGPU15getValueMappingEjj.exit47:       ; preds = %bb.o, %bb.q
  %.012.i = phi ptr [ %i.ce, %bb.q ], [ @_ZN4llvm6AMDGPUL11ValMappingsE, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ar
  store ptr %.012.i, ptr %i.cf, align 8, !tbaa !97
  %i.cg = getelementptr inbounds nuw i8, ptr %.03957, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !83  ; 8 uses
  switch i32 %i.ai, label %switch.lookup116 [
    i32 1, label %bb.r
    i32 96, label %switch.lookup112
    i32 288, label %switch.lookup108
    i32 320, label %switch.lookup104
    i32 352, label %switch.lookup100
    i32 384, label %switch.lookup96
  ]

bb.r:                                             ; preds = %_ZN4llvm6AMDGPU15getValueMappingEjj.exit47
  %i.ci = icmp eq i8 %i.ch, 2
  br i1 %i.ci, label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit47.1, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cj = icmp eq i8 %i.ch, 1
  %i.ck = select i1 %i.cj, i32 1, i32 12
  br label %bb.t

switch.lookup116:                                 ; preds = %_ZN4llvm6AMDGPU15getValueMappingEjj.exit47
  %i.cl = zext nneg i8 %i.ch to i64
  %switch.gep117 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm22AMDGPURegisterBankInfo16getSGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE.96, i64 %i.cl
  %switch.load118 = load i8, ptr %switch.gep117, align 1
  %switch.ext119 = zext i8 %switch.load118 to i32
  %.reass74.reass = add i32 %switch.ext119, %invariant.op120
  br label %bb.t

switch.lookup96:                                  ; preds = %_ZN4llvm6AMDGPU15getValueMappingEjj.exit47
  %i.cm = zext nneg i8 %i.ch to i64
  %switch.gep97 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm22AMDGPURegisterBankInfo16getSGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE.95, i64 %i.cm
  %switch.load98 = load i8, ptr %switch.gep97, align 1
  %switch.ext99 = zext i8 %switch.load98 to i32
  br label %bb.t

switch.lookup100:                                 ; preds = %_ZN4llvm6AMDGPU15getValueMappingEjj.exit47
  %i.cn = zext nneg i8 %i.ch to i64
  %switch.gep101 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm22AMDGPURegisterBankInfo16getSGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE.94, i64 %i.cn
  %switch.load102 = load i8, ptr %switch.gep101, align 1
  %switch.ext103 = zext i8 %switch.load102 to i32
  br label %bb.t

switch.lookup104:                                 ; preds = %_ZN4llvm6AMDGPU15getValueMappingEjj.exit47
  %i.co = zext nneg i8 %i.ch to i64
  %switch.gep105 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm22AMDGPURegisterBankInfo16getSGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE.93, i64 %i.co
  %switch.load106 = load i8, ptr %switch.gep105, align 1
  %switch.ext107 = zext i8 %switch.load106 to i32
  br label %bb.t

switch.lookup108:                                 ; preds = %_ZN4llvm6AMDGPU15getValueMappingEjj.exit47
  %i.cp = zext nneg i8 %i.ch to i64
  %switch.gep109 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm22AMDGPURegisterBankInfo16getSGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE.92, i64 %i.cp
  %switch.load110 = load i8, ptr %switch.gep109, align 1
  %switch.ext111 = zext i8 %switch.load110 to i32
  br label %bb.t

switch.lookup112:                                 ; preds = %_ZN4llvm6AMDGPU15getValueMappingEjj.exit47
  %i.cq = zext nneg i8 %i.ch to i64
  %switch.gep113 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm22AMDGPURegisterBankInfo16getSGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE, i64 %i.cq
  %switch.load114 = load i8, ptr %switch.gep113, align 1
  %switch.ext115 = zext i8 %switch.load114 to i32
  br label %bb.t

bb.t:                                             ; preds = %switch.lookup112, %switch.lookup108, %switch.lookup104, %switch.lookup100, %switch.lookup96, %switch.lookup116, %bb.s
  %.1.i45.1 = phi i32 [ %.reass74.reass, %switch.lookup116 ], [ %i.ck, %bb.s ], [ %switch.ext99, %switch.lookup96 ], [ %switch.ext103, %switch.lookup100 ], [ %switch.ext111, %switch.lookup108 ], [ %switch.ext115, %switch.lookup112 ], [ %switch.ext107, %switch.lookup104 ]
  %i.cr = zext nneg i32 %.1.i45.1 to i64
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm6AMDGPUL11ValMappingsE, i64 %i.cr
  br label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit47.1

_ZN4llvm6AMDGPU15getValueMappingEjj.exit47.1:     ; preds = %bb.t, %bb.r
  %.012.i.1 = phi ptr [ %i.cs, %bb.t ], [ @_ZN4llvm6AMDGPUL11ValMappingsE, %bb.r ]
  %8 = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.au
  store ptr %.012.i.1, ptr %8, align 8, !tbaa !97
  %i.ct = add i32 %.04056, 1
  %i.cu = getelementptr inbounds nuw i8, ptr %.03957, i64 2
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !558
  %i.cw = sext i16 %i.cv to i32
  %i.cx = call noundef ptr @_ZNK4llvm16RegisterBankInfo18getOperandsMappingERKNS_15SmallVectorImplIPKNS0_12ValueMappingEEE(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull align 8 dereferenceable(16) %6) #21
  %i.cy = load i32, ptr %i.i, align 8, !tbaa !94
  %i.cz = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNK4llvm16RegisterBankInfo25getInstructionMappingImplEbjjPKNS0_12ValueMappingEj(ptr noundef nonnull align 8 dereferenceable(160) %1, i1 noundef zeroext false, i32 noundef %.04056, i32 noundef %i.cw, ptr noundef %i.cx, i32 noundef %i.cy) #21 ; 2 uses
  %i.da = load i32, ptr %i.b, align 8, !tbaa !94  ; 2 uses
  %i.db = load i32, ptr %i.c, align 4, !tbaa !95
  %.not.i = icmp ult i32 %i.da, %i.db
  br i1 %.not.i, label %bb.n, label %bb.m, !prof !99
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK4llvm22AMDGPURegisterBankInfo19addMappingFromTableILj1EEENS_11SmallVectorIPKNS_16RegisterBankInfo18InstructionMappingELj4EEERKNS_12MachineInstrERKNS_19MachineRegisterInfoESt5arrayIjXT_EENS_8ArrayRefINS0_14OpRegBankEntryIXT_EEEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.88") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(520) %3, i32 %4, ptr noundef byval(%"class.llvm::ArrayRef.163") align 8 %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.llvm::SmallVector.570", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !93
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !94
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 4, ptr %i.c, align 4, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.e = load i24, ptr %i.d, align 8              ; 4 uses
  %i.f = zext i24 %i.e to i32
  %i.g = zext i24 %i.e to i64                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !93
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 0, ptr %i.i, align 8, !tbaa !94
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 10, ptr %i.j, align 4, !tbaa !95
  %i.k = icmp eq i24 %i.e, 0
  br i1 %i.k, label %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj10EEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i24 %i.e, 10
  br i1 %i.l, label %_ZN4llvm15SmallVectorImplIPKNS_16RegisterBankInfo12ValueMappingEE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIPKNS_16RegisterBankInfo12ValueMappingEE7reserveEm.exit.i.i.i: ; preds = %bb.b
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull %i.h, i64 noundef %i.g, i64 noundef 8) #21
  %.pre.i.i.i = load i32, ptr %i.i, align 8, !tbaa !94
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64     ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %i.g, %.pre13.i.i.i
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %_ZN4llvm15SmallVectorImplIPKNS_16RegisterBankInfo12ValueMappingEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplIPKNS_16RegisterBankInfo12ValueMappingEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplIPKNS_16RegisterBankInfo12ValueMappingEE7reserveEm.exit.i.i.i
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !93
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIPKNS_16RegisterBankInfo12ValueMappingEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %bb.b
  %i.m = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplIPKNS_16RegisterBankInfo12ValueMappingEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.h, %bb.b ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIPKNS_16RegisterBankInfo12ValueMappingEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %bb.b ] ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %i.m, i64 %.pre-phi.i.i3.i
  %i.o = sub nsw i64 %i.g, %.pre-phi.i.i3.i
  %i.p = shl nsw i64 %i.o, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 0, i64 %i.p, i1 false), !tbaa !97
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplIPKNS_16RegisterBankInfo12ValueMappingEE7reserveEm.exit.i.i.i
  store i32 %i.f, ptr %i.i, align 8, !tbaa !94
  br label %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj10EEC2Em.exit

_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj10EEC2Em.exit: ; preds = %bb.a, %.sink.split.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.r = zext i32 %4 to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !82
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !83
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.y = call { i64, i8 } @_ZNK4llvm16RegisterBankInfo13getSizeInBitsENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(160) %1, i32 %i.w, ptr noundef nonnull align 8 dereferenceable(520) %3, ptr noundef nonnull align 8 dereferenceable(316) %i.x) #21 ; 2 uses
  %.fca.1.extract22 = extractvalue { i64, i8 } %i.y, 1
  %i.z = trunc nuw i8 %.fca.1.extract22 to i1
  br i1 %i.z, label %bb.c, label %_ZNK4llvm8TypeSizecvmEv.exit

.lr.ph:                                           ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.aa = zext i32 %i.ac to i64
  br label %bb.d

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj10EEC2Em.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj10EEC2Em.exit
  %.fca.0.extract21.le = extractvalue { i64, i8 } %i.y, 0
  %i.ab = trunc i64 %.fca.0.extract21.le to i32   ; 2 uses
  %i.ac = call noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #21 ; 2 uses
  %.not55 = icmp eq i32 %i.ac, 0
  br i1 %.not55, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm6AMDGPU15getValueMappingEjj.exit, %_ZNK4llvm8TypeSizecvmEv.exit
  %i.ad = load ptr, ptr %5, align 8, !tbaa !106   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !107 ; 2 uses
  %.idx = shl nuw nsw i64 %i.af, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx
  %.not4387 = icmp eq i64 %i.af, 0
  br i1 %.not4387, label %._crit_edge95, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.ah = add i32 %i.ab, -1
  %i.ai = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ah, i1 false)
  %i.aj = sext i32 %4 to i64
  br label %.preheader

bb.d:                                             ; preds = %.lr.ph, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit ] ; 3 uses
  %i.ak = load ptr, ptr %i.q, align 8, !tbaa !82
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !83
  %i.ao = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.ap = call { i64, i8 } @_ZNK4llvm16RegisterBankInfo13getSizeInBitsENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(160) %1, i32 %i.an, ptr noundef nonnull align 8 dereferenceable(520) %3, ptr noundef nonnull align 8 dereferenceable(316) %i.ao) #21 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.ap, 1
  %i.aq = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.aq, label %bb.e, label %_ZNK4llvm8TypeSizecvmEv.exit44

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit44:                   ; preds = %bb.d
  %.fca.0.extract = extractvalue { i64, i8 } %i.ap, 0
  %i.ar = trunc i64 %.fca.0.extract to i32        ; 2 uses
  switch i32 %i.ar, label %bb.k [
    i32 1, label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit
    i32 96, label %bb.f
    i32 288, label %bb.g
    i32 320, label %bb.h
    i32 352, label %bb.i
    i32 384, label %bb.j
  ]

bb.f:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit44
  br label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit

bb.g:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit44
  br label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit

bb.h:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit44
  br label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit

bb.i:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit44
  br label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit

bb.j:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit44
  br label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit

bb.k:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit44
  %i.as = add i32 %i.ar, -1
  %i.at = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.as, i1 false)
  %i.au = sub nuw nsw i32 44, %i.at
  %i.av = zext nneg i32 %i.au to i64
  br label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit

_ZN4llvm6AMDGPU15getValueMappingEjj.exit:         ; preds = %_ZNK4llvm8TypeSizecvmEv.exit44, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.1.i = phi i64 [ %i.av, %bb.k ], [ 36, %bb.j ], [ 30, %bb.h ], [ 27, %bb.g ], [ 33, %bb.i ], [ 24, %bb.f ], [ 12, %_ZNK4llvm8TypeSizecvmEv.exit44 ]
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm6AMDGPUL11ValMappingsE, i64 %.1.i
  %i.ax = load ptr, ptr %6, align 8, !tbaa !93
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !97
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.aa
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !559

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_16RegisterBankInfo18InstructionMappingELb1EE9push_backES4_.exit
  %.03989 = phi ptr [ %i.ad, %.preheader.lr.ph ], [ %i.cf, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_16RegisterBankInfo18InstructionMappingELb1EE9push_backES4_.exit ] ; 3 uses
  %.04088 = phi i32 [ 2, %.preheader.lr.ph ], [ %i.br, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_16RegisterBankInfo18InstructionMappingELb1EE9push_backES4_.exit ] ; 2 uses
  %i.az = load ptr, ptr %6, align 8
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.aj
  %i.bb = load i8, ptr %.03989, align 1, !tbaa !83 ; 8 uses
  switch i32 %i.ab, label %switch.lookup117 [
    i32 1, label %.preheader.split.us
    i32 96, label %switch.lookup
    i32 288, label %switch.lookup101
    i32 320, label %switch.lookup105
    i32 352, label %switch.lookup109
    i32 384, label %switch.lookup113
  ]

.preheader.split.us:                              ; preds = %.preheader
  %i.bc = icmp eq i8 %i.bb, 2
  %i.bd = icmp eq i8 %i.bb, 1
  %i.be = select i1 %i.bd, i64 1, i64 12
  %.012.i.us.idx = select i1 %i.bc, i64 0, i64 %i.be
  %.012.i.us = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm6AMDGPUL11ValMappingsE, i64 %.012.i.us.idx
  br label %.split

switch.lookup:                                    ; preds = %.preheader
  %i.bf = zext nneg i8 %i.bb to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm22AMDGPURegisterBankInfo16getSGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE, i64 %i.bf
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm6AMDGPUL11ValMappingsE, i64 %switch.ext
  br label %.split

end_hunk_0
