Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/CalculateLayout?download=true
inline.NumInlined: 1645
inline.NumDeleted: 324
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN8facebook4yogaL19calculateLayoutImplEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj:bb.a
_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1717: ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1717.loopexit, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1725
  %.062.i.lcssa = phi float [ 0.000000e+00, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1725 ], [ %i.aop, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1717.loopexit ] ; 2 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.aor = load ptr, ptr %i.aoq, align 8, !tbaa !94 ; 2 uses
  %.not12.i.i.i1708 = icmp eq ptr %i.aor, null
  br i1 %.not12.i.i.i1708, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1712, label %.lr.ph.i.i.i1709

.lr.ph.i.i.i1709:                                 ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1717, %.lr.ph.i.i.i1709
  %.013.i.i.i1710 = phi ptr [ %i.aos, %.lr.ph.i.i.i1709 ], [ %i.aor, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1717 ] ; 2 uses
  %i.aos = load ptr, ptr %.013.i.i.i1710, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i1710, i64 noundef 24) #16
  %.not.i.i.i1711 = icmp eq ptr %i.aos, null
  br i1 %.not.i.i.i1711, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1712, label %.lr.ph.i.i.i1709, !llvm.loop !0

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1712: ; preds = %.lr.ph.i.i.i1709, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1717
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  %.not796 = icmp eq i64 %i.jd, 1
  br i1 %.not796, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1712
  %i.aot = getelementptr inbounds nuw i8, ptr %0, i64 145
  %.val.i.i = load i16, ptr %i.aot, align 1
  %..i = select i1 %i.pj, i64 85, i64 87
  %i.aou = getelementptr inbounds nuw i8, ptr %i.ab, i64 %..i
  %i.aov = load i16, ptr %i.aou, align 1, !tbaa !77 ; 2 uses
  %i.aow = and i16 %i.aov, 7
  %.not.i3.i = icmp eq i16 %i.aow, 0
  %.sroa.0.0.i5.i = select i1 %.not.i3.i, i16 %.val.i.i, i16 %i.aov
  %i.aox = call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %.sroa.0.0.i5.i, float noundef %i.rk) ; 2 uses
  %.sink.i.inv.i916 = fcmp oge float %i.aox, 0.000000e+00
  %i.aoy = select i1 %.sink.i.inv.i916, float %i.aox, float 0.000000e+00
  %i.aoz = add i64 %i.jd, -1
  %i.apa = uitofp i64 %i.aoz to float
  %i.apb = call float @llvm.fmuladd.f32(float %i.aoy, float %i.apa, float %.062.i.lcssa)
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1712
  %.0783 = phi float [ %i.apb, %bb.ej ], [ %.062.i.lcssa, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1712 ]
  %i.apc = icmp ne i32 %i.rc, 1
  %i.apd = fcmp ogt float %.0783, %i.rk           ; 2 uses
  %i.ape = icmp eq i32 %i.rc, 2
  %i.apf = and i1 %i.ape, %i.apd
  %or.cond7 = and i1 %i.pk, %i.apf
  %spec.store.select = select i1 %or.cond7, i32 0, i32 %i.rc ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.apg = load ptr, ptr %i.ux, align 8, !tbaa !84, !noalias !163
  %i.aph = load ptr, ptr %i.uw, align 8, !tbaa !85, !noalias !163 ; 2 uses
  %.not.i917 = icmp eq ptr %i.apg, %i.aph
  br i1 %.not.i917, label %bb.eo, label %bb.el

bb.el:                                            ; preds = %bb.ek
  store ptr %0, ptr %19, align 8, !tbaa !92, !alias.scope !163
  %i.api = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.apj = getelementptr inbounds nuw i8, ptr %19, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.api, i8 0, i64 16, i1 false), !alias.scope !163
  %i.apk = load ptr, ptr %i.aph, align 8, !tbaa !23, !noalias !163
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 60
  %i.apm = load i8, ptr %i.apl, align 4, !noalias !163
  %i.apn = and i8 %i.apm, 12
  %i.apo = icmp eq i8 %i.apn, 8
  br i1 %i.apo, label %bb.em, label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit, !prof !93

bb.em:                                            ; preds = %bb.el
  invoke void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %19)
          to label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit unwind label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.app = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.apq = load ptr, ptr %i.apj, align 8, !tbaa !94, !alias.scope !163 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.apq, null
  br i1 %.not12.i.i.i.i, label %common.resume, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.en, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.apr, %.lr.ph.i.i.i.i ], [ %i.apq, %bb.en ] ; 2 uses
  %i.apr = load ptr, ptr %.013.i.i.i.i, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i, i64 noundef 24) #16
  %.not.i.i.i3.i = icmp eq ptr %i.apr, null
  br i1 %.not.i.i.i3.i, label %common.resume, label %.lr.ph.i.i.i.i, !llvm.loop !0

bb.eo:                                            ; preds = %bb.ek
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false), !alias.scope !163
  br label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit

_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit: ; preds = %bb.el, %bb.em, %bb.eo
  %i.aps = getelementptr inbounds nuw i8, ptr %0, i64 145 ; 2 uses
  %.val.i.i918 = load i16, ptr %i.aps, align 1
  %..i919 = select i1 %i.ph, i64 85, i64 87
  %i.apt = getelementptr inbounds nuw i8, ptr %i.ab, i64 %..i919
  %i.apu = load i16, ptr %i.apt, align 1, !tbaa !77 ; 2 uses
  %i.apv = and i16 %i.apu, 7
  %.not.i3.i920 = icmp eq i16 %i.apv, 0
  %.sroa.0.0.i5.i921 = select i1 %.not.i3.i920, i16 %.val.i.i918, i16 %i.apu
  %i.apw = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %.sroa.0.0.i5.i921, float noundef %i.rl)
          to label %_ZNK8facebook4yoga5Style17computeGapForAxisENS0_13FlexDirectionEf.exit unwind label %bb.sa ; 2 uses

_ZNK8facebook4yoga5Style17computeGapForAxisENS0_13FlexDirectionEf.exit: ; preds = %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit
  %.sink.i.inv.i922 = fcmp oge float %i.apw, 0.000000e+00
  %i.apx = select i1 %.sink.i.inv.i922, float %i.apw, float 0.000000e+00 ; 2 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.apz = load ptr, ptr %19, align 8, !tbaa !92
  %.not.i9232963 = icmp ne ptr %i.apz, null
  %i.aqa = load i64, ptr %i.apy, align 8
  %i.aqb = icmp ne i64 %i.aqa, 0
  %i.aqc = select i1 %.not.i9232963, i1 true, i1 %i.aqb
  br i1 %i.aqc, label %.lr.ph2968, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit._crit_edge

