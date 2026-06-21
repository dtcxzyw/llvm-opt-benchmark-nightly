inline.NumInlined: 243
inline.NumDeleted: 76
begin_hunk_0_@_ZN2v86bigint13ProcessorImpl13DivideBarrettENS0_8RWDigitsES2_NS0_6DigitsES3_S3_S2_:bb.a
bb.g:                                             ; preds = %.lr.ph, %.lr.ph.i.i
  %indvars.i.i.i156 = phi i32 [ %indvars.i.i.i153, %.lr.ph ], [ %indvars.i.i.i, %.lr.ph.i.i ]
  %indvars.iv.next.i23.i.i155 = phi i64 [ %indvars.iv.next.i21.i.i, %.lr.ph ], [ %indvars.iv.next.i.i.i, %.lr.ph.i.i ]
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.next.i23.i.i155, -1 ; 3 uses
  %i.az = and i64 %indvars.iv.next.i.i.i, 4294967295
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.az
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.ba, align 1
  %i.bb = icmp eq i64 %.0.copyload.i.i.i.i.i, 0
  br i1 %i.bb, label %.lr.ph.i.i, label %_ZN2v86bigint6Digits9NormalizeEv.exit.i.i, !llvm.loop !12

.lr.ph.i.i:                                       ; preds = %bb.g
  %indvars.i.i.i = trunc i64 %indvars.iv.next.i.i.i to i32 ; 2 uses
  %.not.i.i.i = icmp eq i32 %indvars.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge.i.i_crit_edge, label %bb.g, !llvm.loop !12

.lr.ph.i.i.._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge.i.i_crit_edge: ; preds = %.lr.ph.i.i
  br label %._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge.i.i, !llvm.loop !12

._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge.i.i: ; preds = %.lr.ph.i.i.._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge.i.i_crit_edge, %.lr.ph.i.i.preheader
  br label %_ZN2v86bigint6Digits9NormalizeEv.exit.i.i, !llvm.loop !12

_ZN2v86bigint6Digits9NormalizeEv.exit.i.i:        ; preds = %bb.g, %._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge.i.i, %.lr.ph.i.i.i, %bb.f
  %.sroa.319.1.i.i = phi i32 [ 0, %bb.f ], [ %4, %.lr.ph.i.i.i ], [ 0, %._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge.i.i ], [ %indvars.i.i.i156, %bb.g ] ; 3 uses
  br i1 %.not1.i5.i.i, label %_ZN2v86bigint6Digits9NormalizeEv.exit12.i.i, label %.lr.ph.i6.i.i

.lr.ph.i6.i.i:                                    ; preds = %_ZN2v86bigint6Digits9NormalizeEv.exit.i.i
  %.0.copyload.i.i.i927.i.i = load i64, ptr %i.ai, align 1
  %i.bc = icmp eq i64 %.0.copyload.i.i.i927.i.i, 0
  br i1 %i.bc, label %.lr.ph29.i.i.preheader, label %_ZN2v86bigint6Digits9NormalizeEv.exit12.i.i

.lr.ph29.i.i.preheader:                           ; preds = %.lr.ph.i6.i.i
  br i1 %.not.i11.i.i158, label %._ZN2v86bigint6Digits9NormalizeEv.exit12.loopexit_crit_edge.i.i, label %.lr.ph161, !llvm.loop !12

.lr.ph161:                                        ; preds = %.lr.ph29.i.i.preheader
  br label %bb.h, !llvm.loop !12

bb.h:                                             ; preds = %.lr.ph161, %.lr.ph29.i.i
  %indvars.i10.i.i160 = phi i32 [ %indvars.i10.i.i157, %.lr.ph161 ], [ %indvars.i10.i.i, %.lr.ph29.i.i ]
  %indvars.iv.next.i828.i.i159 = phi i64 [ %indvars.iv.next.i826.i.i, %.lr.ph161 ], [ %indvars.iv.next.i8.i.i, %.lr.ph29.i.i ]
  %indvars.iv.next.i8.i.i = add nsw i64 %indvars.iv.next.i828.i.i159, -1 ; 3 uses
  %i.bd = and i64 %indvars.iv.next.i8.i.i, 4294967295
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.053.0.copyload, i64 %i.bd
  %.0.copyload.i.i.i9.i.i = load i64, ptr %i.be, align 1
  %i.bf = icmp eq i64 %.0.copyload.i.i.i9.i.i, 0
  br i1 %i.bf, label %.lr.ph29.i.i, label %_ZN2v86bigint6Digits9NormalizeEv.exit12.i.i, !llvm.loop !12

.lr.ph29.i.i:                                     ; preds = %bb.h
  %indvars.i10.i.i = trunc i64 %indvars.iv.next.i8.i.i to i32 ; 2 uses
  %.not.i11.i.i = icmp eq i32 %indvars.i10.i.i, 0
  br i1 %.not.i11.i.i, label %.lr.ph29.i.i.._ZN2v86bigint6Digits9NormalizeEv.exit12.loopexit_crit_edge.i.i_crit_edge, label %bb.h, !llvm.loop !12

.lr.ph29.i.i.._ZN2v86bigint6Digits9NormalizeEv.exit12.loopexit_crit_edge.i.i_crit_edge: ; preds = %.lr.ph29.i.i
  br label %._ZN2v86bigint6Digits9NormalizeEv.exit12.loopexit_crit_edge.i.i, !llvm.loop !12

._ZN2v86bigint6Digits9NormalizeEv.exit12.loopexit_crit_edge.i.i: ; preds = %.lr.ph29.i.i.._ZN2v86bigint6Digits9NormalizeEv.exit12.loopexit_crit_edge.i.i_crit_edge, %.lr.ph29.i.i.preheader
  br label %_ZN2v86bigint6Digits9NormalizeEv.exit12.i.i, !llvm.loop !12

