Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonInstrInfo?download=true
inline.NumInlined: 4442
inline.NumDeleted: 1510
begin_hunk_0_@_ZNK4llvm16HexagonInstrInfo11getDotOldOpERKNS_12MachineInstrE:bb.a
  br label %bb.f

bb.f:                                             ; preds = %switch.lookup, %bb.e, %_ZN4llvm7Hexagon16getPredOldOpcodeEj.exit, %bb.a
  %.0 = phi i32 [ %.019.i, %_ZN4llvm7Hexagon16getPredOldOpcodeEj.exit ], [ %.019.i, %bb.e ], [ %switch.ext, %switch.lookup ], [ %i.b, %bb.a ] ; 4 uses
  %i.af = zext i32 %.0 to i64
  %i.ag = sub nsw i64 0, %i.af
  %i.ah = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !266
  %i.ak = and i64 %i.aj, 1048576
  %.not20 = icmp eq i64 %i.ak, 0
  br i1 %.not20, label %_ZN4llvm7Hexagon13getNonNVStoreEj.exit, label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.g
  %.023.i12 = phi i32 [ %.1.i15, %bb.g ], [ 99, %bb.f ] ; 3 uses
  %.01522.i13 = phi i32 [ %.116.i14, %bb.g ], [ 0, %bb.f ] ; 4 uses
  %i.al = sub nuw i32 %.023.i12, %.01522.i13
  %i.am = lshr i32 %i.al, 1
  %i.an = add i32 %i.am, %.01522.i13              ; 3 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon13getNonNVStoreEjE5Table, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !50 ; 2 uses
  %i.ar = icmp eq i32 %.0, %i.aq
  br i1 %i.ar, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.as = icmp ult i32 %.0, %i.aq                 ; 2 uses
  %i.at = add nuw i32 %i.an, 1
  %.116.i14 = select i1 %i.as, i32 %.01522.i13, i32 %i.at ; 3 uses
  %.1.i15 = select i1 %i.as, i32 %i.an, i32 %.023.i12 ; 3 uses
  %i.au = icmp ult i32 %.116.i14, %.1.i15
  br i1 %i.au, label %.preheader, label %bb.h, !llvm.loop !11

bb.h:                                             ; preds = %bb.g, %.preheader
  %.015.lcssa.i16 = phi i32 [ %.01522.i13, %.preheader ], [ %.116.i14, %bb.g ]
  %.0.lcssa.i17 = phi i32 [ %.023.i12, %.preheader ], [ %.1.i15, %bb.g ]
  %i.av = icmp eq i32 %.015.lcssa.i16, %.0.lcssa.i17
  br i1 %i.av, label %_ZN4llvm7Hexagon13getNonNVStoreEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon13getNonNVStoreEjE5Table, i64 %i.ao
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !50
  br label %_ZN4llvm7Hexagon13getNonNVStoreEj.exit

_ZN4llvm7Hexagon13getNonNVStoreEj.exit:           ; preds = %bb.i, %bb.h, %bb.f
  %.1 = phi i32 [ %.0, %bb.f ], [ %i.ay, %bb.i ], [ -1, %bb.h ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !360, !nonnull !105, !align !244
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 428
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !435
  %i.bd = icmp sgt i32 %i.bc, 3
  br i1 %i.bd, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm7Hexagon13getNonNVStoreEj.exit
  %switch.tableidx34 = add i32 %.1, -1367         ; 3 uses
  %i.be = icmp ult i32 %switch.tableidx34, 23
  %switch.shifted37 = lshr i32 4259873, %switch.tableidx34
  %switch.lobit38 = trunc i32 %switch.shifted37 to i1
  %or.cond42 = select i1 %i.be, i1 %switch.lobit38, i1 false
  br i1 %or.cond42, label %switch.lookup36, label %bb.k

switch.lookup36:                                  ; preds = %bb.j
  %i.bf = zext nneg i32 %switch.tableidx34 to i64
  %switch.gep39 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK4llvm16HexagonInstrInfo11getDotOldOpERKNS_12MachineInstrE.28, i64 %i.bf
  %switch.load40 = load i16, ptr %switch.gep39, align 2
  %switch.ext41 = zext i16 %switch.load40 to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %switch.lookup36, %_ZN4llvm7Hexagon13getNonNVStoreEj.exit
  %.011 = phi i32 [ %switch.ext41, %switch.lookup36 ], [ %.1, %_ZN4llvm7Hexagon13getNonNVStoreEj.exit ], [ %.1, %bb.j ]
  ret i32 %.011
}

