Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SystemZInstrInfo?download=true
inline.NumInlined: 2600
inline.NumDeleted: 967
begin_hunk_0_@_ZN4llvm7SystemZ12getMemOpcodeEj:bb.a
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7SystemZ12getMemOpcodeEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add nuw i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !2

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7SystemZ12getMemOpcodeEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm7SystemZ18getTargetMemOpcodeEj(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.023 = phi i32 [ 30, %bb.a ], [ %.1, %bb.c ]   ; 3 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %.116, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7SystemZ18getTargetMemOpcodeEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add nuw i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !3

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7SystemZ18getTargetMemOpcodeEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm7SystemZ19getTwoOperandOpcodeEj(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.023 = phi i32 [ 25, %bb.a ], [ %.1, %bb.c ]   ; 3 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %.116, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7SystemZ19getTwoOperandOpcodeEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add nuw i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !493

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7SystemZ19getTwoOperandOpcodeEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm16SystemZInstrInfo6anchorEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16SystemZInstrInfoC2ERKNS_16SystemZSubtargetE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(519424) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.a, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 -1, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm12SystemZDescsE, i64 106016), ptr %i.e, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN4llvm23SystemZInstrNameIndicesE, ptr %i.f, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN4llvm20SystemZInstrNameDataE, ptr %i.g, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store i32 3314, ptr %i.i, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.j, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i16 0, ptr %i.k, align 8, !tbaa !39
  store ptr getelementptr inbounds nuw inrange(-16, 1488) (i8, ptr @_ZTVN4llvm16SystemZInstrInfoE, i64 16), ptr %0, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #23
  %i.q = tail call noundef i32 @_ZNK4llvm23SystemZGenSubtargetInfo9getHwModeENS_15MCSubtargetInfo10HwModeTypeE(ptr noundef nonnull align 8 dereferenceable(344) %1, i32 noundef 0) #23
  tail call void @_ZN4llvm19SystemZRegisterInfoC1Ejj(ptr noundef nonnull align 8 dereferenceable(316) %i.a, i32 noundef %i.p, i32 noundef %i.q) #23
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %1, ptr %i.r, align 8, !tbaa !494
  ret void
}

declare noundef i32 @_ZNK4llvm23SystemZGenSubtargetInfo9getHwModeENS_15MCSubtargetInfo10HwModeTypeE(ptr noundef nonnull align 8 dereferenceable(344), i32 noundef) unnamed_addr #4

