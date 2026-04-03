begin_hunk_0
inline.NumInlined: 3053
inline.NumDeleted: 1337
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
$_ZN6hermes2vm7HadesGC12MarkAcceptorC2ERS1_ = comdat any

$_ZNK6hermes2vm7HadesGC10inYoungGenEPKv = comdat any

$_ZSt11make_uniqueIN6hermes2vm7HadesGC15CollectionStatsEJRS2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KcEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_ = comdat any

end_hunk_1
begin_hunk_2

bb.j:                                             ; preds = %bb.i, %bb.a
  %.052 = phi i64 [ %i.ar, %bb.i ], [ %i.e, %bb.a ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 13 uses
  %i.at = lshr i64 %.052, 6                       ; 6 uses
  %i.au = and i64 %.052, 63
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
end_hunk_2
begin_hunk_3

.lr.ph:                                           ; preds = %_ZNK6hermes8BitArrayILm267ELm8EE18findNextSetBitFromEm.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %3 = load ptr, ptr %0, align 8, !tbaa !60, !nonnull !61, !align !62
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %5 = load ptr, ptr %4, align 8, !tbaa !63, !nonnull !61
  %6 = ptrtoint ptr %5 to i64
  %i.bu = add i32 %1, 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %8 = load i64, ptr %7, align 8
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.ae
  %.153128 = phi i64 [ %i.br, %.lr.ph ], [ %i.ga, %bb.ae ] ; 11 uses
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %.153128 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !52
  br label %bb.l

bb.l:                                             ; preds = %bb.ad, %bb.k
  %.058 = phi ptr [ %i.bw, %bb.k ], [ %i.fy, %bb.ad ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.058, i64 16 ; 4 uses
  %i.by = load i32, ptr %i.bx, align 8
  br label %bb.m
end_hunk_3
begin_hunk_4
bb.ad:                                            ; preds = %bb.ac
  %i.fy = load ptr, ptr %.058, align 8, !tbaa !52 ; 2 uses
  %.not70 = icmp eq ptr %i.fy, null
  br i1 %.not70, label %9, label %bb.l, !llvm.loop !510

9:                                                ; preds = %bb.ad
  %10 = add nuw nsw i64 %.153128, 1               ; 2 uses
  %11 = lshr i64 %10, 6                           ; 6 uses
  %12 = and i64 %10, 63
  %13 = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %11
  %14 = load i64, ptr %13, align 8, !tbaa !51
  %15 = shl nsw i64 -1, %12
  %16 = and i64 %14, %15                          ; 2 uses
  %.not14.i.i89 = icmp eq i64 %16, 0
  %17 = icmp samesign ult i64 %.153128, 255
  %18 = and i1 %17, %.not14.i.i89
  br i1 %18, label %.lr.ph.i.i93, label %bb.ae

.lr.ph.i.i93:                                     ; preds = %9
  %.0.i.i95 = add nuw nsw i64 %11, 1              ; 2 uses
  %19 = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.0.i.i95
  %20 = load i64, ptr %19, align 8, !tbaa !51     ; 2 uses
  %.not.i.i96 = icmp eq i64 %20, 0
  %21 = icmp ult i64 %.153128, 191
  %22 = and i1 %.not.i.i96, %21
  br i1 %22, label %.lr.ph.i.i93.1, label %bb.ae

.lr.ph.i.i93.1:                                   ; preds = %.lr.ph.i.i93
  %.0.i.i95.1 = add nuw nsw i64 %11, 2            ; 2 uses
  %23 = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.0.i.i95.1
  %24 = load i64, ptr %23, align 8, !tbaa !51     ; 2 uses
  %.not.i.i96.1 = icmp eq i64 %24, 0
  %25 = icmp ult i64 %.153128, 127
  %26 = and i1 %.not.i.i96.1, %25
  br i1 %26, label %.lr.ph.i.i93.2, label %bb.ae

.lr.ph.i.i93.2:                                   ; preds = %.lr.ph.i.i93.1
  %.0.i.i95.2 = add nuw nsw i64 %11, 3            ; 2 uses
  %27 = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.0.i.i95.2
  %28 = load i64, ptr %27, align 8, !tbaa !51     ; 2 uses
  %29 = or i64 %28, %11
  %30 = icmp eq i64 %29, 0                        ; 2 uses
  %spec.select = select i1 %30, i64 4, i64 %.0.i.i95.2
  %spec.select290 = select i1 %30, i64 %8, i64 %28
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i93.2, %.lr.ph.i.i93, %.lr.ph.i.i93.1, %9
  %.010.lcssa.i.i90 = phi i64 [ %16, %9 ], [ %20, %.lr.ph.i.i93 ], [ %24, %.lr.ph.i.i93.1 ], [ %spec.select290, %.lr.ph.i.i93.2 ]
  %.0.in.lcssa.i.i91 = phi i64 [ %11, %9 ], [ %.0.i.i95, %.lr.ph.i.i93 ], [ %.0.i.i95.1, %.lr.ph.i.i93.1 ], [ %spec.select, %.lr.ph.i.i93.2 ]
  %31 = shl i64 %.0.in.lcssa.i.i91, 6
  %32 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.010.lcssa.i.i90, i1 false)
  %i.fz = add i64 %31, %32                        ; 2 uses
  %i.ga = tail call noundef i64 @llvm.umin.i64(i64 %i.fz, i64 267)
  %i.gb = icmp ult i64 %i.fz, 267
  br i1 %i.gb, label %bb.k, label %.critedge, !llvm.loop !511

.critedge.sink.split:                             ; preds = %bb.h, %_ZN6hermes2vm7HadesGC6OldGen17addCellToFreelistEPNS2_12FreelistCellEPNS2_13SegmentBucketE.exit, %_ZN6hermes2vm7HadesGC6OldGen22removeCellFromFreelistEPNS0_27AssignableCompressedPointerEmPNS2_13SegmentBucketE.exit89
end_hunk_4
begin_hunk_5
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx119to_stringEm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
end_hunk_5
