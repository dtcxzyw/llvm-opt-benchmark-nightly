Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Legalizer?download=true
inline.NumInlined: 2656
inline.NumDeleted: 1275
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm28LegalizationArtifactCombiner14tryCombineSExtERNS_12MachineInstrERNS_15SmallVectorImplIPS1_EERNS3_INS_8RegisterEEERNS_20GISelObserverWrapperE:bb.a
bb.af:                                            ; preds = %bb.u, %bb.z, %bb.aa, %bb.y
  %i.fh = load ptr, ptr %i.k, align 8, !tbaa !220, !nonnull !23, !align !204
  %i.fi = tail call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.fh, i32 %.sroa.01.0.copyload.i) #25 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 52
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !186
  %i.fl = icmp eq i32 %i.fk, 148
  br i1 %i.fl, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %bb.af
  %i.fm = load ptr, ptr %i.k, align 8, !tbaa !220, !nonnull !23, !align !204 ; 2 uses
  %i.fn = icmp slt i32 %i.h, 0
  br i1 %i.fn, label %bb.ah, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit89

bb.ah:                                            ; preds = %bb.ag
  %i.fo = and i32 %i.h, 2147483647                ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 472
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !38
  %i.fr = icmp ugt i32 %i.fq, %i.fo
  br i1 %i.fr, label %bb.ai, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit89

bb.ai:                                            ; preds = %bb.ah
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 464
  %i.ft = zext nneg i32 %i.fo to i64
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !26
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.ft
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !222
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit89

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit89: ; preds = %bb.ag, %bb.ah, %bb.ai
  %.sroa.04.0.i88 = phi i64 [ %i.fw, %bb.ai ], [ 0, %bb.ah ], [ 0, %bb.ag ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  store i64 %.sroa.04.0.i88, ptr %16, align 8, !tbaa !222
  store i32 148, ptr %15, align 8, !tbaa !309
  %i.fx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %16, ptr %i.fx, align 8, !tbaa !310
  %.sroa.22.0..sroa_idx.i90 = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 1, ptr %.sroa.22.0..sroa_idx.i90, align 8, !tbaa !32
  %i.fy = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fy, i8 0, i64 16, i1 false)
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !217, !nonnull !23, !align !204
  %i.gb = call { i64, i64 } @_ZNK4llvm13LegalizerInfo9getActionERKNS_13LegalityQueryE(ptr noundef nonnull align 8 dereferenceable(46376) %i.ga, ptr noundef nonnull align 8 dereferenceable(40) %15) #25
  %i.gc = extractvalue { i64, i64 } %i.gb, 0
  %i.gd = and i64 %i.gc, 255
  %i.ge = icmp eq i64 %i.gd, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br i1 %i.ge, label %bb.aj, label %.critedge

bb.aj:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit89
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !221
  %i.gh = load ptr, ptr %0, align 8, !tbaa !296, !nonnull !23, !align !204
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  store i32 %i.h, ptr %17, align 8, !tbaa !164
  %i.gi = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 1, ptr %i.gi, align 8, !tbaa !300
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 48
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !222
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %.mask.i.i = and i64 %.sroa.04.0.i88, -1152921504606846976
  %i.gm = icmp eq i64 %.mask.i.i, 4611686018427387904 ; 2 uses
  br i1 %i.gm, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gn = lshr i64 %.sroa.04.0.i88, 60
  %.off.i.i = add nsw i64 %i.gn, -1
  %switch.i.i = icmp ult i64 %.off.i.i, 3
  br i1 %switch.i.i, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread:       ; preds = %bb.aj, %bb.ak
  %i.go = icmp slt i64 %.sroa.04.0.i88, -8070450532247928832
  %spec.select.i.i.i = or i1 %i.go, %i.gm
  %i.gp = lshr i64 %.sroa.04.0.i88, 44
  %i.gq = and i64 %i.gp, 65535
  %i.gr = lshr i64 %.sroa.04.0.i88, 28
  %i.gs = select i1 %spec.select.i.i.i, i64 %i.gq, i64 %i.gr
  br label %_ZNK4llvm8TypeSizecvmEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit:              ; preds = %bb.ak
  %i.gt = lshr i64 %.sroa.04.0.i88, 4
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.gt, 65535
  %i.gu = icmp slt i64 %.sroa.04.0.i88, -8070450532247928832
  %i.gv = lshr i64 %.sroa.04.0.i88, 44
  %i.gw = and i64 %i.gv, 65535
  %i.gx = lshr i64 %.sroa.04.0.i88, 28
  %.0.in.i3.i = select i1 %i.gu, i64 %i.gw, i64 %i.gx
  %i.gy = mul nuw nsw i64 %.0.in.i3.i, %.sroa.0.0.insert.ext.i.i.i
  %i.gz = trunc i64 %.sroa.04.0.i88 to i1
  br i1 %i.gz, label %bb.al, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.al:                                            ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.13) #26
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  %.sroa.05.0.i134 = phi i64 [ %i.gs, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread ], [ %i.gy, %_ZNK4llvm3LLT13getSizeInBitsEv.exit ]
  %i.ha = trunc i64 %.sroa.05.0.i134 to i32
  call void @_ZNK4llvm5APInt4sextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %18, ptr noundef nonnull align 8 dereferenceable(12) %i.gl, i32 noundef %i.ha) #25
  %i.hb = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder13buildConstantERKNS_5DstOpERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(96) %i.gh, ptr noundef nonnull align 8 dereferenceable(20) %17, ptr noundef nonnull align 8 dereferenceable(12) %18) #25 ; 0 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !312
  %i.he = icmp ugt i32 %i.hd, 64
  br i1 %i.he, label %bb.am, label %_ZN4llvm5APIntD2Ev.exit

bb.am:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.hf = load ptr, ptr %18, align 8, !tbaa !222  ; 2 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %_ZN4llvm5APIntD2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZdaPv(ptr noundef nonnull %i.hf) #28
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !38 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !40
  %.not.i94 = icmp ult i32 %i.hi, %i.hk
  br i1 %.not.i94, label %bb.ap, label %bb.ao, !prof !41

bb.ao:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 %i.h)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit95

bb.ap:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.hl = zext i32 %i.hi to i64
  %i.hm = load ptr, ptr %3, align 8, !tbaa !26
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.hl
  store i32 %i.h, ptr %i.hn, align 1
  %i.ho = load i32, ptr %i.hh, align 8, !tbaa !38
  %i.hp = add i32 %i.ho, 1
  store i32 %i.hp, ptr %i.hh, align 8, !tbaa !38
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit95

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit95: ; preds = %bb.ao, %bb.ap
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !38 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !40
  %.not.i.i96 = icmp ult i32 %i.hr, %i.ht
  br i1 %.not.i.i96, label %bb.ar, label %bb.aq, !prof !41

bb.aq:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit95
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj.exit97

bb.ar:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit95
  %i.hu = zext i32 %i.hr to i64
  %i.hv = load ptr, ptr %2, align 8, !tbaa !26
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.hu
  store ptr %1, ptr %i.hw, align 1
  %i.hx = load i32, ptr %i.hq, align 8, !tbaa !38
  %i.hy = add i32 %i.hx, 1
  store i32 %i.hy, ptr %i.hq, align 8, !tbaa !38
  br label %_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj.exit97

_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj.exit97: ; preds = %bb.aq, %bb.ar
  call void @_ZN4llvm28LegalizationArtifactCombiner11markDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.fi, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0)
  br label %bb.as

.critedge:                                        ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit89, %bb.af
  %i.hz = call noundef zeroext i1 @_ZN4llvm28LegalizationArtifactCombiner18tryFoldImplicitDefERNS_12MachineInstrERNS_15SmallVectorImplIPS1_EERNS3_INS_8RegisterEEERNS_20GISelObserverWrapperE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(120) %4)
  br label %bb.as

bb.as:                                            ; preds = %_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj.exit87, %.critedge, %_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj.exit97, %bb.t
  %.4 = phi i1 [ %i.as, %bb.t ], [ true, %_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj.exit87 ], [ %i.hz, %.critedge ], [ true, %_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj.exit97 ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm28LegalizationArtifactCombiner23tryCombineUnmergeValuesERNS_8GUnmergeERNS_15SmallVectorImplIPNS_12MachineInstrEEERNS3_INS_8RegisterEEERNS_19GISelChangeObserverE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(64) %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %5 = alloca %"class.std::optional.469", align 8 ; 6 uses
  %6 = alloca %"class.llvm::LLT", align 8         ; 5 uses
  %7 = alloca %"class.llvm::LegalizationArtifactCombiner::ArtifactValueFinder", align 16 ; 6 uses
  %8 = alloca %"struct.llvm::LegalityQuery", align 8 ; 7 uses
  %9 = alloca [2 x %"class.llvm::LLT"], align 8   ; 5 uses
  %10 = alloca %"struct.llvm::LegalityQuery", align 8 ; 8 uses
  %11 = alloca [2 x %"class.llvm::LLT"], align 8  ; 6 uses
  %12 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %13 = alloca %"class.llvm::SmallVector.477", align 8 ; 12 uses
  %14 = alloca %"class.llvm::LLT", align 8        ; 4 uses
  %15 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %16 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 5 uses
  %17 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %18 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %19 = alloca %"class.llvm::SmallVector.477", align 8 ; 10 uses
  %20 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %21 = alloca %"class.llvm::LLT", align 8        ; 6 uses
  %22 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %23 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i24, ptr %i.a, align 8              ; 2 uses
  %i.c = zext i24 %i.b to i32
  %i.d = add nsw i32 %i.c, -1                     ; 14 uses
  %i.e = zext i24 %i.b to i64
  %i.f = add nuw nsw i64 %i.e, 4294967295
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !221
  %i.i = and i64 %i.f, 4294967295
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !222  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !220, !nonnull !23, !align !204
  call void @_ZN4llvm26getDefSrcRegIgnoringCopiesENS_8RegisterERKNS_19MachineRegisterInfoE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.469") align 8 %5, i32 %i.l, ptr noundef nonnull align 8 dereferenceable(520) %i.n) #25
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = load i8, ptr %i.o, align 8, !tbaa !590, !range !22, !noundef !23
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.b, label %bb.bg

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %5, align 8, !tbaa !316    ; 8 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !220, !nonnull !23, !align !204 ; 4 uses
  %i.t = icmp slt i32 %i.l, 0
  br i1 %i.t, label %bb.c, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.c:                                             ; preds = %bb.b
  %i.u = and i32 %i.l, 2147483647                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.w = load i32, ptr %i.v, align 8, !tbaa !38
  %i.x = icmp ugt i32 %i.w, %i.u
  br i1 %i.x, label %bb.d, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 464
  %i.z = zext nneg i32 %i.u to i64
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !222
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.04.0.i = phi i64 [ %i.ac, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !221
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !222 ; 2 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.e, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit221

bb.e:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.ah = and i32 %i.af, 2147483647               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !38
  %i.ak = icmp ugt i32 %i.aj, %i.ah
  br i1 %i.ak, label %bb.f, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit221

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 464
  %i.am = zext nneg i32 %i.ah to i64
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !26
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.am
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !222
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit221

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit221: ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, %bb.e, %bb.f
  %.sroa.0111.0.copyload = phi i64 [ %i.ap, %bb.f ], [ 0, %bb.e ], [ 0, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit ] ; 4 uses
  store i64 %.sroa.0111.0.copyload, ptr %6, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.0125.0.copyload = load i32, ptr %i.aq, align 8, !tbaa !164
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 4 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !221 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  %i.au = load i24, ptr %i.at, align 8
  %i.av = zext i24 %i.au to i64
  %i.aw = call noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.r) #25
  %i.ax = zext i32 %i.aw to i64
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.ax, i64 %i.av) ; 3 uses
  %.idx.i = shl nuw nsw i64 %..i.i.i, 5
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  %.not14.i = icmp eq i64 %..i.i.i, 0
  br i1 %.not14.i, label %_ZN4llvm28LegalizationArtifactCombiner11getDefIndexERKNS_12MachineInstrENS_8RegisterE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit221
  %i.az = trunc nuw nsw i64 %..i.i.i to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %.01016.i = phi ptr [ %i.be, %bb.g ], [ %i.as, %.lr.ph.preheader.i ] ; 2 uses
  %.01115.i = phi i32 [ %i.bd, %bb.g ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01016.i, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !222
  %i.bc = icmp eq i32 %i.bb, %.sroa.0125.0.copyload
  br i1 %i.bc, label %_ZN4llvm28LegalizationArtifactCombiner11getDefIndexERKNS_12MachineInstrENS_8RegisterE.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.bd = add nuw nsw i32 %.01115.i, 1
  %i.be = getelementptr inbounds nuw i8, ptr %.01016.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.be, %i.ay
  br i1 %.not.i, label %_ZN4llvm28LegalizationArtifactCombiner11getDefIndexERKNS_12MachineInstrENS_8RegisterE.exit, label %.lr.ph.i

_ZN4llvm28LegalizationArtifactCombiner11getDefIndexERKNS_12MachineInstrENS_8RegisterE.exit: ; preds = %.lr.ph.i, %bb.g, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit221
  %.011.lcssa.i = phi i32 [ 0, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit221 ], [ %.01115.i, %.lr.ph.i ], [ %i.az, %bb.g ] ; 3 uses
  %i.bf = load ptr, ptr %0, align 8, !tbaa !296, !nonnull !23, !align !204 ; 2 uses
  call void @_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(96) %i.bf, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !297
  store i64 %i.bi, ptr %i.bh, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !217, !nonnull !23, !align !204
  %i.bl = load <2 x ptr>, ptr %0, align 8, !tbaa !27
  %i.bm = shufflevector <2 x ptr> %i.bl, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.bm, ptr %7, align 16, !tbaa !27
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.bk, ptr %i.bn, align 16, !tbaa !195
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 0, ptr %i.bo, align 8, !tbaa !219
  %i.bp = call noundef zeroext i1 @_ZN4llvm28LegalizationArtifactCombiner19ArtifactValueFinder21tryCombineUnmergeDefsERNS_8GUnmergeERNS_19GISelChangeObserverERNS_15SmallVectorImplINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(28) %7, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.bp, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZN4llvm28LegalizationArtifactCombiner11getDefIndexERKNS_12MachineInstrENS_8RegisterE.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !38 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !40
  %.not.i.i = icmp ult i32 %i.br, %i.bt
  br i1 %.not.i.i, label %bb.j, label %bb.i, !prof !41

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj.exit

bb.j:                                             ; preds = %bb.h
  %i.bu = zext i32 %i.br to i64
  %i.bv = load ptr, ptr %2, align 8, !tbaa !26
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bu
  store ptr %1, ptr %i.bw, align 1
  %i.bx = load i32, ptr %i.bq, align 8, !tbaa !38
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.bq, align 8, !tbaa !38
  br label %_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj.exit

_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj.exit: ; preds = %bb.i, %bb.j
  call void @_ZN4llvm28LegalizationArtifactCombiner11markDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %.011.lcssa.i)
  br label %.thread

bb.k:                                             ; preds = %_ZN4llvm28LegalizationArtifactCombiner11getDefIndexERKNS_12MachineInstrENS_8RegisterE.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.r, i64 52
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !186 ; 3 uses
  switch i32 %i.ca, label %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit.thread270 [
    i32 80, label %bb.l
    i32 144, label %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit
    i32 152, label %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit
    i32 154, label %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit
    i32 143, label %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit
  ]

bb.l:                                             ; preds = %bb.k
  %i.cb = load i24, ptr %i.at, align 8
  %i.cc = zext i24 %i.cb to i64
  %i.cd = add nuw nsw i64 %i.cc, 4294967295
  %i.ce = load ptr, ptr %i.ar, align 8, !tbaa !221
  %i.cf = and i64 %i.cd, 4294967295
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !222 ; 3 uses
  %i.cj = load ptr, ptr %i.m, align 8, !tbaa !220, !nonnull !23, !align !204 ; 2 uses
  %i.ck = icmp slt i32 %i.ci, 0
  br i1 %i.ck, label %bb.m, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit223

bb.m:                                             ; preds = %bb.l
  %i.cl = and i32 %i.ci, 2147483647               ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 472
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !38
  %i.co = icmp ugt i32 %i.cn, %i.cl
  br i1 %i.co, label %bb.n, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit223

bb.n:                                             ; preds = %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 464
  %i.cq = zext nneg i32 %i.cl to i64
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !26
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cq
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !222
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit223

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit223: ; preds = %bb.l, %bb.m, %bb.n
  %.sroa.04.0.i222 = phi i64 [ %i.ct, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.cu = load ptr, ptr %i.bj, align 8, !tbaa !217, !nonnull !23, !align !204
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store i64 %.sroa.04.0.i, ptr %9, align 8, !tbaa !222
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.sroa.04.0.i222, ptr %i.cv, align 8, !tbaa !222
  store i32 80, ptr %8, align 8, !tbaa !309
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %9, ptr %i.cw, align 8, !tbaa !310
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 2, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !32
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i8 0, i64 16, i1 false)
  %i.cy = call { i64, i64 } @_ZNK4llvm13LegalizerInfo9getActionERKNS_13LegalityQueryE(ptr noundef nonnull align 8 dereferenceable(46376) %i.cu, ptr noundef nonnull align 8 dereferenceable(40) %8) #25
  %i.cz = extractvalue { i64, i64 } %i.cy, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %.sroa.0116.0.extract.trunc = trunc i64 %i.cz to i8
  switch i8 %.sroa.0116.0.extract.trunc, label %.thread [
    i8 0, label %bb.o
    i8 6, label %bb.r
    i8 9, label %bb.r
    i8 3, label %bb.q
    i8 1, label %bb.q
  ]

