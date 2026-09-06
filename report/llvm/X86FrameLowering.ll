Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86FrameLowering?download=true
inline.NumInlined: 5118
inline.NumDeleted: 1851
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK4llvm16X86FrameLowering21adjustForHiPEPrologueERNS_15MachineFunctionERNS_17MachineBasicBlockE:bb.a
  br i1 %i.lk, label %bb.ah, label %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i159

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #25
  unreachable

_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i159: ; preds = %bb.ag
  %i.ll = ashr exact i64 %i.lj, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i160 = call i64 @llvm.umax.i64(i64 %i.ll, i64 1)
  %i.lm = add nsw i64 %.sroa.speculated.i.i.i.i160, %i.ll ; 2 uses
  %i.ln = icmp ult i64 %i.lm, %i.ll
  %i.lo = call i64 @llvm.umin.i64(i64 %i.lm, i64 576460752303423487)
  %i.lp = select i1 %i.ln, i64 576460752303423487, i64 %i.lo ; 3 uses
  %.not.i.i.i.i161 = icmp ne i64 %i.lp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i161)
  %i.lq = shl nuw nsw i64 %i.lp, 4
  %i.lr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lq) #26 ; 5 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ls, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0254.0312, i64 16, i1 false), !tbaa.struct !774
  %.not10.i.i.i.i.i.i162 = icmp eq ptr %i.lg, %i.lc
  br i1 %.not10.i.i.i.i.i.i162, label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i167, label %.lr.ph.i.i.i.i.i.i163

.lr.ph.i.i.i.i.i.i163:                            ; preds = %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i159, %.lr.ph.i.i.i.i.i.i163
  %.012.i.i.i.i.i.i164 = phi ptr [ %i.lu, %.lr.ph.i.i.i.i.i.i163 ], [ %i.lr, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i159 ] ; 2 uses
  %.0911.i.i.i.i.i.i165 = phi ptr [ %i.lt, %.lr.ph.i.i.i.i.i.i163 ], [ %i.lg, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i159 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i164, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i165, i64 16, i1 false), !tbaa.struct !774, !alias.scope !2152
  %i.lt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i165, i64 16 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i164, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i166 = icmp eq ptr %i.lt, %i.lc
  br i1 %.not.i.i.i.i.i.i166, label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i167, label %.lr.ph.i.i.i.i.i.i163, !llvm.loop !14

_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i167: ; preds = %.lr.ph.i.i.i.i.i.i163, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i159
  %.0.lcssa.i.i.i.i.i.i168 = phi ptr [ %i.lr, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i159 ], [ %i.lu, %.lr.ph.i.i.i.i.i.i163 ]
  %i.lv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i168, i64 16
  %.not.i23.i.i.i169 = icmp eq ptr %i.lg, null
  br i1 %.not.i23.i.i.i169, label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i170, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i167
  %i.lw = load ptr, ptr %i.de, align 8, !tbaa !772
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = sub i64 %i.lx, %i.li
  call void @_ZdlPvm(ptr noundef nonnull %i.lg, i64 noundef %i.ly) #27
  br label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i170

_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i170: ; preds = %bb.ai, %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i167
  store ptr %i.lr, ptr %i.dc, align 8, !tbaa !773
  store ptr %i.lv, ptr %i.dd, align 8, !tbaa !771
  %i.lz = getelementptr inbounds nuw [16 x i8], ptr %i.lr, i64 %i.lp
  store ptr %i.lz, ptr %i.de, align 8, !tbaa !772
  br label %_ZN4llvm17MachineBasicBlock9addLiveInERKNS0_16RegisterMaskPairE.exit171

_ZN4llvm17MachineBasicBlock9addLiveInERKNS0_16RegisterMaskPairE.exit171: ; preds = %bb.af, %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i170
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.0254.0312, i64 16 ; 2 uses
  %.not288 = icmp eq ptr %i.ma, %i.cy
  br i1 %.not288, label %._crit_edge315, label %bb.aa

bb.aj:                                            ; preds = %_ZN4llvm7BuildMIEPNS_17MachineBasicBlockERKNS_10MIMetadataERKNS_11MCInstrDescE.exit157, %bb.n
  ret void
}

