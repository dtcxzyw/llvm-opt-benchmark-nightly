inline.NumInlined: 478
inline.NumDeleted: 245
begin_hunk_0_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE:bb.a
  br label %bb.y

bb.y:                                             ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i", %.lr.ph.i
  %.14 = phi i8 [ 1, %.lr.ph.i ], [ %.15, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i" ] ; 2 uses
  %.014.i = phi i32 [ %i.by, %.lr.ph.i ], [ %i.cx, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i" ] ; 3 uses
  %i.cc = load ptr, ptr %0, align 8, !tbaa !81
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE:bb.a
  %.not16.not.i.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not16.not.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i, label %bb.aa, !llvm.loop !87

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.1.i6.i.i = phi i64 [ %12, %.lr.ph.i.i ], [ %i.cp, %.preheader.i.i ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.1.i6.i.i
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !59
  %.not15.i.i.i = icmp sgt i8 %i.cw, -1           ; 2 uses
  %12 = add nuw nsw i64 %.1.i6.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp ne i64 %12, %i.co
  %or.cond.not = select i1 %.not15.i.i.i, i1 %exitcond.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i, !llvm.loop !95

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i: ; preds = %.lr.ph133, %.lr.ph.i.i, %.preheader.i.i
  %.2.i.i.i = phi i1 [ true, %.preheader.i.i ], [ %.not15.i.i.i, %.lr.ph.i.i ], [ false, %.lr.ph133 ]
  %13 = icmp ne i8 %.14, 0
  %14 = and i1 %13, %.2.i.i.i
  %15 = zext i1 %14 to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i"

"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i": ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i, %bb.y
  %.15 = phi i8 [ %.14, %bb.y ], [ %15, %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i ] ; 2 uses
  %i.cx = add i32 %.014.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cx, %i.bw
  br i1 %exitcond.not.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit", label %bb.y, !llvm.loop !96
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE:bb.a
  br label %bb.ae

bb.ae:                                            ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i", %.preheader.i.i.i.i.i
  %.12 = phi i8 [ 1, %.preheader.i.i.i.i.i ], [ %.13, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i" ] ; 2 uses
  %.012.i.i.i.i.i = phi i64 [ %i.dw, %.preheader.i.i.i.i.i ], [ %i.ey, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i" ] ; 3 uses
  %i.dz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i.i.i.i.i, i1 true)
  %i.ea = trunc nuw nsw i64 %i.dz to i32
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE:bb.a
  %.not16.not.i.i.i.i.i.i.i = icmp eq i32 %i.eu, 0
  br i1 %.not16.not.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i.i.i.i.i, label %bb.ag, !llvm.loop !87

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.1.i6.i.i.i.i.i.i = phi i64 [ %16, %.lr.ph.i.i.i.i.i.i ], [ %i.ep, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 %.1.i6.i.i.i.i.i.i
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !59
  %.not15.i.i.i.i.i.i.i = icmp sgt i8 %i.ew, -1   ; 2 uses
  %16 = add nuw nsw i64 %.1.i6.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp ne i64 %16, %i.eo
  %or.cond134.not = select i1 %.not15.i.i.i.i.i.i.i, i1 %exitcond.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond134.not, label %.lr.ph.i.i.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i.i.i.i.i, !llvm.loop !95

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i.i.i.i.i: ; preds = %.lr.ph130, %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i = phi i1 [ true, %.preheader.i.i.i.i.i.i ], [ %.not15.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ false, %.lr.ph130 ]
  %17 = icmp ne i8 %.12, 0
  %18 = and i1 %17, %.2.i.i.i.i.i.i.i
  %19 = zext i1 %18 to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i"

"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i": ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i.i.i.i.i, %bb.ae
  %.13 = phi i8 [ %.12, %bb.ae ], [ %19, %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i.i.i.i.i ] ; 2 uses
  %i.ex = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ey = and i64 %i.ex, %.012.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.ey, 0
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE:bb.a
  br label %bb.aj

bb.aj:                                            ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i44.i.i.i.i", %.preheader.i37.i.i.i.i
  %.031 = phi i8 [ 1, %.preheader.i37.i.i.i.i ], [ %.1, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i44.i.i.i.i" ] ; 2 uses
  %.012.i38.i.i.i.i = phi i64 [ %i.fj, %.preheader.i37.i.i.i.i ], [ %i.gm, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i44.i.i.i.i" ] ; 3 uses
  %i.fn = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i38.i.i.i.i, i1 true)
  %i.fo = trunc nuw nsw i64 %i.fn to i32
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE:bb.a
  %.not16.not.i.i.i41.i.i.i.i = icmp eq i32 %i.gi, 0
  br i1 %.not16.not.i.i.i41.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i42.i.i.i.i, label %bb.al, !llvm.loop !87

.lr.ph.i.i48.i.i.i.i:                             ; preds = %.preheader.i.i46.i.i.i.i, %.lr.ph.i.i48.i.i.i.i
  %.1.i6.i.i49.i.i.i.i = phi i64 [ %20, %.lr.ph.i.i48.i.i.i.i ], [ %i.gd, %.preheader.i.i46.i.i.i.i ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.1.i6.i.i49.i.i.i.i
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !59
  %.not15.i.i.i50.i.i.i.i = icmp sgt i8 %i.gk, -1 ; 2 uses
  %20 = add nuw nsw i64 %.1.i6.i.i49.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i51.i.i.i.i = icmp ne i64 %20, %i.gc
  %or.cond135.not = select i1 %.not15.i.i.i50.i.i.i.i, i1 %exitcond.not.i.i51.i.i.i.i, i1 false
  br i1 %or.cond135.not, label %.lr.ph.i.i48.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i42.i.i.i.i, !llvm.loop !95

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i42.i.i.i.i: ; preds = %.lr.ph118, %.lr.ph.i.i48.i.i.i.i, %.preheader.i.i46.i.i.i.i
  %.2.i.i.i43.i.i.i.i = phi i1 [ true, %.preheader.i.i46.i.i.i.i ], [ %.not15.i.i.i50.i.i.i.i, %.lr.ph.i.i48.i.i.i.i ], [ false, %.lr.ph118 ]
  %21 = icmp ne i8 %.031, 0
  %22 = and i1 %21, %.2.i.i.i43.i.i.i.i
  %23 = zext i1 %22 to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i44.i.i.i.i"

"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i44.i.i.i.i": ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i42.i.i.i.i, %bb.aj
  %.1 = phi i8 [ %.031, %bb.aj ], [ %23, %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i42.i.i.i.i ] ; 2 uses
  %i.gl = add i64 %.012.i38.i.i.i.i, -1
  %i.gm = and i64 %i.gl, %.012.i38.i.i.i.i        ; 2 uses
  %.not10.i45.i.i.i.i = icmp eq i64 %i.gm, 0
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE:bb.a
  br label %bb.ao

bb.ao:                                            ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i", %.lr.ph34.i.i.i.i.i
  %.8 = phi i8 [ %.3, %.lr.ph34.i.i.i.i.i ], [ %.9, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i" ] ; 2 uses
  %.033.i.i.i.i.i = phi i64 [ %i.hb, %.lr.ph34.i.i.i.i.i ], [ %i.hy, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i" ] ; 2 uses
  %i.hc = trunc i64 %.033.i.i.i.i.i to i32        ; 2 uses
  %i.hd = load ptr, ptr %0, align 8, !tbaa !81
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE:bb.a
  %.not16.not.i.i.i55.i.i.i.i = icmp eq i32 %i.hv, 0
  br i1 %.not16.not.i.i.i55.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i56.i.i.i.i, label %bb.aq, !llvm.loop !87

.lr.ph.i.i60.i.i.i.i:                             ; preds = %.preheader.i.i58.i.i.i.i, %.lr.ph.i.i60.i.i.i.i
  %.1.i6.i.i61.i.i.i.i = phi i64 [ %24, %.lr.ph.i.i60.i.i.i.i ], [ %i.hq, %.preheader.i.i58.i.i.i.i ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.1.i6.i.i61.i.i.i.i
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !59
  %.not15.i.i.i62.i.i.i.i = icmp sgt i8 %i.hx, -1 ; 2 uses
  %24 = add nuw nsw i64 %.1.i6.i.i61.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i63.i.i.i.i = icmp ne i64 %24, %i.hp
  %or.cond136.not = select i1 %.not15.i.i.i62.i.i.i.i, i1 %exitcond.not.i.i63.i.i.i.i, i1 false
  br i1 %or.cond136.not, label %.lr.ph.i.i60.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i56.i.i.i.i, !llvm.loop !95

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i56.i.i.i.i: ; preds = %.lr.ph121, %.lr.ph.i.i60.i.i.i.i, %.preheader.i.i58.i.i.i.i
  %.2.i.i.i57.i.i.i.i = phi i1 [ true, %.preheader.i.i58.i.i.i.i ], [ %.not15.i.i.i62.i.i.i.i, %.lr.ph.i.i60.i.i.i.i ], [ false, %.lr.ph121 ]
  %25 = icmp ne i8 %.8, 0
  %26 = and i1 %25, %.2.i.i.i57.i.i.i.i
  %27 = zext i1 %26 to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i"

"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i": ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i56.i.i.i.i, %bb.ao
  %.9 = phi i8 [ %.8, %bb.ao ], [ %27, %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i56.i.i.i.i ] ; 2 uses
  %i.hy = add nuw i64 %.033.i.i.i.i.i, 1          ; 2 uses
  %i.hz = icmp ult i64 %i.hy, %i.ha
  br i1 %i.hz, label %bb.ao, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUliE_clEi.exit.i.i.i.i", !llvm.loop !121

bb.ar:                                            ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i", %.lr.ph.i.i.i.i.i
  %.10 = phi i8 [ %.3, %.lr.ph.i.i.i.i.i ], [ %.11, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i" ] ; 2 uses
  %.01532.i.i.i.i.i = phi i64 [ %i.gw, %.lr.ph.i.i.i.i.i ], [ %i.iz, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i" ] ; 3 uses
  %i.ia = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01532.i.i.i.i.i, i1 true)
  %i.ib = trunc nuw nsw i64 %i.ia to i32
end_hunk_7
begin_hunk_8_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE:bb.a
  %.not16.not.i.i19.i.i.i.i.i = icmp eq i32 %i.iv, 0
  br i1 %.not16.not.i.i19.i.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i, label %bb.at, !llvm.loop !87

.lr.ph.i24.i.i.i.i.i:                             ; preds = %.preheader.i22.i.i.i.i.i, %.lr.ph.i24.i.i.i.i.i
  %.1.i6.i25.i.i.i.i.i = phi i64 [ %28, %.lr.ph.i24.i.i.i.i.i ], [ %i.iq, %.preheader.i22.i.i.i.i.i ] ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.io, i64 %.1.i6.i25.i.i.i.i.i
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !59
  %.not15.i.i26.i.i.i.i.i = icmp sgt i8 %i.ix, -1 ; 2 uses
  %28 = add nuw nsw i64 %.1.i6.i25.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i27.i.i.i.i.i = icmp ne i64 %28, %i.ip
  %or.cond137.not = select i1 %.not15.i.i26.i.i.i.i.i, i1 %exitcond.not.i27.i.i.i.i.i, i1 false
  br i1 %or.cond137.not, label %.lr.ph.i24.i.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i, !llvm.loop !95

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i: ; preds = %.lr.ph124, %.lr.ph.i24.i.i.i.i.i, %.preheader.i22.i.i.i.i.i
  %.2.i.i21.i.i.i.i.i = phi i1 [ true, %.preheader.i22.i.i.i.i.i ], [ %.not15.i.i26.i.i.i.i.i, %.lr.ph.i24.i.i.i.i.i ], [ false, %.lr.ph124 ]
  %29 = icmp ne i8 %.10, 0
  %30 = and i1 %29, %.2.i.i21.i.i.i.i.i
  %31 = zext i1 %30 to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i"

"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i": ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i, %bb.ar
  %.11 = phi i8 [ %.10, %bb.ar ], [ %31, %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i ] ; 2 uses
  %i.iy = add i64 %.01532.i.i.i.i.i, -1
  %i.iz = and i64 %i.iy, %.01532.i.i.i.i.i        ; 2 uses
  %.not.i65.i.i.i.i = icmp eq i64 %i.iz, 0
end_hunk_8
begin_hunk_9_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE:bb.a
  br label %bb.av

bb.av:                                            ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i", %.preheader.i68.i.i.i.i
  %.6 = phi i8 [ %.5, %.preheader.i68.i.i.i.i ], [ %.7, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i" ] ; 2 uses
  %.012.i69.i.i.i.i = phi i64 [ %i.ji, %.preheader.i68.i.i.i.i ], [ %i.kk, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i" ] ; 3 uses
  %i.jl = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i69.i.i.i.i, i1 true)
  %i.jm = trunc nuw nsw i64 %i.jl to i32
end_hunk_9
begin_hunk_10_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE:bb.a
  %.not16.not.i.i.i72.i.i.i.i = icmp eq i32 %i.kg, 0
  br i1 %.not16.not.i.i.i72.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i, label %bb.ax, !llvm.loop !87

.lr.ph.i.i79.i.i.i.i:                             ; preds = %.preheader.i.i77.i.i.i.i, %.lr.ph.i.i79.i.i.i.i
  %.1.i6.i.i80.i.i.i.i = phi i64 [ %32, %.lr.ph.i.i79.i.i.i.i ], [ %i.kb, %.preheader.i.i77.i.i.i.i ] ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jz, i64 %.1.i6.i.i80.i.i.i.i
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !59
  %.not15.i.i.i81.i.i.i.i = icmp sgt i8 %i.ki, -1 ; 2 uses
  %32 = add nuw nsw i64 %.1.i6.i.i80.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i82.i.i.i.i = icmp ne i64 %32, %i.ka
  %or.cond138.not = select i1 %.not15.i.i.i81.i.i.i.i, i1 %exitcond.not.i.i82.i.i.i.i, i1 false
  br i1 %or.cond138.not, label %.lr.ph.i.i79.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i, !llvm.loop !95

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i: ; preds = %.lr.ph127, %.lr.ph.i.i79.i.i.i.i, %.preheader.i.i77.i.i.i.i
  %.2.i.i.i74.i.i.i.i = phi i1 [ true, %.preheader.i.i77.i.i.i.i ], [ %.not15.i.i.i81.i.i.i.i, %.lr.ph.i.i79.i.i.i.i ], [ false, %.lr.ph127 ]
  %33 = icmp ne i8 %.6, 0
  %34 = and i1 %33, %.2.i.i.i74.i.i.i.i
  %35 = zext i1 %34 to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i"

"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i": ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i, %bb.av
  %.7 = phi i8 [ %.6, %bb.av ], [ %35, %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i ] ; 2 uses
  %i.kj = add nsw i64 %.012.i69.i.i.i.i, -1
  %i.kk = and i64 %i.kj, %.012.i69.i.i.i.i        ; 2 uses
  %.not10.i76.i.i.i.i = icmp eq i64 %i.kk, 0
end_hunk_10
begin_hunk_11_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE:bb.a
bb.bc:                                            ; preds = %bb.az
  %i.lc = load atomic i8, ptr %i.f seq_cst, align 8, !range !73, !noundef !74
  %i.ld = trunc nuw i8 %i.lc to i1
  %36 = icmp ne i8 %.16, 0
  %37 = and i1 %36, %i.ld
  %38 = zext i1 %37 to i8
  store atomic i8 %38, ptr %i.f seq_cst, align 8
  %.pre = load ptr, ptr %11, align 8, !tbaa !145
  br label %bb.bd

end_hunk_11
