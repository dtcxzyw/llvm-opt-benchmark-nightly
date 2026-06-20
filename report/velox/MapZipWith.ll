inline.NumInlined: 5627
inline.NumDeleted: 1581
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %.0.i.i225 = trunc nuw i8 %.0.in.i.i to i1
  %i.bxt = load i32, ptr %i.bti, align 4, !tbaa !291 ; 8 uses
  br i1 %.0.i.i225, label %bb.qi, label %bb.qq

bb.qi:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.bxu = load i32, ptr %i.btj, align 8, !tbaa !181 ; 2 uses
  %i.bxv = icmp slt i32 %i.bxt, %i.bxu
  br i1 %i.bxv, label %.lr.ph.i230, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_118MapZipWithFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit

.lr.ph.i230:                                      ; preds = %bb.qi
  %.val4.val.i = load ptr, ptr %i.fy, align 8, !tbaa !247
  %.val4.val5.i = load ptr, ptr %i.gh, align 8, !tbaa !251
  %i.bxw = sext i32 %i.bxt to i64
  %wide.trip.count.i = sext i32 %i.bxu to i64
  %i.bxx = load ptr, ptr %94, align 8             ; 3 uses
  br label %bb.qj

bb.qj:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i, %.lr.ph.i230
  %indvars.iv.i = phi i64 [ %i.bxw, %.lr.ph.i230 ], [ %indvars.iv.next.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i ] ; 3 uses
  %i.bxy = getelementptr inbounds [4 x i8], ptr %.val4.val.i, i64 %indvars.iv.i
  %i.bxz = load i32, ptr %i.bxy, align 4, !tbaa !3 ; 6 uses
  %i.bya = getelementptr inbounds [4 x i8], ptr %.val4.val5.i, i64 %indvars.iv.i
  %i.byb = load i32, ptr %i.bya, align 4, !tbaa !3 ; 3 uses
  %i.byc = add nsw i32 %i.byb, %i.bxz             ; 5 uses
  %i.byd = icmp eq i32 %i.byb, 0
  br i1 %i.byd, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  %.not.i.i.i.i.i231 = icmp sgt i32 %i.byb, 0
  br i1 %.not.i.i.i.i.i231, label %bb.ql, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i

bb.ql:                                            ; preds = %bb.qk
  %i.bye = add i32 %i.bxz, 63                     ; 2 uses
  %i.byf = srem i32 %i.bye, 64
  %i.byg = sub nsw i32 %i.bye, %i.byf             ; 6 uses
  %i.byh = and i32 %i.byc, -64                    ; 4 uses
  %i.byi = icmp slt i32 %i.byh, %i.byg
  br i1 %i.byi, label %bb.qm, label %bb.qn

bb.qm:                                            ; preds = %bb.ql
  %i.byj = and i32 %i.byc, 63
  %i.byk = zext nneg i32 %i.byj to i64
  %notmask.i.i.i.i.i.i238 = shl nsw i64 -1, %i.byk
  %i.byl = xor i64 %notmask.i.i.i.i.i.i238, -1
  %i.bym = sub nsw i32 %i.byg, %i.bxz             ; 2 uses
  %i.byn = zext nneg i32 %i.bym to i64
  %notmask.i.i.i.i.i.i.i239 = shl nsw i64 -1, %i.byn
  %i.byo = xor i64 %notmask.i.i.i.i.i.i.i239, -1
  %i.byp = sub nsw i32 64, %i.bym
  %i.byq = zext nneg i32 %i.byp to i64
  %i.byr = shl i64 %i.byo, %i.byq
  %i.bys = and i64 %i.byr, %i.byl
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i.i

bb.qn:                                            ; preds = %bb.ql
  %.not32.i.i.i.i.i232 = icmp eq i32 %i.bxz, %i.byg
  br i1 %.not32.i.i.i.i.i232, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i, label %bb.qo

bb.qo:                                            ; preds = %bb.qn
  %i.byt = sdiv i32 %i.bxz, 64
  %i.byu = sub nsw i32 %i.byg, %i.bxz             ; 2 uses
  %i.byv = zext nneg i32 %i.byu to i64
  %notmask.i.i35.i.i.i.i.i233 = shl nsw i64 -1, %i.byv
  %i.byw = xor i64 %notmask.i.i35.i.i.i.i.i233, -1
  %i.byx = sub nsw i32 64, %i.byu
  %i.byy = zext nneg i32 %i.byx to i64
  %i.byz = shl i64 %i.byw, %i.byy
  %i.bza = sext i32 %i.byt to i64
  %i.bzb = getelementptr inbounds [8 x i8], ptr %i.bxx, i64 %i.bza ; 2 uses
  %i.bzc = load i64, ptr %i.bzb, align 8, !tbaa !135
  %i.bzd = or i64 %i.bzc, %i.byz
  store i64 %i.bzd, ptr %i.bzb, align 8, !tbaa !135
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i: ; preds = %bb.qo, %bb.qn
  %i.bze = add nsw i32 %i.byg, 64                 ; 2 uses
  %.not3347.i.i.i.i.i = icmp sgt i32 %i.bze, %i.byh
  br i1 %.not3347.i.i.i.i.i, label %._crit_edge.i.i.i.i.i236, label %.lr.ph.i.i.i.i.i234

._crit_edge.i.i.i.i.i236:                         ; preds = %.lr.ph.i.i.i.i.i234, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i
  %.not34.i.i.i.i.i237 = icmp eq i32 %i.byc, %i.byh
  br i1 %.not34.i.i.i.i.i237, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i, label %bb.qp

.lr.ph.i.i.i.i.i234:                              ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i, %.lr.ph.i.i.i.i.i234
  %i.bzf = phi i32 [ %i.bzj, %.lr.ph.i.i.i.i.i234 ], [ %i.bze, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i ] ; 2 uses
  %.048.i.i.i.i.i = phi i32 [ %i.bzf, %.lr.ph.i.i.i.i.i234 ], [ %i.byg, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i ]
  %i.bzg = sdiv i32 %.048.i.i.i.i.i, 64
  %i.bzh = sext i32 %i.bzg to i64
  %i.bzi = getelementptr inbounds [8 x i8], ptr %i.bxx, i64 %i.bzh
  store i64 -1, ptr %i.bzi, align 8, !tbaa !135
  %i.bzj = add nsw i32 %i.bzf, 64                 ; 2 uses
  %.not33.i.i.i.i.i235 = icmp sgt i32 %i.bzj, %i.byh
  br i1 %.not33.i.i.i.i.i235, label %._crit_edge.i.i.i.i.i236, label %.lr.ph.i.i.i.i.i234, !llvm.loop !403