_ZN2v86bigint6Digits9NormalizeEv.exit12.i.i:      ; preds = %bb.h, %._ZN2v86bigint6Digits9NormalizeEv.exit12.loopexit_crit_edge.i.i, %.lr.ph.i6.i.i, %_ZN2v86bigint6Digits9NormalizeEv.exit.i.i
  %.sroa.3.1.i.i = phi i32 [ 0, %_ZN2v86bigint6Digits9NormalizeEv.exit.i.i ], [ %i.b, %.lr.ph.i6.i.i ], [ 0, %._ZN2v86bigint6Digits9NormalizeEv.exit12.loopexit_crit_edge.i.i ], [ %indvars.i10.i.i160, %bb.h ] ; 2 uses
  %.not.i13.i.i = icmp eq i32 %.sroa.319.1.i.i, %.sroa.3.1.i.i
  br i1 %.not.i13.i.i, label %.preheader.preheader.i.i.i, label %_ZN2v86bigint18GreaterThanOrEqualENS0_6DigitsES1_.exit

.preheader.preheader.i.i.i:                       ; preds = %_ZN2v86bigint6Digits9NormalizeEv.exit12.i.i
  %i.bg = zext i32 %.sroa.319.1.i.i to i64
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.i, %.preheader.preheader.i.i.i
  %indvars.iv.i14.i.i = phi i64 [ %i.bg, %.preheader.preheader.i.i.i ], [ %indvars.iv.next.i15.i.i, %bb.i ]
  %indvars.iv.next.i15.i.i = add nsw i64 %indvars.iv.i14.i.i, -1 ; 3 uses
  %i.bh = and i64 %indvars.iv.next.i15.i.i, 2147483648
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.i, label %.critedge

bb.i:                                             ; preds = %.preheader.i.i.i
  %i.bj = and i64 %indvars.iv.next.i15.i.i, 2147483647 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bj
  %.0.copyload.i.i.i16.i.i = load i64, ptr %i.bk, align 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.053.0.copyload, i64 %i.bj
  %.0.copyload.i.i12.i.i.i = load i64, ptr %i.bl, align 1 ; 2 uses
  %i.bm = icmp eq i64 %.0.copyload.i.i.i16.i.i, %.0.copyload.i.i12.i.i.i
  br i1 %i.bm, label %.preheader.i.i.i, label %.critedge.i.i.i, !llvm.loop !13

.critedge.i.i.i:                                  ; preds = %bb.i
  %i.bn = icmp ugt i64 %.0.copyload.i.i.i16.i.i, %.0.copyload.i.i12.i.i.i
  br i1 %i.bn, label %.critedge, label %_ZN2v86bigint18GreaterThanOrEqualENS0_6DigitsES1_.exit.thread124

_ZN2v86bigint18GreaterThanOrEqualENS0_6DigitsES1_.exit: ; preds = %_ZN2v86bigint6Digits9NormalizeEv.exit12.i.i
  %i.bo = sub i32 %.sroa.319.1.i.i, %.sroa.3.1.i.i
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %.critedge, label %_ZN2v86bigint18GreaterThanOrEqualENS0_6DigitsES1_.exit.thread124

.critedge:                                        ; preds = %.preheader.i.i.i, %.critedge.i.i.i, %bb.e, %_ZN2v86bigint18GreaterThanOrEqualENS0_6DigitsES1_.exit
  %i.bq = tail call noundef i64 @_ZN2v86bigint23SubtractAndReturnBorrowENS0_8RWDigitsENS0_6DigitsES2_(ptr %3, i32 %4, ptr %3, i32 %4, ptr %.sroa.053.0.copyload, i32 %i.b) #9
  %i.br = sub i64 %.1, %i.bq
  %i.bs = add i64 %.096, 1
  br label %bb.e, !llvm.loop !14

_ZN2v86bigint18GreaterThanOrEqualENS0_6DigitsES1_.exit.thread124: ; preds = %.critedge.i.i.i, %_ZN2v86bigint18GreaterThanOrEqualENS0_6DigitsES1_.exit
  %.0.copyload.i.peel.i103 = load i64, ptr %1, align 4 ; 2 uses
  %add.narrowed.i.peel.i = add i64 %.0.copyload.i.peel.i103, %.096 ; 2 uses
  %add.narrowed.overflow.i.not.peel.i = icmp ult i64 %add.narrowed.i.peel.i, %.0.copyload.i.peel.i103
  store i64 %add.narrowed.i.peel.i, ptr %1, align 4
  br i1 %add.narrowed.overflow.i.not.peel.i, label %.peel.next.i104, label %_ZN2v86bigint8SubtractENS0_8RWDigitsEm.exit

.peel.next.i104:                                  ; preds = %_ZN2v86bigint18GreaterThanOrEqualENS0_6DigitsES1_.exit.thread124, %.peel.next.i104
  %.0.i105 = phi i32 [ %i.bv, %.peel.next.i104 ], [ 1, %_ZN2v86bigint18GreaterThanOrEqualENS0_6DigitsES1_.exit.thread124 ] ; 2 uses
  %i.bt = zext i32 %.0.i105 to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bt ; 2 uses
  %.0.copyload.i.i106 = load i64, ptr %i.bu, align 4 ; 2 uses
  %add.narrowed.i.i = add i64 %.0.copyload.i.i106, 1
  %add.narrowed.overflow.i.not.i = icmp eq i64 %.0.copyload.i.i106, -1
  store i64 %add.narrowed.i.i, ptr %i.bu, align 4
  %i.bv = add i32 %.0.i105, 1
  br i1 %add.narrowed.overflow.i.not.i, label %.peel.next.i104, label %_ZN2v86bigint8SubtractENS0_8RWDigitsEm.exit, !llvm.loop !15

_ZN2v86bigint8SubtractENS0_8RWDigitsEm.exit:      ; preds = %.peel.next.i, %.peel.next.i104, %_ZN2v86bigint18GreaterThanOrEqualENS0_6DigitsES1_.exit.thread124, %bb.d
  %i.bw = icmp ult i32 %i.o, %2
  br i1 %i.bw, label %.lr.ph133.preheader, label %.loopexit