.lr.ph2968:                                       ; preds = %_ZNK8facebook4yoga5Style17computeGapForAxisENS0_13FlexDirectionEf.exit
  %i.aqd = icmp eq i32 %i.rd, 0                   ; 3 uses
  %not.825 = xor i1 %8, true
  %i.aqe = and i1 %i.aqd, %not.825
  %.not826 = icmp eq i32 %spec.store.select, 0
  %i.aqf = getelementptr inbounds nuw i8, ptr %0, i64 151 ; 2 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 7 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 2 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %0, i64 115 ; 4 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %0, i64 113 ; 4 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %0, i64 117 ; 4 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %0, i64 155
  %i.aqm = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.aqn = getelementptr inbounds nuw i8, ptr %0, i64 157
  %i.aqo = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 4 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 5 uses
  %i.aqq = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 18 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 9 uses
  %spec.select2506 = zext i1 %i.ph to i64         ; 6 uses
  %spec.select.i1927 = zext i1 %i.ph to i8        ; 5 uses
  %.lobit = lshr i8 %.0.i907, 1                   ; 2 uses
  %i.aqs = zext nneg i8 %.lobit to i64
  %i.aqt = getelementptr inbounds nuw i8, ptr %20, i64 44 ; 4 uses
  %.not3218 = xor i1 %i.pj, true                  ; 2 uses
  %.0.i.i4.i.i1832 = select i1 %i.pj, i32 2, i32 3 ; 4 uses
  %.0.i.i.i152.i = zext i1 %not.3460 to i32       ; 2 uses
  %.0.i.i4.i154.i = select i1 %i.ph, i32 2, i32 3 ; 2 uses
  %i.aqu = fcmp uno float %i.rl, 0.000000e+00     ; 2 uses
  %i.aqv = zext i1 %not.3460 to i64               ; 4 uses
  %.not3219 = xor i1 %i.aqd, true                 ; 3 uses
  %spec.select2512 = zext i1 %not.3460 to i8
  %i.aqw = select i1 %i.aqu, i32 1, i32 2
  %i.aqx = getelementptr inbounds nuw i8, ptr %0, i64 580 ; 3 uses
  %..i.i = select i1 %i.pj, i64 85, i64 87
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.ab, i64 %..i.i
  %i.aqz = icmp eq i32 %spec.store.select, 2
  %i.ara = getelementptr inbounds nuw [2 x i8], ptr %i.aqf, i64 %spec.select2506 ; 2 uses
  %i.arb = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.arc = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ard = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 3 uses
  %i.are = getelementptr inbounds nuw i8, ptr %20, i64 52 ; 15 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %20, i64 56 ; 11 uses
  %.not136.i = or i1 %8, %.not3219
  %.0.i.i.i.i950 = zext i1 %.not3218 to i32       ; 2 uses
  %i.arg = add i32 %i.rd, -1
  %or.cond13 = icmp ult i32 %i.arg, 2
  %.not = xor i1 %i.pk, true
  %or.cond15 = and i1 %i.aqd, %.not
  %i.arh = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %0, i64 123 ; 2 uses
  %i.arj = getelementptr inbounds nuw i8, ptr %0, i64 133 ; 4 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %0, i64 131 ; 4 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %0, i64 135 ; 4 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %0, i64 109 ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %0, i64 127 ; 2 uses
  %invariant.op4916 = and i1 %i.apc, %i.apd
  %i.aro = zext nneg i8 %i.pi to i64
  %switch.gep4590 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL25computeMinContentMainSizeEPNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEff.30, i64 %i.aro
  %i.arp = zext nneg i8 %i.pi to i64
  %switch.gep4594 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL25computeMinContentMainSizeEPNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEff.33, i64 %i.arp
  %i.arq = zext nneg i8 %i.pi to i64
  %switch.gep4598 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL25computeMinContentMainSizeEPNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEff.30, i64 %i.arq
  %i.arr = zext nneg i8 %i.pi to i64
  %switch.gep4602 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL25computeMinContentMainSizeEPNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEff.33, i64 %i.arr
  %i.ars = zext nneg i8 %.0.i907 to i64
  %switch.gep4606 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL25computeMinContentMainSizeEPNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEff.29, i64 %i.ars
  %i.art = zext nneg i8 %.0.i907 to i64
  %switch.gep4610 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL25computeMinContentMainSizeEPNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEff.32, i64 %i.art
  %i.aru = zext nneg i8 %.0.i907 to i64
  %switch.gep4614 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN8facebook4yogaL19calculateLayoutImplEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj.9, i64 %i.aru
  %i.arv = zext nneg i8 %.0.i907 to i64
  %switch.gep4617 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL25computeMinContentMainSizeEPNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEff.29, i64 %i.arv
  %i.arw = zext nneg i8 %i.pi to i64
  %switch.gep4621 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL25computeMinContentMainSizeEPNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEff.30, i64 %i.arw
  %i.arx = zext nneg i8 %i.pi to i64
  %switch.gep4625 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL25computeMinContentMainSizeEPNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEff.33, i64 %i.arx
  %i.ary = zext nneg i8 %i.pi to i64
  %switch.gep4629 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL25computeMinContentMainSizeEPNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEff.33, i64 %i.ary
  %i.arz = zext nneg i8 %i.pi to i64
  %switch.gep4633 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL25computeMinContentMainSizeEPNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEff.33, i64 %i.arz
  %i.asa = zext nneg i8 %i.pi to i64
  %switch.gep4637 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL25computeMinContentMainSizeEPNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEff.30, i64 %i.asa
  %i.asb = zext nneg i8 %i.pi to i64
  %switch.gep4641 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN8facebook4yogaL19calculateLayoutImplEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj.25, i64 %i.asb
  %i.asc = zext nneg i8 %i.pi to i64
  %switch.gep4644 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL25computeMinContentMainSizeEPNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEff.30, i64 %i.asc
  br label %bb.ep

bb.ep:                                            ; preds = %.lr.ph2968, %_ZN8facebook4yoga8FlexLineD2Ev.exit
  %.07422967 = phi float [ 0.000000e+00, %.lr.ph2968 ], [ %i.cng, %_ZN8facebook4yoga8FlexLineD2Ev.exit ] ; 4 uses
  %.07812966 = phi float [ 0.000000e+00, %.lr.ph2968 ], [ %i.cnj, %_ZN8facebook4yoga8FlexLineD2Ev.exit ] ; 2 uses
  %.07822965 = phi i64 [ 0, %.lr.ph2968 ], [ %i.cno, %_ZN8facebook4yoga8FlexLineD2Ev.exit ] ; 3 uses
  %.07842964 = phi float [ %i.rk, %.lr.ph2968 ], [ %.37872370, %_ZN8facebook4yoga8FlexLineD2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  invoke void @_ZN8facebook4yoga17calculateFlexLineEPNS0_4NodeENS0_9DirectionEffffRNS0_18LayoutableChildrenIS1_E8IteratorEm(ptr dead_on_unwind nonnull writable sret(%"struct.facebook::yoga::FlexLine") align 8 %20, ptr noundef nonnull %0, i8 noundef zeroext %3, float noundef %6, float noundef %i.pl, float noundef %i.rh, float noundef %.07842964, ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %.07822965)
          to label %bb.eq unwind label %bb.gf

bb.eq:                                            ; preds = %bb.ep
  br i1 %.not826, label %.thread2367, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.asd = load i16, ptr %i.aqf, align 1, !tbaa !12 ; 2 uses
  %i.ase = and i16 %i.asd, 7
  %i.asf = icmp eq i16 %i.ase, 0
  br i1 %i.asf, label %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.asg = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.asd, float noundef %6)
          to label %.noexc unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc:                                           ; preds = %bb.es
  %i.ash = load i8, ptr %i.aqg, align 4
  %i.asi = and i8 %i.ash, 16
  %i.asj = icmp ne i8 %i.asi, 0
  %i.ask = fcmp ord float %i.asg, 0.000000e+00
  %or.cond.i924 = select i1 %i.asj, i1 %i.ask, i1 false
  br i1 %or.cond.i924, label %bb.et, label %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit

bb.et:                                            ; preds = %.noexc
  switch i8 %i.t, label %bb.ew [
    i8 1, label %bb.eu
    i8 2, label %bb.ev
  ]

bb.eu:                                            ; preds = %bb.et
  %i.asl = load i16, ptr %i.aqj, align 1, !tbaa !77 ; 2 uses
  %i.asm = and i16 %i.asl, 7
  %.not14.i.i2131 = icmp eq i16 %i.asm, 0
  br i1 %.not14.i.i2131, label %bb.ew, label %.noexc1779

bb.ev:                                            ; preds = %bb.et
  %i.asn = load i16, ptr %i.aqi, align 1, !tbaa !77 ; 2 uses
  %i.aso = and i16 %i.asn, 7
  %.not.i.i2125 = icmp eq i16 %i.aso, 0
  br i1 %.not.i.i2125, label %bb.ew, label %.noexc1779

bb.ew:                                            ; preds = %bb.ev, %bb.eu, %bb.et
  %i.asp = load i16, ptr %i.aqh, align 1, !tbaa !77 ; 2 uses
  %i.asq = and i16 %i.asp, 7
  %.not15.i.i2127 = icmp eq i16 %i.asq, 0
  br i1 %.not15.i.i2127, label %bb.ex, label %.noexc1779

bb.ex:                                            ; preds = %bb.ew
  %i.asr = load i16, ptr %i.aqk, align 1, !tbaa !77 ; 2 uses
  %i.ass = and i16 %i.asr, 7
  %.not16.i.i2128 = icmp eq i16 %i.ass, 0
  %.val.i.i2129 = load i16, ptr %i.ck, align 1
  %.sroa.0.0.pre.i.i2130 = select i1 %.not16.i.i2128, i16 %.val.i.i2129, i16 %i.asr
  br label %.noexc1779

.noexc1779:                                       ; preds = %bb.ex, %bb.ew, %bb.ev, %bb.eu
  %.sroa.0.0.i2126 = phi i16 [ %i.asl, %bb.eu ], [ %i.asn, %bb.ev ], [ %i.asp, %bb.ew ], [ %.sroa.0.0.pre.i.i2130, %bb.ex ]
  %i.ast = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %.sroa.0.0.i2126, float noundef %6)
          to label %.noexc1780 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1780:                                       ; preds = %.noexc1779
  %.sink.i.inv.i8.i.i1776 = fcmp oge float %i.ast, 0.000000e+00
  %i.asu = select i1 %.sink.i.inv.i8.i.i1776, float %i.ast, float 0.000000e+00
  switch i8 %i.t, label %bb.fa [
    i8 1, label %bb.ey
    i8 2, label %bb.ez
  ]

bb.ey:                                            ; preds = %.noexc1780
  %i.asv = load i16, ptr %i.ark, align 1, !tbaa !77 ; 2 uses
  %i.asw = and i16 %i.asv, 7
  %.not14.i.i3690 = icmp eq i16 %i.asw, 0
  br i1 %.not14.i.i3690, label %bb.fa, label %.noexc1781

bb.ez:                                            ; preds = %.noexc1780
  %i.asx = load i16, ptr %i.arj, align 1, !tbaa !77 ; 2 uses
  %i.asy = and i16 %i.asx, 7
  %.not.i.i3684 = icmp eq i16 %i.asy, 0
  br i1 %.not.i.i3684, label %bb.fa, label %.noexc1781

bb.fa:                                            ; preds = %bb.ez, %bb.ey, %.noexc1780
  %i.asz = load i16, ptr %i.ari, align 1, !tbaa !77 ; 2 uses
  %i.ata = and i16 %i.asz, 7
  %.not15.i.i3686 = icmp eq i16 %i.ata, 0
  br i1 %.not15.i.i3686, label %bb.fb, label %.noexc1781

bb.fb:                                            ; preds = %bb.fa
  %i.atb = load i16, ptr %i.arl, align 1, !tbaa !77 ; 2 uses
  %i.atc = and i16 %i.atb, 7
  %.not16.i.i3687 = icmp eq i16 %i.atc, 0
  %.val.i.i3688 = load i16, ptr %i.bo, align 1
  %.sroa.0.0.pre.i.i3689 = select i1 %.not16.i.i3687, i16 %.val.i.i3688, i16 %i.atb
  br label %.noexc1781

.noexc1781:                                       ; preds = %bb.fb, %bb.fa, %bb.ez, %bb.ey
  %.sroa.0.0.i3685 = phi i16 [ %i.asv, %bb.ey ], [ %i.asx, %bb.ez ], [ %i.asz, %bb.fa ], [ %.sroa.0.0.pre.i.i3689, %bb.fb ]
  %i.atd = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %.sroa.0.0.i3685, float noundef 0.000000e+00)
          to label %.noexc1782 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1782:                                       ; preds = %.noexc1781
  %.sink.i.inv.i6.i.i1777 = fcmp oge float %i.atd, 0.000000e+00
  %i.ate = select i1 %.sink.i.inv.i6.i.i1777, float %i.atd, float 0.000000e+00
  %i.atf = fadd float %i.asu, %i.ate
  switch i8 %i.t, label %bb.fe [
    i8 1, label %bb.fc
    i8 2, label %bb.fd
  ]

bb.fc:                                            ; preds = %.noexc1782
  %i.atg = load i16, ptr %i.aqi, align 1, !tbaa !77 ; 2 uses
  %i.ath = and i16 %i.atg, 7
  %.not14.i11.i3697 = icmp eq i16 %i.ath, 0
  br i1 %.not14.i11.i3697, label %bb.fe, label %.noexc1783

bb.fd:                                            ; preds = %.noexc1782
  %i.ati = load i16, ptr %i.aqj, align 1, !tbaa !77 ; 2 uses
  %i.atj = and i16 %i.ati, 7
  %.not.i5.i3691 = icmp eq i16 %i.atj, 0
  br i1 %.not.i5.i3691, label %bb.fe, label %.noexc1783

bb.fe:                                            ; preds = %bb.fd, %bb.fc, %.noexc1782
  %i.atk = load i16, ptr %i.arm, align 1, !tbaa !77 ; 2 uses
  %i.atl = and i16 %i.atk, 7
  %.not15.i7.i3693 = icmp eq i16 %i.atl, 0
  br i1 %.not15.i7.i3693, label %bb.ff, label %.noexc1783

bb.ff:                                            ; preds = %bb.fe
  %i.atm = load i16, ptr %i.aqk, align 1, !tbaa !77 ; 2 uses
  %i.atn = and i16 %i.atm, 7
  %.not16.i8.i3694 = icmp eq i16 %i.atn, 0
  %.val.i9.i3695 = load i16, ptr %i.ck, align 1
  %.sroa.0.0.pre.i10.i3696 = select i1 %.not16.i8.i3694, i16 %.val.i9.i3695, i16 %i.atm
  br label %.noexc1783