bb.qp:                                            ; preds = %._crit_edge.i.i.i.i.i236
  %i.bzk = and i32 %i.byc, 63
  %i.bzl = zext nneg i32 %i.bzk to i64
  %notmask.i37.i.i.i.i.i = shl nsw i64 -1, %i.bzl
  %i.bzm = xor i64 %notmask.i37.i.i.i.i.i, -1
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i.i: ; preds = %bb.qp, %bb.qm
  %.sink8.i.i = phi i64 [ %i.bzm, %bb.qp ], [ %i.bys, %bb.qm ]
  %.sink.i.i = ashr i32 %i.byc, 6
  %i.bzn = sext i32 %.sink.i.i to i64
  %i.bzo = getelementptr inbounds [8 x i8], ptr %i.bxx, i64 %i.bzn ; 2 uses
  %i.bzp = load i64, ptr %i.bzo, align 8, !tbaa !135
  %i.bzq = or i64 %i.bzp, %.sink8.i.i
  store i64 %i.bzq, ptr %i.bzo, align 8, !tbaa !135
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i.i, %._crit_edge.i.i.i.i.i236, %bb.qk
  store i8 0, ptr %i.btm, align 1, !tbaa !288
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i, %bb.qj
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_118MapZipWithFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %bb.qj, !llvm.loop !404

bb.qq:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.bzr = load ptr, ptr %i.btb, align 8, !tbaa !289 ; 2 uses
  %i.bzs = load i32, ptr %i.btj, align 8, !tbaa !181 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i8 1, ptr %9, align 8
  store ptr %i.bzr, ptr %.sroa.212.0..sroa_idx.i.i.i, align 8
  store ptr %94, ptr %.sroa.313.0..sroa_idx.i.i.i, align 8
  store ptr %76, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8
  %.not.i.i.i.i226 = icmp slt i32 %i.bxt, %i.bzs
  br i1 %.not.i.i.i.i226, label %bb.qr, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiiSP_.exit.i

bb.qr:                                            ; preds = %bb.qq
  %i.bzt = add i32 %i.bxt, 63                     ; 2 uses
  %i.bzu = srem i32 %i.bzt, 64
  %i.bzv = sub nsw i32 %i.bzt, %i.bzu             ; 6 uses
  %i.bzw = and i32 %i.bzs, -64                    ; 4 uses
  %i.bzx = icmp slt i32 %i.bzw, %i.bzv
  br i1 %i.bzx, label %bb.qs, label %bb.qt

bb.qs:                                            ; preds = %bb.qr
  %i.bzy = ashr i32 %i.bzs, 6
  %i.bzz = and i32 %i.bzs, 63
  %i.caa = zext nneg i32 %i.bzz to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.caa
  %i.cab = xor i64 %notmask.i.i.i.i.i, -1
  %i.cac = sub nsw i32 %i.bzv, %i.bxt             ; 2 uses
  %i.cad = zext nneg i32 %i.cac to i64
  %notmask.i.i.i.i.i8.i = shl nsw i64 -1, %i.cad
  %i.cae = xor i64 %notmask.i.i.i.i.i8.i, -1
  %i.caf = sub nsw i32 64, %i.cac
  %i.cag = zext nneg i32 %i.caf to i64
  %i.cah = shl i64 %i.cae, %i.cag
  %i.cai = and i64 %i.cah, %i.cab
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(32) %9, i32 noundef %i.bzy, i64 noundef %i.cai)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiiSP_.exit.i

bb.qt:                                            ; preds = %bb.qr
  %.not32.i.i.i.i = icmp eq i32 %i.bxt, %i.bzv
  br i1 %.not32.i.i.i.i, label %bb.qv, label %bb.qu

bb.qu:                                            ; preds = %bb.qt
  %i.caj = sdiv i32 %i.bxt, 64
  %i.cak = sub nsw i32 %i.bzv, %i.bxt             ; 2 uses
  %i.cal = zext nneg i32 %i.cak to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.cal
  %i.cam = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.can = sub nsw i32 64, %i.cak
  %i.cao = zext nneg i32 %i.can to i64
  %i.cap = shl i64 %i.cam, %i.cao
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(32) %9, i32 noundef %i.caj, i64 noundef %i.cap)
  br label %bb.qv

bb.qv:                                            ; preds = %bb.qu, %bb.qt
  %i.caq = add nsw i32 %i.bzv, 64                 ; 2 uses
  %.not3338.i.i.i.i = icmp sgt i32 %i.caq, %i.bzw
  br i1 %.not3338.i.i.i.i, label %._crit_edge.i.i.i.i228, label %.lr.ph.i.i.i.i227.preheader

.lr.ph.i.i.i.i227.preheader:                      ; preds = %bb.qv
  %.val20.val.i.i.i.i.i = load ptr, ptr %i.fy, align 8 ; 2 uses
  %.val20.val21.i.i.i.i.i = load ptr, ptr %i.gh, align 8 ; 2 uses
  br label %.lr.ph.i.i.i.i227

._crit_edge.i.i.i.i228:                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, %bb.qv
  %.not34.i.i.i.i229 = icmp eq i32 %i.bzs, %i.bzw
  br i1 %.not34.i.i.i.i229, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiiSP_.exit.i, label %bb.rl

