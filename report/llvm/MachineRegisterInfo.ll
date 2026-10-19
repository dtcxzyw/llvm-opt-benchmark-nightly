Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachineRegisterInfo?download=true
inline.NumInlined: 1629
inline.NumDeleted: 952
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK4llvm19MachineRegisterInfo17isConstantPhysRegENS_10MCRegisterE:bb.a
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(344) %i.ae) #23, !inline_history !421
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 240
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !428
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !431
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.t
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !337, !range !24, !noundef !25
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %_ZNK4llvm19MachineRegisterInfo13isAllocatableENS_10MCRegisterE.exit, label %_ZNK4llvm19MachineRegisterInfo13isAllocatableENS_10MCRegisterE.exit.thread

_ZNK4llvm19MachineRegisterInfo13isAllocatableENS_10MCRegisterE.exit: ; preds = %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.thread
  %i.aq = and i32 %i.s, 63
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = shl nuw i64 1, %i.ar
  %i.at = lshr i32 %i.s, 6
  %i.au = zext nneg i32 %i.at to i64
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !28
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !253
  %i.ay = and i64 %i.ax, %i.as
  %.not.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i, label %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.thread15, label %_ZNK4llvm19MachineRegisterInfo13isAllocatableENS_10MCRegisterE.exit.thread

_ZNK4llvm19MachineRegisterInfo13isAllocatableENS_10MCRegisterE.exit.thread: ; preds = %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.thread, %_ZNK4llvm19MachineRegisterInfo13isAllocatableENS_10MCRegisterE.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.az, %i.o
  br i1 %.not, label %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.thread15, label %bb.c, !llvm.loop !422

