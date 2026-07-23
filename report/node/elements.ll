inline.NumInlined: 32791
inline.NumDeleted: 4746
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 1718
loop-unroll.NumUnrolled: 1778
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE26CopyElementsFromTypedArrayENS0_6TaggedINS0_12JSTypedArrayEEES7_mm:bb.a
  br i1 %.not.us.i.us.i546, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE24CopyBetweenBackingStoresILS3_18EEEvPNS1_21TypedArrayCTypeHelperIXT_EE4typeEPfmNS1_14IsSharedBufferE.exit, label %.lr.ph.split.us.i.us.i540, !llvm.loop !1407

.lr.ph.split.us.preheader.i.split.i524:           ; preds = %.lr.ph.split.us.preheader.i.i523
  br i1 %i.bxg, label %.lr.ph.split.us.i.us4.i532, label %.lr.ph.split.us.i.i525

.lr.ph.split.us.i.us4.i532:                       ; preds = %.lr.ph.split.us.preheader.i.split.i524, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us8.i536
  %.014.us.i.us5.i533 = phi ptr [ %i.byk, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us8.i536 ], [ %.0, %.lr.ph.split.us.preheader.i.split.i524 ] ; 3 uses
  %.0913.us.i.us6.i534 = phi ptr [ %i.byl, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us8.i536 ], [ %i.dx, %.lr.ph.split.us.preheader.i.split.i524 ] ; 2 uses
  %.01012.us.i.us7.i535 = phi i64 [ %i.byj, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us8.i536 ], [ %2, %.lr.ph.split.us.preheader.i.split.i524 ]
  %i.bya = load atomic i32, ptr %.014.us.i.us5.i533 monotonic, align 4
  %.sroa.0.0.insert.ext.i.us.i.us.i = zext i32 %i.bya to i64
  %i.byb = getelementptr inbounds nuw i8, ptr %.014.us.i.us5.i533, i64 4
  %i.byc = load atomic i32, ptr %i.byb monotonic, align 4
  %.sroa.0.4.insert.ext.i.us.i.us.i = zext i32 %i.byc to i64
  %.sroa.0.4.insert.shift.i.us.i.us.i = shl nuw i64 %.sroa.0.4.insert.ext.i.us.i.us.i, 32
  %.sroa.0.4.insert.insert.i.us.i.us.i = or disjoint i64 %.sroa.0.4.insert.shift.i.us.i.us.i, %.sroa.0.0.insert.ext.i.us.i.us.i
  %i.byd = bitcast i64 %.sroa.0.4.insert.insert.i.us.i.us.i to double ; 5 uses
  %i.bye = fcmp ogt double %i.byd, f0x47EFFFFFE0000000
  br i1 %i.bye, label %bb.dm, label %bb.di

bb.di:                                            ; preds = %.lr.ph.split.us.i.us4.i532
  %i.byf = fcmp olt double %i.byd, f0xC7EFFFFFE0000000
  br i1 %i.byf, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.byg = fptrunc double %i.byd to float
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us8.i536

bb.dk:                                            ; preds = %bb.di
  %i.byh = fcmp ult double %i.byd, f0xC7EFFFFFEFFFFFFF
  br i1 %i.byh, label %bb.dl, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us8.i536

bb.dl:                                            ; preds = %bb.dk
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us8.i536

bb.dm:                                            ; preds = %.lr.ph.split.us.i.us4.i532
  %i.byi = fcmp ugt double %i.byd, f0x47EFFFFFEFFFFFFF
  br i1 %i.byi, label %bb.dn, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us8.i536

bb.dn:                                            ; preds = %bb.dm
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us8.i536

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us8.i536: ; preds = %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj
  %.0.i.i.us.i.us9.i537 = phi float [ %i.byg, %bb.dj ], [ +inf, %bb.dn ], [ f0x7F7FFFFF, %bb.dm ], [ -inf, %bb.dl ], [ f0xFF7FFFFF, %bb.dk ]
  store atomic float %.0.i.i.us.i.us9.i537, ptr %.0913.us.i.us6.i534 monotonic, align 4
  %i.byj = add i64 %.01012.us.i.us7.i535, -1      ; 2 uses
  %i.byk = getelementptr inbounds nuw i8, ptr %.014.us.i.us5.i533, i64 8
  %i.byl = getelementptr inbounds nuw i8, ptr %.0913.us.i.us6.i534, i64 4
  %.not.us.i.us11.i538 = icmp eq i64 %i.byj, 0
  br i1 %.not.us.i.us11.i538, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE24CopyBetweenBackingStoresILS3_18EEEvPNS1_21TypedArrayCTypeHelperIXT_EE4typeEPfmNS1_14IsSharedBufferE.exit, label %.lr.ph.split.us.i.us4.i532, !llvm.loop !1407

.lr.ph.split.us.i.i525:                           ; preds = %.lr.ph.split.us.preheader.i.split.i524, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i529
  %.014.us.i.i526 = phi ptr [ %i.byx, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i529 ], [ %.0, %.lr.ph.split.us.preheader.i.split.i524 ] ; 3 uses
  %.0913.us.i.i527 = phi ptr [ %i.byy, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i529 ], [ %i.dx, %.lr.ph.split.us.preheader.i.split.i524 ] ; 2 uses
  %.01012.us.i.i528 = phi i64 [ %i.byw, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i529 ], [ %2, %.lr.ph.split.us.preheader.i.split.i524 ]
  %i.bym = load atomic i32, ptr %.014.us.i.i526 monotonic, align 4
  %.sroa.0.0.insert.ext.i.us.i.i = zext i32 %i.bym to i64
  %i.byn = getelementptr inbounds nuw i8, ptr %.014.us.i.i526, i64 4
  %i.byo = load atomic i32, ptr %i.byn monotonic, align 4
  %.sroa.0.4.insert.ext.i.us.i.i = zext i32 %i.byo to i64
  %.sroa.0.4.insert.shift.i.us.i.i = shl nuw i64 %.sroa.0.4.insert.ext.i.us.i.i, 32
  %.sroa.0.4.insert.insert.i.us.i.i = or disjoint i64 %.sroa.0.4.insert.shift.i.us.i.i, %.sroa.0.0.insert.ext.i.us.i.i
  %i.byp = bitcast i64 %.sroa.0.4.insert.insert.i.us.i.i to double ; 5 uses
  %i.byq = fcmp ogt double %i.byp, f0x47EFFFFFE0000000
  br i1 %i.byq, label %bb.ds, label %bb.do

bb.do:                                            ; preds = %.lr.ph.split.us.i.i525
  %i.byr = fcmp olt double %i.byp, f0xC7EFFFFFE0000000
  br i1 %i.byr, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.bys = fptrunc double %i.byp to float
  %i.byt = bitcast float %i.bys to i32
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i529

bb.dq:                                            ; preds = %bb.do
  %i.byu = fcmp ult double %i.byp, f0xC7EFFFFFEFFFFFFF
  br i1 %i.byu, label %bb.dr, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i529

bb.dr:                                            ; preds = %bb.dq
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i529

bb.ds:                                            ; preds = %.lr.ph.split.us.i.i525
  %i.byv = fcmp ugt double %i.byp, f0x47EFFFFFEFFFFFFF
  br i1 %i.byv, label %bb.dt, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i529

bb.dt:                                            ; preds = %bb.ds
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i529

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i529: ; preds = %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp
  %.0.i.i.us.i.i530 = phi i32 [ %i.byt, %bb.dp ], [ 2139095040, %bb.dt ], [ 2139095039, %bb.ds ], [ -8388608, %bb.dr ], [ -8388609, %bb.dq ]
  store atomic i32 %.0.i.i.us.i.i530, ptr %.0913.us.i.i527 monotonic, align 4
  %i.byw = add i64 %.01012.us.i.i528, -1          ; 2 uses
  %i.byx = getelementptr inbounds nuw i8, ptr %.014.us.i.i526, i64 8
  %i.byy = getelementptr inbounds nuw i8, ptr %.0913.us.i.i527, i64 4
  %.not.us.i.i531 = icmp eq i64 %i.byw, 0
  br i1 %.not.us.i.i531, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE24CopyBetweenBackingStoresILS3_18EEEvPNS1_21TypedArrayCTypeHelperIXT_EE4typeEPfmNS1_14IsSharedBufferE.exit, label %.lr.ph.split.us.i.i525, !llvm.loop !1407

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7GetImplEPdNS1_14IsSharedBufferE.exit.i.i: ; preds = %.lr.ph.i.i515, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i520
  %.014.i.i516 = phi ptr [ %i.bzf, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i520 ], [ %.0, %.lr.ph.i.i515 ] ; 2 uses
  %.0913.i.i517 = phi ptr [ %i.bzg, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i520 ], [ %i.dx, %.lr.ph.i.i515 ] ; 2 uses
  %.01012.i.i518 = phi i64 [ %i.bze, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i520 ], [ %2, %.lr.ph.i.i515 ]
  %.0.copyload.i.i.i.i519 = load double, ptr %.014.i.i516, align 1 ; 5 uses
  %i.byz = fcmp ogt double %.0.copyload.i.i.i.i519, f0x47EFFFFFE0000000
  br i1 %i.byz, label %bb.du, label %bb.dw

bb.du:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7GetImplEPdNS1_14IsSharedBufferE.exit.i.i
  %i.bza = fcmp ugt double %.0.copyload.i.i.i.i519, f0x47EFFFFFEFFFFFFF
  br i1 %i.bza, label %bb.dv, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i520

bb.dv:                                            ; preds = %bb.du
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i520

bb.dw:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7GetImplEPdNS1_14IsSharedBufferE.exit.i.i
  %i.bzb = fcmp olt double %.0.copyload.i.i.i.i519, f0xC7EFFFFFE0000000
  br i1 %i.bzb, label %bb.dx, label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  %i.bzc = fcmp ult double %.0.copyload.i.i.i.i519, f0xC7EFFFFFEFFFFFFF
  br i1 %i.bzc, label %bb.dy, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i520

bb.dy:                                            ; preds = %bb.dx
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i520

bb.dz:                                            ; preds = %bb.dw
  %i.bzd = fptrunc double %.0.copyload.i.i.i.i519 to float
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i520

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i520: ; preds = %bb.dz, %bb.dy, %bb.dx, %bb.dv, %bb.du
  %.0.i.i.i.i521 = phi float [ %i.bzd, %bb.dz ], [ +inf, %bb.dv ], [ f0x7F7FFFFF, %bb.du ], [ -inf, %bb.dy ], [ f0xFF7FFFFF, %bb.dx ]
  store float %.0.i.i.i.i521, ptr %.0913.i.i517, align 1
  %i.bze = add i64 %.01012.i.i518, -1             ; 2 uses
  %i.bzf = getelementptr inbounds nuw i8, ptr %.014.i.i516, i64 8
  %i.bzg = getelementptr inbounds nuw i8, ptr %.0913.i.i517, i64 4
  %.not.i.i522 = icmp eq i64 %i.bze, 0
  br i1 %.not.i.i522, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE24CopyBetweenBackingStoresILS3_18EEEvPNS1_21TypedArrayCTypeHelperIXT_EE4typeEPfmNS1_14IsSharedBufferE.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7GetImplEPdNS1_14IsSharedBufferE.exit.i.i, !llvm.loop !1407

bb.ea:                                            ; preds = %_ZN2v84base14Relaxed_MemcpyEPVcPVKcm.exit205
  %i.bzh = ptrtoint ptr %.0 to i64
  %i.bzi = ptrtoint ptr %i.dx to i64
  %.not11.i.i.i = icmp eq i64 %2, 0
  br i1 %.not11.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE24CopyBetweenBackingStoresILS3_18EEEvPNS1_21TypedArrayCTypeHelperIXT_EE4typeEPfmNS1_14IsSharedBufferE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ea
  %i.bzj = or i32 %i.eg, %i.eb
  %i.bzk = and i32 %i.bzj, 16
  %.not = icmp eq i32 %i.bzk, 0
  br i1 %.not, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader, label %.lr.ph.split.us.preheader.i.i.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader: ; preds = %.lr.ph.i.i.i
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader1339, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader
  %i.bzl = shl i64 %2, 1
  %scevgep = getelementptr i8, ptr %.0, i64 %i.bzl
  %bound0 = icmp ult ptr %i.dx, %scevgep
  %bound1 = icmp ult ptr %.0, %i.jj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader1339, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 4 uses
  %i.bzm = shl i64 %n.vec, 1
  %i.bzn = getelementptr i8, ptr %.0, i64 %i.bzm
  %i.bzo = shl i64 %n.vec, 2
  %i.bzp = getelementptr i8, ptr %i.dx, i64 %i.bzo
  %i.bzq = and i64 %2, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bzr = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.0, i64 %i.bzr
  %i.bzs = shl i64 %index, 2
  %next.gep960 = getelementptr i8, ptr %i.dx, i64 %i.bzs
  %wide.load = load <4 x i16>, ptr %next.gep, align 1, !alias.scope !1408 ; 2 uses
  %i.bzt = zext <4 x i16> %wide.load to <4 x i32> ; 2 uses
  %i.bzu = shl <4 x i32> %i.bzt, splat (i32 17)   ; 2 uses
  %i.bzv = lshr exact <4 x i32> %i.bzu, splat (i32 4)
  %i.bzw = or disjoint <4 x i32> %i.bzv, splat (i32 1879048192)
  %i.bzx = bitcast <4 x i32> %i.bzw to <4 x float>
  %i.bzy = and <4 x i32> %i.bzt, splat (i32 32767)
  %i.bzz = or disjoint <4 x i32> %i.bzy, splat (i32 1056964608)
  %i.caa = bitcast <4 x i32> %i.bzz to <4 x float>
  %i.cab = icmp ult <4 x i32> %i.bzu, splat (i32 134217728)
  %i.cac = fadd <4 x float> %i.caa, splat (float -5.000000e-01)
  %i.cad = fmul <4 x float> %i.bzx, splat (float 1.925930e-34)
  %i.cae = select <4 x i1> %i.cab, <4 x float> %i.cac, <4 x float> %i.cad
  %i.caf = bitcast <4 x float> %i.cae to <4 x i32>
  %i.cag = sext <4 x i16> %wide.load to <4 x i32>
  %i.cah = and <4 x i32> %i.cag, splat (i32 -2147483648)
  %i.cai = or <4 x i32> %i.cah, %i.caf
  %i.caj = bitcast <4 x i32> %i.cai to <4 x float> ; 4 uses
  %i.cak = fpext <4 x float> %i.caj to <4 x double> ; 2 uses
  %i.cal = fcmp ogt <4 x float> %i.caj, splat (float f0x7F7FFFFF) ; 3 uses
  %i.cam = fcmp olt <4 x float> %i.caj, splat (float f0xFF7FFFFF) ; 2 uses
  %i.can = fcmp oge <4 x double> %i.cak, splat (double f0xC7EFFFFFEFFFFFFF)
  %i.cao = fcmp ugt <4 x double> %i.cak, splat (double f0x47EFFFFFEFFFFFFF) ; 2 uses
  %i.cap = and <4 x i1> %i.cal, %i.cao
  %4 = xor <4 x i1> %i.cao, splat (i1 true)
  %5 = select <4 x i1> %i.cal, <4 x i1> %4, <4 x i1> zeroinitializer
  %i.caq = xor <4 x i1> %i.cam, %i.cal
  %6 = and <4 x i1> %i.cam, %i.can
  %predphi = select <4 x i1> %6, <4 x float> splat (float f0xFF7FFFFF), <4 x float> splat (float -inf)
  %predphi961 = select <4 x i1> %i.caq, <4 x float> %predphi, <4 x float> %i.caj
  %predphi962 = select <4 x i1> %i.cap, <4 x float> splat (float +inf), <4 x float> %predphi961
  %predphi963 = select <4 x i1> %5, <4 x float> splat (float f0x7F7FFFFF), <4 x float> %predphi962
  store <4 x float> %predphi963, ptr %next.gep960, align 1, !alias.scope !1411, !noalias !1408
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.car = icmp eq i64 %index.next, %n.vec
  br i1 %i.car, label %middle.block, label %vector.body, !llvm.loop !1413

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE24CopyBetweenBackingStoresILS3_18EEEvPNS1_21TypedArrayCTypeHelperIXT_EE4typeEPfmNS1_14IsSharedBufferE.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader1339

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader1339: ; preds = %vector.memcheck, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader, %middle.block
  %.014.i.i.i.ph = phi ptr [ %.0, %vector.memcheck ], [ %.0, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader ], [ %i.bzn, %middle.block ]
  %.0913.i.i.i.ph = phi ptr [ %i.dx, %vector.memcheck ], [ %i.dx, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader ], [ %i.bzp, %middle.block ]
  %.01012.i.i.i.ph = phi i64 [ %2, %vector.memcheck ], [ %2, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader ], [ %i.bzq, %middle.block ]
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i

