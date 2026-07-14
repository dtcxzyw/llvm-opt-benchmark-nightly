inline.NumInlined: 574
inline.NumDeleted: 243
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6resizeERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj:bb.a

bb.d:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit.i
  %i.ac = zext nneg i32 %2 to i64
  %.idx91.i = shl nuw nsw i64 %i.ac, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx91.i ; 2 uses
  %i.ae = load atomic i32, ptr %i.h monotonic, align 4
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !54
  %i.ai = and i64 %i.af, 1125899902648320
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = icmp ne ptr %i.ah, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8489
  %i.am = load i8, ptr %i.al, align 1, !range !55
  %i.an = trunc nuw i8 %i.am to i1
  %or.cond.i.i.i = select i1 %i.ak, i1 %i.an, i1 false, !prof !56
  br i1 %or.cond.i.i.i, label %bb.e, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit.i, !prof !56

bb.e:                                             ; preds = %bb.d
  %i.ao = sub i32 %i.ae, %2
  tail call void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.k, ptr noundef nonnull %i.ad, i32 noundef %i.ao) #6
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit.i: ; preds = %bb.e, %bb.d, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit.i
  store atomic i32 %2, ptr %i.h release, align 4
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE5shiftERNS0_13MutableHandleIS3_EERNS0_7RuntimeEjjj.exit

bb.f:                                             ; preds = %bb.a
  %i.ap = icmp ult i32 %i.f, 2054140
  %i.aq = lshr exact i32 %i.f, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.aq, i32 %2)
  %.0.i = select i1 %i.ap, i32 %.sroa.speculated.i, i32 1027070
  %i.ar = tail call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE18reallocateToLargerERNS0_13MutableHandleIS3_EERNS0_7RuntimeEjjjj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.0.i, i32 noundef 0, i32 noundef 0, i32 noundef %2)
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE5shiftERNS0_13MutableHandleIS3_EERNS0_7RuntimeEjjj.exit

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE5shiftERNS0_13MutableHandleIS3_EERNS0_7RuntimeEjjj.exit: ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit.i, %bb.f
  %.052.i = phi i32 [ 1, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit.i ], [ %i.ar, %bb.f ]
  ret i32 %.052.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE5shiftERNS0_13MutableHandleIS3_EERNS0_7RuntimeEjjj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !51
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 16777212
  %i.f = add nsw i32 %i.e, -8                     ; 3 uses
  %i.g = lshr exact i32 %i.f, 2
  %.not = icmp ugt i32 %4, %i.g
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 4 uses
  %i.i = load atomic i32, ptr %i.h monotonic, align 4
  %i.j = sub i32 %i.i, %2
  %i.k = sub i32 %4, %3
  %.sroa.speculated72 = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %i.j) ; 6 uses
  %i.l = icmp ugt i32 %2, %3
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.n = zext i32 %2 to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = zext i32 %.sroa.speculated72 to i64
  %.idx86 = shl nuw nsw i64 %i.p, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx86
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 856
  %.not9.i = icmp eq i32 %.sroa.speculated72, 0
  br i1 %.not9.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.s = zext i32 %3 to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1632
  br label %bb.d

bb.d:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, %.lr.ph.i
  %.011.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.aa, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i ] ; 2 uses
  %.0810.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.ab, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i ] ; 4 uses
  %.sroa.0.0.copyload.i = load i32, ptr %.011.i, align 4, !tbaa !3 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !54
  %i.w = ptrtoint ptr %.0810.i to i64
  %i.x = and i64 %i.w, -4194304
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = icmp eq ptr %i.v, %i.y
  br i1 %i.z, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, label %bb.e, !prof !60

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %.0810.i, i32 %.sroa.0.0.copyload.i) #6
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i: ; preds = %bb.e, %bb.d
  store i32 %.sroa.0.0.copyload.i, ptr %.0810.i, align 4, !tbaa !109
  %i.aa = getelementptr inbounds nuw i8, ptr %.011.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0810.i, i64 4
  %.not.i = icmp eq ptr %i.aa, %i.q
  br i1 %.not.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit, label %bb.d, !llvm.loop !117

