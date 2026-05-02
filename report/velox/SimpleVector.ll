inline.NumInlined: 478
inline.NumDeleted: 245
begin_hunk_0_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE:bb.a
  br label %bb.y

bb.y:                                             ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i", %.lr.ph.i
  %.14 = phi i8 [ 1, %.lr.ph.i ], [ %.15, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i" ] ; 3 uses
  %.014.i = phi i32 [ %i.by, %.lr.ph.i ], [ %i.cx, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i" ] ; 3 uses
  %i.cc = load ptr, ptr %0, align 8, !tbaa !81
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE:bb.a
  %.not16.not.i.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not16.not.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i, label %bb.aa, !llvm.loop !87

12:                                               ; preds = %.lr.ph.i.i
  %13 = add nuw nsw i64 %.1.i6.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %13, %i.co
  br i1 %exitcond.not.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i, label %.lr.ph.i.i, !llvm.loop !95

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %12
  %.1.i6.i.i = phi i64 [ %13, %12 ], [ %i.cp, %.preheader.i.i ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.1.i6.i.i
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !59
  %.not15.i.i.i = icmp sgt i8 %i.cw, -1
  br i1 %.not15.i.i.i, label %12, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i: ; preds = %.lr.ph133, %12, %.lr.ph.i.i, %.preheader.i.i
  %14 = phi i8 [ 0, %.lr.ph.i.i ], [ %.14, %.preheader.i.i ], [ %.14, %12 ], [ 0, %.lr.ph133 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i"

"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i": ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i, %bb.y
  %.15 = phi i8 [ %.14, %bb.y ], [ %14, %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i ] ; 2 uses
  %i.cx = add i32 %.014.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cx, %i.bw
  br i1 %exitcond.not.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit", label %bb.y, !llvm.loop !96
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE:bb.a
  br label %bb.ae

bb.ae:                                            ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i", %.preheader.i.i.i.i.i
  %.12 = phi i8 [ 1, %.preheader.i.i.i.i.i ], [ %.13, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i" ] ; 3 uses
  %.012.i.i.i.i.i = phi i64 [ %i.dw, %.preheader.i.i.i.i.i ], [ %i.ey, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i" ] ; 3 uses
  %i.dz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i.i.i.i.i, i1 true)
  %i.ea = trunc nuw nsw i64 %i.dz to i32
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE:bb.a
  %.not16.not.i.i.i.i.i.i.i = icmp eq i32 %i.eu, 0
  br i1 %.not16.not.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i.i.i.i.i, label %bb.ag, !llvm.loop !87

15:                                               ; preds = %.lr.ph.i.i.i.i.i.i
  %16 = add nuw nsw i64 %.1.i6.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %16, %i.eo
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !95

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %15
  %.1.i6.i.i.i.i.i.i = phi i64 [ %16, %15 ], [ %i.ep, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 %.1.i6.i.i.i.i.i.i
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !59
  %.not15.i.i.i.i.i.i.i = icmp sgt i8 %i.ew, -1
  br i1 %.not15.i.i.i.i.i.i.i, label %15, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i.i.i.i.i

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i.i.i.i.i: ; preds = %.lr.ph130, %15, %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %17 = phi i8 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %.12, %.preheader.i.i.i.i.i.i ], [ %.12, %15 ], [ 0, %.lr.ph130 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i"

"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i": ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i.i.i.i.i, %bb.ae
  %.13 = phi i8 [ %.12, %bb.ae ], [ %17, %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i.i.i.i.i ] ; 2 uses
  %i.ex = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ey = and i64 %i.ex, %.012.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.ey, 0
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE:bb.a
  br label %bb.aj

bb.aj:                                            ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i44.i.i.i.i", %.preheader.i37.i.i.i.i
  %.031 = phi i8 [ 1, %.preheader.i37.i.i.i.i ], [ %.1, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i44.i.i.i.i" ] ; 3 uses
  %.012.i38.i.i.i.i = phi i64 [ %i.fj, %.preheader.i37.i.i.i.i ], [ %i.gm, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i44.i.i.i.i" ] ; 3 uses
  %i.fn = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i38.i.i.i.i, i1 true)
  %i.fo = trunc nuw nsw i64 %i.fn to i32
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE:bb.a
  %.not16.not.i.i.i41.i.i.i.i = icmp eq i32 %i.gi, 0
  br i1 %.not16.not.i.i.i41.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i42.i.i.i.i, label %bb.al, !llvm.loop !87

18:                                               ; preds = %.lr.ph.i.i48.i.i.i.i
  %19 = add nuw nsw i64 %.1.i6.i.i49.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i50.i.i.i.i = icmp eq i64 %19, %i.gc
  br i1 %exitcond.not.i.i50.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i42.i.i.i.i, label %.lr.ph.i.i48.i.i.i.i, !llvm.loop !95

.lr.ph.i.i48.i.i.i.i:                             ; preds = %.preheader.i.i46.i.i.i.i, %18
  %.1.i6.i.i49.i.i.i.i = phi i64 [ %19, %18 ], [ %i.gd, %.preheader.i.i46.i.i.i.i ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.1.i6.i.i49.i.i.i.i
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !59
  %.not15.i.i.i50.i.i.i.i = icmp sgt i8 %i.gk, -1
  br i1 %.not15.i.i.i50.i.i.i.i, label %18, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i42.i.i.i.i

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i42.i.i.i.i: ; preds = %.lr.ph118, %18, %.lr.ph.i.i48.i.i.i.i, %.preheader.i.i46.i.i.i.i
  %20 = phi i8 [ 0, %.lr.ph.i.i48.i.i.i.i ], [ %.031, %.preheader.i.i46.i.i.i.i ], [ %.031, %18 ], [ 0, %.lr.ph118 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i44.i.i.i.i"

"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i44.i.i.i.i": ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i42.i.i.i.i, %bb.aj
  %.1 = phi i8 [ %.031, %bb.aj ], [ %20, %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i42.i.i.i.i ] ; 2 uses
  %i.gl = add i64 %.012.i38.i.i.i.i, -1
  %i.gm = and i64 %i.gl, %.012.i38.i.i.i.i        ; 2 uses
  %.not10.i45.i.i.i.i = icmp eq i64 %i.gm, 0
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE:bb.a
  br label %bb.ao

bb.ao:                                            ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i", %.lr.ph34.i.i.i.i.i
  %.8 = phi i8 [ %.3, %.lr.ph34.i.i.i.i.i ], [ %.9, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i" ] ; 3 uses
  %.033.i.i.i.i.i = phi i64 [ %i.hb, %.lr.ph34.i.i.i.i.i ], [ %i.hy, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i" ] ; 2 uses
  %i.hc = trunc i64 %.033.i.i.i.i.i to i32        ; 2 uses
  %i.hd = load ptr, ptr %0, align 8, !tbaa !81
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE:bb.a
  %.not16.not.i.i.i55.i.i.i.i = icmp eq i32 %i.hv, 0
  br i1 %.not16.not.i.i.i55.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i56.i.i.i.i, label %bb.aq, !llvm.loop !87

21:                                               ; preds = %.lr.ph.i.i60.i.i.i.i
  %22 = add nuw nsw i64 %.1.i6.i.i61.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i62.i.i.i.i = icmp eq i64 %22, %i.hp
  br i1 %exitcond.not.i.i62.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i56.i.i.i.i, label %.lr.ph.i.i60.i.i.i.i, !llvm.loop !95

.lr.ph.i.i60.i.i.i.i:                             ; preds = %.preheader.i.i58.i.i.i.i, %21
  %.1.i6.i.i61.i.i.i.i = phi i64 [ %22, %21 ], [ %i.hq, %.preheader.i.i58.i.i.i.i ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.1.i6.i.i61.i.i.i.i
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !59
  %.not15.i.i.i62.i.i.i.i = icmp sgt i8 %i.hx, -1
  br i1 %.not15.i.i.i62.i.i.i.i, label %21, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i56.i.i.i.i

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i56.i.i.i.i: ; preds = %.lr.ph121, %21, %.lr.ph.i.i60.i.i.i.i, %.preheader.i.i58.i.i.i.i
  %23 = phi i8 [ 0, %.lr.ph.i.i60.i.i.i.i ], [ %.8, %.preheader.i.i58.i.i.i.i ], [ %.8, %21 ], [ 0, %.lr.ph121 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i"

"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i": ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i56.i.i.i.i, %bb.ao
  %.9 = phi i8 [ %.8, %bb.ao ], [ %23, %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i56.i.i.i.i ] ; 2 uses
  %i.hy = add nuw i64 %.033.i.i.i.i.i, 1          ; 2 uses
  %i.hz = icmp ult i64 %i.hy, %i.ha
  br i1 %i.hz, label %bb.ao, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUliE_clEi.exit.i.i.i.i", !llvm.loop !121

bb.ar:                                            ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i", %.lr.ph.i.i.i.i.i
  %.10 = phi i8 [ %.3, %.lr.ph.i.i.i.i.i ], [ %.11, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i" ] ; 3 uses
  %.01532.i.i.i.i.i = phi i64 [ %i.gw, %.lr.ph.i.i.i.i.i ], [ %i.iz, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i" ] ; 3 uses
  %i.ia = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01532.i.i.i.i.i, i1 true)
  %i.ib = trunc nuw nsw i64 %i.ia to i32
end_hunk_7
begin_hunk_8_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE:bb.a
  %.not16.not.i.i19.i.i.i.i.i = icmp eq i32 %i.iv, 0
  br i1 %.not16.not.i.i19.i.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i, label %bb.at, !llvm.loop !87

24:                                               ; preds = %.lr.ph.i24.i.i.i.i.i
  %25 = add nuw nsw i64 %.1.i6.i25.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i26.i.i.i.i.i = icmp eq i64 %25, %i.ip
  br i1 %exitcond.not.i26.i.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i, label %.lr.ph.i24.i.i.i.i.i, !llvm.loop !95

.lr.ph.i24.i.i.i.i.i:                             ; preds = %.preheader.i22.i.i.i.i.i, %24
  %.1.i6.i25.i.i.i.i.i = phi i64 [ %25, %24 ], [ %i.iq, %.preheader.i22.i.i.i.i.i ] ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.io, i64 %.1.i6.i25.i.i.i.i.i
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !59
  %.not15.i.i26.i.i.i.i.i = icmp sgt i8 %i.ix, -1
  br i1 %.not15.i.i26.i.i.i.i.i, label %24, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i: ; preds = %.lr.ph124, %24, %.lr.ph.i24.i.i.i.i.i, %.preheader.i22.i.i.i.i.i
  %26 = phi i8 [ 0, %.lr.ph.i24.i.i.i.i.i ], [ %.10, %.preheader.i22.i.i.i.i.i ], [ %.10, %24 ], [ 0, %.lr.ph124 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i"

"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i": ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i, %bb.ar
  %.11 = phi i8 [ %.10, %bb.ar ], [ %26, %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i ] ; 2 uses
  %i.iy = add i64 %.01532.i.i.i.i.i, -1
  %i.iz = and i64 %i.iy, %.01532.i.i.i.i.i        ; 2 uses
  %.not.i65.i.i.i.i = icmp eq i64 %i.iz, 0
end_hunk_8
begin_hunk_9_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE:bb.a
  br label %bb.av

bb.av:                                            ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i", %.preheader.i68.i.i.i.i
  %.6 = phi i8 [ %.5, %.preheader.i68.i.i.i.i ], [ %.7, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i" ] ; 3 uses
  %.012.i69.i.i.i.i = phi i64 [ %i.ji, %.preheader.i68.i.i.i.i ], [ %i.kk, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i" ] ; 3 uses
  %i.jl = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i69.i.i.i.i, i1 true)
  %i.jm = trunc nuw nsw i64 %i.jl to i32
end_hunk_9
begin_hunk_10_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE:bb.a
  %.not16.not.i.i.i72.i.i.i.i = icmp eq i32 %i.kg, 0
  br i1 %.not16.not.i.i.i72.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i, label %bb.ax, !llvm.loop !87

27:                                               ; preds = %.lr.ph.i.i79.i.i.i.i
  %28 = add nuw nsw i64 %.1.i6.i.i80.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i81.i.i.i.i = icmp eq i64 %28, %i.ka
  br i1 %exitcond.not.i.i81.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i, label %.lr.ph.i.i79.i.i.i.i, !llvm.loop !95

.lr.ph.i.i79.i.i.i.i:                             ; preds = %.preheader.i.i77.i.i.i.i, %27
  %.1.i6.i.i80.i.i.i.i = phi i64 [ %28, %27 ], [ %i.kb, %.preheader.i.i77.i.i.i.i ] ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jz, i64 %.1.i6.i.i80.i.i.i.i
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !59
  %.not15.i.i.i81.i.i.i.i = icmp sgt i8 %i.ki, -1
  br i1 %.not15.i.i.i81.i.i.i.i, label %27, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i: ; preds = %.lr.ph127, %27, %.lr.ph.i.i79.i.i.i.i, %.preheader.i.i77.i.i.i.i
  %29 = phi i8 [ 0, %.lr.ph.i.i79.i.i.i.i ], [ %.6, %.preheader.i.i77.i.i.i.i ], [ %.6, %27 ], [ 0, %.lr.ph127 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i"

"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i": ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i, %bb.av
  %.7 = phi i8 [ %.6, %bb.av ], [ %29, %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i ] ; 2 uses
  %i.kj = add nsw i64 %.012.i69.i.i.i.i, -1
  %i.kk = and i64 %i.kj, %.012.i69.i.i.i.i        ; 2 uses
  %.not10.i76.i.i.i.i = icmp eq i64 %i.kk, 0
end_hunk_10
begin_hunk_11_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE:bb.a
bb.bc:                                            ; preds = %bb.az
  %i.lc = load atomic i8, ptr %i.f seq_cst, align 8, !range !73, !noundef !74
  %i.ld = trunc nuw i8 %i.lc to i1
  %30 = select i1 %i.ld, i8 %.16, i8 0
  store atomic i8 %30, ptr %i.f seq_cst, align 8
  %.pre = load ptr, ptr %11, align 8, !tbaa !145
  br label %bb.bd

end_hunk_11
