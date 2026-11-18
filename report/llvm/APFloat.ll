Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/APFloat?download=true
inline.NumInlined: 4012
inline.NumDeleted: 1007
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4llvm6detail13DoubleAPFloat7addImplERKNS_7APFloatES4_S4_S4_NS_12RoundingModeE:bb.a
bb.hh:                                            ; preds = %bb.hg
  %i.xn = xor i8 %i.xl, %i.xh
  %i.xo = and i8 %i.xn, 8
  %.not.i222 = icmp eq i8 %i.xo, 0
  br i1 %.not.i222, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %i.xp = icmp eq i8 %5, 3
  %i.xq = select i1 %i.xp, i8 8, i8 0
  %i.xr = and i8 %i.xh, -13
  %i.xs = or disjoint i8 %i.xr, %i.xq             ; 2 uses
  store i8 %i.xs, ptr %i.xg, align 4
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %i.xt = phi i8 [ %i.xs, %bb.hi ], [ %i.xh, %bb.hh ]
  %i.xu = load ptr, ptr %i.xa, align 8, !tbaa !64
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 20
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !66
  %i.xx = icmp eq i32 %i.xw, 2
  br i1 %i.xx, label %bb.hk, label %_ZN4llvm7APFloat8subtractERKS0_NS_12RoundingModeE.exit135

bb.hk:                                            ; preds = %bb.hj
  %i.xy = and i8 %i.xt, -9
  store i8 %i.xy, ptr %i.xg, align 4
  br label %_ZN4llvm7APFloat8subtractERKS0_NS_12RoundingModeE.exit135

bb.hl:                                            ; preds = %bb.hc
  call void @_ZN4llvm6detail13DoubleAPFloat10changeSignEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xa), !inline_history !541
  %i.xz = call noundef i32 @_ZN4llvm6detail13DoubleAPFloat14addWithSpecialERKS1_S3_RS1_NS_12RoundingModeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %i.xa, ptr noundef nonnull align 8 dereferenceable(24) %i.wz, ptr noundef nonnull align 8 dereferenceable(24) %i.xa, i8 noundef signext %5), !inline_history !542
  call void @_ZN4llvm6detail13DoubleAPFloat10changeSignEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xa), !inline_history !541
  br label %_ZN4llvm7APFloat8subtractERKS0_NS_12RoundingModeE.exit135

_ZN4llvm7APFloat8subtractERKS0_NS_12RoundingModeE.exit135: ; preds = %bb.hk, %bb.hj, %bb.hf, %bb.hl
  %.0.i134 = phi i32 [ %i.xz, %bb.hl ], [ %.0.i.i220, %bb.hf ], [ %.0.i.i220, %bb.hj ], [ %.0.i.i220, %bb.hk ]
  %i.ya = load ptr, ptr %i.vd, align 8, !tbaa !99 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 24 ; 7 uses
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !46
  %.not265 = icmp eq ptr %i.yc, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not265, label %bb.hu, label %bb.hm

bb.hm:                                            ; preds = %_ZN4llvm7APFloat8subtractERKS0_NS_12RoundingModeE.exit135
  %i.yd = call noundef i32 @_ZN4llvm6detail9IEEEFloat21addOrSubtractSpecialsERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %i.yb, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext false) ; 2 uses
  %i.ye = icmp eq i32 %i.yd, 2
  br i1 %i.ye, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.yf = call noundef i32 @_ZN4llvm6detail9IEEEFloat24addOrSubtractSignificandERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %i.yb, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext false)
  %i.yg = call noundef i32 @_ZN4llvm6detail9IEEEFloat9normalizeENS_12RoundingModeENS_12lostFractionE(ptr noundef nonnull align 8 dereferenceable(24) %i.yb, i8 noundef signext %5, i32 noundef %i.yf)
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %.0.i.i224 = phi i32 [ %i.yg, %bb.hn ], [ %i.yd, %bb.hm ] ; 3 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.ya, i64 44 ; 3 uses
  %i.yi = load i8, ptr %i.yh, align 4             ; 4 uses
  %i.yj = and i8 %i.yi, 7
  %i.yk = icmp eq i8 %i.yj, 3
  br i1 %i.yk, label %bb.hp, label %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit137