.lr.ph.i.i.i.i227:                                ; preds = %.lr.ph.i.i.i.i227.preheader, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i
  %i.car = phi i32 [ %i.ceu, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ], [ %i.caq, %.lr.ph.i.i.i.i227.preheader ] ; 2 uses
  %.039.i.i.i.i = phi i32 [ %i.car, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ], [ %i.bzv, %.lr.ph.i.i.i.i227.preheader ] ; 2 uses
  %i.cas = sdiv i32 %.039.i.i.i.i, 64             ; 3 uses
  %i.cat = sext i32 %i.cas to i64
  %i.cau = getelementptr inbounds [8 x i8], ptr %i.bzr, i64 %i.cat
  %i.cav = load i64, ptr %i.cau, align 8, !tbaa !135 ; 2 uses
  switch i64 %i.cav, label %.lr.ph.i.i.i.i6.i [
    i64 -1, label %bb.qw
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i6.i:                                ; preds = %.lr.ph.i.i.i.i227
  %i.caw = shl nsw i32 %i.cas, 6
  %i.cax = load ptr, ptr %94, align 8             ; 3 uses
  br label %bb.re

bb.qw:                                            ; preds = %.lr.ph.i.i.i.i227
  %i.cay = shl nsw i32 %i.cas, 6                  ; 2 uses
  %i.caz = add i32 %i.cay, 64
  %i.cba = sext i32 %i.caz to i64
  %.0.off.i.i.i.i = add i32 %.039.i.i.i.i, 127
  %.not44.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not44.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph43.i.i.i.i.i

.lr.ph43.i.i.i.i.i:                               ; preds = %bb.qw
  %i.cbb = sext i32 %i.cay to i64
  %i.cbc = load ptr, ptr %94, align 8             ; 3 uses
  br label %bb.qx

bb.qx:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i, %.lr.ph43.i.i.i.i.i
  %.042.i.i.i.i.i = phi i64 [ %i.cbb, %.lr.ph43.i.i.i.i.i ], [ %i.ccw, %_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i ] ; 3 uses
  %i.cbd = getelementptr inbounds nuw [4 x i8], ptr %.val20.val.i.i.i.i.i, i64 %.042.i.i.i.i.i
  %i.cbe = load i32, ptr %i.cbd, align 4, !tbaa !3 ; 6 uses
  %i.cbf = getelementptr inbounds nuw [4 x i8], ptr %.val20.val21.i.i.i.i.i, i64 %.042.i.i.i.i.i
  %i.cbg = load i32, ptr %i.cbf, align 4, !tbaa !3 ; 3 uses
  %i.cbh = add nsw i32 %i.cbg, %i.cbe             ; 5 uses
  %i.cbi = icmp eq i32 %i.cbg, 0
  br i1 %i.cbi, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i, label %bb.qy

bb.qy:                                            ; preds = %bb.qx
  %.not.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.cbg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.qz, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i.i.i.i.i

bb.qz:                                            ; preds = %bb.qy
  %i.cbj = add i32 %i.cbe, 63                     ; 2 uses
  %i.cbk = srem i32 %i.cbj, 64
  %i.cbl = sub nsw i32 %i.cbj, %i.cbk             ; 6 uses
  %i.cbm = and i32 %i.cbh, -64                    ; 4 uses
  %i.cbn = icmp slt i32 %i.cbm, %i.cbl
  br i1 %i.cbn, label %bb.ra, label %bb.rb

bb.ra:                                            ; preds = %bb.qz
  %i.cbo = and i32 %i.cbh, 63
  %i.cbp = zext nneg i32 %i.cbo to i64
  %notmask.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.cbp
  %i.cbq = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i, -1
  %i.cbr = sub nsw i32 %i.cbl, %i.cbe             ; 2 uses
  %i.cbs = zext nneg i32 %i.cbr to i64
  %notmask.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.cbs
  %i.cbt = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.cbu = sub nsw i32 64, %i.cbr
  %i.cbv = zext nneg i32 %i.cbu to i64
  %i.cbw = shl i64 %i.cbt, %i.cbv
  %i.cbx = and i64 %i.cbw, %i.cbq
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i.i.i.i.i.i

bb.rb:                                            ; preds = %bb.qz
  %.not32.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.cbe, %i.cbl
  br i1 %.not32.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i.i.i.i.i, label %bb.rc

bb.rc:                                            ; preds = %bb.rb
  %i.cby = sdiv i32 %i.cbe, 64
  %i.cbz = sub nsw i32 %i.cbl, %i.cbe             ; 2 uses
  %i.cca = zext nneg i32 %i.cbz to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.cca
  %i.ccb = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i.i, -1
  %i.ccc = sub nsw i32 64, %i.cbz
  %i.ccd = zext nneg i32 %i.ccc to i64
  %i.cce = shl i64 %i.ccb, %i.ccd
  %i.ccf = sext i32 %i.cby to i64
  %i.ccg = getelementptr inbounds [8 x i8], ptr %i.cbc, i64 %i.ccf ; 2 uses
  %i.cch = load i64, ptr %i.ccg, align 8, !tbaa !135
  %i.cci = or i64 %i.cch, %i.cce
  store i64 %i.cci, ptr %i.ccg, align 8, !tbaa !135
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i.i.i.i.i

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i.i.i.i.i: ; preds = %bb.rc, %bb.rb
  %i.ccj = add nsw i32 %i.cbl, 64                 ; 2 uses
  %.not3347.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.ccj, %i.cbm
  br i1 %.not3347.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.cbh, %i.cbm
  br i1 %.not34.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i.i.i.i.i, label %bb.rd

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cck = phi i32 [ %i.cco, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ccj, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.048.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cck, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.cbl, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i.i.i.i.i ]
  %i.ccl = sdiv i32 %.048.i.i.i.i.i.i.i.i.i, 64
  %i.ccm = sext i32 %i.ccl to i64
  %i.ccn = getelementptr inbounds [8 x i8], ptr %i.cbc, i64 %i.ccm
  store i64 -1, ptr %i.ccn, align 8, !tbaa !135
  %i.cco = add nsw i32 %i.cck, 64                 ; 2 uses
  %.not33.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.cco, %i.cbm
  br i1 %.not33.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !403

bb.rd:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.ccp = and i32 %i.cbh, 63
  %i.ccq = zext nneg i32 %i.ccp to i64
  %notmask.i37.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.ccq
  %i.ccr = xor i64 %notmask.i37.i.i.i.i.i.i.i.i.i, -1
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i.i.i.i.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i.i.i.i.i.i: ; preds = %bb.rd, %bb.ra
  %.sink8.i.i.i.i.i.i = phi i64 [ %i.ccr, %bb.rd ], [ %i.cbx, %bb.ra ]
  %.sink.i.i.i.i.i.i = ashr i32 %i.cbh, 6
  %i.ccs = sext i32 %.sink.i.i.i.i.i.i to i64
  %i.cct = getelementptr inbounds [8 x i8], ptr %i.cbc, i64 %i.ccs ; 2 uses
  %i.ccu = load i64, ptr %i.cct, align 8, !tbaa !135
  %i.ccv = or i64 %i.ccu, %.sink8.i.i.i.i.i.i
  store i64 %i.ccv, ptr %i.cct, align 8, !tbaa !135
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i.i.i.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i, %bb.qy
  store i8 0, ptr %i.btm, align 1, !tbaa !288
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i.i.i.i.i, %bb.qx
  %i.ccw = add nuw i64 %.042.i.i.i.i.i, 1         ; 2 uses
  %i.ccx = icmp ult i64 %i.ccw, %i.cba
  br i1 %i.ccx, label %bb.qx, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !405

bb.re:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i6.i
  %.01541.i.i.i.i.i = phi i64 [ %i.cav, %.lr.ph.i.i.i.i6.i ], [ %i.cet, %_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i ] ; 3 uses
  %i.ccy = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01541.i.i.i.i.i, i1 true)
  %99 = trunc nuw nsw i64 %i.ccy to i32
  %100 = or disjoint i32 %i.caw, %99
  %101 = sext i32 %100 to i64                     ; 2 uses
  %i.ccz = getelementptr inbounds [4 x i8], ptr %.val20.val.i.i.i.i.i, i64 %101
  %i.cda = load i32, ptr %i.ccz, align 4, !tbaa !3 ; 6 uses
  %i.cdb = getelementptr inbounds [4 x i8], ptr %.val20.val21.i.i.i.i.i, i64 %101
  %i.cdc = load i32, ptr %i.cdb, align 4, !tbaa !3 ; 3 uses
  %i.cdd = add nsw i32 %i.cdc, %i.cda             ; 5 uses
  %i.cde = icmp eq i32 %i.cdc, 0
  br i1 %i.cde, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i, label %bb.rf

bb.rf:                                            ; preds = %bb.re
  %.not.i.i.i.i22.i.i.i.i.i = icmp sgt i32 %i.cdc, 0
  br i1 %.not.i.i.i.i22.i.i.i.i.i, label %bb.rg, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i23.i.i.i.i.i

bb.rg:                                            ; preds = %bb.rf
  %i.cdf = add i32 %i.cda, 63                     ; 2 uses
  %i.cdg = srem i32 %i.cdf, 64
  %i.cdh = sub nsw i32 %i.cdf, %i.cdg             ; 6 uses
  %i.cdi = and i32 %i.cdd, -64                    ; 4 uses
  %i.cdj = icmp slt i32 %i.cdi, %i.cdh
  br i1 %i.cdj, label %bb.rh, label %bb.ri