bb.o:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit223
  %i.da = lshr i64 %.sroa.04.0.i, 60
  %i.db = add nsw i64 %i.da, -5
  %switch.selectcmp.i = icmp ult i64 %i.db, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  br i1 %switch.selectcmp.i, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.dc = load ptr, ptr %i.bj, align 8, !tbaa !217, !nonnull !23, !align !204
  store i64 %.sroa.0111.0.copyload, ptr %11, align 8, !tbaa !222
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %.sroa.04.0.i222, ptr %i.dd, align 8, !tbaa !222
  store i32 80, ptr %10, align 8, !tbaa !309
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %11, ptr %i.de, align 8, !tbaa !310
  %.sroa.22.0..sroa_idx.i224 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 2, ptr %.sroa.22.0..sroa_idx.i224, align 8, !tbaa !32
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i8 0, i64 16, i1 false)
  %i.dg = call { i64, i64 } @_ZNK4llvm13LegalizerInfo9getActionERKNS_13LegalityQueryE(ptr noundef nonnull align 8 dereferenceable(46376) %i.dc, ptr noundef nonnull align 8 dereferenceable(40) %10) #25
  %i.dh = extractvalue { i64, i64 } %i.dg, 0
  %i.di = and i64 %i.dh, 255
  %i.dj = icmp eq i64 %i.di, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %i.dj, label %bb.r, label %.thread

.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.thread

bb.q:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit223, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit223
  %.sroa.0116.4.extract.shift.mask = and i64 %i.cz, -4294967296
  %i.dk = icmp eq i64 %.sroa.0116.4.extract.shift.mask, 4294967296
  br i1 %i.dk, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit223, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit223, %bb.p
  %i.dl = load ptr, ptr %0, align 8, !tbaa !296, !nonnull !23, !align !204
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  store i32 %i.ci, ptr %12, align 8, !tbaa !164
  %i.dm = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %i.dm, align 8, !tbaa !303
  %i.dn = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder12buildUnmergeENS_3LLTERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.dl, i64 %.sroa.0111.0.copyload, ptr noundef nonnull align 8 dereferenceable(20) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %.not212307 = icmp eq i32 %i.d, 0
  br i1 %.not212307, label %._crit_edge311, label %.lr.ph310

.lr.ph310:                                        ; preds = %bb.r
  %i.do = extractvalue { ptr, ptr } %i.dn, 1
  %i.dp = mul i32 %.011.lcssa.i, %i.d
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dr = zext i32 %i.d to i64
  br label %bb.u

._crit_edge311:                                   ; preds = %bb.u, %bb.r
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !38 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !40
  %.not.i.i226 = icmp ult i32 %i.dt, %i.dv
  br i1 %.not.i.i226, label %bb.t, label %bb.s, !prof !41

bb.s:                                             ; preds = %._crit_edge311
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj.exit227

bb.t:                                             ; preds = %._crit_edge311
  %i.dw = zext i32 %i.dt to i64
  %i.dx = load ptr, ptr %2, align 8, !tbaa !26
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dw
  store ptr %1, ptr %i.dy, align 1
  %i.dz = load i32, ptr %i.ds, align 8, !tbaa !38
  %i.ea = add i32 %i.dz, 1
  store i32 %i.ea, ptr %i.ds, align 8, !tbaa !38
  br label %_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj.exit227

_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj.exit227: ; preds = %bb.s, %bb.t
  call void @_ZN4llvm28LegalizationArtifactCombiner11markDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %.011.lcssa.i)
  br label %.thread

bb.u:                                             ; preds = %.lr.ph310, %bb.u
  %indvars.iv334 = phi i64 [ 0, %.lr.ph310 ], [ %indvars.iv.next335, %bb.u ] ; 3 uses
  %i.eb = load ptr, ptr %i.g, align 8, !tbaa !221
  %i.ec = getelementptr inbounds nuw [32 x i8], ptr %i.eb, i64 %indvars.iv334
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !222
  %i.ef = trunc nuw i64 %indvars.iv334 to i32
  %i.eg = add i32 %i.dp, %i.ef
  %i.eh = load ptr, ptr %i.dq, align 8, !tbaa !221
  %i.ei = zext i32 %i.eg to i64
  %i.ej = getelementptr inbounds nuw [32 x i8], ptr %i.eh, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !222
  %i.em = load ptr, ptr %i.m, align 8, !tbaa !220, !nonnull !23, !align !204
  %i.en = load ptr, ptr %0, align 8, !tbaa !296, !nonnull !23, !align !204
  call void @_ZN4llvm28LegalizationArtifactCombiner21replaceRegOrBuildCopyENS_8RegisterES1_RNS_19MachineRegisterInfoERNS_16MachineIRBuilderERNS_15SmallVectorImplIS1_EERNS_19GISelChangeObserverE(i32 %i.ee, i32 %i.el, ptr noundef nonnull align 8 dereferenceable(520) %i.em, ptr noundef nonnull align 8 dereferenceable(96) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(64) %4)
  %indvars.iv.next335 = add nuw nsw i64 %indvars.iv334, 1 ; 2 uses
  %.not212 = icmp eq i64 %indvars.iv.next335, %i.dr
  br i1 %.not212, label %._crit_edge311, label %bb.u, !llvm.loop !582

_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit: ; preds = %bb.k, %bb.k, %bb.k, %bb.k
  %i.eo = load ptr, ptr %i.ar, align 8, !tbaa !221
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 36
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !222
  %i.er = load ptr, ptr %i.m, align 8, !tbaa !220, !nonnull !23, !align !204
  %i.es = call noundef ptr @_ZN4llvm20getDefIgnoringCopiesENS_8RegisterERKNS_19MachineRegisterInfoE(i32 %i.eq, ptr noundef nonnull align 8 dereferenceable(520) %i.er) #25 ; 3 uses
  %.not213 = icmp eq ptr %i.es, null
  br i1 %.not213, label %bb.v, label %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit._ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit.thread270_crit_edge

_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit._ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit.thread270_crit_edge: ; preds = %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.es, i64 52
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !186
  br label %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit.thread270

_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit.thread270: ; preds = %bb.k, %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit._ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit.thread270_crit_edge
  %i.et = phi i32 [ %.pre, %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit._ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit.thread270_crit_edge ], [ %i.ca, %bb.k ]
  %.0196275 = phi ptr [ %i.es, %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit._ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit.thread270_crit_edge ], [ %i.r, %bb.k ] ; 6 uses
  %.0197274 = phi i32 [ %i.ca, %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit._ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit.thread270_crit_edge ], [ 0, %bb.k ] ; 6 uses
  %i.eu = call noundef zeroext i1 @_ZN4llvm28LegalizationArtifactCombiner18canFoldMergeOpcodeEjjNS_3LLTES1_(i32 noundef %i.et, i32 noundef %.0197274, i64 %.sroa.04.0.i, i64 %.sroa.0111.0.copyload)
  br i1 %i.eu, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit.thread270, %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit
  %i.ev = call noundef zeroext i1 @_ZN4llvm28LegalizationArtifactCombiner18tryFoldUnmergeCastERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EERNS3_INS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %.thread

bb.w:                                             ; preds = %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit.thread270
  %i.ew = getelementptr inbounds nuw i8, ptr %.0196275, i64 40
  %i.ex = load i24, ptr %i.ew, align 8
  %i.ey = zext i24 %i.ex to i32
  %i.ez = add nsw i32 %i.ey, -1                   ; 8 uses
  %i.fa = icmp ult i32 %i.ez, %i.d
  br i1 %i.fa, label %bb.x, label %bb.ak

bb.x:                                             ; preds = %bb.w
  %i.fb = urem i32 %i.d, %i.ez
  %i.fc = udiv exact i32 %i.d, %i.ez              ; 2 uses
  %.not218 = icmp eq i32 %i.fb, 0
  br i1 %.not218, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.fd = load ptr, ptr %0, align 8, !tbaa !296, !nonnull !23, !align !204
  call void @_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(96) %i.fd, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %i.fe = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 7 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 2 uses
  %.not219 = icmp eq i32 %.0197274, 0
  %i.fh = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %.0196275, i64 32 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.trip.count332 = zext nneg i32 %i.ez to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit
  %indvars.iv328 = phi i64 [ 0, %bb.y ], [ %indvars.iv.next329, %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  store ptr %i.fe, ptr %13, align 8, !tbaa !26
  store i32 0, ptr %i.ff, align 8, !tbaa !38
  store i32 8, ptr %i.fg, align 4, !tbaa !40
  %24 = trunc nuw i64 %indvars.iv328 to i32
  %25 = mul i32 %i.fc, %24
  br label %.lr.ph304

._crit_edge305:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit
  br i1 %.not219, label %bb.af, label %bb.ac

.lr.ph304:                                        ; preds = %bb.z, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit
  %.0201302 = phi i32 [ 0, %bb.z ], [ %i.gb, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit ]
  %.0202301 = phi i32 [ %25, %bb.z ], [ %i.gc, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit ] ; 2 uses
  %i.fp = load ptr, ptr %i.g, align 8, !tbaa !221
  %i.fq = zext i32 %.0202301 to i64
  %i.fr = getelementptr inbounds nuw [32 x i8], ptr %i.fp, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !222 ; 2 uses
  %i.fu = load i32, ptr %i.ff, align 8, !tbaa !38 ; 2 uses
  %i.fv = load i32, ptr %i.fg, align 4, !tbaa !40
  %.not.i228 = icmp ult i32 %i.fu, %i.fv
  br i1 %.not.i228, label %bb.ab, label %bb.aa, !prof !41

bb.aa:                                            ; preds = %.lr.ph304
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 %i.ft)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.ab:                                            ; preds = %.lr.ph304
  %i.fw = zext i32 %i.fu to i64
  %i.fx = load ptr, ptr %13, align 8, !tbaa !26
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.fw
  store i32 %i.ft, ptr %i.fy, align 1
  %i.fz = load i32, ptr %i.ff, align 8, !tbaa !38
  %i.ga = add i32 %i.fz, 1
  store i32 %i.ga, ptr %i.ff, align 8, !tbaa !38
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit: ; preds = %bb.aa, %bb.ab
  %i.gb = add nuw i32 %.0201302, 1                ; 2 uses
  %i.gc = add i32 %.0202301, 1
  %i.gd = icmp ult i32 %i.gb, %i.fc
  br i1 %i.gd, label %.lr.ph304, label %._crit_edge305, !llvm.loop !583

bb.ac:                                            ; preds = %._crit_edge305
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.ge = load ptr, ptr %i.m, align 8, !tbaa !220, !nonnull !23, !align !204 ; 2 uses
  %i.gf = load ptr, ptr %i.ar, align 8, !tbaa !221
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !222 ; 2 uses
  %i.gi = icmp slt i32 %i.gh, 0
  br i1 %i.gi, label %bb.ad, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit230

bb.ad:                                            ; preds = %bb.ac
  %i.gj = and i32 %i.gh, 2147483647               ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 472
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !38
  %i.gm = icmp ugt i32 %i.gl, %i.gj
  br i1 %i.gm, label %bb.ae, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit230

bb.ae:                                            ; preds = %bb.ad
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ge, i64 464
  %i.go = zext nneg i32 %i.gj to i64
  %i.gp = load ptr, ptr %i.gn, align 8, !tbaa !26
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.go
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !222
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit230

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit230: ; preds = %bb.ac, %bb.ad, %bb.ae
  %.sroa.04.0.i229 = phi i64 [ %i.gr, %bb.ae ], [ 0, %bb.ad ], [ 0, %bb.ac ]
  store i64 %.sroa.04.0.i229, ptr %14, align 8
  %i.gs = call i64 @_ZNK4llvm3LLT6divideEi(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef %i.ez)
  %i.gt = load ptr, ptr %i.m, align 8, !tbaa !220, !nonnull !23, !align !204
  %i.gu = call i32 @_ZN4llvm19MachineRegisterInfo28createGenericVirtualRegisterENS_3LLTENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.gt, i64 %i.gs, ptr nonnull @.str.14, i64 0) #25 ; 2 uses
  %i.gv = load ptr, ptr %0, align 8, !tbaa !296, !nonnull !23, !align !204 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  store i32 %i.gu, ptr %15, align 8, !tbaa !164
  store i32 1, ptr %i.fh, align 8, !tbaa !300
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.gw = load ptr, ptr %i.fi, align 8, !tbaa !221
  %i.gx = getelementptr inbounds nuw [32 x i8], ptr %i.gw, i64 %indvars.iv328
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 36
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !222
  store i32 %i.gz, ptr %16, align 8, !tbaa !164
  store i32 0, ptr %i.fj, align 8, !tbaa !303
  %i.ha = load ptr, ptr %i.gv, align 8, !tbaa !16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = call { ptr, ptr } %i.hc(ptr noundef nonnull align 8 dereferenceable(96) %i.gv, i32 noundef %.0197274, ptr nonnull %15, i64 1, ptr nonnull %16, i64 1, i64 0) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.he = load ptr, ptr %0, align 8, !tbaa !296, !nonnull !23, !align !204
  %i.hf = load ptr, ptr %13, align 8, !tbaa !26
  %i.hg = load i32, ptr %i.ff, align 8, !tbaa !38
  %i.hh = zext i32 %i.hg to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  store i32 %i.gu, ptr %17, align 8, !tbaa !164
  store i32 0, ptr %i.fk, align 8, !tbaa !303
  %i.hi = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder12buildUnmergeENS_8ArrayRefINS_8RegisterEEERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.he, ptr %i.hf, i64 %i.hh, ptr noundef nonnull align 8 dereferenceable(20) %17) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.ag

bb.af:                                            ; preds = %._crit_edge305
  %i.hj = load ptr, ptr %0, align 8, !tbaa !296, !nonnull !23, !align !204
  %i.hk = load ptr, ptr %13, align 8, !tbaa !26
  %i.hl = load i32, ptr %i.ff, align 8, !tbaa !38
  %i.hm = zext i32 %i.hl to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.hn = load ptr, ptr %i.fi, align 8, !tbaa !221
  %i.ho = getelementptr inbounds nuw [32 x i8], ptr %i.hn, i64 %indvars.iv328
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 36
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !222
  store i32 %i.hq, ptr %18, align 8, !tbaa !164
  store i32 0, ptr %i.fl, align 8, !tbaa !303
  %i.hr = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder12buildUnmergeENS_8ArrayRefINS_8RegisterEEERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.hj, ptr %i.hk, i64 %i.hm, ptr noundef nonnull align 8 dereferenceable(20) %18) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit230
  %i.hs = load ptr, ptr %13, align 8, !tbaa !26
  %i.ht = load i32, ptr %i.ff, align 8, !tbaa !38 ; 3 uses
  %i.hu = zext i32 %i.ht to i64                   ; 2 uses
  %.idx = shl nuw nsw i64 %i.hu, 2
  %i.hv = load i32, ptr %i.fm, align 8, !tbaa !38 ; 2 uses
  %i.hw = zext i32 %i.hv to i64
  %i.hx = add nuw nsw i64 %i.hw, %i.hu            ; 2 uses
  %i.hy = load i32, ptr %i.fn, align 4, !tbaa !40
  %i.hz = zext i32 %i.hy to i64
  %i.ia = icmp samesign ugt i64 %i.hx, %i.hz
  br i1 %i.ia, label %bb.ah, label %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.fo, i64 noundef %i.hx, i64 noundef 4) #25
  %.pre8.pre.i = load i32, ptr %i.fm, align 8, !tbaa !38
  br label %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i: ; preds = %bb.ah, %bb.ag
  %.pre8.i = phi i32 [ %i.hv, %bb.ag ], [ %.pre8.pre.i, %bb.ah ] ; 2 uses
  %.not.i.i231 = icmp eq i32 %i.ht, 0
  br i1 %.not.i.i231, label %_ZN4llvm15SmallVectorImplINS_8RegisterEE6appendIPS1_vEEvT_S5_.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i
  %i.ib = load ptr, ptr %3, align 8, !tbaa !26
  %i.ic = zext i32 %.pre8.i to i64
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.ic
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.id, ptr align 4 %i.hs, i64 %.idx, i1 false)
  %.pre.i = load i32, ptr %i.fm, align 8, !tbaa !38
  br label %_ZN4llvm15SmallVectorImplINS_8RegisterEE6appendIPS1_vEEvT_S5_.exit

_ZN4llvm15SmallVectorImplINS_8RegisterEE6appendIPS1_vEEvT_S5_.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i, %bb.ai
  %i.ie = phi i32 [ %.pre8.i, %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i ], [ %.pre.i, %bb.ai ]
  %i.if = add i32 %i.ie, %i.ht
  store i32 %i.if, ptr %i.fm, align 8, !tbaa !38
  %i.ig = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.fe
  br i1 %i.ih, label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm15SmallVectorImplINS_8RegisterEE6appendIPS1_vEEvT_S5_.exit
  call void @free(ptr noundef %i.ig) #25
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_8RegisterEE6appendIPS1_vEEvT_S5_.exit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %indvars.iv.next329 = add nuw nsw i64 %indvars.iv328, 1 ; 2 uses
  %exitcond333.not = icmp eq i64 %indvars.iv.next329, %wide.trip.count332
  br i1 %exitcond333.not, label %.loopexit, label %bb.z, !llvm.loop !584

bb.ak:                                            ; preds = %bb.w
  %i.ii = icmp ugt i32 %i.ez, %i.d
  br i1 %i.ii, label %bb.al, label %bb.at

bb.al:                                            ; preds = %bb.ak
  %.not216 = icmp eq i32 %.0197274, 0
  br i1 %.not216, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  %i.ij = urem i32 %i.ez, %i.d
  %i.ik = udiv exact i32 %i.ez, %i.d              ; 2 uses
  %.not217 = icmp eq i32 %i.ij, 0
  br i1 %.not217, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.il = load ptr, ptr %0, align 8, !tbaa !296, !nonnull !23, !align !204
  call void @_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(96) %i.il, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %i.im = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 5 uses
  %i.io = getelementptr inbounds nuw i8, ptr %19, i64 12 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.0196275, i64 32
  %i.iq = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.ir = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %3, i64 12
  %wide.trip.count326 = zext nneg i32 %i.d to i64
  br label %.lr.ph298.preheader