bb.f:                                             ; preds = %bb.b
  %i.ac = icmp ult i32 %2, %3
  br i1 %i.ac, label %bb.g, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ae = zext i32 %2 to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 856
  %.not7.i = icmp eq i32 %.sroa.speculated72, 0
  br i1 %.not7.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit.thread, label %.lr.ph.i58

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit.thread: ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ai = zext i32 %3 to i64
  %.idx87102 = shl nuw nsw i64 %i.ai, 2           ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx87102
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 856
  br label %.lr.ph.i62

.lr.ph.i58:                                       ; preds = %bb.g
  %i.al = zext i32 %.sroa.speculated72 to i64     ; 2 uses
  %.idx = shl nuw nsw i64 %i.al, 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx
  %i.an = zext i32 %3 to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.an
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.al
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 1632
  br label %bb.h

bb.h:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i60, %.lr.ph.i58
  %.09.i = phi ptr [ %i.am, %.lr.ph.i58 ], [ %i.as, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i60 ]
  %.068.i = phi ptr [ %i.ap, %.lr.ph.i58 ], [ %i.ar, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i60 ]
  %i.ar = getelementptr inbounds i8, ptr %.068.i, i64 -4 ; 4 uses
  %i.as = getelementptr inbounds i8, ptr %.09.i, i64 -4 ; 3 uses
  %.sroa.0.0.copyload.i59 = load i32, ptr %i.as, align 4, !tbaa !3 ; 2 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !54
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = and i64 %i.au, -4194304
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = icmp eq ptr %i.at, %i.aw
  br i1 %i.ax, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i60, label %bb.i, !prof !60

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.ag, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, i32 %.sroa.0.0.copyload.i59) #6
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i60

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i60: ; preds = %bb.i, %bb.h
  store i32 %.sroa.0.0.copyload.i59, ptr %i.ar, align 4, !tbaa !109
  %.not.i61 = icmp eq ptr %i.af, %i.as
  br i1 %.not.i61, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit, label %bb.h, !llvm.loop !118

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i60, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, %bb.c, %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.az = zext i32 %3 to i64
  %.idx87 = shl nuw nsw i64 %i.az, 2              ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx87 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 2 uses
  %.not1421.i = icmp eq i32 %3, 0
  br i1 %.not1421.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit.thread, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit
  %i.bc = phi ptr [ %i.ak, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit.thread ], [ %i.bb, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit ] ; 2 uses
  %i.bd = phi ptr [ %i.aj, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit.thread ], [ %i.ba, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit ] ; 2 uses
  %.idx87104 = phi i64 [ %.idx87102, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit.thread ], [ %.idx87, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit ]
  %i.be = phi ptr [ %i.ah, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit.thread ], [ %i.ay, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8489
  br label %bb.j

bb.j:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE9setNonPtrES2_RNS0_7HadesGCE.exit.i, %.lr.ph.i62
  %.01320.i = phi ptr [ %i.be, %.lr.ph.i62 ], [ %i.bo, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE9setNonPtrES2_RNS0_7HadesGCE.exit.i ] ; 4 uses
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !54
  %i.bi = ptrtoint ptr %.01320.i to i64
  %i.bj = and i64 %i.bi, -4194304
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = icmp ne ptr %i.bh, %i.bk
  %i.bm = load i8, ptr %i.bg, align 1, !range !55
  %i.bn = trunc nuw i8 %i.bm to i1
  %or.cond.i.i.i = select i1 %i.bl, i1 %i.bn, i1 false, !prof !56
  br i1 %or.cond.i.i.i, label %bb.k, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE9setNonPtrES2_RNS0_7HadesGCE.exit.i, !prof !56

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %.01320.i, align 4, !tbaa !3
  tail call void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_13HermesValue32E(ptr noundef nonnull align 8 dereferenceable(8112) %i.bc, i32 %.sroa.0.0.copyload.i.i.i) #6
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE9setNonPtrES2_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE9setNonPtrES2_RNS0_7HadesGCE.exit.i: ; preds = %bb.k, %bb.j
  store i32 7, ptr %.01320.i, align 4, !tbaa !109
  %i.bo = getelementptr inbounds nuw i8, ptr %.01320.i, i64 4 ; 2 uses
  %.not.i63 = icmp eq ptr %i.bo, %i.bd
  br i1 %.not.i63, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %bb.j, !llvm.loop !119

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE9setNonPtrES2_RNS0_7HadesGCE.exit.i, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit
  %i.bp = phi ptr [ %i.bb, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit ], [ %i.bc, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE9setNonPtrES2_RNS0_7HadesGCE.exit.i ]
  %i.bq = phi ptr [ %i.ba, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit ], [ %i.bd, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE9setNonPtrES2_RNS0_7HadesGCE.exit.i ] ; 2 uses
  %.idx87105 = phi i64 [ %.idx87, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit ], [ %.idx87104, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE9setNonPtrES2_RNS0_7HadesGCE.exit.i ]
  %i.br = phi ptr [ %i.ay, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit ], [ %i.be, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE9setNonPtrES2_RNS0_7HadesGCE.exit.i ] ; 3 uses
  %5 = ptrtoint ptr %i.br to i64
  %6 = ptrtoint ptr %i.bq to i64
  %i.bs = add i32 %.sroa.speculated72, %3
  %i.bt = icmp ult i32 %i.bs, %4
  br i1 %i.bt, label %bb.l, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit

bb.l:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit
  %i.bu = zext i32 %.sroa.speculated72 to i64
  %.idx88 = shl nuw nsw i64 %i.bu, 2              ; 3 uses
  %i.bv = zext nneg i32 %4 to i64
  %.idx89 = shl nuw nsw i64 %i.bv, 2              ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 %.idx89
  %i.bx = add nuw nsw i64 %.idx88, %.idx87105
  %.not1421.i64 = icmp samesign eq i64 %i.bx, %.idx89
  br i1 %.not1421.i64, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i65.preheader

.lr.ph.i65.preheader:                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx88 ; 3 uses
  %i.bz = add i64 %.idx89, %5
  %7 = add i64 %i.bz, -4
  %i.ca = add i64 %.idx88, %6
  %8 = sub i64 %7, %i.ca                          ; 2 uses
  %i.cb = lshr i64 %8, 2
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 28
  br i1 %min.iters.check, label %.lr.ph.i65.preheader108, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i65.preheader
  %n.vec = and i64 %i.cc, 9223372036854775800     ; 3 uses
  %i.cd = shl i64 %n.vec, 2
  %i.ce = getelementptr i8, ptr %i.by, i64 %i.cd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.by, i64 %i.cf ; 2 uses
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 7), ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.cg, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i65.preheader108