bb.rh:                                            ; preds = %bb.rg
  %i.cdk = and i32 %i.cdd, 63
  %i.cdl = zext nneg i32 %i.cdk to i64
  %notmask.i.i.i.i.i37.i.i.i.i.i = shl nsw i64 -1, %i.cdl
  %i.cdm = xor i64 %notmask.i.i.i.i.i37.i.i.i.i.i, -1
  %i.cdn = sub nsw i32 %i.cdh, %i.cda             ; 2 uses
  %i.cdo = zext nneg i32 %i.cdn to i64
  %notmask.i.i.i.i.i.i38.i.i.i.i.i = shl nsw i64 -1, %i.cdo
  %i.cdp = xor i64 %notmask.i.i.i.i.i.i38.i.i.i.i.i, -1
  %i.cdq = sub nsw i32 64, %i.cdn
  %i.cdr = zext nneg i32 %i.cdq to i64
  %i.cds = shl i64 %i.cdp, %i.cdr
  %i.cdt = and i64 %i.cds, %i.cdm
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i34.i.i.i.i.i

bb.ri:                                            ; preds = %bb.rg
  %.not32.i.i.i.i24.i.i.i.i.i = icmp eq i32 %i.cda, %i.cdh
  br i1 %.not32.i.i.i.i24.i.i.i.i.i, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i26.i.i.i.i.i, label %bb.rj

bb.rj:                                            ; preds = %bb.ri
  %i.cdu = sdiv i32 %i.cda, 64
  %i.cdv = sub nsw i32 %i.cdh, %i.cda             ; 2 uses
  %i.cdw = zext nneg i32 %i.cdv to i64
  %notmask.i.i35.i.i.i.i25.i.i.i.i.i = shl nsw i64 -1, %i.cdw
  %i.cdx = xor i64 %notmask.i.i35.i.i.i.i25.i.i.i.i.i, -1
  %i.cdy = sub nsw i32 64, %i.cdv
  %i.cdz = zext nneg i32 %i.cdy to i64
  %i.cea = shl i64 %i.cdx, %i.cdz
  %i.ceb = sext i32 %i.cdu to i64
  %i.cec = getelementptr inbounds [8 x i8], ptr %i.cax, i64 %i.ceb ; 2 uses
  %i.ced = load i64, ptr %i.cec, align 8, !tbaa !135
  %i.cee = or i64 %i.ced, %i.cea
  store i64 %i.cee, ptr %i.cec, align 8, !tbaa !135
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i26.i.i.i.i.i

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i26.i.i.i.i.i: ; preds = %bb.rj, %bb.ri
  %i.cef = add nsw i32 %i.cdh, 64                 ; 2 uses
  %.not3347.i.i.i.i27.i.i.i.i.i = icmp sgt i32 %i.cef, %i.cdi
  br i1 %.not3347.i.i.i.i27.i.i.i.i.i, label %._crit_edge.i.i.i.i31.i.i.i.i.i, label %.lr.ph.i.i.i.i28.i.i.i.i.i

._crit_edge.i.i.i.i31.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i28.i.i.i.i.i, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i26.i.i.i.i.i
  %.not34.i.i.i.i32.i.i.i.i.i = icmp eq i32 %i.cdd, %i.cdi
  br i1 %.not34.i.i.i.i32.i.i.i.i.i, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i23.i.i.i.i.i, label %bb.rk

.lr.ph.i.i.i.i28.i.i.i.i.i:                       ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i26.i.i.i.i.i, %.lr.ph.i.i.i.i28.i.i.i.i.i
  %i.ceg = phi i32 [ %i.cek, %.lr.ph.i.i.i.i28.i.i.i.i.i ], [ %i.cef, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i26.i.i.i.i.i ] ; 2 uses
  %.048.i.i.i.i29.i.i.i.i.i = phi i32 [ %i.ceg, %.lr.ph.i.i.i.i28.i.i.i.i.i ], [ %i.cdh, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i26.i.i.i.i.i ]
  %i.ceh = sdiv i32 %.048.i.i.i.i29.i.i.i.i.i, 64
  %i.cei = sext i32 %i.ceh to i64
  %i.cej = getelementptr inbounds [8 x i8], ptr %i.cax, i64 %i.cei
  store i64 -1, ptr %i.cej, align 8, !tbaa !135
  %i.cek = add nsw i32 %i.ceg, 64                 ; 2 uses
  %.not33.i.i.i.i30.i.i.i.i.i = icmp sgt i32 %i.cek, %i.cdi
  br i1 %.not33.i.i.i.i30.i.i.i.i.i, label %._crit_edge.i.i.i.i31.i.i.i.i.i, label %.lr.ph.i.i.i.i28.i.i.i.i.i, !llvm.loop !403

bb.rk:                                            ; preds = %._crit_edge.i.i.i.i31.i.i.i.i.i
  %i.cel = and i32 %i.cdd, 63
  %i.cem = zext nneg i32 %i.cel to i64
  %notmask.i37.i.i.i.i33.i.i.i.i.i = shl nsw i64 -1, %i.cem
  %i.cen = xor i64 %notmask.i37.i.i.i.i33.i.i.i.i.i, -1
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i34.i.i.i.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i34.i.i.i.i.i: ; preds = %bb.rk, %bb.rh
  %.sink8.i35.i.i.i.i.i = phi i64 [ %i.cen, %bb.rk ], [ %i.cdt, %bb.rh ]
  %.sink.i36.i.i.i.i.i = ashr i32 %i.cdd, 6
  %i.ceo = sext i32 %.sink.i36.i.i.i.i.i to i64
  %i.cep = getelementptr inbounds [8 x i8], ptr %i.cax, i64 %i.ceo ; 2 uses
  %i.ceq = load i64, ptr %i.cep, align 8, !tbaa !135
  %i.cer = or i64 %i.ceq, %.sink8.i35.i.i.i.i.i
  store i64 %i.cer, ptr %i.cep, align 8, !tbaa !135
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i23.i.i.i.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i23.i.i.i.i.i: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i34.i.i.i.i.i, %._crit_edge.i.i.i.i31.i.i.i.i.i, %bb.rf
  store i8 0, ptr %i.btm, align 1, !tbaa !288
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i23.i.i.i.i.i, %bb.re
  %i.ces = add i64 %.01541.i.i.i.i.i, -1
  %i.cet = and i64 %i.ces, %.01541.i.i.i.i.i      ; 2 uses
  %.not.i.i.i.i7.i = icmp eq i64 %i.cet, 0
  br i1 %.not.i.i.i.i7.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, label %bb.re, !llvm.loop !406

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i, %bb.qw, %.lr.ph.i.i.i.i227
  %i.ceu = add nsw i32 %i.car, 64                 ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.ceu, %i.bzw
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i228, label %.lr.ph.i.i.i.i227, !llvm.loop !407

bb.rl:                                            ; preds = %._crit_edge.i.i.i.i228
  %i.cev = ashr i32 %i.bzs, 6
  %i.cew = and i32 %i.bzs, 63
  %i.cex = zext nneg i32 %i.cew to i64
  %notmask.i36.i.i.i.i = shl nsw i64 -1, %i.cex
  %i.cey = xor i64 %notmask.i36.i.i.i.i, -1
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(32) %9, i32 noundef %i.cev, i64 noundef %i.cey)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiiSP_.exit.i