.lr.ph298.preheader:                              ; preds = %bb.an, %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit234
  %indvars.iv323 = phi i64 [ 0, %bb.an ], [ %indvars.iv.next324, %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit234 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  store ptr %i.im, ptr %19, align 8, !tbaa !26
  store i32 0, ptr %i.in, align 8, !tbaa !38
  store i32 8, ptr %i.io, align 4, !tbaa !40
  %i.it = trunc nuw i64 %indvars.iv323 to i32
  %i.iu = mul i32 %i.ik, %i.it
  br label %.lr.ph298

._crit_edge299:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit236
  %i.iv = load ptr, ptr %i.g, align 8, !tbaa !221
  %i.iw = getelementptr inbounds nuw [32 x i8], ptr %i.iv, i64 %indvars.iv323
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !222 ; 3 uses
  %i.iz = load ptr, ptr %0, align 8, !tbaa !296, !nonnull !23, !align !204
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  store i32 %i.iy, ptr %20, align 8, !tbaa !164
  store i32 1, ptr %i.iq, align 8, !tbaa !300
  %26 = load ptr, ptr %19, align 8, !tbaa !26
  %27 = load i32, ptr %i.in, align 8, !tbaa !38
  %i.ja = zext i32 %27 to i64
  %i.jb = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder19buildMergeLikeInstrERKNS_5DstOpENS_8ArrayRefINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.iz, ptr noundef nonnull align 8 dereferenceable(20) %20, ptr %26, i64 %i.ja) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  %i.jc = load i32, ptr %i.ir, align 8, !tbaa !38 ; 2 uses
  %i.jd = load i32, ptr %i.is, align 4, !tbaa !40
  %.not.i232 = icmp ult i32 %i.jc, %i.jd
  br i1 %.not.i232, label %bb.ap, label %bb.ao, !prof !41

bb.ao:                                            ; preds = %._crit_edge299
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 %i.iy)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit233

bb.ap:                                            ; preds = %._crit_edge299
  %i.je = zext i32 %i.jc to i64
  %i.jf = load ptr, ptr %3, align 8, !tbaa !26
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.je
  store i32 %i.iy, ptr %i.jg, align 1
  %i.jh = load i32, ptr %i.ir, align 8, !tbaa !38
  %i.ji = add i32 %i.jh, 1
  store i32 %i.ji, ptr %i.ir, align 8, !tbaa !38
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit233

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit233: ; preds = %bb.ao, %bb.ap
  %i.jj = load ptr, ptr %19, align 8, !tbaa !26   ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.im
  br i1 %i.jk, label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit234, label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit233
  call void @free(ptr noundef %i.jj) #25
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit234

_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit234: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit233, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  %indvars.iv.next324 = add nuw nsw i64 %indvars.iv323, 1 ; 2 uses
  %exitcond327.not = icmp eq i64 %indvars.iv.next324, %wide.trip.count326
  br i1 %exitcond327.not, label %.loopexit, label %.lr.ph298.preheader, !llvm.loop !585

.lr.ph298:                                        ; preds = %.lr.ph298.preheader, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit236
  %.0203.in296 = phi i32 [ %i.iu, %.lr.ph298.preheader ], [ %.0203, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit236 ]
  %.0204295 = phi i32 [ 0, %.lr.ph298.preheader ], [ %i.jx, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit236 ]
  %.0203 = add i32 %.0203.in296, 1                ; 2 uses
  %i.jl = load ptr, ptr %i.ip, align 8, !tbaa !221
  %i.jm = zext i32 %.0203 to i64
  %i.jn = getelementptr inbounds nuw [32 x i8], ptr %i.jl, i64 %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !222 ; 2 uses
  %i.jq = load i32, ptr %i.in, align 8, !tbaa !38 ; 2 uses
  %i.jr = load i32, ptr %i.io, align 4, !tbaa !40
  %.not.i235 = icmp ult i32 %i.jq, %i.jr
  br i1 %.not.i235, label %bb.as, label %bb.ar, !prof !41

bb.ar:                                            ; preds = %.lr.ph298
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %19, i32 %i.jp)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit236

bb.as:                                            ; preds = %.lr.ph298
  %i.js = zext i32 %i.jq to i64
  %i.jt = load ptr, ptr %19, align 8, !tbaa !26
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.js
  store i32 %i.jp, ptr %i.ju, align 1
  %i.jv = load i32, ptr %i.in, align 8, !tbaa !38
  %i.jw = add i32 %i.jv, 1
  store i32 %i.jw, ptr %i.in, align 8, !tbaa !38
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit236

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit236: ; preds = %bb.ar, %bb.as
  %i.jx = add nuw i32 %.0204295, 1                ; 2 uses
  %i.jy = icmp ult i32 %i.jx, %i.ik
  br i1 %i.jy, label %.lr.ph298, label %._crit_edge299, !llvm.loop !586

bb.at:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  %i.jz = load ptr, ptr %i.m, align 8, !tbaa !220, !nonnull !23, !align !204 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.0196275, i64 32 ; 3 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !221
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 36
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !222 ; 2 uses
  %i.ke = icmp slt i32 %i.kd, 0
  br i1 %i.ke, label %bb.au, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit238

bb.au:                                            ; preds = %bb.at
  %i.kf = and i32 %i.kd, 2147483647               ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jz, i64 472
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !38
  %i.ki = icmp ugt i32 %i.kh, %i.kf
  br i1 %i.ki, label %bb.av, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit238

bb.av:                                            ; preds = %bb.au
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jz, i64 464
  %i.kk = zext nneg i32 %i.kf to i64
  %i.kl = load ptr, ptr %i.kj, align 8, !tbaa !26
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.kk
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !222
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit238

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit238: ; preds = %bb.at, %bb.au, %bb.av
  %.sroa.04.0.i237 = phi i64 [ %i.kn, %bb.av ], [ 0, %bb.au ], [ 0, %bb.at ]
  store i64 %.sroa.04.0.i237, ptr %21, align 8
  %.not214 = icmp eq i32 %.0197274, 0
  br i1 %.not214, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit238
  %i.ko = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %21)
  br i1 %i.ko, label %bb.bf, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kp = load i64, ptr %6, align 8
  %.mask.i = and i64 %i.kp, -1152921504606846976
  %i.kq = icmp eq i64 %.mask.i, 4611686018427387904
  br i1 %i.kq, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kr = load i64, ptr %21, align 8
  %.mask.i239 = and i64 %i.kr, -1152921504606846976
  %i.ks = icmp eq i64 %.mask.i239, 4611686018427387904
  %. = select i1 %i.ks, i32 86, i32 88
  br label %bb.az

bb.az:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit238, %bb.ay, %bb.ax
  %.1198.ph = phi i32 [ 87, %bb.ax ], [ %., %bb.ay ], [ %.0197274, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit238 ]
  %i.kt = load ptr, ptr %0, align 8, !tbaa !296, !nonnull !23, !align !204
  call void @_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(96) %i.kt, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %.not312 = icmp eq i32 %i.d, 0
  br i1 %.not312, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.az
  %i.ku = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.kv = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.kw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %wide.trip.count = zext i32 %i.d to i64
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit241
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit241 ] ; 2 uses
  %i.ky = load ptr, ptr %i.g, align 8, !tbaa !221
  %i.kz = getelementptr inbounds nuw [32 x i8], ptr %i.ky, i64 %indvars.iv
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !222 ; 6 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.lc = load ptr, ptr %i.ka, align 8, !tbaa !221
  %i.ld = getelementptr inbounds nuw [32 x i8], ptr %i.lc, i64 %indvars.iv.next
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !222
  %i.lg = load ptr, ptr %i.m, align 8, !tbaa !220, !nonnull !23, !align !204 ; 2 uses
  %i.lh = icmp slt i32 %i.lb, 0
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 48
  %i.lj = and i32 %i.lb, 2147483647
  %i.lk = zext nneg i32 %i.lj to i64
  %i.ll = load ptr, ptr %i.li, align 8
  %i.lm = getelementptr inbounds nuw [16 x i8], ptr %i.ll, i64 %i.lk
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lg, i64 312
  %i.lp = zext nneg i32 %i.lb to i64
  %i.lq = load ptr, ptr %i.lo, align 8
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %i.lp
  %.0.in.i.i.i = select i1 %i.lh, ptr %i.ln, ptr %i.lr
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8, !tbaa !223 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit241, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ls = load i32, ptr %.0.i.i.i, align 8
  %i.lt = and i32 %i.ls, 16777216
  %.not4.i.i.i = icmp eq i32 %i.lt, 0
  br i1 %.not4.i.i.i, label %_ZNK4llvm19MachineRegisterInfo9use_emptyENS_8RegisterE.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.bb, %bb.bc
  %.pn.i.i.i.i = phi ptr [ %storemerge.i.i.i.i, %bb.bc ], [ %.0.i.i.i, %bb.bb ]
  %storemerge.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 24
  %storemerge.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i, align 8, !tbaa !222 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit241, label %bb.bc

bb.bc:                                            ; preds = %.preheader.i.i.i
  %i.lu = load i32, ptr %storemerge.i.i.i.i, align 8
  %i.lv = and i32 %i.lu, 16777216
  %.not1.i.i.i.i = icmp eq i32 %i.lv, 0
  br i1 %.not1.i.i.i.i, label %_ZNK4llvm19MachineRegisterInfo9use_emptyENS_8RegisterE.exit, label %.preheader.i.i.i, !llvm.loop !4

_ZNK4llvm19MachineRegisterInfo9use_emptyENS_8RegisterE.exit: ; preds = %bb.bc, %bb.bb
  %i.lw = load ptr, ptr %0, align 8, !tbaa !296, !nonnull !23, !align !204 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  store i32 %i.lb, ptr %22, align 8, !tbaa !164
  store i32 1, ptr %i.ku, align 8, !tbaa !300
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  store i32 %i.lf, ptr %23, align 8, !tbaa !164
  store i32 0, ptr %i.kv, align 8, !tbaa !303
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !16
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 32
  %i.lz = load ptr, ptr %i.ly, align 8
  %i.ma = call { ptr, ptr } %i.lz(ptr noundef nonnull align 8 dereferenceable(96) %i.lw, i32 noundef %.1198.ph, ptr nonnull %22, i64 1, ptr nonnull %23, i64 1, i64 0) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  %i.mb = load i32, ptr %i.kw, align 8, !tbaa !38 ; 2 uses
  %i.mc = load i32, ptr %i.kx, align 4, !tbaa !40
  %.not.i240 = icmp ult i32 %i.mb, %i.mc
  br i1 %.not.i240, label %bb.be, label %bb.bd, !prof !41

bb.bd:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo9use_emptyENS_8RegisterE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 %i.lb)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit241

bb.be:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo9use_emptyENS_8RegisterE.exit
  %i.md = zext i32 %i.mb to i64
  %i.me = load ptr, ptr %3, align 8, !tbaa !26
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.md
  store i32 %i.lb, ptr %i.mf, align 1
  %i.mg = load i32, ptr %i.kw, align 8, !tbaa !38
  %i.mh = add i32 %i.mg, 1
  store i32 %i.mh, ptr %i.kw, align 8, !tbaa !38
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit241

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit241: ; preds = %.preheader.i.i.i, %bb.ba, %bb.be, %bb.bd
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ba, !llvm.loop !587

bb.bf:                                            ; preds = %bb.aw
  %i.mi = load ptr, ptr %0, align 8, !tbaa !296, !nonnull !23, !align !204
  call void @_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(96) %i.mi, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %.not313 = icmp eq i32 %i.d, 0
  br i1 %.not313, label %.thread285, label %.lr.ph294.preheader

.lr.ph294.preheader:                              ; preds = %bb.bf
  %wide.trip.count321 = zext i32 %i.d to i64
  br label %.lr.ph294

.thread285:                                       ; preds = %.lr.ph294, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %.loopexit

.lr.ph294:                                        ; preds = %.lr.ph294.preheader, %.lr.ph294
  %indvars.iv318 = phi i64 [ 0, %.lr.ph294.preheader ], [ %indvars.iv.next319, %.lr.ph294 ] ; 2 uses
  %i.mj = load ptr, ptr %i.g, align 8, !tbaa !221
  %i.mk = getelementptr inbounds nuw [32 x i8], ptr %i.mj, i64 %indvars.iv318
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 4
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !222
  %indvars.iv.next319 = add nuw nsw i64 %indvars.iv318, 1 ; 3 uses
  %i.mn = load ptr, ptr %i.ka, align 8, !tbaa !221
  %i.mo = getelementptr inbounds nuw [32 x i8], ptr %i.mn, i64 %indvars.iv.next319
end_hunk_0
begin_hunk_1_@_ZN4llvm28LegalizationArtifactCombiner15tryCombineTruncERNS_12MachineInstrERNS_15SmallVectorImplIPS1_EERNS3_INS_8RegisterEEERNS_20GISelObserverWrapperE:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !217, !nonnull !23, !align !204
  %i.ae = call { i64, i64 } @_ZNK4llvm13LegalizerInfo9getActionERKNS_13LegalityQueryE(ptr noundef nonnull align 8 dereferenceable(46376) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %6) #25
  %i.af = extractvalue { i64, i64 } %i.ae, 0
  %i.ag = and i64 %i.af, 255
  %i.ah = icmp eq i64 %i.ag, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %i.ah, label %bb.e, label %._crit_edge256

._crit_edge256:                                   ; preds = %bb.d
  %.pre = load i32, ptr %i.x, align 4, !tbaa !186
  br label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !221
  %i.ak = load ptr, ptr %0, align 8, !tbaa !296, !nonnull !23, !align !204
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i32 %i.e, ptr %8, align 8, !tbaa !164
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 1, ptr %i.al, align 8, !tbaa !300
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !222
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.mask.i.i = and i64 %i.r, -1152921504606846976
  %i.ap = icmp eq i64 %.mask.i.i, 4611686018427387904 ; 2 uses
  br i1 %i.ap, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = lshr i64 %i.r, 60
  %.off.i.i = add nsw i64 %i.aq, -1
  %switch.i.i = icmp ult i64 %.off.i.i, 3
  br i1 %switch.i.i, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread:       ; preds = %bb.e, %bb.f
  %i.ar = icmp slt i64 %i.r, -8070450532247928832
  %spec.select.i.i.i = or i1 %i.ar, %i.ap
  %i.as = lshr i64 %i.r, 44
  %i.at = and i64 %i.as, 65535
  %i.au = lshr i64 %i.r, 28
  %i.av = select i1 %spec.select.i.i.i, i64 %i.at, i64 %i.au
  br label %_ZNK4llvm8TypeSizecvmEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit:              ; preds = %bb.f
  %i.aw = lshr i64 %i.r, 4
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.aw, 65535
  %i.ax = icmp slt i64 %i.r, -8070450532247928832
  %i.ay = lshr i64 %i.r, 44
  %i.az = and i64 %i.ay, 65535
  %i.ba = lshr i64 %i.r, 28
  %.0.in.i3.i = select i1 %i.ax, i64 %i.az, i64 %i.ba
  %i.bb = mul nuw nsw i64 %.0.in.i3.i, %.sroa.0.0.insert.ext.i.i.i
  %i.bc = trunc i64 %i.r to i1
  br i1 %i.bc, label %bb.g, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.g:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.13) #26
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  %.sroa.05.0.i226 = phi i64 [ %i.av, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread ], [ %i.bb, %_ZNK4llvm3LLT13getSizeInBitsEv.exit ]
  %i.bd = trunc i64 %.sroa.05.0.i226 to i32
  call void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %9, ptr noundef nonnull align 8 dereferenceable(12) %i.ao, i32 noundef %i.bd) #25
  %i.be = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder13buildConstantERKNS_5DstOpERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(96) %i.ak, ptr noundef nonnull align 8 dereferenceable(20) %8, ptr noundef nonnull align 8 dereferenceable(12) %9) #25 ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !312
  %i.bh = icmp ugt i32 %i.bg, 64
  br i1 %i.bh, label %bb.h, label %_ZN4llvm5APIntD2Ev.exit

bb.h:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.bi = load ptr, ptr %9, align 8, !tbaa !222   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZN4llvm5APIntD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.bi) #28
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !38 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !40
  %.not.i129 = icmp ult i32 %i.bl, %i.bn
  br i1 %.not.i129, label %bb.k, label %bb.j, !prof !41

bb.j:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 %i.e)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.k:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.bo = zext i32 %i.bl to i64
  %i.bp = load ptr, ptr %3, align 8, !tbaa !26
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bo
  store i32 %i.e, ptr %i.bq, align 1
  %i.br = load i32, ptr %i.bk, align 8, !tbaa !38
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.bk, align 8, !tbaa !38
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit: ; preds = %bb.j, %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !38 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !40
  %.not.i.i = icmp ult i32 %i.bu, %i.bw
  br i1 %.not.i.i, label %bb.m, label %bb.l, !prof !41

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj.exit

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit
  %i.bx = zext i32 %i.bu to i64
  %i.by = load ptr, ptr %2, align 8, !tbaa !26
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx
  store ptr %1, ptr %i.bz, align 1
  %i.ca = load i32, ptr %i.bt, align 8, !tbaa !38
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bt, align 8, !tbaa !38
  br label %_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj.exit

_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj.exit: ; preds = %bb.l, %bb.m
  call void @_ZN4llvm28LegalizationArtifactCombiner11markDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0)
  br label %.thread

bb.n:                                             ; preds = %._crit_edge256, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.cc = phi i32 [ %.pre, %._crit_edge256 ], [ %i.y, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit ]
  %.not = icmp eq i32 %i.cc, 82
  br i1 %.not, label %bb.o, label %bb.ak

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !221
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 36
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !222 ; 4 uses
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !220, !nonnull !23, !align !204 ; 3 uses
  %i.ci = icmp slt i32 %i.cg, 0
  br i1 %i.ci, label %bb.p, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit131

bb.p:                                             ; preds = %bb.o
  %i.cj = and i32 %i.cg, 2147483647               ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 472
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !38
  %i.cm = icmp ugt i32 %i.cl, %i.cj
  br i1 %i.cm, label %bb.q, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit131

bb.q:                                             ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 464
  %i.co = zext nneg i32 %i.cj to i64
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !26
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.co
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !222
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit131

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit131: ; preds = %bb.o, %bb.p, %bb.q
  %.sroa.04.0.i130 = phi i64 [ %i.cr, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ] ; 13 uses
  %.mask.i.i132 = and i64 %i.r, -1152921504606846976
  %i.cs = icmp eq i64 %.mask.i.i132, 4611686018427387904 ; 2 uses
  br i1 %i.cs, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit143.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit131
  %i.ct = lshr i64 %i.r, 60
  %.off.i.i133 = add nsw i64 %i.ct, -1
  %switch.i.i134 = icmp ult i64 %.off.i.i133, 3
  br i1 %switch.i.i134, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit143.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit143