bb.hp:                                            ; preds = %bb.ho
  %i.yl = load i8, ptr %.sroa.gep228, align 4     ; 2 uses
  %i.ym = and i8 %i.yl, 7
  %.not.i.i225 = icmp eq i8 %i.ym, 3
  br i1 %.not.i.i225, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.yn = xor i8 %i.yl, %i.yi
  %i.yo = and i8 %i.yn, 8
  %.not.i226 = icmp eq i8 %i.yo, 0
  br i1 %.not.i226, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %i.yp = icmp eq i8 %5, 3
  %i.yq = select i1 %i.yp, i8 8, i8 0
  %i.yr = and i8 %i.yi, -13
  %i.ys = or disjoint i8 %i.yr, %i.yq             ; 2 uses
  store i8 %i.ys, ptr %i.yh, align 4
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %i.yt = phi i8 [ %i.ys, %bb.hr ], [ %i.yi, %bb.hq ]
  %i.yu = load ptr, ptr %i.yb, align 8, !tbaa !64
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 20
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !66
  %i.yx = icmp eq i32 %i.yw, 2
  br i1 %i.yx, label %bb.ht, label %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit137

bb.ht:                                            ; preds = %bb.hs
  %i.yy = and i8 %i.yt, -9
  store i8 %i.yy, ptr %i.yh, align 4
  br label %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit137

bb.hu:                                            ; preds = %_ZN4llvm7APFloat8subtractERKS0_NS_12RoundingModeE.exit135
  %i.yz = call noundef i32 @_ZN4llvm6detail13DoubleAPFloat14addWithSpecialERKS1_S3_RS1_NS_12RoundingModeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %i.yb, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.yb, i8 noundef signext %5), !inline_history !540
  br label %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit137

_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit137: ; preds = %bb.ht, %bb.hs, %bb.ho, %bb.hu
  %.0.i136 = phi i32 [ %i.yz, %bb.hu ], [ %.0.i.i224, %bb.ho ], [ %.0.i.i224, %bb.hs ], [ %.0.i.i224, %bb.ht ]
  %i.za = or i32 %.0.i134, %.0.i136
  %i.zb = or i32 %i.za, %i.wp
  br label %bb.hv