_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiiSP_.exit.i: ; preds = %bb.rl, %._crit_edge.i.i.i.i228, %bb.qs, %bb.qq
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %.pre505 = load i32, ptr %i.btp, align 8, !tbaa !290
  br label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_118MapZipWithFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_118MapZipWithFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i, %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiiSP_.exit.i, %bb.qi
  %i.cez = phi i32 [ %.069, %bb.qi ], [ %.pre505, %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiiSP_.exit.i ], [ %.069, %_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i ] ; 6 uses
  %i.cfa = load ptr, ptr %94, align 8, !tbaa !289 ; 4 uses
  %.not.i.i.i241 = icmp sgt i32 %i.cez, 0
  br i1 %.not.i.i.i241, label %bb.rm, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i

bb.rm:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_118MapZipWithFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit
  %i.cfb = and i32 %i.cez, 2147483584             ; 4 uses
  %i.cfc = zext nneg i32 %i.cfb to i64
  %.not37.i.i.not.i938.not = icmp eq i32 %i.cfb, 0
  br i1 %.not37.i.i.not.i938.not, label %.critedge.i.i.i, label %.lr.ph940

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i: ; preds = %.lr.ph940
  %indvars.iv.next.i243 = add nuw nsw i64 %indvars.iv.i242939, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i243, %i.cfc
  br i1 %.not37.i.i.not.i, label %.lr.ph940, label %.critedge.i.i.i, !llvm.loop !372

.lr.ph940:                                        ; preds = %bb.rm, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i
  %indvars.iv.i242939 = phi i64 [ %indvars.iv.next.i243, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i ], [ 0, %bb.rm ] ; 3 uses
  %i.cfd = lshr exact i64 %indvars.iv.i242939, 3
  %i.cfe = getelementptr inbounds nuw i8, ptr %i.cfa, i64 %i.cfd
  %i.cff = load i64, ptr %i.cfe, align 8, !tbaa !135 ; 2 uses
  %.not.i42.i.i.i = icmp eq i64 %i.cff, 0
  br i1 %.not.i42.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, !llvm.loop !372

.critedge.i.i.i:                                  ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, %bb.rm
  %.not38.i.i.i = icmp eq i32 %i.cez, %i.cfb
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %bb.rn

bb.rn:                                            ; preds = %.critedge.i.i.i
  %i.cfg = lshr i32 %i.cez, 6
  %i.cfh = and i32 %i.cez, 63
  %i.cfi = zext nneg i32 %i.cfh to i64
  %notmask.i43.i.i.i = shl nsw i64 -1, %i.cfi
  %i.cfj = xor i64 %notmask.i43.i.i.i, -1
  %i.cfk = zext nneg i32 %i.cfg to i64
  %i.cfl = getelementptr inbounds nuw [8 x i8], ptr %i.cfa, i64 %i.cfk
  %i.cfm = load i64, ptr %i.cfl, align 8, !tbaa !135
  %i.cfn = and i64 %i.cfm, %i.cfj                 ; 2 uses
  %.not.i44.i.i.i = icmp eq i64 %i.cfn, 0
  br i1 %.not.i44.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i: ; preds = %bb.rn, %.critedge.i.i.i, %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_118MapZipWithFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit
  store i32 0, ptr %i.bto, align 4, !tbaa !291
  store i32 0, ptr %i.btn, align 8, !tbaa !181
  store i16 256, ptr %i.btq, align 4
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i: ; preds = %.lr.ph940
  %i.cfo = trunc nuw nsw i64 %indvars.iv.i242939 to i32
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, %bb.rn
  %.sink67.i.i.i = phi i64 [ %i.cfn, %bb.rn ], [ %i.cff, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %.sink65.i.i.i = phi i32 [ %i.cfb, %bb.rn ], [ %i.cfo, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %i.cfp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sink67.i.i.i, i1 true)
  %i.cfq = trunc nuw nsw i64 %i.cfp to i32
  %i.cfr = or disjoint i32 %.sink65.i.i.i, %i.cfq ; 2 uses
  store i32 %i.cfr, ptr %i.bto, align 4, !tbaa !291
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 -1, ptr %i.a, align 4, !tbaa !3
  store ptr %i.cfa, ptr %7, align 8, !tbaa !373
  store ptr %i.a, ptr %i.btr, align 8, !tbaa !310
  store i8 1, ptr %i.bts, align 8, !tbaa !375
  store ptr %i.cfa, ptr %8, align 8, !tbaa !376
  store ptr %i.a, ptr %i.btt, align 8, !tbaa !310
  store i8 1, ptr %i.btu, align 8, !tbaa !378
  %i.cfs = invoke noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %i.cfr, i32 noundef %i.cez, ptr noundef nonnull byval(%class.anon.589) align 8 %7, ptr noundef nonnull byval(%class.anon.591) align 8 %8)
          to label %.noexc244 unwind label %bb.sp ; 0 uses

.noexc244:                                        ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i
  %i.cft = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.cfu = add nsw i32 %i.cft, 1
  store i32 %i.cfu, ptr %i.btn, align 8, !tbaa !181
  store i8 0, ptr %i.btm, align 1, !tbaa !288
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

end_hunk_0
begin_hunk_1_@_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi:bb.a
  resume { ptr, i32 } %i.ba

_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.bg = extractvalue { i32, i1 } %i.aw, 0
  store i32 %i.bg, ptr %i.ai, align 4, !tbaa !3
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt19bad_optional_access, i64 16), ptr %i.a, align 8, !tbaa !46
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt19bad_optional_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #16

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19bad_optional_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNKSt19bad_optional_access4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr @.str.33
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #18

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_ISC_EEvSE_iibSF_EUliE_EEviiSF_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.168) align 8 %2, ptr noundef byval(%class.anon.169) align 8 %3) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.167", align 16 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !519, !range !71, !noundef !72
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !523
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !135
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ag, %bb.d ] ; 3 uses
  %i.ac = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = or disjoint i32 %i.d, %i.ad
  call void @_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i32 noundef %i.ae)
  %i.af = add nsw i64 %.011.i, -1
  %i.ag = and i64 %i.af, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ag, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !539

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = sdiv i32 %0, 64                         ; 2 uses
  %i.ai = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.aj
  %i.ak = xor i64 %notmask.i.i35, -1
  %i.al = sub nsw i32 64, %i.ai
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl i64 %i.ak, %i.am
  %i.ao = load i8, ptr %2, align 8, !tbaa !519, !range !71, !noundef !72
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !523
  %i.ar = sext i32 %i.ah to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !135
  %i.au = xor i8 %i.ao, 1
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = xor i64 %i.at, %i.aw
  %i.ay = and i64 %i.ax, %i.an                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.ay, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = shl nsw i32 %i.ah, 6
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.ay, %.preheader.i37 ], [ %i.bf, %bb.g ] ; 3 uses
  %i.bb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc
  call void @_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %i.az, i32 noundef %i.bd)
  %i.be = add i64 %.011.i38, -1
  %i.bf = and i64 %i.be, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bf, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !539

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bg = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3352 = icmp sgt i32 %i.bg, %i.d
  br i1 %.not3352, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.q

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.bm = phi i32 [ %i.bg, %.lr.ph ], [ %i.fc, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.053 = phi i32 [ %i.c, %.lr.ph ], [ %i.bm, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.bn = sdiv i32 %.053, 64                      ; 3 uses
  %i.bo = load i8, ptr %3, align 8, !tbaa !524, !range !71, !noundef !72
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !526
  %i.bq = sext i32 %i.bn to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !135
  %i.bt = xor i8 %i.bo, 1
  %i.bu = zext nneg i8 %i.bt to i64
  %i.bv = sub nsw i64 0, %i.bu
  %i.bw = xor i64 %i.bs, %i.bv                    ; 3 uses
  switch i64 %i.bw, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.bx = shl nsw i32 %i.bn, 6                    ; 2 uses
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !527, !nonnull !72, !align !393 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !528 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 59
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ce = load ptr, ptr %i.bj, align 8, !nonnull !72, !align !530 ; 4 uses
  %i.cf = load ptr, ptr %i.bk, align 8, !nonnull !72, !align !393 ; 2 uses
  %i.cg = load ptr, ptr %i.bl, align 8, !nonnull !72, !align !393 ; 2 uses
  br i1 %.not.i.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !310
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !310
  %.promoted = load i32, ptr %i.ce, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us: ; preds = %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i.us, %.lr.ph.i.split.us
  %i.cj = phi i32 [ %.promoted, %.lr.ph.i.split.us ], [ %i.cs, %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i.us ] ; 2 uses
  %.01519.i.us = phi i64 [ %i.bw, %.lr.ph.i.split.us ], [ %i.cu, %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i.us ] ; 3 uses
  %i.ck = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.us, i1 true)
  %6 = trunc nuw nsw i64 %i.ck to i32
  %7 = or disjoint i32 %i.bx, %6
  %8 = sext i32 %7 to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %8
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3  ; 2 uses
  %i.cq = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.cj, i32 %i.cp) ; 2 uses
  %i.cr = extractvalue { i32, i1 } %i.cq, 1
  br i1 %i.cr, label %.split.us, label %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i.us, !prof !49