_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.thread15: ; preds = %bb.d, %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit, %_ZNK4llvm19MachineRegisterInfo13isAllocatableENS_10MCRegisterE.exit, %_ZNK4llvm19MachineRegisterInfo13isAllocatableENS_10MCRegisterE.exit.thread, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ false, %bb.d ], [ false, %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit ], [ false, %_ZNK4llvm19MachineRegisterInfo13isAllocatableENS_10MCRegisterE.exit ], [ true, %_ZNK4llvm19MachineRegisterInfo13isAllocatableENS_10MCRegisterE.exit.thread ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm19MachineRegisterInfo27markUsesInDebugValueAsUndefENS_8RegisterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(520) %0, i32 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = and i32 %1, 2147483647
  %i.d = zext nneg i32 %i.c to i64
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.i = zext nneg i32 %1 to i64
  %i.j = load ptr, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %.0.in.i.i.i = select i1 %i.a, ptr %i.g, ptr %i.k
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8, !tbaa !262 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %.0.i.i.i, align 8
  %i.m = and i32 %i.l, 16777216
  %.not4.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not4.i.i.i, label %.lr.ph.preheader, label %.preheader.i.i.i

.lr.ph.preheader:                                 ; preds = %bb.c, %bb.b
  %.sroa.021.030.ph = phi ptr [ %.0.i.i.i, %bb.b ], [ %storemerge.i.i.i.i, %bb.c ]
  br label %.lr.ph

.preheader.i.i.i:                                 ; preds = %bb.b, %bb.c
  %.pn.i.i.i.i = phi ptr [ %storemerge.i.i.i.i, %bb.c ], [ %.0.i.i.i, %bb.b ]
  %storemerge.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 24
  %storemerge.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i, align 8, !tbaa !233 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.preheader.i.i.i
  %i.n = load i32, ptr %storemerge.i.i.i.i, align 8
  %i.o = and i32 %i.n, 16777216
  %.not1.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not1.i.i.i.i, label %.lr.ph.preheader, label %.preheader.i.i.i, !llvm.loop !432

._crit_edge:                                      ; preds = %.preheader.i.i.i, %_ZN4llvm12MachineInstr18setDebugValueUndefEv.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvm12MachineInstr18setDebugValueUndefEv.exit
  %.sroa.021.030 = phi ptr [ %storemerge.i.i.i.i14, %_ZN4llvm12MachineInstr18setDebugValueUndefEv.exit ], [ %.sroa.021.030.ph, %.lr.ph.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.021.030, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !265  ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %.lr.ph
  %.pn.i.i.i.i12 = phi ptr [ %.sroa.021.030, %.lr.ph ], [ %storemerge.i.i.i.i14, %.backedge ]
  %storemerge.in.i.i.i.i13 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i12, i64 24
  %storemerge.i.i.i.i14 = load ptr, ptr %storemerge.in.i.i.i.i13, align 8, !tbaa !233 ; 6 uses
  %.not.i.i.i.i15 = icmp eq ptr %storemerge.i.i.i.i14, null
  br i1 %.not.i.i.i.i15, label %_ZN4llvm23early_inc_iterator_implINS_19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEEEdeEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %storemerge.i.i.i.i14, align 8
  %i.s = and i32 %i.r, 16777216
  %.not1.i.i.i.i16 = icmp eq i32 %i.s, 0
  br i1 %.not1.i.i.i.i16, label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i.i.i, label %.backedge

.backedge:                                        ; preds = %bb.e, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i.i.i
  br label %bb.d, !llvm.loop !433

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i.i.i: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i14, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !265
  %i.v = icmp eq ptr %i.u, %i.q
  br i1 %i.v, label %.backedge, label %_ZN4llvm23early_inc_iterator_implINS_19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEEEdeEv.exit

_ZN4llvm23early_inc_iterator_implINS_19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEEEdeEv.exit: ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i.i.i, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 52 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !338  ; 2 uses
  %i.y = and i32 %i.x, -2
  %spec.select.i = icmp eq i32 %i.y, 14
  br i1 %spec.select.i, label %bb.f, label %_ZN4llvm12MachineInstr18setDebugValueUndefEv.exit

bb.f:                                             ; preds = %_ZN4llvm23early_inc_iterator_implINS_19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEEEdeEv.exit
  %i.z = icmp eq i32 %i.x, 14                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !281
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  %i.ad = load i24, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp ne i24 %i.ad, 0
  %..i.i.i = zext i1 %i.ae to i64
  %i.af = zext i24 %i.ad to i64
  %i.ag = add nsw i64 %i.af, -2
  %.sroa.5.0.i.i = select i1 %i.z, i64 %..i.i.i, i64 %i.ag
  %.sroa.05.0.idx.i.i = select i1 %i.z, i64 0, i64 64
  %.sroa.05.0.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.05.0.idx.i.i ; 2 uses
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %.sroa.05.0.i.i, i64 %.sroa.5.0.i.i ; 2 uses
  %i.ai = tail call noundef ptr @_ZSt9__find_ifIPKN4llvm14MachineOperandEN9__gnu_cxx5__ops10_Iter_predIZNKS0_12MachineInstr21hasDebugOperandForRegENS0_8RegisterEEUlRS2_E_EEET_SC_SC_T0_St26random_access_iterator_tag(ptr noundef %.sroa.05.0.i.i, ptr noundef %i.ah, i32 %1)
  %.not25 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not25, label %_ZN4llvm12MachineInstr18setDebugValueUndefEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %i.w, align 4, !tbaa !338
  %i.ak = icmp eq i32 %i.aj, 14                   ; 2 uses
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !281
  %i.am = load i24, ptr %i.ac, align 8            ; 2 uses
  %i.an = icmp ne i24 %i.am, 0
  %..i.i.i17 = zext i1 %i.an to i64
  %i.ao = zext i24 %i.am to i64
  %i.ap = add nsw i64 %i.ao, -2
  %.sroa.5.0.i.i18 = select i1 %i.ak, i64 %..i.i.i17, i64 %i.ap ; 2 uses
  %.sroa.05.0.idx.i.i19 = select i1 %i.ak, i64 0, i64 64
  %.sroa.05.0.i.i20 = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sroa.05.0.idx.i.i19 ; 2 uses
  %.idx.i = shl nuw nsw i64 %.sroa.5.0.i.i18, 5
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i20, i64 %.idx.i
  %.not11.i = icmp eq i64 %.sroa.5.0.i.i18, 0
  br i1 %.not11.i, label %_ZN4llvm12MachineInstr18setDebugValueUndefEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %.012.i = phi ptr [ %i.aw, %bb.i ], [ %.sroa.05.0.i.i20, %bb.g ] ; 5 uses
  %i.ar = load i32, ptr %.012.i, align 8
  %i.as = and i32 %i.ar, 255
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  tail call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %.012.i, i32 0) #23
  %i.au = load i32, ptr %.012.i, align 8
  %i.av = and i32 %i.au, -1048321
  store i32 %i.av, ptr %.012.i, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.aw, %i.aq
  br i1 %.not.i, label %_ZN4llvm12MachineInstr18setDebugValueUndefEv.exit, label %.lr.ph.i

_ZN4llvm12MachineInstr18setDebugValueUndefEv.exit: ; preds = %bb.i, %bb.g, %bb.f, %_ZN4llvm23early_inc_iterator_implINS_19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEEEdeEv.exit
  %.not = icmp eq ptr %storemerge.i.i.i.i14, null
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo17isPhysRegModifiedENS_10MCRegisterEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(520) %0, i32 %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = and i32 %1, 63
  %i.c = zext nneg i32 %i.b to i64
  %i.d = shl nuw i64 1, %i.c
  %i.e = lshr i32 %1, 6
  %i.f = zext nneg i32 %i.e to i64
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load i64, ptr %i.h, align 8, !tbaa !253
  %i.j = and i64 %i.i, %i.d
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !105
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !227, !nonnull !25, !align !228 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(344) %i.m) #23, !inline_history !0
  %i.r = tail call { ptr, i64 } @_ZNK4llvm14MCRegisterInfo18getCachedAliasesOfENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(240) %i.q, i32 %1) #23 ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.r, 0        ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.r, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.t, 1
  %3 = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.not37.not56 = icmp eq i64 %i.t, 0
  br i1 %.not37.not56, label %.critedge, label %.lr.ph58