_ZNK4llvm3LLT13getSizeInBitsEv.exit143.thread:    ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit131, %bb.r
  %i.cu = icmp slt i64 %i.r, -8070450532247928832
  %spec.select.i.i.i142 = or i1 %i.cu, %i.cs
  %i.cv = lshr i64 %i.r, 44
  %i.cw = and i64 %i.cv, 65535
  %i.cx = lshr i64 %i.r, 28
  %i.cy = and i64 %i.cx, 4294967295
  %i.cz = select i1 %spec.select.i.i.i142, i64 %i.cw, i64 %i.cy
  br label %_ZNK4llvm8TypeSizecvmEv.exit144

_ZNK4llvm3LLT13getSizeInBitsEv.exit143:           ; preds = %bb.r
  %i.da = lshr i64 %i.r, 4
  %.sroa.0.0.insert.ext.i.i.i135 = and i64 %i.da, 65535
  %i.db = icmp slt i64 %i.r, -8070450532247928832
  %i.dc = lshr i64 %i.r, 44
  %i.dd = and i64 %i.dc, 65535
  %i.de = lshr i64 %i.r, 28
  %.0.in.i3.i136 = select i1 %i.db, i64 %i.dd, i64 %i.de
  %i.df = mul nuw nsw i64 %.0.in.i3.i136, %.sroa.0.0.insert.ext.i.i.i135
  %i.dg = and i64 %i.df, 4294967295
  %i.dh = trunc i64 %i.r to i1
  br i1 %i.dh, label %bb.s, label %_ZNK4llvm8TypeSizecvmEv.exit144

bb.s:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit143
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.13) #26
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit144:                  ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit143.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit143
  %.sroa.05.0.i138231 = phi i64 [ %i.cz, %_ZNK4llvm3LLT13getSizeInBitsEv.exit143.thread ], [ %i.dg, %_ZNK4llvm3LLT13getSizeInBitsEv.exit143 ] ; 4 uses
  %i.di = trunc nuw i64 %.sroa.05.0.i138231 to i32 ; 2 uses
  %.mask.i.i145 = and i64 %.sroa.04.0.i130, -1152921504606846976
  %i.dj = icmp eq i64 %.mask.i.i145, 4611686018427387904 ; 2 uses
  br i1 %i.dj, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit156.thread, label %bb.t

bb.t:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit144
  %i.dk = lshr i64 %.sroa.04.0.i130, 60
  %.off.i.i146 = add nsw i64 %i.dk, -1
  %switch.i.i147 = icmp ult i64 %.off.i.i146, 3
  br i1 %switch.i.i147, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit156.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit156

_ZNK4llvm3LLT13getSizeInBitsEv.exit156.thread:    ; preds = %_ZNK4llvm8TypeSizecvmEv.exit144, %bb.t
  %i.dl = icmp slt i64 %.sroa.04.0.i130, -8070450532247928832
  %spec.select.i.i.i155 = or i1 %i.dl, %i.dj
  %i.dm = lshr i64 %.sroa.04.0.i130, 44
  %i.dn = and i64 %i.dm, 65535
  %i.do = lshr i64 %.sroa.04.0.i130, 28
  %i.dp = and i64 %i.do, 4294967295
  %i.dq = select i1 %spec.select.i.i.i155, i64 %i.dn, i64 %i.dp
  br label %_ZNK4llvm8TypeSizecvmEv.exit157

_ZNK4llvm3LLT13getSizeInBitsEv.exit156:           ; preds = %bb.t
  %i.dr = lshr i64 %.sroa.04.0.i130, 4
  %.sroa.0.0.insert.ext.i.i.i148 = and i64 %i.dr, 65535
  %i.ds = icmp slt i64 %.sroa.04.0.i130, -8070450532247928832
  %i.dt = lshr i64 %.sroa.04.0.i130, 44
  %i.du = and i64 %i.dt, 65535
  %i.dv = lshr i64 %.sroa.04.0.i130, 28
  %.0.in.i3.i149 = select i1 %i.ds, i64 %i.du, i64 %i.dv
  %i.dw = mul nuw nsw i64 %.0.in.i3.i149, %.sroa.0.0.insert.ext.i.i.i148
  %i.dx = and i64 %i.dw, 4294967295
  %i.dy = trunc i64 %.sroa.04.0.i130 to i1
  br i1 %i.dy, label %bb.u, label %_ZNK4llvm8TypeSizecvmEv.exit157

bb.u:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit156
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.13) #26
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit157:                  ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit156.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit156
  %.sroa.05.0.i151236 = phi i64 [ %i.dq, %_ZNK4llvm3LLT13getSizeInBitsEv.exit156.thread ], [ %i.dx, %_ZNK4llvm3LLT13getSizeInBitsEv.exit156 ] ; 3 uses
  %i.dz = trunc nuw i64 %.sroa.05.0.i151236 to i32 ; 2 uses
  %i.ea = lshr i64 %i.r, 60
  %.off.i = add nsw i64 %i.ea, -1
  %switch.i = icmp ult i64 %.off.i, 3
  br i1 %switch.i, label %bb.v, label %.thread

bb.v:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit157
  %i.eb = lshr i64 %.sroa.04.0.i130, 60
  %.off.i158 = add nsw i64 %i.eb, -1
  %switch.i159 = icmp ult i64 %.off.i158, 3
  br i1 %switch.i159, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.ec = icmp samesign ult i64 %.sroa.05.0.i138231, %.sroa.05.0.i151236
  br i1 %i.ec, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  store i64 %i.r, ptr %11, align 8, !tbaa !222
  %i.ed = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %.sroa.04.0.i130, ptr %i.ed, align 8, !tbaa !222
  store i32 144, ptr %10, align 8, !tbaa !309
  %i.ee = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %11, ptr %i.ee, align 8, !tbaa !310
  %.sroa.22.0..sroa_idx.i160 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 2, ptr %.sroa.22.0..sroa_idx.i160, align 8, !tbaa !32
  %i.ef = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, i8 0, i64 16, i1 false)
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !217, !nonnull !23, !align !204
  %i.ei = call { i64, i64 } @_ZNK4llvm13LegalizerInfo9getActionERKNS_13LegalityQueryE(ptr noundef nonnull align 8 dereferenceable(46376) %i.eh, ptr noundef nonnull align 8 dereferenceable(40) %10) #25
  %i.ej = extractvalue { i64, i64 } %i.ei, 0
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.ej to i32
  %i.ek = and i32 %.sroa.0.0.extract.trunc.i, 255
  %i.el = add nsw i32 %i.ek, -9
  %i.em = icmp ult i32 %i.el, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %i.em, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.en = load ptr, ptr %0, align 8, !tbaa !296, !nonnull !23, !align !204
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  store i32 %i.e, ptr %12, align 8, !tbaa !164
  %i.eo = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 1, ptr %i.eo, align 8, !tbaa !300
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  store i32 %i.cg, ptr %13, align 8, !tbaa !164
  %i.ep = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 0, ptr %i.ep, align 8, !tbaa !303
  %i.eq = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder10buildTruncERKNS_5DstOpERKNS_5SrcOpESt8optionalIjE(ptr noundef nonnull align 8 dereferenceable(96) %i.en, ptr noundef nonnull align 8 dereferenceable(20) %12, ptr noundef nonnull align 8 dereferenceable(20) %13, i64 0) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.es = load i32, ptr %i.er, align 8, !tbaa !38 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !40
  %.not.i162 = icmp ult i32 %i.es, %i.eu
  br i1 %.not.i162, label %bb.aa, label %bb.z, !prof !41

bb.z:                                             ; preds = %bb.y
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 %i.e)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit163

bb.aa:                                            ; preds = %bb.y
  %i.ev = zext i32 %i.es to i64
  %i.ew = load ptr, ptr %3, align 8, !tbaa !26
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.ev
  store i32 %i.e, ptr %i.ex, align 1
  %i.ey = load i32, ptr %i.er, align 8, !tbaa !38
  %i.ez = add i32 %i.ey, 1
  store i32 %i.ez, ptr %i.er, align 8, !tbaa !38
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit163

bb.ab:                                            ; preds = %bb.w
  %i.fa = icmp eq i64 %.sroa.05.0.i138231, %.sroa.05.0.i151236
  br i1 %i.fa, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fb = load ptr, ptr %0, align 8, !tbaa !296, !nonnull !23, !align !204
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN4llvm28LegalizationArtifactCombiner21replaceRegOrBuildCopyENS_8RegisterES1_RNS_19MachineRegisterInfoERNS_16MachineIRBuilderERNS_15SmallVectorImplIS1_EERNS_19GISelChangeObserverE(i32 %i.e, i32 %i.cg, ptr noundef nonnull align 8 dereferenceable(520) %i.ch, ptr noundef nonnull align 8 dereferenceable(96) %i.fb, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.fc)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit163

bb.ad:                                            ; preds = %bb.ab
  %i.fd = urem i32 %i.di, %i.dz
  %i.fe = udiv exact i32 %i.di, %i.dz             ; 2 uses
  %i.ff = icmp eq i32 %i.fd, 0
  br i1 %i.ff, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  store i64 %i.r, ptr %15, align 8, !tbaa !222
  %i.fg = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %.sroa.04.0.i130, ptr %i.fg, align 8, !tbaa !222
  store i32 82, ptr %14, align 8, !tbaa !309
  %i.fh = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %15, ptr %i.fh, align 8, !tbaa !310
  %.sroa.22.0..sroa_idx.i164 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 2, ptr %.sroa.22.0..sroa_idx.i164, align 8, !tbaa !32
  %i.fi = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fi, i8 0, i64 16, i1 false)
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !217, !nonnull !23, !align !204
  %i.fl = call { i64, i64 } @_ZNK4llvm13LegalizerInfo9getActionERKNS_13LegalityQueryE(ptr noundef nonnull align 8 dereferenceable(46376) %i.fk, ptr noundef nonnull align 8 dereferenceable(40) %14) #25
  %i.fm = extractvalue { i64, i64 } %i.fl, 0
  %.sroa.0.0.extract.trunc.i166 = trunc i64 %i.fm to i32
  %i.fn = and i32 %.sroa.0.0.extract.trunc.i166, 255
  %i.fo = add nsw i32 %i.fn, -9
  %i.fp = icmp ult i32 %i.fo, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br i1 %i.fp, label %.thread, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.fq = zext i32 %i.fe to i64                   ; 3 uses
  call void @_ZN4llvm11SmallVectorINS_8RegisterELj8EEC2Em(ptr noundef nonnull align 8 dereferenceable(48) %16, i64 noundef %i.fq)
  %.not253 = icmp eq i64 %.sroa.05.0.i138231, 0
  %i.fr = load ptr, ptr %16, align 8, !tbaa !26   ; 6 uses
  br i1 %.not253, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.a
  %22 = load ptr, ptr %i.cd, align 8, !tbaa !221  ; 5 uses
  %xtraiter = and i64 %i.fq, 3                    ; 3 uses
  %23 = icmp ult i32 %i.fe, 4
  br i1 %23, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.fq, 4294967292
  br label %bb.ah

._crit_edge.unr-lcssa:                            ; preds = %bb.ah
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod276 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod276)
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.af ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.af ]
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1 ; 2 uses
  %i.fs = getelementptr inbounds nuw [32 x i8], ptr %22, i64 %indvars.iv.next.epil
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !222
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv.epil
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !164
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.af, !llvm.loop !592

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %bb.af, %.lr.ph.a
  %i.fw = load ptr, ptr %0, align 8, !tbaa !296, !nonnull !23, !align !204
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  store i32 %i.e, ptr %17, align 8, !tbaa !164
  %i.fx = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 1, ptr %i.fx, align 8, !tbaa !300
  %i.fy = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !38
  %i.ga = zext i32 %i.fz to i64
  %i.gb = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder16buildMergeValuesERKNS_5DstOpENS_8ArrayRefINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.fw, ptr noundef nonnull align 8 dereferenceable(20) %17, ptr %i.fr, i64 %i.ga) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 %i.e)
  %i.gc = load ptr, ptr %16, align 8, !tbaa !26   ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ge = icmp eq ptr %i.gc, %i.gd
  br i1 %i.ge, label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %i.gc) #25
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit: ; preds = %._crit_edge, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit163

bb.ah:                                            ; preds = %bb.ah, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.ah ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.ah ]
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.gf = getelementptr inbounds nuw [32 x i8], ptr %22, i64 %indvars.iv.next
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !222
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !164
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.gj = getelementptr inbounds nuw [32 x i8], ptr %22, i64 %indvars.iv.next.1
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !222
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv.next
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !164
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.gn = getelementptr inbounds nuw [32 x i8], ptr %22, i64 %indvars.iv.next.2
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !222
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv.next.1
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !164
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.gr = getelementptr inbounds nuw [32 x i8], ptr %22, i64 %indvars.iv.next.3
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !222
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv.next.2
  store i32 %i.gt, ptr %i.gu, align 4, !tbaa !164
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.unr-lcssa, label %bb.ah, !llvm.loop !593

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit163: ; preds = %bb.aa, %bb.z, %bb.ac, %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !38 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !40
  %.not.i.i167 = icmp ult i32 %i.gw, %i.gy
  br i1 %.not.i.i167, label %bb.aj, label %bb.ai, !prof !41

bb.ai:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit163
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj.exit168

bb.aj:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit163
  %i.gz = zext i32 %i.gw to i64
  %i.ha = load ptr, ptr %2, align 8, !tbaa !26
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.gz
  store ptr %1, ptr %i.hb, align 1
  %i.hc = load i32, ptr %i.gv, align 8, !tbaa !38
  %i.hd = add i32 %i.hc, 1
  store i32 %i.hd, ptr %i.gv, align 8, !tbaa !38
  br label %_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj.exit168

_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj.exit168: ; preds = %bb.ai, %bb.aj
  call void @_ZN4llvm28LegalizationArtifactCombiner11markDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0)
  br label %.thread

bb.ak:                                            ; preds = %bb.n
  %i.he = load ptr, ptr %i.f, align 8, !tbaa !220, !nonnull !23, !align !204
  %i.hf = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.he, i32 %.sroa.01.0.copyload.i) #25 ; 4 uses
  %.not.i.i.i.not.i.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i.not.i.i, label %bb.as, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 52
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !186
  %i.hi = icmp eq i32 %i.hh, 144
  br i1 %i.hi, label %bb.am, label %bb.as

bb.am:                                            ; preds = %bb.al
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  %i.hk = load i24, ptr %i.hj, align 8
  %i.hl = icmp eq i24 %i.hk, 2
  br i1 %i.hl, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !221
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 36
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !222 ; 2 uses
  %i.hq = load ptr, ptr %0, align 8, !tbaa !296, !nonnull !23, !align !204
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  store i32 %i.e, ptr %18, align 8, !tbaa !164
  %i.hr = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 1, ptr %i.hr, align 8, !tbaa !300
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  store i32 %i.hp, ptr %19, align 8, !tbaa !164
  %i.hs = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 0, ptr %i.hs, align 8, !tbaa !303
  %i.ht = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder10buildTruncERKNS_5DstOpERKNS_5SrcOpESt8optionalIjE(ptr noundef nonnull align 8 dereferenceable(96) %i.hq, ptr noundef nonnull align 8 dereferenceable(20) %18, ptr noundef nonnull align 8 dereferenceable(20) %19, i64 0) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !38 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !40
  %.not.i169 = icmp ult i32 %i.hv, %i.hx
  br i1 %.not.i169, label %bb.ap, label %bb.ao, !prof !41

bb.ao:                                            ; preds = %bb.an
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 %i.e)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit170

bb.ap:                                            ; preds = %bb.an
  %i.hy = zext i32 %i.hv to i64
  %i.hz = load ptr, ptr %3, align 8, !tbaa !26
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.hy
  store i32 %i.e, ptr %i.ia, align 1
  %i.ib = load i32, ptr %i.hu, align 8, !tbaa !38
  %i.ic = add i32 %i.ib, 1
  store i32 %i.ic, ptr %i.hu, align 8, !tbaa !38
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit170

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit170: ; preds = %bb.ao, %bb.ap
  %i.id = load ptr, ptr %i.f, align 8, !tbaa !220, !nonnull !23, !align !204
  %i.ie = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.id, i32 %i.hp) #25
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !38 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !40
  %.not.i.i171 = icmp ult i32 %i.ig, %i.ii
  br i1 %.not.i.i171, label %bb.ar, label %bb.aq, !prof !41

bb.aq:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit170
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj.exit172

bb.ar:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit170
  %i.ij = zext i32 %i.ig to i64
  %i.ik = load ptr, ptr %2, align 8, !tbaa !26
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %i.ij
  store ptr %1, ptr %i.il, align 1
  %i.im = load i32, ptr %i.if, align 8, !tbaa !38
  %i.in = add i32 %i.im, 1
  store i32 %i.in, ptr %i.if, align 8, !tbaa !38
  br label %_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj.exit172

_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj.exit172: ; preds = %bb.aq, %bb.ar
  call void @_ZN4llvm28LegalizationArtifactCombiner11markDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.ie, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0)
  br label %.thread

bb.as:                                            ; preds = %bb.al, %bb.am, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !217, !nonnull !23, !align !204
  %i.iq = load <2 x ptr>, ptr %0, align 8, !tbaa !27
  %i.ir = shufflevector <2 x ptr> %i.iq, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ir, ptr %20, align 16, !tbaa !27
  %i.is = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %i.ip, ptr %i.is, align 16, !tbaa !195
  %i.it = getelementptr inbounds nuw i8, ptr %20, i64 24
  %.mask.i.i173 = and i64 %i.r, -1152921504606846976
  %i.iu = icmp eq i64 %.mask.i.i173, 4611686018427387904 ; 2 uses
  br i1 %i.iu, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit184.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.iv = lshr i64 %i.r, 60
  %.off.i.i174 = add nsw i64 %i.iv, -1
  %switch.i.i175 = icmp ult i64 %.off.i.i174, 3
  br i1 %switch.i.i175, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit184.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit184

_ZNK4llvm3LLT13getSizeInBitsEv.exit184.thread:    ; preds = %bb.as, %bb.at
  %i.iw = icmp slt i64 %i.r, -8070450532247928832
  %spec.select.i.i.i183 = or i1 %i.iw, %i.iu
  %i.ix = lshr i64 %i.r, 44
  %i.iy = and i64 %i.ix, 65535
  %i.iz = lshr i64 %i.r, 28
  %i.ja = select i1 %spec.select.i.i.i183, i64 %i.iy, i64 %i.iz
  br label %_ZNK4llvm8TypeSizecvmEv.exit185

