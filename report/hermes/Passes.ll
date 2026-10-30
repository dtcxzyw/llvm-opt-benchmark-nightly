Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Passes?download=true
inline.NumInlined: 1567
inline.NumDeleted: 831
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6hermes3hbc14SpillRegisters13runOnFunctionEPNS_8FunctionE:bb.a

.lr.ph124.peel.next:                              ; preds = %bb.ag
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  br label %bb.ah

._crit_edge125:                                   ; preds = %bb.ah, %bb.ag, %.lr.ph129
  %.278.lcssa = phi i1 [ %.177127, %.lr.ph129 ], [ false, %bb.ag ], [ false, %bb.ah ]
  %i.fv = getelementptr inbounds nuw i8, ptr %.072128, i64 8 ; 2 uses
  %.not81 = icmp eq ptr %i.fv, %i.fh
  br i1 %.not81, label %._crit_edge130.loopexit, label %.lr.ph129

bb.ah:                                            ; preds = %bb.ah, %.lr.ph124.peel.next
  %.071122 = phi ptr [ %i.ga, %bb.ah ], [ %i.fu, %.lr.ph124.peel.next ] ; 3 uses
  %.sroa.010.0.copyload = load ptr, ptr %.071122, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.071122, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8
  %i.fw = call noundef ptr @_ZN6hermes9IRBuilder21createHBCSpillMovInstEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %.sroa.010.0.copyload) #13 ; 2 uses
  %i.fx = load ptr, ptr %i.a, align 8, !tbaa !224, !nonnull !27, !align !110
  %i.fy = icmp eq ptr %i.fw, null
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %spec.select6 = select i1 %i.fy, ptr null, ptr %i.fz
  call void @_ZN6hermes17RegisterAllocator14updateRegisterEPNS_5ValueENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(1952) %i.fx, ptr noundef %spec.select6, i32 %.sroa.4.0.copyload) #13
  %i.ga = getelementptr inbounds nuw i8, ptr %.071122, i64 16 ; 2 uses
  %.not82 = icmp eq ptr %i.ga, %i.fp
  br i1 %.not82, label %._crit_edge125, label %bb.ah, !llvm.loop !222

bb.ai:                                            ; preds = %._crit_edge, %_ZN4llvh11SmallVectorIPN6hermes11InstructionELj4EED2Ev.exit, %.lr.ph136
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0104.0133, i64 8
  %.sroa.0104.0 = load ptr, ptr %i.gb, align 8, !tbaa !73 ; 2 uses
  %.not116 = icmp eq ptr %.sroa.0104.0, %i.ai
  br i1 %.not116, label %._crit_edge137, label %.lr.ph136

bb.aj:                                            ; preds = %bb.a, %_ZN4llvh11SmallVectorISt4pairIPN6hermes11InstructionENS2_8RegisterEELj2EED2Ev.exit
  ret i1 %i.g
}

declare noundef ptr @_ZN6hermes9IRBuilder21createHBCSpillMovInstEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes3hbc25LowerSwitchIntoJumpTables13runOnFunctionEPNS_8FunctionE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::SmallVector.93", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 4, ptr %i.c, align 4, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.sroa.021.030 = load ptr, ptr %i.d, align 8, !tbaa !73 ; 2 uses
  %.not2431 = icmp eq ptr %.sroa.021.030, %i.e
  br i1 %.not2431, label %_ZN4llvh11SmallVectorIPN6hermes10SwitchInstELj4EED2Ev.exit, label %.lr.ph34

._crit_edge35:                                    ; preds = %._crit_edge
  %.pre = load ptr, ptr %2, align 8, !tbaa !75    ; 3 uses
  %i.f = zext i32 %i.k to i64
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx
  %.not36 = icmp eq i32 %i.k, 0
  br i1 %.not36, label %._crit_edge41, label %.lr.ph40