.noexc1783:                                       ; preds = %bb.ff, %bb.fe, %bb.fd, %bb.fc
  %.sroa.0.0.i3692 = phi i16 [ %i.ati, %bb.fd ], [ %i.atk, %bb.fe ], [ %.sroa.0.0.pre.i10.i3696, %bb.ff ], [ %i.atg, %bb.fc ]
  %i.ato = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %.sroa.0.0.i3692, float noundef %6)
          to label %.noexc1784 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1784:                                       ; preds = %.noexc1783
  %.sink.i.inv.i8.i8.i = fcmp oge float %i.ato, 0.000000e+00
  %i.atp = select i1 %.sink.i.inv.i8.i8.i, float %i.ato, float 0.000000e+00
  switch i8 %i.t, label %bb.fi [
    i8 1, label %bb.fg
    i8 2, label %bb.fh
  ]

bb.fg:                                            ; preds = %.noexc1784
  %i.atq = load i16, ptr %i.arj, align 1, !tbaa !77 ; 2 uses
  %i.atr = and i16 %i.atq, 7
  %.not14.i11.i3704 = icmp eq i16 %i.atr, 0
  br i1 %.not14.i11.i3704, label %bb.fi, label %.noexc1785

bb.fh:                                            ; preds = %.noexc1784
  %i.ats = load i16, ptr %i.ark, align 1, !tbaa !77 ; 2 uses
  %i.att = and i16 %i.ats, 7
  %.not.i5.i3698 = icmp eq i16 %i.att, 0
  br i1 %.not.i5.i3698, label %bb.fi, label %.noexc1785

bb.fi:                                            ; preds = %bb.fh, %bb.fg, %.noexc1784
  %i.atu = load i16, ptr %i.arn, align 1, !tbaa !77 ; 2 uses
  %i.atv = and i16 %i.atu, 7
  %.not15.i7.i3700 = icmp eq i16 %i.atv, 0
  br i1 %.not15.i7.i3700, label %bb.fj, label %.noexc1785

bb.fj:                                            ; preds = %bb.fi
  %i.atw = load i16, ptr %i.arl, align 1, !tbaa !77 ; 2 uses
  %i.atx = and i16 %i.atw, 7
  %.not16.i8.i3701 = icmp eq i16 %i.atx, 0
  %.val.i9.i3702 = load i16, ptr %i.bo, align 1
  %.sroa.0.0.pre.i10.i3703 = select i1 %.not16.i8.i3701, i16 %.val.i9.i3702, i16 %i.atw
  br label %.noexc1785

.noexc1785:                                       ; preds = %bb.fj, %bb.fi, %bb.fh, %bb.fg
  %.sroa.0.0.i3699 = phi i16 [ %i.ats, %bb.fh ], [ %i.atu, %bb.fi ], [ %.sroa.0.0.pre.i10.i3703, %bb.fj ], [ %i.atq, %bb.fg ]
  %i.aty = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %.sroa.0.0.i3699, float noundef 0.000000e+00)
          to label %.noexc925 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc925:                                        ; preds = %.noexc1785
  %.sink.i.inv.i6.i9.i1778 = fcmp oge float %i.aty, 0.000000e+00
  %i.atz = select i1 %.sink.i.inv.i6.i9.i1778, float %i.aty, float 0.000000e+00
  %i.aua = fadd float %i.atp, %i.atz
  %i.aub = fadd float %i.atf, %i.aua              ; 2 uses
  %i.auc = fcmp ord float %i.aub, 0.000000e+00
  %.sroa.0.0.i = select i1 %i.auc, float %i.aub, float 0.000000e+00
  %i.aud = fadd float %i.asg, %.sroa.0.0.i
  br label %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit

_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit: ; preds = %.noexc925, %.noexc, %bb.er
  %.sroa.010.1.i = phi float [ +qnan, %bb.er ], [ %i.aud, %.noexc925 ], [ %i.asg, %.noexc ]
  %i.aue = load i16, ptr %i.aql, align 1, !tbaa !12 ; 2 uses
  %i.auf = and i16 %i.aue, 7
  %i.aug = icmp eq i16 %i.auf, 0
  br i1 %i.aug, label %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit, label %bb.fk

bb.fk:                                            ; preds = %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit
  %i.auh = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.aue, float noundef %6)
          to label %.noexc929 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN8facebook4yogaL19calculateLayoutImplEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj:bb.a
  %.val.i9.i3726 = load i16, ptr %i.bo, align 1
  %.sroa.0.0.pre.i10.i3727 = select i1 %.not16.i8.i3725, i16 %.val.i9.i3726, i16 %i.avx
  br label %.noexc1798

.noexc1798:                                       ; preds = %bb.gb, %bb.ga, %bb.fz, %bb.fy
  %.sroa.0.0.i3723 = phi i16 [ %i.avt, %bb.fz ], [ %i.avv, %bb.ga ], [ %.sroa.0.0.pre.i10.i3727, %bb.gb ], [ %i.avr, %bb.fy ]
  %i.avz = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %.sroa.0.0.i3723, float noundef 0.000000e+00)
          to label %.noexc930 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc930:                                        ; preds = %.noexc1798
  %.sink.i.inv.i6.i9.i1791 = fcmp oge float %i.avz, 0.000000e+00
  %i.awa = select i1 %.sink.i.inv.i6.i9.i1791, float %i.avz, float 0.000000e+00
  %i.awb = fadd float %i.avq, %i.awa
  %i.awc = fadd float %i.avg, %i.awb              ; 2 uses
  %i.awd = fcmp ord float %i.awc, 0.000000e+00
  %.sroa.0.0.i928 = select i1 %i.awd, float %i.awc, float 0.000000e+00
  %i.awe = fadd float %i.auh, %.sroa.0.0.i928
  br label %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit

_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit: ; preds = %.noexc930, %.noexc929, %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit
  %.sroa.010.1.i927 = phi float [ +qnan, %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit ], [ %i.awe, %.noexc930 ], [ %i.auh, %.noexc929 ]
  %i.awf = load i16, ptr %i.aqm, align 1, !tbaa !12 ; 2 uses
  %i.awg = and i16 %i.awf, 7
  %i.awh = icmp eq i16 %i.awg, 0
  br i1 %i.awh, label %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit936, label %bb.gc

bb.gc:                                            ; preds = %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit
  %i.awi = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.awf, float noundef %7)
          to label %.noexc934 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc934:                                        ; preds = %bb.gc
  %i.awj = load i8, ptr %i.aqg, align 4
  %i.awk = and i8 %i.awj, 16
  %i.awl = icmp ne i8 %i.awk, 0
  %i.awm = fcmp ord float %i.awi, 0.000000e+00
  %or.cond.i931 = select i1 %i.awl, i1 %i.awm, i1 false
  br i1 %or.cond.i931, label %.noexc1806, label %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit936