declare void @_ZN4llvm19SystemZRegisterInfoC1Ejj(ptr noundef nonnull align 8 dereferenceable(316), i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm16SystemZInstrInfo9splitMoveENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEj(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !111  ; 3 uses
  %i.e = tail call noundef ptr @_ZN4llvm15MachineFunction17CloneMachineInstrEPKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(1065) %i.d, ptr noundef nonnull %1) #23 ; 18 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %i.e) #23
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.g = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %i.i, align 8, !tbaa !112
  %.0.copyload.i.i.i.i9.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.j = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i, 7
  %i.k = or disjoint i64 %i.j, %i.g
  store i64 %i.k, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.e, ptr %i.l, align 8, !tbaa !112
  %.0.copyload.i.i.i.i10.i.i.i.i.i = load i64, ptr %1, align 8
  %i.m = ptrtoint ptr %i.e to i64
  %i.n = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i, 7
  %i.o = or disjoint i64 %i.n, %i.m
  store i64 %i.o, ptr %1, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !113  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !113  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !114  ; 2 uses
  %i.v = load i32, ptr %i.s, align 8              ; 3 uses
  %i.w = and i32 %i.v, 268435456
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !114
  %i.aa = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.x, i32 %i.z, i32 noundef 3) #23
  tail call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i32 %i.aa) #23
  %i.ab = load i32, ptr %i.t, align 4, !tbaa !114
  %i.ac = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.x, i32 %i.ab, i32 noundef 5) #23
  tail call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i32 %i.ac) #23
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !113
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !113
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 80 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !114 ; 2 uses
  %i.ah = add nsw i64 %i.ag, 8                    ; 3 uses
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !114
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !114 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !34 ; 2 uses
  %i.am = zext i32 %2 to i64
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds [32 x i8], ptr %i.al, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !117 ; 3 uses
  %i.ar = lshr i64 %i.aq, 1
  %i.as = and i64 %i.ar, 8                        ; 2 uses
  %i.at = add nsw i64 %i.as, %i.aj                ; 3 uses
  %i.au = icmp ult i64 %i.aj, 4096
  br i1 %i.au, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.av = icmp ult i64 %i.at, 4096
  br i1 %i.av, label %.preheader.i, label %.thread.i

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %.023.i.i = phi i32 [ %.1.i.i, %bb.c ], [ 47, %bb.b ] ; 3 uses
  %.01522.i.i = phi i32 [ %.116.i.i, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %i.aw = sub nuw i32 %.023.i.i, %.01522.i.i
  %i.ax = lshr i32 %i.aw, 1
  %i.ay = add i32 %i.ax, %.01522.i.i              ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7SystemZ15getDisp12OpcodeEjE5Table, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !40 ; 2 uses
  %i.bc = icmp eq i32 %2, %i.bb
  br i1 %i.bc, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.bd = icmp ult i32 %2, %i.bb                  ; 2 uses
  %i.be = add nuw i32 %i.ay, 1
  %.116.i.i = select i1 %i.bd, i32 %.01522.i.i, i32 %i.be ; 3 uses
  %.1.i.i = select i1 %i.bd, i32 %i.ay, i32 %.023.i.i ; 3 uses
  %i.bf = icmp ult i32 %.116.i.i, %.1.i.i
  br i1 %i.bf, label %.preheader.i, label %bb.d, !llvm.loop !0

bb.d:                                             ; preds = %bb.c, %.preheader.i
  %.015.lcssa.i.i = phi i32 [ %.01522.i.i, %.preheader.i ], [ %.116.i.i, %bb.c ]
  %.0.lcssa.i.i = phi i32 [ %.023.i.i, %.preheader.i ], [ %.1.i.i, %bb.c ]
  %i.bg = icmp eq i32 %.015.lcssa.i.i, %.0.lcssa.i.i
  br i1 %i.bg, label %_ZNK4llvm16SystemZInstrInfo18getOpcodeForOffsetEjlPKNS_12MachineInstrE.exit, label %_ZN4llvm7SystemZ15getDisp12OpcodeEj.exit.i

_ZN4llvm7SystemZ15getDisp12OpcodeEj.exit.i:       ; preds = %bb.d
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7SystemZ15getDisp12OpcodeEjE5Table, i64 %i.az
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !40
  br label %_ZNK4llvm16SystemZInstrInfo18getOpcodeForOffsetEjlPKNS_12MachineInstrE.exit

bb.e:                                             ; preds = %bb.a
  %i.bk = add i64 %i.aj, 524288
  %i.bl = icmp ult i64 %i.bk, 1048576
  %i.bm = add i64 %i.at, 524288
  %i.bn = icmp ult i64 %i.bm, 1048576
  %or.cond.i = select i1 %i.bl, i1 %i.bn, i1 false
  br i1 %or.cond.i, label %.preheader143, label %_ZNK4llvm16SystemZInstrInfo18getOpcodeForOffsetEjlPKNS_12MachineInstrE.exit

.thread.i:                                        ; preds = %bb.b
  %.old45.i = icmp ult i64 %i.at, 1048576
  br i1 %.old45.i, label %.preheader143, label %_ZNK4llvm16SystemZInstrInfo18getOpcodeForOffsetEjlPKNS_12MachineInstrE.exit

.preheader143:                                    ; preds = %.thread.i, %bb.e
  br label %bb.f

bb.f:                                             ; preds = %.preheader143, %bb.g
  %.023.i31.i = phi i32 [ %.1.i34.i, %bb.g ], [ 47, %.preheader143 ] ; 3 uses
  %.01522.i32.i = phi i32 [ %.116.i33.i, %bb.g ], [ 0, %.preheader143 ] ; 4 uses
  %i.bo = sub nuw i32 %.023.i31.i, %.01522.i32.i
  %i.bp = lshr i32 %i.bo, 1
  %i.bq = add i32 %i.bp, %.01522.i32.i            ; 3 uses
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7SystemZ15getDisp20OpcodeEjE5Table, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !40 ; 2 uses
  %i.bu = icmp eq i32 %2, %i.bt
  br i1 %i.bu, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = icmp ult i32 %2, %i.bt                  ; 2 uses
  %i.bw = add nuw i32 %i.bq, 1
  %.116.i33.i = select i1 %i.bv, i32 %.01522.i32.i, i32 %i.bw ; 3 uses
  %.1.i34.i = select i1 %i.bv, i32 %i.bq, i32 %.023.i31.i ; 3 uses
  %i.bx = icmp ult i32 %.116.i33.i, %.1.i34.i
  br i1 %i.bx, label %bb.f, label %bb.h, !llvm.loop !1

bb.h:                                             ; preds = %bb.g, %bb.f
  %.015.lcssa.i35.i = phi i32 [ %.01522.i32.i, %bb.f ], [ %.116.i33.i, %bb.g ]
  %.0.lcssa.i36.i = phi i32 [ %.023.i31.i, %bb.f ], [ %.1.i34.i, %bb.g ]
  %i.by = icmp eq i32 %.015.lcssa.i35.i, %.0.lcssa.i36.i
  br i1 %i.by, label %_ZN4llvm7SystemZ15getDisp20OpcodeEj.exit.thread.i, label %_ZN4llvm7SystemZ15getDisp20OpcodeEj.exit.i

_ZN4llvm7SystemZ15getDisp20OpcodeEj.exit.i:       ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7SystemZ15getDisp20OpcodeEjE5Table, i64 %i.br
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !40
  br label %_ZNK4llvm16SystemZInstrInfo18getOpcodeForOffsetEjlPKNS_12MachineInstrE.exit

_ZN4llvm7SystemZ15getDisp20OpcodeEj.exit.thread.i: ; preds = %bb.h
  %i.cc = and i64 %i.aq, 4
  %.not.i = icmp eq i64 %i.cc, 0
  %spec.select = select i1 %.not.i, i32 0, i32 %2
  br label %_ZNK4llvm16SystemZInstrInfo18getOpcodeForOffsetEjlPKNS_12MachineInstrE.exit

_ZNK4llvm16SystemZInstrInfo18getOpcodeForOffsetEjlPKNS_12MachineInstrE.exit: ; preds = %_ZN4llvm7SystemZ15getDisp20OpcodeEj.exit.thread.i, %bb.d, %_ZN4llvm7SystemZ15getDisp12OpcodeEj.exit.i, %bb.e, %.thread.i, %_ZN4llvm7SystemZ15getDisp20OpcodeEj.exit.i
  %.4.i = phi i32 [ 0, %.thread.i ], [ 0, %bb.e ], [ %i.cb, %_ZN4llvm7SystemZ15getDisp20OpcodeEj.exit.i ], [ %i.bj, %_ZN4llvm7SystemZ15getDisp12OpcodeEj.exit.i ], [ %spec.select, %_ZN4llvm7SystemZ15getDisp20OpcodeEj.exit.thread.i ], [ %2, %bb.d ]
  %i.cd = add nsw i64 %i.as, %i.ah                ; 3 uses
  %i.ce = icmp ult i64 %i.ah, 4096
  br i1 %i.ce, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZNK4llvm16SystemZInstrInfo18getOpcodeForOffsetEjlPKNS_12MachineInstrE.exit
  %i.cf = icmp ult i64 %i.cd, 4096
  br i1 %i.cf, label %.preheader.i67, label %.thread.i65

.preheader.i67:                                   ; preds = %bb.i, %bb.j
  %.023.i.i68 = phi i32 [ %.1.i.i71, %bb.j ], [ 47, %bb.i ] ; 3 uses
  %.01522.i.i69 = phi i32 [ %.116.i.i70, %bb.j ], [ 0, %bb.i ] ; 4 uses
  %i.cg = sub nuw i32 %.023.i.i68, %.01522.i.i69
  %i.ch = lshr i32 %i.cg, 1
  %i.ci = add i32 %i.ch, %.01522.i.i69            ; 3 uses
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7SystemZ15getDisp12OpcodeEjE5Table, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !40 ; 2 uses
  %i.cm = icmp eq i32 %2, %i.cl
  br i1 %i.cm, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader.i67
  %i.cn = icmp ult i32 %2, %i.cl                  ; 2 uses
  %i.co = add nuw i32 %i.ci, 1
  %.116.i.i70 = select i1 %i.cn, i32 %.01522.i.i69, i32 %i.co ; 3 uses
  %.1.i.i71 = select i1 %i.cn, i32 %i.ci, i32 %.023.i.i68 ; 3 uses
  %i.cp = icmp ult i32 %.116.i.i70, %.1.i.i71
  br i1 %i.cp, label %.preheader.i67, label %bb.k, !llvm.loop !0

bb.k:                                             ; preds = %bb.j, %.preheader.i67
  %.015.lcssa.i.i72 = phi i32 [ %.01522.i.i69, %.preheader.i67 ], [ %.116.i.i70, %bb.j ]
  %.0.lcssa.i.i73 = phi i32 [ %.023.i.i68, %.preheader.i67 ], [ %.1.i.i71, %bb.j ]
  %i.cq = icmp eq i32 %.015.lcssa.i.i72, %.0.lcssa.i.i73
  br i1 %i.cq, label %_ZNK4llvm16SystemZInstrInfo18getOpcodeForOffsetEjlPKNS_12MachineInstrE.exit75, label %_ZN4llvm7SystemZ15getDisp12OpcodeEj.exit.i74

_ZN4llvm7SystemZ15getDisp12OpcodeEj.exit.i74:     ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7SystemZ15getDisp12OpcodeEjE5Table, i64 %i.cj
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !40
  br label %_ZNK4llvm16SystemZInstrInfo18getOpcodeForOffsetEjlPKNS_12MachineInstrE.exit75

bb.l:                                             ; preds = %_ZNK4llvm16SystemZInstrInfo18getOpcodeForOffsetEjlPKNS_12MachineInstrE.exit
  %i.cu = add i64 %i.ag, 524296
  %i.cv = icmp ult i64 %i.cu, 1048576
  %i.cw = add i64 %i.cd, 524288
  %i.cx = icmp ult i64 %i.cw, 1048576
  %or.cond.i54 = select i1 %i.cv, i1 %i.cx, i1 false
  br i1 %or.cond.i54, label %.preheader, label %_ZNK4llvm16SystemZInstrInfo18getOpcodeForOffsetEjlPKNS_12MachineInstrE.exit75

.thread.i65:                                      ; preds = %bb.i
  %.old45.i66 = icmp ult i64 %i.cd, 1048576
  br i1 %.old45.i66, label %.preheader, label %_ZNK4llvm16SystemZInstrInfo18getOpcodeForOffsetEjlPKNS_12MachineInstrE.exit75

.preheader:                                       ; preds = %.thread.i65, %bb.l
  br label %bb.m

bb.m:                                             ; preds = %.preheader, %bb.n
  %.023.i31.i56 = phi i32 [ %.1.i34.i59, %bb.n ], [ 47, %.preheader ] ; 3 uses
  %.01522.i32.i57 = phi i32 [ %.116.i33.i58, %bb.n ], [ 0, %.preheader ] ; 4 uses
  %i.cy = sub nuw i32 %.023.i31.i56, %.01522.i32.i57
  %i.cz = lshr i32 %i.cy, 1
  %i.da = add i32 %i.cz, %.01522.i32.i57          ; 3 uses
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7SystemZ15getDisp20OpcodeEjE5Table, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !40 ; 2 uses
  %i.de = icmp eq i32 %2, %i.dd
  br i1 %i.de, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.df = icmp ult i32 %2, %i.dd                  ; 2 uses
  %i.dg = add nuw i32 %i.da, 1
  %.116.i33.i58 = select i1 %i.df, i32 %.01522.i32.i57, i32 %i.dg ; 3 uses
  %.1.i34.i59 = select i1 %i.df, i32 %i.da, i32 %.023.i31.i56 ; 3 uses
  %i.dh = icmp ult i32 %.116.i33.i58, %.1.i34.i59
  br i1 %i.dh, label %bb.m, label %bb.o, !llvm.loop !1

bb.o:                                             ; preds = %bb.n, %bb.m
  %.015.lcssa.i35.i60 = phi i32 [ %.01522.i32.i57, %bb.m ], [ %.116.i33.i58, %bb.n ]
  %.0.lcssa.i36.i61 = phi i32 [ %.023.i31.i56, %bb.m ], [ %.1.i34.i59, %bb.n ]
  %i.di = icmp eq i32 %.015.lcssa.i35.i60, %.0.lcssa.i36.i61
  br i1 %i.di, label %_ZN4llvm7SystemZ15getDisp20OpcodeEj.exit.thread.i63, label %_ZN4llvm7SystemZ15getDisp20OpcodeEj.exit.i62

_ZN4llvm7SystemZ15getDisp20OpcodeEj.exit.i62:     ; preds = %bb.o
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7SystemZ15getDisp20OpcodeEjE5Table, i64 %i.db
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !40
  br label %_ZNK4llvm16SystemZInstrInfo18getOpcodeForOffsetEjlPKNS_12MachineInstrE.exit75

_ZN4llvm7SystemZ15getDisp20OpcodeEj.exit.thread.i63: ; preds = %bb.o
  %i.dm = and i64 %i.aq, 4
  %.not.i64 = icmp eq i64 %i.dm, 0
  %spec.select98 = select i1 %.not.i64, i32 0, i32 %2
  br label %_ZNK4llvm16SystemZInstrInfo18getOpcodeForOffsetEjlPKNS_12MachineInstrE.exit75

_ZNK4llvm16SystemZInstrInfo18getOpcodeForOffsetEjlPKNS_12MachineInstrE.exit75: ; preds = %_ZN4llvm7SystemZ15getDisp20OpcodeEj.exit.thread.i63, %bb.k, %_ZN4llvm7SystemZ15getDisp12OpcodeEj.exit.i74, %bb.l, %.thread.i65, %_ZN4llvm7SystemZ15getDisp20OpcodeEj.exit.i62
  %.4.i55 = phi i32 [ 0, %.thread.i65 ], [ 0, %bb.l ], [ %i.dl, %_ZN4llvm7SystemZ15getDisp20OpcodeEj.exit.i62 ], [ %i.ct, %_ZN4llvm7SystemZ15getDisp12OpcodeEj.exit.i74 ], [ %spec.select98, %_ZN4llvm7SystemZ15getDisp20OpcodeEj.exit.thread.i63 ], [ %2, %bb.k ]
  %i.dn = zext i32 %.4.i to i64
  %i.do = sub nsw i64 0, %i.dn
  %i.dp = getelementptr inbounds [32 x i8], ptr %i.al, i64 %i.do
  tail call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.dp) #23
  %i.dq = load ptr, ptr %i.ak, align 8, !tbaa !34
  %i.dr = zext i32 %.4.i55 to i64
  %i.ds = sub nsw i64 0, %i.dr
  %i.dt = getelementptr inbounds [32 x i8], ptr %i.dq, i64 %i.ds
  tail call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.dt) #23
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !118
  %i.dw = add i32 %i.dv, -1
  %spec.select.i.i = icmp ult i32 %i.dw, 2
  br i1 %spec.select.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNK4llvm16SystemZInstrInfo18getOpcodeForOffsetEjlPKNS_12MachineInstrE.exit75
  %i.dx = load ptr, ptr %i.r, align 8, !tbaa !113
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !114
  %i.ea = and i64 %i.dz, 16
  %.not.not.i = icmp eq i64 %i.ea, 0
  br i1 %.not.not.i, label %bb.q, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.thread