_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us
  %i.cs = extractvalue { i32, i1 } %i.cq, 0       ; 2 uses
  store i32 %i.cs, ptr %i.ce, align 4, !tbaa !3
  %i.ct = add i64 %.01519.i.us, -1
  %i.cu = and i64 %i.ct, %.01519.i.us             ; 2 uses
  %.not.i41.us = icmp eq i64 %i.cu, 0
  br i1 %.not.i41.us, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, !llvm.loop !540

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %i.cw = load i8, ptr %i.cv, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cx = trunc nuw i8 %i.cw to i1
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cy = shl nsw i32 %i.bn, 6                    ; 2 uses
  %i.cz = add i32 %i.cy, 64
  %i.da = sext i32 %i.cz to i64
  %.0.off = add i32 %.053, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.db = sext i32 %i.cy to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.db, %.lr.ph21.i ], [ %i.dd, %bb.j ] ; 2 uses
  %i.dc = trunc i64 %.020.i to i32
  call void @_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i32 noundef %i.dc)
  %i.dd = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.da
  br i1 %i.de, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !541

bb.k:                                             ; preds = %_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit, %.lr.ph.i.split
  %.01519.i = phi i64 [ %i.bw, %.lr.ph.i.split ], [ %i.fb, %_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit ] ; 3 uses
  %i.df = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.dg = trunc nuw nsw i64 %i.df to i32
  %i.dh = or disjoint i32 %i.bx, %i.dg            ; 3 uses
  %i.di = load i8, ptr %i.cb, align 1, !range !71
  %i.dj = trunc nuw i8 %i.di to i1
  %or.cond.i.i = select i1 %i.cx, i1 true, i1 %i.dj
  br i1 %or.cond.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dk = zext i32 %i.dh to i64                   ; 2 uses
  %i.dl = lshr i64 %i.dk, 6
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !135
  %i.do = and i64 %i.dk, 63
  %i.dp = shl nuw i64 1, %i.do
  %i.dq = and i64 %i.dn, %i.dp
  %.not.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i, label %_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

bb.m:                                             ; preds = %bb.k
  %i.dr = load i8, ptr %i.cc, align 1, !tbaa !292, !range !71, !noundef !72
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dt = load ptr, ptr %i.cd, align 8, !tbaa !309
  %i.du = sext i32 %i.dh to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3
  %i.dx = zext i32 %i.dw to i64                   ; 2 uses
  %i.dy = lshr i64 %i.dx, 6
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !135
  %i.eb = and i64 %i.dx, 63
  %i.ec = shl nuw i64 1, %i.eb
  %i.ed = and i64 %i.ec, %i.ea
  %.not.i7.i.i = icmp eq i64 %i.ed, 0
  br i1 %.not.i7.i.i, label %_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.m
  %i.ee = load i64, ptr %i.ca, align 8, !tbaa !135
  %i.ef = and i64 %i.ee, 1
  %.not.i6.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not.i6.i.i, label %_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %bb.n, %bb.l
  %i.eg = load i32, ptr %i.ce, align 4, !tbaa !3  ; 2 uses
  %i.eh = load ptr, ptr %i.cf, align 8, !tbaa !310
  %i.ei = load ptr, ptr %i.cg, align 8, !tbaa !310
  %i.ej = sext i32 %i.dh to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !3
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3  ; 2 uses
  %i.ep = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.eg, i32 %i.eo) ; 2 uses
  %i.eq = extractvalue { i32, i1 } %i.ep, 1
  br i1 %i.eq, label %.split.us, label %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i, !prof !49

.split.us:                                        ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us
  %.us-phi = phi i32 [ %i.cj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us ], [ %i.eg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ]
  %.us-phi51 = phi i32 [ %i.cp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us ], [ %i.eo, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !542
  store ptr @.str.34, ptr %4, align 16, !tbaa !30, !noalias !542
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.us-phi, ptr %i.er, align 16, !tbaa !30, !alias.scope !545, !noalias !542
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %.us-phi51, ptr %i.es, align 16, !tbaa !30, !alias.scope !545, !noalias !542
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.37, i64 20, i64 284, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !542
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusIiEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.37) #28
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.split.us
  unreachable

bb.p:                                             ; preds = %.split.us
  %i.et = landingpad { ptr, i32 }
          cleanup
  %i.eu = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !30
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %i.et

_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.ez = extractvalue { i32, i1 } %i.ep, 0
  store i32 %i.ez, ptr %i.ce, align 4, !tbaa !3
  br label %_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit

_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit: ; preds = %bb.l, %bb.n, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i
  %i.fa = add i64 %.01519.i, -1
  %i.fb = and i64 %i.fa, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.fb, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !540

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %bb.j, %_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit, %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i.us, %bb.h, %bb.i
  %i.fc = add nsw i32 %i.bm, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.fc, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !548