.lr.ph.i65.preheader108:                          ; preds = %.lr.ph.i65.preheader, %middle.block
  %.01320.i66.ph = phi ptr [ %i.by, %.lr.ph.i65.preheader ], [ %i.ce, %middle.block ]
  br label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %.lr.ph.i65.preheader108, %.lr.ph.i65
  %.01320.i66 = phi ptr [ %i.ci, %.lr.ph.i65 ], [ %.01320.i66.ph, %.lr.ph.i65.preheader108 ] ; 2 uses
  store i32 7, ptr %.01320.i66, align 4, !tbaa !3
  %i.ci = getelementptr inbounds nuw i8, ptr %.01320.i66, i64 4 ; 2 uses
  %.not.i67 = icmp eq ptr %i.ci, %i.bw
  br i1 %.not.i67, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i65, !llvm.loop !121

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit: ; preds = %.lr.ph.i65, %middle.block, %bb.l, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit
  %i.cj = load atomic i32, ptr %i.h monotonic, align 4
  %i.ck = icmp ult i32 %4, %i.cj
  br i1 %i.ck, label %bb.m, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit

bb.m:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit
  %i.cl = zext nneg i32 %4 to i64
  %.idx91 = shl nuw nsw i64 %i.cl, 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.br, i64 %.idx91 ; 2 uses
  %i.cn = load atomic i32, ptr %i.h monotonic, align 4
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !54
  %i.cr = and i64 %i.co, 1125899902648320
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = icmp ne ptr %i.cq, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8489
  %i.cv = load i8, ptr %i.cu, align 1, !range !55
  %i.cw = trunc nuw i8 %i.cv to i1
  %or.cond.i.i = select i1 %i.ct, i1 %i.cw, i1 false, !prof !56
  br i1 %or.cond.i.i, label %bb.n, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit, !prof !56