_ZNK4llvm3LLT13getSizeInBitsEv.exit184:           ; preds = %bb.at
  %i.jb = lshr i64 %i.r, 4
  %.sroa.0.0.insert.ext.i.i.i176 = and i64 %i.jb, 65535
  %i.jc = icmp slt i64 %i.r, -8070450532247928832
  %i.jd = lshr i64 %i.r, 44
  %i.je = and i64 %i.jd, 65535
  %i.jf = lshr i64 %i.r, 28
  %.0.in.i3.i177 = select i1 %i.jc, i64 %i.je, i64 %i.jf
  %i.jg = mul nuw nsw i64 %.0.in.i3.i177, %.sroa.0.0.insert.ext.i.i.i176
  %i.jh = trunc i64 %i.r to i1
  br i1 %i.jh, label %bb.au, label %_ZNK4llvm8TypeSizecvmEv.exit185

bb.au:                                            ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit184
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.13) #26
  unreachable
end_hunk_1
begin_hunk_2_@_ZN4llvm28LegalizationArtifactCombiner18canFoldMergeOpcodeEjjNS_3LLTES1_:bb.a
  br i1 %i.br, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit49.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit49

_ZNK4llvm3LLT13getSizeInBitsEv.exit49.thread:     ; preds = %bb.z
  %i.cd = lshr i64 %3, 44
  %i.ce = and i64 %i.cd, 65535
  br label %_ZNK4llvm8TypeSizecvmEv.exit50

_ZNK4llvm3LLT13getSizeInBitsEv.exit49:            ; preds = %bb.z
  %i.cf = lshr i64 %3, 4
  %.sroa.0.0.insert.ext.i.i.i41 = and i64 %i.cf, 65535
  %i.cg = icmp slt i64 %3, -8070450532247928832
  %i.ch = lshr i64 %3, 44
  %i.ci = and i64 %i.ch, 65535
  %i.cj = lshr i64 %3, 28
  %.0.in.i3.i42 = select i1 %i.cg, i64 %i.ci, i64 %i.cj
  %i.ck = mul nuw nsw i64 %.0.in.i3.i42, %.sroa.0.0.insert.ext.i.i.i41
  %i.cl = and i64 %i.ck, 4294967295
  %i.cm = trunc i64 %3 to i1
  br i1 %i.cm, label %bb.aa, label %_ZNK4llvm8TypeSizecvmEv.exit50

bb.aa:                                            ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit49
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.13) #26
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit50:                   ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit49.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit49
  %.sroa.05.0.i4475 = phi i64 [ %i.ce, %_ZNK4llvm3LLT13getSizeInBitsEv.exit49.thread ], [ %i.cl, %_ZNK4llvm3LLT13getSizeInBitsEv.exit49 ]
  %i.cn = icmp samesign uge i64 %.sroa.05.0.i4475, %i.bp
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit37, %_ZNK4llvm8TypeSizecvmEv.exit50, %bb.o, %bb.n, %bb.b, %bb.a, %bb.m
  %.1 = phi i1 [ true, %bb.n ], [ false, %bb.a ], [ %i.ag, %bb.m ], [ true, %bb.b ], [ false, %bb.o ], [ %i.cc, %_ZNK4llvm8TypeSizecvmEv.exit37 ], [ %i.cn, %_ZNK4llvm8TypeSizecvmEv.exit50 ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm28LegalizationArtifactCombiner18tryFoldUnmergeCastERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EERNS3_INS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %5 = alloca %"class.llvm::LLT", align 8         ; 5 uses
  %6 = alloca %"class.llvm::LLT", align 8         ; 4 uses
  %7 = alloca %"class.llvm::LLT", align 8         ; 7 uses
  %8 = alloca %"class.llvm::LLT", align 8         ; 8 uses
  %9 = alloca %"struct.llvm::LegalityQuery", align 8 ; 8 uses
  %10 = alloca [2 x %"class.llvm::LLT"], align 8  ; 6 uses
  %11 = alloca %"struct.llvm::LegalityQuery", align 8 ; 8 uses
  %12 = alloca [2 x %"class.llvm::LLT"], align 8  ; 6 uses
  %13 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %14 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %15 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %16 = alloca %"struct.llvm::LegalityQuery", align 8 ; 7 uses
  %17 = alloca [2 x %"class.llvm::LLT"], align 8  ; 5 uses
  %18 = alloca %"class.llvm::SmallVector.477", align 8 ; 9 uses
  %19 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !186  ; 2 uses
  switch i32 %i.b, label %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit [
    i32 144, label %bb.b
    i32 152, label %bb.b
    i32 154, label %bb.b
    i32 143, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i24, ptr %i.c, align 8
  %i.e = zext i24 %i.d to i32
  %i.f = add nsw i32 %i.e, -1                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !221
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !222  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !220, !nonnull !23, !align !204 ; 6 uses
  %i.m = icmp slt i32 %i.j, 0
  br i1 %i.m, label %bb.c, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.c:                                             ; preds = %bb.b
  %i.n = and i32 %i.j, 2147483647                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 472
  %i.p = load i32, ptr %i.o, align 8, !tbaa !38
  %i.q = icmp ugt i32 %i.p, %i.n
  br i1 %i.q, label %bb.d, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 464
  %i.s = zext nneg i32 %i.n to i64
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load i64, ptr %i.u, align 8, !tbaa !222
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.w = phi i64 [ %i.v, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 15 uses
  store i64 %i.w, ptr %5, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !221  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !222 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit87

bb.e:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.ac = and i32 %i.aa, 2147483647               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 472
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !38
  %i.af = icmp ugt i32 %i.ae, %i.ac
  br i1 %i.af, label %bb.f, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit87

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 464
  %i.ah = zext nneg i32 %i.ac to i64
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !26
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !222
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit87

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit87: ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, %bb.e, %bb.f
  %.sroa.04.0.i86 = phi i64 [ %i.ak, %bb.f ], [ 0, %bb.e ], [ 0, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit ] ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.al = zext i32 %i.f to i64                    ; 3 uses
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !222 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.g, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit89

bb.g:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit87
  %i.aq = and i32 %i.ao, 2147483647               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 472
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !38
  %i.at = icmp ugt i32 %i.as, %i.aq
  br i1 %i.at, label %bb.h, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit89

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 464
  %i.av = zext nneg i32 %i.aq to i64
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !26
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !222
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit89

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit89: ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit87, %bb.g, %bb.h
  %i.az = phi i64 [ %i.ay, %bb.h ], [ 0, %bb.g ], [ 0, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit87 ] ; 9 uses
  store i64 %i.az, ptr %6, align 8
  %.mask.i.i = and i64 %i.w, -1152921504606846976
  %i.ba = icmp eq i64 %.mask.i.i, 4611686018427387904 ; 2 uses
  br i1 %i.ba, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit89
  %i.bb = lshr i64 %i.w, 60
  %.off.i.i = add nsw i64 %i.bb, -1
  %switch.i.i = icmp ult i64 %.off.i.i, 3
  br i1 %switch.i.i, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread:       ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit89, %bb.i
  %i.bc = icmp slt i64 %i.w, -8070450532247928832
  %spec.select.i.i.i = or i1 %i.bc, %i.ba
  %i.bd = lshr i64 %i.w, 44
  %i.be = and i64 %i.bd, 65535
  %i.bf = lshr i64 %i.w, 28
  %i.bg = and i64 %i.bf, 4294967295
  %i.bh = select i1 %spec.select.i.i.i, i64 %i.be, i64 %i.bg
  br label %_ZNK4llvm8TypeSizecvmEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit:              ; preds = %bb.i
  %i.bi = lshr i64 %i.w, 4
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.bi, 65535
  %i.bj = icmp slt i64 %i.w, -8070450532247928832
  %i.bk = lshr i64 %i.w, 44
  %i.bl = and i64 %i.bk, 65535
  %i.bm = lshr i64 %i.w, 28
  %.0.in.i3.i = select i1 %i.bj, i64 %i.bl, i64 %i.bm
  %i.bn = mul nuw nsw i64 %.0.in.i3.i, %.sroa.0.0.insert.ext.i.i.i
  %i.bo = and i64 %i.bn, 4294967295
  %i.bp = trunc i64 %i.w to i1
  br i1 %i.bp, label %bb.j, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.j:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.13) #26
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  %.sroa.05.0.i148 = phi i64 [ %i.bh, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread ], [ %i.bo, %_ZNK4llvm3LLT13getSizeInBitsEv.exit ] ; 2 uses
  %i.bq = trunc nuw i64 %.sroa.05.0.i148 to i32   ; 2 uses
  %.mask.i.i90 = and i64 %.sroa.04.0.i86, -1152921504606846976 ; 2 uses
  %i.br = icmp eq i64 %.mask.i.i90, 4611686018427387904 ; 3 uses
  br i1 %i.br, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit101.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.bs = lshr i64 %.sroa.04.0.i86, 60
  %.off.i.i91 = add nsw i64 %i.bs, -1
  %switch.i.i92 = icmp ult i64 %.off.i.i91, 3
  br i1 %switch.i.i92, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit101.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit101

_ZNK4llvm3LLT13getSizeInBitsEv.exit101.thread:    ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %bb.k
  %i.bt = icmp slt i64 %.sroa.04.0.i86, -8070450532247928832
  %spec.select.i.i.i100 = or i1 %i.bt, %i.br
  %i.bu = lshr i64 %.sroa.04.0.i86, 44
  %i.bv = and i64 %i.bu, 65535
  %i.bw = lshr i64 %.sroa.04.0.i86, 28
  %i.bx = select i1 %spec.select.i.i.i100, i64 %i.bv, i64 %i.bw
  br label %_ZNK4llvm8TypeSizecvmEv.exit102

_ZNK4llvm3LLT13getSizeInBitsEv.exit101:           ; preds = %bb.k
  %i.by = lshr i64 %.sroa.04.0.i86, 4
  %.sroa.0.0.insert.ext.i.i.i93 = and i64 %i.by, 65535
  %i.bz = icmp slt i64 %.sroa.04.0.i86, -8070450532247928832
  %i.ca = lshr i64 %.sroa.04.0.i86, 44
  %i.cb = and i64 %i.ca, 65535
  %i.cc = lshr i64 %.sroa.04.0.i86, 28
  %.0.in.i3.i94 = select i1 %i.bz, i64 %i.cb, i64 %i.cc
  %i.cd = mul nuw nsw i64 %.0.in.i3.i94, %.sroa.0.0.insert.ext.i.i.i93
  %i.ce = trunc i64 %.sroa.04.0.i86 to i1
  br i1 %i.ce, label %bb.l, label %_ZNK4llvm8TypeSizecvmEv.exit102

bb.l:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit101
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.13) #26
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit102:                  ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit101.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit101
  %.sroa.05.0.i96153 = phi i64 [ %i.bx, %_ZNK4llvm3LLT13getSizeInBitsEv.exit101.thread ], [ %i.cd, %_ZNK4llvm3LLT13getSizeInBitsEv.exit101 ]
  %i.cf = trunc i64 %.sroa.05.0.i96153 to i32     ; 2 uses
  %i.cg = icmp eq i32 %i.b, 144
  br i1 %i.cg, label %bb.m, label %bb.at

bb.m:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit102
  %i.ch = lshr i64 %i.az, 60                      ; 2 uses
  %i.ci = add nsw i64 %i.ch, -5
  %switch.selectcmp.i = icmp ult i64 %i.ci, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  br i1 %switch.selectcmp.i, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.cj = icmp slt i64 %i.az, -8070450532247928832
  br i1 %i.cj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ck = and i64 %i.az, 1152921504605798400
  %i.cl = or disjoint i64 %i.ck, 4611686018427387904
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit

bb.p:                                             ; preds = %bb.n
  %.mask.i.i.i = and i64 %i.az, -1152921504606846976 ; 2 uses
  switch i64 %.mask.i.i.i, label %bb.u [
    i64 8070450532247928832, label %bb.q
    i64 6917529027641081856, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p
  %i.cm = trunc i64 %i.az to i32
  %i.cn = lshr i32 %i.cm, 20
  %i.co = and i32 %i.cn, 255                      ; 2 uses
  %i.cp = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !320, !range !22, !noundef !23
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.co) #25
  %i.cs = tail call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.cr) #25
  %i.ct = zext i32 %i.cs to i64
  %i.cu = shl nuw nsw i64 %i.ct, 28               ; 2 uses
  br i1 %i.cq, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %storemerge.i.i.i.i.i.i = or disjoint i64 %i.cu, 1152921504606846976
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit

bb.s:                                             ; preds = %bb.q
  %i.cv = shl nuw nsw i32 %i.co, 20
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = or disjoint i64 %i.cu, %i.cw
  %i.cy = or disjoint i64 %i.cx, 3458764513820540928
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit

bb.t:                                             ; preds = %bb.p
  %i.cz = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !320, !range !22, !noundef !23
  %i.da = trunc nuw i8 %i.cz to i1
  %i.db = and i64 %i.az, 1152921504338411520
  %.sroa.0.0.v.i.i.i = select i1 %i.da, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i.i = or disjoint i64 %.sroa.0.0.v.i.i.i, %i.db
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit

bb.u:                                             ; preds = %bb.p
  %i.dc = icmp eq i64 %.mask.i.i.i, 4611686018427387904
  %i.dd = lshr i64 %i.az, 44
  %i.de = and i64 %i.dd, 65535
  %i.df = lshr i64 %i.az, 28
  %i.dg = and i64 %i.df, 4294967295
  %i.dh = select i1 %i.dc, i64 %i.de, i64 %i.dg
  %i.di = shl nuw nsw i64 %i.dh, 28
  %storemerge.i.i.i.i.i = or disjoint i64 %i.di, 1152921504606846976
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit

_ZNK4llvm3LLT13getScalarTypeEv.exit:              ; preds = %bb.o, %bb.r, %bb.s, %bb.t, %bb.u
  %.sroa.0.0.i = phi i64 [ %storemerge.i.i.i.i.i.i, %bb.r ], [ %i.cl, %bb.o ], [ %storemerge.i.i.i.i.i, %bb.u ], [ %.sroa.0.0.i6.i.i, %bb.t ], [ %i.cy, %bb.s ]
  store i64 %.sroa.0.0.i, ptr %7, align 8
  %i.dj = lshr i64 %.sroa.04.0.i86, 60
  %i.dk = add nsw i64 %i.dj, -5
  %switch.selectcmp.i.i103 = icmp ult i64 %i.dk, 4
  br i1 %switch.selectcmp.i.i103, label %bb.v, label %_ZNK4llvm3LLT13getScalarTypeEv.exit110.thread

bb.v:                                             ; preds = %_ZNK4llvm3LLT13getScalarTypeEv.exit
  %i.dl = icmp slt i64 %.sroa.04.0.i86, -8070450532247928832
  br i1 %i.dl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dm = and i64 %.sroa.04.0.i86, 1152921504605798400
  %i.dn = or disjoint i64 %i.dm, 4611686018427387904
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit110

bb.x:                                             ; preds = %bb.v
  switch i64 %.mask.i.i90, label %bb.ac [
    i64 8070450532247928832, label %bb.y
    i64 6917529027641081856, label %bb.ab
  ]

bb.y:                                             ; preds = %bb.x
  %i.do = trunc i64 %.sroa.04.0.i86 to i32
  %i.dp = lshr i32 %i.do, 20
  %i.dq = and i32 %i.dp, 255                      ; 2 uses
  %i.dr = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !320, !range !22, !noundef !23
  %i.ds = trunc nuw i8 %i.dr to i1
  %i.dt = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.dq) #25
  %i.du = tail call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.dt) #25
  %i.dv = zext i32 %i.du to i64
  %i.dw = shl nuw nsw i64 %i.dv, 28               ; 2 uses
  br i1 %i.ds, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %storemerge.i.i.i.i.i.i108 = or disjoint i64 %i.dw, 1152921504606846976
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit110

bb.aa:                                            ; preds = %bb.y
  %i.dx = shl nuw nsw i32 %i.dq, 20
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = or disjoint i64 %i.dw, %i.dy
  %i.ea = or disjoint i64 %i.dz, 3458764513820540928
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit110

bb.ab:                                            ; preds = %bb.x
  %i.eb = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !320, !range !22, !noundef !23
  %i.ec = trunc nuw i8 %i.eb to i1
  %i.ed = and i64 %.sroa.04.0.i86, 1152921504338411520
  %.sroa.0.0.v.i.i.i106 = select i1 %i.ec, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i.i107 = or disjoint i64 %.sroa.0.0.v.i.i.i106, %i.ed
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit110

bb.ac:                                            ; preds = %bb.x
  %i.ee = lshr i64 %.sroa.04.0.i86, 44
  %i.ef = and i64 %i.ee, 65535
  %i.eg = lshr i64 %.sroa.04.0.i86, 28
  %i.eh = and i64 %i.eg, 4294967295
  %i.ei = select i1 %i.br, i64 %i.ef, i64 %i.eh
  %i.ej = shl nuw nsw i64 %i.ei, 28
  %storemerge.i.i.i.i.i109 = or disjoint i64 %i.ej, 1152921504606846976
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit110

_ZNK4llvm3LLT13getScalarTypeEv.exit110:           ; preds = %bb.w, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.sroa.0.0.i104 = phi i64 [ %storemerge.i.i.i.i.i.i108, %bb.z ], [ %i.dn, %bb.w ], [ %storemerge.i.i.i.i.i109, %bb.ac ], [ %.sroa.0.0.i6.i.i107, %bb.ab ], [ %i.ea, %bb.aa ]
  store i64 %.sroa.0.0.i104, ptr %8, align 8
  %i.ek = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %i.ek, label %bb.ad, label %bb.ak

_ZNK4llvm3LLT13getScalarTypeEv.exit110.thread:    ; preds = %_ZNK4llvm3LLT13getScalarTypeEv.exit
  store i64 %.sroa.04.0.i86, ptr %8, align 8
  %i.el = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %i.el, label %.thread, label %bb.ak

bb.ad:                                            ; preds = %_ZNK4llvm3LLT13getScalarTypeEv.exit110
  %i.em = trunc i64 %i.w to i1
  br i1 %i.em, label %bb.ae, label %_ZNK4llvm3LLT14getNumElementsEv.exit

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.15) #26
  unreachable