.lr.ph34:                                         ; preds = %bb.a, %._crit_edge
  %i.h = phi i32 [ %i.k, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.sroa.021.032 = phi ptr [ %.sroa.021.0, %._crit_edge ], [ %.sroa.021.030, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.021.032, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.021.032, i64 56 ; 2 uses
  %.sroa.017.027 = load ptr, ptr %i.i, align 8, !tbaa !73 ; 2 uses
  %.not2528 = icmp eq ptr %.sroa.017.027, %i.j
  br i1 %.not2528, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %.lr.ph34
  %i.k = phi i32 [ %i.h, %.lr.ph34 ], [ %i.y, %bb.d ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.021.032, i64 8
  %.sroa.021.0 = load ptr, ptr %i.l, align 8, !tbaa !73 ; 2 uses
  %.not24 = icmp eq ptr %.sroa.021.0, %i.e
  br i1 %.not24, label %._crit_edge35, label %.lr.ph34

.lr.ph:                                           ; preds = %.lr.ph34, %bb.d
  %i.m = phi i32 [ %i.y, %bb.d ], [ %i.h, %.lr.ph34 ] ; 3 uses
  %.sroa.017.029 = phi ptr [ %.sroa.017.0, %bb.d ], [ %.sroa.017.027, %.lr.ph34 ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.017.029, i64 16
  %i.o = load i8, ptr %i.n, align 8, !tbaa !23
  %i.p = icmp ne i8 %i.o, 80
  %.not1626 = icmp eq ptr %.sroa.017.029, null
  %.not16 = or i1 %.not1626, %i.p
  br i1 %.not16, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = load i32, ptr %i.c, align 4, !tbaa !87
  %.not.i = icmp ult i32 %i.m, %i.q
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10SwitchInstELb1EE9push_backERKS3_.exit, label %bb.c, !prof !88

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 8) #13
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !76
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10SwitchInstELb1EE9push_backERKS3_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10SwitchInstELb1EE9push_backERKS3_.exit: ; preds = %bb.b, %bb.c
  %i.r = phi i32 [ %.pre.i, %bb.c ], [ %i.m, %bb.b ]
  %i.s = load ptr, ptr %2, align 8, !tbaa !75
  %i.t = zext i32 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.v = ptrtoint ptr %.sroa.017.029 to i64
  store i64 %i.v, ptr %i.u, align 1
  %i.w = load i32, ptr %i.b, align 8, !tbaa !76
  %i.x = add i32 %i.w, 1                          ; 2 uses
  store i32 %i.x, ptr %i.b, align 8, !tbaa !76
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10SwitchInstELb1EE9push_backERKS3_.exit, %.lr.ph
  %i.y = phi i32 [ %i.x, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10SwitchInstELb1EE9push_backERKS3_.exit ], [ %i.m, %.lr.ph ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.017.029, i64 8
  %.sroa.017.0 = load ptr, ptr %i.z, align 8, !tbaa !73 ; 2 uses
  %.not25 = icmp eq ptr %.sroa.017.0, %i.j
  br i1 %.not25, label %._crit_edge, label %.lr.ph

._crit_edge41.loopexit:                           ; preds = %.lr.ph40
  %.pre42 = load ptr, ptr %2, align 8, !tbaa !75
  br label %._crit_edge41

._crit_edge41:                                    ; preds = %._crit_edge41.loopexit, %._crit_edge35
  %i.aa = phi ptr [ %.pre, %._crit_edge35 ], [ %.pre42, %._crit_edge41.loopexit ] ; 2 uses
  %.015.lcssa = phi i1 [ false, %._crit_edge35 ], [ %spec.select, %._crit_edge41.loopexit ] ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.a
  br i1 %i.ab, label %_ZN4llvh11SmallVectorIPN6hermes10SwitchInstELj4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge41
  call void @free(ptr noundef %i.aa) #13
  br label %_ZN4llvh11SmallVectorIPN6hermes10SwitchInstELj4EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes10SwitchInstELj4EED2Ev.exit: ; preds = %bb.a, %._crit_edge41, %bb.e
  %.015.lcssa49 = phi i1 [ %.015.lcssa, %bb.e ], [ %.015.lcssa, %._crit_edge41 ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i1 %.015.lcssa49

.lr.ph40:                                         ; preds = %._crit_edge35, %.lr.ph40
  %.038 = phi ptr [ %i.ae, %.lr.ph40 ], [ %.pre, %._crit_edge35 ] ; 2 uses
  %.01537 = phi i1 [ %spec.select, %.lr.ph40 ], [ false, %._crit_edge35 ]
  %i.ac = load ptr, ptr %.038, align 8, !tbaa !248
  %i.ad = call noundef zeroext i1 @_ZN6hermes3hbc25LowerSwitchIntoJumpTables18lowerIntoJumpTableEPNS_10SwitchInstE(ptr nonnull align 8 poison, ptr noundef %i.ac)
  %spec.select = select i1 %i.ad, i1 true, i1 %.01537 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.038, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ae, %i.g
  br i1 %.not, label %._crit_edge41.loopexit, label %.lr.ph40
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes3hbc25LowerSwitchIntoJumpTables18lowerIntoJumpTableEPNS_10SwitchInstE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::IRBuilder", align 8 ; 8 uses
  %3 = alloca %"class.llvh::SmallVector.99", align 8 ; 12 uses
  %4 = alloca %"class.llvh::SmallVector.105", align 8 ; 12 uses
  %i.a = tail call noundef ptr @_ZNK6hermes10SwitchInst13getInputValueEv(ptr noundef nonnull align 8 dereferenceable(132) %1) #13
  %i.b = load i8, ptr %i.a, align 8, !tbaa !23
  %i.c = add i8 %i.b, -109
  %i.d = icmp ult i8 %i.c, 11
  br i1 %i.d, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !103
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !131
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !67
  store ptr %i.j, ptr %2, align 8, !tbaa !72
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  %i.l = tail call noundef i32 @_ZNK6hermes10SwitchInst14getNumCasePairEv(ptr noundef nonnull align 8 dereferenceable(132) %1) #13 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  store i32 0, ptr %i.n, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  store i32 8, ptr %i.o, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store i32 0, ptr %i.q, align 8, !tbaa !76
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  store i32 8, ptr %i.r, align 4, !tbaa !87
  %.not69 = icmp eq i32 %i.l, 0
  br i1 %.not69, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.s = call { ptr, ptr } @_ZNK6hermes10SwitchInst11getCasePairEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 0) #13 ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.s, 0        ; 3 uses
  %i.u = extractvalue { ptr, ptr } %i.s, 1
  %i.v = load i8, ptr %i.t, align 8, !tbaa !23
  %.not66.peel = icmp eq i8 %i.v, 114
  br i1 %.not66.peel, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.x = load double, ptr %i.w, align 8, !tbaa !31 ; 5 uses
  %5 = fcmp olt double %i.x, 0.000000e+00
  %6 = fcmp ugt double %i.x, f0x41EFFFFFFFE00000
  %or.cond1.i.peel = or i1 %6, %5
  br i1 %or.cond1.i.peel, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = fptoui double %i.x to i32                ; 4 uses
  %i.z = uitofp i32 %i.y to double
  %i.aa = fcmp oeq double %i.x, %i.z
  br i1 %i.aa, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %.not.i.peel = icmp eq i32 %i.y, 0
  %i.ab = bitcast double %i.x to i64
  %i.ac = icmp slt i64 %i.ab, 0
  %or.cond91 = and i1 %.not.i.peel, %i.ac
  br i1 %or.cond91, label %.critedge, label %_ZNK6hermes13LiteralNumber22isIntTypeRepresentibleIjEEN4llvh8OptionalIT_EEv.exit.peel

_ZNK6hermes13LiteralNumber22isIntTypeRepresentibleIjEEN4llvh8OptionalIT_EEv.exit.peel: ; preds = %bb.e
  %i.ad = load i32, ptr %i.n, align 8, !tbaa !76  ; 2 uses
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !87
  %.not.i38.peel = icmp ult i32 %i.ad, %i.ae
  br i1 %.not.i38.peel, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes13LiteralNumberELb1EE9push_backERKS3_.exit.peel, label %bb.f, !prof !88

bb.f:                                             ; preds = %_ZNK6hermes13LiteralNumber22isIntTypeRepresentibleIjEEN4llvh8OptionalIT_EEv.exit.peel
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.m, i64 noundef 0, i64 noundef 8) #13
  %.pre.i.peel = load i32, ptr %i.n, align 8, !tbaa !76
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes13LiteralNumberELb1EE9push_backERKS3_.exit.peel

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes13LiteralNumberELb1EE9push_backERKS3_.exit.peel: ; preds = %bb.f, %_ZNK6hermes13LiteralNumber22isIntTypeRepresentibleIjEEN4llvh8OptionalIT_EEv.exit.peel
  %i.af = phi i32 [ %.pre.i.peel, %bb.f ], [ %i.ad, %_ZNK6hermes13LiteralNumber22isIntTypeRepresentibleIjEEN4llvh8OptionalIT_EEv.exit.peel ]
  %i.ag = load ptr, ptr %3, align 8, !tbaa !75
  %i.ah = zext i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = ptrtoint ptr %i.t to i64
  store i64 %i.aj, ptr %i.ai, align 1
  %i.ak = load i32, ptr %i.n, align 8, !tbaa !76
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.n, align 8, !tbaa !76
  %i.am = load i32, ptr %i.q, align 8, !tbaa !76  ; 2 uses
  %i.an = load i32, ptr %i.r, align 4, !tbaa !87
  %.not.i39.peel = icmp ult i32 %i.am, %i.an
  br i1 %.not.i39.peel, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit.peel, label %bb.g, !prof !88

bb.g:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes13LiteralNumberELb1EE9push_backERKS3_.exit.peel
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.p, i64 noundef 0, i64 noundef 8) #13
  %.pre.i40.peel = load i32, ptr %i.q, align 8, !tbaa !76
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit.peel

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit.peel: ; preds = %bb.g, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes13LiteralNumberELb1EE9push_backERKS3_.exit.peel
  %i.ao = phi i32 [ %.pre.i40.peel, %bb.g ], [ %i.am, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes13LiteralNumberELb1EE9push_backERKS3_.exit.peel ]
  %i.ap = load ptr, ptr %4, align 8, !tbaa !75
  %i.aq = zext i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq
  %i.as = ptrtoint ptr %i.u to i64
  store i64 %i.as, ptr %i.ar, align 1
  %i.at = load i32, ptr %i.q, align 8, !tbaa !76
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.q, align 8, !tbaa !76
  %.not.peel = icmp eq i32 %i.l, 1
  br i1 %.not.peel, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit.peel, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit
  %.03172 = phi i32 [ %i.by, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit.peel ] ; 2 uses
  %.071 = phi i32 [ %.sroa.speculated, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit ], [ %i.y, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit.peel ]
  %.06070 = phi i32 [ %.sroa.speculated46, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit ], [ %i.y, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit.peel ]
  %i.av = call { ptr, ptr } @_ZNK6hermes10SwitchInst11getCasePairEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef %.03172) #13 ; 2 uses
  %i.aw = extractvalue { ptr, ptr } %i.av, 0      ; 3 uses
  %i.ax = extractvalue { ptr, ptr } %i.av, 1
  %i.ay = load i8, ptr %i.aw, align 8, !tbaa !23
  %.not66 = icmp eq i8 %i.ay, 114
  br i1 %.not66, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ba = load double, ptr %i.az, align 8, !tbaa !31 ; 5 uses
  %7 = fcmp olt double %i.ba, 0.000000e+00
  %8 = fcmp ugt double %i.ba, f0x41EFFFFFFFE00000
  %or.cond1.i = or i1 %8, %7
  br i1 %or.cond1.i, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = fptoui double %i.ba to i32              ; 4 uses
  %i.bc = uitofp i32 %i.bb to double
  %i.bd = fcmp oeq double %i.ba, %i.bc
  br i1 %i.bd, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %.not.i = icmp eq i32 %i.bb, 0
  %i.be = bitcast double %i.ba to i64
  %i.bf = icmp slt i64 %i.be, 0
  %or.cond93 = and i1 %.not.i, %i.bf
  br i1 %or.cond93, label %.critedge, label %_ZNK6hermes13LiteralNumber22isIntTypeRepresentibleIjEEN4llvh8OptionalIT_EEv.exit

_ZNK6hermes13LiteralNumber22isIntTypeRepresentibleIjEEN4llvh8OptionalIT_EEv.exit: ; preds = %bb.j
  %i.bg = load i32, ptr %i.n, align 8, !tbaa !76  ; 2 uses
  %i.bh = load i32, ptr %i.o, align 4, !tbaa !87
  %.not.i38 = icmp ult i32 %i.bg, %i.bh
  br i1 %.not.i38, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes13LiteralNumberELb1EE9push_backERKS3_.exit, label %bb.k, !prof !88

bb.k:                                             ; preds = %_ZNK6hermes13LiteralNumber22isIntTypeRepresentibleIjEEN4llvh8OptionalIT_EEv.exit
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.m, i64 noundef 0, i64 noundef 8) #13
  %.pre.i = load i32, ptr %i.n, align 8, !tbaa !76
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes13LiteralNumberELb1EE9push_backERKS3_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes13LiteralNumberELb1EE9push_backERKS3_.exit: ; preds = %_ZNK6hermes13LiteralNumber22isIntTypeRepresentibleIjEEN4llvh8OptionalIT_EEv.exit, %bb.k
  %i.bi = phi i32 [ %.pre.i, %bb.k ], [ %i.bg, %_ZNK6hermes13LiteralNumber22isIntTypeRepresentibleIjEEN4llvh8OptionalIT_EEv.exit ]
  %i.bj = load ptr, ptr %3, align 8, !tbaa !75
  %i.bk = zext i32 %i.bi to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = ptrtoint ptr %i.aw to i64
  store i64 %i.bm, ptr %i.bl, align 1
  %i.bn = load i32, ptr %i.n, align 8, !tbaa !76
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.n, align 8, !tbaa !76
  %i.bp = load i32, ptr %i.q, align 8, !tbaa !76  ; 2 uses
  %i.bq = load i32, ptr %i.r, align 4, !tbaa !87
  %.not.i39 = icmp ult i32 %i.bp, %i.bq
  br i1 %.not.i39, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit, label %bb.l, !prof !88