.lr.ph.split.us.preheader.i.i.i:                  ; preds = %.lr.ph.i.i.i
  %i.cas = and i64 %i.bzh, 1
  %i.cat = icmp eq i64 %i.cas, 0
  br i1 %i.cat, label %.lr.ph.split.us.preheader.i.split.i.i, label %.split.us.i.i.i

.lr.ph.split.us.preheader.i.split.i.i:            ; preds = %.lr.ph.split.us.preheader.i.i.i
  %i.cau = and i64 %i.bzi, 3
  %i.cav = icmp eq i64 %i.cau, 0
  br i1 %i.cav, label %.lr.ph.split.us.i.us.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.us.i.i:                         ; preds = %.lr.ph.split.us.preheader.i.split.i.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us.i.i
  %.014.us.i.us.i.i = phi ptr [ %i.cbs, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us.i.i ], [ %.0, %.lr.ph.split.us.preheader.i.split.i.i ] ; 2 uses
  %.0913.us.i.us.i.i = phi ptr [ %i.cbt, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us.i.i ], [ %i.dx, %.lr.ph.split.us.preheader.i.split.i.i ] ; 2 uses
  %.01012.us.i.us.i.i = phi i64 [ %i.cbr, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us.i.i ], [ %2, %.lr.ph.split.us.preheader.i.split.i.i ]
  %i.caw = load atomic i16, ptr %.014.us.i.us.i.i acquire, align 2 ; 2 uses
  %i.cax = zext i16 %i.caw to i32                 ; 2 uses
  %i.cay = shl i32 %i.cax, 17                     ; 2 uses
  %i.caz = lshr exact i32 %i.cay, 4
  %i.cba = or disjoint i32 %i.caz, 1879048192
  %i.cbb = bitcast i32 %i.cba to float
  %i.cbc = and i32 %i.cax, 32767
  %i.cbd = or disjoint i32 %i.cbc, 1056964608
  %i.cbe = bitcast i32 %i.cbd to float
  %i.cbf = icmp ult i32 %i.cay, 134217728
  %i.cbg = fadd float %i.cbe, -5.000000e-01
  %i.cbh = fmul float %i.cbb, 1.925930e-34
  %.v.i.us.i.us.i.i = select i1 %i.cbf, float %i.cbg, float %i.cbh
  %i.cbi = bitcast float %.v.i.us.i.us.i.i to i32
  %.signext.i.us.i.us.i.i = sext i16 %i.caw to i32
  %i.cbj = and i32 %.signext.i.us.i.us.i.i, -2147483648
  %i.cbk = or i32 %i.cbj, %i.cbi
  %i.cbl = bitcast i32 %i.cbk to float            ; 4 uses
  %i.cbm = fpext float %i.cbl to double           ; 2 uses
  %i.cbn = fcmp ogt float %i.cbl, f0x7F7FFFFF
  br i1 %i.cbn, label %bb.ee, label %bb.eb

bb.eb:                                            ; preds = %.lr.ph.split.us.i.us.i.i
  %i.cbo = fcmp olt float %i.cbl, f0xFF7FFFFF
  br i1 %i.cbo, label %bb.ec, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us.i.i

bb.ec:                                            ; preds = %bb.eb
  %i.cbp = fcmp ult double %i.cbm, f0xC7EFFFFFEFFFFFFF
  br i1 %i.cbp, label %bb.ed, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us.i.i

bb.ed:                                            ; preds = %bb.ec
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us.i.i

bb.ee:                                            ; preds = %.lr.ph.split.us.i.us.i.i
  %i.cbq = fcmp ugt double %i.cbm, f0x47EFFFFFEFFFFFFF
  br i1 %i.cbq, label %bb.ef, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us.i.i

bb.ef:                                            ; preds = %bb.ee
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us.i.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us.i.i: ; preds = %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb
  %.0.i.i.us.i.us.i.i = phi float [ f0xFF7FFFFF, %bb.ec ], [ +inf, %bb.ef ], [ f0x7F7FFFFF, %bb.ee ], [ -inf, %bb.ed ], [ %i.cbl, %bb.eb ]
  store atomic float %.0.i.i.us.i.us.i.i, ptr %.0913.us.i.us.i.i monotonic, align 4
  %i.cbr = add i64 %.01012.us.i.us.i.i, -1        ; 2 uses
  %i.cbs = getelementptr inbounds nuw i8, ptr %.014.us.i.us.i.i, i64 2
  %i.cbt = getelementptr inbounds nuw i8, ptr %.0913.us.i.us.i.i, i64 4
  %.not.us.i.us.i.i = icmp eq i64 %i.cbr, 0
  br i1 %.not.us.i.us.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE24CopyBetweenBackingStoresILS3_18EEEvPNS1_21TypedArrayCTypeHelperIXT_EE4typeEPfmNS1_14IsSharedBufferE.exit, label %.lr.ph.split.us.i.us.i.i, !llvm.loop !1414

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.split.us.preheader.i.split.i.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i.i
  %.014.us.i.i.i = phi ptr [ %i.ccq, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i.i ], [ %.0, %.lr.ph.split.us.preheader.i.split.i.i ] ; 2 uses
  %.0913.us.i.i.i = phi ptr [ %i.ccr, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i.i ], [ %i.dx, %.lr.ph.split.us.preheader.i.split.i.i ] ; 2 uses
  %.01012.us.i.i.i = phi i64 [ %i.ccp, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i.i ], [ %2, %.lr.ph.split.us.preheader.i.split.i.i ]
  %i.cbu = load atomic i16, ptr %.014.us.i.i.i acquire, align 2 ; 2 uses
  %i.cbv = zext i16 %i.cbu to i32                 ; 2 uses
  %i.cbw = shl i32 %i.cbv, 17                     ; 2 uses
  %i.cbx = lshr exact i32 %i.cbw, 4
  %i.cby = or disjoint i32 %i.cbx, 1879048192
  %i.cbz = bitcast i32 %i.cby to float
  %i.cca = and i32 %i.cbv, 32767
  %i.ccb = or disjoint i32 %i.cca, 1056964608
  %i.ccc = bitcast i32 %i.ccb to float
  %i.ccd = icmp ult i32 %i.cbw, 134217728
  %i.cce = fadd float %i.ccc, -5.000000e-01
  %i.ccf = fmul float %i.cbz, 1.925930e-34
  %.v.i.us.i.i.i = select i1 %i.ccd, float %i.cce, float %i.ccf
  %i.ccg = bitcast float %.v.i.us.i.i.i to i32
  %.signext.i.us.i.i.i = sext i16 %i.cbu to i32
  %i.cch = and i32 %.signext.i.us.i.i.i, -2147483648
  %i.cci = or i32 %i.cch, %i.ccg                  ; 2 uses
  %i.ccj = bitcast i32 %i.cci to float            ; 3 uses
  %i.cck = fpext float %i.ccj to double           ; 2 uses
  %i.ccl = fcmp ogt float %i.ccj, f0x7F7FFFFF
  br i1 %i.ccl, label %bb.ej, label %bb.eg

bb.eg:                                            ; preds = %.lr.ph.split.us.i.i.i
  %i.ccm = fcmp olt float %i.ccj, f0xFF7FFFFF
  br i1 %i.ccm, label %bb.eh, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i.i

bb.eh:                                            ; preds = %bb.eg
  %i.ccn = fcmp ult double %i.cck, f0xC7EFFFFFEFFFFFFF
  br i1 %i.ccn, label %bb.ei, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i.i

bb.ei:                                            ; preds = %bb.eh
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i.i

bb.ej:                                            ; preds = %.lr.ph.split.us.i.i.i
  %i.cco = fcmp ugt double %i.cck, f0x47EFFFFFEFFFFFFF
  br i1 %i.cco, label %bb.ek, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i.i

bb.ek:                                            ; preds = %bb.ej
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i.i: ; preds = %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg
  %.0.i.i.us.i.i.i = phi i32 [ -8388609, %bb.eh ], [ 2139095040, %bb.ek ], [ 2139095039, %bb.ej ], [ -8388608, %bb.ei ], [ %i.cci, %bb.eg ]
  store atomic i32 %.0.i.i.us.i.i.i, ptr %.0913.us.i.i.i monotonic, align 4
  %i.ccp = add i64 %.01012.us.i.i.i, -1           ; 2 uses
  %i.ccq = getelementptr inbounds nuw i8, ptr %.014.us.i.i.i, i64 2
  %i.ccr = getelementptr inbounds nuw i8, ptr %.0913.us.i.i.i, i64 4
  %.not.us.i.i.i = icmp eq i64 %i.ccp, 0
  br i1 %.not.us.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE24CopyBetweenBackingStoresILS3_18EEEvPNS1_21TypedArrayCTypeHelperIXT_EE4typeEPfmNS1_14IsSharedBufferE.exit, label %.lr.ph.split.us.i.i.i, !llvm.loop !1414

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i: ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader1339, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i.i
  %.014.i.i.i = phi ptr [ %i.cdn, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i.i ], [ %.014.i.i.i.ph, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader1339 ] ; 2 uses
  %.0913.i.i.i = phi ptr [ %i.cdo, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i.i ], [ %.0913.i.i.i.ph, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader1339 ] ; 2 uses
  %.01012.i.i.i = phi i64 [ %i.cdm, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i.i ], [ %.01012.i.i.i.ph, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader1339 ]
  %.0.copyload.i.i.i.i.i = load i16, ptr %.014.i.i.i, align 1 ; 2 uses
  %i.ccs = zext i16 %.0.copyload.i.i.i.i.i to i32 ; 2 uses
  %i.cct = shl i32 %i.ccs, 17                     ; 2 uses
  %i.ccu = lshr exact i32 %i.cct, 4
  %i.ccv = or disjoint i32 %i.ccu, 1879048192
  %i.ccw = bitcast i32 %i.ccv to float
  %i.ccx = and i32 %i.ccs, 32767
  %i.ccy = or disjoint i32 %i.ccx, 1056964608
  %i.ccz = bitcast i32 %i.ccy to float
  %i.cda = icmp ult i32 %i.cct, 134217728
  %i.cdb = fadd float %i.ccz, -5.000000e-01
  %i.cdc = fmul float %i.ccw, 1.925930e-34
  %.v.i.i.i.i = select i1 %i.cda, float %i.cdb, float %i.cdc
  %i.cdd = bitcast float %.v.i.i.i.i to i32
  %.signext.i.i.i.i = sext i16 %.0.copyload.i.i.i.i.i to i32
  %i.cde = and i32 %.signext.i.i.i.i, -2147483648
  %i.cdf = or i32 %i.cde, %i.cdd
  %i.cdg = bitcast i32 %i.cdf to float            ; 4 uses
  %i.cdh = fpext float %i.cdg to double           ; 2 uses
  %i.cdi = fcmp ogt float %i.cdg, f0x7F7FFFFF
  br i1 %i.cdi, label %bb.el, label %bb.en

.split.us.i.i.i:                                  ; preds = %.lr.ph.split.us.preheader.i.i.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.33) #24
  unreachable

bb.el:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i
  %i.cdj = fcmp ugt double %i.cdh, f0x47EFFFFFEFFFFFFF
  br i1 %i.cdj, label %bb.em, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i.i

bb.em:                                            ; preds = %bb.el
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i.i

bb.en:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i
  %i.cdk = fcmp olt float %i.cdg, f0xFF7FFFFF
  br i1 %i.cdk, label %bb.eo, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i.i

bb.eo:                                            ; preds = %bb.en
  %i.cdl = fcmp ult double %i.cdh, f0xC7EFFFFFEFFFFFFF
  br i1 %i.cdl, label %bb.ep, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i.i

bb.ep:                                            ; preds = %bb.eo
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i.i: ; preds = %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el
  %.0.i.i.i.i.i554 = phi float [ f0xFF7FFFFF, %bb.eo ], [ +inf, %bb.em ], [ f0x7F7FFFFF, %bb.el ], [ -inf, %bb.ep ], [ %i.cdg, %bb.en ]
  store float %.0.i.i.i.i.i554, ptr %.0913.i.i.i, align 1
  %i.cdm = add i64 %.01012.i.i.i, -1              ; 2 uses
  %i.cdn = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 2
  %i.cdo = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 4
  %.not.i.i.i = icmp eq i64 %i.cdm, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE24CopyBetweenBackingStoresILS3_18EEEvPNS1_21TypedArrayCTypeHelperIXT_EE4typeEPfmNS1_14IsSharedBufferE.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i, !llvm.loop !1415