bb.q:                                             ; preds = %bb.p, %_ZNK4llvm16SystemZInstrInfo18getOpcodeForOffsetEjlPKNS_12MachineInstrE.exit75
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !119 ; 2 uses
  %i.ed = and i32 %i.ec, 12
  %i.ee = icmp eq i32 %i.ed, 0
  %i.ef = and i32 %i.ec, 4
  %i.eg = icmp ne i32 %i.ef, 0
  %or.cond.i.i = or i1 %i.ee, %i.eg
  br i1 %or.cond.i.i, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit, label %.split

.split:                                           ; preds = %bb.q
  %i.eh = tail call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef 1048576, i32 noundef 1) #23
  br i1 %i.eh, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.thread, label %bb.r

_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit: ; preds = %bb.q
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !120
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !121
  %i.em = and i64 %i.el, 1048576
  %.not100 = icmp eq i64 %i.em, 0
  br i1 %.not100, label %bb.r, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.thread

_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.thread: ; preds = %bb.p, %.split, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit
  %i.en = load ptr, ptr %i.p, align 8, !tbaa !113 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 8
  %i.ep = and i32 %i.eo, -67108865
  store i32 %i.ep, ptr %i.en, align 8
  %i.eq = or disjoint i32 %i.w, 33554432          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.er, align 8, !tbaa !124, !alias.scope !499
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.u, ptr %i.es, align 4, !tbaa !114, !alias.scope !499
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.et, i8 0, i64 16, i1 false), !alias.scope !499
  store i32 %i.eq, ptr %4, align 8, !alias.scope !499
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(1065) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.eu, align 8, !tbaa !124, !alias.scope !500
  %5 = shl i32 %i.v, 2
  %6 = and i32 %5, 67108864
  %7 = xor i32 %6, 67108864
  %8 = and i32 %7, %i.v
  %i.ev = or disjoint i32 %8, %i.eq
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.u, ptr %i.ew, align 4, !tbaa !114, !alias.scope !500
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ex, i8 0, i64 16, i1 false), !alias.scope !500
  store i32 %i.ev, ptr %3, align 8, !alias.scope !500
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(1065) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_.exit