declare noundef ptr @_ZNK4llvm6Module16getNamedMetadataENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288), ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZL14getHiPELiteralPN4llvm11NamedMDNodeENS_9StringRefE(ptr noundef nonnull %0, ptr %1, i64 %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 3 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = tail call noundef i32 @_ZNK4llvm11NamedMDNode14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(64) %0) #24 ; 2 uses
  %.not61 = icmp eq i32 %i.a, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_5ValueEEEDaPT0_.exit.thread
  %.02462 = phi i32 [ %i.ac, %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_5ValueEEEDaPT0_.exit.thread ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.c = tail call noundef ptr @_ZNK4llvm11NamedMDNode10getOperandEj(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %.02462) #24 ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = and i64 %i.e, 2
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread

_ZNK4llvm6MDNode14getNumOperandsEv.exit:          ; preds = %.lr.ph
  %i.g = and i64 %i.e, 960
  %.not32 = icmp eq i64 %i.g, 128
  br i1 %.not32, label %bb.b, label %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_5ValueEEEDaPT0_.exit.thread

_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread:   ; preds = %.lr.ph
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !481
  %.not3244 = icmp eq i32 %i.i, 2
  br i1 %.not3244, label %.thread, label %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_5ValueEEEDaPT0_.exit.thread

.thread:                                          ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread
  %i.j = getelementptr inbounds i8, ptr %i.c, i64 -32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !480
  br label %_ZNK4llvm6MDNode10getOperandEj.exit37

bb.b:                                             ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit
  %i.l = lshr i64 %i.e, 2
  %i.m = and i64 %i.l, 15
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n
  br label %_ZNK4llvm6MDNode10getOperandEj.exit37

_ZNK4llvm6MDNode10getOperandEj.exit37:            ; preds = %.thread, %bb.b
  %spec.select.i.i.i47.in = phi ptr [ %i.o, %bb.b ], [ %i.k, %.thread ] ; 2 uses
  %spec.select.i.i.i47 = load ptr, ptr %spec.select.i.i.i47.in, align 8, !tbaa !2158 ; 2 uses
  %.in = load i8, ptr %spec.select.i.i.i47, align 4, !tbaa !2160
  %i.p = icmp eq i8 %.in, 0
  %i.q = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i47.in, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !2158 ; 2 uses
  %i.s = load i8, ptr %i.r, align 4, !tbaa !2160
  %i.t = add i8 %i.s, -1
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.t, 2
  %or.cond = and i1 %i.p, %spec.select.i.i.i.i.i.i.i.i.i
  br i1 %or.cond, label %bb.c, label %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_5ValueEEEDaPT0_.exit.thread

bb.c:                                             ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit37
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2165 ; 4 uses
  %.not.i.i39 = icmp eq ptr %i.v, null
  br i1 %.not.i.i39, label %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_5ValueEEEDaPT0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i8, ptr %i.v, align 8, !tbaa !892
  %i.x = icmp eq i8 %i.w, 5
  br i1 %i.x, label %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_5ValueEEEDaPT0_.exit, label %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_5ValueEEEDaPT0_.exit.thread

_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_5ValueEEEDaPT0_.exit: ; preds = %bb.d
  %i.y = tail call { ptr, i64 } @_ZNK4llvm8MDString9getStringEv(ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i.i.i47) #24 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  %.not.i = icmp eq i64 %i.aa, %2
  br i1 %.not.i, label %bb.e, label %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_5ValueEEEDaPT0_.exit.thread

bb.e:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_5ValueEEEDaPT0_.exit
  br i1 %i.b, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.e
  %bcmp.i = tail call i32 @bcmp(ptr %i.z, ptr %1, i64 %2)
  %i.ab = icmp eq i32 %bcmp.i, 0
  br i1 %i.ab, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_5ValueEEEDaPT0_.exit.thread

_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_5ValueEEEDaPT0_.exit.thread: ; preds = %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_5ValueEEEDaPT0_.exit, %bb.c, %bb.d, %_ZNK4llvm6MDNode14getNumOperandsEv.exit, %_ZNK4llvm6MDNode10getOperandEj.exit37, %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread
  %i.ac = add nuw nsw i32 %.02462, 1              ; 2 uses
  %.not = icmp eq i32 %i.ac, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2153

._crit_edge:                                      ; preds = %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_5ValueEEEDaPT0_.exit.thread, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 3, ptr %i.ad, align 8, !tbaa !895, !alias.scope !2166
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 5, ptr %i.ae, align 1, !tbaa !896, !alias.scope !2166
  store ptr @.str.25, ptr %4, align 8, !tbaa !313, !alias.scope !2166
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %1, ptr %i.af, align 8, !tbaa !313, !alias.scope !2166
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %2, ptr %i.ag, align 8, !tbaa !313, !alias.scope !2166
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.ai, align 1, !tbaa !896
  store ptr @.str.26, ptr %5, align 8, !tbaa !313
  store i8 3, ptr %i.ah, align 8, !tbaa !895
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %3, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr noundef nonnull align 8 dereferenceable(34) %5)
  call void @_ZN4llvm18report_fatal_errorERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(34) %3, i1 noundef zeroext true) #25
  unreachable

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %bb.e, %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !2168
  %i.am = icmp ult i32 %i.al, 65
  %i.an = load ptr, ptr %i.aj, align 8
  %spec.select.i.i = select i1 %i.am, ptr %i.aj, ptr %i.an
  %.0.i.i42 = load i64, ptr %spec.select.i.i, align 8, !tbaa !313
  %i.ao = trunc i64 %.0.i.i42 to i32
  ret i32 %i.ao
}

