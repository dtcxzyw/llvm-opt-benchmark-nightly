inline.NumInlined: 478
inline.NumDeleted: 245
begin_hunk_0_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE:bb.a
  %.not.i.i18.i.i.i.i.i122 = icmp ult i32 %i.jb, 32
  br i1 %.not.i.i18.i.i.i.i.i122, label %.preheader.i22.i.i.i.i.i, label %.lr.ph124

bb.at:                                            ; preds = %.lr.ph124
  %i.jh = add nuw nsw i64 %i.ji, 32               ; 2 uses
  %.not.i.i18.i.i.i.i.i = icmp samesign ugt i64 %i.jh, %i.jf
  br i1 %.not.i.i18.i.i.i.i.i, label %.preheader.i22.i.i.i.i.i, label %.lr.ph124, !llvm.loop !87

.preheader.i22.i.i.i.i.i:                         ; preds = %bb.at, %bb.as
  %.not.i23.i.i.i.i.i = icmp eq i64 %i.jg, %i.jf
  br i1 %.not.i23.i.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i, label %.lr.ph.i24.i.i.i.i.i

.lr.ph124:                                        ; preds = %bb.as, %bb.at
  %i.ji = phi i64 [ %i.jh, %bb.at ], [ 32, %bb.as ] ; 2 uses
  %.011.i.i17.i.i.i.i.i123 = phi i64 [ %i.ji, %bb.at ], [ 0, %bb.as ]
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 %.011.i.i17.i.i.i.i.i123
  %i.jk = load <4 x i64>, ptr %i.jj, align 1, !tbaa !59, !noalias !123
  %i.jl = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.jk, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i.i19.i.i.i.i.i = icmp eq i32 %i.jl, 0
  br i1 %.not16.not.i.i19.i.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i, label %bb.at, !llvm.loop !87

.lr.ph.i24.i.i.i.i.i:                             ; preds = %.preheader.i22.i.i.i.i.i, %.lr.ph.i24.i.i.i.i.i
  %.1.i6.i25.i.i.i.i.i = phi i64 [ %i.jo, %.lr.ph.i24.i.i.i.i.i ], [ %i.jg, %.preheader.i22.i.i.i.i.i ] ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.je, i64 %.1.i6.i25.i.i.i.i.i
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !59
  %.not15.i.i26.i.i.i.i.i = icmp sgt i8 %i.jn, -1 ; 2 uses
  %i.jo = add nuw nsw i64 %.1.i6.i25.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i27.i.i.i.i.i = icmp ne i64 %i.jo, %i.jf
  %or.cond137.not = select i1 %.not15.i.i26.i.i.i.i.i, i1 %exitcond.not.i27.i.i.i.i.i, i1 false
  br i1 %or.cond137.not, label %.lr.ph.i24.i.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i, !llvm.loop !95

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i: ; preds = %.lr.ph124, %.lr.ph.i24.i.i.i.i.i, %.preheader.i22.i.i.i.i.i
  %.2.i.i21.i.i.i.i.i = phi i1 [ true, %.preheader.i22.i.i.i.i.i ], [ %.not15.i.i26.i.i.i.i.i, %.lr.ph.i24.i.i.i.i.i ], [ false, %.lr.ph124 ]
  %i.jp = icmp ne i8 %.10, 0
  %i.jq = and i1 %i.jp, %.2.i.i21.i.i.i.i.i
  %i.jr = zext i1 %i.jq to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i"

"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i": ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i, %bb.ar
  %.11 = phi i8 [ %.10, %bb.ar ], [ %i.jr, %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i ] ; 2 uses
  %i.js = add i64 %.01532.i.i.i.i.i, -1
  %i.jt = and i64 %i.js, %.01532.i.i.i.i.i        ; 2 uses
  %.not.i65.i.i.i.i = icmp eq i64 %i.jt, 0
  br i1 %.not.i65.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUliE_clEi.exit.i.i.i.i", label %bb.ar, !llvm.loop !130

"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUliE_clEi.exit.i.i.i.i": ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i", %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i", %bb.an, %bb.am
  %.4 = phi i8 [ %.3, %bb.am ], [ %.3, %bb.an ], [ %.11, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i" ], [ %.9, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i" ] ; 2 uses
  %i.ju = add nsw i32 %i.he, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.ju, %i.dk
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.am, !llvm.loop !131