.lr.ph133.preheader:                              ; preds = %_ZN2v86bigint8SubtractENS0_8RWDigitsEm.exit
  %i.bx = zext i32 %i.o to i64
  %i.by = shl nuw nsw i64 %i.bx, 3
  %scevgep138 = getelementptr i8, ptr %1, i64 %i.by
  %i.bz = add i32 %2, -2
  %i.ca = sub i32 %i.bz, %i.j
  %i.cb = zext i32 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep138, i8 0, i64 %i.cd, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph133.preheader, %_ZN2v86bigint8SubtractENS0_8RWDigitsEm.exit, %bb.b, %bb.a
  ret void
}

declare void @_ZN2v86bigint3AddENS0_8RWDigitsENS0_6DigitsES2_(ptr, i32, ptr, i32, ptr, i32) local_unnamed_addr #2

declare noundef i64 @_ZN2v86bigint17AddAndReturnCarryENS0_8RWDigitsENS0_6DigitsES2_(ptr, i32, ptr, i32, ptr, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v86bigint13ProcessorImpl13DivideBarrettENS0_8RWDigitsES2_NS0_6DigitsES3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr nofree noundef byval(%"class.v8::bigint::Digits") align 8 captures(none) %5, ptr nofree noundef byval(%"class.v8::bigint::Digits") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.v8::bigint::RWDigits", align 8 ; 3 uses
  %8 = alloca %"class.v8::bigint::Digits", align 8 ; 3 uses
  %9 = alloca %"class.v8::bigint::Digits", align 8 ; 3 uses
  %10 = alloca %"class.v8::bigint::RWDigits", align 8 ; 3 uses
  %11 = alloca %"class.v8::bigint::Digits", align 8 ; 3 uses
  %12 = alloca %"class.v8::bigint::Digits", align 8 ; 3 uses
  %13 = alloca %"class.v8::bigint::RWDigits", align 8 ; 3 uses
  %14 = alloca %"class.v8::bigint::Digits", align 8 ; 3 uses
  %15 = alloca %"class.v8::bigint::RWDigits", align 8 ; 3 uses
  %i.a = load ptr, ptr %6, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load i32, ptr %i.b, align 8              ; 20 uses
  %i.d = add i32 %i.c, -1
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.e
  %.0.copyload.i.i.i = load i64, ptr %i.f, align 1
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.copyload.i.i.i, i1 false) ; 3 uses
  %i.h = trunc nuw nsw i64 %i.g to i32            ; 4 uses
  %i.i = icmp eq i64 %i.g, 0                      ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = zext i32 %i.c to i64
  %i.k = shl nuw nsw i64 %i.j, 3
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #11 ; 3 uses
  tail call void @_ZN2v86bigint9LeftShiftENS0_8RWDigitsENS0_6DigitsEi(ptr nonnull %i.l, i32 %i.c, ptr nonnull %i.a, i32 %i.c, i32 noundef %i.h) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0284.0 = phi ptr [ %i.l, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.sroa.12289.0 = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.m = load ptr, ptr %5, align 8                ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8              ; 5 uses
  %i.p = add i32 %i.o, -1
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.q
  %.0.copyload.i.i.i128 = load i64, ptr %i.r, align 1
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.copyload.i.i.i128, i1 false)
  %i.t = icmp samesign ugt i64 %i.g, %i.s
  br i1 %i.t, label %.thread21.i, label %bb.d

.thread21.i:                                      ; preds = %bb.c
  %i.u = add i32 %i.o, 1
  br label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EE5resetIPmvEEvT_.exit.i

bb.d:                                             ; preds = %bb.c
  br i1 %i.i, label %_ZN2v86bigint13ShiftedDigitsC2ERNS0_6DigitsEib.exit131, label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EE5resetIPmvEEvT_.exit.i

_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EE5resetIPmvEEvT_.exit.i: ; preds = %bb.d, %.thread21.i
  %.sroa.5279.0 = phi i32 [ %i.u, %.thread21.i ], [ %i.o, %bb.d ] ; 3 uses
  %i.v = zext i32 %.sroa.5279.0 to i64
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.w) #11 ; 3 uses
  tail call void @_ZN2v86bigint9LeftShiftENS0_8RWDigitsENS0_6DigitsEi(ptr nonnull %i.x, i32 %.sroa.5279.0, ptr nonnull %i.m, i32 %i.o, i32 noundef %i.h) #9
  br label %_ZN2v86bigint13ShiftedDigitsC2ERNS0_6DigitsEib.exit131

_ZN2v86bigint13ShiftedDigitsC2ERNS0_6DigitsEib.exit131: ; preds = %bb.d, %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EE5resetIPmvEEvT_.exit.i
  %.sroa.0278.0 = phi ptr [ %i.x, %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EE5resetIPmvEEvT_.exit.i ], [ %i.m, %bb.d ] ; 4 uses
  %.sroa.5279.1 = phi i32 [ %.sroa.5279.0, %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EE5resetIPmvEEvT_.exit.i ], [ %i.o, %bb.d ] ; 7 uses
  %.sroa.12283.0 = phi ptr [ %i.x, %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EE5resetIPmvEEvT_.exit.i ], [ null, %bb.d ] ; 2 uses
  %.sroa.0278.0319 = ptrtoaddr ptr %.sroa.0278.0 to i64 ; 2 uses
  store ptr %.sroa.0284.0, ptr %6, align 8
  store ptr %.sroa.0278.0, ptr %5, align 8
  store i32 %.sroa.5279.1, ptr %i.n, align 8
  %i.y = shl i32 %i.c, 1                          ; 8 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %.sroa.5279.1, i32 %i.y) ; 2 uses
  %i.z = sub i32 %spec.select, %i.c               ; 9 uses
  %i.aa = add i32 %i.z, 1                         ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #11 ; 5 uses
  %i.ae = icmp ult i32 %i.z, 50
  %i.af = shl nuw nsw i32 %i.z, 1
  %i.ag = mul i32 %i.z, 3
  %i.ah = add i32 %i.ag, 10
  %i.ai = select i1 %i.ae, i32 %i.af, i32 %i.ah
  %i.aj = add i32 %spec.select, 2
  %.sroa.speculated260 = tail call i32 @llvm.umax.i32(i32 %i.ai, i32 %i.aj) ; 5 uses
  %i.ak = zext i32 %.sroa.speculated260 to i64
  %i.al = shl nuw nsw i64 %i.ak, 3
  %i.am = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.al) #11 ; 5 uses
  %i.an = sub i32 %i.c, %i.z                      ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0284.0, i64 %i.ao
  %i.aq = tail call i32 @llvm.usub.sat.i32(i32 %i.c, i32 %i.an)
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.aq, i32 %i.z)
  store ptr %i.am, ptr %7, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sroa.speculated260, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_ZN2v86bigint13ProcessorImpl6InvertENS0_8RWDigitsENS0_6DigitsES2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.ad, i32 %i.aa, ptr %i.ap, i32 %.sroa.speculated.i, ptr noundef nonnull byval(%"class.v8::bigint::RWDigits") align 8 %7)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %_ZN2v86bigint13ScratchDigitsD2Ev.exit207, label %bb.e