bb.l:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes13LiteralNumberELb1EE9push_backERKS3_.exit
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.p, i64 noundef 0, i64 noundef 8) #13
  %.pre.i40 = load i32, ptr %i.q, align 8, !tbaa !76
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes13LiteralNumberELb1EE9push_backERKS3_.exit, %bb.l
  %i.br = phi i32 [ %.pre.i40, %bb.l ], [ %i.bp, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes13LiteralNumberELb1EE9push_backERKS3_.exit ]
  %i.bs = load ptr, ptr %4, align 8, !tbaa !75
  %i.bt = zext i32 %i.br to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = ptrtoint ptr %i.ax to i64
  store i64 %i.bv, ptr %i.bu, align 1
  %i.bw = load i32, ptr %i.q, align 8, !tbaa !76
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.q, align 8, !tbaa !76
  %.sroa.speculated46 = call i32 @llvm.umin.i32(i32 %i.bb, i32 %.06070) ; 4 uses
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %.071, i32 %i.bb) ; 3 uses
  %i.by = add nuw i32 %.03172, 1                  ; 2 uses
  %.not = icmp eq i32 %i.by, %i.l
  br i1 %.not, label %.critedge35, label %.lr.ph, !llvm.loop !249

.critedge35:                                      ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit
  %i.bz = sub i32 %.sroa.speculated, %.sroa.speculated46 ; 3 uses
  %i.ca = icmp eq i32 %.sroa.speculated, %.sroa.speculated46
  %i.cb = icmp eq i32 %i.bz, -1
  %or.cond64 = or i1 %i.ca, %i.cb
  br i1 %or.cond64, label %.critedge, label %bb.m

