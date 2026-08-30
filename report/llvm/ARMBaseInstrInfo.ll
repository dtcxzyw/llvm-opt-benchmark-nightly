Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMBaseInstrInfo?download=true
inline.NumInlined: 7065
inline.NumDeleted: 2511
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZN4llvm20findCMPToFoldIntoCBZEPNS_12MachineInstrEPKNS_18TargetRegisterInfoE:bb.a
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.04.010.i, %bb.h ], [ %.sroa.04.010.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.as, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !229 ; 2 uses
  %.not.not.i = icmp eq ptr %i.ax, %0
  br i1 %.not.not.i, label %_ZN4llvm22registerDefinedBetweenEjNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEES2_PKNS_18TargetRegisterInfoE.exit, label %.lr.ph.i, !llvm.loop !1353

_ZN4llvm22registerDefinedBetweenEjNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEES2_PKNS_18TargetRegisterInfoE.exit: ; preds = %.lr.ph.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, %bb.e, %_ZN4llvm17getInstrPredicateERKNS_12MachineInstrERNS_8RegisterE.exit.thread, %_ZN4llvm17getInstrPredicateERKNS_12MachineInstrERNS_8RegisterE.exit, %bb.g
  %.1 = phi ptr [ null, %bb.e ], [ null, %_ZN4llvm17getInstrPredicateERKNS_12MachineInstrERNS_8RegisterE.exit ], [ null, %_ZN4llvm17getInstrPredicateERKNS_12MachineInstrERNS_8RegisterE.exit.thread ], [ %.sroa.017.1, %bb.g ], [ null, %.lr.ph.i ], [ %.sroa.017.1, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16ARMBaseInstrInfo19isProfitableToIfCvtERNS_17MachineBasicBlockEjjS2_jjNS_17BranchProbabilityE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(360) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(360) %4, i32 noundef %5, i32 noundef %6, i32 %7) unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"class.llvm::BranchProbability", align 4 ; 5 uses
  %9 = alloca %"class.llvm::BranchProbability", align 4 ; 4 uses
  %10 = alloca %"class.llvm::BranchProbability", align 4 ; 4 uses
  store i32 %7, ptr %8, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74, !nonnull !90, !align !91 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 461
  %i.d = load i8, ptr %i.c, align 1, !tbaa !215, !range !216, !noundef !90
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 410
  %i.g = load i8, ptr %i.f, align 2, !range !216
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !254
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1325, !nonnull !90, !align !91
  %i.m = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.l, i32 noundef 19) #26
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = load i32, ptr %i.n, align 8, !tbaa !47
  %.not42 = icmp eq i32 %i.o, 1
  br i1 %.not42, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.q = load i32, ptr %i.p, align 8, !tbaa !47
  %.not43 = icmp eq i32 %i.q, 1
  br i1 %.not43, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b
  %i.r = add i32 %5, %2                           ; 3 uses
  %i.s = add i32 %i.r, %3
  %i.t = add i32 %i.s, %6
  %i.u = shl i32 %i.t, 10                         ; 3 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !74, !nonnull !90, !align !91 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 365
  %i.x = load i8, ptr %i.w, align 1, !tbaa !1354, !range !216, !noundef !90
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = tail call noundef i32 @_ZNK4llvm12ARMSubtarget23getMispredictionPenaltyEv(ptr noundef nonnull align 8 dereferenceable(519368) %i.v) #26 ; 2 uses
  %.not44 = icmp eq i32 %5, 0                     ; 3 uses
  %i.aa = add i32 %5, 1
  %i.ab = add i32 %i.u, -1024
  %.038 = select i1 %.not44, i32 %i.u, i32 %i.ab
  %.pn = select i1 %.not44, i32 1, i32 %i.z
  %.035 = select i1 %.not44, i32 %i.z, i32 %i.aa
  %.036 = add i32 %.pn, %2
  %i.ac = shl i32 %.036, 10
  %i.ad = zext i32 %i.ac to i64
  %i.ae = call noundef i64 @_ZNK4llvm17BranchProbability5scaleEm(ptr noundef nonnull align 4 dereferenceable(4) %8, i64 noundef %i.ad) #26
  %i.af = trunc i64 %i.ae to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.ag = load i32, ptr %8, align 4, !tbaa !1355
  %i.ah = sub i32 -2147483648, %i.ag
  store i32 %i.ah, ptr %9, align 4
  %i.ai = shl i32 %.035, 10
  %i.aj = zext i32 %i.ai to i64
  %i.ak = call noundef i64 @_ZNK4llvm17BranchProbability5scaleEm(ptr noundef nonnull align 4 dereferenceable(4) %9, i64 noundef %i.aj) #26
  %i.al = trunc i64 %i.ak to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.am = add i32 %i.al, %i.af
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !74, !nonnull !90, !align !91 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 461
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !215, !range !216, !noundef !90
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 410
  %i.as = load i8, ptr %i.ar, align 2, !range !216
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = select i1 %i.aq, i1 %i.at, i1 false
  %i.av = icmp ugt i32 %i.r, 4
  %or.cond = and i1 %i.av, %i.au
  %i.aw = shl i32 %i.r, 8
  %i.ax = and i32 %i.aw, -1024
  %i.ay = add i32 %i.ax, -1024
  %i.az = select i1 %or.cond, i32 %i.ay, i32 0
  %.1 = add i32 %i.az, %.038
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ba = shl i32 %2, 10
  %i.bb = zext i32 %i.ba to i64
  %i.bc = call noundef i64 @_ZNK4llvm17BranchProbability5scaleEm(ptr noundef nonnull align 4 dereferenceable(4) %8, i64 noundef %i.bb) #26
  %i.bd = trunc i64 %i.bc to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.be = load i32, ptr %8, align 4, !tbaa !1355
  %i.bf = sub i32 -2147483648, %i.be
  store i32 %i.bf, ptr %10, align 4
  %i.bg = shl i32 %5, 10
  %i.bh = zext i32 %i.bg to i64
  %i.bi = call noundef i64 @_ZNK4llvm17BranchProbability5scaleEm(ptr noundef nonnull align 4 dereferenceable(4) %10, i64 noundef %i.bh) #26
  %i.bj = trunc i64 %i.bi to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !74, !nonnull !90, !align !91
  %i.bl = call noundef i32 @_ZNK4llvm12ARMSubtarget23getMispredictionPenaltyEv(ptr noundef nonnull align 8 dereferenceable(519368) %i.bk) #26
  %i.bm = shl i32 %i.bl, 10
  %i.bn = udiv i32 %i.bm, 10
  %i.bo = add i32 %i.bd, 1024
  %i.bp = add i32 %i.bo, %i.bj
  %i.bq = add i32 %i.bp, %i.bn
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2 = phi i32 [ %i.u, %bb.h ], [ %.1, %bb.g ]
  %.037 = phi i32 [ %i.bq, %bb.h ], [ %i.am, %bb.g ]
  %i.br = icmp ule i32 %.2, %.037
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.i
  %.0 = phi i1 [ false, %bb.a ], [ %i.br, %bb.i ], [ false, %bb.e ], [ false, %bb.d ]
  ret i1 %.0
}