declare { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef i64 @_ZNK4llvm9StringRef13find_first_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16X86FrameLowering19adjustStackWithPopsERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 7 uses
  %5 = alloca %"class.llvm::MIMetadata", align 8  ; 5 uses
  %i.b = icmp slt i32 %4, 1
  br i1 %i.b, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !320  ; 3 uses
  %i.e = urem i32 %4, %i.d
  %i.f = udiv exact i32 %4, %i.d                  ; 6 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %6 = icmp ne i32 %4, %i.d
  %7 = icmp ne i32 %i.f, 2
  %or.cond = select i1 %6, i1 %7, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %2, %i.h
  %or.cond98 = select i1 %or.cond, i1 true, i1 %i.i
  br i1 %or.cond98, label %bb.m, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %.0.copyload.i.i.i.i.i.i.i.i.i8.i = load i64, ptr %2, align 8
  %i.j = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i8.i, -8
  %i.k = inttoptr i64 %i.j to ptr                 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i.i = load i64, ptr %i.k, align 8
  %i.l = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i.i, 4
  %.not.i5.i.i.i = icmp ne i64 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !470  ; 2 uses
  %i.o = and i32 %i.n, 4
  %.not45.i.i.i.i = icmp eq i32 %i.o, 0
  %or.cond139 = select i1 %.not.i5.i.i.i, i1 true, i1 %.not45.i.i.i.i
  br i1 %or.cond139, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i: ; preds = %.lr.ph.i.preheader, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.q, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i ], [ %i.k, %.lr.ph.i.preheader ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i, align 8
  %i.p = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i, -8
  %i.q = inttoptr i64 %i.p to ptr                 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !470  ; 2 uses
  %i.t = and i32 %i.s, 4
  %.not4.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i, !llvm.loop !4

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i, %.lr.ph.i.preheader
  %i.u = phi i32 [ %i.n, %.lr.ph.i.preheader ], [ %i.s, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i ] ; 2 uses
  %.sroa.0.1.i.i.i9.i = phi ptr [ %i.k, %.lr.ph.i.preheader ], [ %i.q, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i ] ; 5 uses
  %i.v = and i32 %i.u, 12
  %i.w = icmp eq i32 %i.v, 0
  %i.x = and i32 %i.u, 4
  %i.y = icmp ne i32 %i.x, 0
  %or.cond.i.i = or i1 %i.w, %i.y
  br i1 %or.cond.i.i, label %.split, label %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit

.split:                                           ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i9.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !869
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !871
  %i.ad = and i64 %i.ac, 128
  %.not101 = icmp eq i64 %i.ad, 0
  br i1 %.not101, label %bb.m, label %bb.d

_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i
  %i.ae = tail call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.1.i.i.i9.i, i64 noundef 128, i32 noundef 1) #24
  br i1 %i.ae, label %bb.d, label %bb.m