bb.n:                                             ; preds = %bb.m
  %i.cx = sub i32 %i.cn, %4
  tail call void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.bp, ptr noundef nonnull %i.cm, i32 noundef %i.cx) #6
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit: ; preds = %bb.n, %bb.m, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit
  store atomic i32 %4, ptr %i.h release, align 4
  br label %bb.p

bb.o:                                             ; preds = %bb.a
  %i.cy = icmp ult i32 %i.f, 2054140
  %i.cz = lshr exact i32 %i.f, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.cz, i32 %4)
  %.0 = select i1 %i.cy, i32 %.sroa.speculated, i32 1027070
  %i.da = tail call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE18reallocateToLargerERNS0_13MutableHandleIS3_EERNS0_7RuntimeEjjjj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.0, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit
  %.052 = phi i32 [ 1, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit ], [ %i.da, %bb.o ]
  ret i32 %.052
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE10resizeLeftERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !51
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load atomic i32, ptr %i.d monotonic, align 4
  %i.f = sub i32 %2, %i.e
  %i.g = tail call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE5shiftERNS0_13MutableHandleIS3_EERNS0_7RuntimeEjjj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 0, i32 noundef %i.f, i32 noundef %2)
  ret i32 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE20resizeWithinCapacityEPS3_RNS0_7HadesGCEj(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8112) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 4 uses
  %i.c = icmp ugt i32 %2, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = zext i32 %i.b to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e ; 3 uses
  %i.g = zext i32 %2 to i64                       ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g
  %i.i = sub nsw i64 %i.g, %i.e
  %i.j = add nsw i64 %i.i, 4611686018427387903
  %i.k = and i64 %i.j, 4611686018427387903        ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.k, 7
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.l, 9223372036854775800      ; 3 uses
  %i.m = shl i64 %n.vec, 2
  %i.n = getelementptr i8, ptr %i.f, i64 %i.m
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.o ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 7), ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.p, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b, %middle.block
  %.01320.i.ph = phi ptr [ %i.f, %bb.b ], [ %i.n, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.01320.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.01320.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i32 7, ptr %.01320.i, align 4, !tbaa !3
  %i.r = getelementptr inbounds nuw i8, ptr %.01320.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.r, %i.h
  br i1 %.not.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i, !llvm.loop !123

bb.c:                                             ; preds = %bb.a
  %i.s = icmp ult i32 %2, %i.b
  br i1 %i.s, label %bb.d, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = zext i32 %2 to i64
  %.idx18 = shl nuw nsw i64 %i.u, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx18 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !54
  %i.z = and i64 %i.w, -4194304
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = icmp ne ptr %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 7633
  %i.ad = load i8, ptr %i.ac, align 1, !range !55
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond.i.i = select i1 %i.ab, i1 %i.ae, i1 false, !prof !56
  br i1 %or.cond.i.i, label %bb.e, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, !prof !56

bb.e:                                             ; preds = %bb.d
  %i.af = sub i32 %i.b, %2
  tail call void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112) %1, ptr noundef nonnull %i.v, i32 noundef %i.af) #6
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit: ; preds = %.lr.ph.i, %middle.block, %bb.e, %bb.d, %bb.c
  store atomic i32 %2, ptr %i.a release, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm21ArrayStorageBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) initializes((216, 224)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE2vtE, ptr %i.a, align 8, !tbaa !124
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @_ZN6hermes2vm8Metadata7Builder8addArrayEPKcNS1_9ArrayData9ArrayTypeEPKvPKSt6atomicIjEm(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.4, i8 noundef zeroext 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef 8) #6
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm26ArrayStorageSmallBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) initializes((216, 224)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE2vtE, ptr %i.a, align 8, !tbaa !124
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @_ZN6hermes2vm8Metadata7Builder8addArrayEPKcNS1_9ArrayData9ArrayTypeEPKvPKSt6atomicIjEm(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.4, i8 noundef zeroext 2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef 4) #6
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3
end_hunk_0