_ZNK4llvm3LLT14getNumElementsEv.exit:             ; preds = %bb.ad
  %i.en = trunc i64 %i.w to i32
  %i.eo = lshr i32 %i.en, 4
  %i.ep = and i32 %i.eo, 65535
  %i.eq = udiv i32 %i.ep, %i.f
  %i.er = zext nneg i32 %i.eq to i64
  br label %.thread

.thread:                                          ; preds = %_ZNK4llvm3LLT13getScalarTypeEv.exit110.thread, %_ZNK4llvm3LLT14getNumElementsEv.exit
  %.sroa.0.0.insert.ext.i = phi i64 [ %i.er, %_ZNK4llvm3LLT14getNumElementsEv.exit ], [ 1, %_ZNK4llvm3LLT13getScalarTypeEv.exit110.thread ] ; 2 uses
  %i.es = call i64 @_ZNK4llvm3LLT18changeElementCountENS_12ElementCountE(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 %.sroa.0.0.insert.ext.i) ; 3 uses
  %i.et = call i64 @_ZNK4llvm3LLT18changeElementCountENS_12ElementCountE(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 %.sroa.0.0.insert.ext.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store i64 %i.es, ptr %10, align 8, !tbaa !222
  %i.eu = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ev = load i64, ptr %5, align 8, !tbaa !222
  store i64 %i.ev, ptr %i.eu, align 8, !tbaa !222
  store i32 80, ptr %9, align 8, !tbaa !309
  %i.ew = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %10, ptr %i.ew, align 8, !tbaa !310
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 2, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !32
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ex, i8 0, i64 16, i1 false)
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !217, !nonnull !23, !align !204
  %i.fa = call { i64, i64 } @_ZNK4llvm13LegalizerInfo9getActionERKNS_13LegalityQueryE(ptr noundef nonnull align 8 dereferenceable(46376) %i.ez, ptr noundef nonnull align 8 dereferenceable(40) %9) #25
  %i.fb = extractvalue { i64, i64 } %i.fa, 0
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.fb to i32
  %i.fc = and i32 %.sroa.0.0.extract.trunc.i, 255
  %i.fd = add nsw i32 %i.fc, -9
  %i.fe = icmp ult i32 %i.fd, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  br i1 %i.fe, label %.critedge2, label %bb.af

bb.af:                                            ; preds = %.thread
  %i.ff = load ptr, ptr %i.ey, align 8, !tbaa !217, !nonnull !23, !align !204
  store i64 %i.et, ptr %12, align 8, !tbaa !222
  %i.fg = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.es, ptr %i.fg, align 8, !tbaa !222
  store i32 144, ptr %11, align 8, !tbaa !309
  %i.fh = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %12, ptr %i.fh, align 8, !tbaa !310
  %.sroa.22.0..sroa_idx.i113 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 2, ptr %.sroa.22.0..sroa_idx.i113, align 8, !tbaa !32
  %i.fi = getelementptr inbounds nuw i8, ptr %11, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fi, i8 0, i64 16, i1 false)
  %i.fj = call { i64, i64 } @_ZNK4llvm13LegalizerInfo9getActionERKNS_13LegalityQueryE(ptr noundef nonnull align 8 dereferenceable(46376) %i.ff, ptr noundef nonnull align 8 dereferenceable(40) %11) #25
  %i.fk = extractvalue { i64, i64 } %i.fj, 0
  %i.fl = and i64 %i.fk, 255
  %i.fm = icmp eq i64 %i.fl, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br i1 %i.fm, label %bb.at, label %bb.ag

.critedge2:                                       ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.at

bb.ag:                                            ; preds = %bb.af
  %i.fn = load ptr, ptr %0, align 8, !tbaa !296, !nonnull !23, !align !204
  call void @_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(96) %i.fn, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %i.fo = load ptr, ptr %0, align 8, !tbaa !296, !nonnull !23, !align !204
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  store i32 %i.j, ptr %13, align 8, !tbaa !164
  %i.fp = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 0, ptr %i.fp, align 8, !tbaa !303
  %i.fq = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder12buildUnmergeENS_3LLTERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.fo, i64 %i.es, ptr noundef nonnull align 8 dereferenceable(20) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %.not85156 = icmp eq i32 %i.f, 0
  br i1 %.not85156, label %._crit_edge160, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.ag
  %i.fr = extractvalue { ptr, ptr } %i.fq, 1
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.fu = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  %i.fw = getelementptr inbounds nuw i8, ptr %15, i64 16
  br label %bb.ah

._crit_edge160:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit, %bb.ag
  call void @_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0)
  br label %bb.at

bb.ah:                                            ; preds = %.lr.ph159, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit
  %indvars.iv163 = phi i64 [ 0, %.lr.ph159 ], [ %indvars.iv.next164, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit ] ; 3 uses
  %i.fx = load ptr, ptr %i.x, align 8, !tbaa !221
  %i.fy = getelementptr inbounds nuw [32 x i8], ptr %i.fx, i64 %indvars.iv163
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !222 ; 3 uses
  %i.gb = load i32, ptr %i.fs, align 8, !tbaa !38 ; 2 uses
  %i.gc = load i32, ptr %i.ft, align 4, !tbaa !40
  %.not.i = icmp ult i32 %i.gb, %i.gc
  br i1 %.not.i, label %bb.aj, label %bb.ai, !prof !41

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 %i.ga)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.aj:                                            ; preds = %bb.ah
  %i.gd = zext i32 %i.gb to i64
  %i.ge = load ptr, ptr %4, align 8, !tbaa !26
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gd
  store i32 %i.ga, ptr %i.gf, align 1
  %i.gg = load i32, ptr %i.fs, align 8, !tbaa !38
  %i.gh = add i32 %i.gg, 1
  store i32 %i.gh, ptr %i.fs, align 8, !tbaa !38
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit: ; preds = %bb.ai, %bb.aj
  %i.gi = load ptr, ptr %0, align 8, !tbaa !296, !nonnull !23, !align !204
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  store i32 %i.ga, ptr %14, align 8, !tbaa !164
  store i32 1, ptr %i.fu, align 8, !tbaa !300
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.gj = load ptr, ptr %i.fv, align 8, !tbaa !221
  %i.gk = getelementptr inbounds nuw [32 x i8], ptr %i.gj, i64 %indvars.iv163
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !222
  store i32 %i.gm, ptr %15, align 8, !tbaa !164
  store i32 0, ptr %i.fw, align 8, !tbaa !303
  %i.gn = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder10buildTruncERKNS_5DstOpERKNS_5SrcOpESt8optionalIjE(ptr noundef nonnull align 8 dereferenceable(96) %i.gi, ptr noundef nonnull align 8 dereferenceable(20) %14, ptr noundef nonnull align 8 dereferenceable(20) %15, i64 0) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %.not85 = icmp eq i64 %indvars.iv.next164, %i.al
  br i1 %.not85, label %._crit_edge160, label %bb.ah, !llvm.loop !621

.critedge:                                        ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNK4llvm3LLT13getScalarTypeEv.exit110.thread, %.critedge, %_ZNK4llvm3LLT13getScalarTypeEv.exit110
  %i.go = lshr i64 %i.w, 60
  %.off.i = add nsw i64 %i.go, -1
  %switch.i = icmp ult i64 %.off.i, 3
  %.off.i115 = add nsw i64 %i.ch, -1
  %switch.i116 = icmp ult i64 %.off.i115, 3
  %or.cond = select i1 %switch.i, i1 %switch.i116, i1 false
  br i1 %or.cond, label %bb.al, label %bb.at

bb.al:                                            ; preds = %bb.ak
  %i.gp = lshr i64 %.sroa.04.0.i86, 60
  %i.gq = add nsw i64 %i.gp, -5
  %switch.selectcmp.i117 = icmp ult i64 %i.gq, 4
  br i1 %switch.selectcmp.i117, label %bb.at, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gr = urem i32 %i.bq, %i.cf
  %i.gs = udiv exact i32 %i.bq, %i.cf
  %.not = icmp eq i32 %i.gr, 0
  br i1 %.not, label %bb.an, label %bb.at

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  store i64 %.sroa.04.0.i86, ptr %17, align 8, !tbaa !222
  %i.gt = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.w, ptr %i.gt, align 8, !tbaa !222
  store i32 80, ptr %16, align 8, !tbaa !309
  %i.gu = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %17, ptr %i.gu, align 8, !tbaa !310
  %.sroa.22.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 2, ptr %.sroa.22.0..sroa_idx.i118, align 8, !tbaa !32
  %i.gv = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gv, i8 0, i64 16, i1 false)
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !217, !nonnull !23, !align !204
  %i.gy = call { i64, i64 } @_ZNK4llvm13LegalizerInfo9getActionERKNS_13LegalityQueryE(ptr noundef nonnull align 8 dereferenceable(46376) %i.gx, ptr noundef nonnull align 8 dereferenceable(40) %16) #25
  %i.gz = extractvalue { i64, i64 } %i.gy, 0
  %.sroa.0.0.extract.trunc.i120 = trunc i64 %i.gz to i32
  %i.ha = and i32 %.sroa.0.0.extract.trunc.i120, 255
  %i.hb = add nsw i32 %i.ha, -9
  %i.hc = icmp ult i32 %i.hb, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br i1 %i.hc, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.hd = zext i32 %i.gs to i64                   ; 3 uses
  call void @_ZN4llvm11SmallVectorINS_8RegisterELj8EEC2Em(ptr noundef nonnull align 8 dereferenceable(48) %18, i64 noundef %i.hd)
  %.not161 = icmp eq i64 %.sroa.05.0.i148, 0
  br i1 %.not161, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.as, %bb.ao
  %i.he = load ptr, ptr %0, align 8, !tbaa !296, !nonnull !23, !align !204
  call void @_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(96) %i.he, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %i.hf = load ptr, ptr %0, align 8, !tbaa !296, !nonnull !23, !align !204
  %i.hg = load ptr, ptr %18, align 8, !tbaa !26
  %i.hh = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !38
  %i.hj = zext i32 %i.hi to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  store i32 %i.j, ptr %19, align 8, !tbaa !164
  %i.hk = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 0, ptr %i.hk, align 8, !tbaa !303
  %i.hl = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder12buildUnmergeENS_8ArrayRefINS_8RegisterEEERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.hf, ptr %i.hg, i64 %i.hj, ptr noundef nonnull align 8 dereferenceable(20) %19) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  %i.hm = load ptr, ptr %18, align 8, !tbaa !26   ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.hd
  call void @_ZN4llvm15SmallVectorImplINS_8RegisterEE6appendIPS1_vEEvT_S5_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.hm, ptr noundef %i.hn)
  call void @_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0)
  %i.ho = load ptr, ptr %18, align 8, !tbaa !26   ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.hq = icmp eq ptr %i.ho, %i.hp
  br i1 %i.hq, label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %i.ho) #25
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit: ; preds = %._crit_edge, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %bb.at

.lr.ph:                                           ; preds = %bb.ao, %bb.as
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.as ], [ 0, %bb.ao ] ; 4 uses
  %i.hr = icmp samesign ult i64 %indvars.iv, %i.al
  br i1 %i.hr, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph
  %i.hs = load ptr, ptr %i.x, align 8, !tbaa !221
  %i.ht = getelementptr inbounds nuw [32 x i8], ptr %i.hs, i64 %indvars.iv
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !222
  br label %bb.as

bb.ar:                                            ; preds = %.lr.ph
  %i.hw = load ptr, ptr %i.k, align 8, !tbaa !220, !nonnull !23, !align !204
  %i.hx = call i32 @_ZN4llvm19MachineRegisterInfo28createGenericVirtualRegisterENS_3LLTENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.hw, i64 %.sroa.04.0.i86, ptr nonnull @.str.14, i64 0) #25
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %.sink = phi i32 [ %i.hv, %bb.aq ], [ %i.hx, %bb.ar ]
  %i.hy = load ptr, ptr %18, align 8, !tbaa !26
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv
  store i32 %.sink, ptr %i.hz, align 4, !tbaa !164
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ia = icmp samesign ult i64 %indvars.iv.next, %i.hd
  br i1 %i.ia, label %.lr.ph, label %._crit_edge, !llvm.loop !622

bb.at:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit102, %bb.al, %bb.ak, %bb.an, %bb.am, %._crit_edge160, %.critedge2, %bb.af, %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit
  %.1 = phi i1 [ true, %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit ], [ false, %bb.an ], [ false, %bb.af ], [ false, %bb.am ], [ true, %._crit_edge160 ], [ false, %.critedge2 ], [ false, %bb.ak ], [ false, %_ZNK4llvm8TypeSizecvmEv.exit102 ], [ false, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit

_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit: ; preds = %bb.a, %bb.at
  %.2 = phi i1 [ %.1, %bb.at ], [ false, %bb.a ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm3LLT6divideEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 14 uses
  %i.b = lshr i64 %i.a, 60
  %i.c = add nsw i64 %i.b, -5
  %switch.selectcmp.i = icmp ult i64 %i.c, 4
  br i1 %switch.selectcmp.i, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %i.a to i32                    ; 2 uses
  %i.e = lshr i32 %i.d, 4
  %.sroa.0.0.extract.trunc = and i32 %i.e, 65535
  %i.f = udiv i32 %.sroa.0.0.extract.trunc, %1
  %.sroa.0.4.extract.trunc = shl i64 %i.a, 32
  %.sroa.2.0.insert.shift.i.i5 = and i64 %.sroa.0.4.extract.trunc, 4294967296
  %.sroa.0.0.insert.ext.i.i6 = zext nneg i32 %i.f to i64
  %.sroa.0.0.insert.insert.i.i7 = or disjoint i64 %.sroa.2.0.insert.shift.i.i5, %.sroa.0.0.insert.ext.i.i6 ; 2 uses
  %i.g = icmp slt i64 %i.a, -8070450532247928832
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = and i64 %i.a, 1152921504605798400
  %i.i = or disjoint i64 %i.h, 4611686018427387904
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.d:                                             ; preds = %bb.b
  %.mask.i.i = and i64 %i.a, -1152921504606846976 ; 2 uses
  switch i64 %.mask.i.i, label %bb.i [
    i64 8070450532247928832, label %bb.e
    i64 6917529027641081856, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = lshr i32 %i.d, 20
  %i.k = and i32 %i.j, 255                        ; 2 uses
  %i.l = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !320, !range !22, !noundef !23
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.k) #25
  %i.o = tail call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.n) #25
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 28                 ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %storemerge.i.i.i.i.i = or disjoint i64 %i.q, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.g:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i32 %i.k, 20
  %i.s = zext nneg i32 %i.r to i64
  %i.t = or disjoint i64 %i.q, %i.s
  %i.u = or disjoint i64 %i.t, 3458764513820540928
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.h:                                             ; preds = %bb.d
  %i.v = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !320, !range !22, !noundef !23
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = and i64 %i.a, 1152921504338411520
  %.sroa.0.0.v.i.i = select i1 %i.w, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i = or disjoint i64 %.sroa.0.0.v.i.i, %i.x
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.i:                                             ; preds = %bb.d
  %i.y = icmp eq i64 %.mask.i.i, 4611686018427387904
  %i.z = lshr i64 %i.a, 44
  %i.aa = and i64 %i.z, 65535
  %i.ab = lshr i64 %i.a, 28
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = select i1 %i.y, i64 %i.aa, i64 %i.ac
  %i.ae = shl nuw nsw i64 %i.ad, 28
  %storemerge.i.i.i.i = or disjoint i64 %i.ae, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

_ZNK4llvm3LLT14getElementTypeEv.exit:             ; preds = %bb.c, %bb.f, %bb.g, %bb.h, %bb.i
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.c ], [ %storemerge.i.i.i.i, %bb.i ], [ %.sroa.0.0.i6.i, %bb.h ], [ %i.u, %bb.g ], [ %storemerge.i.i.i.i.i, %bb.f ] ; 2 uses
  %.not4.not.i = icmp eq i64 %.sroa.0.0.insert.insert.i.i7, 1
  br i1 %.not4.not.i, label %_ZN4llvm3LLT14scalarOrVectorENS_12ElementCountES0_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit
  %i.af = tail call i64 @_ZN4llvm3LLT6vectorENS_12ElementCountES0_(i64 %.sroa.0.0.insert.insert.i.i7, i64 %.sroa.0.0.i)
  br label %_ZN4llvm3LLT14scalarOrVectorENS_12ElementCountES0_.exit

bb.k:                                             ; preds = %bb.a
  %.mask.i = and i64 %i.a, -1152921504606846976   ; 2 uses
  %i.ag = icmp eq i64 %.mask.i, 2305843009213693952
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = lshr i64 %i.a, 28
  %.0.i = trunc i64 %i.ah to i32
  %i.ai = udiv i32 %.0.i, %1
  %i.aj = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !320, !range !22, !noundef !23
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = zext i32 %i.ai to i64
  %i.am = shl nuw nsw i64 %i.al, 28
  %.sroa.0.0.v.i = select i1 %i.ak, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i8 = or disjoint i64 %.sroa.0.0.v.i, %i.am
  br label %_ZN4llvm3LLT14scalarOrVectorENS_12ElementCountES0_.exit

bb.m:                                             ; preds = %bb.k
  %i.an = icmp eq i64 %.mask.i, 4611686018427387904
  %i.ao = icmp slt i64 %i.a, -8070450532247928832
  %spec.select.i.i10 = or i1 %i.ao, %i.an
  %i.ap = lshr i64 %i.a, 44
  %i.aq = and i64 %i.ap, 65535
  %i.ar = lshr i64 %i.a, 28
  %.0.in.i11 = select i1 %spec.select.i.i10, i64 %i.aq, i64 %i.ar
  %.0.i12 = trunc i64 %.0.in.i11 to i32
  %i.as = udiv i32 %.0.i12, %1
  %i.at = zext i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 28
  %storemerge.i.i.i = or disjoint i64 %i.au, 1152921504606846976
  br label %_ZN4llvm3LLT14scalarOrVectorENS_12ElementCountES0_.exit

_ZN4llvm3LLT14scalarOrVectorENS_12ElementCountES0_.exit: ; preds = %bb.j, %_ZNK4llvm3LLT14getElementTypeEv.exit, %bb.m, %bb.l
  %.sroa.04.0 = phi i64 [ %storemerge.i.i.i, %bb.m ], [ %.sroa.0.0.i8, %bb.l ], [ %i.af, %bb.j ], [ %.sroa.0.0.i, %_ZNK4llvm3LLT14getElementTypeEv.exit ]
  ret i64 %.sroa.04.0
}