bb.m:                                             ; preds = %.critedge35
  %i.cc = udiv i32 %i.bz, %i.l
  %i.cd = icmp ugt i32 %i.cc, 5
  %i.ce = icmp ult i32 %i.l, 10
  %or.cond = or i1 %i.ce, %i.cd
  br i1 %or.cond, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %1) #13
  %i.cf = call noundef ptr @_ZNK6hermes10SwitchInst13getInputValueEv(ptr noundef nonnull align 8 dereferenceable(132) %1) #13
  %i.cg = call noundef ptr @_ZNK6hermes10SwitchInst21getDefaultDestinationEv(ptr noundef nonnull align 8 dereferenceable(132) %1) #13
  %i.ch = uitofp i32 %.sroa.speculated46 to double
  %i.ci = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(40) %2, double noundef %i.ch) #13
  %i.cj = add nuw i32 %i.bz, 1
  %i.ck = uitofp i32 %i.cj to double
  %i.cl = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(40) %2, double noundef %i.ck) #13
  %i.cm = call noundef ptr @_ZN6hermes9IRBuilder19createSwitchImmInstEPNS_5ValueEPNS_10BasicBlockEPNS_13LiteralNumberES6_RKN4llvh11SmallVectorIS6_Lj8EEERKNS8_IS4_Lj8EEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.cf, ptr noundef %i.cg, ptr noundef %i.ci, ptr noundef %i.cl, ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(80) %4) #13 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.co = icmp eq ptr %i.cm, null
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %spec.select = select i1 %i.co, ptr null, ptr %i.cp
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.cn, ptr noundef %spec.select) #13
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %1) #13
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.h, %.lr.ph, %bb.j, %bb.e, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit.peel, %bb.b, %.lr.ph.preheader, %bb.c, %bb.d, %bb.n, %.critedge35, %bb.m
  %.5 = phi i1 [ false, %bb.m ], [ true, %bb.n ], [ false, %.critedge35 ], [ false, %.lr.ph.preheader ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit.peel ], [ false, %bb.e ], [ false, %bb.j ], [ false, %.lr.ph ], [ false, %bb.h ], [ false, %bb.i ]
  %i.cq = load ptr, ptr %4, align 8, !tbaa !75    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.p
  br i1 %i.cr, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.cq) #13
  br label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit: ; preds = %.critedge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.cs = load ptr, ptr %3, align 8, !tbaa !75    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.m
  br i1 %i.ct, label %_ZN4llvh11SmallVectorIPN6hermes13LiteralNumberELj8EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit
  call void @free(ptr noundef %i.cs) #13
  br label %_ZN4llvh11SmallVectorIPN6hermes13LiteralNumberELj8EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes13LiteralNumberELj8EED2Ev.exit: ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZN4llvh11SmallVectorIPN6hermes13LiteralNumberELj8EED2Ev.exit
  %.6 = phi i1 [ %.5, %_ZN4llvh11SmallVectorIPN6hermes13LiteralNumberELj8EED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.6
}

declare noundef ptr @_ZNK6hermes10SwitchInst13getInputValueEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

declare noundef i32 @_ZNK6hermes10SwitchInst14getNumCasePairEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

declare { ptr, ptr } @_ZNK6hermes10SwitchInst11getCasePairEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder19createSwitchImmInstEPNS_5ValueEPNS_10BasicBlockEPNS_13LiteralNumberES6_RKN4llvh11SmallVectorIS6_Lj8EEERKNS8_IS4_Lj8EEE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare noundef ptr @_ZNK6hermes10SwitchInst21getDefaultDestinationEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc13LoadConstantsD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc14LoadParametersD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc23LowerLoadStoreFrameInstD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc19LowerArgumentsArrayD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc19DedupReifyArgumentsD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc17LowerConstructionD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc10LowerCallsD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc19RecreateCheapValuesD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc26LoadConstantValueNumberingD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc14SpillRegistersD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
end_hunk_0