bb.e:                                             ; preds = %_ZN2v86bigint13ShiftedDigitsC2ERNS0_6DigitsEib.exit131
  %.not = icmp ugt i32 %.sroa.5279.1, %i.y
  br i1 %.not, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.au = add i32 %.sroa.5279.1, -1
  %i.av = udiv i32 %i.au, %i.c                    ; 2 uses
  %i.aw = zext i32 %i.y to i64
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ax) #11 ; 20 uses
  %i.az = ptrtoaddr ptr %i.ay to i64              ; 2 uses
  %i.ba = add i32 %i.av, -1
  %i.bb = mul i32 %i.ba, %i.c                     ; 3 uses
  %i.bc = zext i32 %i.bb to i64                   ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0278.0, i64 %i.bc ; 6 uses
  %i.be = sub i32 %.sroa.5279.1, %i.bb            ; 2 uses
  %.sroa.speculated.i132 = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.be) ; 5 uses
  %.not.i = icmp eq i32 %.sroa.speculated.i132, 0
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %wide.trip.count.i = zext i32 %.sroa.speculated.i132 to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated.i132, 10
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.bf = shl nuw nsw i64 %i.bc, 3
  %i.bg = add i64 %i.bf, %.sroa.0278.0319
  %i.bh = sub i64 %i.az, %i.bg
  %diff.check = icmp ult i64 %i.bh, 32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %index ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %wide.load = load <2 x i64>, ptr %i.bi, align 1
  %wide.load319 = load <2 x i64>, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store <2 x i64> %wide.load, ptr %i.bk, align 4
  store <2 x i64> %wide.load319, ptr %i.bl, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i.prol
  %.0.copyload.i.i.i133.prol = load i64, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i.prol
  store i64 %.0.copyload.i.i.i133.prol, ptr %i.bo, align 4
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !19

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.bp = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.bq = icmp ugt i64 %i.bp, -4
  br i1 %i.bq, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.f
  %i.br = icmp ult i32 %i.be, %i.y
  br i1 %i.br, label %.lr.ph18.preheader.i, label %_ZN2v86bigint5PutAtENS0_8RWDigitsENS0_6DigitsEj.exit

.lr.ph18.preheader.i:                             ; preds = %.preheader.i
  %i.bs = zext i32 %.sroa.speculated.i132 to i64
  %i.bt = shl nuw nsw i64 %i.bs, 3
  %scevgep.i = getelementptr i8, ptr %i.ay, i64 %i.bt
  %i.bu = xor i32 %.sroa.speculated.i132, -1
  %i.bv = add i32 %i.y, %i.bu
  %i.bw = zext i32 %i.bv to i64
  %i.bx = shl nuw nsw i64 %i.bw, 3
  %i.by = add nuw nsw i64 %i.bx, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.by, i1 false)
  br label %_ZN2v86bigint5PutAtENS0_8RWDigitsENS0_6DigitsEj.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i
  %.0.copyload.i.i.i133 = load i64, ptr %i.bz, align 1
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i
  store i64 %.0.copyload.i.i.i133, ptr %i.ca, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next.i
  %.0.copyload.i.i.i133.1 = load i64, ptr %i.cb, align 1
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i
  store i64 %.0.copyload.i.i.i133.1, ptr %i.cc, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next.i.1
  %.0.copyload.i.i.i133.2 = load i64, ptr %i.cd, align 1
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i.1
  store i64 %.0.copyload.i.i.i133.2, ptr %i.ce, align 4
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next.i.2
  %.0.copyload.i.i.i133.3 = load i64, ptr %i.cf, align 1
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i.2
  store i64 %.0.copyload.i.i.i133.3, ptr %i.cg, align 4
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.preheader.i, label %.lr.ph.i, !llvm.loop !21

_ZN2v86bigint5PutAtENS0_8RWDigitsENS0_6DigitsEj.exit: ; preds = %.preheader.i, %.lr.ph18.preheader.i
  %i.ch = add i32 %i.c, 1                         ; 8 uses
  %i.ci = zext i32 %i.ch to i64                   ; 5 uses
  %i.cj = shl nuw nsw i64 %i.ci, 3
  %i.ck = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cj) #11 ; 6 uses
  %i.cl = zext i32 %i.c to i64                    ; 3 uses
  %i.cm = shl nuw nsw i64 %i.cl, 3                ; 2 uses
  %i.cn = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cm) #11 ; 8 uses
  store ptr %i.ay, ptr %8, align 8
  %.sroa.9234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.y, ptr %.sroa.9234.0..sroa_idx, align 8
  store ptr %i.ad, ptr %9, align 8
  %.sroa.7268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %i.z, ptr %.sroa.7268.0..sroa_idx, align 8
  store ptr %i.am, ptr %10, align 8
  %.sroa.7.0..sroa_idx246 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.sroa.speculated260, ptr %.sroa.7.0..sroa_idx246, align 8
  tail call void @_ZN2v86bigint13ProcessorImpl13DivideBarrettENS0_8RWDigitsES2_NS0_6DigitsES3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.ck, i32 %i.ch, ptr nonnull %i.cn, i32 %i.c, ptr noundef nonnull byval(%"class.v8::bigint::Digits") align 8 %8, ptr noundef nonnull byval(%"class.v8::bigint::Digits") align 8 %6, ptr noundef nonnull byval(%"class.v8::bigint::Digits") align 8 %9, ptr noundef nonnull byval(%"class.v8::bigint::RWDigits") align 8 %10)
  %i.co = load i32, ptr %i.ar, align 8
  %i.cp = icmp eq i32 %i.co, 1
  br i1 %i.cp, label %_ZN2v86bigint13ScratchDigitsD2Ev.exit201, label %bb.g