bb.r:                                             ; preds = %.split, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit
  %i.ey = load i32, ptr %i.y, align 4, !tbaa !114 ; 5 uses
  %i.ez = load ptr, ptr %i.r, align 8, !tbaa !113 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 36
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !114 ; 3 uses
  %i.fc = icmp eq i32 %i.ey, %i.fb
  br i1 %i.fc, label %"_ZZNK4llvm16SystemZInstrInfo9splitMoveENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEjENK3$_0clENS_8RegisterE.exit.thread", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fd = add i32 %i.ey, -1
  %i.fe = icmp ult i32 %i.fd, 1073741823          ; 2 uses
  %i.ff = add i32 %i.fb, -1
  %i.fg = icmp ult i32 %i.ff, 1073741823
  %or.cond.i.i78 = and i1 %i.fe, %i.fg
  br i1 %or.cond.i.i78, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread2.i

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i: ; preds = %bb.s
  %i.fh = tail call noundef zeroext i1 @_ZNK4llvm14MCRegisterInfo11regsOverlapENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(316) %i.x, i32 %i.ey, i32 %i.fb) #23
  br i1 %i.fh, label %"_ZZNK4llvm16SystemZInstrInfo9splitMoveENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEjENK3$_0clENS_8RegisterE.exit.thread", label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit._ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread2_crit_edge.i

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit._ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread2_crit_edge.i: ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i
  %.pre4.i = load ptr, ptr %i.r, align 8, !tbaa !113
  br label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread2.i

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread2.i: ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit._ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread2_crit_edge.i, %bb.s
  %i.fi = phi ptr [ %.pre4.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit._ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread2_crit_edge.i ], [ %i.ez, %bb.s ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 100
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !114 ; 3 uses
  %i.fl = icmp eq i32 %i.ey, %i.fk
  br i1 %i.fl, label %"_ZZNK4llvm16SystemZInstrInfo9splitMoveENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEjENK3$_0clENS_8RegisterE.exit.thread", label %bb.t

bb.t:                                             ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread2.i
  %i.fm = add i32 %i.fk, -1
  %i.fn = icmp ult i32 %i.fm, 1073741823
  %or.cond.i6.i = and i1 %i.fe, %i.fn
  br i1 %or.cond.i6.i, label %"_ZZNK4llvm16SystemZInstrInfo9splitMoveENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEjENK3$_0clENS_8RegisterE.exit", label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_.exit

"_ZZNK4llvm16SystemZInstrInfo9splitMoveENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEjENK3$_0clENS_8RegisterE.exit": ; preds = %bb.t
  %i.fo = tail call noundef zeroext i1 @_ZNK4llvm14MCRegisterInfo11regsOverlapENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(316) %i.x, i32 %i.ey, i32 %i.fk) #23
  br i1 %i.fo, label %"_ZZNK4llvm16SystemZInstrInfo9splitMoveENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEjENK3$_0clENS_8RegisterE.exit.thread", label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_.exit

"_ZZNK4llvm16SystemZInstrInfo9splitMoveENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEjENK3$_0clENS_8RegisterE.exit.thread": ; preds = %bb.r, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread2.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i, %"_ZZNK4llvm16SystemZInstrInfo9splitMoveENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEjENK3$_0clENS_8RegisterE.exit"
  %.not.i79 = icmp eq ptr %i.e, %1
  br i1 %.not.i79, label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_.exit, label %.preheader.i80