.noexc1806:                                       ; preds = %.noexc934
  %i.awn = load i16, ptr %i.ce, align 1, !tbaa !77
  %i.awo = and i16 %i.awn, 7
  %.not.i3.i2158 = icmp eq i16 %i.awo, 0
  %i.awp = load i16, ptr %i.ch, align 1
  %i.awq = and i16 %i.awp, 7
  %.not7.i.i2159 = icmp eq i16 %i.awq, 0
  %spec.select.i.i2160 = select i1 %.not7.i.i2159, ptr %i.ck, ptr %i.ch
  %.sroa.0.0.in.i.i2161 = select i1 %.not.i3.i2158, ptr %spec.select.i.i2160, ptr %i.ce
  %.sroa.0.0.i4.i2162 = load i16, ptr %.sroa.0.0.in.i.i2161, align 1, !tbaa !12
  %i.awr = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %.sroa.0.0.i4.i2162, float noundef %6)
          to label %.noexc1808 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1808:                                       ; preds = %.noexc1806
  %i.aws = load i16, ptr %i.bi, align 1, !tbaa !77
  %i.awt = and i16 %i.aws, 7
  %.not.i3.i2152 = icmp eq i16 %i.awt, 0
  %i.awu = load i16, ptr %i.bl, align 1
  %i.awv = and i16 %i.awu, 7
  %.not7.i.i2153 = icmp eq i16 %i.awv, 0
  %spec.select.i.i2154 = select i1 %.not7.i.i2153, ptr %i.bo, ptr %i.bl
  %.sroa.0.0.in.i.i2155 = select i1 %.not.i3.i2152, ptr %spec.select.i.i2154, ptr %i.bi
  %.sroa.0.0.i4.i2156 = load i16, ptr %.sroa.0.0.in.i.i2155, align 1, !tbaa !12
  %i.aww = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %.sroa.0.0.i4.i2156, float noundef 0.000000e+00)
          to label %.noexc1810 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1810:                                       ; preds = %.noexc1808
  %.sink.i.inv.i8.i.i1802 = fcmp oge float %i.awr, 0.000000e+00
  %i.awx = select i1 %.sink.i.inv.i8.i.i1802, float %i.awr, float 0.000000e+00
  %.sink.i.inv.i6.i.i1803 = fcmp oge float %i.aww, 0.000000e+00
  %i.awy = select i1 %.sink.i.inv.i6.i.i1803, float %i.aww, float 0.000000e+00
  %i.awz = fadd float %i.awx, %i.awy
  %i.axa = load i16, ptr %i.cn, align 1, !tbaa !77
  %i.axb = and i16 %i.axa, 7
  %.not.i12.i2146 = icmp eq i16 %i.axb, 0
  %i.axc = load i16, ptr %i.ch, align 1
  %i.axd = and i16 %i.axc, 7
  %.not7.i13.i2147 = icmp eq i16 %i.axd, 0
  %spec.select.i14.i2148 = select i1 %.not7.i13.i2147, ptr %i.ck, ptr %i.ch
  %.sroa.0.0.in.i15.i2149 = select i1 %.not.i12.i2146, ptr %spec.select.i14.i2148, ptr %i.cn
  %.sroa.0.0.i16.i2150 = load i16, ptr %.sroa.0.0.in.i15.i2149, align 1, !tbaa !12
  %i.axe = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %.sroa.0.0.i16.i2150, float noundef %6)
          to label %.noexc1812 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1812:                                       ; preds = %.noexc1810
  %i.axf = load i16, ptr %i.br, align 1, !tbaa !77
  %i.axg = and i16 %i.axf, 7
  %.not.i12.i2140 = icmp eq i16 %i.axg, 0
  %i.axh = load i16, ptr %i.bl, align 1
  %i.axi = and i16 %i.axh, 7
  %.not7.i13.i2141 = icmp eq i16 %i.axi, 0
  %spec.select.i14.i2142 = select i1 %.not7.i13.i2141, ptr %i.bo, ptr %i.bl
  %.sroa.0.0.in.i15.i2143 = select i1 %.not.i12.i2140, ptr %spec.select.i14.i2142, ptr %i.br
  %.sroa.0.0.i16.i2144 = load i16, ptr %.sroa.0.0.in.i15.i2143, align 1, !tbaa !12
  %i.axj = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %.sroa.0.0.i16.i2144, float noundef 0.000000e+00)
          to label %.noexc935 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc935:                                        ; preds = %.noexc1812
  %.sink.i.inv.i8.i8.i1804 = fcmp oge float %i.axe, 0.000000e+00
  %i.axk = select i1 %.sink.i.inv.i8.i8.i1804, float %i.axe, float 0.000000e+00
  %.sink.i.inv.i6.i9.i1805 = fcmp oge float %i.axj, 0.000000e+00
  %i.axl = select i1 %.sink.i.inv.i6.i9.i1805, float %i.axj, float 0.000000e+00
  %i.axm = fadd float %i.axk, %i.axl
  %i.axn = fadd float %i.awz, %i.axm              ; 2 uses
  %i.axo = fcmp ord float %i.axn, 0.000000e+00
  %.sroa.0.0.i933 = select i1 %i.axo, float %i.axn, float 0.000000e+00
  %i.axp = fadd float %i.awi, %.sroa.0.0.i933
  br label %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit936

_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit936: ; preds = %.noexc935, %.noexc934, %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit
  %.sroa.010.1.i932 = phi float [ +qnan, %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit ], [ %i.axp, %.noexc935 ], [ %i.awi, %.noexc934 ]
  %i.axq = load i16, ptr %i.aqn, align 1, !tbaa !12 ; 2 uses
  %i.axr = and i16 %i.axq, 7
  %i.axs = icmp eq i16 %i.axr, 0
  br i1 %i.axs, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit936
  %i.axt = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.axq, float noundef %7)
          to label %.noexc940 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc940:                                        ; preds = %bb.gd
  %i.axu = load i8, ptr %i.aqg, align 4
  %i.axv = and i8 %i.axu, 16
  %i.axw = icmp ne i8 %i.axv, 0
  %i.axx = fcmp ord float %i.axt, 0.000000e+00
  %or.cond.i937 = select i1 %i.axw, i1 %i.axx, i1 false
  br i1 %or.cond.i937, label %.noexc1820, label %bb.ge