declare noundef i32 @_ZNK4llvm12ARMSubtarget23getMispredictionPenaltyEv(ptr noundef nonnull align 8 dereferenceable(519368)) local_unnamed_addr #1

declare noundef i64 @_ZNK4llvm17BranchProbability5scaleEm(ptr noundef nonnull align 4 dereferenceable(4), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, -1) i32 @_ZNK4llvm16ARMBaseInstrInfo32extraSizeToPredicateInstructionsERKNS_15MachineFunctionEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i32 noundef %2) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74, !nonnull !90, !align !91 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 461
  %i.d = load i8, ptr %i.c, align 1, !tbaa !215, !range !216, !noundef !90
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 410
  %i.g = load i8, ptr %i.f, align 2, !range !216
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 494
  %i.k = load i8, ptr %i.j, align 2, !tbaa !501, !range !216, !noundef !90
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = icmp ne i32 %2, 0
  %i.n = zext i1 %i.m to i32                      ; 2 uses
  %i.o = sub i32 %2, %i.n                         ; 2 uses
  %i.p = lshr i32 %i.o, 2
  %i.q = select i1 %i.l, i32 %i.o, i32 %i.p
  %i.r = add i32 %i.q, %i.n
  %i.s = shl i32 %i.r, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.s, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK4llvm16ARMBaseInstrInfo25predictBranchSizeForIfCvtERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !248
  %i.c = icmp eq i32 %i.b, 4078
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !616, !nonnull !90, !align !91
  %i.f = tail call noundef ptr @_ZN4llvm20findCMPToFoldIntoCBZEPNS_12MachineInstrEPKNS_18TargetRegisterInfoE(ptr noundef nonnull %1, ptr noundef nonnull %i.e)
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) #26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !74, !nonnull !90, !align !91 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 461
  %i.n = load i8, ptr %i.m, align 1, !tbaa !215, !range !216, !noundef !90
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 410
  %i.q = load i8, ptr %i.p, align 2, !range !216
  %narrow = select i1 %i.o, i8 %i.q, i8 0
  %2 = zext nneg i8 %narrow to i32
  %spec.select = lshr i32 %i.j, %2
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.06 = phi i32 [ %spec.select, %bb.c ], [ 0, %bb.b ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16ARMBaseInstrInfo25isProfitableToUnpredicateERNS_17MachineBasicBlockES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74, !nonnull !90, !align !91
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 457
  %i.d = load i8, ptr %i.c, align 1, !tbaa !1357, !range !216, !noundef !90
  %i.e = trunc nuw i8 %i.d to i1
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN4llvm17getInstrPredicateERKNS_12MachineInstrERNS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK4llvm12MachineInstr23findFirstPredOperandIdxEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #26 ; 3 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4, !tbaa !42
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = add nuw nsw i32 %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !250  ; 2 uses
  %i.f = zext i32 %i.c to i64
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !251
  store i32 %i.i, ptr %1, align 4, !tbaa !42
  %i.j = zext i32 %i.a to i64
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !251
  %i.n = trunc i64 %i.m to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 14, %bb.b ], [ %i.n, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm16ARMBaseInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjj(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !248
  switch i32 %i.b, label %bb.d [
    i32 397, label %bb.b
    i32 735, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = tail call noundef i32 @_ZNK4llvm12MachineInstr23findFirstPredOperandIdxEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #26 ; 3 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %_ZN4llvm17getInstrPredicateERKNS_12MachineInstrERNS_8RegisterE.exit.thread, label %_ZN4llvm17getInstrPredicateERKNS_12MachineInstrERNS_8RegisterE.exit

_ZN4llvm17getInstrPredicateERKNS_12MachineInstrERNS_8RegisterE.exit: ; preds = %bb.b
  %i.e = add nuw nsw i32 %i.c, 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !250  ; 2 uses
  %i.h = zext i32 %i.e to i64
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !251
  %i.l = zext i32 %i.c to i64
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !251  ; 2 uses
  %i.p = and i64 %i.o, 4294967295
  %i.q = icmp eq i64 %i.p, 14
  %i.r = icmp ne i32 %i.k, 3
  %or.cond = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond, label %_ZN4llvm17getInstrPredicateERKNS_12MachineInstrERNS_8RegisterE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm17getInstrPredicateERKNS_12MachineInstrERNS_8RegisterE.exit
  %i.s = tail call noundef ptr @_ZNK4llvm15TargetInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) #26 ; 4 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %_ZN4llvm17getInstrPredicateERKNS_12MachineInstrERNS_8RegisterE.exit.thread, label %switch.lookup

switch.lookup:                                    ; preds = %bb.c
  %i.t = tail call noundef i32 @_ZNK4llvm12MachineInstr23findFirstPredOperandIdxEv(ptr noundef nonnull align 8 dereferenceable(80) %i.s) #26
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !250
  %i.w = zext i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.w
  %i.y = and i64 %i.o, 4294967295
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm16ARMBaseInstrInfo14optimizeSelectERNS_12MachineInstrERNS_15SmallPtrSetImplIPS1_EEb, i64 %i.y
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %switch.ext, ptr %i.z, align 8, !tbaa !251
  br label %_ZN4llvm17getInstrPredicateERKNS_12MachineInstrERNS_8RegisterE.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.aa = tail call noundef ptr @_ZNK4llvm15TargetInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) #26
  br label %_ZN4llvm17getInstrPredicateERKNS_12MachineInstrERNS_8RegisterE.exit.thread

_ZN4llvm17getInstrPredicateERKNS_12MachineInstrERNS_8RegisterE.exit.thread: ; preds = %bb.b, %_ZN4llvm17getInstrPredicateERKNS_12MachineInstrERNS_8RegisterE.exit, %bb.c, %switch.lookup, %bb.d
  %.2 = phi ptr [ %i.aa, %bb.d ], [ null, %_ZN4llvm17getInstrPredicateERKNS_12MachineInstrERNS_8RegisterE.exit ], [ null, %bb.b ], [ %i.s, %switch.lookup ], [ null, %bb.c ]
  ret ptr %.2
}