.preheader.i80:                                   ; preds = %"_ZZNK4llvm16SystemZInstrInfo9splitMoveENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEjENK3$_0clENS_8RegisterE.exit.thread"
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.fp = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.fp, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %.preheader.i80
  %i.fq = load i32, ptr %i.eb, align 4, !tbaa !119
  %i.fr = and i32 %i.fq, 8
  %.not34.i.i.i.i.i = icmp eq i32 %i.fr, 0
  br i1 %.not34.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi ptr [ %i.ft, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ], [ %1, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !112 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 44
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !119
  %i.fw = and i32 %i.fv, 8
  %.not3.i.i.i.i.i = icmp eq i32 %i.fw, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !4

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %.preheader.i80
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %1, %.preheader.i80 ], [ %1, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.ft, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !112 ; 7 uses
  %i.fz = icmp eq ptr %1, %i.fy
  %i.ga = icmp eq ptr %i.e, %i.fy
  %or.cond.i.i.i = or i1 %i.fz, %i.ga
  br i1 %or.cond.i.i.i, label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE21transferNodesFromListERS2_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb1ELb1EvLb0EvEELb0ELb0EEES8_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr nonnull %1, ptr %i.fy) #23
  %.0.copyload.i.i.i.i.i.i.i.i.i.i5.i = load i64, ptr %i.fy, align 8
  %i.gb = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i5.i, -8 ; 2 uses
  %i.gc = inttoptr i64 %i.gb to ptr
  %.0.copyload.i.i.i.i20.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.gd = and i64 %.0.copyload.i.i.i.i20.i.i.i.i.i.i.i, -8
  %i.ge = inttoptr i64 %i.gd to ptr
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store ptr %i.fy, ptr %i.gf, align 8, !tbaa !112
  %.0.copyload.i.i.i.i21.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.gg = and i64 %.0.copyload.i.i.i.i21.i.i.i.i.i.i.i, -8
  %.0.copyload.i.i.i.i22.i.i.i.i.i.i.i = load i64, ptr %i.fy, align 8
  %i.gh = and i64 %.0.copyload.i.i.i.i22.i.i.i.i.i.i.i, 7
  %i.gi = or disjoint i64 %i.gh, %i.gg
  store i64 %i.gi, ptr %i.fy, align 8
  %.0.copyload.i.i.i.i23.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.gj = and i64 %.0.copyload.i.i.i.i23.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.gk = inttoptr i64 %i.gj to ptr
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store ptr %i.e, ptr %i.gl, align 8, !tbaa !112
  %.0.copyload.i.i.i.i24.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.gm = and i64 %.0.copyload.i.i.i.i24.i.i.i.i.i.i.i, 7
  %i.gn = or disjoint i64 %i.gm, %i.gj
  store i64 %i.gn, ptr %1, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store ptr %1, ptr %i.go, align 8, !tbaa !112
  %.0.copyload.i.i.i.i25.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.gp = and i64 %.0.copyload.i.i.i.i25.i.i.i.i.i.i.i, 7
  %i.gq = or disjoint i64 %i.gp, %i.gb
  store i64 %i.gq, ptr %i.e, align 8
  br label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_.exit

_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_.exit: ; preds = %bb.t, %"_ZZNK4llvm16SystemZInstrInfo9splitMoveENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEjENK3$_0clENS_8RegisterE.exit", %"_ZZNK4llvm16SystemZInstrInfo9splitMoveENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEjENK3$_0clENS_8RegisterE.exit.thread", %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, %bb.u, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.thread
  %.1 = phi ptr [ %i.e, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.thread ], [ %1, %bb.u ], [ %i.e, %"_ZZNK4llvm16SystemZInstrInfo9splitMoveENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEjENK3$_0clENS_8RegisterE.exit" ], [ %1, %"_ZZNK4llvm16SystemZInstrInfo9splitMoveENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEjENK3$_0clENS_8RegisterE.exit.thread" ], [ %1, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i ], [ %i.e, %bb.t ]
  %i.gr = getelementptr inbounds nuw i8, ptr %.1, i64 32 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !113
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 32 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 8
  %i.gv = and i32 %i.gu, -67108865
  store i32 %i.gv, ptr %i.gt, align 8
  %i.gw = load ptr, ptr %i.gr, align 8, !tbaa !113
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 96 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 8
  %i.gz = and i32 %i.gy, -67108865
  store i32 %i.gz, ptr %i.gx, align 8
  ret void
}

declare noundef ptr @_ZN4llvm15MachineFunction17CloneMachineInstrEPKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32), i32) local_unnamed_addr #4