bb.au:                                            ; preds = %._crit_edge.i.i.i.i
  %i.jv = ashr i32 %i.dg, 6
  %i.jw = and i32 %i.dg, 63
  %i.jx = zext nneg i32 %i.jw to i64
  %notmask.i66.i.i.i.i = shl nsw i64 -1, %i.jx
  %i.jy = xor i64 %notmask.i66.i.i.i.i, -1
  %i.jz = sext i32 %i.jv to i64
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.jz
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !80
  %i.kc = and i64 %i.kb, %i.jy                    ; 2 uses
  %.not.i67.i.i.i.i = icmp eq i64 %i.kc, 0
  br i1 %.not.i67.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit", label %.preheader.i68.i.i.i.i

.preheader.i68.i.i.i.i:                           ; preds = %bb.au
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ke = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.av

bb.av:                                            ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i", %.preheader.i68.i.i.i.i
  %.6 = phi i8 [ %.5, %.preheader.i68.i.i.i.i ], [ %.7, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i" ] ; 2 uses
  %.012.i69.i.i.i.i = phi i64 [ %i.kc, %.preheader.i68.i.i.i.i ], [ %i.li, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i" ] ; 3 uses
  %i.kf = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i69.i.i.i.i, i1 true)
  %i.kg = trunc nuw nsw i64 %i.kf to i32
  %i.kh = or disjoint i32 %i.dk, %i.kg            ; 2 uses
  %i.ki = load ptr, ptr %0, align 8, !tbaa !81
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 32
  %i.kk = load ptr, ptr %i.kj, align 8
  %i.kl = call noundef zeroext i1 %i.kk(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.kh), !inline_history !97
  br i1 %i.kl, label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i", label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.km = load ptr, ptr %0, align 8, !tbaa !81
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 384
  %i.ko = load ptr, ptr %i.kn, align 8
  %i.kp = call noundef nonnull align 8 dereferenceable(16) ptr %i.ko(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.kh), !inline_history !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.kp, i64 16, i1 false), !tbaa.struct !84
  %i.kq = load i32, ptr %3, align 8, !tbaa !85    ; 3 uses
  %i.kr = icmp ult i32 %i.kq, 13
  %i.ks = load ptr, ptr %i.ke, align 8
  %i.kt = select i1 %i.kr, ptr %i.kd, ptr %i.ks   ; 2 uses
  %i.ku = zext i32 %i.kq to i64                   ; 4 uses
  %i.kv = and i64 %i.ku, 4294967264               ; 2 uses
  %.not.i.i.i71.i.i.i.i125 = icmp ult i32 %i.kq, 32
  br i1 %.not.i.i.i71.i.i.i.i125, label %.preheader.i.i77.i.i.i.i, label %.lr.ph127

bb.ax:                                            ; preds = %.lr.ph127
  %i.kw = add nuw nsw i64 %i.kx, 32               ; 2 uses
  %.not.i.i.i71.i.i.i.i = icmp samesign ugt i64 %i.kw, %i.ku
  br i1 %.not.i.i.i71.i.i.i.i, label %.preheader.i.i77.i.i.i.i, label %.lr.ph127, !llvm.loop !87

.preheader.i.i77.i.i.i.i:                         ; preds = %bb.ax, %bb.aw
  %.not.i.i78.i.i.i.i = icmp eq i64 %i.kv, %i.ku
  br i1 %.not.i.i78.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i, label %.lr.ph.i.i79.i.i.i.i

.lr.ph127:                                        ; preds = %bb.aw, %bb.ax
  %i.kx = phi i64 [ %i.kw, %bb.ax ], [ 32, %bb.aw ] ; 2 uses
  %.011.i.i.i70.i.i.i.i126 = phi i64 [ %i.kx, %bb.ax ], [ 0, %bb.aw ]
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 %.011.i.i.i70.i.i.i.i126
  %i.kz = load <4 x i64>, ptr %i.ky, align 1, !tbaa !59, !noalias !132
  %i.la = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.kz, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i.i.i72.i.i.i.i = icmp eq i32 %i.la, 0
  br i1 %.not16.not.i.i.i72.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i, label %bb.ax, !llvm.loop !87

