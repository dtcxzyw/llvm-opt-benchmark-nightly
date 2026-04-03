begin_hunk_0
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 6 uses
  br label %_ZN2v88internal16StringComparator5State7AdvanceEiRKNS0_31SharedStringAccessGuardIfNeededE.exit41

_ZN2v88internal16StringComparator5State7AdvanceEiRKNS0_31SharedStringAccessGuardIfNeededE.exit41: ; preds = %_ZN2v88internal16StringComparator5State7AdvanceEiRKNS0_31SharedStringAccessGuardIfNeededE.exit41.backedge, %_ZN2v88internal16StringComparator5State4InitENS0_6TaggedINS0_6StringEEERKNS0_31SharedStringAccessGuardIfNeededE.exit26
  %.020 = phi i32 [ %i.h, %_ZN2v88internal16StringComparator5State4InitENS0_6TaggedINS0_6StringEEERKNS0_31SharedStringAccessGuardIfNeededE.exit26 ], [ %i.bb, %_ZN2v88internal16StringComparator5State7AdvanceEiRKNS0_31SharedStringAccessGuardIfNeededE.exit41.backedge ]
  %i.ad = load i32, ptr %i.y, align 4             ; 3 uses
  %i.ae = load i32, ptr %i.x, align 4             ; 3 uses
  %i.af = call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.ae) ; 12 uses
  %i.ag = load i8, ptr %i.z, align 8, !range !7, !noundef !8
  %i.ah = trunc nuw i8 %i.ag to i1                ; 2 uses
  %i.ai = load i8, ptr %i.aa, align 8, !range !7, !noundef !8
  %i.aj = trunc nuw i8 %i.ai to i1                ; 2 uses
  %i.ak = load ptr, ptr %i.ab, align 8            ; 8 uses
  br i1 %i.ah, label %bb.f, label %4

bb.f:                                             ; preds = %_ZN2v88internal16StringComparator5State7AdvanceEiRKNS0_31SharedStringAccessGuardIfNeededE.exit41
  br i1 %i.aj, label %bb.g, label %bb.h
end_hunk_0
begin_hunk_1
  %.not16.i.i.i = icmp ult ptr %i.av, %i.ap
  br i1 %.not16.i.i.i, label %.lr.ph.i.i.i, label %_ZN2v88internal16StringComparator6EqualsIhtEEbPNS1_5StateES4_i.exit.thread, !llvm.loop !9

4:                                                ; preds = %_ZN2v88internal16StringComparator5State7AdvanceEiRKNS0_31SharedStringAccessGuardIfNeededE.exit41
  br i1 %i.aj, label %bb.j, label %_ZN2v88internal16StringComparator6EqualsIhtEEbPNS1_5StateES4_i.exit

bb.j:                                             ; preds = %4
  %i.ax = sext i32 %i.af to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.ax, 1
  %5 = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i.i
  %6 = icmp eq i32 %i.af, 0
  br i1 %6, label %_ZN2v88internal16StringComparator6EqualsIhtEEbPNS1_5StateES4_i.exit.thread, label %.lr.ph.i.i.preheader.i27

.lr.ph.i.i.preheader.i27:                         ; preds = %bb.j
  %7 = load ptr, ptr %i.ac, align 8
  br label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %bb.k, %.lr.ph.i.i.preheader.i27
  %.01013.i.i.i29 = phi ptr [ %8, %bb.k ], [ %i.ak, %.lr.ph.i.i.preheader.i27 ] ; 2 uses
  %.01112.i.i.i30 = phi ptr [ %9, %bb.k ], [ %7, %.lr.ph.i.i.preheader.i27 ] ; 2 uses
  %i.ay = load i16, ptr %.01013.i.i.i29, align 2
  %i.az = load i8, ptr %.01112.i.i.i30, align 1
  %i.ba = zext i8 %i.az to i16
  %.not.i.i.i31 = icmp eq i16 %i.ay, %i.ba
  br i1 %.not.i.i.i31, label %bb.k, label %_ZN2v88internal16StringComparator6EqualsIhtEEbPNS1_5StateES4_i.exit.thread45

bb.k:                                             ; preds = %.lr.ph.i.i.i28
  %8 = getelementptr inbounds nuw i8, ptr %.01013.i.i.i29, i64 2 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %.01112.i.i.i30, i64 1
  %.not16.i.i.i33 = icmp ult ptr %8, %5
  br i1 %.not16.i.i.i33, label %.lr.ph.i.i.i28, label %_ZN2v88internal16StringComparator6EqualsIhtEEbPNS1_5StateES4_i.exit.thread, !llvm.loop !10

_ZN2v88internal16StringComparator6EqualsIhtEEbPNS1_5StateES4_i.exit: ; preds = %4
  %10 = load ptr, ptr %i.ac, align 8
  %11 = sext i32 %i.af to i64
  %12 = shl nsw i64 %11, 1
  %bcmp.i.i.i34 = call i32 @bcmp(ptr %i.ak, ptr %10, i64 %12)
  %13 = icmp eq i32 %bcmp.i.i.i34, 0
  br i1 %13, label %_ZN2v88internal16StringComparator6EqualsIhtEEbPNS1_5StateES4_i.exit.thread, label %_ZN2v88internal16StringComparator6EqualsIhtEEbPNS1_5StateES4_i.exit.thread45

_ZN2v88internal16StringComparator6EqualsIhtEEbPNS1_5StateES4_i.exit.thread: ; preds = %bb.k, %bb.i, %bb.j, %bb.h, %bb.g, %_ZN2v88internal16StringComparator6EqualsIhtEEbPNS1_5StateES4_i.exit
  %i.bb = sub nsw i32 %.020, %i.af                ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZN2v88internal16StringComparator6EqualsIhtEEbPNS1_5StateES4_i.exit.thread45, label %bb.l
end_hunk_1
begin_hunk_2
_ZN2v88internal16StringComparator5State7AdvanceEiRKNS0_31SharedStringAccessGuardIfNeededE.exit41.backedge: ; preds = %_ZN2v88internal18ConsStringIterator4NextEPi.exit.i39, %bb.p
  br label %_ZN2v88internal16StringComparator5State7AdvanceEiRKNS0_31SharedStringAccessGuardIfNeededE.exit41, !llvm.loop !11

_ZN2v88internal16StringComparator6EqualsIhtEEbPNS1_5StateES4_i.exit.thread45: ; preds = %_ZN2v88internal16StringComparator6EqualsIhtEEbPNS1_5StateES4_i.exit, %bb.g, %_ZN2v88internal16StringComparator6EqualsIhtEEbPNS1_5StateES4_i.exit.thread, %.lr.ph.i.i.i28, %.lr.ph.i.i.i
  %.1.ph = phi i1 [ false, %.lr.ph.i.i.i ], [ false, %.lr.ph.i.i.i28 ], [ false, %bb.g ], [ true, %_ZN2v88internal16StringComparator6EqualsIhtEEbPNS1_5StateES4_i.exit.thread ], [ false, %_ZN2v88internal16StringComparator6EqualsIhtEEbPNS1_5StateES4_i.exit ]
  ret i1 %.1.ph
}

end_hunk_2