declare i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240), i32, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK4llvm16SystemZInstrInfo18getOpcodeForOffsetEjlPKNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = zext i32 %1 to i64
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !117  ; 2 uses
  %i.h = lshr i64 %i.g, 1
  %i.i = and i64 %i.h, 8
  %i.j = add nsw i64 %i.i, %2                     ; 3 uses
  %i.k = icmp ult i64 %2, 4096
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %i.j, 4096
  br i1 %i.l, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.b, %bb.c
  %.023.i = phi i32 [ %.1.i, %bb.c ], [ 47, %bb.b ] ; 3 uses
  %.01522.i = phi i32 [ %.116.i, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %i.m = sub nuw i32 %.023.i, %.01522.i
  %i.n = lshr i32 %i.m, 1
  %i.o = add i32 %i.n, %.01522.i                  ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7SystemZ15getDisp12OpcodeEjE5Table, i64 %i.p
  %i.r = load i32, ptr %i.q, align 8, !tbaa !40   ; 2 uses
  %i.s = icmp eq i32 %1, %i.r
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.t = icmp ult i32 %1, %i.r                    ; 2 uses
  %i.u = add nuw i32 %i.o, 1
  %.116.i = select i1 %i.t, i32 %.01522.i, i32 %i.u ; 3 uses
  %.1.i = select i1 %i.t, i32 %i.o, i32 %.023.i   ; 3 uses
  %i.v = icmp ult i32 %.116.i, %.1.i
  br i1 %i.v, label %.preheader, label %bb.d, !llvm.loop !0

bb.d:                                             ; preds = %bb.c, %.preheader
  %.015.lcssa.i = phi i32 [ %.01522.i, %.preheader ], [ %.116.i, %bb.c ]
  %.0.lcssa.i = phi i32 [ %.023.i, %.preheader ], [ %.1.i, %bb.c ]
  %i.w = icmp eq i32 %.015.lcssa.i, %.0.lcssa.i
  br i1 %i.w, label %_ZN4llvm7SystemZ15getDisp12OpcodeEj.exit.thread, label %_ZN4llvm7SystemZ15getDisp12OpcodeEj.exit

_ZN4llvm7SystemZ15getDisp12OpcodeEj.exit:         ; preds = %bb.d
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7SystemZ15getDisp12OpcodeEjE5Table, i64 %i.p
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !40
  br label %_ZN4llvm7SystemZ15getDisp12OpcodeEj.exit.thread

bb.e:                                             ; preds = %bb.a
  %i.aa = add i64 %2, 524288
  %i.ab = icmp ult i64 %i.aa, 1048576
  %i.ac = add i64 %i.j, 524288
  %i.ad = icmp ult i64 %i.ac, 1048576
  %or.cond = select i1 %i.ab, i1 %i.ad, i1 false
  br i1 %or.cond, label %.preheader59, label %_ZN4llvm7SystemZ15getDisp12OpcodeEj.exit.thread

end_hunk_0
begin_hunk_1_@_ZNK4llvm16SystemZInstrInfo20loadRegFromStackSlotERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8RegisterEiPKNS_15MCRegisterClassES6_jNS4_6MIFlagE:bb.a

_ZNK4llvm16SystemZInstrInfo19getLoadStoreOpcodesEPKNS_15MCRegisterClassERjS4_.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.i, %bb.j, %bb.k, %bb.l, %.thread56.i, %bb.n, %bb.o
  %.sink58.i.neg = phi i64 [ -1500, %bb.c ], [ -448, %bb.e ], [ -436, %bb.g ], [ -1556, %bb.j ], [ -553, %.thread56.i ], [ -554, %bb.n ], [ %.neg, %bb.o ], [ -459, %bb.l ], [ -1540, %bb.k ], [ -1557, %bb.i ], [ -1573, %bb.f ], [ -1570, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr %.sroa.016.0, ptr %14, align 8, !tbaa !286
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34
  %i.ab = getelementptr inbounds [32 x i8], ptr %i.aa, i64 %.sink58.i.neg
  %i.ac = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i32 %3) ; 2 uses
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0      ; 4 uses
  %i.ae = extractvalue { ptr, ptr } %i.ac, 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !60
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !111 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !237 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !120
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !121
  %i.ap = lshr i64 %i.ao, 19
  %i.aq = trunc i64 %i.ap to i16
  %.1.i = and i16 %i.aq, 3
  call void @_ZN4llvm18MachinePointerInfo13getFixedStackERNS_15MachineFunctionEil(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachinePointerInfo") align 8 %12, ptr noundef nonnull align 8 dereferenceable(1065) %i.ai, i32 noundef %4, i64 noundef 0) #23
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !301
  %i.au = add i32 %i.at, %4
  %i.av = zext i32 %i.au to i64
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !302
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %i.aw, i64 %i.av ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !305 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.ba, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %13, i8 0, i64 40, i1 false)
  %i.bb = icmp ugt i64 %i.az, 4611686018427387899
  %i.bc = select i1 %i.bb, i64 -4611686018427387906, i64 %i.az
  %i.bd = call noundef ptr @_ZN4llvm15MachineFunction20getMachineMemOperandENS_18MachinePointerInfoENS_17MachineMemOperand5FlagsENS_12LocationSizeENS_5AlignERKNS_9AAMDNodesEPKNS_6MDNodeEhNS_14AtomicOrderingESC_(ptr noundef nonnull align 8 dereferenceable(1065) %i.ai, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %12, i16 noundef zeroext %.1.i, i64 %i.bc, i8 %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef null, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store i32 5, ptr %11, align 8, !alias.scope !708
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.be, align 8, !tbaa !124, !alias.scope !708
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %4, ptr %i.bf, align 8, !tbaa !114, !alias.scope !708
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, ptr noundef nonnull align 8 dereferenceable(1065) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store i32 1, ptr %10, align 8, !alias.scope !709
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, ptr noundef nonnull align 8 dereferenceable(1065) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, ptr noundef nonnull align 8 dereferenceable(1065) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @_ZN4llvm12MachineInstr13addMemOperandERNS_15MachineFunctionEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, ptr noundef nonnull align 8 dereferenceable(1065) %i.ad, ptr noundef %i.bd) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm16SystemZInstrInfo21convertToThreeAddressERNS_12MachineInstrEPNS_13LiveVariablesEPNS_13LiveIntervalsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %class.anon.645, align 1            ; 3 uses
  %5 = alloca %"struct.std::pair.637", align 8    ; 5 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 4 uses
  %11 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !118
  %switch.tableidx = add i32 %i.d, -480           ; 3 uses
  %i.e = icmp ult i32 %switch.tableidx, 9
  br i1 %i.e, label %switch.lookup, label %_ZL14transferDeadCCPN4llvm12MachineInstrES1_.exit

switch.lookup:                                    ; preds = %bb.a
  %i.f = zext nneg i32 %switch.tableidx to i64    ; 2 uses
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvm16SystemZInstrInfo21convertToThreeAddressERNS_12MachineInstrEPNS_13LiveVariablesEPNS_13LiveIntervalsE, i64 %i.f
  %switch.load = load i64, ptr %switch.gep, align 8 ; 2 uses
  %i.g = zext nneg i32 %switch.tableidx to i64
  %switch.gep118 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm16SystemZInstrInfo21convertToThreeAddressERNS_12MachineInstrEPNS_13LiveVariablesEPNS_13LiveIntervalsE.12, i64 %i.g
  %switch.load119 = load i8, ptr %switch.gep118, align 1
  %switch.ext = zext nneg i8 %switch.load119 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !113  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.k = load i64, ptr %i.j, align 8, !tbaa !114
  %.sroa.068.4.extract.shift76 = lshr i64 %switch.load, 32 ; 2 uses
  %i.l = shl i64 %i.k, %.sroa.068.4.extract.shift76
  %i.m = add nuw nsw i64 %switch.load, 4294967295
  %i.n = and i64 %i.m, 4294967295
  %i.o = shl i64 2, %i.n
  %i.p = add nsw i64 %i.o, -1                     ; 3 uses
  %i.q = shl nuw nsw i64 2, %switch.ext
  %i.r = add nsw i64 %i.q, -1
  %i.s = shl i64 %i.r, %.sroa.068.4.extract.shift76
  %i.t = xor i64 %i.s, -1
  %i.u = or i64 %i.l, %i.t
  %i.v = and i64 %i.u, %i.p                       ; 7 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZL14transferDeadCCPN4llvm12MachineInstrES1_.exit, label %_ZN4llvm16isShiftedMask_64Em.exit.i.i

_ZN4llvm16isShiftedMask_64Em.exit.i.i:            ; preds = %switch.lookup
  %i.x = add i64 %i.v, -1
  %i.y = or i64 %i.x, %i.v                        ; 2 uses
  %i.z = add i64 %i.y, 1
  %i.aa = and i64 %i.z, %i.y
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.b, label %_ZN4llvm16isShiftedMask_64EmRjS0_.exit.i

bb.b:                                             ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i.i
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.v, i1 true) ; 2 uses
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.v)
  %i.af = trunc nuw nsw i64 %i.ae to i32
  %i.ag = add nuw nsw i32 %i.af, %i.ad
  %i.ah = xor i64 %i.ac, 63
  br label %_ZNK4llvm16SystemZInstrInfo11isRxSBGMaskEmjRjS1_.exit