bb.g:                                             ; preds = %_ZN2v86bigint5PutAtENS0_8RWDigitsENS0_6DigitsEj.exit
  %i.cq = getelementptr [8 x i8], ptr %1, i64 %i.bc ; 3 uses
  %i.cr = sub i32 %2, %i.bb                       ; 4 uses
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.cr, i32 %i.ch)
  %.not303 = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not303, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.cs = tail call i32 @llvm.umin.i32(i32 %i.cr, i32 %i.ch)
  %umin = zext i32 %i.cs to i64
  %i.ct = shl nuw nsw i64 %umin, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cq, ptr nonnull align 4 %i.ck, i64 %i.ct, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %bb.g
  %i.cu = icmp ult i32 %i.ch, %i.cr
  br i1 %i.cu, label %.lr.ph296.preheader, label %._crit_edge

.lr.ph296.preheader:                              ; preds = %.preheader
  %i.cv = zext i32 %i.cr to i64                   ; 2 uses
  %i.cw = sub nsw i64 %i.cv, %i.ci                ; 3 uses
  %min.iters.check321 = icmp ult i64 %i.cw, 4
  br i1 %min.iters.check321, label %.lr.ph296.preheader347, label %vector.ph322

vector.ph322:                                     ; preds = %.lr.ph296.preheader
  %n.vec324 = and i64 %i.cw, -4                   ; 3 uses
  %i.cx = add nsw i64 %n.vec324, %i.ci
  %invariant.gep = getelementptr [8 x i8], ptr %i.cq, i64 %i.ci
  br label %vector.body325

vector.body325:                                   ; preds = %vector.body325, %vector.ph322
  %index326 = phi i64 [ 0, %vector.ph322 ], [ %index.next327, %vector.body325 ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index326 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x i64> zeroinitializer, ptr %gep, align 4
  store <2 x i64> zeroinitializer, ptr %i.cy, align 4
  %index.next327 = add nuw i64 %index326, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next327, %n.vec324
  br i1 %i.cz, label %middle.block328, label %vector.body325, !llvm.loop !22

middle.block328:                                  ; preds = %vector.body325
  %cmp.n329 = icmp eq i64 %i.cw, %n.vec324
  br i1 %cmp.n329, label %._crit_edge, label %.lr.ph296.preheader347

.lr.ph296.preheader347:                           ; preds = %.lr.ph296.preheader, %middle.block328
  %indvars.iv.ph = phi i64 [ %i.ci, %.lr.ph296.preheader ], [ %i.cx, %middle.block328 ]
  br label %.lr.ph296

.lr.ph296:                                        ; preds = %.lr.ph296.preheader347, %.lr.ph296
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph296 ], [ %indvars.iv.ph, %.lr.ph296.preheader347 ] ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv
  store i64 0, ptr %i.da, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.db = icmp samesign ult i64 %indvars.iv.next, %i.cv
  br i1 %i.db, label %.lr.ph296, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph296, %middle.block328, %.preheader
  %i.dc = add i32 %i.av, -2                       ; 2 uses
  %i.dd = icmp slt i32 %i.dc, 0
  br i1 %i.dd, label %.lr.ph.i182.preheader, label %.lr.ph.preheader.i141.lr.ph

.lr.ph.preheader.i141.lr.ph:                      ; preds = %._crit_edge
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cl
  store ptr %i.ay, ptr %11, align 8
  %.sroa.9234.0..sroa_idx235 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %i.y, ptr %.sroa.9234.0..sroa_idx235, align 8
  store ptr %i.ad, ptr %12, align 8
  %.sroa.7268.0..sroa_idx269 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %i.z, ptr %.sroa.7268.0..sroa_idx269, align 8
  store ptr %i.am, ptr %13, align 8
  %.sroa.7.0..sroa_idx248 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.sroa.speculated260, ptr %.sroa.7.0..sroa_idx248, align 8
  %.not.i170 = icmp eq i32 %i.ch, 0
  %.sroa.speculated.i169 = tail call i32 @llvm.umin.i32(i32 %i.c, i32 %i.ch)
  %wide.trip.count.i172 = zext i32 %.sroa.speculated.i169 to i64
  %i.df = shl nuw nsw i64 %wide.trip.count.i172, 3
  %i.dg = zext nneg i32 %i.dc to i64
  br label %.lr.ph.preheader.i141

.lr.ph.i182.preheader:                            ; preds = %_ZN2v86bigint5PutAtENS0_8RWDigitsENS0_6DigitsEj.exit181, %._crit_edge
  %indvars.iv.next.i184298 = add nsw i64 %i.cl, -1 ; 3 uses
  %i.dh = and i64 %indvars.iv.next.i184298, 4294967295
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.dh
  %.0.copyload.i.i.i185299 = load i64, ptr %i.di, align 1
  %i.dj = icmp eq i64 %.0.copyload.i.i.i185299, 0
  br i1 %i.dj, label %.lr.ph301.preheader, label %_ZN2v86bigint13ScratchDigitsD2Ev.exit192

.lr.ph301.preheader:                              ; preds = %.lr.ph.i182.preheader
  %indvars.i315 = trunc i64 %indvars.iv.next.i184298 to i32 ; 2 uses
  %.not.i186316 = icmp eq i32 %indvars.i315, 0
  br i1 %.not.i186316, label %._ZN2v86bigint13ScratchDigitsD2Ev.exit192_crit_edge, label %.lr.ph.i182.lr.ph, !llvm.loop !12