default.unreachable:                              ; preds = %_ZN2v84base14Relaxed_MemcpyEPVcPVKcm.exit205
  unreachable

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE24CopyBetweenBackingStoresILS3_18EEEvPNS1_21TypedArrayCTypeHelperIXT_EE4typeEPfmNS1_14IsSharedBufferE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us.i.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i529, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us8.i536, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us.i544, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us.us.i551, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i520, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us8.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us.us.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i, %.lr.ph.split.us.i.i491.prol.loopexit, %.lr.ph.split.us.i.i491, %.lr.ph.split.us.i.us.i496.prol.loopexit, %.lr.ph.split.us.i.us.i496, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i484.prol.loopexit, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i484, %.lr.ph.split.us.i.i459.prol.loopexit, %.lr.ph.split.us.i.i459, %.lr.ph.split.us.i.us4.i464.prol.loopexit, %.lr.ph.split.us.i.us4.i464, %.lr.ph.split.us.i.us.i470.prol.loopexit, %.lr.ph.split.us.i.us.i470, %.lr.ph.split.us.i.us.us.i475.prol.loopexit, %.lr.ph.split.us.i.us.us.i475, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i451.prol.loopexit, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i451, %.lr.ph.split.us.i.i428.prol.loopexit, %.lr.ph.split.us.i.i428, %.lr.ph.split.us.i.us4.i433.prol.loopexit, %.lr.ph.split.us.i.us4.i433, %.lr.ph.split.us.i.us.i439.prol.loopexit, %.lr.ph.split.us.i.us.i439, %.lr.ph.split.us.i.us.us.i444.prol.loopexit, %.lr.ph.split.us.i.us.us.i444, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i420.prol.loopexit, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i420, %.lr.ph.split.us.i.i408.prol.loopexit, %.lr.ph.split.us.i.i408, %.lr.ph.split.us.i.us.i413.prol.loopexit, %.lr.ph.split.us.i.us.i413, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i399.prol.loopexit, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i399, %.lr.ph.split.us.i.i387.prol.loopexit, %.lr.ph.split.us.i.i387, %.lr.ph.split.us.i.us.i392.prol.loopexit, %.lr.ph.split.us.i.us.i392, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i378.prol.loopexit, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i378, %.lr.ph.split.us.i.i366.prol.loopexit, %.lr.ph.split.us.i.i366, %.lr.ph.split.us.i.us.i371.prol.loopexit, %.lr.ph.split.us.i.us.i371, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i359.prol.loopexit, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i359, %.lr.ph.split.us.i.i347.prol.loopexit, %.lr.ph.split.us.i.i347, %.lr.ph.split.us.i.us.i352.prol.loopexit, %.lr.ph.split.us.i.us.i352, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i340.prol.loopexit, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i340, %.lr.ph.split.us.i.i328.prol.loopexit, %.lr.ph.split.us.i.i328, %.lr.ph.split.us.i.us.i333.prol.loopexit, %.lr.ph.split.us.i.us.i333, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i321.prol.loopexit, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i321, %.lr.ph.split.us.i.i296.prol.loopexit, %.lr.ph.split.us.i.i296, %.lr.ph.split.us.i.us4.i301.prol.loopexit, %.lr.ph.split.us.i.us4.i301, %.lr.ph.split.us.i.us.i307.prol.loopexit, %.lr.ph.split.us.i.us.i307, %.lr.ph.split.us.i.us.us.i312.prol.loopexit, %.lr.ph.split.us.i.us.us.i312, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i288.prol.loopexit, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i288, %.lr.ph.split.us.i.i276.prol.loopexit, %.lr.ph.split.us.i.i276, %.lr.ph.split.us.i.us4.i.prol.loopexit, %.lr.ph.split.us.i.us4.i, %.lr.ph.split.us.i.us.i281.prol.loopexit, %.lr.ph.split.us.i.us.i281, %.lr.ph.split.us.i.us.us.i.prol.loopexit, %.lr.ph.split.us.i.us.us.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i268.prol.loopexit, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i268, %.lr.ph.split.us.i.i256.prol.loopexit, %.lr.ph.split.us.i.i256, %.lr.ph.split.us.i.us.i261.prol.loopexit, %.lr.ph.split.us.i.us.i261, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i247.prol.loopexit, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i247, %.lr.ph.split.us.i.i235.prol.loopexit, %.lr.ph.split.us.i.i235, %.lr.ph.split.us.i.us.i240.prol.loopexit, %.lr.ph.split.us.i.us.i240, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i228.prol.loopexit, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i228, %.lr.ph.split.us.i.i216.prol.loopexit, %.lr.ph.split.us.i.i216, %.lr.ph.split.us.i.us.i221.prol.loopexit, %.lr.ph.split.us.i.us.i221, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i209.prol.loopexit, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i209, %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i, %.lr.ph.split.us.i.us.i.prol.loopexit, %.lr.ph.split.us.i.us.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i.prol.loopexit, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i, %middle.block, %middle.block983, %middle.block1001, %middle.block1020, %middle.block1042, %middle.block1064, %middle.block1086, %middle.block1108, %middle.block1130, %middle.block1149, %middle.block1168, %middle.block1190, %middle.block1212, %middle.block1234, %middle.block1256, %bb.ea, %bb.cv, %bb.bv, %bb.bu, %bb.bp, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.ba, %bb.av, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.bd, %bb.bc, %bb.bb
  %.not.i555 = icmp eq ptr %.sroa.0559.0, null
  br i1 %.not.i555, label %_ZN2v84base14Relaxed_MemcpyEPVcPVKcm.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i556

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i556: ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE24CopyBetweenBackingStoresILS3_18EEEvPNS1_21TypedArrayCTypeHelperIXT_EE4typeEPfmNS1_14IsSharedBufferE.exit
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0559.0) #26
  br label %_ZN2v84base14Relaxed_MemcpyEPVcPVKcm.exit

_ZN2v84base14Relaxed_MemcpyEPVcPVKcm.exit:        ; preds = %.lr.ph44.i.prol.loopexit, %.lr.ph44.i, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i556, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE24CopyBetweenBackingStoresILS3_18EEEvPNS1_21TypedArrayCTypeHelperIXT_EE4typeEPfmNS1_14IsSharedBufferE.exit, %.loopexit.i, %bb.af
end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE26CopyElementsFromTypedArrayENS0_6TaggedINS0_12JSTypedArrayEEES7_mm:bb.a
  br i1 %.not.us.i.us.i546, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE24CopyBetweenBackingStoresILS3_18EEEvPNS1_21TypedArrayCTypeHelperIXT_EE4typeEPfmNS1_14IsSharedBufferE.exit, label %.lr.ph.split.us.i.us.i540, !llvm.loop !3012

.lr.ph.split.us.preheader.i.split.i524:           ; preds = %.lr.ph.split.us.preheader.i.i523
  br i1 %i.bxg, label %.lr.ph.split.us.i.us4.i532, label %.lr.ph.split.us.i.i525

.lr.ph.split.us.i.us4.i532:                       ; preds = %.lr.ph.split.us.preheader.i.split.i524, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us8.i536
  %.014.us.i.us5.i533 = phi ptr [ %i.byk, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us8.i536 ], [ %.0, %.lr.ph.split.us.preheader.i.split.i524 ] ; 3 uses
  %.0913.us.i.us6.i534 = phi ptr [ %i.byl, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us8.i536 ], [ %i.dx, %.lr.ph.split.us.preheader.i.split.i524 ] ; 2 uses
  %.01012.us.i.us7.i535 = phi i64 [ %i.byj, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us8.i536 ], [ %2, %.lr.ph.split.us.preheader.i.split.i524 ]
  %i.bya = load atomic i32, ptr %.014.us.i.us5.i533 monotonic, align 4
  %.sroa.0.0.insert.ext.i.us.i.us.i = zext i32 %i.bya to i64
  %i.byb = getelementptr inbounds nuw i8, ptr %.014.us.i.us5.i533, i64 4
  %i.byc = load atomic i32, ptr %i.byb monotonic, align 4
  %.sroa.0.4.insert.ext.i.us.i.us.i = zext i32 %i.byc to i64
  %.sroa.0.4.insert.shift.i.us.i.us.i = shl nuw i64 %.sroa.0.4.insert.ext.i.us.i.us.i, 32
  %.sroa.0.4.insert.insert.i.us.i.us.i = or disjoint i64 %.sroa.0.4.insert.shift.i.us.i.us.i, %.sroa.0.0.insert.ext.i.us.i.us.i
  %i.byd = bitcast i64 %.sroa.0.4.insert.insert.i.us.i.us.i to double ; 5 uses
  %i.bye = fcmp ogt double %i.byd, f0x47EFFFFFE0000000
  br i1 %i.bye, label %bb.dm, label %bb.di

bb.di:                                            ; preds = %.lr.ph.split.us.i.us4.i532
  %i.byf = fcmp olt double %i.byd, f0xC7EFFFFFE0000000
  br i1 %i.byf, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.byg = fptrunc double %i.byd to float
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us8.i536

bb.dk:                                            ; preds = %bb.di
  %i.byh = fcmp ult double %i.byd, f0xC7EFFFFFEFFFFFFF
  br i1 %i.byh, label %bb.dl, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us8.i536

bb.dl:                                            ; preds = %bb.dk
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us8.i536

bb.dm:                                            ; preds = %.lr.ph.split.us.i.us4.i532
  %i.byi = fcmp ugt double %i.byd, f0x47EFFFFFEFFFFFFF
  br i1 %i.byi, label %bb.dn, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us8.i536

bb.dn:                                            ; preds = %bb.dm
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us8.i536

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us8.i536: ; preds = %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj
  %.0.i.i.us.i.us9.i537 = phi float [ %i.byg, %bb.dj ], [ +inf, %bb.dn ], [ f0x7F7FFFFF, %bb.dm ], [ -inf, %bb.dl ], [ f0xFF7FFFFF, %bb.dk ]
  store atomic float %.0.i.i.us.i.us9.i537, ptr %.0913.us.i.us6.i534 monotonic, align 4
  %i.byj = add i64 %.01012.us.i.us7.i535, -1      ; 2 uses
  %i.byk = getelementptr inbounds nuw i8, ptr %.014.us.i.us5.i533, i64 8
  %i.byl = getelementptr inbounds nuw i8, ptr %.0913.us.i.us6.i534, i64 4
  %.not.us.i.us11.i538 = icmp eq i64 %i.byj, 0
  br i1 %.not.us.i.us11.i538, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE24CopyBetweenBackingStoresILS3_18EEEvPNS1_21TypedArrayCTypeHelperIXT_EE4typeEPfmNS1_14IsSharedBufferE.exit, label %.lr.ph.split.us.i.us4.i532, !llvm.loop !3012

.lr.ph.split.us.i.i525:                           ; preds = %.lr.ph.split.us.preheader.i.split.i524, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i529
  %.014.us.i.i526 = phi ptr [ %i.byx, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i529 ], [ %.0, %.lr.ph.split.us.preheader.i.split.i524 ] ; 3 uses
  %.0913.us.i.i527 = phi ptr [ %i.byy, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i529 ], [ %i.dx, %.lr.ph.split.us.preheader.i.split.i524 ] ; 2 uses
  %.01012.us.i.i528 = phi i64 [ %i.byw, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i529 ], [ %2, %.lr.ph.split.us.preheader.i.split.i524 ]
  %i.bym = load atomic i32, ptr %.014.us.i.i526 monotonic, align 4
  %.sroa.0.0.insert.ext.i.us.i.i = zext i32 %i.bym to i64
  %i.byn = getelementptr inbounds nuw i8, ptr %.014.us.i.i526, i64 4
  %i.byo = load atomic i32, ptr %i.byn monotonic, align 4
  %.sroa.0.4.insert.ext.i.us.i.i = zext i32 %i.byo to i64
  %.sroa.0.4.insert.shift.i.us.i.i = shl nuw i64 %.sroa.0.4.insert.ext.i.us.i.i, 32
  %.sroa.0.4.insert.insert.i.us.i.i = or disjoint i64 %.sroa.0.4.insert.shift.i.us.i.i, %.sroa.0.0.insert.ext.i.us.i.i
  %i.byp = bitcast i64 %.sroa.0.4.insert.insert.i.us.i.i to double ; 5 uses
  %i.byq = fcmp ogt double %i.byp, f0x47EFFFFFE0000000
  br i1 %i.byq, label %bb.ds, label %bb.do

bb.do:                                            ; preds = %.lr.ph.split.us.i.i525
  %i.byr = fcmp olt double %i.byp, f0xC7EFFFFFE0000000
  br i1 %i.byr, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.bys = fptrunc double %i.byp to float
  %i.byt = bitcast float %i.bys to i32
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i529

bb.dq:                                            ; preds = %bb.do
  %i.byu = fcmp ult double %i.byp, f0xC7EFFFFFEFFFFFFF
  br i1 %i.byu, label %bb.dr, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i529

bb.dr:                                            ; preds = %bb.dq
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i529

bb.ds:                                            ; preds = %.lr.ph.split.us.i.i525
  %i.byv = fcmp ugt double %i.byp, f0x47EFFFFFEFFFFFFF
  br i1 %i.byv, label %bb.dt, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i529

bb.dt:                                            ; preds = %bb.ds
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i529

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i529: ; preds = %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp
  %.0.i.i.us.i.i530 = phi i32 [ %i.byt, %bb.dp ], [ 2139095040, %bb.dt ], [ 2139095039, %bb.ds ], [ -8388608, %bb.dr ], [ -8388609, %bb.dq ]
  store atomic i32 %.0.i.i.us.i.i530, ptr %.0913.us.i.i527 monotonic, align 4
  %i.byw = add i64 %.01012.us.i.i528, -1          ; 2 uses
  %i.byx = getelementptr inbounds nuw i8, ptr %.014.us.i.i526, i64 8
  %i.byy = getelementptr inbounds nuw i8, ptr %.0913.us.i.i527, i64 4
  %.not.us.i.i531 = icmp eq i64 %i.byw, 0
  br i1 %.not.us.i.i531, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE24CopyBetweenBackingStoresILS3_18EEEvPNS1_21TypedArrayCTypeHelperIXT_EE4typeEPfmNS1_14IsSharedBufferE.exit, label %.lr.ph.split.us.i.i525, !llvm.loop !3012

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7GetImplEPdNS1_14IsSharedBufferE.exit.i.i: ; preds = %.lr.ph.i.i515, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i520
  %.014.i.i516 = phi ptr [ %i.bzf, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i520 ], [ %.0, %.lr.ph.i.i515 ] ; 2 uses
  %.0913.i.i517 = phi ptr [ %i.bzg, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i520 ], [ %i.dx, %.lr.ph.i.i515 ] ; 2 uses
  %.01012.i.i518 = phi i64 [ %i.bze, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i520 ], [ %2, %.lr.ph.i.i515 ]
  %.0.copyload.i.i.i.i519 = load double, ptr %.014.i.i516, align 1 ; 5 uses
  %i.byz = fcmp ogt double %.0.copyload.i.i.i.i519, f0x47EFFFFFE0000000
  br i1 %i.byz, label %bb.du, label %bb.dw

bb.du:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7GetImplEPdNS1_14IsSharedBufferE.exit.i.i
  %i.bza = fcmp ugt double %.0.copyload.i.i.i.i519, f0x47EFFFFFEFFFFFFF
  br i1 %i.bza, label %bb.dv, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i520

bb.dv:                                            ; preds = %bb.du
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i520

bb.dw:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7GetImplEPdNS1_14IsSharedBufferE.exit.i.i
  %i.bzb = fcmp olt double %.0.copyload.i.i.i.i519, f0xC7EFFFFFE0000000
  br i1 %i.bzb, label %bb.dx, label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  %i.bzc = fcmp ult double %.0.copyload.i.i.i.i519, f0xC7EFFFFFEFFFFFFF
  br i1 %i.bzc, label %bb.dy, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i520