declare noundef ptr @_ZNK4llvm15TargetInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjj(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm16ARMBaseInstrInfo16canFoldIntoMOVCCENS_8RegisterERKNS_19MachineRegisterInfoEPKNS_15TargetInstrInfoE(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(520) %2, ptr nofree readnone captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo15hasOneNonDBGUseENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %2, i32 %1) #26
  br i1 %i.c, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %2, i32 %1) #26 ; 6 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %0, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 960
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.d) #26
  br i1 %i.h, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !250  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.l = load i24, ptr %i.k, align 8              ; 2 uses
  %i.m = zext i24 %i.l to i64
  %.idx = shl nuw nsw i64 %i.m, 5
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not2939 = icmp eq i24 %i.l, 1
  br i1 %.not2939, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %.038 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.041 = phi ptr [ %.0, %bb.i ], [ %.038, %.lr.ph.preheader ] ; 3 uses
  %.pn40 = phi ptr [ %.041, %bb.i ], [ %i.j, %.lr.ph.preheader ]
  %i.o = load i32, ptr %.041, align 8             ; 4 uses
  %trunc = trunc i32 %i.o to i8
  switch i8 %trunc, label %bb.i [
    i8 5, label %.loopexit
    i8 6, label %.loopexit
    i8 8, label %.loopexit
    i8 0, label %bb.f
  ]