.lr.ph.i182.lr.ph:                                ; preds = %.lr.ph301.preheader
  br label %.lr.ph.i182, !llvm.loop !12

.lr.ph.preheader.i141:                            ; preds = %.lr.ph.preheader.i141.lr.ph, %_ZN2v86bigint5PutAtENS0_8RWDigitsENS0_6DigitsEj.exit181
  %indvars.iv307 = phi i64 [ %i.dg, %.lr.ph.preheader.i141.lr.ph ], [ %indvars.iv.next308, %_ZN2v86bigint5PutAtENS0_8RWDigitsENS0_6DigitsEj.exit181 ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.de, ptr nonnull align 1 %i.cn, i64 %i.cm, i1 false)
  %i.dk = trunc nuw nsw i64 %indvars.iv307 to i32
  %i.dl = mul i32 %i.c, %i.dk                     ; 3 uses
  %i.dm = zext i32 %i.dl to i64                   ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0278.0, i64 %i.dm ; 6 uses
  %i.do = sub i32 %.sroa.5279.1, %i.dl            ; 2 uses
  %.sroa.speculated.i154 = tail call i32 @llvm.umin.i32(i32 %i.c, i32 %i.do) ; 4 uses
  %.not.i155 = icmp eq i32 %.sroa.5279.1, %i.dl
  br i1 %.not.i155, label %.preheader.i163, label %.lr.ph.preheader.i156

.lr.ph.preheader.i156:                            ; preds = %.lr.ph.preheader.i141
  %wide.trip.count.i157 = zext i32 %.sroa.speculated.i154 to i64 ; 5 uses
  %min.iters.check334 = icmp ult i32 %.sroa.speculated.i154, 4
  br i1 %min.iters.check334, label %.lr.ph.i158.preheader, label %vector.memcheck331

vector.memcheck331:                               ; preds = %.lr.ph.preheader.i156
  %i.dp = shl nuw nsw i64 %i.dm, 3
  %i.dq = add i64 %i.dp, %.sroa.0278.0319
  %i.dr = sub i64 %i.az, %i.dq
  %diff.check332 = icmp ult i64 %i.dr, 32
  br i1 %diff.check332, label %.lr.ph.i158.preheader, label %vector.ph335

vector.ph335:                                     ; preds = %vector.memcheck331
  %n.vec337 = and i64 %wide.trip.count.i157, 4294967292 ; 3 uses
  br label %vector.body338

vector.body338:                                   ; preds = %vector.body338, %vector.ph335
  %index339 = phi i64 [ 0, %vector.ph335 ], [ %index.next342, %vector.body338 ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %index339 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %wide.load340 = load <2 x i64>, ptr %i.ds, align 1
  %wide.load341 = load <2 x i64>, ptr %i.dt, align 1
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index339 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store <2 x i64> %wide.load340, ptr %i.du, align 4
  store <2 x i64> %wide.load341, ptr %i.dv, align 4
  %index.next342 = add nuw i64 %index339, 4       ; 2 uses
  %i.dw = icmp eq i64 %index.next342, %n.vec337
  br i1 %i.dw, label %middle.block343, label %vector.body338, !llvm.loop !24

middle.block343:                                  ; preds = %vector.body338
  %cmp.n344 = icmp eq i64 %n.vec337, %wide.trip.count.i157
  br i1 %cmp.n344, label %.preheader.i163, label %.lr.ph.i158.preheader

.lr.ph.i158.preheader:                            ; preds = %vector.memcheck331, %.lr.ph.preheader.i156, %middle.block343
  %indvars.iv.i159.ph = phi i64 [ 0, %vector.memcheck331 ], [ 0, %.lr.ph.preheader.i156 ], [ %n.vec337, %middle.block343 ] ; 3 uses
  %xtraiter348 = and i64 %wide.trip.count.i157, 3 ; 2 uses
  %lcmp.mod349.not = icmp eq i64 %xtraiter348, 0
  br i1 %lcmp.mod349.not, label %.lr.ph.i158.prol.loopexit, label %.lr.ph.i158.prol

.lr.ph.i158.prol:                                 ; preds = %.lr.ph.i158.preheader, %.lr.ph.i158.prol
  %indvars.iv.i159.prol = phi i64 [ %indvars.iv.next.i161.prol, %.lr.ph.i158.prol ], [ %indvars.iv.i159.ph, %.lr.ph.i158.preheader ] ; 3 uses
  %prol.iter350 = phi i64 [ %prol.iter350.next, %.lr.ph.i158.prol ], [ 0, %.lr.ph.i158.preheader ]
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.i159.prol
  %.0.copyload.i.i.i160.prol = load i64, ptr %i.dx, align 1
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i159.prol
  store i64 %.0.copyload.i.i.i160.prol, ptr %i.dy, align 4
  %indvars.iv.next.i161.prol = add nuw nsw i64 %indvars.iv.i159.prol, 1 ; 2 uses
  %prol.iter350.next = add i64 %prol.iter350, 1   ; 2 uses
  %prol.iter350.cmp.not = icmp eq i64 %prol.iter350.next, %xtraiter348
  br i1 %prol.iter350.cmp.not, label %.lr.ph.i158.prol.loopexit, label %.lr.ph.i158.prol, !llvm.loop !25

.lr.ph.i158.prol.loopexit:                        ; preds = %.lr.ph.i158.prol, %.lr.ph.i158.preheader
  %indvars.iv.i159.unr = phi i64 [ %indvars.iv.i159.ph, %.lr.ph.i158.preheader ], [ %indvars.iv.next.i161.prol, %.lr.ph.i158.prol ]
  %i.dz = sub nsw i64 %indvars.iv.i159.ph, %wide.trip.count.i157
  %i.ea = icmp ugt i64 %i.dz, -4
  br i1 %i.ea, label %.preheader.i163, label %.lr.ph.i158

.preheader.i163:                                  ; preds = %.lr.ph.i158.prol.loopexit, %.lr.ph.i158, %middle.block343, %.lr.ph.preheader.i141
  %i.eb = icmp ult i32 %i.do, %i.c
  br i1 %i.eb, label %.lr.ph18.preheader.i164, label %_ZN2v86bigint5PutAtENS0_8RWDigitsENS0_6DigitsEj.exit166

.lr.ph18.preheader.i164:                          ; preds = %.preheader.i163
  %i.ec = zext i32 %.sroa.speculated.i154 to i64
  %i.ed = shl nuw nsw i64 %i.ec, 3
  %scevgep.i165 = getelementptr i8, ptr %i.ay, i64 %i.ed
  %i.ee = xor i32 %.sroa.speculated.i154, -1
  %i.ef = add i32 %i.c, %i.ee
  %i.eg = zext i32 %i.ef to i64
  %i.eh = shl nuw nsw i64 %i.eg, 3
  %i.ei = add nuw nsw i64 %i.eh, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i165, i8 0, i64 %i.ei, i1 false)
  br label %_ZN2v86bigint5PutAtENS0_8RWDigitsENS0_6DigitsEj.exit166