bb.dy:                                            ; preds = %bb.dx
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i520

bb.dz:                                            ; preds = %bb.dw
  %i.bzd = fptrunc double %.0.copyload.i.i.i.i519 to float
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i520

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i520: ; preds = %bb.dz, %bb.dy, %bb.dx, %bb.dv, %bb.du
  %.0.i.i.i.i521 = phi float [ %i.bzd, %bb.dz ], [ +inf, %bb.dv ], [ f0x7F7FFFFF, %bb.du ], [ -inf, %bb.dy ], [ f0xFF7FFFFF, %bb.dx ]
  store float %.0.i.i.i.i521, ptr %.0913.i.i517, align 1
  %i.bze = add i64 %.01012.i.i518, -1             ; 2 uses
  %i.bzf = getelementptr inbounds nuw i8, ptr %.014.i.i516, i64 8
  %i.bzg = getelementptr inbounds nuw i8, ptr %.0913.i.i517, i64 4
  %.not.i.i522 = icmp eq i64 %i.bze, 0
  br i1 %.not.i.i522, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE24CopyBetweenBackingStoresILS3_18EEEvPNS1_21TypedArrayCTypeHelperIXT_EE4typeEPfmNS1_14IsSharedBufferE.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7GetImplEPdNS1_14IsSharedBufferE.exit.i.i, !llvm.loop !3012

bb.ea:                                            ; preds = %_ZN2v84base14Relaxed_MemcpyEPVcPVKcm.exit205
  %i.bzh = ptrtoint ptr %.0 to i64
  %i.bzi = ptrtoint ptr %i.dx to i64
  %.not11.i.i.i = icmp eq i64 %2, 0
  br i1 %.not11.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE24CopyBetweenBackingStoresILS3_18EEEvPNS1_21TypedArrayCTypeHelperIXT_EE4typeEPfmNS1_14IsSharedBufferE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ea
  %i.bzj = or i32 %i.eg, %i.eb
  %i.bzk = and i32 %i.bzj, 16
  %.not = icmp eq i32 %i.bzk, 0
  br i1 %.not, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader, label %.lr.ph.split.us.preheader.i.i.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader: ; preds = %.lr.ph.i.i.i
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader1339, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader
  %i.bzl = shl i64 %2, 1
  %scevgep = getelementptr i8, ptr %.0, i64 %i.bzl
  %bound0 = icmp ult ptr %i.dx, %scevgep
  %bound1 = icmp ult ptr %.0, %i.jj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader1339, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 4 uses
  %i.bzm = shl i64 %n.vec, 1
  %i.bzn = getelementptr i8, ptr %.0, i64 %i.bzm
  %i.bzo = shl i64 %n.vec, 2
  %i.bzp = getelementptr i8, ptr %i.dx, i64 %i.bzo
  %i.bzq = and i64 %2, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bzr = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.0, i64 %i.bzr
  %i.bzs = shl i64 %index, 2
  %next.gep960 = getelementptr i8, ptr %i.dx, i64 %i.bzs
  %wide.load = load <4 x i16>, ptr %next.gep, align 1, !alias.scope !3013 ; 2 uses
  %i.bzt = zext <4 x i16> %wide.load to <4 x i32> ; 2 uses
  %i.bzu = shl <4 x i32> %i.bzt, splat (i32 17)   ; 2 uses
  %i.bzv = lshr exact <4 x i32> %i.bzu, splat (i32 4)
  %i.bzw = or disjoint <4 x i32> %i.bzv, splat (i32 1879048192)
  %i.bzx = bitcast <4 x i32> %i.bzw to <4 x float>
  %i.bzy = and <4 x i32> %i.bzt, splat (i32 32767)
  %i.bzz = or disjoint <4 x i32> %i.bzy, splat (i32 1056964608)
  %i.caa = bitcast <4 x i32> %i.bzz to <4 x float>
  %i.cab = icmp ult <4 x i32> %i.bzu, splat (i32 134217728)
  %i.cac = fadd <4 x float> %i.caa, splat (float -5.000000e-01)
  %i.cad = fmul <4 x float> %i.bzx, splat (float 1.925930e-34)
  %i.cae = select <4 x i1> %i.cab, <4 x float> %i.cac, <4 x float> %i.cad
  %i.caf = bitcast <4 x float> %i.cae to <4 x i32>
  %i.cag = sext <4 x i16> %wide.load to <4 x i32>
  %i.cah = and <4 x i32> %i.cag, splat (i32 -2147483648)
  %i.cai = or <4 x i32> %i.cah, %i.caf
  %i.caj = bitcast <4 x i32> %i.cai to <4 x float> ; 4 uses
  %i.cak = fpext <4 x float> %i.caj to <4 x double> ; 2 uses
  %i.cal = fcmp ogt <4 x float> %i.caj, splat (float f0x7F7FFFFF) ; 3 uses
  %i.cam = fcmp olt <4 x float> %i.caj, splat (float f0xFF7FFFFF) ; 2 uses
  %i.can = fcmp oge <4 x double> %i.cak, splat (double f0xC7EFFFFFEFFFFFFF)
  %i.cao = fcmp ugt <4 x double> %i.cak, splat (double f0x47EFFFFFEFFFFFFF) ; 2 uses
  %i.cap = and <4 x i1> %i.cal, %i.cao
  %4 = xor <4 x i1> %i.cao, splat (i1 true)
  %5 = select <4 x i1> %i.cal, <4 x i1> %4, <4 x i1> zeroinitializer
  %i.caq = xor <4 x i1> %i.cam, %i.cal
  %6 = and <4 x i1> %i.cam, %i.can
  %predphi = select <4 x i1> %6, <4 x float> splat (float f0xFF7FFFFF), <4 x float> splat (float -inf)
  %predphi961 = select <4 x i1> %i.caq, <4 x float> %predphi, <4 x float> %i.caj
  %predphi962 = select <4 x i1> %i.cap, <4 x float> splat (float +inf), <4 x float> %predphi961
  %predphi963 = select <4 x i1> %5, <4 x float> splat (float f0x7F7FFFFF), <4 x float> %predphi962
  store <4 x float> %predphi963, ptr %next.gep960, align 1, !alias.scope !3016, !noalias !3013
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.car = icmp eq i64 %index.next, %n.vec
  br i1 %i.car, label %middle.block, label %vector.body, !llvm.loop !3018

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE24CopyBetweenBackingStoresILS3_18EEEvPNS1_21TypedArrayCTypeHelperIXT_EE4typeEPfmNS1_14IsSharedBufferE.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader1339

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader1339: ; preds = %vector.memcheck, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader, %middle.block
  %.014.i.i.i.ph = phi ptr [ %.0, %vector.memcheck ], [ %.0, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader ], [ %i.bzn, %middle.block ]
  %.0913.i.i.i.ph = phi ptr [ %i.dx, %vector.memcheck ], [ %i.dx, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader ], [ %i.bzp, %middle.block ]
  %.01012.i.i.i.ph = phi i64 [ %2, %vector.memcheck ], [ %2, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader ], [ %i.bzq, %middle.block ]
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i

.lr.ph.split.us.preheader.i.i.i:                  ; preds = %.lr.ph.i.i.i
  %i.cas = and i64 %i.bzh, 1
  %i.cat = icmp eq i64 %i.cas, 0
  br i1 %i.cat, label %.lr.ph.split.us.preheader.i.split.i.i, label %.split.us.i.i.i

.lr.ph.split.us.preheader.i.split.i.i:            ; preds = %.lr.ph.split.us.preheader.i.i.i
  %i.cau = and i64 %i.bzi, 3
  %i.cav = icmp eq i64 %i.cau, 0
  br i1 %i.cav, label %.lr.ph.split.us.i.us.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.us.i.i:                         ; preds = %.lr.ph.split.us.preheader.i.split.i.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us.i.i
  %.014.us.i.us.i.i = phi ptr [ %i.cbs, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us.i.i ], [ %.0, %.lr.ph.split.us.preheader.i.split.i.i ] ; 2 uses
  %.0913.us.i.us.i.i = phi ptr [ %i.cbt, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us.i.i ], [ %i.dx, %.lr.ph.split.us.preheader.i.split.i.i ] ; 2 uses
  %.01012.us.i.us.i.i = phi i64 [ %i.cbr, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us.i.i ], [ %2, %.lr.ph.split.us.preheader.i.split.i.i ]
  %i.caw = load atomic i16, ptr %.014.us.i.us.i.i acquire, align 2 ; 2 uses
  %i.cax = zext i16 %i.caw to i32                 ; 2 uses
  %i.cay = shl i32 %i.cax, 17                     ; 2 uses
  %i.caz = lshr exact i32 %i.cay, 4
  %i.cba = or disjoint i32 %i.caz, 1879048192
  %i.cbb = bitcast i32 %i.cba to float
  %i.cbc = and i32 %i.cax, 32767
  %i.cbd = or disjoint i32 %i.cbc, 1056964608
  %i.cbe = bitcast i32 %i.cbd to float
  %i.cbf = icmp ult i32 %i.cay, 134217728
  %i.cbg = fadd float %i.cbe, -5.000000e-01
  %i.cbh = fmul float %i.cbb, 1.925930e-34
  %.v.i.us.i.us.i.i = select i1 %i.cbf, float %i.cbg, float %i.cbh
  %i.cbi = bitcast float %.v.i.us.i.us.i.i to i32
  %.signext.i.us.i.us.i.i = sext i16 %i.caw to i32
  %i.cbj = and i32 %.signext.i.us.i.us.i.i, -2147483648
  %i.cbk = or i32 %i.cbj, %i.cbi
  %i.cbl = bitcast i32 %i.cbk to float            ; 4 uses
  %i.cbm = fpext float %i.cbl to double           ; 2 uses
  %i.cbn = fcmp ogt float %i.cbl, f0x7F7FFFFF
  br i1 %i.cbn, label %bb.ee, label %bb.eb

bb.eb:                                            ; preds = %.lr.ph.split.us.i.us.i.i
  %i.cbo = fcmp olt float %i.cbl, f0xFF7FFFFF
  br i1 %i.cbo, label %bb.ec, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us.i.i

bb.ec:                                            ; preds = %bb.eb
  %i.cbp = fcmp ult double %i.cbm, f0xC7EFFFFFEFFFFFFF
  br i1 %i.cbp, label %bb.ed, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us.i.i

bb.ed:                                            ; preds = %bb.ec
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us.i.i

bb.ee:                                            ; preds = %.lr.ph.split.us.i.us.i.i
  %i.cbq = fcmp ugt double %i.cbm, f0x47EFFFFFEFFFFFFF
  br i1 %i.cbq, label %bb.ef, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us.i.i

bb.ef:                                            ; preds = %bb.ee
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us.i.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us.i.i: ; preds = %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb
  %.0.i.i.us.i.us.i.i = phi float [ f0xFF7FFFFF, %bb.ec ], [ +inf, %bb.ef ], [ f0x7F7FFFFF, %bb.ee ], [ -inf, %bb.ed ], [ %i.cbl, %bb.eb ]
  store atomic float %.0.i.i.us.i.us.i.i, ptr %.0913.us.i.us.i.i monotonic, align 4
  %i.cbr = add i64 %.01012.us.i.us.i.i, -1        ; 2 uses
  %i.cbs = getelementptr inbounds nuw i8, ptr %.014.us.i.us.i.i, i64 2
  %i.cbt = getelementptr inbounds nuw i8, ptr %.0913.us.i.us.i.i, i64 4
  %.not.us.i.us.i.i = icmp eq i64 %i.cbr, 0
  br i1 %.not.us.i.us.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE24CopyBetweenBackingStoresILS3_18EEEvPNS1_21TypedArrayCTypeHelperIXT_EE4typeEPfmNS1_14IsSharedBufferE.exit, label %.lr.ph.split.us.i.us.i.i, !llvm.loop !3019

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.split.us.preheader.i.split.i.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i.i
  %.014.us.i.i.i = phi ptr [ %i.ccq, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i.i ], [ %.0, %.lr.ph.split.us.preheader.i.split.i.i ] ; 2 uses
  %.0913.us.i.i.i = phi ptr [ %i.ccr, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i.i ], [ %i.dx, %.lr.ph.split.us.preheader.i.split.i.i ] ; 2 uses
  %.01012.us.i.i.i = phi i64 [ %i.ccp, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i.i ], [ %2, %.lr.ph.split.us.preheader.i.split.i.i ]
  %i.cbu = load atomic i16, ptr %.014.us.i.i.i acquire, align 2 ; 2 uses
  %i.cbv = zext i16 %i.cbu to i32                 ; 2 uses
  %i.cbw = shl i32 %i.cbv, 17                     ; 2 uses
  %i.cbx = lshr exact i32 %i.cbw, 4
  %i.cby = or disjoint i32 %i.cbx, 1879048192
  %i.cbz = bitcast i32 %i.cby to float
  %i.cca = and i32 %i.cbv, 32767
  %i.ccb = or disjoint i32 %i.cca, 1056964608
  %i.ccc = bitcast i32 %i.ccb to float
  %i.ccd = icmp ult i32 %i.cbw, 134217728
  %i.cce = fadd float %i.ccc, -5.000000e-01
  %i.ccf = fmul float %i.cbz, 1.925930e-34
  %.v.i.us.i.i.i = select i1 %i.ccd, float %i.cce, float %i.ccf
  %i.ccg = bitcast float %.v.i.us.i.i.i to i32
  %.signext.i.us.i.i.i = sext i16 %i.cbu to i32
  %i.cch = and i32 %.signext.i.us.i.i.i, -2147483648
  %i.cci = or i32 %i.cch, %i.ccg                  ; 2 uses
  %i.ccj = bitcast i32 %i.cci to float            ; 3 uses
  %i.cck = fpext float %i.ccj to double           ; 2 uses
  %i.ccl = fcmp ogt float %i.ccj, f0x7F7FFFFF
  br i1 %i.ccl, label %bb.ej, label %bb.eg

bb.eg:                                            ; preds = %.lr.ph.split.us.i.i.i
  %i.ccm = fcmp olt float %i.ccj, f0xFF7FFFFF
  br i1 %i.ccm, label %bb.eh, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i.i

bb.eh:                                            ; preds = %bb.eg
  %i.ccn = fcmp ult double %i.cck, f0xC7EFFFFFEFFFFFFF
  br i1 %i.ccn, label %bb.ei, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i.i

bb.ei:                                            ; preds = %bb.eh
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i.i

bb.ej:                                            ; preds = %.lr.ph.split.us.i.i.i
  %i.cco = fcmp ugt double %i.cck, f0x47EFFFFFEFFFFFFF
  br i1 %i.cco, label %bb.ek, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i.i