declare i32 @_ZN4llvm19MachineRegisterInfo28createGenericVirtualRegisterENS_3LLTENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520), i64, ptr, i64) local_unnamed_addr #5

declare { ptr, ptr } @_ZN4llvm16MachineIRBuilder12buildUnmergeENS_8ArrayRefINS_8RegisterEEERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96), ptr, i64, ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15SmallVectorImplINS_8RegisterEE6appendIPS1_vEEvT_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4llvm28LegalizationArtifactCombiner19ArtifactValueFinder19findValueFromConcatERNS_14GConcatVectorsEjj:bb.a

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.b, %bb.a, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  %.sroa.05.0.i57 = phi i64 [ %i.v, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread ], [ %i.ab, %_ZNK4llvm3LLT13getSizeInBitsEv.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.ad = trunc i64 %.sroa.05.0.i57 to i32        ; 4 uses
  %i.ae = urem i32 %2, %i.ad                      ; 3 uses
  %i.af = udiv i32 %2, %i.ad
  %i.ag = add i32 %i.ae, %3
  %i.ah = icmp ugt i32 %i.ag, %i.ad
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.028.0.copyload = load i32, ptr %i.ai, align 8, !tbaa !164
  br label %bb.o

bb.f:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.aj = add i32 %i.af, 1
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !222 ; 10 uses
  %i.ao = icmp eq i32 %i.ae, 0
  br i1 %i.ao, label %bb.i, label %.split

.split:                                           ; preds = %bb.f
  %i.ap = icmp slt i32 %i.an, 0
  br i1 %i.ap, label %bb.g, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit33

bb.g:                                             ; preds = %.split
  %i.aq = and i32 %i.an, 2147483647               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !38
  %i.at = icmp ugt i32 %i.as, %i.aq
  br i1 %i.at, label %bb.h, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit33

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.av = zext nneg i32 %i.aq to i64
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !26
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !222
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit33

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit33: ; preds = %.split, %bb.g, %bb.h
  %.sroa.04.0.i32 = phi i64 [ %i.ay, %bb.h ], [ 0, %bb.g ], [ 0, %.split ]
  %i.az = tail call i32 @_ZN4llvm28LegalizationArtifactCombiner19ArtifactValueFinder20findValueFromDefImplENS_8RegisterEjjNS_3LLTE(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 %i.an, i32 noundef %i.ae, i32 noundef %3, i64 %.sroa.04.0.i32)
  br label %bb.o

bb.i:                                             ; preds = %bb.f
  %i.ba = icmp eq i32 %3, %i.ad
  br i1 %i.ba, label %bb.l, label %.split29

.split29:                                         ; preds = %bb.i
  %i.bb = icmp slt i32 %i.an, 0
  br i1 %i.bb, label %bb.j, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit35

bb.j:                                             ; preds = %.split29
  %i.bc = and i32 %i.an, 2147483647               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !38
  %i.bf = icmp ugt i32 %i.be, %i.bc
  br i1 %i.bf, label %bb.k, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit35

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.bh = zext nneg i32 %i.bc to i64
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !26
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !222
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit35

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit35: ; preds = %.split29, %bb.j, %bb.k
  %.sroa.04.0.i34 = phi i64 [ %i.bk, %bb.k ], [ 0, %bb.j ], [ 0, %.split29 ]
  %i.bl = tail call i32 @_ZN4llvm28LegalizationArtifactCombiner19ArtifactValueFinder20findValueFromDefImplENS_8RegisterEjjNS_3LLTE(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 %i.an, i32 noundef 0, i32 noundef %3, i64 %.sroa.04.0.i34)
  br label %bb.o

bb.l:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.an, ptr %i.bm, align 8, !tbaa !164
  %i.bn = icmp slt i32 %i.an, 0
  br i1 %i.bn, label %bb.m, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37

bb.m:                                             ; preds = %bb.l
  %i.bo = and i32 %i.an, 2147483647               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !38
  %i.br = icmp ugt i32 %i.bq, %i.bo
  br i1 %i.br, label %bb.n, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.bt = zext nneg i32 %i.bo to i64
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !26
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !222
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37: ; preds = %bb.l, %bb.m, %bb.n
  %.sroa.04.0.i36 = phi i64 [ %i.bw, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ]
  %i.bx = tail call i32 @_ZN4llvm28LegalizationArtifactCombiner19ArtifactValueFinder20findValueFromDefImplENS_8RegisterEjjNS_3LLTE(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 %i.an, i32 noundef 0, i32 noundef %3, i64 %.sroa.04.0.i36)
  br label %bb.o

bb.o:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit35, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit33, %bb.e
  %.sroa.028.1 = phi i32 [ %.sroa.028.0.copyload, %bb.e ], [ %i.bx, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37 ], [ %i.az, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit33 ], [ %i.bl, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit35 ]
  ret i32 %.sroa.028.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN4llvm28LegalizationArtifactCombiner19ArtifactValueFinder24findValueFromBuildVectorERNS_12GBuildVectorEjj(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"struct.llvm::LegalityQuery", align 8 ; 7 uses
  %5 = alloca [2 x %"class.llvm::LLT"], align 8   ; 5 uses
  %6 = alloca %"class.llvm::SmallVector.482", align 8 ; 10 uses
  %7 = alloca %"class.llvm::DstOp", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !221  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !222  ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !318, !nonnull !23, !align !204 ; 4 uses
  %i.f = icmp slt i32 %i.d, 0                     ; 2 uses
  br i1 %i.f, label %bb.b, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %i.d, 2147483647                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.i = load i32, ptr %i.h, align 8, !tbaa !38
  %i.j = icmp ugt i32 %i.i, %i.g
  br i1 %i.j, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, label %_ZNK4llvm8TypeSizecvmEv.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.l = zext nneg i32 %i.g to i64
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load i64, ptr %i.n, align 8, !tbaa !222
  %.fr = freeze i64 %i.o                          ; 10 uses
  %.mask.i.i = and i64 %.fr, -1152921504606846976
  %i.p = icmp eq i64 %.mask.i.i, 4611686018427387904 ; 2 uses
  br i1 %i.p, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.q = lshr i64 %.fr, 60
  %.off.i.i = add nsw i64 %i.q, -1
  %switch.i.i = icmp ult i64 %.off.i.i, 3
  br i1 %switch.i.i, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread:       ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, %bb.c
  %i.r = icmp slt i64 %.fr, -8070450532247928832
  %spec.select.i.i.i = or i1 %i.r, %i.p
  %i.s = lshr i64 %.fr, 44
  %i.t = and i64 %i.s, 65535
  %i.u = lshr i64 %.fr, 28
  %i.v = select i1 %spec.select.i.i.i, i64 %i.t, i64 %i.u
  br label %_ZNK4llvm8TypeSizecvmEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit:              ; preds = %bb.c
  %i.w = lshr i64 %.fr, 4
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.w, 65535
  %i.x = icmp slt i64 %.fr, -8070450532247928832
  %i.y = lshr i64 %.fr, 44
  %i.z = and i64 %i.y, 65535
  %i.aa = lshr i64 %.fr, 28
  %spec.select = select i1 %i.x, i64 %i.z, i64 %i.aa
  %i.ab = mul nuw nsw i64 %spec.select, %.sroa.0.0.insert.ext.i.i.i
  %i.ac = trunc i64 %.fr to i1
  br i1 %i.ac, label %bb.d, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.d:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.13) #26
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.b, %bb.a, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  %.sroa.05.0.i74 = phi i64 [ %i.v, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread ], [ %i.ab, %_ZNK4llvm3LLT13getSizeInBitsEv.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.ad = trunc i64 %.sroa.05.0.i74 to i32        ; 6 uses
  %i.ae = udiv i32 %2, %i.ad
  %i.af = add i32 %i.ae, 1                        ; 4 uses
  %i.ag = urem i32 %2, %i.ad
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.040.0.copyload = load i32, ptr %i.ah, align 8, !tbaa !164
  br label %bb.v

bb.f:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.ai = icmp ult i32 %3, %i.ad
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.040.0.copyload41 = load i32, ptr %i.aj, align 8, !tbaa !164
  br label %bb.v

bb.h:                                             ; preds = %bb.f
  %i.ak = icmp ugt i32 %3, %i.ad
  br i1 %i.ak, label %bb.i, label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.al = urem i32 %3, %i.ad
  %i.am = udiv exact i32 %3, %i.ad                ; 3 uses
  %.not47 = icmp eq i32 %i.al, 0
  br i1 %.not47, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.040.0.copyload42 = load i32, ptr %i.an, align 8, !tbaa !164
  br label %bb.v

bb.k:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load i24, ptr %i.ao, align 8
  %i.aq = zext i24 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, -1
  %i.as = icmp eq i32 %i.am, %i.ar
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !222
  br label %bb.v

bb.m:                                             ; preds = %bb.k
  br i1 %i.f, label %bb.n, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit50

bb.n:                                             ; preds = %bb.m
  %i.av = and i32 %i.d, 2147483647                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !38
  %i.ay = icmp ugt i32 %i.ax, %i.av
  br i1 %i.ay, label %bb.o, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit50

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.ba = zext nneg i32 %i.av to i64
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !26
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !222
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit50

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit50: ; preds = %bb.m, %bb.n, %bb.o
  %.sroa.04.0.i49 = phi i64 [ %i.bd, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.am to i64
  %i.be = tail call i64 @_ZN4llvm3LLT6vectorENS_12ElementCountES0_(i64 %.sroa.0.0.insert.ext.i.i, i64 %.sroa.04.0.i49) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !626, !nonnull !23, !align !204
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i64 %i.be, ptr %5, align 8, !tbaa !222
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.sroa.04.0.i49, ptr %i.bh, align 8, !tbaa !222
  store i32 83, ptr %4, align 8, !tbaa !309
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %5, ptr %i.bi, align 8, !tbaa !310
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 2, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !32
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  %i.bk = call { i64, i64 } @_ZNK4llvm13LegalizerInfo9getActionERKNS_13LegalityQueryE(ptr noundef nonnull align 8 dereferenceable(46376) %i.bg, ptr noundef nonnull align 8 dereferenceable(40) %4) #25
  %i.bl = extractvalue { i64, i64 } %i.bk, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bm = and i64 %i.bl, 255
  %.not48 = icmp eq i64 %i.bm, 0
  br i1 %.not48, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit50
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.040.0.copyload43 = load i32, ptr %i.bn, align 8, !tbaa !164
  br label %bb.v

bb.q:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit50
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.bo, ptr %6, align 8, !tbaa !26
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i32 0, ptr %i.bp, align 8, !tbaa !38
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 12, ptr %i.bq, align 4, !tbaa !40
  %i.br = add i32 %i.am, %i.af                    ; 2 uses
  %i.bs = icmp ult i32 %i.af, %i.br
  br i1 %i.bs, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bt = zext i32 %i.af to i64
  %i.bu = zext i32 %i.br to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit, %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !319, !nonnull !23, !align !204 ; 2 uses
  call void @_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(96) %i.bw, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !297
  store i64 %i.bz, ptr %i.by, align 8, !tbaa !297
  %i.ca = load ptr, ptr %i.bv, align 8, !tbaa !319, !nonnull !23, !align !204
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store i64 %i.be, ptr %7, align 8, !tbaa !222
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.cb, align 8, !tbaa !300
  %i.cc = load ptr, ptr %6, align 8, !tbaa !26
  %i.cd = load i32, ptr %i.bp, align 8, !tbaa !38
  %i.ce = zext i32 %i.cd to i64
  %i.cf = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder16buildBuildVectorERKNS_5DstOpENS_8ArrayRefINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.ca, ptr noundef nonnull align 8 dereferenceable(20) %7, ptr %i.cc, i64 %i.ce) #25
  %i.cg = extractvalue { ptr, ptr } %i.cf, 1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !221
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !222
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.cl = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bo
  br i1 %i.cm, label %_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.cl) #25
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit

_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit: ; preds = %._crit_edge, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.v

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit
  %indvars.iv = phi i64 [ %i.bt, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit ] ; 2 uses
  %i.cn = load ptr, ptr %i.a, align 8, !tbaa !221
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %indvars.iv
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !222 ; 2 uses
  %i.cr = load i32, ptr %i.bp, align 8, !tbaa !38 ; 2 uses
  %i.cs = load i32, ptr %i.bq, align 4, !tbaa !40
  %.not.i = icmp ult i32 %i.cr, %i.cs
  br i1 %.not.i, label %bb.t, label %bb.s, !prof !41

bb.s:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 %i.cq)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.t:                                             ; preds = %.lr.ph
  %i.ct = zext i32 %i.cr to i64
  %i.cu = load ptr, ptr %6, align 8, !tbaa !26
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.ct
  store i32 %i.cq, ptr %i.cv, align 1
  %i.cw = load i32, ptr %i.bp, align 8, !tbaa !38
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.bp, align 8, !tbaa !38
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit: ; preds = %bb.s, %bb.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cy = icmp samesign ult i64 %indvars.iv.next, %i.bu
  br i1 %i.cy, label %.lr.ph, label %._crit_edge, !llvm.loop !625

bb.u:                                             ; preds = %bb.h
  %i.cz = zext i32 %i.af to i64
  %i.da = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !222
  br label %bb.v