.lr.ph.i158:                                      ; preds = %.lr.ph.i158.prol.loopexit, %.lr.ph.i158
  %indvars.iv.i159 = phi i64 [ %indvars.iv.next.i161.3, %.lr.ph.i158 ], [ %indvars.iv.i159.unr, %.lr.ph.i158.prol.loopexit ] ; 6 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.i159
  %.0.copyload.i.i.i160 = load i64, ptr %i.ej, align 1
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i159
  store i64 %.0.copyload.i.i.i160, ptr %i.ek, align 4
  %indvars.iv.next.i161 = add nuw nsw i64 %indvars.iv.i159, 1 ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.next.i161
  %.0.copyload.i.i.i160.1 = load i64, ptr %i.el, align 1
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i161
  store i64 %.0.copyload.i.i.i160.1, ptr %i.em, align 4
  %indvars.iv.next.i161.1 = add nuw nsw i64 %indvars.iv.i159, 2 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.next.i161.1
  %.0.copyload.i.i.i160.2 = load i64, ptr %i.en, align 1
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i161.1
  store i64 %.0.copyload.i.i.i160.2, ptr %i.eo, align 4
  %indvars.iv.next.i161.2 = add nuw nsw i64 %indvars.iv.i159, 3 ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.next.i161.2
  %.0.copyload.i.i.i160.3 = load i64, ptr %i.ep, align 1
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i161.2
  store i64 %.0.copyload.i.i.i160.3, ptr %i.eq, align 4
  %indvars.iv.next.i161.3 = add nuw nsw i64 %indvars.iv.i159, 4 ; 2 uses
  %exitcond.not.i162.3 = icmp eq i64 %indvars.iv.next.i161.3, %wide.trip.count.i157
  br i1 %exitcond.not.i162.3, label %.preheader.i163, label %.lr.ph.i158, !llvm.loop !26

_ZN2v86bigint5PutAtENS0_8RWDigitsENS0_6DigitsEj.exit166: ; preds = %.preheader.i163, %.lr.ph18.preheader.i164
  tail call void @_ZN2v86bigint13ProcessorImpl13DivideBarrettENS0_8RWDigitsES2_NS0_6DigitsES3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.ck, i32 %i.ch, ptr nonnull %i.cn, i32 %i.c, ptr noundef nonnull byval(%"class.v8::bigint::Digits") align 8 %11, ptr noundef nonnull byval(%"class.v8::bigint::Digits") align 8 %6, ptr noundef nonnull byval(%"class.v8::bigint::Digits") align 8 %12, ptr noundef nonnull byval(%"class.v8::bigint::RWDigits") align 8 %13)
  %i.er = load i32, ptr %i.ar, align 8
  %i.es = icmp eq i32 %i.er, 1
  br i1 %i.es, label %_ZN2v86bigint13ScratchDigitsD2Ev.exit201, label %bb.h

bb.h:                                             ; preds = %_ZN2v86bigint5PutAtENS0_8RWDigitsENS0_6DigitsEj.exit166
  %i.et = getelementptr [8 x i8], ptr %1, i64 %i.dm ; 2 uses
  br i1 %.not.i170, label %.lr.ph18.preheader.i179, label %.preheader.i178

.preheader.i178:                                  ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.et, ptr nonnull align 1 %i.ck, i64 %i.df, i1 false)
  br label %_ZN2v86bigint5PutAtENS0_8RWDigitsENS0_6DigitsEj.exit181

.lr.ph18.preheader.i179:                          ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(34359738360) %i.et, i8 0, i64 34359738360, i1 false)
  br label %_ZN2v86bigint5PutAtENS0_8RWDigitsENS0_6DigitsEj.exit181

_ZN2v86bigint5PutAtENS0_8RWDigitsENS0_6DigitsEj.exit181: ; preds = %.preheader.i178, %.lr.ph18.preheader.i179
  %indvars.iv.next308 = add nsw i64 %indvars.iv307, -1
  %i.eu = icmp eq i64 %indvars.iv307, 0
  br i1 %i.eu, label %.lr.ph.i182.preheader, label %.lr.ph.preheader.i141, !llvm.loop !27

.lr.ph.i182:                                      ; preds = %.lr.ph.i182.lr.ph, %.lr.ph301
  %indvars.i318 = phi i32 [ %indvars.i315, %.lr.ph.i182.lr.ph ], [ %indvars.i, %.lr.ph301 ]
  %indvars.iv.next.i184300317 = phi i64 [ %indvars.iv.next.i184298, %.lr.ph.i182.lr.ph ], [ %indvars.iv.next.i184, %.lr.ph301 ]
  %indvars.iv.next.i184 = add nsw i64 %indvars.iv.next.i184300317, -1 ; 3 uses
  %i.ev = and i64 %indvars.iv.next.i184, 4294967295
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.ev
  %.0.copyload.i.i.i185 = load i64, ptr %i.ew, align 1
  %i.ex = icmp eq i64 %.0.copyload.i.i.i185, 0
  br i1 %i.ex, label %.lr.ph301, label %_ZN2v86bigint13ScratchDigitsD2Ev.exit192, !llvm.loop !12