bb.ek:                                            ; preds = %bb.ej
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i.i: ; preds = %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg
  %.0.i.i.us.i.i.i = phi i32 [ -8388609, %bb.eh ], [ 2139095040, %bb.ek ], [ 2139095039, %bb.ej ], [ -8388608, %bb.ei ], [ %i.cci, %bb.eg ]
  store atomic i32 %.0.i.i.us.i.i.i, ptr %.0913.us.i.i.i monotonic, align 4
  %i.ccp = add i64 %.01012.us.i.i.i, -1           ; 2 uses
  %i.ccq = getelementptr inbounds nuw i8, ptr %.014.us.i.i.i, i64 2
  %i.ccr = getelementptr inbounds nuw i8, ptr %.0913.us.i.i.i, i64 4
  %.not.us.i.i.i = icmp eq i64 %i.ccp, 0
  br i1 %.not.us.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE24CopyBetweenBackingStoresILS3_18EEEvPNS1_21TypedArrayCTypeHelperIXT_EE4typeEPfmNS1_14IsSharedBufferE.exit, label %.lr.ph.split.us.i.i.i, !llvm.loop !3019

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i: ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader1339, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i.i
  %.014.i.i.i = phi ptr [ %i.cdn, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i.i ], [ %.014.i.i.i.ph, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader1339 ] ; 2 uses
  %.0913.i.i.i = phi ptr [ %i.cdo, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i.i ], [ %.0913.i.i.i.ph, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader1339 ] ; 2 uses
  %.01012.i.i.i = phi i64 [ %i.cdm, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i.i ], [ %.01012.i.i.i.ph, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i.preheader1339 ]
  %.0.copyload.i.i.i.i.i = load i16, ptr %.014.i.i.i, align 1 ; 2 uses
  %i.ccs = zext i16 %.0.copyload.i.i.i.i.i to i32 ; 2 uses
  %i.cct = shl i32 %i.ccs, 17                     ; 2 uses
  %i.ccu = lshr exact i32 %i.cct, 4
  %i.ccv = or disjoint i32 %i.ccu, 1879048192
  %i.ccw = bitcast i32 %i.ccv to float
  %i.ccx = and i32 %i.ccs, 32767
  %i.ccy = or disjoint i32 %i.ccx, 1056964608
  %i.ccz = bitcast i32 %i.ccy to float
  %i.cda = icmp ult i32 %i.cct, 134217728
  %i.cdb = fadd float %i.ccz, -5.000000e-01
  %i.cdc = fmul float %i.ccw, 1.925930e-34
  %.v.i.i.i.i = select i1 %i.cda, float %i.cdb, float %i.cdc
  %i.cdd = bitcast float %.v.i.i.i.i to i32
  %.signext.i.i.i.i = sext i16 %.0.copyload.i.i.i.i.i to i32
  %i.cde = and i32 %.signext.i.i.i.i, -2147483648
  %i.cdf = or i32 %i.cde, %i.cdd
  %i.cdg = bitcast i32 %i.cdf to float            ; 4 uses
  %i.cdh = fpext float %i.cdg to double           ; 2 uses
  %i.cdi = fcmp ogt float %i.cdg, f0x7F7FFFFF
  br i1 %i.cdi, label %bb.el, label %bb.en

.split.us.i.i.i:                                  ; preds = %.lr.ph.split.us.preheader.i.i.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.33) #24
  unreachable

bb.el:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i
  %i.cdj = fcmp ugt double %i.cdh, f0x47EFFFFFEFFFFFFF
  br i1 %i.cdj, label %bb.em, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i.i

bb.em:                                            ; preds = %bb.el
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i.i

bb.en:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i
  %i.cdk = fcmp olt float %i.cdg, f0xFF7FFFFF
  br i1 %i.cdk, label %bb.eo, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i.i

bb.eo:                                            ; preds = %bb.en
  %i.cdl = fcmp ult double %i.cdh, f0xC7EFFFFFEFFFFFFF
  br i1 %i.cdl, label %bb.ep, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i.i

bb.ep:                                            ; preds = %bb.eo
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i.i: ; preds = %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el
  %.0.i.i.i.i.i554 = phi float [ f0xFF7FFFFF, %bb.eo ], [ +inf, %bb.em ], [ f0x7F7FFFFF, %bb.el ], [ -inf, %bb.ep ], [ %i.cdg, %bb.en ]
  store float %.0.i.i.i.i.i554, ptr %.0913.i.i.i, align 1
  %i.cdm = add i64 %.01012.i.i.i, -1              ; 2 uses
  %i.cdn = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 2
  %i.cdo = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 4
  %.not.i.i.i = icmp eq i64 %i.cdm, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE24CopyBetweenBackingStoresILS3_18EEEvPNS1_21TypedArrayCTypeHelperIXT_EE4typeEPfmNS1_14IsSharedBufferE.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE41EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.i, !llvm.loop !3020

default.unreachable:                              ; preds = %_ZN2v84base14Relaxed_MemcpyEPVcPVKcm.exit205
  unreachable

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE24CopyBetweenBackingStoresILS3_18EEEvPNS1_21TypedArrayCTypeHelperIXT_EE4typeEPfmNS1_14IsSharedBufferE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us.i.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i529, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us8.i536, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us.i544, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us.us.i551, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i520, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us8.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us.us.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i, %.lr.ph.split.us.i.i491.prol.loopexit, %.lr.ph.split.us.i.i491, %.lr.ph.split.us.i.us.i496.prol.loopexit, %.lr.ph.split.us.i.us.i496, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i484.prol.loopexit, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i484, %.lr.ph.split.us.i.i459.prol.loopexit, %.lr.ph.split.us.i.i459, %.lr.ph.split.us.i.us4.i464.prol.loopexit, %.lr.ph.split.us.i.us4.i464, %.lr.ph.split.us.i.us.i470.prol.loopexit, %.lr.ph.split.us.i.us.i470, %.lr.ph.split.us.i.us.us.i475.prol.loopexit, %.lr.ph.split.us.i.us.us.i475, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i451.prol.loopexit, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i451, %.lr.ph.split.us.i.i428.prol.loopexit, %.lr.ph.split.us.i.i428, %.lr.ph.split.us.i.us4.i433.prol.loopexit, %.lr.ph.split.us.i.us4.i433, %.lr.ph.split.us.i.us.i439.prol.loopexit, %.lr.ph.split.us.i.us.i439, %.lr.ph.split.us.i.us.us.i444.prol.loopexit, %.lr.ph.split.us.i.us.us.i444, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i420.prol.loopexit, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i420, %.lr.ph.split.us.i.i408.prol.loopexit, %.lr.ph.split.us.i.i408, %.lr.ph.split.us.i.us.i413.prol.loopexit, %.lr.ph.split.us.i.us.i413, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i399.prol.loopexit, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i399, %.lr.ph.split.us.i.i387.prol.loopexit, %.lr.ph.split.us.i.i387, %.lr.ph.split.us.i.us.i392.prol.loopexit, %.lr.ph.split.us.i.us.i392, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i378.prol.loopexit, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i378, %.lr.ph.split.us.i.i366.prol.loopexit, %.lr.ph.split.us.i.i366, %.lr.ph.split.us.i.us.i371.prol.loopexit, %.lr.ph.split.us.i.us.i371, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i359.prol.loopexit, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i359, %.lr.ph.split.us.i.i347.prol.loopexit, %.lr.ph.split.us.i.i347, %.lr.ph.split.us.i.us.i352.prol.loopexit, %.lr.ph.split.us.i.us.i352, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i340.prol.loopexit, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i340, %.lr.ph.split.us.i.i328.prol.loopexit, %.lr.ph.split.us.i.i328, %.lr.ph.split.us.i.us.i333.prol.loopexit, %.lr.ph.split.us.i.us.i333, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i321.prol.loopexit, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i321, %.lr.ph.split.us.i.i296.prol.loopexit, %.lr.ph.split.us.i.i296, %.lr.ph.split.us.i.us4.i301.prol.loopexit, %.lr.ph.split.us.i.us4.i301, %.lr.ph.split.us.i.us.i307.prol.loopexit, %.lr.ph.split.us.i.us.i307, %.lr.ph.split.us.i.us.us.i312.prol.loopexit, %.lr.ph.split.us.i.us.us.i312, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i288.prol.loopexit, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i288, %.lr.ph.split.us.i.i276.prol.loopexit, %.lr.ph.split.us.i.i276, %.lr.ph.split.us.i.us4.i.prol.loopexit, %.lr.ph.split.us.i.us4.i, %.lr.ph.split.us.i.us.i281.prol.loopexit, %.lr.ph.split.us.i.us.i281, %.lr.ph.split.us.i.us.us.i.prol.loopexit, %.lr.ph.split.us.i.us.us.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i268.prol.loopexit, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i268, %.lr.ph.split.us.i.i256.prol.loopexit, %.lr.ph.split.us.i.i256, %.lr.ph.split.us.i.us.i261.prol.loopexit, %.lr.ph.split.us.i.us.i261, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i247.prol.loopexit, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i247, %.lr.ph.split.us.i.i235.prol.loopexit, %.lr.ph.split.us.i.i235, %.lr.ph.split.us.i.us.i240.prol.loopexit, %.lr.ph.split.us.i.us.i240, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i228.prol.loopexit, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i228, %.lr.ph.split.us.i.i216.prol.loopexit, %.lr.ph.split.us.i.i216, %.lr.ph.split.us.i.us.i221.prol.loopexit, %.lr.ph.split.us.i.us.i221, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i209.prol.loopexit, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i209, %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i, %.lr.ph.split.us.i.us.i.prol.loopexit, %.lr.ph.split.us.i.us.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i.prol.loopexit, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.i, %middle.block, %middle.block983, %middle.block1001, %middle.block1020, %middle.block1042, %middle.block1064, %middle.block1086, %middle.block1108, %middle.block1130, %middle.block1149, %middle.block1168, %middle.block1190, %middle.block1212, %middle.block1234, %middle.block1256, %bb.ea, %bb.cv, %bb.bv, %bb.bu, %bb.bp, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.ba, %bb.av, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.bd, %bb.bc, %bb.bb
  %.not.i555 = icmp eq ptr %.sroa.0559.0, null
  br i1 %.not.i555, label %_ZN2v84base14Relaxed_MemcpyEPVcPVKcm.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i556

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i556: ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE24CopyBetweenBackingStoresILS3_18EEEvPNS1_21TypedArrayCTypeHelperIXT_EE4typeEPfmNS1_14IsSharedBufferE.exit
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0559.0) #26
  br label %_ZN2v84base14Relaxed_MemcpyEPVcPVKcm.exit

_ZN2v84base14Relaxed_MemcpyEPVcPVKcm.exit:        ; preds = %.lr.ph44.i.prol.loopexit, %.lr.ph44.i, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i556, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE24CopyBetweenBackingStoresILS3_18EEEvPNS1_21TypedArrayCTypeHelperIXT_EE4typeEPfmNS1_14IsSharedBufferE.exit, %.loopexit.i, %bb.af
end_hunk_1
begin_hunk_2_@_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE24CopyBetweenBackingStoresILS3_28EEEvPNS1_21TypedArrayCTypeHelperIXT_EE4typeEPfmNS1_14IsSharedBufferE:bb.a
.lr.ph.split.us.i.us4:                            ; preds = %.lr.ph.split.us.preheader.i.split, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us8
  %.014.us.i.us5 = phi ptr [ %i.aj, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us8 ], [ %0, %.lr.ph.split.us.preheader.i.split ] ; 3 uses
  %.0913.us.i.us6 = phi ptr [ %i.ak, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us8 ], [ %1, %.lr.ph.split.us.preheader.i.split ] ; 2 uses
  %.01012.us.i.us7 = phi i64 [ %i.ai, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us8 ], [ %2, %.lr.ph.split.us.preheader.i.split ]
  %i.z = load atomic i32, ptr %.014.us.i.us5 monotonic, align 4
  %.sroa.0.0.insert.ext.i.us.i.us = zext i32 %i.z to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.014.us.i.us5, i64 4
  %i.ab = load atomic i32, ptr %i.aa monotonic, align 4
  %.sroa.0.4.insert.ext.i.us.i.us = zext i32 %i.ab to i64
  %.sroa.0.4.insert.shift.i.us.i.us = shl nuw i64 %.sroa.0.4.insert.ext.i.us.i.us, 32
  %.sroa.0.4.insert.insert.i.us.i.us = or disjoint i64 %.sroa.0.4.insert.shift.i.us.i.us, %.sroa.0.0.insert.ext.i.us.i.us
  %i.ac = bitcast i64 %.sroa.0.4.insert.insert.i.us.i.us to double ; 5 uses
  %i.ad = fcmp ogt double %i.ac, f0x47EFFFFFE0000000
  br i1 %i.ad, label %bb.r, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us.i.us4
  %i.ae = fcmp olt double %i.ac, f0xC7EFFFFFE0000000
  br i1 %i.ae, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = fptrunc double %i.ac to float
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us8

bb.p:                                             ; preds = %bb.n
  %i.ag = fcmp ult double %i.ac, f0xC7EFFFFFEFFFFFFF
  br i1 %i.ag, label %bb.q, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us8

bb.q:                                             ; preds = %bb.p
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us8

bb.r:                                             ; preds = %.lr.ph.split.us.i.us4
  %i.ah = fcmp ugt double %i.ac, f0x47EFFFFFEFFFFFFF
  br i1 %i.ah, label %bb.s, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us8

bb.s:                                             ; preds = %bb.r
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us8

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us8: ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.0.i.i.us.i.us9 = phi float [ %i.af, %bb.o ], [ +inf, %bb.s ], [ f0x7F7FFFFF, %bb.r ], [ -inf, %bb.q ], [ f0xFF7FFFFF, %bb.p ]
  store atomic float %.0.i.i.us.i.us9, ptr %.0913.us.i.us6 monotonic, align 4
  %i.ai = add i64 %.01012.us.i.us7, -1            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.014.us.i.us5, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.0913.us.i.us6, i64 4
  %.not.us.i.us11 = icmp eq i64 %i.ai, 0
  br i1 %.not.us.i.us11, label %_ZN2v88internal12_GLOBAL__N_128CopyBetweenBackingStoresImplILNS0_12ElementsKindE27ELS3_28EE4CopyEPdPfmNS1_14IsSharedBufferE.exit, label %.lr.ph.split.us.i.us4, !llvm.loop !4990

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.preheader.i.split, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i
  %.014.us.i = phi ptr [ %i.aw, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i ], [ %0, %.lr.ph.split.us.preheader.i.split ] ; 3 uses
  %.0913.us.i = phi ptr [ %i.ax, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i ], [ %1, %.lr.ph.split.us.preheader.i.split ] ; 2 uses
  %.01012.us.i = phi i64 [ %i.av, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i ], [ %2, %.lr.ph.split.us.preheader.i.split ]
  %i.al = load atomic i32, ptr %.014.us.i monotonic, align 4
  %.sroa.0.0.insert.ext.i.us.i = zext i32 %i.al to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.014.us.i, i64 4
  %i.an = load atomic i32, ptr %i.am monotonic, align 4
  %.sroa.0.4.insert.ext.i.us.i = zext i32 %i.an to i64
  %.sroa.0.4.insert.shift.i.us.i = shl nuw i64 %.sroa.0.4.insert.ext.i.us.i, 32
  %.sroa.0.4.insert.insert.i.us.i = or disjoint i64 %.sroa.0.4.insert.shift.i.us.i, %.sroa.0.0.insert.ext.i.us.i
  %i.ao = bitcast i64 %.sroa.0.4.insert.insert.i.us.i to double ; 5 uses
  %i.ap = fcmp ogt double %i.ao, f0x47EFFFFFE0000000
  br i1 %i.ap, label %bb.x, label %bb.t