bb.d:                                             ; preds = %.split, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i9.i, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !471 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = and i32 %i.ai, 255
  %i.ak = icmp eq i32 %i.aj, 12
  br i1 %i.ak, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.am = load i8, ptr %i.al, align 4, !tbaa !321, !range !311, !noundef !156
  %i.an = trunc nuw i8 %i.am to i1                ; 2 uses
  %. = select i1 %i.an, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 6016), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2880) ; 2 uses
  %i.ao = load i32, ptr %., align 8, !tbaa !2189
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %., i64 %i.ap ; 2 uses
  %.val = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 6032), align 8
  %.val102 = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2896), align 8
  %i.ar = select i1 %i.an, i16 %.val, i16 %.val102 ; 2 uses
  %i.as = zext i16 %i.ar to i64
  %.idx = shl nuw nsw i64 %i.as, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx
  %.not70110 = icmp eq i16 %i.ar, 0
  br i1 %.not70110, label %.loopexit, label %.lr.ph113

.lr.ph113:                                        ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !458
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !770
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 392
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i9.i, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph113, %_ZNK4llvm14MCRegisterInfo22isSuperOrSubRegisterEqENS_10MCRegisterES1_.exit.thread91
  %.056112 = phi i32 [ 0, %.lr.ph113 ], [ %.258.ph, %_ZNK4llvm14MCRegisterInfo22isSuperOrSubRegisterEqENS_10MCRegisterES1_.exit.thread91 ] ; 7 uses
  %.065111 = phi ptr [ %i.aq, %.lr.ph113 ], [ %i.dx, %_ZNK4llvm14MCRegisterInfo22isSuperOrSubRegisterEqENS_10MCRegisterES1_.exit.thread91 ] ; 2 uses
  %i.bc = load i16, ptr %.065111, align 2, !tbaa !889 ; 3 uses
  %i.bd = zext i16 %i.bc to i32                   ; 7 uses
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !313
  %i.bf = lshr i32 %i.bd, 5
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !325
  %i.bj = and i32 %i.bd, 31
  %i.bk = shl nuw i32 1, %i.bj
  %i.bl = and i32 %i.bk, %i.bi
  %.not.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i, label %bb.g, label %_ZNK4llvm14MCRegisterInfo22isSuperOrSubRegisterEqENS_10MCRegisterES1_.exit.thread91

bb.g:                                             ; preds = %bb.f
  %i.bm = and i32 %i.bd, 63
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = shl nuw i64 1, %i.bn
  %i.bp = lshr i32 %i.bd, 6
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = load ptr, ptr %i.az, align 8, !tbaa !480
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bq
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !644
  %i.bu = and i64 %i.bt, %i.bo
  %.not103 = icmp eq i64 %i.bu, 0
  br i1 %.not103, label %bb.h, label %_ZNK4llvm14MCRegisterInfo22isSuperOrSubRegisterEqENS_10MCRegisterES1_.exit.thread91

bb.h:                                             ; preds = %bb.g
  %i.bv = load ptr, ptr %i.af, align 8, !tbaa !471 ; 2 uses
  %i.bw = load i24, ptr %i.ba, align 8
  %i.bx = zext i24 %i.bw to i64                   ; 2 uses
  %i.by = tail call noundef i32 @_ZNK4llvm12MachineInstr22getNumExplicitOperandsEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.1.i.i.i9.i) #24
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %i.bx
  %.not71108 = icmp samesign eq i64 %i.bz, %i.bx
  br i1 %.not71108, label %_ZNK4llvm14MCRegisterInfo22isSuperOrSubRegisterEqENS_10MCRegisterES1_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %i.bz
  %i.cc = zext i16 %i.bc to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %.loopexit105
  %.061109 = phi ptr [ %i.cb, %.lr.ph ], [ %i.ds, %.loopexit105 ] ; 3 uses
  %i.cd = load i32, ptr %.061109, align 8
  %i.ce = and i32 %i.cd, 16777471
  %or.cond100 = icmp eq i32 %i.ce, 16777216
  br i1 %or.cond100, label %bb.j, label %.loopexit105