bb.hv:                                            ; preds = %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit137, %bb.hb, %bb.gq
  %cond1 = phi i32 [ %i.zb, %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit137 ], [ %i.wp, %bb.hb ], [ 0, %bb.gq ]
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #29, !inline_history !17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #29, !inline_history !17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %.thread, %bb.ea, %bb.l
  %.281 = phi i32 [ %.0.i, %bb.l ], [ %cond1, %bb.hv ], [ %.077, %bb.ea ], [ %.178, %.thread ]
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #29, !inline_history !17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  ret i32 %.281
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46
  %.not = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4llvm6detail9IEEEFloat21addOrSubtractSpecialsERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext false) ; 2 uses
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i32 @_ZN4llvm6detail9IEEEFloat24addOrSubtractSignificandERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext false)
  %i.e = tail call noundef i32 @_ZN4llvm6detail9IEEEFloat9normalizeENS_12RoundingModeENS_12lostFractionE(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext %2, i32 noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.e, %bb.c ], [ %i.b, %bb.b ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.g = load i8, ptr %i.f, align 4               ; 4 uses
  %i.h = and i8 %i.g, 7
  %i.i = icmp eq i8 %i.h, 3
  br i1 %i.i, label %bb.e, label %_ZN4llvm6detail9IEEEFloat3addERKS1_NS_12RoundingModeE.exit

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i8, ptr %i.j, align 4               ; 2 uses
  %i.l = and i8 %i.k, 7
  %.not.i.i = icmp eq i8 %i.l, 3
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = xor i8 %i.k, %i.g
  %i.n = and i8 %i.m, 8
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = icmp eq i8 %2, 3
  %i.p = select i1 %i.o, i8 8, i8 0
  %i.q = and i8 %i.g, -13
  %i.r = or disjoint i8 %i.q, %i.p                ; 2 uses
  store i8 %i.r, ptr %i.f, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = phi i8 [ %i.r, %bb.g ], [ %i.g, %bb.f ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !66
  %i.w = icmp eq i32 %i.v, 2
  br i1 %i.w, label %bb.i, label %_ZN4llvm6detail9IEEEFloat3addERKS1_NS_12RoundingModeE.exit

bb.i:                                             ; preds = %bb.h
  %i.x = and i8 %i.s, -9
  store i8 %i.x, ptr %i.f, align 4
  br label %_ZN4llvm6detail9IEEEFloat3addERKS1_NS_12RoundingModeE.exit

bb.j:                                             ; preds = %bb.a
  %i.y = tail call noundef i32 @_ZN4llvm6detail13DoubleAPFloat14addWithSpecialERKS1_S3_RS1_NS_12RoundingModeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef signext %2), !inline_history !101
  br label %_ZN4llvm6detail9IEEEFloat3addERKS1_NS_12RoundingModeE.exit

_ZN4llvm6detail9IEEEFloat3addERKS1_NS_12RoundingModeE.exit: ; preds = %bb.i, %bb.h, %bb.d, %bb.j
  %.0 = phi i32 [ %i.y, %bb.j ], [ %.0.i.i, %bb.d ], [ %.0.i.i, %bb.h ], [ %.0.i.i, %bb.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7APFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %.not3 = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not3, label %tailrecurse.preheader, label %tailrecurse._crit_edge

tailrecurse.preheader:                            ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !99
  tail call void @_ZN4llvm7APFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i1 noundef zeroext %1), !inline_history !102
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !99   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %.not.peel = icmp eq ptr %i.f, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.peel, label %tailrecurse, label %tailrecurse._crit_edge.thread

tailrecurse._crit_edge.thread.loopexit.a:         ; preds = %tailrecurse
  %i.g = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  br label %tailrecurse._crit_edge.thread

tailrecurse._crit_edge:                           ; preds = %bb.a
  %spec.select = select i1 %1, i8 8, i8 0
  br label %tailrecurse._crit_edge.thread

tailrecurse._crit_edge.thread:                    ; preds = %tailrecurse.preheader, %tailrecurse._crit_edge.thread.loopexit.a, %tailrecurse._crit_edge
  %.lcssa17 = phi ptr [ %i.a, %tailrecurse._crit_edge ], [ %i.f, %tailrecurse.preheader ], [ %i.af, %tailrecurse._crit_edge.thread.loopexit.a ] ; 3 uses
  %.tr.lcssa16 = phi ptr [ %0, %tailrecurse._crit_edge ], [ %i.e, %tailrecurse.preheader ], [ %i.g, %tailrecurse._crit_edge.thread.loopexit.a ] ; 3 uses
  %2 = phi i8 [ %spec.select, %tailrecurse._crit_edge ], [ 0, %tailrecurse.preheader ], [ 0, %tailrecurse._crit_edge.thread.loopexit.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %.tr.lcssa16, i64 20 ; 3 uses
  %.in = load i8, ptr %i.h, align 4
  %i.i = and i8 %.in, -16                         ; 2 uses
  %i.j = or disjoint i8 %i.i, %2
  %i.k = or disjoint i8 %i.j, 3
  store i8 %i.k, ptr %i.h, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %.lcssa17, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !66
  %i.n = icmp eq i32 %i.m, 2
  br i1 %i.n, label %bb.b, label %_ZN4llvm6detail9IEEEFloat8makeZeroEb.exit

bb.b:                                             ; preds = %tailrecurse._crit_edge.thread
  %i.o = or disjoint i8 %i.i, 3
  store i8 %i.o, ptr %i.h, align 4
  br label %_ZN4llvm6detail9IEEEFloat8makeZeroEb.exit

_ZN4llvm6detail9IEEEFloat8makeZeroEb.exit:        ; preds = %tailrecurse._crit_edge.thread, %bb.b
  %i.p = getelementptr i8, ptr %.lcssa17, i64 4
  %.val.i.i = load i32, ptr %i.p, align 4, !tbaa !52
  %i.q = add nsw i32 %.val.i.i, -1
  %i.r = getelementptr inbounds nuw i8, ptr %.tr.lcssa16, i64 16
  store i32 %i.q, ptr %i.r, align 8, !tbaa !65
  %i.s = getelementptr inbounds nuw i8, ptr %.lcssa17, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !53   ; 2 uses
  %i.u = add i32 %i.t, -64
  %i.v = icmp ult i32 %i.u, -128
  %i.w = getelementptr inbounds nuw i8, ptr %.tr.lcssa16, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %.0.i.i = select i1 %i.v, ptr %i.x, ptr %i.w
  %i.y = add i32 %i.t, 64
  %i.z = lshr i32 %i.y, 6
  %.sroa.speculated.i.i.i = tail call noundef range(i32 1, 67108864) i32 @llvm.umax.i32(i32 %i.z, i32 1)
  tail call void @_ZN4llvm5APInt5tcSetEPmmj(ptr noundef %.0.i.i, i64 noundef 0, i32 noundef %.sroa.speculated.i.i.i) #29
  ret void

tailrecurse:                                      ; preds = %tailrecurse.preheader, %tailrecurse
  %i.aa = phi ptr [ %i.ad, %tailrecurse ], [ %i.d, %tailrecurse.preheader ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !99
  tail call void @_ZN4llvm7APFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i1 noundef zeroext false), !inline_history !102
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !99 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !46 ; 2 uses
  %.not = icmp eq ptr %i.af, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not, label %tailrecurse, label %tailrecurse._crit_edge.thread.loopexit.a, !llvm.loop !543
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm7APFloat8subtractERKS0_NS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46
  %.not = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4llvm6detail9IEEEFloat21addOrSubtractSpecialsERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true) ; 2 uses
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i32 @_ZN4llvm6detail9IEEEFloat24addOrSubtractSignificandERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true)
  %i.e = tail call noundef i32 @_ZN4llvm6detail9IEEEFloat9normalizeENS_12RoundingModeENS_12lostFractionE(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext %2, i32 noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.e, %bb.c ], [ %i.b, %bb.b ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.g = load i8, ptr %i.f, align 4               ; 4 uses
  %i.h = and i8 %i.g, 7
  %i.i = icmp eq i8 %i.h, 3
  br i1 %i.i, label %bb.e, label %_ZN4llvm6detail9IEEEFloat8subtractERKS1_NS_12RoundingModeE.exit

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i8, ptr %i.j, align 4               ; 2 uses
  %i.l = and i8 %i.k, 7
  %.not.i.i = icmp eq i8 %i.l, 3
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = xor i8 %i.k, %i.g
  %i.n = and i8 %i.m, 8
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = icmp eq i8 %2, 3
  %i.p = select i1 %i.o, i8 8, i8 0
  %i.q = and i8 %i.g, -13
  %i.r = or disjoint i8 %i.q, %i.p                ; 2 uses
  store i8 %i.r, ptr %i.f, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = phi i8 [ %i.r, %bb.g ], [ %i.g, %bb.f ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !66
  %i.w = icmp eq i32 %i.v, 2
  br i1 %i.w, label %bb.i, label %_ZN4llvm6detail9IEEEFloat8subtractERKS1_NS_12RoundingModeE.exit

bb.i:                                             ; preds = %bb.h
  %i.x = and i8 %i.s, -9
  store i8 %i.x, ptr %i.f, align 4
  br label %_ZN4llvm6detail9IEEEFloat8subtractERKS1_NS_12RoundingModeE.exit

bb.j:                                             ; preds = %bb.a
  tail call void @_ZN4llvm6detail13DoubleAPFloat10changeSignEv(ptr noundef nonnull align 8 dereferenceable(16) %0), !inline_history !544
  %i.y = tail call noundef i32 @_ZN4llvm6detail13DoubleAPFloat14addWithSpecialERKS1_S3_RS1_NS_12RoundingModeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef signext %2), !inline_history !545
  tail call void @_ZN4llvm6detail13DoubleAPFloat10changeSignEv(ptr noundef nonnull align 8 dereferenceable(16) %0), !inline_history !544
  br label %_ZN4llvm6detail9IEEEFloat8subtractERKS1_NS_12RoundingModeE.exit

_ZN4llvm6detail9IEEEFloat8subtractERKS1_NS_12RoundingModeE.exit: ; preds = %bb.i, %bb.h, %bb.d, %bb.j
  %.0 = phi i32 [ %i.y, %bb.j ], [ %.0.i.i, %bb.d ], [ %.0.i.i, %bb.h ], [ %.0.i.i, %bb.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7APFloat10changeSignEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %.not = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !66
  %i.d = icmp eq i32 %i.c, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4               ; 2 uses
  br i1 %i.d, label %bb.c, label %._crit_edge.i

bb.c:                                             ; preds = %bb.b
  %i.g = and i8 %i.f, 7
  switch i8 %i.g, label %._crit_edge.i [
    i8 3, label %_ZN4llvm6detail9IEEEFloat10changeSignEv.exit
    i8 1, label %_ZN4llvm6detail9IEEEFloat10changeSignEv.exit
  ]

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.h = xor i8 %i.f, 8
  store i8 %i.h, ptr %i.e, align 4
  br label %_ZN4llvm6detail9IEEEFloat10changeSignEv.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4llvm6detail13DoubleAPFloat10changeSignEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZN4llvm6detail9IEEEFloat10changeSignEv.exit

_ZN4llvm6detail9IEEEFloat10changeSignEv.exit:     ; preds = %._crit_edge.i, %bb.c, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN4llvm6detail13DoubleAPFloat14addWithSpecialERKS1_S3_RS1_NS_12RoundingModeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef signext %4) local_unnamed_addr #5 align 2 {
bb.a:
  %5 = alloca %"class.llvm::APFloat", align 8     ; 5 uses
  %6 = alloca %"class.llvm::APFloat", align 8     ; 5 uses
  %7 = alloca %"class.llvm::APFloat", align 8     ; 5 uses
  %8 = alloca %"class.llvm::APFloat", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %.not.i.i.i = icmp eq ptr %i.c, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %.0.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.g = load i8, ptr %i.f, align 4               ; 2 uses
  %i.h = and i8 %i.g, 7                           ; 3 uses
  %i.i = icmp eq i8 %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %3, align 8, !tbaa !98
  %i.k = load ptr, ptr %1, align 8, !tbaa !98
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !99
  %i.o = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm7APFloat7StorageaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.b), !inline_history !18 ; 0 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !99
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm7APFloat7StorageaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.q), !inline_history !18 ; 0 uses
  br label %_ZN4llvm6detail13DoubleAPFloataSERKS1_.exit