bb.t:                                             ; preds = %.lr.ph.split.us.i
  %i.aq = fcmp olt double %i.ao, f0xC7EFFFFFE0000000
  br i1 %i.aq, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ar = fptrunc double %i.ao to float
  %i.as = bitcast float %i.ar to i32
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i

bb.v:                                             ; preds = %bb.t
  %i.at = fcmp ult double %i.ao, f0xC7EFFFFFEFFFFFFF
  br i1 %i.at, label %bb.w, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i

bb.w:                                             ; preds = %bb.v
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i

bb.x:                                             ; preds = %.lr.ph.split.us.i
  %i.au = fcmp ugt double %i.ao, f0x47EFFFFFEFFFFFFF
  br i1 %i.au, label %bb.y, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i

bb.y:                                             ; preds = %bb.x
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i: ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %.0.i.i.us.i = phi i32 [ %i.as, %bb.u ], [ 2139095040, %bb.y ], [ 2139095039, %bb.x ], [ -8388608, %bb.w ], [ -8388609, %bb.v ]
  store atomic i32 %.0.i.i.us.i, ptr %.0913.us.i monotonic, align 4
  %i.av = add i64 %.01012.us.i, -1                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.014.us.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.0913.us.i, i64 4
  %.not.us.i = icmp eq i64 %i.av, 0
  br i1 %.not.us.i, label %_ZN2v88internal12_GLOBAL__N_128CopyBetweenBackingStoresImplILNS0_12ElementsKindE27ELS3_28EE4CopyEPdPfmNS1_14IsSharedBufferE.exit, label %.lr.ph.split.us.i, !llvm.loop !4990

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7GetImplEPdNS1_14IsSharedBufferE.exit.i: ; preds = %.lr.ph.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i
  %.014.i = phi ptr [ %i.be, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i ], [ %0, %.lr.ph.i ] ; 2 uses
  %.0913.i = phi ptr [ %i.bf, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i ], [ %1, %.lr.ph.i ] ; 2 uses
  %.01012.i = phi i64 [ %i.bd, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i ], [ %2, %.lr.ph.i ]
  %.0.copyload.i.i.i = load double, ptr %.014.i, align 1 ; 5 uses
  %i.ay = fcmp ogt double %.0.copyload.i.i.i, f0x47EFFFFFE0000000
  br i1 %i.ay, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7GetImplEPdNS1_14IsSharedBufferE.exit.i
  %i.az = fcmp ugt double %.0.copyload.i.i.i, f0x47EFFFFFEFFFFFFF
  br i1 %i.az, label %bb.aa, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i

bb.aa:                                            ; preds = %bb.z
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i

bb.ab:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7GetImplEPdNS1_14IsSharedBufferE.exit.i
  %i.ba = fcmp olt double %.0.copyload.i.i.i, f0xC7EFFFFFE0000000
  br i1 %i.ba, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.bb = fcmp ult double %.0.copyload.i.i.i, f0xC7EFFFFFEFFFFFFF
  br i1 %i.bb, label %bb.ad, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i

bb.ad:                                            ; preds = %bb.ac
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i

bb.ae:                                            ; preds = %bb.ab
  %i.bc = fptrunc double %.0.copyload.i.i.i to float
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa, %bb.z
  %.0.i.i.i = phi float [ %i.bc, %bb.ae ], [ +inf, %bb.aa ], [ f0x7F7FFFFF, %bb.z ], [ -inf, %bb.ad ], [ f0xFF7FFFFF, %bb.ac ]
  store float %.0.i.i.i, ptr %.0913.i, align 1
  %i.bd = add i64 %.01012.i, -1                   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.014.i, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.0913.i, i64 4
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_128CopyBetweenBackingStoresImplILNS0_12ElementsKindE27ELS3_28EE4CopyEPdPfmNS1_14IsSharedBufferE.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7GetImplEPdNS1_14IsSharedBufferE.exit.i, !llvm.loop !4990

_ZN2v88internal12_GLOBAL__N_128CopyBetweenBackingStoresImplILNS0_12ElementsKindE27ELS3_28EE4CopyEPdPfmNS1_14IsSharedBufferE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us8, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us.us, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE24CopyBetweenBackingStoresILS3_29EEEvPNS1_21TypedArrayCTypeHelperIXT_EE4typeEPfmNS1_14IsSharedBufferE(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64
  %.not11.i.i = icmp eq i64 %2, 0
  br i1 %.not11.i.i, label %_ZN2v88internal12_GLOBAL__N_128CopyBetweenBackingStoresImplILNS0_12ElementsKindE27ELS3_29EE4CopyEPtPfmNS1_14IsSharedBufferE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  br i1 %3, label %.lr.ph.split.us.preheader.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader: ; preds = %.lr.ph.i.i
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader25, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader
  %i.c = shl i64 %2, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.c
  %i.d = shl i64 %2, 1
  %scevgep17 = getelementptr i8, ptr %0, i64 %i.d
  %bound0 = icmp ult ptr %1, %scevgep17
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader25, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 4 uses
  %i.e = shl i64 %n.vec, 1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %i.g = shl i64 %n.vec, 2
  %i.h = getelementptr i8, ptr %1, i64 %i.g
  %i.i = and i64 %2, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %0, i64 %i.j
  %i.k = shl i64 %index, 2
  %next.gep18 = getelementptr i8, ptr %1, i64 %i.k
  %wide.load = load <4 x i16>, ptr %next.gep, align 1, !alias.scope !4991 ; 2 uses
  %i.l = zext <4 x i16> %wide.load to <4 x i32>   ; 2 uses
  %i.m = shl <4 x i32> %i.l, splat (i32 17)       ; 2 uses
  %i.n = lshr exact <4 x i32> %i.m, splat (i32 4)
  %i.o = or disjoint <4 x i32> %i.n, splat (i32 1879048192)
  %i.p = bitcast <4 x i32> %i.o to <4 x float>
  %i.q = and <4 x i32> %i.l, splat (i32 32767)
  %i.r = or disjoint <4 x i32> %i.q, splat (i32 1056964608)
  %i.s = bitcast <4 x i32> %i.r to <4 x float>
  %i.t = icmp ult <4 x i32> %i.m, splat (i32 134217728)
  %i.u = fadd <4 x float> %i.s, splat (float -5.000000e-01)
  %i.v = fmul <4 x float> %i.p, splat (float 1.925930e-34)
  %i.w = select <4 x i1> %i.t, <4 x float> %i.u, <4 x float> %i.v
  %i.x = bitcast <4 x float> %i.w to <4 x i32>
  %i.y = sext <4 x i16> %wide.load to <4 x i32>
  %i.z = and <4 x i32> %i.y, splat (i32 -2147483648)
  %i.aa = or <4 x i32> %i.z, %i.x
  %i.ab = bitcast <4 x i32> %i.aa to <4 x float>  ; 4 uses
  %i.ac = fpext <4 x float> %i.ab to <4 x double> ; 2 uses
  %i.ad = fcmp ogt <4 x float> %i.ab, splat (float f0x7F7FFFFF) ; 3 uses
  %i.ae = fcmp olt <4 x float> %i.ab, splat (float f0xFF7FFFFF) ; 2 uses
  %i.af = fcmp oge <4 x double> %i.ac, splat (double f0xC7EFFFFFEFFFFFFF)
  %i.ag = fcmp ugt <4 x double> %i.ac, splat (double f0x47EFFFFFEFFFFFFF) ; 2 uses
  %i.ah = and <4 x i1> %i.ad, %i.ag
  %4 = xor <4 x i1> %i.ag, splat (i1 true)
  %5 = select <4 x i1> %i.ad, <4 x i1> %4, <4 x i1> zeroinitializer
  %i.ai = xor <4 x i1> %i.ae, %i.ad
  %6 = and <4 x i1> %i.ae, %i.af
  %predphi = select <4 x i1> %6, <4 x float> splat (float f0xFF7FFFFF), <4 x float> splat (float -inf)
  %predphi19 = select <4 x i1> %i.ai, <4 x float> %predphi, <4 x float> %i.ab
  %predphi20 = select <4 x i1> %i.ah, <4 x float> splat (float +inf), <4 x float> %predphi19
  %predphi21 = select <4 x i1> %5, <4 x float> splat (float f0x7F7FFFFF), <4 x float> %predphi20
  store <4 x float> %predphi21, ptr %next.gep18, align 1, !alias.scope !4994, !noalias !4991
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !4996

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal12_GLOBAL__N_128CopyBetweenBackingStoresImplILNS0_12ElementsKindE27ELS3_29EE4CopyEPtPfmNS1_14IsSharedBufferE.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader25

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader25: ; preds = %vector.memcheck, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader, %middle.block
  %.014.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader ], [ %i.f, %middle.block ]
  %.0913.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader ], [ %i.h, %middle.block ]
  %.01012.i.i.ph = phi i64 [ %2, %vector.memcheck ], [ %2, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader ], [ %i.i, %middle.block ]
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i
  %i.ak = and i64 %i.a, 1
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph.split.us.preheader.i.split.i, label %.split.us.i.i

.lr.ph.split.us.preheader.i.split.i:              ; preds = %.lr.ph.split.us.preheader.i.i
  %i.am = and i64 %i.b, 3
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.split.us.i.us.i, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.us.i:                           ; preds = %.lr.ph.split.us.preheader.i.split.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us.i
  %.014.us.i.us.i = phi ptr [ %i.bk, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us.i ], [ %0, %.lr.ph.split.us.preheader.i.split.i ] ; 2 uses
  %.0913.us.i.us.i = phi ptr [ %i.bl, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us.i ], [ %1, %.lr.ph.split.us.preheader.i.split.i ] ; 2 uses
  %.01012.us.i.us.i = phi i64 [ %i.bj, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us.i ], [ %2, %.lr.ph.split.us.preheader.i.split.i ]
  %i.ao = load atomic i16, ptr %.014.us.i.us.i acquire, align 2 ; 2 uses
  %i.ap = zext i16 %i.ao to i32                   ; 2 uses
  %i.aq = shl i32 %i.ap, 17                       ; 2 uses
  %i.ar = lshr exact i32 %i.aq, 4
  %i.as = or disjoint i32 %i.ar, 1879048192
  %i.at = bitcast i32 %i.as to float
  %i.au = and i32 %i.ap, 32767
  %i.av = or disjoint i32 %i.au, 1056964608
  %i.aw = bitcast i32 %i.av to float
  %i.ax = icmp ult i32 %i.aq, 134217728
  %i.ay = fadd float %i.aw, -5.000000e-01
  %i.az = fmul float %i.at, 1.925930e-34
  %.v.i.us.i.us.i = select i1 %i.ax, float %i.ay, float %i.az
  %i.ba = bitcast float %.v.i.us.i.us.i to i32
  %.signext.i.us.i.us.i = sext i16 %i.ao to i32
  %i.bb = and i32 %.signext.i.us.i.us.i, -2147483648
  %i.bc = or i32 %i.bb, %i.ba
  %i.bd = bitcast i32 %i.bc to float              ; 4 uses
  %i.be = fpext float %i.bd to double             ; 2 uses
  %i.bf = fcmp ogt float %i.bd, f0x7F7FFFFF
  br i1 %i.bf, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.i.us.i
  %i.bg = fcmp olt float %i.bd, f0xFF7FFFFF
  br i1 %i.bg, label %bb.c, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us.i

bb.c:                                             ; preds = %bb.b
  %i.bh = fcmp ult double %i.be, f0xC7EFFFFFEFFFFFFF
  br i1 %i.bh, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us.i

bb.d:                                             ; preds = %bb.c
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us.i

bb.e:                                             ; preds = %.lr.ph.split.us.i.us.i
  %i.bi = fcmp ugt double %i.be, f0x47EFFFFFEFFFFFFF
  br i1 %i.bi, label %bb.f, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us.i

bb.f:                                             ; preds = %bb.e
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0.i.i.us.i.us.i = phi float [ f0xFF7FFFFF, %bb.c ], [ +inf, %bb.f ], [ f0x7F7FFFFF, %bb.e ], [ -inf, %bb.d ], [ %i.bd, %bb.b ]
  store atomic float %.0.i.i.us.i.us.i, ptr %.0913.us.i.us.i monotonic, align 4
  %i.bj = add i64 %.01012.us.i.us.i, -1           ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.014.us.i.us.i, i64 2
  %i.bl = getelementptr inbounds nuw i8, ptr %.0913.us.i.us.i, i64 4
  %.not.us.i.us.i = icmp eq i64 %i.bj, 0
  br i1 %.not.us.i.us.i, label %_ZN2v88internal12_GLOBAL__N_128CopyBetweenBackingStoresImplILNS0_12ElementsKindE27ELS3_29EE4CopyEPtPfmNS1_14IsSharedBufferE.exit, label %.lr.ph.split.us.i.us.i, !llvm.loop !4997

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.preheader.i.split.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i
  %.014.us.i.i = phi ptr [ %i.ci, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i ], [ %0, %.lr.ph.split.us.preheader.i.split.i ] ; 2 uses
  %.0913.us.i.i = phi ptr [ %i.cj, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i ], [ %1, %.lr.ph.split.us.preheader.i.split.i ] ; 2 uses
  %.01012.us.i.i = phi i64 [ %i.ch, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i ], [ %2, %.lr.ph.split.us.preheader.i.split.i ]
  %i.bm = load atomic i16, ptr %.014.us.i.i acquire, align 2 ; 2 uses
  %i.bn = zext i16 %i.bm to i32                   ; 2 uses
  %i.bo = shl i32 %i.bn, 17                       ; 2 uses
  %i.bp = lshr exact i32 %i.bo, 4
  %i.bq = or disjoint i32 %i.bp, 1879048192
  %i.br = bitcast i32 %i.bq to float
  %i.bs = and i32 %i.bn, 32767
  %i.bt = or disjoint i32 %i.bs, 1056964608
  %i.bu = bitcast i32 %i.bt to float
  %i.bv = icmp ult i32 %i.bo, 134217728
  %i.bw = fadd float %i.bu, -5.000000e-01
  %i.bx = fmul float %i.br, 1.925930e-34
  %.v.i.us.i.i = select i1 %i.bv, float %i.bw, float %i.bx
  %i.by = bitcast float %.v.i.us.i.i to i32
  %.signext.i.us.i.i = sext i16 %i.bm to i32
  %i.bz = and i32 %.signext.i.us.i.i, -2147483648
  %i.ca = or i32 %i.bz, %i.by                     ; 2 uses
  %i.cb = bitcast i32 %i.ca to float              ; 3 uses
  %i.cc = fpext float %i.cb to double             ; 2 uses
  %i.cd = fcmp ogt float %i.cb, f0x7F7FFFFF
  br i1 %i.cd, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.i.i
  %i.ce = fcmp olt float %i.cb, f0xFF7FFFFF
  br i1 %i.ce, label %bb.h, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i