bb.q:                                             ; preds = %._crit_edge
  %i.fd = ashr i32 %1, 6
  %i.fe = and i32 %1, 63
  %i.ff = zext nneg i32 %i.fe to i64
  %notmask.i42 = shl nsw i64 -1, %i.ff
  %i.fg = xor i64 %notmask.i42, -1
  %i.fh = load i8, ptr %2, align 8, !tbaa !519, !range !71, !noundef !72
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !523
  %i.fk = sext i32 %i.fd to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !135
  %i.fn = xor i8 %i.fh, 1
  %i.fo = zext nneg i8 %i.fn to i64
  %i.fp = sub nsw i64 0, %i.fo
  %i.fq = xor i64 %i.fm, %i.fp
  %i.fr = and i64 %i.fq, %i.fg                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fr, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.q
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fr, %.preheader.i44 ], [ %i.fx, %bb.r ] ; 3 uses
  %i.ft = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fu = trunc nuw nsw i64 %i.ft to i32
  %i.fv = or disjoint i32 %i.d, %i.fu
  call void @_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %i.fs, i32 noundef %i.fv)
  %i.fw = add nsw i64 %.011.i45, -1
  %i.fx = and i64 %i.fw, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fx, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.r, !llvm.loop !539

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.r, %bb.d, %bb.q, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #19

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind noalias writable sret(%"class.boost::intrusive_ptr") align 8 %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(2) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox17SelectivityVector9intersectERKS1_:bb.a
  %i.q = zext nneg i32 %i.p to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.q
  %i.r = sub nsw i32 %i.l, %i.e                   ; 2 uses
  %i.s = zext nneg i32 %i.r to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.s
  %i.t = xor i64 %notmask.i.i.i.i.i, -1
  %i.u = sub nsw i32 64, %i.r
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl i64 %i.t, %i.v
  %i.x = sext i32 %i.o to i64                     ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.x ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !135
  %.not.i = xor i64 %i.w, -1
  %i.aa = or i64 %notmask.i.i.i.i, %.not.i
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.x
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !135
  %i.ad = or i64 %i.aa, %i.ac
  %i.ae = and i64 %i.ad, %i.z
  store i64 %i.ae, ptr %i.y, align 8, !tbaa !135
  br label %_ZN8facebook5velox4bits7andBitsEPmPKmii.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i.i.i = icmp eq i32 %i.e, %i.l
  br i1 %.not32.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = sdiv i32 %i.e, 64
  %i.ag = sub nsw i32 %i.l, %i.e                  ; 2 uses
  %i.ah = zext nneg i32 %i.ag to i64
  %notmask.i.i35.i.i.i = shl nsw i64 -1, %i.ah
  %i.ai = xor i64 %notmask.i.i35.i.i.i, -1
  %i.aj = sub nsw i32 64, %i.ag
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl i64 %i.ai, %i.ak
  %i.am = sext i32 %i.af to i64                   ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.am ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !135
  %i.ap = xor i64 %i.al, -1
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.am
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !135
  %i.as = or i64 %i.ar, %i.ap
  %i.at = and i64 %i.as, %i.ao
  store i64 %i.at, ptr %i.an, align 8, !tbaa !135
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.au = add nsw i32 %i.l, 64                    ; 2 uses
  %.not3337.i.i.i = icmp sgt i32 %i.au, %i.m
  br i1 %.not3337.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.f
  %.not34.i.i.i = icmp eq i32 %.sroa.speculated, %i.m
  br i1 %.not34.i.i.i, label %_ZN8facebook5velox4bits7andBitsEPmPKmii.exit, label %bb.g

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %i.av = phi i32 [ %i.bd, %.lr.ph.i.i.i ], [ %i.au, %bb.f ] ; 2 uses
  %.038.i.i.i = phi i32 [ %i.av, %.lr.ph.i.i.i ], [ %i.l, %bb.f ]
  %i.aw = sdiv i32 %.038.i.i.i, 64
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ax ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !135
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ax
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !135
  %i.bc = and i64 %i.bb, %i.az
  store i64 %i.bc, ptr %i.ay, align 8, !tbaa !135
  %i.bd = add nsw i32 %i.av, 64                   ; 2 uses
  %.not33.i.i.i = icmp sgt i32 %i.bd, %i.m
  br i1 %.not33.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !438

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.be = ashr i32 %.sroa.speculated, 6
  %i.bf = and i32 %.sroa.speculated, 63
  %i.bg = zext nneg i32 %i.bf to i64
  %notmask.i36.i.i.i = shl nsw i64 -1, %i.bg
  %i.bh = sext i32 %i.be to i64                   ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bh ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !135
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bh
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !135
  %i.bm = or i64 %i.bl, %notmask.i36.i.i.i
  %i.bn = and i64 %i.bm, %i.bj
  store i64 %i.bn, ptr %i.bi, align 8, !tbaa !135
  br label %_ZN8facebook5velox4bits7andBitsEPmPKmii.exit

_ZN8facebook5velox4bits7andBitsEPmPKmii.exit:     ; preds = %bb.a, %bb.c, %._crit_edge.i.i.i, %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !290 ; 6 uses
  %.not.i.i.i3 = icmp sgt i32 %i.bp, 0
  br i1 %.not.i.i.i3, label %bb.h, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i

bb.h:                                             ; preds = %_ZN8facebook5velox4bits7andBitsEPmPKmii.exit
  %i.bq = and i32 %i.bp, 2147483584               ; 4 uses
  %i.br = zext nneg i32 %i.bq to i64
  %.not37.i.i.not.i16.not = icmp eq i32 %i.bq, 0
  br i1 %.not37.i.i.not.i16.not, label %.critedge.i.i.i, label %.lr.ph

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i: ; preds = %.lr.ph
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i17, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.br
  br i1 %.not37.i.i.not.i, label %.lr.ph, label %.critedge.i.i.i, !llvm.loop !372

.lr.ph:                                           ; preds = %bb.h, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i
  %indvars.iv.i17 = phi i64 [ %indvars.iv.next.i, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i ], [ 0, %bb.h ] ; 3 uses
  %i.bs = lshr exact i64 %indvars.iv.i17, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !135 ; 2 uses
  %.not.i42.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not.i42.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, !llvm.loop !372