.lr.ph.i.i79.i.i.i.i:                             ; preds = %.preheader.i.i77.i.i.i.i, %.lr.ph.i.i79.i.i.i.i
  %.1.i6.i.i80.i.i.i.i = phi i64 [ %i.ld, %.lr.ph.i.i79.i.i.i.i ], [ %i.kv, %.preheader.i.i77.i.i.i.i ] ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kt, i64 %.1.i6.i.i80.i.i.i.i
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !59
  %.not15.i.i.i81.i.i.i.i = icmp sgt i8 %i.lc, -1 ; 2 uses
  %i.ld = add nuw nsw i64 %.1.i6.i.i80.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i82.i.i.i.i = icmp ne i64 %i.ld, %i.ku
  %or.cond138.not = select i1 %.not15.i.i.i81.i.i.i.i, i1 %exitcond.not.i.i82.i.i.i.i, i1 false
  br i1 %or.cond138.not, label %.lr.ph.i.i79.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i, !llvm.loop !95

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i: ; preds = %.lr.ph127, %.lr.ph.i.i79.i.i.i.i, %.preheader.i.i77.i.i.i.i
  %.2.i.i.i74.i.i.i.i = phi i1 [ true, %.preheader.i.i77.i.i.i.i ], [ %.not15.i.i.i81.i.i.i.i, %.lr.ph.i.i79.i.i.i.i ], [ false, %.lr.ph127 ]
  %i.le = icmp ne i8 %.6, 0
  %i.lf = and i1 %i.le, %.2.i.i.i74.i.i.i.i
  %i.lg = zext i1 %i.lf to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i"

"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i": ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i, %bb.av
  %.7 = phi i8 [ %.6, %bb.av ], [ %i.lg, %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i ] ; 2 uses
  %i.lh = add nsw i64 %.012.i69.i.i.i.i, -1
  %i.li = and i64 %i.lh, %.012.i69.i.i.i.i        ; 2 uses
  %.not10.i76.i.i.i.i = icmp eq i64 %i.li, 0
  br i1 %.not10.i76.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit", label %bb.av, !llvm.loop !105

"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit": ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i", %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i", %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i", %bb.x, %bb.ab, %bb.ad, %._crit_edge.i.i.i.i, %bb.au
  %.16 = phi i8 [ 1, %bb.ab ], [ 1, %bb.x ], [ 1, %bb.ad ], [ %.13, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i" ], [ %.5, %._crit_edge.i.i.i.i ], [ %.5, %bb.au ], [ %.15, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i" ], [ %.7, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  store ptr %i.g, ptr %11, align 8, !tbaa !145, !alias.scope !147
  %i.lj = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i8 0, ptr %i.lj, align 8, !tbaa !148, !alias.scope !147
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9, !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9, !noalias !147
  %i.lk = load atomic i32, ptr %i.g acquire, align 8, !noalias !147 ; 4 uses
  store i32 %i.lk, ptr %i.d, align 4, !tbaa !3, !noalias !147
  %i.ll = and i32 %i.lk, -1312
  %i.lm = icmp eq i32 %i.ll, 0
  br i1 %i.lm, label %bb.ay, label %.critedge.i.i.i.i.i.i.i, !prof !149

bb.ay:                                            ; preds = %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit"
  %i.ln = or disjoint i32 %i.lk, 128
  %i.lo = cmpxchg ptr %i.g, i32 %i.lk, i32 %i.ln seq_cst seq_cst, align 4, !noalias !147 ; 2 uses
  %i.lp = extractvalue { i32, i1 } %i.lo, 1
  br i1 %i.lp, label %bb.az, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i11, !prof !150

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i11: ; preds = %bb.ay
  %i.lq = extractvalue { i32, i1 } %i.lo, 0
  store i32 %i.lq, ptr %i.d, align 4, !noalias !147
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i11, %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit"
  %i.lr = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %2), !noalias !147 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %.critedge.i.i.i.i.i.i.i, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9, !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9, !noalias !147
  store i8 1, ptr %i.lj, align 8, !tbaa !148, !alias.scope !147
  %i.ls = load ptr, ptr %11, align 8, !tbaa !145  ; 3 uses
  %.not.i.i12 = icmp eq ptr %i.ls, null
  %.neg.i.i13 = select i1 %.not.i.i12, i64 0, i64 -40
  %i.lt = getelementptr inbounds i8, ptr %i.ls, i64 %.neg.i.i13 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 28
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !23
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 32
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !35
  %i.ly = icmp slt i32 %i.lv, %i.lx
  br i1 %i.ly, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store atomic i8 %.16, ptr %i.f seq_cst, align 8
  br label %bb.bd