bb.h:                                             ; preds = %bb.g
  %i.cf = fcmp ult double %i.cc, f0xC7EFFFFFEFFFFFFF
  br i1 %i.cf, label %bb.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i

bb.i:                                             ; preds = %bb.h
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i

bb.j:                                             ; preds = %.lr.ph.split.us.i.i
  %i.cg = fcmp ugt double %i.cc, f0x47EFFFFFEFFFFFFF
  br i1 %i.cg, label %bb.k, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i

bb.k:                                             ; preds = %bb.j
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.0.i.i.us.i.i = phi i32 [ -8388609, %bb.h ], [ 2139095040, %bb.k ], [ 2139095039, %bb.j ], [ -8388608, %bb.i ], [ %i.ca, %bb.g ]
  store atomic i32 %.0.i.i.us.i.i, ptr %.0913.us.i.i monotonic, align 4
  %i.ch = add i64 %.01012.us.i.i, -1              ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.014.us.i.i, i64 2
  %i.cj = getelementptr inbounds nuw i8, ptr %.0913.us.i.i, i64 4
  %.not.us.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not.us.i.i, label %_ZN2v88internal12_GLOBAL__N_128CopyBetweenBackingStoresImplILNS0_12ElementsKindE27ELS3_29EE4CopyEPtPfmNS1_14IsSharedBufferE.exit, label %.lr.ph.split.us.i.i, !llvm.loop !4997

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i: ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader25, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i
  %.014.i.i = phi ptr [ %i.df, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i ], [ %.014.i.i.ph, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader25 ] ; 2 uses
  %.0913.i.i = phi ptr [ %i.dg, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i ], [ %.0913.i.i.ph, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader25 ] ; 2 uses
  %.01012.i.i = phi i64 [ %i.de, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i ], [ %.01012.i.i.ph, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader25 ]
  %.0.copyload.i.i.i.i = load i16, ptr %.014.i.i, align 1 ; 2 uses
  %i.ck = zext i16 %.0.copyload.i.i.i.i to i32    ; 2 uses
  %i.cl = shl i32 %i.ck, 17                       ; 2 uses
  %i.cm = lshr exact i32 %i.cl, 4
  %i.cn = or disjoint i32 %i.cm, 1879048192
  %i.co = bitcast i32 %i.cn to float
  %i.cp = and i32 %i.ck, 32767
  %i.cq = or disjoint i32 %i.cp, 1056964608
  %i.cr = bitcast i32 %i.cq to float
  %i.cs = icmp ult i32 %i.cl, 134217728
  %i.ct = fadd float %i.cr, -5.000000e-01
  %i.cu = fmul float %i.co, 1.925930e-34
  %.v.i.i.i = select i1 %i.cs, float %i.ct, float %i.cu
  %i.cv = bitcast float %.v.i.i.i to i32
  %.signext.i.i.i = sext i16 %.0.copyload.i.i.i.i to i32
  %i.cw = and i32 %.signext.i.i.i, -2147483648
  %i.cx = or i32 %i.cw, %i.cv
  %i.cy = bitcast i32 %i.cx to float              ; 4 uses
  %i.cz = fpext float %i.cy to double             ; 2 uses
  %i.da = fcmp ogt float %i.cy, f0x7F7FFFFF
  br i1 %i.da, label %bb.l, label %bb.n

.split.us.i.i:                                    ; preds = %.lr.ph.split.us.preheader.i.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.33) #24
  unreachable

bb.l:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i
  %i.db = fcmp ugt double %i.cz, f0x47EFFFFFEFFFFFFF
  br i1 %i.db, label %bb.m, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i

bb.m:                                             ; preds = %bb.l
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i

bb.n:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i
  %i.dc = fcmp olt float %i.cy, f0xFF7FFFFF
  br i1 %i.dc, label %bb.o, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.dd = fcmp ult double %i.cz, f0xC7EFFFFFEFFFFFFF
  br i1 %i.dd, label %bb.p, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i

bb.p:                                             ; preds = %bb.o
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %.0.i.i.i.i = phi float [ f0xFF7FFFFF, %bb.o ], [ +inf, %bb.m ], [ f0x7F7FFFFF, %bb.l ], [ -inf, %bb.p ], [ %i.cy, %bb.n ]
  store float %.0.i.i.i.i, ptr %.0913.i.i, align 1
  %i.de = add i64 %.01012.i.i, -1                 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 2
  %i.dg = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 4
  %.not.i.i = icmp eq i64 %i.de, 0
  br i1 %.not.i.i, label %_ZN2v88internal12_GLOBAL__N_128CopyBetweenBackingStoresImplILNS0_12ElementsKindE27ELS3_29EE4CopyEPtPfmNS1_14IsSharedBufferE.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i, !llvm.loop !4998

_ZN2v88internal12_GLOBAL__N_128CopyBetweenBackingStoresImplILNS0_12ElementsKindE27ELS3_29EE4CopyEPtPfmNS1_14IsSharedBufferE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.i.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromScalarEd.exit.us.i.us.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_2
begin_hunk_3_@_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE24CopyBetweenBackingStoresILS3_28EEEvPNS1_21TypedArrayCTypeHelperIXT_EE4typeEPfmNS1_14IsSharedBufferE:bb.a
.lr.ph.split.us.i.us4:                            ; preds = %.lr.ph.split.us.preheader.i.split, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us8
  %.014.us.i.us5 = phi ptr [ %i.aj, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us8 ], [ %0, %.lr.ph.split.us.preheader.i.split ] ; 3 uses
  %.0913.us.i.us6 = phi ptr [ %i.ak, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us8 ], [ %1, %.lr.ph.split.us.preheader.i.split ] ; 2 uses
  %.01012.us.i.us7 = phi i64 [ %i.ai, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us8 ], [ %2, %.lr.ph.split.us.preheader.i.split ]
  %i.z = load atomic i32, ptr %.014.us.i.us5 monotonic, align 4
  %.sroa.0.0.insert.ext.i.us.i.us = zext i32 %i.z to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.014.us.i.us5, i64 4
  %i.ab = load atomic i32, ptr %i.aa monotonic, align 4
  %.sroa.0.4.insert.ext.i.us.i.us = zext i32 %i.ab to i64
  %.sroa.0.4.insert.shift.i.us.i.us = shl nuw i64 %.sroa.0.4.insert.ext.i.us.i.us, 32
  %.sroa.0.4.insert.insert.i.us.i.us = or disjoint i64 %.sroa.0.4.insert.shift.i.us.i.us, %.sroa.0.0.insert.ext.i.us.i.us
  %i.ac = bitcast i64 %.sroa.0.4.insert.insert.i.us.i.us to double ; 5 uses
  %i.ad = fcmp ogt double %i.ac, f0x47EFFFFFE0000000
  br i1 %i.ad, label %bb.r, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us.i.us4
  %i.ae = fcmp olt double %i.ac, f0xC7EFFFFFE0000000
  br i1 %i.ae, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = fptrunc double %i.ac to float
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us8

bb.p:                                             ; preds = %bb.n
  %i.ag = fcmp ult double %i.ac, f0xC7EFFFFFEFFFFFFF
  br i1 %i.ag, label %bb.q, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us8

bb.q:                                             ; preds = %bb.p
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us8

bb.r:                                             ; preds = %.lr.ph.split.us.i.us4
  %i.ah = fcmp ugt double %i.ac, f0x47EFFFFFEFFFFFFF
  br i1 %i.ah, label %bb.s, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us8

bb.s:                                             ; preds = %bb.r
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us8

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us8: ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.0.i.i.us.i.us9 = phi float [ %i.af, %bb.o ], [ +inf, %bb.s ], [ f0x7F7FFFFF, %bb.r ], [ -inf, %bb.q ], [ f0xFF7FFFFF, %bb.p ]
  store atomic float %.0.i.i.us.i.us9, ptr %.0913.us.i.us6 monotonic, align 4
  %i.ai = add i64 %.01012.us.i.us7, -1            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.014.us.i.us5, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.0913.us.i.us6, i64 4
  %.not.us.i.us11 = icmp eq i64 %i.ai, 0
  br i1 %.not.us.i.us11, label %_ZN2v88internal12_GLOBAL__N_128CopyBetweenBackingStoresImplILNS0_12ElementsKindE39ELS3_28EE4CopyEPdPfmNS1_14IsSharedBufferE.exit, label %.lr.ph.split.us.i.us4, !llvm.loop !6537

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.preheader.i.split, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i
  %.014.us.i = phi ptr [ %i.aw, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i ], [ %0, %.lr.ph.split.us.preheader.i.split ] ; 3 uses
  %.0913.us.i = phi ptr [ %i.ax, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i ], [ %1, %.lr.ph.split.us.preheader.i.split ] ; 2 uses
  %.01012.us.i = phi i64 [ %i.av, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i ], [ %2, %.lr.ph.split.us.preheader.i.split ]
  %i.al = load atomic i32, ptr %.014.us.i monotonic, align 4
  %.sroa.0.0.insert.ext.i.us.i = zext i32 %i.al to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.014.us.i, i64 4
  %i.an = load atomic i32, ptr %i.am monotonic, align 4
  %.sroa.0.4.insert.ext.i.us.i = zext i32 %i.an to i64
  %.sroa.0.4.insert.shift.i.us.i = shl nuw i64 %.sroa.0.4.insert.ext.i.us.i, 32
  %.sroa.0.4.insert.insert.i.us.i = or disjoint i64 %.sroa.0.4.insert.shift.i.us.i, %.sroa.0.0.insert.ext.i.us.i
  %i.ao = bitcast i64 %.sroa.0.4.insert.insert.i.us.i to double ; 5 uses
  %i.ap = fcmp ogt double %i.ao, f0x47EFFFFFE0000000
  br i1 %i.ap, label %bb.x, label %bb.t

bb.t:                                             ; preds = %.lr.ph.split.us.i
  %i.aq = fcmp olt double %i.ao, f0xC7EFFFFFE0000000
  br i1 %i.aq, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ar = fptrunc double %i.ao to float
  %i.as = bitcast float %i.ar to i32
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i

bb.v:                                             ; preds = %bb.t
  %i.at = fcmp ult double %i.ao, f0xC7EFFFFFEFFFFFFF
  br i1 %i.at, label %bb.w, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i

bb.w:                                             ; preds = %bb.v
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i

bb.x:                                             ; preds = %.lr.ph.split.us.i
  %i.au = fcmp ugt double %i.ao, f0x47EFFFFFEFFFFFFF
  br i1 %i.au, label %bb.y, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i

bb.y:                                             ; preds = %bb.x
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i: ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %.0.i.i.us.i = phi i32 [ %i.as, %bb.u ], [ 2139095040, %bb.y ], [ 2139095039, %bb.x ], [ -8388608, %bb.w ], [ -8388609, %bb.v ]
  store atomic i32 %.0.i.i.us.i, ptr %.0913.us.i monotonic, align 4
  %i.av = add i64 %.01012.us.i, -1                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.014.us.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.0913.us.i, i64 4
  %.not.us.i = icmp eq i64 %i.av, 0
  br i1 %.not.us.i, label %_ZN2v88internal12_GLOBAL__N_128CopyBetweenBackingStoresImplILNS0_12ElementsKindE39ELS3_28EE4CopyEPdPfmNS1_14IsSharedBufferE.exit, label %.lr.ph.split.us.i, !llvm.loop !6537

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7GetImplEPdNS1_14IsSharedBufferE.exit.i: ; preds = %.lr.ph.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i
  %.014.i = phi ptr [ %i.be, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i ], [ %0, %.lr.ph.i ] ; 2 uses
  %.0913.i = phi ptr [ %i.bf, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i ], [ %1, %.lr.ph.i ] ; 2 uses
  %.01012.i = phi i64 [ %i.bd, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i ], [ %2, %.lr.ph.i ]
  %.0.copyload.i.i.i = load double, ptr %.014.i, align 1 ; 5 uses
  %i.ay = fcmp ogt double %.0.copyload.i.i.i, f0x47EFFFFFE0000000
  br i1 %i.ay, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7GetImplEPdNS1_14IsSharedBufferE.exit.i
  %i.az = fcmp ugt double %.0.copyload.i.i.i, f0x47EFFFFFEFFFFFFF
  br i1 %i.az, label %bb.aa, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i

bb.aa:                                            ; preds = %bb.z
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i

bb.ab:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7GetImplEPdNS1_14IsSharedBufferE.exit.i
  %i.ba = fcmp olt double %.0.copyload.i.i.i, f0xC7EFFFFFE0000000
  br i1 %i.ba, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.bb = fcmp ult double %.0.copyload.i.i.i, f0xC7EFFFFFEFFFFFFF
  br i1 %i.bb, label %bb.ad, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i

bb.ad:                                            ; preds = %bb.ac
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i

bb.ae:                                            ; preds = %bb.ab
  %i.bc = fptrunc double %.0.copyload.i.i.i to float
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa, %bb.z
  %.0.i.i.i = phi float [ %i.bc, %bb.ae ], [ +inf, %bb.aa ], [ f0x7F7FFFFF, %bb.z ], [ -inf, %bb.ad ], [ f0xFF7FFFFF, %bb.ac ]
  store float %.0.i.i.i, ptr %.0913.i, align 1
  %i.bd = add i64 %.01012.i, -1                   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.014.i, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.0913.i, i64 4
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_128CopyBetweenBackingStoresImplILNS0_12ElementsKindE39ELS3_28EE4CopyEPdPfmNS1_14IsSharedBufferE.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7GetImplEPdNS1_14IsSharedBufferE.exit.i, !llvm.loop !6537