bb.j:                                             ; preds = %bb.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.061109, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !313 ; 4 uses
  %i.ch = icmp eq i32 %i.cg, %i.bd
  br i1 %i.ch, label %_ZNK4llvm14MCRegisterInfo22isSuperOrSubRegisterEqENS_10MCRegisterES1_.exit.thread91, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ci = load ptr, ptr %i.bb, align 8, !tbaa !317 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !2190, !noalias !2191 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !2192, !noalias !2191 ; 2 uses
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.cc
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !2194, !noalias !2191
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %i.cq ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !889, !noalias !2191 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %i.cs, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK4llvm14MCRegisterInfo15isSubRegisterEqENS_10MCRegisterES1_.exit.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i:                 ; preds = %bb.k
  %i.ct = zext i16 %i.cs to i32
  %i.cu = add nuw nsw i32 %i.ct, %i.bd
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i
  %.pn.i.i.i.i = phi ptr [ %i.cy, %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i.i ], [ %i.cr, %.lr.ph.i.i.i.i.preheader.i.i.i.i ]
  %i.cv = phi i32 [ %i.db, %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i.i ], [ %i.cu, %.lr.ph.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %i.cw = and i32 %i.cv, 65535
  %i.cx = icmp eq i32 %i.cg, %i.cw
  br i1 %i.cx, label %_ZNK4llvm14MCRegisterInfo22isSuperOrSubRegisterEqENS_10MCRegisterES1_.exit.thread91, label %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i.i

_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 2 ; 2 uses
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !889, !noalias !2195 ; 2 uses
  %i.da = zext i16 %i.cz to i32
  %i.db = add i32 %i.cv, %i.da
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.cz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK4llvm14MCRegisterInfo15isSubRegisterEqENS_10MCRegisterES1_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2177

_ZNK4llvm14MCRegisterInfo15isSubRegisterEqENS_10MCRegisterES1_.exit.i: ; preds = %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i.i, %bb.k
  %i.dc = zext i32 %i.cg to i64
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load i32, ptr %i.de, align 4, !tbaa !2194, !noalias !2196
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %i.dg ; 2 uses
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !889, !noalias !2196 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %i.di, 0
  br i1 %.not.i.i.i.i.i.i, label %.loopexit105, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNK4llvm14MCRegisterInfo15isSubRegisterEqENS_10MCRegisterES1_.exit.i
  %i.dj = zext i16 %i.di to i32
  %i.dk = add i32 %i.cg, %i.dj
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.pn.i.i = phi ptr [ %i.do, %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i ], [ %i.dh, %.lr.ph.i.i.i.i.preheader.i.i ]
  %i.dl = phi i32 [ %i.dr, %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i ], [ %i.dk, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.dm = trunc i32 %i.dl to i16
  %i.dn = icmp eq i16 %i.bc, %i.dm
  br i1 %i.dn, label %_ZNK4llvm14MCRegisterInfo22isSuperOrSubRegisterEqENS_10MCRegisterES1_.exit.thread91, label %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i

_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 2 ; 2 uses
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !889, !noalias !2197 ; 2 uses
  %i.dq = zext i16 %i.dp to i32
  %i.dr = add i32 %i.dl, %i.dq
  %.not.i.i.i.i.i.i.i8.i = icmp eq i16 %i.dp, 0
  br i1 %.not.i.i.i.i.i.i.i8.i, label %.loopexit105, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2177

.loopexit105:                                     ; preds = %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i, %bb.i, %_ZNK4llvm14MCRegisterInfo15isSubRegisterEqENS_10MCRegisterES1_.exit.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.061109, i64 32 ; 2 uses
  %.not71 = icmp eq ptr %i.ds, %i.ca
  br i1 %.not71, label %_ZNK4llvm14MCRegisterInfo22isSuperOrSubRegisterEqENS_10MCRegisterES1_.exit, label %bb.i

_ZNK4llvm14MCRegisterInfo22isSuperOrSubRegisterEqENS_10MCRegisterES1_.exit: ; preds = %.loopexit105, %bb.h
  %i.dt = add i32 %.056112, 1                     ; 2 uses
  %i.du = zext i32 %.056112 to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.du
  store i32 %i.bd, ptr %i.dv, align 4, !tbaa !325
  %i.dw = icmp eq i32 %i.dt, %i.f
  br i1 %i.dw, label %_ZNK4llvm14MCRegisterInfo22isSuperOrSubRegisterEqENS_10MCRegisterES1_.exit._crit_edge, label %_ZNK4llvm14MCRegisterInfo22isSuperOrSubRegisterEqENS_10MCRegisterES1_.exit.thread91

_ZNK4llvm14MCRegisterInfo22isSuperOrSubRegisterEqENS_10MCRegisterES1_.exit.thread91: ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %bb.f, %bb.g, %_ZNK4llvm14MCRegisterInfo22isSuperOrSubRegisterEqENS_10MCRegisterES1_.exit
  %.258.ph = phi i32 [ %.056112, %bb.f ], [ %i.dt, %_ZNK4llvm14MCRegisterInfo22isSuperOrSubRegisterEqENS_10MCRegisterES1_.exit ], [ %.056112, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.056112, %bb.g ], [ %.056112, %.lr.ph.i.i.i.i.i.i ], [ %.056112, %bb.j ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.065111, i64 2 ; 2 uses
  %.not70 = icmp eq ptr %i.dx, %i.at
  br i1 %.not70, label %_ZNK4llvm14MCRegisterInfo22isSuperOrSubRegisterEqENS_10MCRegisterES1_.exit._crit_edge, label %bb.f

_ZNK4llvm14MCRegisterInfo22isSuperOrSubRegisterEqENS_10MCRegisterES1_.exit._crit_edge: ; preds = %_ZNK4llvm14MCRegisterInfo22isSuperOrSubRegisterEqENS_10MCRegisterES1_.exit.thread91, %_ZNK4llvm14MCRegisterInfo22isSuperOrSubRegisterEqENS_10MCRegisterES1_.exit
  %.359 = phi i32 [ %i.f, %_ZNK4llvm14MCRegisterInfo22isSuperOrSubRegisterEqENS_10MCRegisterES1_.exit ], [ %.258.ph, %_ZNK4llvm14MCRegisterInfo22isSuperOrSubRegisterEqENS_10MCRegisterES1_.exit.thread91 ] ; 3 uses
  %.not140 = icmp eq i32 %.359, 0
  br i1 %.not140, label %.loopexit, label %.preheader104

.preheader104:                                    ; preds = %_ZNK4llvm14MCRegisterInfo22isSuperOrSubRegisterEqENS_10MCRegisterES1_.exit._crit_edge
  %i.dy = icmp ult i32 %.359, %i.f
  br i1 %i.dy, label %.lr.ph116, label %.lr.ph118

.lr.ph116:                                        ; preds = %.preheader104
  %i.dz = load i32, ptr %i.a, align 4, !tbaa !325 ; 2 uses
  %i.ea = zext i32 %.359 to i64                   ; 4 uses
  %i.eb = zext nneg i32 %i.f to i64               ; 2 uses
  %i.ec = sub nsw i64 %i.eb, %i.ea                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ec, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph116
  %n.vec = and i64 %i.ec, -8                      ; 3 uses
  %i.ed = add nsw i64 %n.vec, %i.ea
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dz, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.a, i64 %i.ea
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %gep, align 4, !tbaa !325
  store <4 x i32> %broadcast.splat, ptr %i.ee, align 4, !tbaa !325
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !2186

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ec, %n.vec
  br i1 %cmp.n, label %.lr.ph118, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph116, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ea, %.lr.ph116 ], [ %i.ed, %middle.block ]
  br label %scalar.ph

.lr.ph118:                                        ; preds = %scalar.ph, %middle.block, %.preheader104
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ej = zext nneg i32 %i.f to i64
  br label %bb.l

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.dz, ptr %i.ek, align 4, !tbaa !325
  %i.el = icmp samesign ult i64 %indvars.iv.next, %i.eb
  br i1 %i.el, label %scalar.ph, label %.lr.ph118, !llvm.loop !2187

bb.l:                                             ; preds = %.lr.ph118, %bb.l
  %indvars.iv122 = phi i64 [ 0, %.lr.ph118 ], [ %indvars.iv.next123, %bb.l ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %.sroa.03.0.copyload = load ptr, ptr %3, align 8, !tbaa !405
  store ptr %.sroa.03.0.copyload, ptr %5, align 8, !tbaa !405
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i8 0, i64 24, i1 false)
  %i.em = load ptr, ptr %i.eh, align 8, !tbaa !406, !nonnull !156, !align !157
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !479, !nonnull !156, !align !157
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 522
  %i.eq = load i8, ptr %i.ep, align 2, !tbaa !312, !range !311, !noundef !156
  %i.er = trunc nuw i8 %i.eq to i1
  %i.es = load ptr, ptr %i.en, align 8, !tbaa !407
  %.neg = select i1 %i.er, i64 -3334, i64 -3331
  %i.et = getelementptr inbounds [32 x i8], ptr %i.es, i64 %.neg
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv122
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !325
  %i.ew = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.et, i32 %i.ev) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %i.ex = icmp samesign ult i64 %indvars.iv.next123, %i.ej
  br i1 %i.ex, label %bb.l, label %.loopexit, !llvm.loop !2188

.loopexit:                                        ; preds = %bb.l, %bb.e, %_ZNK4llvm14MCRegisterInfo22isSuperOrSubRegisterEqENS_10MCRegisterES1_.exit._crit_edge
  %8 = phi i1 [ false, %bb.e ], [ false, %_ZNK4llvm14MCRegisterInfo22isSuperOrSubRegisterEqENS_10MCRegisterES1_.exit._crit_edge ], [ true, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %bb.d, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit, %.split, %bb.c, %bb.b, %bb.a
  %.3 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %.split ], [ false, %bb.c ], [ %8, %.loopexit ], [ false, %bb.d ], [ false, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZNK4llvm16X86FrameLowering29eliminateCallFramePseudoInstrERNS_15MachineFunctionERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::DebugLoc", align 8    ; 9 uses
  %5 = alloca %"class.llvm::MachineInstrBundleIterator", align 8 ; 7 uses
  %6 = alloca %"class.llvm::MCCFIInstruction", align 8 ; 13 uses
  %7 = alloca %"class.llvm::MCCFIInstruction", align 8 ; 13 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.llvm::MCCFIInstruction", align 8 ; 13 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !316
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) #24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.h = load i32, ptr %i.g, align 4, !tbaa !486  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !406, !nonnull !156, !align !157 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 100
  %i.l = load i32, ptr %i.k, align 4, !tbaa !2207
  %i.m = icmp eq i32 %i.h, %i.l                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.o = load i64, ptr %i.n, align 8, !tbaa !405
  store i64 %i.o, ptr %4, align 8, !tbaa !405
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !471  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !313  ; 2 uses
  %i.t = icmp ne i64 %i.s, 0
  %or.cond = or i1 %i.m, %i.t
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.v = load i32, ptr %i.u, align 8, !tbaa !897
  %i.w = icmp eq i32 %i.h, %i.v
  %.0.in.v.i = select i1 %i.w, i64 80, i64 48
  %.0.in.i = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0.in.v.i
  %.0.i = load i64, ptr %.0.in.i, align 8, !tbaa !313
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.x = phi i64 [ %.0.i, %bb.b ], [ 0, %bb.a ]   ; 6 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %3, align 8
  %i.y = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !470
  %i.ab = and i32 %i.aa, 8
  %.not34.i.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not34.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi ptr [ %i.ad, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ], [ %3, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !459 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !470
  %i.ag = and i32 %i.af, 8
  %.not3.i.i.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !6

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %bb.c
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %3, %bb.c ], [ %3, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.ad, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !459 ; 10 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %3, %i.ai
  br i1 %.not4.i.i.i, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, %.lr.ph.i.i.i
  %.sroa.03.05.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %3, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i ] ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i, i64 8 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !459 ; 2 uses
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE18removeNodeFromListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull %.sroa.03.05.i.i.i) #24
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.05.i.i.i, align 8
  %i.am = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !459 ; 3 uses
  %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i = load i64, ptr %i.ao, align 8
  %i.ap = and i64 %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i, 7
  %i.aq = or disjoint i64 %i.ap, %i.am
  store i64 %i.aq, ptr %i.ao, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !459
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.05.i.i.i, align 8
  %i.as = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i, 7
  store i64 %i.as, ptr %.sroa.03.05.i.i.i, align 8
  store ptr null, ptr %i.ak, align 8, !tbaa !459
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE10deleteNodeEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull %.sroa.03.05.i.i.i) #24
  %.not.i.i.i = icmp eq ptr %i.al, %i.ai
  br i1 %.not.i.i.i, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit, label %.lr.ph.i.i.i, !llvm.loop !7