_ZN4llvm16isShiftedMask_64EmRjS0_.exit.i:         ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i.i
  %i.ai = xor i64 %i.v, %i.p                      ; 4 uses
  %.not.i.i11.i = icmp eq i64 %i.v, %i.p
  br i1 %.not.i.i11.i, label %_ZL14transferDeadCCPN4llvm12MachineInstrES1_.exit, label %_ZN4llvm16isShiftedMask_64Em.exit.i12.i

_ZN4llvm16isShiftedMask_64Em.exit.i12.i:          ; preds = %_ZN4llvm16isShiftedMask_64EmRjS0_.exit.i
  %i.aj = add i64 %i.ai, -1
  %i.ak = or i64 %i.aj, %i.ai                     ; 2 uses
  %i.al = add i64 %i.ak, 1
  %i.am = and i64 %i.al, %i.ak
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.c, label %_ZL14transferDeadCCPN4llvm12MachineInstrES1_.exit

bb.c:                                             ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i12.i
  %i.ao = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ai, i1 true) ; 2 uses
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.ai)
  %.neg105 = xor i64 %i.ao, 63
  %i.ar = sub nsw i64 %.neg105, %i.aq
  br label %_ZNK4llvm16SystemZInstrInfo11isRxSBGMaskEmjRjS1_.exit

_ZNK4llvm16SystemZInstrInfo11isRxSBGMaskEmjRjS1_.exit: ; preds = %bb.c, %bb.b
  %.180 = phi i64 [ %i.ar, %bb.c ], [ %i.ah, %bb.b ] ; 2 uses
  %.pn = phi i32 [ %i.ap, %bb.c ], [ %i.ag, %bb.b ]
  %.278 = sub nsw i32 64, %.pn                    ; 2 uses
  %i.as = shl nuw nsw i64 1, %i.f
  %i.at = and i64 %i.as, 238
  %.not120 = icmp eq i64 %i.at, 0
  br i1 %.not120, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm16SystemZInstrInfo11isRxSBGMaskEmjRjS1_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !261, !nonnull !262, !align !263
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 371
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !399, !range !390, !noundef !262
  %i.ay = trunc nuw i8 %i.ax to i1
  %.neg = select i1 %i.ay, i64 -2108, i64 -2105
  br label %bb.f

bb.e:                                             ; preds = %_ZNK4llvm16SystemZInstrInfo11isRxSBGMaskEmjRjS1_.exit
  %i.az = and i32 %.278, 31
  %i.ba = and i64 %.180, 31
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.079 = phi i64 [ %.180, %bb.d ], [ %i.ba, %bb.e ]
  %.0 = phi i32 [ %.278, %bb.d ], [ %i.az, %bb.e ]
  %.042.neg = phi i64 [ %.neg, %bb.d ], [ -514, %bb.e ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.011.0.copyload = load ptr, ptr %i.bc, align 8, !tbaa !286
  store ptr %.sroa.011.0.copyload, ptr %11, align 8, !tbaa !286
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !34
  %i.bg = getelementptr inbounds [32 x i8], ptr %i.bf, i64 %.042.neg
  %i.bh = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.bg) ; 2 uses
  %i.bi = extractvalue { ptr, ptr } %i.bh, 0      ; 6 uses
  %i.bj = extractvalue { ptr, ptr } %i.bh, 1      ; 15 uses
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bj, ptr noundef nonnull align 8 dereferenceable(1065) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bj, ptr noundef nonnull align 8 dereferenceable(1065) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !114
  %i.bm = load i32, ptr %i.bb, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %12, align 8, !tbaa !124, !alias.scope !731
  %13 = shl i32 %i.bm, 2
  %i.bn = and i32 %13, 67108864
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %i.bl, ptr %i.bo, align 4, !tbaa !114, !alias.scope !731
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 16
  %14 = xor i32 %i.bn, 68157184
  %15 = and i32 %14, %i.bm
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false), !alias.scope !731
  store i32 %15, ptr %9, align 8, !alias.scope !731
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bj, ptr noundef nonnull align 8 dereferenceable(1065) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.bq = zext i32 %.0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store i32 1, ptr %8, align 8, !alias.scope !732
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.br, align 8, !tbaa !124, !alias.scope !732
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.bq, ptr %i.bs, align 8, !tbaa !114, !alias.scope !732
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bj, ptr noundef nonnull align 8 dereferenceable(1065) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.bt = add nsw i64 %.079, 128
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i32 1, ptr %7, align 8, !alias.scope !733
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.bu, align 8, !tbaa !124, !alias.scope !733
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.bt, ptr %i.bv, align 8, !tbaa !114, !alias.scope !733
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bj, ptr noundef nonnull align 8 dereferenceable(1065) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i32 1, ptr %6, align 8, !alias.scope !734
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bj, ptr noundef nonnull align 8 dereferenceable(1065) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.by = load i24, ptr %i.bx, align 8            ; 2 uses
  %i.bz = icmp ugt i24 %i.by, 1
  br i1 %i.bz, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.g
  %wide.trip.count = zext i24 %i.by to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.ca = load ptr, ptr %i.h, align 8, !tbaa !113
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %i.ca, i64 %indvars.iv ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8            ; 3 uses
  %i.cd = and i32 %i.cc, 255
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph
  %i.cf = lshr i32 %i.cc, 26
  %i.cg = lshr i32 %i.cc, 24
  %.lobit.i48 = and i32 %i.cg, 1
  %i.ch = xor i32 %.lobit.i48, 1
  %i.ci = and i32 %i.ch, %i.cf
  %.not102 = icmp eq i32 %i.ci, 0
  br i1 %.not102, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !114
  call void @_ZN4llvm13LiveVariables22replaceKillInstructionENS_8RegisterERNS_12MachineInstrES3_(ptr noundef nonnull align 8 dereferenceable(200) %2, i32 %i.ck, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.bj) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !718