.noexc1820:                                       ; preds = %.noexc940
  %i.axy = load i16, ptr %i.ce, align 1, !tbaa !77
  %i.axz = and i16 %i.axy, 7
  %.not.i3.i2182 = icmp eq i16 %i.axz, 0
  %i.aya = load i16, ptr %i.ch, align 1
  %i.ayb = and i16 %i.aya, 7
  %.not7.i.i2183 = icmp eq i16 %i.ayb, 0
  %spec.select.i.i2184 = select i1 %.not7.i.i2183, ptr %i.ck, ptr %i.ch
  %.sroa.0.0.in.i.i2185 = select i1 %.not.i3.i2182, ptr %spec.select.i.i2184, ptr %i.ce
  %.sroa.0.0.i4.i2186 = load i16, ptr %.sroa.0.0.in.i.i2185, align 1, !tbaa !12
  %i.ayc = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %.sroa.0.0.i4.i2186, float noundef %6)
          to label %.noexc1822 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1822:                                       ; preds = %.noexc1820
  %i.ayd = load i16, ptr %i.bi, align 1, !tbaa !77
  %i.aye = and i16 %i.ayd, 7
  %.not.i3.i2176 = icmp eq i16 %i.aye, 0
  %i.ayf = load i16, ptr %i.bl, align 1
  %i.ayg = and i16 %i.ayf, 7
  %.not7.i.i2177 = icmp eq i16 %i.ayg, 0
  %spec.select.i.i2178 = select i1 %.not7.i.i2177, ptr %i.bo, ptr %i.bl
  %.sroa.0.0.in.i.i2179 = select i1 %.not.i3.i2176, ptr %spec.select.i.i2178, ptr %i.bi
  %.sroa.0.0.i4.i2180 = load i16, ptr %.sroa.0.0.in.i.i2179, align 1, !tbaa !12
  %i.ayh = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %.sroa.0.0.i4.i2180, float noundef 0.000000e+00)
          to label %.noexc1824 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1824:                                       ; preds = %.noexc1822
  %.sink.i.inv.i8.i.i1816 = fcmp oge float %i.ayc, 0.000000e+00
  %i.ayi = select i1 %.sink.i.inv.i8.i.i1816, float %i.ayc, float 0.000000e+00
  %.sink.i.inv.i6.i.i1817 = fcmp oge float %i.ayh, 0.000000e+00
  %i.ayj = select i1 %.sink.i.inv.i6.i.i1817, float %i.ayh, float 0.000000e+00
  %i.ayk = fadd float %i.ayi, %i.ayj
  %i.ayl = load i16, ptr %i.cn, align 1, !tbaa !77
  %i.aym = and i16 %i.ayl, 7
  %.not.i12.i2170 = icmp eq i16 %i.aym, 0
  %i.ayn = load i16, ptr %i.ch, align 1
  %i.ayo = and i16 %i.ayn, 7
  %.not7.i13.i2171 = icmp eq i16 %i.ayo, 0
  %spec.select.i14.i2172 = select i1 %.not7.i13.i2171, ptr %i.ck, ptr %i.ch
  %.sroa.0.0.in.i15.i2173 = select i1 %.not.i12.i2170, ptr %spec.select.i14.i2172, ptr %i.cn
  %.sroa.0.0.i16.i2174 = load i16, ptr %.sroa.0.0.in.i15.i2173, align 1, !tbaa !12
  %i.ayp = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %.sroa.0.0.i16.i2174, float noundef %6)
          to label %.noexc1826 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1826:                                       ; preds = %.noexc1824
  %i.ayq = load i16, ptr %i.br, align 1, !tbaa !77
  %i.ayr = and i16 %i.ayq, 7
  %.not.i12.i2164 = icmp eq i16 %i.ayr, 0
  %i.ays = load i16, ptr %i.bl, align 1
  %i.ayt = and i16 %i.ays, 7
  %.not7.i13.i2165 = icmp eq i16 %i.ayt, 0
  %spec.select.i14.i2166 = select i1 %.not7.i13.i2165, ptr %i.bo, ptr %i.bl
  %.sroa.0.0.in.i15.i2167 = select i1 %.not.i12.i2164, ptr %spec.select.i14.i2166, ptr %i.br
  %.sroa.0.0.i16.i2168 = load i16, ptr %.sroa.0.0.in.i15.i2167, align 1, !tbaa !12
  %i.ayu = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %.sroa.0.0.i16.i2168, float noundef 0.000000e+00)
          to label %.noexc941 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc941:                                        ; preds = %.noexc1826
  %.sink.i.inv.i8.i8.i1818 = fcmp oge float %i.ayp, 0.000000e+00
  %i.ayv = select i1 %.sink.i.inv.i8.i8.i1818, float %i.ayp, float 0.000000e+00
  %.sink.i.inv.i6.i9.i1819 = fcmp oge float %i.ayu, 0.000000e+00
  %i.ayw = select i1 %.sink.i.inv.i6.i9.i1819, float %i.ayu, float 0.000000e+00
  %i.ayx = fadd float %i.ayv, %i.ayw
  %i.ayy = fadd float %i.ayk, %i.ayx              ; 2 uses
  %i.ayz = fcmp ord float %i.ayy, 0.000000e+00
  %.sroa.0.0.i939 = select i1 %i.ayz, float %i.ayy, float 0.000000e+00
  %i.aza = fadd float %i.axt, %.sroa.0.0.i939
  br label %bb.ge

bb.ge:                                            ; preds = %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit936, %.noexc940, %.noexc941
  %.sroa.010.1.i938 = phi float [ +qnan, %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit936 ], [ %i.aza, %.noexc941 ], [ %i.axt, %.noexc940 ]
  %.v = select i1 %i.pj, float %.sroa.010.1.i, float %.sroa.010.1.i932
  %i.azb = fsub float %.v, %i.qs                  ; 3 uses
  %i.azc = fcmp ord float %i.azb, 0.000000e+00
  %i.azd = load float, ptr %i.aqo, align 8        ; 2 uses
  %i.aze = fcmp olt float %i.azd, %i.azb
  %or.cond852 = select i1 %i.azc, i1 %i.aze, i1 false
  br i1 %or.cond852, label %.thread2367, label %bb.gg

bb.gf:                                            ; preds = %bb.ep
  %i.azf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga8FlexLineD2Ev.exit1114

bb.gg:                                            ; preds = %bb.ge
  %.v827 = select i1 %i.pj, float %.sroa.010.1.i927, float %.sroa.010.1.i938
  %i.azg = fsub float %.v827, %i.qs               ; 3 uses
  %i.azh = fcmp ord float %i.azg, 0.000000e+00
  %i.azi = fcmp ogt float %i.azd, %i.azg
  %or.cond855 = select i1 %i.azh, i1 %i.azi, i1 false
  br i1 %or.cond855, label %.thread2367, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.azj = load ptr, ptr %i.u, align 8, !tbaa !75
  %i.azk = invoke noundef zeroext i1 @_ZNK8facebook4yoga6Config9hasErrataENS0_6ErrataE(ptr noundef nonnull align 8 dereferenceable(48) %i.azj, i32 noundef 1)
          to label %_ZNK8facebook4yoga4Node9hasErrataENS0_6ErrataE.exit unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK8facebook4yoga4Node9hasErrataENS0_6ErrataE.exit: ; preds = %bb.gh
  br i1 %i.azk, label %.thread2367, label %bb.gi

bb.gi:                                            ; preds = %_ZNK8facebook4yoga4Node9hasErrataENS0_6ErrataE.exit
  %i.azl = load float, ptr %i.aqp, align 8, !tbaa !166
  %i.azm = fcmp oeq float %i.azl, 0.000000e+00
  br i1 %i.azm, label %bb.gn, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.azn = invoke noundef float @_ZNK8facebook4yoga4Node15resolveFlexGrowEv(ptr noundef nonnull align 8 dereferenceable(744) %0)
          to label %bb.gk unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gk:                                            ; preds = %bb.gj
  %i.azo = fcmp ord float %i.azn, 0.000000e+00
  br i1 %i.azo, label %bb.gl, label %.thread2374thread-pre-split

bb.gl:                                            ; preds = %bb.gk
  %i.azp = invoke noundef float @_ZNK8facebook4yoga4Node15resolveFlexGrowEv(ptr noundef nonnull align 8 dereferenceable(744) %0)
          to label %bb.gm unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gm:                                            ; preds = %bb.gl
  %i.azq = fcmp oeq float %i.azp, 0.000000e+00
  br i1 %i.azq, label %bb.gn, label %.thread2374thread-pre-split

bb.gn:                                            ; preds = %bb.gi, %bb.gm
  %i.azr = load float, ptr %i.aqo, align 8, !tbaa !167 ; 2 uses
  br label %.thread2374

.thread2367:                                      ; preds = %bb.gg, %bb.ge, %bb.eq, %_ZNK8facebook4yoga4Node9hasErrataENS0_6ErrataE.exit
  %.37872372 = phi float [ %.07842964, %_ZNK8facebook4yoga4Node9hasErrataENS0_6ErrataE.exit ], [ %i.azg, %bb.gg ], [ %i.azb, %bb.ge ], [ %.07842964, %bb.eq ] ; 4 uses
  %i.azs = fcmp ord float %.37872372, 0.000000e+00
  br i1 %i.azs, label %bb.go, label %.thread2374thread-pre-split