.lr.ph301:                                        ; preds = %.lr.ph.i182
  %indvars.i = trunc i64 %indvars.iv.next.i184 to i32 ; 2 uses
  %.not.i186 = icmp eq i32 %indvars.i, 0
  br i1 %.not.i186, label %.lr.ph301.._ZN2v86bigint13ScratchDigitsD2Ev.exit192_crit_edge_crit_edge, label %.lr.ph.i182, !llvm.loop !12

.lr.ph301.._ZN2v86bigint13ScratchDigitsD2Ev.exit192_crit_edge_crit_edge: ; preds = %.lr.ph301
  br label %._ZN2v86bigint13ScratchDigitsD2Ev.exit192_crit_edge, !llvm.loop !12

._ZN2v86bigint13ScratchDigitsD2Ev.exit192_crit_edge: ; preds = %.lr.ph301.._ZN2v86bigint13ScratchDigitsD2Ev.exit192_crit_edge_crit_edge, %.lr.ph301.preheader
  br label %_ZN2v86bigint13ScratchDigitsD2Ev.exit192, !llvm.loop !12

_ZN2v86bigint13ScratchDigitsD2Ev.exit192:         ; preds = %.lr.ph.i182, %._ZN2v86bigint13ScratchDigitsD2Ev.exit192_crit_edge, %.lr.ph.i182.preheader
  %.sroa.9.1 = phi i32 [ %i.c, %.lr.ph.i182.preheader ], [ 0, %._ZN2v86bigint13ScratchDigitsD2Ev.exit192_crit_edge ], [ %indvars.i318, %.lr.ph.i182 ]
  tail call void @_ZN2v86bigint10RightShiftENS0_8RWDigitsENS0_6DigitsEi(ptr %3, i32 %4, ptr nonnull %i.cn, i32 %.sroa.9.1, i32 noundef %i.h) #9
  tail call void @_ZdaPv(ptr noundef nonnull %i.cn) #12
  tail call void @_ZdaPv(ptr noundef nonnull %i.ck) #12
  tail call void @_ZdaPv(ptr noundef nonnull %i.ay) #12
  br label %_ZN2v86bigint13ScratchDigitsD2Ev.exit207

_ZN2v86bigint13ScratchDigitsD2Ev.exit201:         ; preds = %_ZN2v86bigint5PutAtENS0_8RWDigitsENS0_6DigitsEj.exit166, %_ZN2v86bigint5PutAtENS0_8RWDigitsENS0_6DigitsEj.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.cn) #12
  tail call void @_ZdaPv(ptr noundef nonnull %i.ck) #12
  tail call void @_ZdaPv(ptr noundef nonnull %i.ay) #12
  br label %_ZN2v86bigint13ScratchDigitsD2Ev.exit207

bb.i:                                             ; preds = %bb.e
  store ptr %i.ad, ptr %14, align 8
  %.sroa.7268.0..sroa_idx271 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %i.z, ptr %.sroa.7268.0..sroa_idx271, align 8
  store ptr %i.am, ptr %15, align 8
  %.sroa.7.0..sroa_idx250 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.sroa.speculated260, ptr %.sroa.7.0..sroa_idx250, align 8
  tail call void @_ZN2v86bigint13ProcessorImpl13DivideBarrettENS0_8RWDigitsES2_NS0_6DigitsES3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull byval(%"class.v8::bigint::Digits") align 8 %5, ptr noundef nonnull byval(%"class.v8::bigint::Digits") align 8 %6, ptr noundef nonnull byval(%"class.v8::bigint::Digits") align 8 %14, ptr noundef nonnull byval(%"class.v8::bigint::RWDigits") align 8 %15)
  %i.ey = load i32, ptr %i.ar, align 8
  %i.ez = icmp eq i32 %i.ey, 1
  br i1 %i.ez, label %_ZN2v86bigint13ScratchDigitsD2Ev.exit207, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v86bigint10RightShiftENS0_8RWDigitsENS0_6DigitsEi(ptr %3, i32 %4, ptr %3, i32 %4, i32 noundef %i.h) #9
  br label %_ZN2v86bigint13ScratchDigitsD2Ev.exit207

_ZN2v86bigint13ScratchDigitsD2Ev.exit207:         ; preds = %bb.j, %_ZN2v86bigint13ScratchDigitsD2Ev.exit192, %bb.i, %_ZN2v86bigint13ScratchDigitsD2Ev.exit201, %_ZN2v86bigint13ShiftedDigitsC2ERNS0_6DigitsEib.exit131
  tail call void @_ZdaPv(ptr noundef nonnull %i.am) #12
  tail call void @_ZdaPv(ptr noundef nonnull %i.ad) #12
  %.not.i.i = icmp eq ptr %.sroa.12283.0, null
  br i1 %.not.i.i, label %_ZN2v86bigint13ShiftedDigitsD2Ev.exit, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %_ZN2v86bigint13ScratchDigitsD2Ev.exit207
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.12283.0) #12
  br label %_ZN2v86bigint13ShiftedDigitsD2Ev.exit

_ZN2v86bigint13ShiftedDigitsD2Ev.exit:            ; preds = %_ZN2v86bigint13ScratchDigitsD2Ev.exit207, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  %.not.i.i208 = icmp eq ptr %.sroa.12289.0, null
  br i1 %.not.i.i208, label %_ZN2v86bigint13ShiftedDigitsD2Ev.exit210, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i209

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i209: ; preds = %_ZN2v86bigint13ShiftedDigitsD2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.12289.0) #12
  br label %_ZN2v86bigint13ShiftedDigitsD2Ev.exit210

_ZN2v86bigint13ShiftedDigitsD2Ev.exit210:         ; preds = %_ZN2v86bigint13ShiftedDigitsD2Ev.exit, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i209
  ret void
}

declare void @_ZN2v86bigint10RightShiftENS0_8RWDigitsENS0_6DigitsEi(ptr, i32, ptr, i32, i32 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6
end_hunk_0