_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit: ; preds = %.lr.ph.i.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %.not7.i = icmp eq ptr %i.ai, %i.at             ; 2 uses
  br i1 %.not7.i, label %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %.sroa.03.08.i = phi ptr [ %i.bg, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ], [ %i.ai, %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit ] ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i, i64 52
  %i.av = load i32, ptr %i.au, align 4, !tbaa !486
  switch i32 %i.av, label %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit [
    i32 25, label %.critedge2.i
    i32 18, label %.critedge2.i
    i32 17, label %.critedge2.i
    i32 16, label %.critedge2.i
    i32 15, label %.critedge2.i
    i32 14, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.08.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.08.i, align 8
  %i.aw = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %.critedge2.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i, i64 44
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !470
  %i.az = and i32 %i.ay, 8
  %.not34.i.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.bb, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %.sroa.03.08.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !459 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 44
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !470
  %i.be = and i32 %i.bd, 8
  %.not3.i.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !6

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %.critedge2.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.03.08.i, %.critedge2.i ], [ %.sroa.03.08.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.bb, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !459 ; 3 uses
  %.not.i = icmp eq ptr %i.bg, %i.at
  br i1 %.not.i, label %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit, label %.lr.ph.i, !llvm.loop !10

_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit: ; preds = %.lr.ph.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit
  %.sroa.03.0.lcssa.i = phi ptr [ %i.ai, %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit ], [ %i.bg, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ], [ %.sroa.03.08.i, %.lr.ph.i ] ; 3 uses
  store ptr %.sroa.03.0.lcssa.i, ptr %5, align 8
  br i1 %i.m, label %bb.d, label %_ZL21blockEndIsUnreachableRKN4llvm17MachineBasicBlockENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEE.exit.thread132

bb.d:                                             ; preds = %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !480 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !481 ; 3 uses
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %.idx8.i = shl nuw nsw i64 %i.bl, 3             ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx8.i
  %i.bn = lshr i64 %i.bl, 2                       ; 2 uses
  %.not.i87 = icmp eq i64 %i.bn, 0
  br i1 %.not.i87, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.d
  %i.bo = and i64 %.idx8.i, 34359738336
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.bi, i64 %i.bo
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %.lr.ph.preheader.i.i.i.i.i.i
  %.044.i.i.i.i.i.i = phi i64 [ %i.cb, %bb.h ], [ %i.bn, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.02943.i.i.i.i.i.i = phi ptr [ %i.ca, %bb.h ], [ %i.bi, %.lr.ph.preheader.i.i.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i = load ptr, ptr %.02943.i.i.i.i.i.i, align 8, !tbaa !482
  %i.bp = getelementptr i8, ptr %.029.val32.i.i.i.i.i.i, i64 216
  %.029.val32.val.i.i.i.i.i.i = load i8, ptr %i.bp, align 8, !tbaa !898, !range !311, !noundef !156
  %i.bq = trunc nuw i8 %.029.val32.val.i.i.i.i.i.i to i1
  br i1 %i.bq, label %bb.e, label %"_ZN4llvm6all_ofINS_14iterator_rangeIPKPNS_17MachineBasicBlockEEEZL21blockEndIsUnreachableRKS2_NS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEEE3$_0EEbOT_T0_.exit.i"

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 8
  %.val31.i.i.i.i.i.i = load ptr, ptr %i.br, align 8, !tbaa !482
  %i.bs = getelementptr i8, ptr %.val31.i.i.i.i.i.i, i64 216
  %.val31.val.i.i.i.i.i.i = load i8, ptr %i.bs, align 8, !tbaa !898, !range !311, !noundef !156
  %i.bt = trunc nuw i8 %.val31.val.i.i.i.i.i.i to i1
  br i1 %i.bt, label %bb.f, label %"_ZN4llvm6all_ofINS_14iterator_rangeIPKPNS_17MachineBasicBlockEEEZL21blockEndIsUnreachableRKS2_NS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEEE3$_0EEbOT_T0_.exit.i.loopexit.split.loop.exit"

bb.f:                                             ; preds = %bb.e
  %i.bu = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 16
  %.val30.i.i.i.i.i.i = load ptr, ptr %i.bu, align 8, !tbaa !482
  %i.bv = getelementptr i8, ptr %.val30.i.i.i.i.i.i, i64 216
  %.val30.val.i.i.i.i.i.i = load i8, ptr %i.bv, align 8, !tbaa !898, !range !311, !noundef !156
  %i.bw = trunc nuw i8 %.val30.val.i.i.i.i.i.i to i1
end_hunk_0