declare i32 @_ZNK4llvm19HexagonRegisterInfo16getStackRegisterEv(ptr noundef nonnull align 8 dereferenceable(316)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZNK4llvm16HexagonInstrInfo20getEquivalentHWInstrERKNS_12MachineInstrE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #6 align 2 {
bb.a:
  ret i16 -1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZNK4llvm16HexagonInstrInfo17getOperandLatencyEPKNS_18InstrItineraryDataERKNS_12MachineInstrEjS6_j(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(80) %4, i32 noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !360, !nonnull !105, !align !244 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(519600) %i.b) #29 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !265
  %i.i = zext i32 %3 to i64
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = and i32 %i.k, 255
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !71   ; 3 uses
  %i.p = add i32 %i.o, -1
  %i.q = icmp ult i32 %i.p, 1073741823
  br i1 %i.q, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.r = and i32 %i.k, 33554432
  %.not97 = icmp eq i32 %i.r, 0
  br i1 %.not97, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !455, !noalias !1108
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !456, !noalias !1108
  %i.w = zext nneg i32 %i.o to i64
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !1109, !noalias !1108
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.aa ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !368, !noalias !1108 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.ad = zext i16 %i.ac to i32
  %i.ae = add nuw nsw i32 %i.o, %i.ad
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvm18MCSuperRegIteratorppEv.exit
  %.sroa.070.0102 = phi i32 [ %i.aj, %_ZN4llvm18MCSuperRegIteratorppEv.exit ], [ %i.ae, %.lr.ph.preheader ] ; 2 uses
  %.sroa.572.0101.pn = phi ptr [ %.sroa.572.0101, %_ZN4llvm18MCSuperRegIteratorppEv.exit ], [ %i.ab, %.lr.ph.preheader ]
  %i.af = and i32 %.sroa.070.0102, 65535
  %i.ag = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %2, i32 %i.af, ptr noundef nonnull %i.f, i1 noundef zeroext false, i1 noundef zeroext false) #29 ; 2 uses
  %.not = icmp eq i32 %i.ag, -1
  br i1 %.not, label %_ZN4llvm18MCSuperRegIteratorppEv.exit, label %.loopexit

_ZN4llvm18MCSuperRegIteratorppEv.exit:            ; preds = %.lr.ph
  %.sroa.572.0101 = getelementptr inbounds nuw i8, ptr %.sroa.572.0101.pn, i64 2 ; 2 uses
  %i.ah = load i16, ptr %.sroa.572.0101, align 2, !tbaa !368 ; 2 uses
  %i.ai = zext i16 %i.ah to i32
  %i.aj = add i32 %.sroa.070.0102, %i.ai
  %.not.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %_ZN4llvm18MCSuperRegIteratorppEv.exit, %.lr.ph, %bb.d, %bb.c
  %.3 = phi i32 [ %3, %bb.c ], [ %3, %bb.d ], [ %3, %_ZN4llvm18MCSuperRegIteratorppEv.exit ], [ %i.ag, %.lr.ph ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !265
  %i.am = zext i32 %5 to i64
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = and i32 %i.ao, 33554432
  %.not99 = icmp eq i32 %i.ap, 0
  br i1 %.not99, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !71 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !455, !noalias !1110
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !456, !noalias !1110
  %i.aw = zext i32 %i.ar to i64
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !1109, !noalias !1110
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ba ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !368, !noalias !1110 ; 2 uses
  %.not.i.i.i.i50 = icmp eq i16 %i.bc, 0
  br i1 %.not.i.i.i.i50, label %.critedge, label %.lr.ph106.preheader

.lr.ph106.preheader:                              ; preds = %bb.e
  %i.bd = zext i16 %i.bc to i32
  %i.be = add i32 %i.ar, %i.bd
  br label %.lr.ph106

.lr.ph106:                                        ; preds = %.lr.ph106.preheader, %_ZN4llvm18MCSuperRegIteratorppEv.exit55
  %.sroa.058.0105 = phi i32 [ %i.bj, %_ZN4llvm18MCSuperRegIteratorppEv.exit55 ], [ %i.be, %.lr.ph106.preheader ] ; 2 uses
  %.sroa.559.0104.pn = phi ptr [ %.sroa.559.0104, %_ZN4llvm18MCSuperRegIteratorppEv.exit55 ], [ %i.bb, %.lr.ph106.preheader ]
  %i.bf = and i32 %.sroa.058.0105, 65535
  %i.bg = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %4, i32 %i.bf, ptr noundef nonnull %i.f, i1 noundef zeroext false) #29 ; 2 uses
  %.not49 = icmp eq i32 %i.bg, -1
  br i1 %.not49, label %_ZN4llvm18MCSuperRegIteratorppEv.exit55, label %.critedge

