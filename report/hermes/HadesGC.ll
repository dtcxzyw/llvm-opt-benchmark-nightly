begin_hunk_0
inline.NumInlined: 3052
inline.NumDeleted: 1336
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
$_ZN6hermes2vm7HadesGC12MarkAcceptorC2ERS1_ = comdat any

$_ZNK6hermes2vm7HadesGC10inYoungGenEPKv = comdat any

$_ZNK6hermes8BitArrayILm267ELm8EE18findNextSetBitFromEm = comdat any

$_ZSt11make_uniqueIN6hermes2vm7HadesGC15CollectionStatsEJRS2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KcEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_ = comdat any

end_hunk_1
begin_hunk_2

bb.j:                                             ; preds = %bb.i, %bb.a
  %.052 = phi i64 [ %i.ar, %bb.i ], [ %i.e, %bb.a ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 10 uses
  %i.at = lshr i64 %.052, 6                       ; 6 uses
  %i.au = and i64 %.052, 63
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
end_hunk_2
begin_hunk_3

.lr.ph:                                           ; preds = %_ZNK6hermes8BitArrayILm267ELm8EE18findNextSetBitFromEm.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.bu = add i32 %1, 8
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.ae
  %.153128 = phi i64 [ %i.br, %.lr.ph ], [ %i.ga, %bb.ae ] ; 8 uses
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %.153128 ; 3 uses
  %3 = load ptr, ptr %i.bv, align 8, !tbaa !52
  %4 = load ptr, ptr %0, align 8, !tbaa !60, !nonnull !61, !align !62
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bw = load ptr, ptr %5, align 8, !tbaa !63, !nonnull !61
  %6 = ptrtoint ptr %i.bw to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.ad, %bb.k
  %.058 = phi ptr [ %3, %bb.k ], [ %i.fy, %bb.ad ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.058, i64 16 ; 4 uses
  %i.by = load i32, ptr %i.bx, align 8
  br label %bb.m
end_hunk_3
begin_hunk_4
bb.ad:                                            ; preds = %bb.ac
  %i.fy = load ptr, ptr %.058, align 8, !tbaa !52 ; 2 uses
  %.not70 = icmp eq ptr %i.fy, null
  br i1 %.not70, label %bb.ae, label %bb.l, !llvm.loop !510

bb.ae:                                            ; preds = %bb.ad
  %i.fz = add nuw nsw i64 %.153128, 1
  %i.ga = tail call noundef i64 @_ZNK6hermes8BitArrayILm267ELm8EE18findNextSetBitFromEm(ptr noundef nonnull align 8 dereferenceable(40) %i.as, i64 noundef %i.fz) ; 2 uses
  %i.gb = icmp ult i64 %i.ga, 267
  br i1 %i.gb, label %bb.k, label %.critedge, !llvm.loop !511

.critedge.sink.split:                             ; preds = %bb.h, %_ZN6hermes2vm7HadesGC6OldGen17addCellToFreelistEPNS2_12FreelistCellEPNS2_13SegmentBucketE.exit, %_ZN6hermes2vm7HadesGC6OldGen22removeCellFromFreelistEPNS0_27AssignableCompressedPointerEmPNS2_13SegmentBucketE.exit89
end_hunk_4
begin_hunk_5
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx119to_stringEm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK6hermes8BitArrayILm267ELm8EE18findNextSetBitFromEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
  %3 = lshr i64 %1, 6                             ; 6 uses
  %4 = and i64 %1, 63
  %5 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3
  %6 = load i64, ptr %5, align 8, !tbaa !51
  %7 = shl nsw i64 -1, %4
  %8 = and i64 %6, %7                             ; 2 uses
  %.not14.i = icmp eq i64 %8, 0
  %9 = icmp ult i64 %1, 256
  %10 = and i1 %9, %.not14.i
  br i1 %10, label %.lr.ph.i, label %_ZNK6hermes8BitArrayILm267ELm8EE15findNextBitImplILb1EEEmm.exit

.lr.ph.i:                                         ; preds = %2
  %.0.i = add nuw nsw i64 %3, 1                   ; 2 uses
  %11 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.i
  %12 = load i64, ptr %11, align 8, !tbaa !51     ; 2 uses
  %.not.i = icmp eq i64 %12, 0
  %13 = icmp ult i64 %1, 192
  %14 = and i1 %.not.i, %13
  br i1 %14, label %.lr.ph.i.1, label %_ZNK6hermes8BitArrayILm267ELm8EE15findNextBitImplILb1EEEmm.exit

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %.0.i.1 = add nuw nsw i64 %3, 2                 ; 2 uses
  %15 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.i.1
  %16 = load i64, ptr %15, align 8, !tbaa !51     ; 2 uses
  %.not.i.1 = icmp eq i64 %16, 0
  %17 = icmp ult i64 %1, 128
  %18 = and i1 %.not.i.1, %17
  br i1 %18, label %.lr.ph.i.2, label %_ZNK6hermes8BitArrayILm267ELm8EE15findNextBitImplILb1EEEmm.exit

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %.0.i.2 = add nuw nsw i64 %3, 3                 ; 2 uses
  %19 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.i.2
  %20 = load i64, ptr %19, align 8, !tbaa !51     ; 2 uses
  %21 = or i64 %20, %3
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %.lr.ph.i.3, label %_ZNK6hermes8BitArrayILm267ELm8EE15findNextBitImplILb1EEEmm.exit

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %24 = load i64, ptr %23, align 8, !tbaa !51
  br label %_ZNK6hermes8BitArrayILm267ELm8EE15findNextBitImplILb1EEEmm.exit

_ZNK6hermes8BitArrayILm267ELm8EE15findNextBitImplILb1EEEmm.exit: ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %2
  %.010.lcssa.i = phi i64 [ %8, %2 ], [ %12, %.lr.ph.i ], [ %16, %.lr.ph.i.1 ], [ %20, %.lr.ph.i.2 ], [ %24, %.lr.ph.i.3 ]
  %.0.in.lcssa.i = phi i64 [ %3, %2 ], [ %.0.i, %.lr.ph.i ], [ %.0.i.1, %.lr.ph.i.1 ], [ %.0.i.2, %.lr.ph.i.2 ], [ 4, %.lr.ph.i.3 ]
  %25 = shl i64 %.0.in.lcssa.i, 6
  %26 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.010.lcssa.i, i1 false)
  %27 = add i64 %25, %26
  %.sroa.speculated.i = tail call noundef i64 @llvm.umin.i64(i64 %27, i64 267)
  ret i64 %.sroa.speculated.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
end_hunk_5