.lr.ph58:                                         ; preds = %bb.b, %.critedge18
  %.sroa.031.057 = phi ptr [ %i.br, %.critedge18 ], [ %i.s, %bb.b ] ; 2 uses
  %i.v = load i16, ptr %.sroa.031.057, align 2, !tbaa !336
  %i.w = zext i16 %i.v to i64
  %i.x = load ptr, ptr %i.u, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  %.0.i.i = load ptr, ptr %i.y, align 8, !tbaa !262 ; 4 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %.critedge18, label %bb.c

bb.c:                                             ; preds = %.lr.ph58
  %i.z = load i32, ptr %.0.i.i, align 8
  %i.aa = and i32 %i.z, 16777216
  %.not.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.d, label %.lr.ph.a

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !233 ; 3 uses
  %.not.i4.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i4.i.i, label %.critedge18, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = and i32 %i.ad, 16777216
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %.critedge18, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.c, %bb.e
  %.sroa.0.0.i = phi ptr [ %.0.i.i, %bb.c ], [ %i.ac, %bb.e ]
  br i1 %2, label %.critedge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.a, %bb.k
  %.sroa.026.042 = phi ptr [ %i.bo, %bb.k ], [ %.sroa.0.0.i, %.lr.ph.a ] ; 2 uses
  %i.af = getelementptr i8, ptr %.sroa.026.042, i64 8
  %.val = load ptr, ptr %i.af, align 8, !tbaa !265 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 44
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !435 ; 2 uses
  %i.ai = and i32 %i.ah, 12
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = and i32 %i.ah, 4
  %i.al = icmp ne i32 %i.ak, 0
  %or.cond.i.i.i = or i1 %i.aj, %i.al
  br i1 %or.cond.i.i.i, label %.split.i, label %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i

.split.i:                                         ; preds = %.lr.ph.split
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !436
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !438
  %i.aq = and i64 %i.ap, 128
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %.critedge, label %bb.f

_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i: ; preds = %.lr.ph.split
  %i.ar = tail call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.val, i64 noundef 128, i32 noundef 1) #23
  br i1 %i.ar, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i, %.split.i
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !439 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 120
  %i.av = load i32, ptr %i.au, align 8, !tbaa !229
  %.not.i.i.i22 = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i22, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !335
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !440, !nonnull !25, !align !228
  %i.az = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.ay, i32 noundef 102) #23
  br i1 %i.az, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr i8, ptr %.val, i64 32
  %.val.i = load ptr, ptr %i.ba, align 8, !tbaa !281 ; 2 uses
  %i.bb = getelementptr i8, ptr %.val, i64 40
  %.val12.i = load i24, ptr %i.bb, align 8        ; 2 uses
  %i.bc = zext i24 %.val12.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.bc, 5
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx.i.i
  %.not7.i.i = icmp eq i24 %.val12.i, 0
  br i1 %.not7.i.i, label %.critedge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %select.unfold.i.i
  %.0148.i.i = phi ptr [ %i.bk, %select.unfold.i.i ], [ %.val.i, %bb.h ] ; 3 uses
  %i.be = load i32, ptr %.0148.i.i, align 8
  %i.bf = and i32 %i.be, 255
  %i.bg = icmp eq i32 %i.bf, 10
  br i1 %i.bg, label %bb.i, label %select.unfold.i.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.0148.i.i, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !233 ; 3 uses
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !444
  %.not12.i.i = icmp eq i8 %i.bj, 14
  br i1 %.not12.i.i, label %_ZL17getCalledFunctionRKN4llvm12MachineInstrE.exit.i, label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %bb.i, %.lr.ph.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.0148.i.i, i64 32 ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.bk, %i.bd
  br i1 %.not.i.i23, label %.critedge, label %.lr.ph.i.i