_ZN4llvm18MCSuperRegIteratorppEv.exit55:          ; preds = %.lr.ph106
  %.sroa.559.0104 = getelementptr inbounds nuw i8, ptr %.sroa.559.0104.pn, i64 2 ; 2 uses
  %i.bh = load i16, ptr %.sroa.559.0104, align 2, !tbaa !368 ; 2 uses
  %i.bi = zext i16 %i.bh to i32
  %i.bj = add i32 %.sroa.058.0105, %i.bi
  %.not.i.i54 = icmp eq i16 %i.bh, 0
  br i1 %.not.i.i54, label %.critedge, label %.lr.ph106

.critedge:                                        ; preds = %_ZN4llvm18MCSuperRegIteratorppEv.exit55, %.lr.ph106, %bb.e, %bb.a, %.loopexit, %bb.b
  %.446 = phi i32 [ %5, %.loopexit ], [ %5, %bb.b ], [ %5, %bb.a ], [ %5, %bb.e ], [ %5, %_ZN4llvm18MCSuperRegIteratorppEv.exit55 ], [ %i.bg, %.lr.ph106 ]
  %.4 = phi i32 [ %.3, %.loopexit ], [ %3, %bb.b ], [ %3, %bb.a ], [ %.3, %bb.e ], [ %.3, %.lr.ph106 ], [ %.3, %_ZN4llvm18MCSuperRegIteratorppEv.exit55 ]
  %i.bk = tail call i64 @_ZNK4llvm15TargetInstrInfo17getOperandLatencyEPKNS_18InstrItineraryDataERKNS_12MachineInstrEjS6_j(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef %.4, ptr noundef nonnull align 8 dereferenceable(80) %4, i32 noundef %.446) #29 ; 4 uses
  %.sroa.790.0.extract.shift = and i64 %i.bk, -1099511627776
  %i.bl = and i64 %i.bk, 8589934591
  %i.bm = icmp eq i64 %i.bl, 4294967296           ; 2 uses
  %6 = and i64 %i.bk, 1095216660480
  %.sroa.488.0.insert.shift = select i1 %i.bm, i64 4294967296, i64 %6
  %.sroa.488.0.insert.insert = or disjoint i64 %.sroa.488.0.insert.shift, %.sroa.790.0.extract.shift
  %i.bn = and i64 %i.bk, 4294967295
  %.sroa.086.0.insert.ext = select i1 %i.bm, i64 1, i64 %i.bn
  %.sroa.086.0.insert.insert = or disjoint i64 %.sroa.488.0.insert.insert, %.sroa.086.0.insert.ext
  ret i64 %.sroa.086.0.insert.insert
}

declare noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80), i32, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #7

declare noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80), i32, ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