.loopexit:                                        ; preds = %bb.j, %bb.g, %bb.f
  %.not45 = icmp eq ptr %3, null
  br i1 %.not45, label %_ZN4llvm13LiveIntervals25ReplaceMachineInstrInMapsERNS_12MachineInstrES2_.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !437 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 104 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !440, !noalias !735 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 112
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !441, !noalias !735 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 124
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !442, !noalias !735 ; 4 uses
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %.loopexit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cu = add i32 %i.cs, -1                       ; 2 uses
  %i.cv = ptrtoint ptr %1 to i64
  %i.cw = mul i64 %i.cv, -4658895280553007687     ; 2 uses
  %i.cx = lshr i64 %i.cw, 31
  %i.cy = xor i64 %i.cx, %i.cw
  %i.cz = trunc i64 %i.cy to i32
  %i.da = and i32 %i.cu, %i.cz                    ; 3 uses
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  %i.dc = lshr i64 %i.db, 5
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !40, !noalias !736
  %i.df = and i32 %i.da, 31
  %i.dg = lshr i32 %i.de, %i.df
  %i.dh = trunc i32 %i.dg to i1
  br i1 %i.dh, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !443

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.l, %bb.m
  %i.di = phi i64 [ %i.do, %bb.m ], [ %i.db, %bb.l ]
  %.017.i.i.i.i.i.i = phi i32 [ %i.dn, %bb.m ], [ %i.da, %bb.l ]
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.di ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !396, !noalias !736
  %i.dl = icmp eq ptr %1, %i.dk
  br i1 %i.dl, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i.i, label %bb.m, !prof !312

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.dm = add nuw i32 %.017.i.i.i.i.i.i, 1
  %i.dn = and i32 %i.dm, %i.cu                    ; 3 uses
  %i.do = zext i32 %i.dn to i64                   ; 2 uses
  %i.dp = lshr i64 %i.do, 5
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !40, !noalias !736
  %i.ds = and i32 %i.dn, 31
  %i.dt = lshr i32 %i.dr, %i.ds
  %i.du = trunc i32 %i.dt to i1
  br i1 %i.du, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !444

.loopexit.i.i.i.i:                                ; preds = %bb.m, %bb.l, %bb.k
  %i.dv = zext i32 %i.cs to i64                   ; 2 uses
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.dv
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i = zext i32 %i.cs to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i.i, %.loopexit.i.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i.i ], [ %i.dv, %.loopexit.i.i.i.i ]
  %.lcssa.sink.i.i.i.i = phi ptr [ %i.dj, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i.i ], [ %i.dw, %.loopexit.i.i.i.i ] ; 3 uses
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %.pre-phi.i.i
  %i.dy = icmp eq ptr %.lcssa.sink.i.i.i.i, %i.dx
  br i1 %i.dy, label %_ZN4llvm13LiveIntervals25ReplaceMachineInstrInMapsERNS_12MachineInstrES2_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !114 ; 2 uses
  %i.eb = and i64 %i.ea, -8
  %i.ec = inttoptr i64 %i.eb to ptr
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store ptr %i.bj, ptr %i.ed, align 8, !tbaa !737
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E21eraseFromFilledBucketIZNSC_21eraseFromFilledBucketEPSA_EUlRSA_E_EEvSE_OT_(ptr noundef nonnull align 1 dereferenceable(1) %i.cn, ptr noundef nonnull %.lcssa.sink.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.bj, ptr %5, align 8, !tbaa !742
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ea, ptr %i.ee, align 8, !tbaa !114
  %i.ef = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JS5_EEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.ee), !noalias !743 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZN4llvm13LiveIntervals25ReplaceMachineInstrInMapsERNS_12MachineInstrES2_.exit

_ZN4llvm13LiveIntervals25ReplaceMachineInstrInMapsERNS_12MachineInstrES2_.exit: ; preds = %bb.n, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i.i, %.loopexit
  %i.eg = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 1, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext false) #23
  %.not6.i = icmp eq i32 %i.eg, -1
  br i1 %.not6.i, label %_ZL14transferDeadCCPN4llvm12MachineInstrES1_.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm13LiveIntervals25ReplaceMachineInstrInMapsERNS_12MachineInstrES2_.exit
  %i.eh = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %i.bj, i32 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #23 ; 2 uses
  %i.ei = icmp eq i32 %i.eh, -1
  br i1 %i.ei, label %_ZL14transferDeadCCPN4llvm12MachineInstrES1_.exit, label %_ZN4llvm12MachineInstr22findRegisterDefOperandENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit.i

_ZN4llvm12MachineInstr22findRegisterDefOperandENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit.i: ; preds = %bb.o
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !113 ; 2 uses
  %.not.i49 = icmp eq ptr %i.ek, null
  br i1 %.not.i49, label %_ZL14transferDeadCCPN4llvm12MachineInstrES1_.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm12MachineInstr22findRegisterDefOperandENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit.i
  %i.el = zext i32 %i.eh to i64
  %i.em = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 8
  %i.eo = or i32 %i.en, 67108864
  store i32 %i.eo, ptr %i.em, align 8
  br label %_ZL14transferDeadCCPN4llvm12MachineInstrES1_.exit

_ZL14transferDeadCCPN4llvm12MachineInstrES1_.exit: ; preds = %bb.a, %_ZN4llvm16isShiftedMask_64Em.exit.i12.i, %switch.lookup, %_ZN4llvm16isShiftedMask_64EmRjS0_.exit.i, %bb.p, %_ZN4llvm12MachineInstr22findRegisterDefOperandENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit.i, %bb.o, %_ZN4llvm13LiveIntervals25ReplaceMachineInstrInMapsERNS_12MachineInstrES2_.exit
  %i.ep = phi ptr [ %i.bj, %bb.p ], [ %i.bj, %_ZN4llvm13LiveIntervals25ReplaceMachineInstrInMapsERNS_12MachineInstrES2_.exit ], [ %i.bj, %bb.o ], [ %i.bj, %_ZN4llvm12MachineInstr22findRegisterDefOperandENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit.i ], [ null, %_ZN4llvm16isShiftedMask_64Em.exit.i12.i ], [ null, %_ZN4llvm16isShiftedMask_64EmRjS0_.exit.i ], [ null, %switch.lookup ], [ null, %bb.a ]
  ret ptr %i.ep
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16SystemZInstrInfo11isRxSBGMaskEmjRjS1_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  %i.b = add i32 %2, -1
  %i.c = zext nneg i32 %i.b to i64
  %i.d = shl i64 2, %i.c
  %i.e = add i64 %i.d, -1
  %i.f = select i1 %i.a, i64 0, i64 %i.e          ; 3 uses
  %i.g = and i64 %i.f, %1                         ; 7 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN4llvm16isShiftedMask_64EmRjS0_.exit13.thread, label %_ZN4llvm16isShiftedMask_64Em.exit.i

_ZN4llvm16isShiftedMask_64Em.exit.i:              ; preds = %bb.a
  %i.i = add i64 %i.g, -1
end_hunk_1