_ZL17getCalledFunctionRKN4llvm12MachineInstrE.exit.i: ; preds = %bb.i
  %i.bl = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.bi, i32 noundef 40) #23
  br i1 %i.bl, label %_ZL13isNoReturnDefRKN4llvm14MachineOperandE.exit, label %.critedge

_ZL13isNoReturnDefRKN4llvm14MachineOperandE.exit: ; preds = %_ZL17getCalledFunctionRKN4llvm12MachineInstrE.exit.i
  %i.bm = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.bi, i32 noundef 45) #23
  br i1 %i.bm, label %bb.j, label %.critedge

bb.j:                                             ; preds = %_ZL13isNoReturnDefRKN4llvm14MachineOperandE.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.026.042, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !233 ; 3 uses
  %.not.i.i24 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i24, label %.critedge18, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = and i32 %i.bp, 16777216
  %.not.i.i.i25 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i25, label %.critedge18, label %.lr.ph.split

.critedge18:                                      ; preds = %bb.k, %bb.j, %bb.e, %bb.d, %.lr.ph58
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.031.057, i64 2 ; 2 uses
  %.not37.not = icmp eq ptr %i.br, %3
  br i1 %.not37.not, label %.critedge, label %.lr.ph58, !llvm.loop !434

.critedge:                                        ; preds = %.lr.ph.a, %.critedge18, %_ZL13isNoReturnDefRKN4llvm14MachineOperandE.exit, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i, %bb.f, %bb.g, %_ZL17getCalledFunctionRKN4llvm12MachineInstrE.exit.i, %.split.i, %bb.h, %select.unfold.i.i, %bb.b, %bb.a
  %.6 = phi i1 [ true, %bb.a ], [ true, %_ZL13isNoReturnDefRKN4llvm14MachineOperandE.exit ], [ true, %select.unfold.i.i ], [ false, %bb.b ], [ true, %bb.h ], [ true, %.split.i ], [ true, %_ZL17getCalledFunctionRKN4llvm12MachineInstrE.exit.i ], [ true, %bb.g ], [ true, %bb.f ], [ true, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i ], [ true, %.lr.ph.a ], [ false, %.critedge18 ]
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(520) %0, i32 %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 {
bb.a:
  br i1 %2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = and i32 %1, 63
  %i.c = zext nneg i32 %i.b to i64
  %i.d = shl nuw i64 1, %i.c
  %i.e = lshr i32 %1, 6
  %i.f = zext nneg i32 %i.e to i64
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load i64, ptr %i.h, align 8, !tbaa !253
  %i.j = and i64 %i.i, %i.d
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.c, label %_ZNK4llvm19MachineRegisterInfo15reg_nodbg_emptyENS_8RegisterE.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !105
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !227, !nonnull !25, !align !228 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(344) %i.m) #23, !inline_history !0
  %i.r = tail call { ptr, i64 } @_ZNK4llvm14MCRegisterInfo18getCachedAliasesOfENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(240) %i.q, i32 %1) #23 ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.r, 0        ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.r, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.t, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  %.not1214 = icmp eq i64 %i.t, 0
  br i1 %.not1214, label %_ZNK4llvm19MachineRegisterInfo15reg_nodbg_emptyENS_8RegisterE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.w = load ptr, ptr %i.v, align 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.loopexit
  %.sroa.06.015 = phi ptr [ %i.s, %.lr.ph ], [ %i.ae, %.loopexit ] ; 2 uses
  %i.x = load i16, ptr %.sroa.06.015, align 2, !tbaa !336
  %i.y = zext i16 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.y
  %.0.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !262 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load i32, ptr %.0.i.i.i, align 8
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %.preheader.i.i.i, label %_ZNK4llvm19MachineRegisterInfo15reg_nodbg_emptyENS_8RegisterE.exit

.preheader.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.pn.i.i.i.i = phi ptr [ %storemerge.i.i.i.i, %bb.f ], [ %.0.i.i.i, %bb.e ]
  %storemerge.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 24
  %storemerge.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i, align 8, !tbaa !233 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader.i.i.i
  %i.ac = load i32, ptr %storemerge.i.i.i.i, align 8
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %.preheader.i.i.i, label %_ZNK4llvm19MachineRegisterInfo15reg_nodbg_emptyENS_8RegisterE.exit, !llvm.loop !2

.loopexit:                                        ; preds = %.preheader.i.i.i, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 2 ; 2 uses
  %.not12 = icmp eq ptr %i.ae, %i.u
  br i1 %.not12, label %_ZNK4llvm19MachineRegisterInfo15reg_nodbg_emptyENS_8RegisterE.exit, label %bb.d, !llvm.loop !445