bb.bb:                                            ; preds = %bb.bd
  %i.lz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  br label %bb.bk

bb.bc:                                            ; preds = %bb.az
  %i.ma = load atomic i8, ptr %i.f seq_cst, align 8, !range !73, !noundef !74
  %.not = icmp eq i8 %.16, 0
  %12 = select i1 %.not, i8 0, i8 %i.ma
  store atomic i8 %12, ptr %i.f seq_cst, align 8
  %.pre = load ptr, ptr %11, align 8, !tbaa !145
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ba, %bb.bc
  %i.mb = phi ptr [ %i.ls, %bb.ba ], [ %.pre, %bb.bc ] ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.mb, null
  %.neg.i.i15 = select i1 %.not.i.i14, i64 0, i64 -40
  %i.mc = getelementptr inbounds i8, ptr %i.mb, i64 %.neg.i.i15
  invoke void @_ZN8facebook5velox17SelectivityVector6selectERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %i.mc, ptr noundef nonnull align 8 dereferenceable(38) %1)
          to label %bb.be unwind label %bb.bb

bb.be:                                            ; preds = %bb.bd
  %i.md = load ptr, ptr %11, align 8, !tbaa !145  ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.md, null
  %.neg.i.i17 = select i1 %.not.i.i16, i64 0, i64 -40
  %i.me = getelementptr inbounds i8, ptr %i.md, i64 %.neg.i.i17 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 28
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !23
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 32
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !35
  %i.mj = icmp sge i32 %i.mg, %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.ml = zext i1 %i.mj to i8
  store atomic i8 %i.ml, ptr %i.mk seq_cst, align 1
  %i.mm = load atomic i8, ptr %i.f seq_cst, align 8, !range !73, !noundef !74
  %i.mn = load i8, ptr %i.lj, align 8, !tbaa !148, !range !73, !noundef !74
  %i.mo = trunc nuw i8 %i.mn to i1
  br i1 %i.mo, label %bb.bf, label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.bf:                                            ; preds = %bb.be
  %i.mp = load ptr, ptr %11, align 8, !tbaa !145  ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.mp, null
  br i1 %.not.i.i.i18, label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.mq = atomicrmw and ptr %i.mp, i32 -401 seq_cst, align 4 ; 2 uses
  %i.mr = and i32 %i.mq, -401
  store i32 %i.mr, ptr %i.c, align 4, !tbaa !3
  %i.ms = and i32 %i.mq, 15
  %.not.i.i.i.i.i19 = icmp eq i32 %i.ms, 0
  br i1 %.not.i.i.i.i.i19, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.bh, !prof !149

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.mp, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.bi

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.bi:                                            ; preds = %bb.bh
  %i.mt = landingpad { ptr, i32 }
          catch ptr null
  %i.mu = extractvalue { ptr, i32 } %i.mt, 0
  call void @__clang_call_terminate(ptr %i.mu) #21
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.be, %bb.bf, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit, %bb.o
  %.0.in = phi i8 [ %i.aq, %bb.o ], [ %i.mm, %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit ]
  %.0 = trunc nuw i8 %.0.in to i1
  ret i1 %.0