.critedge.i.i.i:                                  ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, %bb.h
  %.not38.i.i.i = icmp eq i32 %i.bp, %i.bq
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %.critedge.i.i.i
  %i.bv = lshr i32 %i.bp, 6
  %i.bw = and i32 %i.bp, 63
  %i.bx = zext nneg i32 %i.bw to i64
  %notmask.i43.i.i.i = shl nsw i64 -1, %i.bx
  %i.by = xor i64 %notmask.i43.i.i.i, -1
  %i.bz = zext nneg i32 %i.bv to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !135
  %i.cc = and i64 %i.cb, %i.by                    ; 2 uses
  %.not.i44.i.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i44.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i: ; preds = %bb.i, %.critedge.i.i.i, %_ZN8facebook5velox4bits7andBitsEPmPKmii.exit
  store i32 0, ptr %i.d, align 4, !tbaa !291
  store i32 0, ptr %i.f, align 8, !tbaa !181
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 256, ptr %i.cd, align 4
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i: ; preds = %.lr.ph
  %i.ce = trunc nuw nsw i64 %indvars.iv.i17 to i32
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, %bb.i
  %.sink67.i.i.i = phi i64 [ %i.cc, %bb.i ], [ %i.bu, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %.sink65.i.i.i = phi i32 [ %i.bq, %bb.i ], [ %i.ce, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %i.cf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sink67.i.i.i, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = or disjoint i32 %.sink65.i.i.i, %i.cg   ; 2 uses
  store i32 %i.ch, ptr %i.d, align 4, !tbaa !291
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 -1, ptr %i.a, align 4, !tbaa !3
  store ptr %i.b, ptr %2, align 8, !tbaa !373
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.ci, align 8, !tbaa !310
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.cj, align 8, !tbaa !375
  store ptr %i.b, ptr %3, align 8, !tbaa !376
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.ck, align 8, !tbaa !310
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 1, ptr %i.cl, align 8, !tbaa !378
  %i.cm = call noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %i.ch, i32 noundef %i.bp, ptr noundef nonnull byval(%class.anon.589) align 8 %2, ptr noundef nonnull byval(%class.anon.591) align 8 %3) ; 0 uses
  %i.cn = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.co = add nsw i32 %i.cn, 1
  store i32 %i.co, ptr %i.f, align 8, !tbaa !181
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 0, ptr %i.cp, align 1, !tbaa !288
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #21 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !2604, !range !71, !noundef !72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2607
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !135
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %.val = load ptr, ptr %i.l, align 8, !tbaa !2608 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val11 = load ptr, ptr %i.n, align 8, !tbaa !2609 ; 2 uses
  %i.o = getelementptr i8, ptr %.val11, i64 24
  %.val11.val = load ptr, ptr %i.o, align 8, !tbaa !247
  %i.p = getelementptr i8, ptr %.val11, i64 40
  %.val11.val12 = load ptr, ptr %i.p, align 8, !tbaa !251
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 37
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit
  %.013 = phi i64 [ %i.k, %.preheader ], [ %i.bn, %_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit ] ; 3 uses
  %i.r = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.013, i1 true)
  %3 = trunc nuw nsw i64 %i.r to i32
  %4 = or disjoint i32 %i.m, %3
  %5 = sext i32 %4 to i64                         ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %.val11.val, i64 %5
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3    ; 6 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %.val11.val12, i64 %5
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3    ; 3 uses
  %i.w = add nsw i32 %i.v, %i.t                   ; 5 uses
  %i.x = icmp eq i32 %i.v, 0
  br i1 %i.x, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %.val, align 8, !tbaa !289 ; 3 uses
  %.not.i.i.i.i = icmp sgt i32 %i.v, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.z = add i32 %i.t, 63                         ; 2 uses
  %i.aa = srem i32 %i.z, 64
  %i.ab = sub nsw i32 %i.z, %i.aa                 ; 6 uses
  %i.ac = and i32 %i.w, -64                       ; 4 uses
  %i.ad = icmp slt i32 %i.ac, %i.ab
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = and i32 %i.w, 63
  %i.af = zext nneg i32 %i.ae to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.af
  %i.ag = xor i64 %notmask.i.i.i.i.i, -1
  %i.ah = sub nsw i32 %i.ab, %i.t                 ; 2 uses
  %i.ai = zext nneg i32 %i.ah to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.ai
  %i.aj = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.ak = sub nsw i32 64, %i.ah
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl i64 %i.aj, %i.al
  %i.an = and i64 %i.am, %i.ag
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i

bb.f:                                             ; preds = %bb.d
  %.not32.i.i.i.i = icmp eq i32 %i.t, %i.ab
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = sdiv i32 %i.t, 64
  %i.ap = sub nsw i32 %i.ab, %i.t                 ; 2 uses
  %i.aq = zext nneg i32 %i.ap to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.aq
  %i.ar = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.as = sub nsw i32 64, %i.ap
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl i64 %i.ar, %i.at
  %i.av = sext i32 %i.ao to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.av ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !135
  %i.ay = or i64 %i.ax, %i.au
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !135
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.az = add nsw i32 %i.ab, 64                   ; 2 uses
  %.not3347.i.i.i.i = icmp sgt i32 %i.az, %i.ac
  br i1 %.not3347.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i
  %.not34.i.i.i.i = icmp eq i32 %i.w, %i.ac
  br i1 %.not34.i.i.i.i, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i, label %bb.h

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ba = phi i32 [ %i.be, %.lr.ph.i.i.i.i ], [ %i.az, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i ] ; 2 uses
  %.048.i.i.i.i = phi i32 [ %i.ba, %.lr.ph.i.i.i.i ], [ %i.ab, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i ]
  %i.bb = sdiv i32 %.048.i.i.i.i, 64
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.bc
  store i64 -1, ptr %i.bd, align 8, !tbaa !135
  %i.be = add nsw i32 %i.ba, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.be, %i.ac
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !403

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bf = and i32 %i.w, 63
  %i.bg = zext nneg i32 %i.bf to i64
  %notmask.i37.i.i.i.i = shl nsw i64 -1, %i.bg
  %i.bh = xor i64 %notmask.i37.i.i.i.i, -1
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i: ; preds = %bb.h, %bb.e
  %.sink8.i = phi i64 [ %i.bh, %bb.h ], [ %i.an, %bb.e ]
  %.sink.i = ashr i32 %i.w, 6
  %i.bi = sext i32 %.sink.i to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.bi ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !135
  %i.bl = or i64 %i.bk, %.sink8.i
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !135
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i:  ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i, %._crit_edge.i.i.i.i, %bb.c
  store i8 0, ptr %i.q, align 1, !tbaa !288
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit

_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit: ; preds = %bb.b, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i
  %i.bm = add i64 %.013, -1
  %i.bn = and i64 %i.bm, %.013                    ; 2 uses
  %.not10 = icmp eq i64 %i.bn, 0
  br i1 %.not10, label %.loopexit, label %bb.b, !llvm.loop !2610

.loopexit:                                        ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.589) align 8 %2, ptr noundef byval(%class.anon.591) align 8 %3) local_unnamed_addr #11 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 5 uses
  %i.d = and i32 %1, -64                          ; 3 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !375, !range !71, !noundef !72
  %i.s = load ptr, ptr %2, align 8, !tbaa !373
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !135
  %i.w = xor i8 %i.r, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = or i32 %1, 63
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = sub nuw nsw i32 %i.ab, %i.ad
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

bb.e:                                             ; preds = %bb.b
  %.not35 = icmp eq i32 %1, %i.d
  br i1 %.not35, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = ashr i32 %1, 6
  %i.ag = and i32 %1, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %notmask.i38 = shl nsw i64 -1, %i.ah
  %i.ai = xor i64 %notmask.i38, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !375, !range !71, !noundef !72
  %i.al = load ptr, ptr %2, align 8, !tbaa !373
  %i.am = sext i32 %i.af to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !135
  %i.ap = xor i8 %i.ak, 1
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = xor i64 %i.ao, %i.ar
  %i.at = and i64 %i.as, %i.ai                    ; 2 uses
  %.not.i39 = icmp eq i64 %i.at, 0
  br i1 %.not.i39, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40: ; preds = %bb.f
  %i.au = or i32 %1, 63
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.at, i1 true)
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = sub nuw nsw i32 %i.au, %i.aw
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread: ; preds = %bb.f, %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.az = load i8, ptr %i.ay, align 8, !range !71
  %i.ba = load ptr, ptr %3, align 8
  %i.bb = xor i8 %i.az, 1
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = sub nsw i64 0, %i.bc                    ; 2 uses
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit: ; preds = %bb.g, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread
  %.0.in = phi i32 [ %i.d, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread ], [ %.0, %bb.g ] ; 2 uses
  %.0 = add nsw i32 %.0.in, -64                   ; 3 uses
  %.not36 = icmp slt i32 %.0, %i.c
  br i1 %.not36, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit
end_hunk_2