bb.v:                                             ; preds = %bb.l, %_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit, %bb.p, %bb.u, %bb.j, %bb.g, %bb.e
  %.sroa.040.2 = phi i32 [ %.sroa.040.0.copyload, %bb.e ], [ %.sroa.040.0.copyload41, %bb.g ], [ %.sroa.040.0.copyload42, %bb.j ], [ %i.dc, %bb.u ], [ %i.au, %bb.l ], [ %.sroa.040.0.copyload43, %bb.p ], [ %i.ck, %_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit ]
  ret i32 %.sroa.040.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN4llvm28LegalizationArtifactCombiner19ArtifactValueFinder19findValueFromInsertERNS_12MachineInstrEjj(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !221  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !222  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !222  ; 6 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !318, !nonnull !23, !align !204 ; 8 uses
  %i.h = icmp slt i32 %i.f, 0                     ; 3 uses
  br i1 %i.h, label %bb.b, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread89

bb.b:                                             ; preds = %bb.a
  %i.i = and i32 %i.f, 2147483647                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 472
  %i.k = load i32, ptr %i.j, align 8, !tbaa !38
  %i.l = icmp ugt i32 %i.k, %i.i
  br i1 %i.l, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread89

_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread89:     ; preds = %bb.a, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.n = load i64, ptr %i.m, align 8, !tbaa !222
  br label %_ZNK4llvm8TypeSizecvmEv.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.p = zext nneg i32 %i.i to i64
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load i64, ptr %i.r, align 8, !tbaa !222
  %.fr = freeze i64 %i.s                          ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.u = load i64, ptr %i.t, align 8, !tbaa !222  ; 2 uses
  %.mask.i.i = and i64 %.fr, -1152921504606846976
  %i.v = icmp eq i64 %.mask.i.i, 4611686018427387904 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_15MachineFunctionENS_9po_detail9NumberSetIPNS_17MachineBasicBlockEEEEENS_11GraphTraitsIS3_EEE4initES7_:bb.a
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !38
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ab ; 2 uses
  store ptr %i.y, ptr %2, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !38 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !40
  %.not.i = icmp ult i32 %i.af, %i.ah
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !41

bb.g:                                             ; preds = %bb.f
  %i.ai = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_15MachineFunctionENS_9po_detail9NumberSetIPNS_17MachineBasicBlockEEEEENS_11GraphTraitsIS4_EEE10StackEntryELb1EE18growAndEmplaceBackIJRS8_NS_14iterator_rangeIPS8_EEEEERSE_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_15MachineFunctionENS_9po_detail9NumberSetIPNS_17MachineBasicBlockEEEEENS_11GraphTraitsIS4_EEE10StackEntryEE12emplace_backIJRS8_NS_14iterator_rangeIPS8_EEEEERSE_DpOT_.exit

bb.h:                                             ; preds = %bb.f
  %i.aj = zext i32 %i.af to i64
  %i.ak = load ptr, ptr %0, align 8, !tbaa !26
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.aj ; 3 uses
  store ptr %1, ptr %i.al, align 8, !tbaa !333
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.y, ptr %i.am, align 8, !tbaa !334
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.ac, ptr %i.an, align 8, !tbaa !335
  %i.ao = add nuw i32 %i.af, 1
  store i32 %i.ao, ptr %i.ae, align 8, !tbaa !38
  br label %_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_15MachineFunctionENS_9po_detail9NumberSetIPNS_17MachineBasicBlockEEEEENS_11GraphTraitsIS4_EEE10StackEntryEE12emplace_backIJRS8_NS_14iterator_rangeIPS8_EEEEERSE_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_15MachineFunctionENS_9po_detail9NumberSetIPNS_17MachineBasicBlockEEEEENS_11GraphTraitsIS4_EEE10StackEntryEE12emplace_backIJRS8_NS_14iterator_rangeIPS8_EEEEERSE_DpOT_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_15MachineFunctionENS_9po_detail9NumberSetIPNS_17MachineBasicBlockEEEEENS_11GraphTraitsIS3_EEE13traverseChildEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_15MachineFunctionENS_9po_detail9NumberSetIPNS_17MachineBasicBlockEEEEENS_11GraphTraitsIS4_EEE10StackEntryEE12emplace_backIJRS8_NS_14iterator_rangeIPS8_EEEEERSE_DpOT_.exit, %_ZN4llvm18PostOrderTraversalIPNS_15MachineFunctionENS_9po_detail9NumberSetIPNS_17MachineBasicBlockEEEE10insertEdgeESt8optionalIS6_ES6_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JRjEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !159, !noalias !705 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !160, !noalias !705 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !158, !noalias !705 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !201    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !164
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !202

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !201
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit, label %bb.c, !prof !41

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !164
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !203, !llvm.loop !0

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !327
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !161
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit, label %bb.d, !prof !41

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !327
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !160
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !159
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !164
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !164
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !161
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !201
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !201
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = load i32, ptr %2, align 4, !tbaa !164
  store i32 %i.bj, ptr %i.bi, align 8, !tbaa !164
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_Legalizer.cpp() #16 section ".text.startup" {
bb.a:
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL20EnableCSEInLegalizer, i32 noundef 0, i32 noundef 0) #25
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20EnableCSEInLegalizer, i64 120), align 8, !tbaa !192
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20EnableCSEInLegalizer, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL20EnableCSEInLegalizer, i64 128), align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL20EnableCSEInLegalizer, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL20EnableCSEInLegalizer, i64 144), align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL20EnableCSEInLegalizer, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL20EnableCSEInLegalizer, ptr nonnull align 1 dereferenceable(24) @.str, i64 23) #25
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZL20EnableCSEInLegalizer, i64 32), align 8, !tbaa !30
  store i64 30, ptr getelementptr inbounds nuw (i8, ptr @_ZL20EnableCSEInLegalizer, i64 40), align 8, !tbaa !32
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL20EnableCSEInLegalizer, i64 10), align 2
  %i.b = and i16 %i.a, -8
  store i16 %i.b, ptr getelementptr inbounds nuw (i8, ptr @_ZL20EnableCSEInLegalizer, i64 10), align 2
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20EnableCSEInLegalizer, i64 120), align 8, !tbaa !192
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL20EnableCSEInLegalizer, i64 137), align 1, !tbaa !326
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20EnableCSEInLegalizer, i64 136), align 8, !tbaa !706
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL20EnableCSEInLegalizer) #25
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL20EnableCSEInLegalizer, ptr nonnull @__dso_handle) #25 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL22AllowGInsertAsArtifact, i32 noundef 0, i32 noundef 0) #25
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL22AllowGInsertAsArtifact, i64 120), align 8, !tbaa !192
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL22AllowGInsertAsArtifact, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL22AllowGInsertAsArtifact, i64 128), align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL22AllowGInsertAsArtifact, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL22AllowGInsertAsArtifact, i64 144), align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL22AllowGInsertAsArtifact, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL22AllowGInsertAsArtifact, ptr nonnull align 1 dereferenceable(26) @.str.3, i64 25) #25
  store ptr @.str.4, ptr getelementptr inbounds nuw (i8, ptr @_ZL22AllowGInsertAsArtifact, i64 32), align 8, !tbaa !30
  store i64 84, ptr getelementptr inbounds nuw (i8, ptr @_ZL22AllowGInsertAsArtifact, i64 40), align 8, !tbaa !32
  %i.d = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL22AllowGInsertAsArtifact, i64 10), align 2
  %i.e = and i16 %i.d, -8
  store i16 %i.e, ptr getelementptr inbounds nuw (i8, ptr @_ZL22AllowGInsertAsArtifact, i64 10), align 2
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL22AllowGInsertAsArtifact, i64 120), align 8, !tbaa !192
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL22AllowGInsertAsArtifact, i64 137), align 1, !tbaa !326
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL22AllowGInsertAsArtifact, i64 136), align 8, !tbaa !706
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL22AllowGInsertAsArtifact) #25
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL22AllowGInsertAsArtifact, ptr nonnull @__dso_handle) #25 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { builtin nounwind allocsize(0) }
attributes #28 = { builtin nounwind }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !39}
!1 = distinct !{!1, !39}
!2 = distinct !{!2, !39}
!3 = distinct !{!3, !39}
!4 = distinct !{!4, !39}
!5 = distinct !{!5, !39}
!6 = distinct !{!6, !39}
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
!18 = !{!"any p2 pointer", !17, i64 0}
!19 = !{!"bool", !11, i64 0}
!20 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !18, i64 0, !12, i64 8, !12, i64 12, !19, i64 16}
!21 = !{!20, !19, i64 16}
!22 = !{i8 0, i8 2}
!23 = !{}
!24 = !{!20, !18, i64 0}
!25 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !17, i64 0, !12, i64 8, !12, i64 12}
!26 = !{!25, !17, i64 0}
!27 = !{!17, !17, i64 0}
!28 = !{!"p1 _ZTSSt17reference_wrapperIN4llvm12PassRegistryEE", !17, i64 0}
!29 = !{!"p1 omnipotent char", !17, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"long", !11, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"_ZTSN4llvm9StringRefE", !29, i64 0, !31, i64 8}
!34 = !{!"p1 _ZTSN4llvm16AnalysisResolverE", !17, i64 0}
!35 = !{!"_ZTSN4llvm8PassKindE", !11, i64 0}
!36 = !{!"_ZTSN4llvm4PassE", !34, i64 8, !17, i64 16, !35, i64 24}
!37 = !{!36, !34, i64 8}
!38 = !{!25, !12, i64 8}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!25, !12, i64 12}
!41 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!42 = !{!"p1 _ZTSN4llvm8FunctionE", !17, i64 0}
!43 = !{!"p1 _ZTSN4llvm13TargetMachineE", !17, i64 0}
!44 = !{!"p1 _ZTSN4llvm19TargetSubtargetInfoE", !17, i64 0}
!45 = !{!"p1 _ZTSN4llvm9MCContextE", !17, i64 0}
!46 = !{!"p1 _ZTSN4llvm19MachineRegisterInfoE", !17, i64 0}
!47 = !{!"p1 _ZTSN4llvm19MachineFunctionInfoE", !17, i64 0}
!48 = !{!"p1 _ZTSN4llvm16MachineFrameInfoE", !17, i64 0}
!49 = !{!"p1 _ZTSN4llvm19MachineConstantPoolE", !17, i64 0}
!50 = !{!"p1 _ZTSN4llvm20MachineJumpTableInfoE", !17, i64 0}
!51 = !{!"p1 _ZTSN4llvm9MCSectionE", !17, i64 0}
!52 = !{!"p1 _ZTSN4llvm13WinEHFuncInfoE", !17, i64 0}
!53 = !{!"p2 _ZTSN4llvm17MachineBasicBlockE", !18, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!55 = !{!"_ZTSNSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE12_Vector_implE", !54, i64 0}
!56 = !{!"_ZTSSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE", !55, i64 0}
!57 = !{!"_ZTSSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE", !56, i64 0}
!58 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPvvEE", !25, i64 0}
!59 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPvLb1EEE", !58, i64 0}
!60 = !{!"_ZTSN4llvm15SmallVectorImplIPvEE", !59, i64 0}
!61 = !{!"_ZTSN4llvm18SmallVectorStorageIPvLj4EEE", !11, i64 0}
!62 = !{!"_ZTSN4llvm11SmallVectorIPvLj4EEE", !60, i64 0, !61, i64 16}
!63 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPvmEvEE", !25, i64 0}
!64 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EEE", !63, i64 0}
!65 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPvmEEE", !64, i64 0}
!66 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPvmELj0EEE", !65, i64 0}
!67 = !{!"_ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE", !29, i64 0, !31, i64 8, !62, i64 16, !66, i64 64}
!68 = !{!"p1 _ZTSN4llvm8RecyclerINS_12MachineInstrELm80ELm8EE8FreeNodeE", !17, i64 0}
!69 = !{!"_ZTSN4llvm8RecyclerINS_12MachineInstrELm80ELm8EEE", !68, i64 0}
!70 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListEvEE", !25, i64 0}
!71 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELb1EEE", !70, i64 0}
!72 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListEEE", !71, i64 0}
!73 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELj8EEE", !11, i64 0}
!74 = !{!"_ZTSN4llvm11SmallVectorIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELj8EEE", !72, i64 0, !73, i64 16}
!75 = !{!"_ZTSN4llvm13ArrayRecyclerINS_14MachineOperandELm8EEE", !74, i64 0}
!76 = !{!"p1 _ZTSN4llvm8RecyclerINS_17MachineBasicBlockELm360ELm8EE8FreeNodeE", !17, i64 0}
!77 = !{!"_ZTSN4llvm8RecyclerINS_17MachineBasicBlockELm360ELm8EEE", !76, i64 0}
!78 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !17, i64 0}
!79 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !78, i64 0, !78, i64 8}
!80 = !{!"_ZTSN4llvm15ilist_node_baseILb0EvEE", !79, i64 0}
!81 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_17MachineBasicBlockELb0ELb0EvLb0EvEEEE", !80, i64 0}
!82 = !{!"_ZTSN4llvm14ilist_sentinelINS_12ilist_detail12node_optionsINS_17MachineBasicBlockELb0ELb0EvLb0EvEEEE", !81, i64 0}
!83 = !{!"_ZTSN4llvm12simple_ilistINS_17MachineBasicBlockEJEEE", !82, i64 0}
!84 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_17MachineBasicBlockEJEEENS_12ilist_traitsIS2_EEEE", !83, i64 0}
!85 = !{!"_ZTSN4llvm6iplistINS_17MachineBasicBlockEJEEE", !84, i64 0}
!86 = !{!"_ZTSN4llvm5AlignE", !11, i64 0}
!87 = !{!"_ZTSSt12_Base_bitsetILm1EE", !31, i64 0}
!88 = !{!"_ZTSSt6bitsetILm12EE", !87, i64 0}
!89 = !{!"_ZTSN4llvm25MachineFunctionPropertiesE", !88, i64 0}
!90 = !{!"p1 _ZTSN4llvm24PseudoSourceValueManagerE", !17, i64 0}
!91 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm24PseudoSourceValueManagerELb0EE", !90, i64 0}
!92 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EEE", !91, i64 0}
!93 = !{!"_ZTSSt5tupleIJPN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EEE", !92, i64 0}
!94 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EE", !93, i64 0}
!95 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_ELb1ELb1EE", !94, i64 0}
!96 = !{!"_ZTSSt10unique_ptrIN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EE", !95, i64 0}
!97 = !{!"p1 _ZTSN4llvm16MCCFIInstructionE", !17, i64 0}
!98 = !{!"_ZTSNSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE17_Vector_impl_dataE", !97, i64 0, !97, i64 8, !97, i64 16}
!99 = !{!"_ZTSNSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE12_Vector_implE", !98, i64 0}
!100 = !{!"_ZTSSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE", !99, i64 0}
!101 = !{!"_ZTSSt6vectorIN4llvm16MCCFIInstructionESaIS1_EE", !100, i64 0}
!102 = !{!"p2 _ZTSN4llvm8MCSymbolE", !18, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE17_Vector_impl_dataE", !102, i64 0, !102, i64 8, !102, i64 16}
!104 = !{!"_ZTSNSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE12_Vector_implE", !103, i64 0}
!105 = !{!"_ZTSSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE", !104, i64 0}
!106 = !{!"_ZTSSt6vectorIPN4llvm8MCSymbolESaIS2_EE", !105, i64 0}
!107 = !{!"p1 _ZTSN4llvm14LandingPadInfoE", !17, i64 0}
!108 = !{!"_ZTSNSt12_Vector_baseIN4llvm14LandingPadInfoESaIS1_EE17_Vector_impl_dataE", !107, i64 0, !107, i64 8, !107, i64 16}
!109 = !{!"_ZTSNSt12_Vector_baseIN4llvm14LandingPadInfoESaIS1_EE12_Vector_implE", !108, i64 0}
!110 = !{!"_ZTSSt12_Vector_baseIN4llvm14LandingPadInfoESaIS1_EE", !109, i64 0}
!111 = !{!"_ZTSSt6vectorIN4llvm14LandingPadInfoESaIS1_EE", !110, i64 0}
!112 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPNS_8MCSymbolENS_11SmallVectorIjLj4EEEEE", !17, i64 0}
!113 = !{!"p1 int", !17, i64 0}
!114 = !{!"_ZTSN4llvm8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEE", !112, i64 0, !113, i64 8, !12, i64 16, !12, i64 20}
!115 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_17MachineBasicBlockEjEE", !17, i64 0}
!116 = !{!"_ZTSN4llvm8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEE", !115, i64 0, !113, i64 8, !12, i64 16, !12, i64 20}
!117 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPNS_8MCSymbolEjEE", !17, i64 0}
!118 = !{!"_ZTSN4llvm8DenseMapIPNS_8MCSymbolEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEE", !117, i64 0, !113, i64 8, !12, i64 16, !12, i64 20}
!119 = !{!"p1 _ZTSSt4pairIPN4llvm8MCSymbolEPNS0_6MDNodeEE", !17, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4llvm8MCSymbolEPNS1_6MDNodeEESaIS6_EE17_Vector_impl_dataE", !119, i64 0, !119, i64 8, !119, i64 16}
!121 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4llvm8MCSymbolEPNS1_6MDNodeEESaIS6_EE12_Vector_implE", !120, i64 0}
!122 = !{!"_ZTSSt12_Vector_baseISt4pairIPN4llvm8MCSymbolEPNS1_6MDNodeEESaIS6_EE", !121, i64 0}
!123 = !{!"_ZTSSt6vectorISt4pairIPN4llvm8MCSymbolEPNS1_6MDNodeEESaIS6_EE", !122, i64 0}
!124 = !{!"_ZTSN4llvm17BasicBlockSectionE", !11, i64 0}
!125 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_10UniqueBBIDENS_11SmallVectorIjLj12EEEEE", !17, i64 0}
!126 = !{!"_ZTSN4llvm8DenseMapINS_10UniqueBBIDENS_11SmallVectorIjLj12EEENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEEE", !125, i64 0, !113, i64 8, !12, i64 16, !12, i64 20}
!127 = !{!"p2 _ZTSN4llvm11GlobalValueE", !18, i64 0}
!128 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm11GlobalValueESaIS3_EE17_Vector_impl_dataE", !127, i64 0, !127, i64 8, !127, i64 16}
!129 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm11GlobalValueESaIS3_EE12_Vector_implE", !128, i64 0}
!130 = !{!"_ZTSSt12_Vector_baseIPKN4llvm11GlobalValueESaIS3_EE", !129, i64 0}
!131 = !{!"_ZTSSt6vectorIPKN4llvm11GlobalValueESaIS3_EE", !130, i64 0}
!132 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !113, i64 0, !113, i64 8, !113, i64 16}
!133 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !132, i64 0}
!134 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !133, i64 0}
!135 = !{!"_ZTSSt6vectorIjSaIjEE", !134, i64 0}
!136 = !{!"_ZTSN4llvm13EHPersonalityE", !11, i64 0}
!137 = !{!"p1 _ZTSN4llvm15MachineFunction8DelegateE", !17, i64 0}
!138 = !{!"p1 _ZTSN4llvm19GISelChangeObserverE", !17, i64 0}
!139 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_12MachineInstrENS_15MachineFunction12CallSiteInfoEEE", !17, i64 0}
!140 = !{!"_ZTSN4llvm8DenseMapIPKNS_12MachineInstrENS_15MachineFunction12CallSiteInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEE", !139, i64 0, !113, i64 8, !12, i64 16, !12, i64 20}
!141 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_12MachineInstrENS_15MachineFunction16CalledGlobalInfoEEE", !17, i64 0}
!142 = !{!"_ZTSN4llvm8DenseMapIPKNS_12MachineInstrENS_15MachineFunction16CalledGlobalInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEE", !141, i64 0, !113, i64 8, !12, i64 16, !12, i64 20}
!143 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_15MachineFunction15VariableDbgInfoEvEE", !25, i64 0}
!144 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_15MachineFunction15VariableDbgInfoELb1EEE", !143, i64 0}
!145 = !{!"_ZTSN4llvm15SmallVectorImplINS_15MachineFunction15VariableDbgInfoEEE", !144, i64 0}
!146 = !{!"_ZTSN4llvm18SmallVectorStorageINS_15MachineFunction15VariableDbgInfoELj4EEE", !11, i64 0}
!147 = !{!"_ZTSN4llvm11SmallVectorINS_15MachineFunction15VariableDbgInfoELj4EEE", !145, i64 0, !146, i64 16}
!148 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_15MachineFunction17DebugSubstitutionEvEE", !25, i64 0}
!149 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_15MachineFunction17DebugSubstitutionELb1EEE", !148, i64 0}
!150 = !{!"_ZTSN4llvm15SmallVectorImplINS_15MachineFunction17DebugSubstitutionEEE", !149, i64 0}
!151 = !{!"_ZTSN4llvm18SmallVectorStorageINS_15MachineFunction17DebugSubstitutionELj8EEE", !11, i64 0}
!152 = !{!"_ZTSN4llvm11SmallVectorINS_15MachineFunction17DebugSubstitutionELj8EEE", !150, i64 0, !151, i64 16}
!153 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIjNS_15MachineFunction19DebugPHIRegallocPosEEE", !17, i64 0}
!154 = !{!"_ZTSN4llvm8DenseMapIjNS_15MachineFunction19DebugPHIRegallocPosENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEE", !153, i64 0, !113, i64 8, !12, i64 16, !12, i64 20}
!155 = !{!"_ZTSN4llvm15MachineFunctionE", !42, i64 0, !43, i64 8, !44, i64 16, !45, i64 24, !46, i64 32, !47, i64 40, !48, i64 48, !49, i64 56, !50, i64 64, !51, i64 72, !52, i64 80, !57, i64 88, !12, i64 112, !12, i64 116, !67, i64 120, !69, i64 200, !75, i64 208, !77, i64 288, !85, i64 296, !12, i64 312, !86, i64 316, !19, i64 317, !19, i64 318, !19, i64 319, !89, i64 320, !96, i64 328, !101, i64 336, !106, i64 360, !106, i64 384, !111, i64 408, !114, i64 432, !116, i64 456, !118, i64 480, !123, i64 504, !19, i64 528, !19, i64 529, !19, i64 530, !19, i64 531, !19, i64 532, !19, i64 533, !19, i64 534, !12, i64 536, !124, i64 540, !126, i64 544, !131, i64 568, !135, i64 592, !135, i64 616, !136, i64 640, !137, i64 648, !138, i64 656, !140, i64 664, !142, i64 688, !147, i64 712, !12, i64 856, !152, i64 864, !154, i64 1040, !19, i64 1064}
!156 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPNS_12MachineInstrEjEE", !17, i64 0}
!157 = !{!"_ZTSN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEE", !156, i64 0, !113, i64 8, !12, i64 16, !12, i64 20}
!158 = !{!157, !12, i64 20}
!159 = !{!157, !156, i64 0}
!160 = !{!157, !113, i64 8}
!161 = !{!157, !12, i64 16}
!162 = !{!"p1 _ZTSN4llvm15MachineFunctionE", !17, i64 0}
!163 = !{!162, !162, i64 0}
end_hunk_4