bb.bk:                                            ; preds = %bb.bb, %bb.p
  %.pn = phi { ptr, i32 } [ %i.lz, %bb.bb ], [ %i.ar, %bb.p ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox17SelectivityVector8isSubsetERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef nonnull align 8 dereferenceable(38) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23
  %.not = icmp slt i32 %i.b, %i.d
  br i1 %.not, label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35   ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35
  %.not5 = icmp sgt i32 %i.f, %i.h
  br i1 %.not5, label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !77     ; 4 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !77     ; 3 uses
  %.not.i.i = icmp slt i32 %i.b, %i.f
  br i1 %.not.i.i, label %bb.d, label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit

bb.d:                                             ; preds = %bb.c
  %i.k = add i32 %i.b, 63                         ; 2 uses
  %i.l = srem i32 %i.k, 64
  %i.m = sub nsw i32 %i.k, %i.l                   ; 5 uses
  %i.n = and i32 %i.f, -64                        ; 3 uses
  %i.o = icmp slt i32 %i.n, %i.m
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = ashr i32 %i.f, 6
  %i.q = and i32 %i.f, 63
  %i.r = zext nneg i32 %i.q to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.r
  %i.s = xor i64 %notmask.i.i.i, -1
  %i.t = sub nsw i32 %i.m, %i.b                   ; 2 uses
  %i.u = zext nneg i32 %i.t to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.u
  %i.v = xor i64 %notmask.i.i.i.i, -1
  %i.w = sub nsw i32 64, %i.t
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl i64 %i.v, %i.x
  %i.z = and i64 %i.y, %i.s
  %i.aa = sext i32 %i.p to i64                    ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !80
  %i.ad = and i64 %i.z, %i.ac
  br label %.loopexit.sink.split.i.i

bb.f:                                             ; preds = %bb.d
  %.not36.i.i = icmp eq i32 %i.b, %i.m
  br i1 %.not36.i.i, label %.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = sdiv i32 %i.b, 64
  %i.af = sub nsw i32 %i.m, %i.b                  ; 2 uses
  %i.ag = zext nneg i32 %i.af to i64
  %notmask.i.i39.i.i = shl nsw i64 -1, %i.ag
  %i.ah = xor i64 %notmask.i.i39.i.i, -1
  %i.ai = sub nsw i32 64, %i.af
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = shl i64 %i.ah, %i.aj
  %i.al = sext i32 %i.ae to i64                   ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !80
  %i.ao = and i64 %i.an, %i.ak                    ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.al
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !80
  %i.ar = and i64 %i.aq, %i.ao
  %i.as = icmp eq i64 %i.ar, %i.ao
  br i1 %i.as, label %.preheader, label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit

.preheader:                                       ; preds = %bb.g, %bb.f
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.i
  %.0.i.i = phi i32 [ %i.at, %bb.i ], [ %i.m, %.preheader ] ; 2 uses
  %i.at = add nsw i32 %.0.i.i, 64                 ; 2 uses
  %.not37.i.i = icmp sgt i32 %i.at, %i.n
  br i1 %.not37.i.i, label %.critedge.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = sdiv i32 %.0.i.i, 64
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !80 ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.av
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !80
  %i.ba = and i64 %i.az, %i.ax
  %i.bb = icmp eq i64 %i.ba, %i.ax
  br i1 %i.bb, label %bb.h, label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit, !llvm.loop !151

.critedge.i.i:                                    ; preds = %bb.h
  %.not38.i.i = icmp eq i32 %i.f, %i.n
  br i1 %.not38.i.i, label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit, label %bb.j

bb.j:                                             ; preds = %.critedge.i.i
  %i.bc = ashr i32 %i.f, 6
  %i.bd = and i32 %i.f, 63
  %i.be = zext nneg i32 %i.bd to i64
  %notmask.i40.i.i = shl nsw i64 -1, %i.be
  %i.bf = xor i64 %notmask.i40.i.i, -1
  %i.bg = sext i32 %i.bc to i64                   ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !80
  %i.bj = and i64 %i.bi, %i.bf
  br label %.loopexit.sink.split.i.i

.loopexit.sink.split.i.i:                         ; preds = %bb.j, %bb.e
  %.sink54.i.i = phi i64 [ %i.aa, %bb.e ], [ %i.bg, %bb.j ]
  %.sink53.i.i = phi i64 [ %i.ad, %bb.e ], [ %i.bj, %bb.j ] ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.sink54.i.i
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !80
  %i.bm = and i64 %i.bl, %.sink53.i.i
  %i.bn = icmp eq i64 %i.bm, %.sink53.i.i
  br label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit

_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit:   ; preds = %bb.i, %.loopexit.sink.split.i.i, %.critedge.i.i, %bb.g, %bb.c, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ true, %.critedge.i.i ], [ %i.bn, %.loopexit.sink.split.i.i ], [ false, %bb.g ], [ false, %bb.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE21ensureIsAsciiCapacityIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(208) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