bb.f:                                             ; preds = %.lr.ph
  %i.p = and i32 %i.o, 15728640
  %.not37 = icmp eq i32 %i.p, 0
  br i1 %.not37, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.pn40, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !251
  %i.s = add i32 %i.r, -1
  %i.t = icmp ult i32 %i.s, 1073741823
  br i1 %i.t, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = and i32 %i.o, 16777216
  %i.v = icmp eq i32 %i.u, 0
  %i.w = and i32 %i.o, 83886080
  %i.x = icmp eq i32 %i.w, 83886080
  %or.cond = or i1 %i.v, %i.x
  br i1 %or.cond, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %.0 = getelementptr inbounds nuw i8, ptr %.041, i64 32 ; 2 uses
  %.not29 = icmp eq ptr %.0, %i.n
  br i1 %.not29, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %bb.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 1, ptr %i.a, align 1, !tbaa !1358
  %i.y = call noundef zeroext i1 @_ZNK4llvm12MachineInstr12isSafeToMoveERb(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #26
  %. = select i1 %i.y, ptr %i.d, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.lr.ph, %.lr.ph, %.lr.ph, %bb.g, %bb.f, %.critedge, %bb.c, %bb.d, %bb.b, %bb.a
  %.5 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %., %.critedge ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.f ], [ null, %bb.g ], [ null, %.lr.ph ], [ null, %.lr.ph ], [ null, %.lr.ph ], [ null, %bb.h ]
  ret ptr %.5
}
end_hunk_0