bb.go:                                            ; preds = %.thread2367
  %26 = load float, ptr %i.aqo, align 8, !tbaa !167
  %i.azt = fsub float %.37872372, %26             ; 2 uses
  store float %i.azt, ptr %i.aqq, align 8, !tbaa !168
  br label %bb.gq

.thread2374thread-pre-split:                      ; preds = %.thread2367, %bb.gk, %bb.gm
  %.37872371.ph = phi float [ %.07842964, %bb.gm ], [ %.07842964, %bb.gk ], [ %.37872372, %.thread2367 ]
  %.pr3472 = load float, ptr %i.aqo, align 8, !tbaa !167
  br label %.thread2374

.thread2374:                                      ; preds = %.thread2374thread-pre-split, %bb.gn
  %i.azu = phi float [ %.pr3472, %.thread2374thread-pre-split ], [ %i.azr, %bb.gn ] ; 2 uses
  %.37872371 = phi float [ %.37872371.ph, %.thread2374thread-pre-split ], [ %i.azr, %bb.gn ] ; 2 uses
  %i.azv = fcmp olt float %i.azu, 0.000000e+00
  br i1 %i.azv, label %bb.gp, label %.thread2374._crit_edge

.thread2374._crit_edge:                           ; preds = %.thread2374
  %.pre3228.pre = load float, ptr %i.aqq, align 8
  br label %bb.gq

bb.gp:                                            ; preds = %.thread2374
  %i.azw = fneg float %i.azu                      ; 2 uses
  store float %i.azw, ptr %i.aqq, align 8, !tbaa !168
  br label %bb.gq

bb.gq:                                            ; preds = %.thread2374._crit_edge, %bb.gp, %bb.go
  %.pre3228.a = phi float [ %.pre3228.pre, %.thread2374._crit_edge ], [ %i.azw, %bb.gp ], [ %i.azt, %bb.go ] ; 2 uses
  %.37872370 = phi float [ %.37872371, %.thread2374._crit_edge ], [ %.37872371, %bb.gp ], [ %.37872372, %bb.go ] ; 9 uses
  br i1 %i.aqe, label %bb.jx, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.azx = load ptr, ptr %i.u, align 8, !tbaa !75
  %i.azy = invoke noundef zeroext i1 @_ZNK8facebook4yoga6Config9hasErrataENS0_6ErrataE(ptr noundef nonnull align 8 dereferenceable(48) %i.azx, i32 noundef 8)
          to label %.noexc944 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc944:                                        ; preds = %bb.gr
  %i.azz = load ptr, ptr %20, align 8, !tbaa !21  ; 4 uses
  %i.baa = load ptr, ptr %i.aqr, align 8, !tbaa !21 ; 4 uses
  %i.bab = icmp eq ptr %i.azz, %i.baa             ; 2 uses
  br i1 %i.azy, label %bb.hw, label %bb.gs

bb.gs:                                            ; preds = %.noexc944
  br i1 %i.bab, label %_ZN8facebook4yogaL21resolveFlexibleLengthEPNS0_4NodeERNS0_8FlexLineENS0_13FlexDirectionES5_NS0_9DirectionEffffffbNS0_10SizingModeEbRNS0_10LayoutDataEjj.exit, label %.lr.ph2953

.lr.ph2953:                                       ; preds = %bb.gs, %.noexc945
  %.sroa.02312.02952 = phi ptr [ %i.beu, %.noexc945 ], [ %i.azz, %bb.gs ] ; 2 uses
  %i.bac = load ptr, ptr %.sroa.02312.02952, align 8, !tbaa !23 ; 13 uses
  %i.bad = getelementptr inbounds nuw i8, ptr %i.bac, i64 720
  %i.bae = load ptr, ptr %i.bad, align 8, !tbaa !75
  %i.baf = invoke noundef zeroext i1 @_ZNK8facebook4yoga6Config9hasErrataENS0_6ErrataE(ptr noundef nonnull align 8 dereferenceable(48) %i.bae, i32 noundef 8)
          to label %.noexc1952 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1952:                                       ; preds = %.lr.ph2953
  br i1 %i.baf, label %.noexc945, label %bb.gt

bb.gt:                                            ; preds = %.noexc1952
  %i.bag = getelementptr inbounds nuw i8, ptr %i.bac, i64 56 ; 4 uses
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bac, i64 60 ; 3 uses
  %i.bai = load i8, ptr %i.bah, align 4           ; 3 uses
  %i.baj = and i8 %i.bai, 12
  %i.bak = icmp eq i8 %i.baj, 4
  br i1 %i.bak, label %.noexc945, label %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i1921

_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i1921: ; preds = %bb.gt
  %i.bal = getelementptr inbounds nuw i8, ptr %i.bac, i64 151
  %i.bam = getelementptr inbounds nuw [2 x i8], ptr %i.bal, i64 %spec.select2506
  %.sroa.0.0.copyload.i.i1923 = load i16, ptr %i.bam, align 1, !tbaa !12 ; 6 uses
  %i.ban = and i16 %.sroa.0.0.copyload.i.i1923, 7 ; 2 uses
  switch i16 %i.ban, label %bb.gu [
    i16 0, label %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread70.i
    i16 4, label %.noexc945
  ]

bb.gu:                                            ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i1921
  %i.bao = icmp eq i16 %i.ban, 5
  %i.bap = lshr i16 %.sroa.0.0.copyload.i.i1923, 4 ; 3 uses
  %i.baq = and i16 %.sroa.0.0.copyload.i.i1923, -25
  %or.cond.i1942 = icmp eq i16 %i.baq, 5
  %i.bar = icmp eq i16 %i.bap, 2
  %i.bas = and i1 %i.bao, %i.bar
  %or.cond81.i = or i1 %or.cond.i1942, %i.bas
  br i1 %or.cond81.i, label %.noexc945, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.bat = and i16 %.sroa.0.0.copyload.i.i1923, 8
  %.not.i.i.i1943 = icmp eq i16 %i.bat, 0
  br i1 %.not.i.i.i1943, label %bb.gz, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.bau = zext nneg i16 %i.bap to i64            ; 2 uses
  %i.bav = icmp ult i16 %.sroa.0.0.copyload.i.i1923, 64
  br i1 %i.bav, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bac, i64 300
  %i.bax = getelementptr inbounds nuw [4 x i8], ptr %i.baw, i64 %i.bau
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i1946

bb.gy:                                            ; preds = %bb.gw
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bac, i64 328
  %i.baz = load ptr, ptr %i.bay, align 8, !tbaa !101 ; 2 uses
  %i.bba = add nsw i64 %i.bau, -4                 ; 3 uses
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.baz, i64 8
  %i.bbc = load ptr, ptr %i.bbb, align 8, !tbaa !104
  %i.bbd = load ptr, ptr %i.baz, align 8, !tbaa !105 ; 2 uses
  %i.bbe = ptrtoint ptr %i.bbc to i64
  %i.bbf = ptrtoint ptr %i.bbd to i64
  %i.bbg = sub i64 %i.bbe, %i.bbf
  %i.bbh = ashr exact i64 %i.bbg, 2               ; 2 uses
  %.not.i.i.i.i.i1944 = icmp ult i64 %i.bba, %i.bbh
  br i1 %.not.i.i.i.i.i1944, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i1945, label %.invoke3676

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i1945:         ; preds = %bb.gy
  %i.bbi = getelementptr inbounds nuw [4 x i8], ptr %i.bbd, i64 %i.bba
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i1946

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i1946: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i1945, %bb.gx
  %.0.in.i.i.i1947 = phi ptr [ %i.bax, %bb.gx ], [ %i.bbi, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i1945 ]
  %.0.i2.i.i1948 = load float, ptr %.0.in.i.i.i1947, align 4, !tbaa !17
  br label %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.i1949