bb.d:                                             ; preds = %bb.b
  %.not9.i = icmp eq ptr %3, %1
  br i1 %.not9.i, label %_ZN4llvm6detail13DoubleAPFloataSERKS1_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !99   ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN4llvm6detail13DoubleAPFloatD2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %.idx.i.i = mul i64 %i.y, 24                    ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.loopexit.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.f
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 %.idx.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.preheader.i.i
  %i.ab = phi ptr [ %i.ac, %.preheader.i.i ], [ %i.aa, %.preheader.preheader.i.i ]
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -24 ; 3 uses
  tail call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ac) #29, !inline_history !19
  %i.ad = icmp eq ptr %i.ac, %i.v
  br i1 %i.ad, label %.loopexit.i.i, label %.preheader.i.i

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %bb.f
  %i.ae = add i64 %.idx.i.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.x, i64 noundef %i.ae) #28, !inline_history !20
  br label %_ZN4llvm6detail13DoubleAPFloatD2Ev.exit.i

_ZN4llvm6detail13DoubleAPFloatD2Ev.exit.i:        ; preds = %.loopexit.i.i, %bb.e
  tail call void @_ZN4llvm6detail13DoubleAPFloatC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %1) #29, !inline_history !103
  br label %_ZN4llvm6detail13DoubleAPFloataSERKS1_.exit

bb.g:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !99 ; 5 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !46
  %.not.i.i.i30 = icmp eq ptr %i.ah, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %.0.i.i.i31 = select i1 %.not.i.i.i30, ptr %i.aj, ptr %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i.i31, i64 20
  %i.al = load i8, ptr %i.ak, align 4             ; 2 uses
  %i.am = and i8 %i.al, 7                         ; 3 uses
  %i.an = icmp eq i8 %i.am, 1
  br i1 %i.an, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %3, align 8, !tbaa !98
  %i.ap = load ptr, ptr %2, align 8, !tbaa !98
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.i, label %bb.j
end_hunk_0