declare i64 @_ZNK4llvm15TargetInstrInfo17getOperandLatencyEPKNS_18InstrItineraryDataERKNS_12MachineInstrEjS6_j(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, ptr noundef nonnull align 8 dereferenceable(80), i32 noundef, ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo20getInvertedPredSenseERNS_15SmallVectorImplINS_14MachineOperandEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !78
  %.not.i = icmp ne i32 %i.b, 0                   ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !71   ; 2 uses
  %i.f = trunc i64 %i.e to i32                    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !121
  %i.i = and i64 %i.e, 4294967295
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr inbounds [32 x i8], ptr %i.h, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !266
  %i.n = and i64 %i.m, 2048
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %.preheader.i, label %.preheader12.i

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %.023.i.i = phi i32 [ %.1.i.i, %bb.c ], [ 250, %bb.b ] ; 3 uses
  %.01522.i.i = phi i32 [ %.116.i.i, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %i.o = sub nuw i32 %.023.i.i, %.01522.i.i
  %i.p = lshr i32 %i.o, 1
  %i.q = add i32 %i.p, %.01522.i.i                ; 3 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon18getFalsePredOpcodeEjE5Table, i64 %i.r
  %i.t = load i32, ptr %i.s, align 8, !tbaa !50   ; 2 uses
  %i.u = icmp eq i32 %i.t, %i.f
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.v = icmp ugt i32 %i.t, %i.f                  ; 2 uses
  %i.w = add nuw i32 %i.q, 1
  %.116.i.i = select i1 %i.v, i32 %.01522.i.i, i32 %i.w ; 3 uses
  %.1.i.i = select i1 %i.v, i32 %i.q, i32 %.023.i.i ; 3 uses
  %i.x = icmp ult i32 %.116.i.i, %.1.i.i
  br i1 %i.x, label %.preheader.i, label %bb.d, !llvm.loop !9

bb.d:                                             ; preds = %bb.c, %.preheader.i
  %.015.lcssa.i.i = phi i32 [ %.01522.i.i, %.preheader.i ], [ %.116.i.i, %bb.c ]
  %.0.lcssa.i.i = phi i32 [ %.023.i.i, %.preheader.i ], [ %.1.i.i, %bb.c ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon18getFalsePredOpcodeEjE5Table, i64 %i.r
  %i.z = icmp eq i32 %.015.lcssa.i.i, %.0.lcssa.i.i
  br i1 %i.z, label %_ZNK4llvm16HexagonInstrInfo27getInvertedPredicatedOpcodeEi.exit, label %_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split.i

.preheader12.i:                                   ; preds = %bb.b, %bb.e
  %.023.i5.i = phi i32 [ %.1.i8.i, %bb.e ], [ 250, %bb.b ] ; 3 uses
  %.01522.i6.i = phi i32 [ %.116.i7.i, %bb.e ], [ 0, %bb.b ] ; 4 uses
  %i.aa = sub nuw i32 %.023.i5.i, %.01522.i6.i
  %i.ab = lshr i32 %i.aa, 1
  %i.ac = add i32 %i.ab, %.01522.i6.i             ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon17getTruePredOpcodeEjE5Table, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !50 ; 2 uses
  %i.ag = icmp eq i32 %i.af, %i.f
  br i1 %i.ag, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader12.i
  %i.ah = icmp ugt i32 %i.af, %i.f                ; 2 uses
  %i.ai = add nuw i32 %i.ac, 1
  %.116.i7.i = select i1 %i.ah, i32 %.01522.i6.i, i32 %i.ai ; 3 uses
  %.1.i8.i = select i1 %i.ah, i32 %i.ac, i32 %.023.i5.i ; 3 uses
  %i.aj = icmp ult i32 %.116.i7.i, %.1.i8.i
  br i1 %i.aj, label %.preheader12.i, label %bb.f, !llvm.loop !16

bb.f:                                             ; preds = %bb.e, %.preheader12.i
  %.015.lcssa.i9.i = phi i32 [ %.01522.i6.i, %.preheader12.i ], [ %.116.i7.i, %bb.e ]
  %.0.lcssa.i10.i = phi i32 [ %.023.i5.i, %.preheader12.i ], [ %.1.i8.i, %bb.e ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon17getTruePredOpcodeEjE5Table, i64 %i.ad
  %i.al = icmp eq i32 %.015.lcssa.i9.i, %.0.lcssa.i10.i
  br i1 %i.al, label %_ZNK4llvm16HexagonInstrInfo27getInvertedPredicatedOpcodeEi.exit, label %_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split.i

_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split.i: ; preds = %bb.f, %bb.d
  %.sink22.i = phi ptr [ %i.y, %bb.d ], [ %i.ak, %bb.f ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sink22.i, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !50
  br label %_ZNK4llvm16HexagonInstrInfo27getInvertedPredicatedOpcodeEi.exit

_ZNK4llvm16HexagonInstrInfo27getInvertedPredicatedOpcodeEi.exit: ; preds = %bb.d, %bb.f, %_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split.i
  %i.ao = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ %i.an, %_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split.i ] ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, -1
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = zext nneg i32 %i.ao to i64
  store i64 %i.aq, ptr %i.d, align 8, !tbaa !71
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNK4llvm16HexagonInstrInfo27getInvertedPredicatedOpcodeEi.exit
  ret i1 %.not.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo11isPureSlot0ERKNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !264
  %i.c = icmp eq i32 %i.b, 1144
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !360, !nonnull !105, !align !244 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(519600) %i.e) #29, !inline_history !1111 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !261
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i16, ptr %i.l, align 8, !tbaa !446
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !445
  %i.p = zext i16 %i.m to i64
  %i.q = getelementptr inbounds nuw [10 x i8], ptr %i.o, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.s = load i16, ptr %i.r, align 2, !tbaa !448
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !449
  %i.v = zext i16 %i.s to i64
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !531
  %i.z = trunc i64 %i.y to i32
  %i.aa = tail call noundef zeroext i1 @_ZN4llvm13HexagonFUnits11isSlot0OnlyEj(i32 noundef %i.z) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.aa, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK4llvm16HexagonInstrInfo8getUnitsERKNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !360, !nonnull !105, !align !244 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(519600) %i.b) #29 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !261
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i16, ptr %i.i, align 8, !tbaa !446
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !445
  %i.m = zext i16 %i.j to i64
  %i.n = getelementptr inbounds nuw [10 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !448
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !449
  %i.s = zext i16 %i.p to i64
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !531
  ret i64 %i.v
}

declare noundef zeroext i1 @_ZN4llvm13HexagonFUnits11isSlot0OnlyEj(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo22isRestrictNoSlot1StoreERKNS_12MachineInstrE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !261
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !266
  %i.e = and i64 %i.d, 549755813888
  %i.f = icmp ne i64 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i32 @_ZNK4llvm16HexagonInstrInfo23getDuplexCandidateGroupERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = tail call noundef i32 @_ZNK4llvm16HexagonInstrInfo15getDuplexOpcodeERKNS_12MachineInstrEb(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2) ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
end_hunk_0