_ZN2v88internal12_GLOBAL__N_128CopyBetweenBackingStoresImplILNS0_12ElementsKindE39ELS3_28EE4CopyEPdPfmNS1_14IsSharedBufferE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us8, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us.us, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE24CopyBetweenBackingStoresILS3_29EEEvPNS1_21TypedArrayCTypeHelperIXT_EE4typeEPfmNS1_14IsSharedBufferE(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64
  %.not11.i.i = icmp eq i64 %2, 0
  br i1 %.not11.i.i, label %_ZN2v88internal12_GLOBAL__N_128CopyBetweenBackingStoresImplILNS0_12ElementsKindE39ELS3_29EE4CopyEPtPfmNS1_14IsSharedBufferE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  br i1 %3, label %.lr.ph.split.us.preheader.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader: ; preds = %.lr.ph.i.i
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader25, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader
  %i.c = shl i64 %2, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.c
  %i.d = shl i64 %2, 1
  %scevgep17 = getelementptr i8, ptr %0, i64 %i.d
  %bound0 = icmp ult ptr %1, %scevgep17
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader25, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 4 uses
  %i.e = shl i64 %n.vec, 1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %i.g = shl i64 %n.vec, 2
  %i.h = getelementptr i8, ptr %1, i64 %i.g
  %i.i = and i64 %2, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %0, i64 %i.j
  %i.k = shl i64 %index, 2
  %next.gep18 = getelementptr i8, ptr %1, i64 %i.k
  %wide.load = load <4 x i16>, ptr %next.gep, align 1, !alias.scope !6538 ; 2 uses
  %i.l = zext <4 x i16> %wide.load to <4 x i32>   ; 2 uses
  %i.m = shl <4 x i32> %i.l, splat (i32 17)       ; 2 uses
  %i.n = lshr exact <4 x i32> %i.m, splat (i32 4)
  %i.o = or disjoint <4 x i32> %i.n, splat (i32 1879048192)
  %i.p = bitcast <4 x i32> %i.o to <4 x float>
  %i.q = and <4 x i32> %i.l, splat (i32 32767)
  %i.r = or disjoint <4 x i32> %i.q, splat (i32 1056964608)
  %i.s = bitcast <4 x i32> %i.r to <4 x float>
  %i.t = icmp ult <4 x i32> %i.m, splat (i32 134217728)
  %i.u = fadd <4 x float> %i.s, splat (float -5.000000e-01)
  %i.v = fmul <4 x float> %i.p, splat (float 1.925930e-34)
  %i.w = select <4 x i1> %i.t, <4 x float> %i.u, <4 x float> %i.v
  %i.x = bitcast <4 x float> %i.w to <4 x i32>
  %i.y = sext <4 x i16> %wide.load to <4 x i32>
  %i.z = and <4 x i32> %i.y, splat (i32 -2147483648)
  %i.aa = or <4 x i32> %i.z, %i.x
  %i.ab = bitcast <4 x i32> %i.aa to <4 x float>  ; 4 uses
  %i.ac = fpext <4 x float> %i.ab to <4 x double> ; 2 uses
  %i.ad = fcmp ogt <4 x float> %i.ab, splat (float f0x7F7FFFFF) ; 3 uses
  %i.ae = fcmp olt <4 x float> %i.ab, splat (float f0xFF7FFFFF) ; 2 uses
  %i.af = fcmp oge <4 x double> %i.ac, splat (double f0xC7EFFFFFEFFFFFFF)
  %i.ag = fcmp ugt <4 x double> %i.ac, splat (double f0x47EFFFFFEFFFFFFF) ; 2 uses
  %i.ah = and <4 x i1> %i.ad, %i.ag
  %4 = xor <4 x i1> %i.ag, splat (i1 true)
  %5 = select <4 x i1> %i.ad, <4 x i1> %4, <4 x i1> zeroinitializer
  %i.ai = xor <4 x i1> %i.ae, %i.ad
  %6 = and <4 x i1> %i.ae, %i.af
  %predphi = select <4 x i1> %6, <4 x float> splat (float f0xFF7FFFFF), <4 x float> splat (float -inf)
  %predphi19 = select <4 x i1> %i.ai, <4 x float> %predphi, <4 x float> %i.ab
  %predphi20 = select <4 x i1> %i.ah, <4 x float> splat (float +inf), <4 x float> %predphi19
  %predphi21 = select <4 x i1> %5, <4 x float> splat (float f0x7F7FFFFF), <4 x float> %predphi20
  store <4 x float> %predphi21, ptr %next.gep18, align 1, !alias.scope !6541, !noalias !6538
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !6543

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal12_GLOBAL__N_128CopyBetweenBackingStoresImplILNS0_12ElementsKindE39ELS3_29EE4CopyEPtPfmNS1_14IsSharedBufferE.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader25

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader25: ; preds = %vector.memcheck, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader, %middle.block
  %.014.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader ], [ %i.f, %middle.block ]
  %.0913.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader ], [ %i.h, %middle.block ]
  %.01012.i.i.ph = phi i64 [ %2, %vector.memcheck ], [ %2, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader ], [ %i.i, %middle.block ]
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i
  %i.ak = and i64 %i.a, 1
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph.split.us.preheader.i.split.i, label %.split.us.i.i

.lr.ph.split.us.preheader.i.split.i:              ; preds = %.lr.ph.split.us.preheader.i.i
  %i.am = and i64 %i.b, 3
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.split.us.i.us.i, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.us.i:                           ; preds = %.lr.ph.split.us.preheader.i.split.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us.i
  %.014.us.i.us.i = phi ptr [ %i.bk, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us.i ], [ %0, %.lr.ph.split.us.preheader.i.split.i ] ; 2 uses
  %.0913.us.i.us.i = phi ptr [ %i.bl, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us.i ], [ %1, %.lr.ph.split.us.preheader.i.split.i ] ; 2 uses
  %.01012.us.i.us.i = phi i64 [ %i.bj, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us.i ], [ %2, %.lr.ph.split.us.preheader.i.split.i ]
  %i.ao = load atomic i16, ptr %.014.us.i.us.i acquire, align 2 ; 2 uses
  %i.ap = zext i16 %i.ao to i32                   ; 2 uses
  %i.aq = shl i32 %i.ap, 17                       ; 2 uses
  %i.ar = lshr exact i32 %i.aq, 4
  %i.as = or disjoint i32 %i.ar, 1879048192
  %i.at = bitcast i32 %i.as to float
  %i.au = and i32 %i.ap, 32767
  %i.av = or disjoint i32 %i.au, 1056964608
  %i.aw = bitcast i32 %i.av to float
  %i.ax = icmp ult i32 %i.aq, 134217728
  %i.ay = fadd float %i.aw, -5.000000e-01
  %i.az = fmul float %i.at, 1.925930e-34
  %.v.i.us.i.us.i = select i1 %i.ax, float %i.ay, float %i.az
  %i.ba = bitcast float %.v.i.us.i.us.i to i32
  %.signext.i.us.i.us.i = sext i16 %i.ao to i32
  %i.bb = and i32 %.signext.i.us.i.us.i, -2147483648
  %i.bc = or i32 %i.bb, %i.ba
  %i.bd = bitcast i32 %i.bc to float              ; 4 uses
  %i.be = fpext float %i.bd to double             ; 2 uses
  %i.bf = fcmp ogt float %i.bd, f0x7F7FFFFF
  br i1 %i.bf, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.i.us.i
  %i.bg = fcmp olt float %i.bd, f0xFF7FFFFF
  br i1 %i.bg, label %bb.c, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us.i

bb.c:                                             ; preds = %bb.b
  %i.bh = fcmp ult double %i.be, f0xC7EFFFFFEFFFFFFF
  br i1 %i.bh, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us.i

bb.d:                                             ; preds = %bb.c
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us.i

bb.e:                                             ; preds = %.lr.ph.split.us.i.us.i
  %i.bi = fcmp ugt double %i.be, f0x47EFFFFFEFFFFFFF
  br i1 %i.bi, label %bb.f, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us.i

bb.f:                                             ; preds = %bb.e
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0.i.i.us.i.us.i = phi float [ f0xFF7FFFFF, %bb.c ], [ +inf, %bb.f ], [ f0x7F7FFFFF, %bb.e ], [ -inf, %bb.d ], [ %i.bd, %bb.b ]
  store atomic float %.0.i.i.us.i.us.i, ptr %.0913.us.i.us.i monotonic, align 4
  %i.bj = add i64 %.01012.us.i.us.i, -1           ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.014.us.i.us.i, i64 2
  %i.bl = getelementptr inbounds nuw i8, ptr %.0913.us.i.us.i, i64 4
  %.not.us.i.us.i = icmp eq i64 %i.bj, 0
  br i1 %.not.us.i.us.i, label %_ZN2v88internal12_GLOBAL__N_128CopyBetweenBackingStoresImplILNS0_12ElementsKindE39ELS3_29EE4CopyEPtPfmNS1_14IsSharedBufferE.exit, label %.lr.ph.split.us.i.us.i, !llvm.loop !6544

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.preheader.i.split.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i
  %.014.us.i.i = phi ptr [ %i.ci, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i ], [ %0, %.lr.ph.split.us.preheader.i.split.i ] ; 2 uses
  %.0913.us.i.i = phi ptr [ %i.cj, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i ], [ %1, %.lr.ph.split.us.preheader.i.split.i ] ; 2 uses
  %.01012.us.i.i = phi i64 [ %i.ch, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i ], [ %2, %.lr.ph.split.us.preheader.i.split.i ]
  %i.bm = load atomic i16, ptr %.014.us.i.i acquire, align 2 ; 2 uses
  %i.bn = zext i16 %i.bm to i32                   ; 2 uses
  %i.bo = shl i32 %i.bn, 17                       ; 2 uses
  %i.bp = lshr exact i32 %i.bo, 4
  %i.bq = or disjoint i32 %i.bp, 1879048192
  %i.br = bitcast i32 %i.bq to float
  %i.bs = and i32 %i.bn, 32767
  %i.bt = or disjoint i32 %i.bs, 1056964608
  %i.bu = bitcast i32 %i.bt to float
  %i.bv = icmp ult i32 %i.bo, 134217728
  %i.bw = fadd float %i.bu, -5.000000e-01
  %i.bx = fmul float %i.br, 1.925930e-34
  %.v.i.us.i.i = select i1 %i.bv, float %i.bw, float %i.bx
  %i.by = bitcast float %.v.i.us.i.i to i32
  %.signext.i.us.i.i = sext i16 %i.bm to i32
  %i.bz = and i32 %.signext.i.us.i.i, -2147483648
  %i.ca = or i32 %i.bz, %i.by                     ; 2 uses
  %i.cb = bitcast i32 %i.ca to float              ; 3 uses
  %i.cc = fpext float %i.cb to double             ; 2 uses
  %i.cd = fcmp ogt float %i.cb, f0x7F7FFFFF
  br i1 %i.cd, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.i.i
  %i.ce = fcmp olt float %i.cb, f0xFF7FFFFF
  br i1 %i.ce, label %bb.h, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i

bb.h:                                             ; preds = %bb.g
  %i.cf = fcmp ult double %i.cc, f0xC7EFFFFFEFFFFFFF
  br i1 %i.cf, label %bb.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i

bb.i:                                             ; preds = %bb.h
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i

bb.j:                                             ; preds = %.lr.ph.split.us.i.i
  %i.cg = fcmp ugt double %i.cc, f0x47EFFFFFEFFFFFFF
  br i1 %i.cg, label %bb.k, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i

bb.k:                                             ; preds = %bb.j
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.0.i.i.us.i.i = phi i32 [ -8388609, %bb.h ], [ 2139095040, %bb.k ], [ 2139095039, %bb.j ], [ -8388608, %bb.i ], [ %i.ca, %bb.g ]
  store atomic i32 %.0.i.i.us.i.i, ptr %.0913.us.i.i monotonic, align 4
  %i.ch = add i64 %.01012.us.i.i, -1              ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.014.us.i.i, i64 2
  %i.cj = getelementptr inbounds nuw i8, ptr %.0913.us.i.i, i64 4
  %.not.us.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not.us.i.i, label %_ZN2v88internal12_GLOBAL__N_128CopyBetweenBackingStoresImplILNS0_12ElementsKindE39ELS3_29EE4CopyEPtPfmNS1_14IsSharedBufferE.exit, label %.lr.ph.split.us.i.i, !llvm.loop !6544

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i: ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader25, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i
  %.014.i.i = phi ptr [ %i.df, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i ], [ %.014.i.i.ph, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader25 ] ; 2 uses
  %.0913.i.i = phi ptr [ %i.dg, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i ], [ %.0913.i.i.ph, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader25 ] ; 2 uses
  %.01012.i.i = phi i64 [ %i.de, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i ], [ %.01012.i.i.ph, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i.preheader25 ]
  %.0.copyload.i.i.i.i = load i16, ptr %.014.i.i, align 1 ; 2 uses
  %i.ck = zext i16 %.0.copyload.i.i.i.i to i32    ; 2 uses
  %i.cl = shl i32 %i.ck, 17                       ; 2 uses
  %i.cm = lshr exact i32 %i.cl, 4
  %i.cn = or disjoint i32 %i.cm, 1879048192
  %i.co = bitcast i32 %i.cn to float
  %i.cp = and i32 %i.ck, 32767
  %i.cq = or disjoint i32 %i.cp, 1056964608
  %i.cr = bitcast i32 %i.cq to float
  %i.cs = icmp ult i32 %i.cl, 134217728
  %i.ct = fadd float %i.cr, -5.000000e-01
  %i.cu = fmul float %i.co, 1.925930e-34
  %.v.i.i.i = select i1 %i.cs, float %i.ct, float %i.cu
  %i.cv = bitcast float %.v.i.i.i to i32
  %.signext.i.i.i = sext i16 %.0.copyload.i.i.i.i to i32
  %i.cw = and i32 %.signext.i.i.i, -2147483648
  %i.cx = or i32 %i.cw, %i.cv
  %i.cy = bitcast i32 %i.cx to float              ; 4 uses
  %i.cz = fpext float %i.cy to double             ; 2 uses
  %i.da = fcmp ogt float %i.cy, f0x7F7FFFFF
  br i1 %i.da, label %bb.l, label %bb.n

.split.us.i.i:                                    ; preds = %.lr.ph.split.us.preheader.i.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.33) #24
  unreachable

bb.l:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i
  %i.db = fcmp ugt double %i.cz, f0x47EFFFFFEFFFFFFF
  br i1 %i.db, label %bb.m, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i

bb.m:                                             ; preds = %bb.l
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i

bb.n:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i
  %i.dc = fcmp olt float %i.cy, f0xFF7FFFFF
  br i1 %i.dc, label %bb.o, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.dd = fcmp ult double %i.cz, f0xC7EFFFFFEFFFFFFF
  br i1 %i.dd, label %bb.p, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i

bb.p:                                             ; preds = %bb.o
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %.0.i.i.i.i = phi float [ f0xFF7FFFFF, %bb.o ], [ +inf, %bb.m ], [ f0x7F7FFFFF, %bb.l ], [ -inf, %bb.p ], [ %i.cy, %bb.n ]
  store float %.0.i.i.i.i, ptr %.0913.i.i, align 1
  %i.de = add i64 %.01012.i.i, -1                 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 2
  %i.dg = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 4
  %.not.i.i = icmp eq i64 %i.de, 0
  br i1 %.not.i.i, label %_ZN2v88internal12_GLOBAL__N_128CopyBetweenBackingStoresImplILNS0_12ElementsKindE39ELS3_29EE4CopyEPtPfmNS1_14IsSharedBufferE.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE29EE7GetImplEPtNS1_14IsSharedBufferE.exit.i.i, !llvm.loop !6545

_ZN2v88internal12_GLOBAL__N_128CopyBetweenBackingStoresImplILNS0_12ElementsKindE39ELS3_29EE4CopyEPtPfmNS1_14IsSharedBufferE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.i.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromScalarEd.exit.us.i.us.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_3