_ZNK4llvm19MachineRegisterInfo15reg_nodbg_emptyENS_8RegisterE.exit: ; preds = %bb.e, %.loopexit, %bb.f, %bb.c, %bb.b
  %.2 = phi i1 [ true, %bb.b ], [ false, %bb.c ], [ true, %bb.f ], [ true, %bb.e ], [ false, %.loopexit ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm19MachineRegisterInfo26disableCalleeSavedRegisterENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(520) %0, i32 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !105
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !227, !nonnull !25, !align !228 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(344) %i.c) #23, !inline_history !0 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !234, !range !24, !noundef !25
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !105
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(316) %i.g, ptr noundef %i.k) #23 ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !336  ; 2 uses
  %.not16 = icmp eq i16 %i.p, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit11, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !236  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.x = load i64, ptr %i.w, align 8, !tbaa !237
  %.not.i = icmp ult i64 %i.v, %i.x
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !258

bb.c:                                             ; preds = %._crit_edge
  tail call void @_ZN4llvm23SmallVectorTemplateBaseItLb1EE15growAndPushBackEt(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i16 noundef zeroext 0)
  br label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit

bb.d:                                             ; preds = %._crit_edge
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !235
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.v
  store i16 0, ptr %i.z, align 1
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !236
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.u, align 8, !tbaa !236
  br label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit

_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit: ; preds = %bb.c, %bb.d
  store i8 1, ptr %i.h, align 8, !tbaa !234
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit11
  %i.ac = phi i16 [ %i.p, %.lr.ph ], [ %i.ak, %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit11 ] ; 2 uses
  %.017 = phi ptr [ %i.o, %.lr.ph ], [ %i.aj, %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit11 ]
  %i.ad = load i64, ptr %i.r, align 8, !tbaa !236 ; 2 uses
  %i.ae = load i64, ptr %i.s, align 8, !tbaa !237
  %.not.i10 = icmp ult i64 %i.ad, %i.ae
  br i1 %.not.i10, label %bb.g, label %bb.f, !prof !258

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm23SmallVectorTemplateBaseItLb1EE15growAndPushBackEt(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i16 noundef zeroext %i.ac)
  br label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit11

bb.g:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !235
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.ad
  store i16 %i.ac, ptr %i.ag, align 1
  %i.ah = load i64, ptr %i.r, align 8, !tbaa !236
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.r, align 8, !tbaa !236
  br label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit11

_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit11: ; preds = %bb.f, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.017, i64 2 ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !336 ; 2 uses
  %.not = icmp eq i16 %i.ak, 0
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !446

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit, %bb.a
  %i.al = tail call { ptr, i64 } @_ZNK4llvm14MCRegisterInfo18getCachedAliasesOfENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(240) %i.g, i32 %1) #23 ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 0      ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.al, 1      ; 2 uses
  %.idx = shl nuw nsw i64 %i.an, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx
  %.not1526 = icmp eq i64 %i.an, 0
  br i1 %.not1526, label %bb.i, label %.lr.ph29

.lr.ph29:                                         ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !235 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %.promoted = load i64, ptr %i.ar, align 8, !tbaa !236
  br label %bb.j

._crit_edge30:                                    ; preds = %_ZN4llvm5eraseINS_11SmallVectorItLj16EEENS_10MCRegisterEEEvRT_T0_.exit
  store i64 %i.ce, ptr %i.ar, align 8, !tbaa !236
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge30, %bb.h
  ret void

bb.j:                                             ; preds = %.lr.ph29, %_ZN4llvm5eraseINS_11SmallVectorItLj16EEENS_10MCRegisterEEEvRT_T0_.exit
  %i.at = phi i64 [ %.promoted, %.lr.ph29 ], [ %i.ce, %_ZN4llvm5eraseINS_11SmallVectorItLj16EEENS_10MCRegisterEEEvRT_T0_.exit ] ; 4 uses
  %.sroa.0.027 = phi ptr [ %i.am, %.lr.ph29 ], [ %i.cf, %_ZN4llvm5eraseINS_11SmallVectorItLj16EEENS_10MCRegisterEEEvRT_T0_.exit ] ; 2 uses
  %i.au = load i16, ptr %.sroa.0.027, align 2, !tbaa !336 ; 8 uses
  %.idx7.i = shl nuw nsw i64 %i.at, 1             ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx7.i ; 5 uses
  %i.aw = lshr i64 %i.at, 2                       ; 2 uses
  %.not.i12 = icmp eq i64 %i.aw, 0
  br i1 %.not.i12, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j
  %i.ax = and i64 %.idx7.i, 9223372036854775800
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.aq, i64 %i.ax
end_hunk_0