bb.gz:                                            ; preds = %bb.gv
  %i.bbj = and i16 %i.bap, 2047
  %i.bbk = zext nneg i16 %i.bbj to i32            ; 2 uses
  %i.bbl = sub nsw i32 0, %i.bbk
  %.not.i13.i.i.i1951 = icmp slt i16 %.sroa.0.0.copyload.i.i1923, 0
  %i.bbm = select i1 %.not.i13.i.i.i1951, i32 %i.bbl, i32 %i.bbk
  %i.bbn = sitofp i32 %i.bbm to float
  br label %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.i1949

_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.i1949: ; preds = %bb.gz, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i1946
  %i.bbo = phi float [ %.0.i2.i.i1948, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i1946 ], [ %i.bbn, %bb.gz ]
  %i.bbp = call float @llvm.fabs.f32(float %i.bbo)
  %.sroa.0.1.in.i.i.i1950 = fcmp ueq float %i.bbp, +inf
  br i1 %.sroa.0.1.in.i.i.i1950, label %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread70.i, label %.noexc945

_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread70.i: ; preds = %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.i1949, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i1921
  %i.bbq = and i8 %i.bai, 3
  %.not.i1925 = icmp eq i8 %i.bbq, 0
  br i1 %.not.i1925, label %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit42.i, label %.noexc945

_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit42.i: ; preds = %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread70.i
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bac, i64 728 ; 2 uses
  %i.bbs = getelementptr inbounds nuw [8 x i8], ptr %i.bbr, i64 %spec.select2506
  %.sroa.0.0.copyload.i.i.i1928 = load i64, ptr %i.bbs, align 4 ; 2 uses
  %i.bbt = lshr i64 %.sroa.0.0.copyload.i.i.i1928, 32
  %i.bbu = trunc i64 %i.bbt to i8
  %i.bbv = trunc i64 %.sroa.0.0.copyload.i.i.i1928 to i32
  %i.bbw = bitcast i32 %i.bbv to float            ; 2 uses
  switch i8 %i.bbu, label %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i.i1929 [
    i8 1, label %bb.ha
    i8 2, label %bb.hb
  ]

bb.ha:                                            ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit42.i
  br label %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i.i1929

bb.hb:                                            ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit42.i
  %i.bbx = fmul float %i.pl, %i.bbw
  %i.bby = fmul float %i.bbx, f0x3C23D70A
  br label %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i.i1929

_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i.i1929: ; preds = %bb.hb, %bb.ha, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit42.i
  %.sroa.0.0.i.i.i1930 = phi float [ %i.bby, %bb.hb ], [ %i.bbw, %bb.ha ], [ +qnan, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit42.i ] ; 2 uses
  %i.bbz = and i8 %i.bai, 16
  %i.bca = icmp eq i8 %i.bbz, 0
  br i1 %i.bca, label %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit.i1932, label %bb.hc

bb.hc:                                            ; preds = %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i.i1929
  %i.bcb = invoke noundef float @_ZNK8facebook4yoga5Style35computePaddingAndBorderForDimensionENS0_9DirectionENS0_9DimensionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.bag, i8 noundef zeroext %i.t, i8 noundef zeroext %spec.select.i1927, float noundef %i.rh)
          to label %.noexc1955 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1955:                                       ; preds = %bb.hc
  %i.bcc = fcmp ord float %i.bcb, 0.000000e+00
  %.sroa.0.0.i.i1931 = select i1 %i.bcc, float %i.bcb, float 0.000000e+00
  %i.bcd = fadd float %.sroa.0.0.i.i.i1930, %.sroa.0.0.i.i1931
  br label %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit.i1932

_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit.i1932: ; preds = %.noexc1955, %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i.i1929
  %.sroa.06.0.i.i1933 = phi float [ %i.bcd, %.noexc1955 ], [ %.sroa.0.0.i.i.i1930, %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i.i1929 ] ; 3 uses
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bac, i64 159
  %.sroa.0.0.copyload.i43.i = load i16, ptr %i.bce, align 1, !tbaa !12 ; 5 uses
  %i.bcf = and i16 %.sroa.0.0.copyload.i43.i, 7
  %i.bcg = icmp eq i16 %i.bcf, 0
  br i1 %i.bcg, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread76.i, label %bb.hd

bb.hd:                                            ; preds = %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit.i1932
  %i.bch = and i16 %.sroa.0.0.copyload.i43.i, 8
  %.not.i.i44.i = icmp eq i16 %i.bch, 0
  %i.bci = lshr i16 %.sroa.0.0.copyload.i43.i, 4  ; 2 uses
  br i1 %.not.i.i44.i, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread.i, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.bcj = zext nneg i16 %i.bci to i64            ; 2 uses
  %i.bck = icmp ult i16 %.sroa.0.0.copyload.i43.i, 64
  br i1 %i.bck, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bac, i64 300
  %i.bcm = getelementptr inbounds nuw [4 x i8], ptr %i.bcl, i64 %i.bcj
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1936

bb.hg:                                            ; preds = %bb.he
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bac, i64 328
  %i.bco = load ptr, ptr %i.bcn, align 8, !tbaa !101 ; 2 uses
  %i.bcp = add nsw i64 %i.bcj, -4                 ; 3 uses
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bco, i64 8
  %i.bcr = load ptr, ptr %i.bcq, align 8, !tbaa !104
  %i.bcs = load ptr, ptr %i.bco, align 8, !tbaa !105 ; 2 uses
  %i.bct = ptrtoint ptr %i.bcr to i64
  %i.bcu = ptrtoint ptr %i.bcs to i64
  %i.bcv = sub i64 %i.bct, %i.bcu
  %i.bcw = ashr exact i64 %i.bcv, 2               ; 2 uses
  %.not.i.i.i.i.i.i1934 = icmp ult i64 %i.bcp, %i.bcw
  br i1 %.not.i.i.i.i.i.i1934, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i1935, label %.invoke3676

.invoke3676:                                      ; preds = %bb.kc, %bb.hg, %bb.gy, %bb.jd, %bb.ja, %bb.ix
  %i.bcx = phi i64 [ %i.bba, %bb.gy ], [ %i.bls, %bb.jd ], [ %i.bkh, %bb.ix ], [ %i.bld, %bb.ja ], [ %i.bcp, %bb.hg ], [ %i.btc, %bb.kc ]
  %i.bcy = phi i64 [ %i.bbh, %bb.gy ], [ %i.blz, %bb.jd ], [ %i.bko, %bb.ix ], [ %i.blk, %bb.ja ], [ %i.bcw, %bb.hg ], [ %i.btj, %bb.kc ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.bcx, i64 noundef %i.bcy) #14
          to label %.cont3677 unwind label %.loopexit.split-lp2606.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont3677:                                        ; preds = %.invoke3676
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i1935:       ; preds = %bb.hg
  %i.bcz = getelementptr inbounds nuw [4 x i8], ptr %i.bcs, i64 %i.bcp
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1936
end_hunk_1
