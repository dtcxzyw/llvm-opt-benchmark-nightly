Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/readir?download=true
inline.NumInlined: 4289
inline.NumDeleted: 1611
loop-unroll.NumCompletelyUnrolled: 103
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 121
begin_hunk_0_@_Z8do_indexPKcRKSt8optionalINSt10filesystem7__cxx114pathEEP10gmx_mtop_tbRKN3gmx18MDModulesNotifiersEP10t_inputrecP14WarningHandler:bb.a
          to label %bb.ug unwind label %bb.ui

bb.ug:                                            ; preds = %bb.uf
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %95, i32 noundef 4572, ptr noundef nonnull @.str.664) #29
          to label %bb.uh unwind label %bb.uj

bb.uh:                                            ; preds = %bb.ug
  unreachable

bb.ui:                                            ; preds = %bb.uf
  %i.cxc = landingpad { ptr, i32 }
          cleanup
  br label %bb.uk

bb.uj:                                            ; preds = %bb.ug
  %i.cxd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %95) #30
  br label %bb.uk

bb.uk:                                            ; preds = %bb.uj, %bb.ui
  %.pn630 = phi { ptr, i32 } [ %i.cxd, %bb.uj ], [ %i.cxc, %bb.ui ]
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #30
  br label %bb.wd

bb.ul:                                            ; preds = %bb.ue, %bb.ue, %bb.ue, %bb.ud, %bb.uc
  %i.cxe = getelementptr inbounds nuw i8, ptr %5, i64 456
  %i.cxf = load ptr, ptr %i.cxe, align 8, !tbaa !38 ; 3 uses
  %i.cxg = load i32, ptr %i.cxf, align 8, !tbaa !297
  %i.cxh = icmp slt i32 %i.cxg, 0
  br i1 %i.cxh, label %bb.um, label %bb.us

bb.um:                                            ; preds = %bb.ul
  %i.cxi = getelementptr inbounds nuw i8, ptr %5, i64 432
  %i.cxj = load i8, ptr %i.cxi, align 8, !tbaa !181, !range !166, !noundef !167
  %i.cxk = trunc nuw i8 %i.cxj to i1
  br i1 %i.cxk, label %bb.un, label %bb.us

bb.un:                                            ; preds = %bb.um
  %i.cxl = load ptr, ptr %i.je, align 8, !tbaa !414
  %i.cxm = load float, ptr %i.cxl, align 4, !tbaa !149
  %i.cxn = fpext float %i.cxm to double
  %i.cxo = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.cxp = load double, ptr %i.cxo, align 8, !tbaa !136
  %i.cxq = fdiv double %i.cxn, %i.cxp
  %i.cxr = fptosi double %i.cxq to i32
  %i.cxs = shl nsw i32 %i.cxr, 1
  store i32 %i.cxs, ptr %i.cxf, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #30
  %i.cxt = load i32, ptr %i.cxf, align 8, !tbaa !297
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %96, ptr noundef nonnull @.str.665, i32 noundef %i.cxt)
          to label %bb.uo unwind label %bb.uq

bb.uo:                                            ; preds = %bb.un
  %i.cxu = load ptr, ptr %96, align 8, !tbaa !21
  %i.cxv = getelementptr inbounds nuw i8, ptr %96, i64 8
  %i.cxw = load i64, ptr %i.cxv, align 8, !tbaa !23
  invoke void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %6, i64 %i.cxw, ptr %i.cxu)
          to label %bb.up unwind label %bb.ur

bb.up:                                            ; preds = %bb.uo
  %i.cxx = load ptr, ptr %96, align 8, !tbaa !21  ; 2 uses
  %i.cxy = getelementptr inbounds nuw i8, ptr %96, i64 16 ; 2 uses
  %i.cxz = icmp eq ptr %i.cxx, %i.cxy
  br i1 %i.cxz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1212: ; preds = %bb.up
  %i.cya = load i64, ptr %i.cxy, align 8, !tbaa !22
  %i.cyb = add i64 %i.cya, 1
  call void @_ZdlPvm(ptr noundef %i.cxx, i64 noundef %i.cyb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1214

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1214: ; preds = %bb.up, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1212
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #30
  br label %bb.us

bb.uq:                                            ; preds = %bb.un
  %i.cyc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1217

bb.ur:                                            ; preds = %bb.uo
  %i.cyd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cye = load ptr, ptr %96, align 8, !tbaa !21  ; 2 uses
  %i.cyf = getelementptr inbounds nuw i8, ptr %96, i64 16 ; 2 uses
  %i.cyg = icmp eq ptr %i.cye, %i.cyf
  br i1 %i.cyg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1217, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1215: ; preds = %bb.ur
  %i.cyh = load i64, ptr %i.cyf, align 8, !tbaa !22
  %i.cyi = add i64 %i.cyh, 1
  call void @_ZdlPvm(ptr noundef %i.cye, i64 noundef %i.cyi) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1217

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1217: ; preds = %bb.ur, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1215, %bb.uq
  %.pn632 = phi { ptr, i32 } [ %i.cyc, %bb.uq ], [ %i.cyd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1215 ], [ %i.cyd, %bb.ur ]
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #30
  br label %bb.wd

bb.us:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1214, %bb.um, %bb.ul
  %i.cyj = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 7 uses
  %i.cyk = load i32, ptr %i.cyj, align 8, !tbaa !261
  switch i32 %i.cyk, label %_ZL26processEnsembleTemperatureP10t_inputrecbP14WarningHandler.exit [
    i32 0, label %bb.ut
    i32 1, label %bb.uu
    i32 3, label %bb.uy
  ]

bb.ut:                                            ; preds = %bb.us
  %i.cyl = getelementptr inbounds nuw i8, ptr %5, i64 188
  store float -1.000000e+00, ptr %i.cyl, align 4, !tbaa !262
  br label %_ZL26processEnsembleTemperatureP10t_inputrecbP14WarningHandler.exit

bb.uu:                                            ; preds = %bb.us
  %i.cym = getelementptr inbounds nuw i8, ptr %5, i64 188 ; 2 uses
  %i.cyn = load float, ptr %i.cym, align 4, !tbaa !262
  %i.cyo = fcmp olt float %i.cyn, 0.000000e+00
  br i1 %i.cyo, label %bb.uv, label %bb.uw

bb.uv:                                            ; preds = %bb.uu
  invoke void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %6, i64 40, ptr nonnull @.str.706)
          to label %_ZL26processEnsembleTemperatureP10t_inputrecbP14WarningHandler.exit unwind label %bb.tu

bb.uw:                                            ; preds = %bb.uu
  %i.cyp = invoke noundef zeroext i1 @_Z33integratorHasReferenceTemperatureRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %5)
          to label %.noexc1227 unwind label %bb.tu

.noexc1227:                                       ; preds = %bb.uw
  br i1 %i.cyp, label %.preheader.i1224, label %_ZL26processEnsembleTemperatureP10t_inputrecbP14WarningHandler.exit

.preheader.i1224:                                 ; preds = %.noexc1227
  %i.cyq = load i32, ptr %i.ja, align 8, !tbaa !413 ; 4 uses
  %i.cyr = icmp sgt i32 %i.cyq, 1
  %i.cys = load ptr, ptr %i.jg, align 8, !tbaa !415 ; 4 uses
  %i.cyt = load float, ptr %i.cys, align 4, !tbaa !149 ; 4 uses
  br i1 %i.cyr, label %iter.check2606, label %.critedge.i

iter.check2606:                                   ; preds = %.preheader.i1224
  %wide.trip.count62.i = zext nneg i32 %i.cyq to i64 ; 2 uses
  %i.cyu = add nsw i64 %wide.trip.count62.i, -1   ; 5 uses
  %min.iters.check2580 = icmp ult i32 %i.cyq, 5
  br i1 %min.iters.check2580, label %vec.epilog.scalar.ph2607.preheader, label %vector.main.loop.iter.check2581

vector.main.loop.iter.check2581:                  ; preds = %iter.check2606
  %min.iters.check2582 = icmp ult i32 %i.cyq, 33
  br i1 %min.iters.check2582, label %vec.epilog.ph2610, label %vector.ph2583

vector.ph2583:                                    ; preds = %vector.main.loop.iter.check2581
  %i.cyv = and i64 %i.cyu, 28
  %n.vec2584 = and i64 %i.cyu, -32                ; 4 uses
  %i.cyw = or disjoint i64 %n.vec2584, 1
  %broadcast.splatinsert2585 = insertelement <8 x float> poison, float %i.cyt, i64 0
  %broadcast.splat2586 = shufflevector <8 x float> %broadcast.splatinsert2585, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body2587

vector.body2587:                                  ; preds = %vector.ph2583, %vector.body2587
  %index2588 = phi i64 [ 0, %vector.ph2583 ], [ %index.next2597, %vector.body2587 ] ; 2 uses
  %vec.phi2589 = phi <8 x i1> [ zeroinitializer, %vector.ph2583 ], [ %i.czg, %vector.body2587 ]
  %vec.phi2590 = phi <8 x i1> [ zeroinitializer, %vector.ph2583 ], [ %i.czh, %vector.body2587 ]
  %vec.phi2591 = phi <8 x i1> [ zeroinitializer, %vector.ph2583 ], [ %i.czi, %vector.body2587 ]
  %vec.phi2592 = phi <8 x i1> [ zeroinitializer, %vector.ph2583 ], [ %i.czj, %vector.body2587 ]
  %i.cyx = getelementptr inbounds nuw [4 x i8], ptr %i.cys, i64 %index2588 ; 4 uses
  %i.cyy = getelementptr inbounds nuw i8, ptr %i.cyx, i64 4
  %i.cyz = getelementptr inbounds nuw i8, ptr %i.cyx, i64 36
  %i.cza = getelementptr inbounds nuw i8, ptr %i.cyx, i64 68
  %i.czb = getelementptr inbounds nuw i8, ptr %i.cyx, i64 100
  %wide.load2593 = load <8 x float>, ptr %i.cyy, align 4, !tbaa !149
  %wide.load2594 = load <8 x float>, ptr %i.cyz, align 4, !tbaa !149
  %wide.load2595 = load <8 x float>, ptr %i.cza, align 4, !tbaa !149
  %wide.load2596 = load <8 x float>, ptr %i.czb, align 4, !tbaa !149
  %i.czc = fcmp une <8 x float> %wide.load2593, %broadcast.splat2586
  %i.czd = fcmp une <8 x float> %wide.load2594, %broadcast.splat2586
  %i.cze = fcmp une <8 x float> %wide.load2595, %broadcast.splat2586
  %i.czf = fcmp une <8 x float> %wide.load2596, %broadcast.splat2586
  %i.czg = or <8 x i1> %vec.phi2589, %i.czc       ; 2 uses
  %i.czh = or <8 x i1> %vec.phi2590, %i.czd       ; 2 uses
  %i.czi = or <8 x i1> %vec.phi2591, %i.cze       ; 2 uses
  %i.czj = or <8 x i1> %vec.phi2592, %i.czf       ; 2 uses
  %index.next2597 = add nuw i64 %index2588, 32    ; 2 uses
  %i.czk = icmp eq i64 %index.next2597, %n.vec2584
  br i1 %i.czk, label %middle.block2598, label %vector.body2587, !llvm.loop !727

middle.block2598:                                 ; preds = %vector.body2587
  %bin.rdx2599 = or <8 x i1> %i.czh, %i.czg
  %bin.rdx2600 = or <8 x i1> %i.czi, %bin.rdx2599
  %bin.rdx2601 = or <8 x i1> %i.czj, %bin.rdx2600
  %bin.rdx2601.fr = freeze <8 x i1> %bin.rdx2601
  %i.czl = bitcast <8 x i1> %bin.rdx2601.fr to i8
  %.not2628 = icmp eq i8 %i.czl, 0                ; 3 uses
  %cmp.n2602 = icmp eq i64 %i.cyu, %n.vec2584
  br i1 %cmp.n2602, label %._crit_edge57.i, label %vec.epilog.iter.check2608

vec.epilog.iter.check2608:                        ; preds = %middle.block2598
  %min.epilog.iters.check2609 = icmp eq i64 %i.cyv, 0
  br i1 %min.epilog.iters.check2609, label %vec.epilog.scalar.ph2607.preheader, label %vec.epilog.ph2610, !prof !423

vec.epilog.ph2610:                                ; preds = %vector.main.loop.iter.check2581, %vec.epilog.iter.check2608
  %vec.epilog.resume.val2603 = phi i64 [ %n.vec2584, %vec.epilog.iter.check2608 ], [ 0, %vector.main.loop.iter.check2581 ]
  %bc.merge.rdx2605 = phi i1 [ %.not2628, %vec.epilog.iter.check2608 ], [ true, %vector.main.loop.iter.check2581 ]
  %i.czm = xor i1 %bc.merge.rdx2605, true
  %n.vec2611 = and i64 %i.cyu, -4                 ; 3 uses
  %i.czn = or disjoint i64 %n.vec2611, 1
  %broadcast.splatinsert2612.a = insertelement <4 x float> poison, float %i.cyt, i64 0
  %broadcast.splat2613.a = shufflevector <4 x float> %broadcast.splatinsert2612.a, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2614 = insertelement <4 x i1> poison, i1 %i.czm, i64 0
  %broadcast.splat2615 = shufflevector <4 x i1> %broadcast.splatinsert2614, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body2616

vec.epilog.vector.body2616:                       ; preds = %vec.epilog.vector.body2616, %vec.epilog.ph2610
  %index2617 = phi i64 [ %vec.epilog.resume.val2603, %vec.epilog.ph2610 ], [ %index.next2620, %vec.epilog.vector.body2616 ] ; 2 uses
  %vec.phi2618 = phi <4 x i1> [ %broadcast.splat2615, %vec.epilog.ph2610 ], [ %.fr2629, %vec.epilog.vector.body2616 ]
  %i.czo = getelementptr inbounds nuw [4 x i8], ptr %i.cys, i64 %index2617
  %i.czp = getelementptr inbounds nuw i8, ptr %i.czo, i64 4
  %wide.load2619 = load <4 x float>, ptr %i.czp, align 4, !tbaa !149
  %i.czq = fcmp une <4 x float> %wide.load2619, %broadcast.splat2613.a
  %i.czr = or <4 x i1> %vec.phi2618, %i.czq
  %.fr2629 = freeze <4 x i1> %i.czr               ; 2 uses
  %index.next2620 = add nuw i64 %index2617, 4     ; 2 uses
  %i.czs = icmp eq i64 %index.next2620, %n.vec2611
  br i1 %i.czs, label %vec.epilog.middle.block2621, label %vec.epilog.vector.body2616, !llvm.loop !728

vec.epilog.middle.block2621:                      ; preds = %vec.epilog.vector.body2616
  %i.czt = bitcast <4 x i1> %.fr2629 to i4
  %.not2630 = icmp eq i4 %i.czt, 0                ; 2 uses
  %cmp.n2622 = icmp eq i64 %i.cyu, %n.vec2611
  br i1 %cmp.n2622, label %._crit_edge57.i, label %vec.epilog.scalar.ph2607.preheader

vec.epilog.scalar.ph2607.preheader:               ; preds = %iter.check2606, %vec.epilog.iter.check2608, %vec.epilog.middle.block2621
  %indvars.iv60.i.ph = phi i64 [ 1, %iter.check2606 ], [ %i.cyw, %vec.epilog.iter.check2608 ], [ %i.czn, %vec.epilog.middle.block2621 ]
  %.04354.i.ph = phi i1 [ true, %iter.check2606 ], [ %.not2628, %vec.epilog.iter.check2608 ], [ %.not2630, %vec.epilog.middle.block2621 ]
  br label %vec.epilog.scalar.ph2607

._crit_edge57.i:                                  ; preds = %vec.epilog.scalar.ph2607, %vec.epilog.middle.block2621, %middle.block2598
  %spec.select.i1225.lcssa = phi i1 [ %.not2630, %vec.epilog.middle.block2621 ], [ %.not2628, %middle.block2598 ], [ %spec.select.i1225, %vec.epilog.scalar.ph2607 ]
  br i1 %spec.select.i1225.lcssa, label %.critedge.i, label %_ZL26processEnsembleTemperatureP10t_inputrecbP14WarningHandler.exit

vec.epilog.scalar.ph2607:                         ; preds = %vec.epilog.scalar.ph2607.preheader, %vec.epilog.scalar.ph2607
  %indvars.iv60.i = phi i64 [ %indvars.iv.next61.i, %vec.epilog.scalar.ph2607 ], [ %indvars.iv60.i.ph, %vec.epilog.scalar.ph2607.preheader ] ; 2 uses
  %.04354.i = phi i1 [ %spec.select.i1225, %vec.epilog.scalar.ph2607 ], [ %.04354.i.ph, %vec.epilog.scalar.ph2607.preheader ]
  %i.czu = getelementptr inbounds nuw [4 x i8], ptr %i.cys, i64 %indvars.iv60.i
  %i.czv = load float, ptr %i.czu, align 4, !tbaa !149
  %i.czw = fcmp oeq float %i.czv, %i.cyt
  %spec.select.i1225 = select i1 %i.czw, i1 %.04354.i, i1 false ; 2 uses
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next61.i, %wide.trip.count62.i
  br i1 %exitcond63.not.i, label %._crit_edge57.i, label %vec.epilog.scalar.ph2607, !llvm.loop !729

.critedge.i:                                      ; preds = %._crit_edge57.i, %.preheader.i1224
  %i.czx = load float, ptr %i.cym, align 4, !tbaa !262
  %i.czy = fcmp une float %i.czx, %i.cyt
  br i1 %i.czy, label %bb.ux, label %_ZL26processEnsembleTemperatureP10t_inputrecbP14WarningHandler.exit

bb.ux:                                            ; preds = %.critedge.i
  invoke void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %6, i64 109, ptr nonnull @.str.707)
          to label %_ZL26processEnsembleTemperatureP10t_inputrecbP14WarningHandler.exit unwind label %bb.tu

bb.uy:                                            ; preds = %bb.us
  %i.czz = invoke noundef zeroext i1 @_Z33integratorHasReferenceTemperatureRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %5)
          to label %.noexc1229 unwind label %bb.tu

.noexc1229:                                       ; preds = %bb.uy
  br i1 %i.czz, label %bb.uz, label %bb.vi

bb.uz:                                            ; preds = %.noexc1229
  br i1 %i.ir, label %bb.vb, label %bb.va

bb.va:                                            ; preds = %bb.uz
  %i.daa = load ptr, ptr @stderr, align 8, !tbaa !343
  %fwrite46.i = call i64 @fwrite(ptr nonnull @.str.708, i64 82, i64 1, ptr %i.daa) #35 ; 0 uses
  store i32 0, ptr %i.cyj, align 8, !tbaa !261
  %i.dab = getelementptr inbounds nuw i8, ptr %5, i64 188
  store float -1.000000e+00, ptr %i.dab, align 4, !tbaa !262
  br label %_ZL26processEnsembleTemperatureP10t_inputrecbP14WarningHandler.exit

bb.vb:                                            ; preds = %bb.uz
  %i.dac = invoke noundef zeroext i1 @_Z20doSimulatedAnnealingRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %5)
          to label %.noexc1230 unwind label %bb.tu

.noexc1230:                                       ; preds = %bb.vb
  br i1 %i.dac, label %bb.vc, label %bb.ve

bb.vc:                                            ; preds = %.noexc1230
  %i.dad = load i32, ptr %i.ja, align 8, !tbaa !413
  %i.dae = icmp sgt i32 %i.dad, 1
  br i1 %i.dae, label %bb.vd, label %bb.ve

bb.vd:                                            ; preds = %bb.vc
  %i.daf = load ptr, ptr @stderr, align 8, !tbaa !343
  %fwrite47.i = call i64 @fwrite(ptr nonnull @.str.709, i64 111, i64 1, ptr %i.daf) #35 ; 0 uses
  store i32 0, ptr %i.cyj, align 8, !tbaa !261
  %i.dag = getelementptr inbounds nuw i8, ptr %5, i64 188
  store float -1.000000e+00, ptr %i.dag, align 4, !tbaa !262
  br label %_ZL26processEnsembleTemperatureP10t_inputrecbP14WarningHandler.exit

bb.ve:                                            ; preds = %bb.vc, %.noexc1230
  %i.dah = invoke noundef zeroext i1 @_Z20doSimulatedAnnealingRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %5)
          to label %.noexc1231 unwind label %bb.tu

.noexc1231:                                       ; preds = %bb.ve
  br i1 %i.dah, label %bb.vg, label %bb.vf

bb.vf:                                            ; preds = %.noexc1231
  %i.dai = getelementptr inbounds nuw i8, ptr %5, i64 432
  %i.daj = load i8, ptr %i.dai, align 8, !tbaa !181, !range !166, !noundef !167
  %i.dak = trunc nuw i8 %i.daj to i1
  br i1 %i.dak, label %bb.vg, label %.preheader51.i

.preheader51.i:                                   ; preds = %bb.vf
  %i.dal = load i32, ptr %i.ja, align 8, !tbaa !413 ; 4 uses
  %i.dam = icmp sgt i32 %i.dal, 1
  %i.dan = load ptr, ptr %i.jg, align 8, !tbaa !415 ; 4 uses
  %i.dao = load float, ptr %i.dan, align 4, !tbaa !149 ; 4 uses
  br i1 %i.dam, label %iter.check2561, label %.critedge59.i

iter.check2561:                                   ; preds = %.preheader51.i
  %wide.trip.count.i1219 = zext nneg i32 %i.dal to i64 ; 2 uses
  %i.dap = add nsw i64 %wide.trip.count.i1219, -1 ; 5 uses
  %min.iters.check2541 = icmp ult i32 %i.dal, 5
  br i1 %min.iters.check2541, label %vec.epilog.scalar.ph2562.preheader, label %vector.main.loop.iter.check2542

vector.main.loop.iter.check2542:                  ; preds = %iter.check2561
  %min.iters.check2543 = icmp ult i32 %i.dal, 33
  br i1 %min.iters.check2543, label %vec.epilog.ph2565, label %vector.ph2544

vector.ph2544:                                    ; preds = %vector.main.loop.iter.check2542
  %i.daq = and i64 %i.dap, 28
  %n.vec2545 = and i64 %i.dap, -32                ; 4 uses
  %i.dar = or disjoint i64 %n.vec2545, 1
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.dao, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body2546

vector.body2546:                                  ; preds = %vector.ph2544, %vector.body2546
  %index2547 = phi i64 [ 0, %vector.ph2544 ], [ %index.next2554, %vector.body2546 ] ; 2 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph2544 ], [ %i.dbb, %vector.body2546 ]
  %vec.phi2548 = phi <8 x i1> [ zeroinitializer, %vector.ph2544 ], [ %i.dbc, %vector.body2546 ]
  %vec.phi2549 = phi <8 x i1> [ zeroinitializer, %vector.ph2544 ], [ %i.dbd, %vector.body2546 ]
  %vec.phi2550 = phi <8 x i1> [ zeroinitializer, %vector.ph2544 ], [ %i.dbe, %vector.body2546 ]
  %i.das = getelementptr inbounds nuw [4 x i8], ptr %i.dan, i64 %index2547 ; 4 uses
  %i.dat = getelementptr inbounds nuw i8, ptr %i.das, i64 4
  %i.dau = getelementptr inbounds nuw i8, ptr %i.das, i64 36
  %i.dav = getelementptr inbounds nuw i8, ptr %i.das, i64 68
  %i.daw = getelementptr inbounds nuw i8, ptr %i.das, i64 100
  %wide.load = load <8 x float>, ptr %i.dat, align 4, !tbaa !149
  %wide.load2551 = load <8 x float>, ptr %i.dau, align 4, !tbaa !149
  %wide.load2552 = load <8 x float>, ptr %i.dav, align 4, !tbaa !149
  %wide.load2553 = load <8 x float>, ptr %i.daw, align 4, !tbaa !149
  %i.dax = fcmp une <8 x float> %wide.load, %broadcast.splat
  %i.day = fcmp une <8 x float> %wide.load2551, %broadcast.splat
  %i.daz = fcmp une <8 x float> %wide.load2552, %broadcast.splat
  %i.dba = fcmp une <8 x float> %wide.load2553, %broadcast.splat
  %i.dbb = or <8 x i1> %vec.phi, %i.dax           ; 2 uses
  %i.dbc = or <8 x i1> %vec.phi2548, %i.day       ; 2 uses
  %i.dbd = or <8 x i1> %vec.phi2549, %i.daz       ; 2 uses
  %i.dbe = or <8 x i1> %vec.phi2550, %i.dba       ; 2 uses
  %index.next2554 = add nuw i64 %index2547, 32    ; 2 uses
  %i.dbf = icmp eq i64 %index.next2554, %n.vec2545
  br i1 %i.dbf, label %middle.block2555, label %vector.body2546, !llvm.loop !730

middle.block2555:                                 ; preds = %vector.body2546
  %bin.rdx = or <8 x i1> %i.dbc, %i.dbb
  %bin.rdx2556 = or <8 x i1> %i.dbd, %bin.rdx
  %bin.rdx2557 = or <8 x i1> %i.dbe, %bin.rdx2556
  %bin.rdx2557.fr = freeze <8 x i1> %bin.rdx2557
  %i.dbg = bitcast <8 x i1> %bin.rdx2557.fr to i8
  %.not2625 = icmp eq i8 %i.dbg, 0                ; 3 uses
  %cmp.n2558 = icmp eq i64 %i.dap, %n.vec2545
  br i1 %cmp.n2558, label %._crit_edge.i1223, label %vec.epilog.iter.check2563

vec.epilog.iter.check2563:                        ; preds = %middle.block2555
  %min.epilog.iters.check2564 = icmp eq i64 %i.daq, 0
  br i1 %min.epilog.iters.check2564, label %vec.epilog.scalar.ph2562.preheader, label %vec.epilog.ph2565, !prof !423

vec.epilog.ph2565:                                ; preds = %vector.main.loop.iter.check2542, %vec.epilog.iter.check2563
  %vec.epilog.resume.val2559 = phi i64 [ %n.vec2545, %vec.epilog.iter.check2563 ], [ 0, %vector.main.loop.iter.check2542 ]
  %bc.merge.rdx = phi i1 [ %.not2625, %vec.epilog.iter.check2563 ], [ true, %vector.main.loop.iter.check2542 ]
  %i.dbh = xor i1 %bc.merge.rdx, true
  %n.vec2566 = and i64 %i.dap, -4                 ; 3 uses
  %i.dbi = or disjoint i64 %n.vec2566, 1
  %broadcast.splatinsert2567.a = insertelement <4 x float> poison, float %i.dao, i64 0
  %broadcast.splat2568.a = shufflevector <4 x float> %broadcast.splatinsert2567.a, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2569 = insertelement <4 x i1> poison, i1 %i.dbh, i64 0
  %broadcast.splat2570 = shufflevector <4 x i1> %broadcast.splatinsert2569, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body2571

vec.epilog.vector.body2571:                       ; preds = %vec.epilog.vector.body2571, %vec.epilog.ph2565
  %index2572 = phi i64 [ %vec.epilog.resume.val2559, %vec.epilog.ph2565 ], [ %index.next2575, %vec.epilog.vector.body2571 ] ; 2 uses
  %vec.phi2573 = phi <4 x i1> [ %broadcast.splat2570, %vec.epilog.ph2565 ], [ %.fr2626, %vec.epilog.vector.body2571 ]
  %i.dbj = getelementptr inbounds nuw [4 x i8], ptr %i.dan, i64 %index2572
  %i.dbk = getelementptr inbounds nuw i8, ptr %i.dbj, i64 4
  %wide.load2574 = load <4 x float>, ptr %i.dbk, align 4, !tbaa !149
  %i.dbl = fcmp une <4 x float> %wide.load2574, %broadcast.splat2568.a
  %i.dbm = or <4 x i1> %vec.phi2573, %i.dbl
  %.fr2626 = freeze <4 x i1> %i.dbm               ; 2 uses
  %index.next2575 = add nuw i64 %index2572, 4     ; 2 uses
  %i.dbn = icmp eq i64 %index.next2575, %n.vec2566
  br i1 %i.dbn, label %vec.epilog.middle.block2576, label %vec.epilog.vector.body2571, !llvm.loop !731

vec.epilog.middle.block2576:                      ; preds = %vec.epilog.vector.body2571
  %i.dbo = bitcast <4 x i1> %.fr2626 to i4
  %.not2627 = icmp eq i4 %i.dbo, 0                ; 2 uses
  %cmp.n2577 = icmp eq i64 %i.dap, %n.vec2566
  br i1 %cmp.n2577, label %._crit_edge.i1223, label %vec.epilog.scalar.ph2562.preheader

vec.epilog.scalar.ph2562.preheader:               ; preds = %iter.check2561, %vec.epilog.iter.check2563, %vec.epilog.middle.block2576
  %indvars.iv.i1220.ph = phi i64 [ 1, %iter.check2561 ], [ %i.dar, %vec.epilog.iter.check2563 ], [ %i.dbi, %vec.epilog.middle.block2576 ]
  %.04152.i.ph = phi i1 [ true, %iter.check2561 ], [ %.not2625, %vec.epilog.iter.check2563 ], [ %.not2627, %vec.epilog.middle.block2576 ]
  br label %vec.epilog.scalar.ph2562

bb.vg:                                            ; preds = %bb.vf, %.noexc1231
  store i32 2, ptr %i.cyj, align 8, !tbaa !261
  br label %_ZL26processEnsembleTemperatureP10t_inputrecbP14WarningHandler.exit

._crit_edge.i1223:                                ; preds = %vec.epilog.scalar.ph2562, %vec.epilog.middle.block2576, %middle.block2555
  %spec.select48.i.lcssa = phi i1 [ %.not2627, %vec.epilog.middle.block2576 ], [ %.not2625, %middle.block2555 ], [ %spec.select48.i, %vec.epilog.scalar.ph2562 ]
  br i1 %spec.select48.i.lcssa, label %.critedge59.i, label %bb.vh

vec.epilog.scalar.ph2562:                         ; preds = %vec.epilog.scalar.ph2562.preheader, %vec.epilog.scalar.ph2562
  %indvars.iv.i1220 = phi i64 [ %indvars.iv.next.i1221, %vec.epilog.scalar.ph2562 ], [ %indvars.iv.i1220.ph, %vec.epilog.scalar.ph2562.preheader ] ; 2 uses
  %.04152.i = phi i1 [ %spec.select48.i, %vec.epilog.scalar.ph2562 ], [ %.04152.i.ph, %vec.epilog.scalar.ph2562.preheader ]
  %i.dbp = getelementptr inbounds nuw [4 x i8], ptr %i.dan, i64 %indvars.iv.i1220
  %i.dbq = load float, ptr %i.dbp, align 4, !tbaa !149
  %i.dbr = fcmp oeq float %i.dbq, %i.dao
  %spec.select48.i = select i1 %i.dbr, i1 %.04152.i, i1 false ; 2 uses
  %indvars.iv.next.i1221 = add nuw nsw i64 %indvars.iv.i1220, 1 ; 2 uses
  %exitcond.not.i1222 = icmp eq i64 %indvars.iv.next.i1221, %wide.trip.count.i1219
  br i1 %exitcond.not.i1222, label %._crit_edge.i1223, label %vec.epilog.scalar.ph2562, !llvm.loop !732

.critedge59.i:                                    ; preds = %._crit_edge.i1223, %.preheader51.i
  store i32 1, ptr %i.cyj, align 8, !tbaa !261
  %i.dbs = getelementptr inbounds nuw i8, ptr %5, i64 188
  store float %i.dao, ptr %i.dbs, align 4, !tbaa !262
  br label %_ZL26processEnsembleTemperatureP10t_inputrecbP14WarningHandler.exit

bb.vh:                                            ; preds = %._crit_edge.i1223
  store i32 0, ptr %i.cyj, align 8, !tbaa !261
  %i.dbt = getelementptr inbounds nuw i8, ptr %5, i64 188
  store float -1.000000e+00, ptr %i.dbt, align 4, !tbaa !262
  br label %_ZL26processEnsembleTemperatureP10t_inputrecbP14WarningHandler.exit

bb.vi:                                            ; preds = %.noexc1229
  %i.dbu = load ptr, ptr @stderr, align 8, !tbaa !343
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.710, i64 96, i64 1, ptr %i.dbu) #35 ; 0 uses
  store i32 0, ptr %i.cyj, align 8, !tbaa !261
  %i.dbv = getelementptr inbounds nuw i8, ptr %5, i64 188
  store float -1.000000e+00, ptr %i.dbv, align 4, !tbaa !262
  br label %_ZL26processEnsembleTemperatureP10t_inputrecbP14WarningHandler.exit

_ZL26processEnsembleTemperatureP10t_inputrecbP14WarningHandler.exit: ; preds = %bb.vi, %bb.vh, %.critedge59.i, %bb.vg, %bb.vd, %bb.va, %.critedge.i, %._crit_edge57.i, %.noexc1227, %bb.ut, %bb.us, %bb.uv, %bb.ux
  %i.dbw = load ptr, ptr %92, align 8, !tbaa !30  ; 3 uses
  %i.dbx = load ptr, ptr %i.ctc, align 8, !tbaa !31 ; 2 uses
  %.not4.i.i.i1232 = icmp eq ptr %i.dbw, %i.dbx
  br i1 %.not4.i.i.i1232, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1240, label %.lr.ph.i.i.i1233

.lr.ph.i.i.i1233:                                 ; preds = %_ZL26processEnsembleTemperatureP10t_inputrecbP14WarningHandler.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1236
  %.05.i.i.i1234 = phi ptr [ %i.dcd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1236 ], [ %i.dbw, %_ZL26processEnsembleTemperatureP10t_inputrecbP14WarningHandler.exit ] ; 3 uses
  %i.dby = load ptr, ptr %.05.i.i.i1234, align 8, !tbaa !21 ; 2 uses
  %i.dbz = getelementptr inbounds nuw i8, ptr %.05.i.i.i1234, i64 16 ; 2 uses
  %i.dca = icmp eq ptr %i.dby, %i.dbz
  br i1 %i.dca, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1235: ; preds = %.lr.ph.i.i.i1233
  %i.dcb = load i64, ptr %i.dbz, align 8, !tbaa !22
  %i.dcc = add i64 %i.dcb, 1
  call void @_ZdlPvm(ptr noundef %i.dby, i64 noundef %i.dcc) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1236

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1236: ; preds = %.lr.ph.i.i.i1233, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1235
  %i.dcd = getelementptr inbounds nuw i8, ptr %.05.i.i.i1234, i64 32 ; 2 uses
  %.not.i.i.i1237 = icmp eq ptr %i.dcd, %i.dbx
  br i1 %.not.i.i.i1237, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1238, label %.lr.ph.i.i.i1233, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1238: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1236
  %.pr.i1239 = load ptr, ptr %92, align 8, !tbaa !30
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1240

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1240: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1238, %_ZL26processEnsembleTemperatureP10t_inputrecbP14WarningHandler.exit
  %i.dce = phi ptr [ %.pr.i1239, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1238 ], [ %i.dbw, %_ZL26processEnsembleTemperatureP10t_inputrecbP14WarningHandler.exit ] ; 3 uses
  %.not.i.i1.i1241 = icmp eq ptr %i.dce, null
  br i1 %.not.i.i1.i1241, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1243, label %bb.vj

bb.vj:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1240
  %i.dcf = getelementptr inbounds nuw i8, ptr %92, i64 16
  %i.dcg = load ptr, ptr %i.dcf, align 8, !tbaa !33
  %i.dch = ptrtoint ptr %i.dcg to i64
  %i.dci = ptrtoint ptr %i.dce to i64
  %i.dcj = sub i64 %i.dch, %i.dci
  call void @_ZdlPvm(ptr noundef nonnull %i.dce, i64 noundef %i.dcj) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1243

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1243: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1240, %bb.vj
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #30
  %i.dck = load ptr, ptr %90, align 8, !tbaa !30  ; 3 uses
  %i.dcl = load ptr, ptr %i.cse, align 8, !tbaa !31 ; 2 uses
  %.not4.i.i.i1244 = icmp eq ptr %i.dck, %i.dcl
  br i1 %.not4.i.i.i1244, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1252, label %.lr.ph.i.i.i1245

.lr.ph.i.i.i1245:                                 ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1243, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1248
  %.05.i.i.i1246 = phi ptr [ %i.dcr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1248 ], [ %i.dck, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1243 ] ; 3 uses
  %i.dcm = load ptr, ptr %.05.i.i.i1246, align 8, !tbaa !21 ; 2 uses
  %i.dcn = getelementptr inbounds nuw i8, ptr %.05.i.i.i1246, i64 16 ; 2 uses
  %i.dco = icmp eq ptr %i.dcm, %i.dcn
  br i1 %i.dco, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1247

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1247: ; preds = %.lr.ph.i.i.i1245
  %i.dcp = load i64, ptr %i.dcn, align 8, !tbaa !22
  %i.dcq = add i64 %i.dcp, 1
  call void @_ZdlPvm(ptr noundef %i.dcm, i64 noundef %i.dcq) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1248

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1248: ; preds = %.lr.ph.i.i.i1245, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1247
  %i.dcr = getelementptr inbounds nuw i8, ptr %.05.i.i.i1246, i64 32 ; 2 uses
  %.not.i.i.i1249 = icmp eq ptr %i.dcr, %i.dcl
  br i1 %.not.i.i.i1249, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1250, label %.lr.ph.i.i.i1245, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1250: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1248
  %.pr.i1251 = load ptr, ptr %90, align 8, !tbaa !30
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1252

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1252: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1250, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1243
  %i.dcs = phi ptr [ %.pr.i1251, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1250 ], [ %i.dck, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1243 ] ; 3 uses
  %.not.i.i1.i1253 = icmp eq ptr %i.dcs, null
  br i1 %.not.i.i1.i1253, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1255, label %bb.vk

bb.vk:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1252
  %i.dct = getelementptr inbounds nuw i8, ptr %90, i64 16
  %i.dcu = load ptr, ptr %i.dct, align 8, !tbaa !33
  %i.dcv = ptrtoint ptr %i.dcu to i64
  %i.dcw = ptrtoint ptr %i.dcs to i64
  %i.dcx = sub i64 %i.dcv, %i.dcw
  call void @_ZdlPvm(ptr noundef nonnull %i.dcs, i64 noundef %i.dcx) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1255

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1255: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1252, %bb.vk
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #30
  %i.dcy = load ptr, ptr %88, align 8, !tbaa !30  ; 3 uses
  %i.dcz = load ptr, ptr %i.crf, align 8, !tbaa !31 ; 2 uses
  %.not4.i.i.i1256 = icmp eq ptr %i.dcy, %i.dcz
  br i1 %.not4.i.i.i1256, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1264, label %.lr.ph.i.i.i1257

.lr.ph.i.i.i1257:                                 ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1255, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1260
  %.05.i.i.i1258 = phi ptr [ %i.ddf, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1260 ], [ %i.dcy, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1255 ] ; 3 uses
  %i.dda = load ptr, ptr %.05.i.i.i1258, align 8, !tbaa !21 ; 2 uses
  %i.ddb = getelementptr inbounds nuw i8, ptr %.05.i.i.i1258, i64 16 ; 2 uses
  %i.ddc = icmp eq ptr %i.dda, %i.ddb
  br i1 %i.ddc, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1259

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1259: ; preds = %.lr.ph.i.i.i1257
  %i.ddd = load i64, ptr %i.ddb, align 8, !tbaa !22
  %i.dde = add i64 %i.ddd, 1
  call void @_ZdlPvm(ptr noundef %i.dda, i64 noundef %i.dde) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1260

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1260: ; preds = %.lr.ph.i.i.i1257, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1259
  %i.ddf = getelementptr inbounds nuw i8, ptr %.05.i.i.i1258, i64 32 ; 2 uses
  %.not.i.i.i1261 = icmp eq ptr %i.ddf, %i.dcz
  br i1 %.not.i.i.i1261, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1262, label %.lr.ph.i.i.i1257, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1262: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1260
  %.pr.i1263 = load ptr, ptr %88, align 8, !tbaa !30
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1264

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1264: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1262, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1255
  %i.ddg = phi ptr [ %.pr.i1263, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1262 ], [ %i.dcy, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1255 ] ; 3 uses
  %.not.i.i1.i1265 = icmp eq ptr %i.ddg, null
  br i1 %.not.i.i1.i1265, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1267, label %bb.vl

bb.vl:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1264
  %i.ddh = getelementptr inbounds nuw i8, ptr %88, i64 16
  %i.ddi = load ptr, ptr %i.ddh, align 8, !tbaa !33
  %i.ddj = ptrtoint ptr %i.ddi to i64
  %i.ddk = ptrtoint ptr %i.ddg to i64
  %i.ddl = sub i64 %i.ddj, %i.ddk
  call void @_ZdlPvm(ptr noundef nonnull %i.ddg, i64 noundef %i.ddl) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1267

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1267: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1264, %bb.vl
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #30
  %i.ddm = load ptr, ptr %86, align 8, !tbaa !30  ; 3 uses
  %i.ddn = load ptr, ptr %i.cqg, align 8, !tbaa !31 ; 2 uses
  %.not4.i.i.i1268 = icmp eq ptr %i.ddm, %i.ddn
  br i1 %.not4.i.i.i1268, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276, label %.lr.ph.i.i.i1269

.lr.ph.i.i.i1269:                                 ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1267, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272
  %.05.i.i.i1270 = phi ptr [ %i.ddt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272 ], [ %i.ddm, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1267 ] ; 3 uses
  %i.ddo = load ptr, ptr %.05.i.i.i1270, align 8, !tbaa !21 ; 2 uses
  %i.ddp = getelementptr inbounds nuw i8, ptr %.05.i.i.i1270, i64 16 ; 2 uses
  %i.ddq = icmp eq ptr %i.ddo, %i.ddp
end_hunk_0
begin_hunk_1_@_Z12triple_checkPKcRK10t_inputrecRK10gmx_mtop_tP14WarningHandler:bb.a
  call void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 %i.dj, ptr nonnull %i.d)
  br label %_ZL10_low_checkbPKcP14WarningHandler.exit249

_ZL10_low_checkbPKcP14WarningHandler.exit249:     ; preds = %_ZL10_low_checkbPKcP14WarningHandler.exit, %bb.r
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 1 ; 2 uses
  %i.dk = load i32, ptr %i.cn, align 8, !tbaa !413 ; 2 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = icmp slt i64 %indvars.iv.next430, %i.dl
  br i1 %i.dm, label %bb.p, label %._crit_edge377.loopexit, !llvm.loop !838

bb.s:                                             ; preds = %._crit_edge377
  %i.dn = load i32, ptr %i.o, align 8, !tbaa !233
  %.not231 = icmp eq i32 %i.dn, 2
  %brmerge = or i1 %.not231, %.not618
  br i1 %brmerge, label %.loopexit364, label %.lr.ph379

.lr.ph379:                                        ; preds = %bb.s
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 808 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph379, %_ZL10_low_checkbPKcP14WarningHandler.exit250
  %indvars.iv432 = phi i64 [ 0, %.lr.ph379 ], [ %indvars.iv.next433, %_ZL10_low_checkbPKcP14WarningHandler.exit250 ] ; 4 uses
  %i.dr = load ptr, ptr %i.do, align 8, !tbaa !414
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv432
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !149
  %i.du = fpext float %i.dt to double
  %i.dv = load double, ptr %i.dp, align 8, !tbaa !136
  %i.dw = fdiv double %i.du, %i.dv
  %i.dx = call double @llvm.rint.f64(double %i.dw)
  %i.dy = fptosi double %i.dx to i32              ; 2 uses
  %i.dz = load i32, ptr %i.ck, align 8, !tbaa !151
  %i.ea = call noundef ptr @_Z17enumValueToString19TemperatureCoupling(i32 noundef %i.dz)
  %i.eb = load i32, ptr %i.dq, align 4, !tbaa !232
  %i.ec = load ptr, ptr %i.do, align 8, !tbaa !414
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv432
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !149
  %i.ef = fpext float %i.ee to double
  %i.eg = trunc nuw nsw i64 %indvars.iv432 to i32
  %i.eh = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) @.str.720, i32 noundef %i.eg, ptr noundef %i.ea, i32 noundef %i.eb, double noundef %i.ef, i32 noundef %i.dy) #30 ; 0 uses
  %i.ei = load i32, ptr %i.dq, align 4, !tbaa !232
  %i.ej = srem i32 %i.dy, %i.ei
  %.not356 = icmp eq i32 %i.ej, 0
  br i1 %.not356, label %_ZL10_low_checkbPKcP14WarningHandler.exit250, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ek = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #30
  call void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 %i.ek, ptr nonnull %i.d)
  br label %_ZL10_low_checkbPKcP14WarningHandler.exit250

_ZL10_low_checkbPKcP14WarningHandler.exit250:     ; preds = %bb.t, %bb.u
  %indvars.iv.next433 = add nuw nsw i64 %indvars.iv432, 1 ; 2 uses
  %i.el = load i32, ptr %i.cn, align 8, !tbaa !413
  %i.em = sext i32 %i.el to i64
  %i.en = icmp slt i64 %indvars.iv.next433, %i.em
  br i1 %i.en, label %bb.t, label %.loopexit364, !llvm.loop !839

.loopexit364:                                     ; preds = %_ZL10_low_checkbPKcP14WarningHandler.exit250, %bb.s, %._crit_edge.thread, %._crit_edge377
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !135
  switch i32 %i.ep, label %.critedge2 [
    i32 0, label %.thread
    i32 12, label %.thread
    i32 11, label %.thread
    i32 10, label %.thread
  ]

.thread:                                          ; preds = %.loopexit364, %.loopexit364, %.loopexit364, %.loopexit364
  %i.eq = load i32, ptr %i.o, align 8, !tbaa !233
  %i.er = icmp eq i32 %i.eq, 2
  br i1 %i.er, label %bb.v, label %.critedge2

bb.v:                                             ; preds = %.thread
  %i.es = call noundef i32 @_Z8ndof_comPK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %1)
  %i.et = icmp slt i32 %i.es, 1                   ; 6 uses
  %i.eu = call noundef i32 @_Z8ndof_comPK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %1)
  %i.ev = icmp slt i32 %i.eu, 2                   ; 6 uses
  %i.ew = call noundef i32 @_Z8ndof_comPK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %1)
  %i.ex = icmp slt i32 %i.ew, 3                   ; 6 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 752
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !416 ; 4 uses
  %i.fa = icmp sgt i32 %i.ez, 0
  br i1 %i.fa, label %iter.check, label %_ZL21haveAbsoluteReferenceRK10t_inputrec.exit

iter.check:                                       ; preds = %bb.v
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 840
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !417 ; 6 uses
  %wide.trip.count.i = zext nneg i32 %i.ez to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.ez, 4
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check652 = icmp ult i32 %i.ez, 32
  br i1 %min.iters.check652, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fd = and i64 %wide.trip.count.i, 28
  %n.vec = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.gf, %vector.body ]
  %vec.phi653 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.gg, %vector.body ]
  %vec.phi654 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.gh, %vector.body ]
  %vec.phi655 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.gi, %vector.body ]
  %vec.phi656 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.fx, %vector.body ]
  %vec.phi657 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.fy, %vector.body ]
  %vec.phi658 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.fz, %vector.body ]
  %vec.phi659 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.ga, %vector.body ]
  %vec.phi660 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.fp, %vector.body ]
  %vec.phi661 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.fq, %vector.body ]
  %vec.phi662 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.fr, %vector.body ]
  %vec.phi663 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.fs, %vector.body ]
  %i.fe = getelementptr inbounds nuw [12 x i8], ptr %i.fc, i64 %index
  %i.ff = getelementptr inbounds nuw [12 x i8], ptr %i.fc, i64 %index
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 96
  %i.fh = getelementptr inbounds nuw [12 x i8], ptr %i.fc, i64 %index
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 192
  %i.fj = getelementptr inbounds nuw [12 x i8], ptr %i.fc, i64 %index
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 288
  %wide.vec = load <24 x i32>, ptr %i.fe, align 4, !tbaa !169 ; 3 uses
  %strided.vec = shufflevector <24 x i32> %wide.vec, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec664 = shufflevector <24 x i32> %wide.vec, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec665 = shufflevector <24 x i32> %wide.vec, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec666 = load <24 x i32>, ptr %i.fg, align 4, !tbaa !169 ; 3 uses
  %strided.vec667 = shufflevector <24 x i32> %wide.vec666, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec668 = shufflevector <24 x i32> %wide.vec666, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec669 = shufflevector <24 x i32> %wide.vec666, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec670 = load <24 x i32>, ptr %i.fi, align 4, !tbaa !169 ; 3 uses
  %strided.vec671 = shufflevector <24 x i32> %wide.vec670, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec672 = shufflevector <24 x i32> %wide.vec670, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec673 = shufflevector <24 x i32> %wide.vec670, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec674 = load <24 x i32>, ptr %i.fk, align 4, !tbaa !169 ; 3 uses
  %strided.vec675 = shufflevector <24 x i32> %wide.vec674, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec676 = shufflevector <24 x i32> %wide.vec674, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec677 = shufflevector <24 x i32> %wide.vec674, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.fl = icmp ne <8 x i32> %strided.vec, zeroinitializer
  %i.fm = icmp ne <8 x i32> %strided.vec667, zeroinitializer
  %i.fn = icmp ne <8 x i32> %strided.vec671, zeroinitializer
  %i.fo = icmp ne <8 x i32> %strided.vec675, zeroinitializer
  %i.fp = or <8 x i1> %vec.phi660, %i.fl          ; 2 uses
  %i.fq = or <8 x i1> %vec.phi661, %i.fm          ; 2 uses
  %i.fr = or <8 x i1> %vec.phi662, %i.fn          ; 2 uses
  %i.fs = or <8 x i1> %vec.phi663, %i.fo          ; 2 uses
  %i.ft = icmp ne <8 x i32> %strided.vec664, zeroinitializer
  %i.fu = icmp ne <8 x i32> %strided.vec668, zeroinitializer
  %i.fv = icmp ne <8 x i32> %strided.vec672, zeroinitializer
  %i.fw = icmp ne <8 x i32> %strided.vec676, zeroinitializer
  %i.fx = or <8 x i1> %vec.phi656, %i.ft          ; 2 uses
  %i.fy = or <8 x i1> %vec.phi657, %i.fu          ; 2 uses
  %i.fz = or <8 x i1> %vec.phi658, %i.fv          ; 2 uses
  %i.ga = or <8 x i1> %vec.phi659, %i.fw          ; 2 uses
  %i.gb = icmp ne <8 x i32> %strided.vec665, zeroinitializer
  %i.gc = icmp ne <8 x i32> %strided.vec669, zeroinitializer
  %i.gd = icmp ne <8 x i32> %strided.vec673, zeroinitializer
  %i.ge = icmp ne <8 x i32> %strided.vec677, zeroinitializer
  %i.gf = or <8 x i1> %vec.phi, %i.gb             ; 2 uses
  %i.gg = or <8 x i1> %vec.phi653, %i.gc          ; 2 uses
  %i.gh = or <8 x i1> %vec.phi654, %i.gd          ; 2 uses
  %i.gi = or <8 x i1> %vec.phi655, %i.ge          ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gj = icmp eq i64 %index.next, %n.vec
  br i1 %i.gj, label %middle.block, label %vector.body, !llvm.loop !840

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.gg, %i.gf
  %bin.rdx678 = or <8 x i1> %i.gh, %bin.rdx
  %bin.rdx679 = or <8 x i1> %i.gi, %bin.rdx678
  %bin.rdx679.fr = freeze <8 x i1> %bin.rdx679
  %i.gk = bitcast <8 x i1> %bin.rdx679.fr to i8
  %i.gl = icmp ne i8 %i.gk, 0
  %rdx.select = or i1 %i.gl, %i.ex                ; 3 uses
  %bin.rdx680 = or <8 x i1> %i.fy, %i.fx
  %bin.rdx681 = or <8 x i1> %i.fz, %bin.rdx680
  %bin.rdx682 = or <8 x i1> %i.ga, %bin.rdx681
  %bin.rdx682.fr = freeze <8 x i1> %bin.rdx682
  %i.gm = bitcast <8 x i1> %bin.rdx682.fr to i8
  %i.gn = icmp ne i8 %i.gm, 0
  %rdx.select683 = or i1 %i.gn, %i.ev             ; 3 uses
  %bin.rdx684 = or <8 x i1> %i.fq, %i.fp
  %bin.rdx685 = or <8 x i1> %i.fr, %bin.rdx684
  %bin.rdx686 = or <8 x i1> %i.fs, %bin.rdx685
  %bin.rdx686.fr = freeze <8 x i1> %bin.rdx686
  %i.go = bitcast <8 x i1> %bin.rdx686.fr to i8
  %i.gp = icmp ne i8 %i.go, 0
  %rdx.select687 = or i1 %i.gp, %i.et             ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZL21haveAbsoluteReferenceRK10t_inputrec.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fd, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !423

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %rdx.select, %vec.epilog.iter.check ], [ %i.ex, %vector.main.loop.iter.check ]
  %bc.merge.rdx688 = phi i1 [ %rdx.select683, %vec.epilog.iter.check ], [ %i.ev, %vector.main.loop.iter.check ]
  %bc.merge.rdx689 = phi i1 [ %rdx.select687, %vec.epilog.iter.check ], [ %i.et, %vector.main.loop.iter.check ]
  %14 = xor i1 %bc.merge.rdx, %i.ex
  %i.gq = xor i1 %bc.merge.rdx688, %i.ev
  %15 = xor i1 %bc.merge.rdx689, %i.et
  %n.vec690 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %14, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert691 = insertelement <4 x i1> poison, i1 %i.gq, i64 0
  %broadcast.splat692 = shufflevector <4 x i1> %broadcast.splatinsert691, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert693 = insertelement <4 x i1> poison, i1 %15, i64 0
  %broadcast.splat694 = shufflevector <4 x i1> %broadcast.splatinsert693, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index695 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next703, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi696 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr796, %vec.epilog.vector.body ]
  %vec.phi697 = phi <4 x i1> [ %broadcast.splat692, %vec.epilog.ph ], [ %.fr797, %vec.epilog.vector.body ]
  %vec.phi698 = phi <4 x i1> [ %broadcast.splat694, %vec.epilog.ph ], [ %.fr798, %vec.epilog.vector.body ]
  %i.gr = getelementptr inbounds nuw [12 x i8], ptr %i.fc, i64 %index695
  %wide.vec699 = load <12 x i32>, ptr %i.gr, align 4, !tbaa !169 ; 3 uses
  %strided.vec700 = shufflevector <12 x i32> %wide.vec699, <12 x i32> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %strided.vec701 = shufflevector <12 x i32> %wide.vec699, <12 x i32> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 10>
  %strided.vec702 = shufflevector <12 x i32> %wide.vec699, <12 x i32> poison, <4 x i32> <i32 2, i32 5, i32 8, i32 11>
  %i.gs = icmp ne <4 x i32> %strided.vec700, zeroinitializer
  %i.gt = or <4 x i1> %vec.phi698, %i.gs
  %.fr798 = freeze <4 x i1> %i.gt                 ; 2 uses
  %i.gu = icmp ne <4 x i32> %strided.vec701, zeroinitializer
  %i.gv = or <4 x i1> %vec.phi697, %i.gu
  %.fr797 = freeze <4 x i1> %i.gv                 ; 2 uses
  %i.gw = icmp ne <4 x i32> %strided.vec702, zeroinitializer
  %i.gx = or <4 x i1> %vec.phi696, %i.gw
  %.fr796 = freeze <4 x i1> %i.gx                 ; 2 uses
  %index.next703 = add nuw i64 %index695, 4       ; 2 uses
  %i.gy = icmp eq i64 %index.next703, %n.vec690
  br i1 %i.gy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !841

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.gz = bitcast <4 x i1> %.fr796 to i4
  %i.ha = icmp ne i4 %i.gz, 0
  %rdx.select704 = or i1 %i.ha, %i.ex             ; 2 uses
  %i.hb = bitcast <4 x i1> %.fr797 to i4
  %i.hc = icmp ne i4 %i.hb, 0
  %rdx.select705 = or i1 %i.hc, %i.ev             ; 2 uses
  %i.hd = bitcast <4 x i1> %.fr798 to i4
  %i.he = icmp ne i4 %i.hd, 0
  %rdx.select706 = or i1 %i.he, %i.et             ; 2 uses
  %cmp.n707 = icmp eq i64 %n.vec690, %wide.trip.count.i
  br i1 %cmp.n707, label %_ZL21haveAbsoluteReferenceRK10t_inputrec.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.7.0.i.ph = phi i1 [ %i.ex, %iter.check ], [ %rdx.select, %vec.epilog.iter.check ], [ %rdx.select704, %vec.epilog.middle.block ]
  %.sroa.4.0.i.ph = phi i1 [ %i.ev, %iter.check ], [ %rdx.select683, %vec.epilog.iter.check ], [ %rdx.select705, %vec.epilog.middle.block ]
  %.sroa.0.0.i.ph = phi i1 [ %i.et, %iter.check ], [ %rdx.select687, %vec.epilog.iter.check ], [ %rdx.select706, %vec.epilog.middle.block ]
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec690, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.7.0.i = phi i1 [ %.sroa.7.2.i, %.preheader.i ], [ %.sroa.7.0.i.ph, %.preheader.i.preheader ]
  %.sroa.4.0.i = phi i1 [ %.sroa.4.2.i, %.preheader.i ], [ %.sroa.4.0.i.ph, %.preheader.i.preheader ]
  %.sroa.0.0.i = phi i1 [ %spec.select.i, %.preheader.i ], [ %.sroa.0.0.i.ph, %.preheader.i.preheader ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ %indvars.iv.i.ph, %.preheader.i.preheader ] ; 2 uses
  %i.hf = getelementptr inbounds nuw [12 x i8], ptr %i.fc, i64 %indvars.iv.i ; 3 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !169
  %.not.i = icmp ne i32 %i.hg, 0
  %spec.select.i = select i1 %.not.i, i1 true, i1 %.sroa.0.0.i ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !169
  %.not.1.i = icmp ne i32 %i.hi, 0
  %.sroa.4.2.i = select i1 %.not.1.i, i1 true, i1 %.sroa.4.0.i ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !169
  %.not.2.i = icmp ne i32 %i.hk, 0
  %.sroa.7.2.i = select i1 %.not.2.i, i1 true, i1 %.sroa.7.0.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL21haveAbsoluteReferenceRK10t_inputrec.exit, label %.preheader.i, !llvm.loop !842

_ZL21haveAbsoluteReferenceRK10t_inputrec.exit:    ; preds = %.preheader.i, %middle.block, %vec.epilog.middle.block, %bb.v
  %.sroa.7.1.i = phi i1 [ %i.ex, %bb.v ], [ %rdx.select704, %vec.epilog.middle.block ], [ %rdx.select, %middle.block ], [ %.sroa.7.2.i, %.preheader.i ]
  %.sroa.4.1.i = phi i1 [ %i.ev, %bb.v ], [ %rdx.select705, %vec.epilog.middle.block ], [ %rdx.select683, %middle.block ], [ %.sroa.4.2.i, %.preheader.i ]
  %.sroa.0.1.i = phi i1 [ %i.et, %bb.v ], [ %rdx.select706, %vec.epilog.middle.block ], [ %rdx.select687, %middle.block ], [ %spec.select.i, %.preheader.i ]
  %or.cond.i251 = select i1 %.sroa.0.1.i, i1 %.sroa.4.1.i, i1 false
  %i.hl = select i1 %or.cond.i251, i1 %.sroa.7.1.i, i1 false
  br i1 %i.hl, label %.critedge2, label %bb.w

bb.w:                                             ; preds = %_ZL21haveAbsoluteReferenceRK10t_inputrec.exit
  %i.hm = call fastcc i24 @_ZL22havePositionRestraintsRK10gmx_mtop_t(ptr noundef nonnull align 8 dereferenceable(768) %2)
  %i.hn = and i24 %i.hm, 65793
  %i.ho = icmp eq i24 %i.hn, 65793
  br i1 %i.ho, label %.critedge2, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !173
  %i.hr = icmp slt i64 %i.hq, 11
  br i1 %i.hr, label %.critedge2, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hs = load i32, ptr %i.ck, align 8, !tbaa !151
  %i.ht = add i32 %i.hs, -6
  %spec.select = icmp ult i32 %i.ht, -2
  br i1 %spec.select, label %bb.z, label %.critedge2

bb.z:                                             ; preds = %bb.y
  call void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 158, ptr nonnull @.str.721)
  br label %.critedge2

.critedge2:                                       ; preds = %.loopexit364, %bb.x, %bb.w, %_ZL21haveAbsoluteReferenceRK10t_inputrec.exit, %.thread, %bb.z, %bb.y
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 204 ; 8 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !152 ; 2 uses
  %i.hw = icmp eq i32 %i.hv, 5
  br i1 %i.hw, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %.critedge2
  %i.hx = call noundef zeroext i1 @_Z23haveEnsembleTemperatureRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %1)
  br i1 %i.hx, label %thread-pre-split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hy = load i32, ptr %i.hu, align 4, !tbaa !152
  %i.hz = call noundef ptr @_Z17enumValueToString16PressureCoupling(i32 noundef %i.hy)
  %i.ia = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.722, ptr noundef %i.hz) #30 ; 0 uses
  %i.ib = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #30
  call void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 %i.ib, ptr nonnull %i.e)
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.aa, %bb.ab
  %.pr = load i32, ptr %i.hu, align 4, !tbaa !152
  br label %bb.ac

bb.ac:                                            ; preds = %thread-pre-split, %.critedge2
  %i.ic = phi i32 [ %.pr, %thread-pre-split ], [ %i.hv, %.critedge2 ] ; 2 uses
  %i.id = icmp eq i32 %i.ic, 2
  br i1 %i.id, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.ie = load i32, ptr %i.ck, align 8, !tbaa !151
  %i.if = icmp eq i32 %i.ie, 2
  br i1 %i.if, label %.preheader362, label %.thread581

.preheader362:                                    ; preds = %bb.ad
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 744
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !413 ; 3 uses
  %i.ii = icmp sgt i32 %i.ih, 0
  br i1 %i.ii, label %.lr.ph382, label %._crit_edge383

.lr.ph382:                                        ; preds = %.preheader362
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 808
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !414 ; 9 uses
  %wide.trip.count438 = zext nneg i32 %i.ih to i64 ; 2 uses
  %xtraiter873 = and i64 %wide.trip.count438, 7   ; 3 uses
  %i.il = icmp ult i32 %i.ih, 8
  br i1 %i.il, label %.epil.preheader872, label %.lr.ph382.new

.lr.ph382.new:                                    ; preds = %.lr.ph382
  %unroll_iter878 = and i64 %wide.trip.count438, 2147483640
  br label %bb.af

._crit_edge383.loopexit.unr-lcssa:                ; preds = %bb.af
  %lcmp.mod875.not = icmp eq i64 %xtraiter873, 0
  br i1 %lcmp.mod875.not, label %._crit_edge383.loopexit, label %.epil.preheader872

.epil.preheader872:                               ; preds = %._crit_edge383.loopexit.unr-lcssa, %.lr.ph382
  %indvars.iv435.epil.init = phi i64 [ 0, %.lr.ph382 ], [ %indvars.iv.next436.7, %._crit_edge383.loopexit.unr-lcssa ]
  %.0352380.epil.init = phi float [ 0.000000e+00, %.lr.ph382 ], [ %.sroa.speculated.7, %._crit_edge383.loopexit.unr-lcssa ]
  %lcmp.mod877 = icmp ne i64 %xtraiter873, 0
  call void @llvm.assume(i1 %lcmp.mod877)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.epil.preheader872
  %indvars.iv435.epil = phi i64 [ %indvars.iv435.epil.init, %.epil.preheader872 ], [ %indvars.iv.next436.epil, %bb.ae ] ; 2 uses
  %.0352380.epil = phi float [ %.0352380.epil.init, %.epil.preheader872 ], [ %.sroa.speculated.epil, %bb.ae ] ; 2 uses
  %epil.iter874 = phi i64 [ 0, %.epil.preheader872 ], [ %epil.iter874.next, %bb.ae ]
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv435.epil
  %i.in = load float, ptr %i.im, align 4, !tbaa !149 ; 2 uses
  %i.io = fcmp olt float %.0352380.epil, %i.in
  %.sroa.speculated.epil = select i1 %i.io, float %i.in, float %.0352380.epil ; 2 uses
  %indvars.iv.next436.epil = add nuw nsw i64 %indvars.iv435.epil, 1
  %epil.iter874.next = add i64 %epil.iter874, 1   ; 2 uses
  %epil.iter874.cmp.not = icmp eq i64 %epil.iter874.next, %xtraiter873
  br i1 %epil.iter874.cmp.not, label %._crit_edge383.loopexit, label %bb.ae, !llvm.loop !843

._crit_edge383.loopexit:                          ; preds = %bb.ae, %._crit_edge383.loopexit.unr-lcssa
  %.sroa.speculated.lcssa = phi float [ %.sroa.speculated.7, %._crit_edge383.loopexit.unr-lcssa ], [ %.sroa.speculated.epil, %bb.ae ]
  %i.ip = fpext float %.sroa.speculated.lcssa to double
  br label %._crit_edge383

._crit_edge383:                                   ; preds = %._crit_edge383.loopexit, %.preheader362
  %.0352.lcssa = phi double [ 0.000000e+00, %.preheader362 ], [ %i.ip, %._crit_edge383.loopexit ] ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.ir = load float, ptr %i.iq, align 8, !tbaa !238
  %i.is = fpext float %i.ir to double
  %i.it = fmul double %.0352.lcssa, 1.900000e+00
  %i.iu = fcmp ogt double %i.it, %i.is
  br i1 %i.iu, label %bb.ag, label %.thread581

bb.af:                                            ; preds = %bb.af, %.lr.ph382.new
  %indvars.iv435 = phi i64 [ 0, %.lr.ph382.new ], [ %indvars.iv.next436.7, %bb.af ] ; 9 uses
  %.0352380 = phi float [ 0.000000e+00, %.lr.ph382.new ], [ %.sroa.speculated.7, %bb.af ] ; 2 uses
  %niter879 = phi i64 [ 0, %.lr.ph382.new ], [ %niter879.next.7, %bb.af ]
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv435
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !149 ; 2 uses
  %i.ix = fcmp olt float %.0352380, %i.iw
  %.sroa.speculated = select i1 %i.ix, float %i.iw, float %.0352380 ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv435
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !149 ; 2 uses
  %i.jb = fcmp olt float %.sroa.speculated, %i.ja
  %.sroa.speculated.1 = select i1 %i.jb, float %i.ja, float %.sroa.speculated ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv435
end_hunk_1
begin_hunk_2_@_Z12triple_checkPKcRK10t_inputrecRK10gmx_mtop_tP14WarningHandler:bb.a
  br i1 %i.aae, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aab, i64 144
  %i.aag = load float, ptr %i.aaf, align 8, !tbaa !149
  %i.aah = fcmp une float %i.aag, 0.000000e+00
  br i1 %i.aah, label %.split.us, label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %indvars.iv.next451.2.1 = add nuw nsw i64 %indvars.iv450.2.1, 1 ; 2 uses
  %exitcond454.2.1.not = icmp eq i64 %indvars.iv.next451.2.1, %wide.trip.count453.2.1
  br i1 %exitcond454.2.1.not, label %..loopexit_crit_edge.us.us.2.1, label %bb.ep, !llvm.loop !850

..loopexit_crit_edge.us.us.2.1:                   ; preds = %bb.er, %bb.eo
  %i.aai = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.aaj = load float, ptr %i.aai, align 8, !tbaa !149
  %i.aak = fcmp une float %i.aaj, 0.000000e+00
  br i1 %i.aak, label %.lr.ph399.us.us.2.2, label %bb.es

bb.es:                                            ; preds = %..loopexit_crit_edge.us.us.2.1
  %i.aal = getelementptr inbounds nuw i8, ptr %1, i64 708
  %i.aam = load float, ptr %i.aal, align 4, !tbaa !149
  %i.aan = fcmp une float %i.aam, 0.000000e+00
  br i1 %i.aan, label %.lr.ph399.us.us.2.2, label %.loopexit358

.lr.ph399.us.us.2.2:                              ; preds = %bb.es, %..loopexit_crit_edge.us.us.2.1
  %i.aao = load ptr, ptr %i.vd, align 8, !tbaa !283
  %wide.trip.count453.2.2 = zext nneg i32 %.lcssa367.fr to i64
  br label %bb.et

bb.et:                                            ; preds = %bb.ev, %.lr.ph399.us.us.2.2
  %indvars.iv450.2.2 = phi i64 [ %indvars.iv.next451.2.2, %bb.ev ], [ 0, %.lr.ph399.us.us.2.2 ] ; 3 uses
  %i.aap = getelementptr inbounds nuw [176 x i8], ptr %i.aao, i64 %indvars.iv450.2.2 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 40
  %i.aar = load i32, ptr %i.aaq, align 8, !tbaa !860
  %i.aas = icmp eq i32 %i.aar, 3
  br i1 %i.aas, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aap, i64 148
  %i.aau = load float, ptr %i.aat, align 4, !tbaa !149
  %i.aav = fcmp une float %i.aau, 0.000000e+00
  br i1 %i.aav, label %.split.us, label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %indvars.iv.next451.2.2 = add nuw nsw i64 %indvars.iv450.2.2, 1 ; 2 uses
  %exitcond454.2.2.not = icmp eq i64 %indvars.iv.next451.2.2, %wide.trip.count453.2.2
  br i1 %exitcond454.2.2.not, label %.loopexit358, label %bb.et, !llvm.loop !850

bb.ew:                                            ; preds = %.lr.ph393, %.loopexit359
  %i.aaw = phi ptr [ %i.uu, %.lr.ph393 ], [ %i.aep, %.loopexit359 ] ; 3 uses
  %indvars.iv448 = phi i64 [ 0, %.lr.ph393 ], [ %indvars.iv.next449, %.loopexit359 ] ; 3 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 56
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !283
  %i.aaz = getelementptr inbounds nuw [176 x i8], ptr %i.aay, i64 %indvars.iv448 ; 3 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 40
  %i.abb = load i32, ptr %i.aba, align 8, !tbaa !860
  %.not244 = icmp eq i32 %i.abb, 8
  br i1 %.not244, label %.loopexit359, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aaz, i64 92
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !169
  %i.abe = icmp eq i32 %i.abd, 0
  br i1 %i.abe, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aaz, i64 96
  %i.abg = load i32, ptr %i.abf, align 8, !tbaa !169
  %i.abh = icmp eq i32 %i.abg, 0
  br i1 %i.abh, label %bb.ez, label %.loopexit359

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %i.abi = call noundef i32 @_Z8ndof_comPK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %1)
  %i.abj = icmp slt i32 %i.abi, 1                 ; 2 uses
  %i.abk = call noundef i32 @_Z8ndof_comPK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %1)
  %i.abl = icmp slt i32 %i.abk, 2                 ; 2 uses
  %i.abm = call noundef i32 @_Z8ndof_comPK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %1)
  %i.abn = icmp slt i32 %i.abm, 3                 ; 2 uses
  %i.abo = load i32, ptr %i.uy, align 8, !tbaa !416 ; 4 uses
  %i.abp = icmp sgt i32 %i.abo, 0
  br i1 %i.abp, label %iter.check765, label %_ZL21haveAbsoluteReferenceRK10t_inputrec.exit294

iter.check765:                                    ; preds = %bb.ez
  %i.abq = zext i1 %i.abn to i8                   ; 5 uses
  %i.abr = zext i1 %i.abl to i8                   ; 5 uses
  %i.abs = zext i1 %i.abj to i8                   ; 5 uses
  %i.abt = load ptr, ptr %i.uz, align 8, !tbaa !417 ; 6 uses
  %wide.trip.count.i280 = zext nneg i32 %i.abo to i64 ; 6 uses
  %min.iters.check711 = icmp ult i32 %i.abo, 4
  br i1 %min.iters.check711, label %.preheader.i281.preheader, label %vector.main.loop.iter.check712

vector.main.loop.iter.check712:                   ; preds = %iter.check765
  %min.iters.check713 = icmp ult i32 %i.abo, 32
  br i1 %min.iters.check713, label %vec.epilog.ph769, label %vector.ph714

vector.ph714:                                     ; preds = %vector.main.loop.iter.check712
  %i.abu = and i64 %wide.trip.count.i280, 28
  %n.vec715 = and i64 %wide.trip.count.i280, 2147483616 ; 4 uses
  br label %vector.body716

vector.body716:                                   ; preds = %vector.ph714, %vector.body716
  %index717 = phi i64 [ 0, %vector.ph714 ], [ %index.next746, %vector.body716 ] ; 5 uses
  %vec.phi718 = phi <8 x i1> [ zeroinitializer, %vector.ph714 ], [ %i.acw, %vector.body716 ]
  %vec.phi719 = phi <8 x i1> [ zeroinitializer, %vector.ph714 ], [ %i.acx, %vector.body716 ]
  %vec.phi720 = phi <8 x i1> [ zeroinitializer, %vector.ph714 ], [ %i.acy, %vector.body716 ]
  %vec.phi721 = phi <8 x i1> [ zeroinitializer, %vector.ph714 ], [ %i.acz, %vector.body716 ]
  %vec.phi722 = phi <8 x i1> [ zeroinitializer, %vector.ph714 ], [ %i.aco, %vector.body716 ]
  %vec.phi723 = phi <8 x i1> [ zeroinitializer, %vector.ph714 ], [ %i.acp, %vector.body716 ]
  %vec.phi724 = phi <8 x i1> [ zeroinitializer, %vector.ph714 ], [ %i.acq, %vector.body716 ]
  %vec.phi725 = phi <8 x i1> [ zeroinitializer, %vector.ph714 ], [ %i.acr, %vector.body716 ]
  %vec.phi726 = phi <8 x i1> [ zeroinitializer, %vector.ph714 ], [ %i.acg, %vector.body716 ]
  %vec.phi727 = phi <8 x i1> [ zeroinitializer, %vector.ph714 ], [ %i.ach, %vector.body716 ]
  %vec.phi728 = phi <8 x i1> [ zeroinitializer, %vector.ph714 ], [ %i.aci, %vector.body716 ]
  %vec.phi729 = phi <8 x i1> [ zeroinitializer, %vector.ph714 ], [ %i.acj, %vector.body716 ]
  %i.abv = getelementptr inbounds nuw [12 x i8], ptr %i.abt, i64 %index717
  %i.abw = getelementptr inbounds nuw [12 x i8], ptr %i.abt, i64 %index717
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 96
  %i.aby = getelementptr inbounds nuw [12 x i8], ptr %i.abt, i64 %index717
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 192
  %i.aca = getelementptr inbounds nuw [12 x i8], ptr %i.abt, i64 %index717
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 288
  %wide.vec730 = load <24 x i32>, ptr %i.abv, align 4, !tbaa !169 ; 3 uses
  %strided.vec731 = shufflevector <24 x i32> %wide.vec730, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec732 = shufflevector <24 x i32> %wide.vec730, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec733 = shufflevector <24 x i32> %wide.vec730, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec734 = load <24 x i32>, ptr %i.abx, align 4, !tbaa !169 ; 3 uses
  %strided.vec735 = shufflevector <24 x i32> %wide.vec734, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec736 = shufflevector <24 x i32> %wide.vec734, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec737 = shufflevector <24 x i32> %wide.vec734, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec738 = load <24 x i32>, ptr %i.abz, align 4, !tbaa !169 ; 3 uses
  %strided.vec739 = shufflevector <24 x i32> %wide.vec738, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec740 = shufflevector <24 x i32> %wide.vec738, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec741 = shufflevector <24 x i32> %wide.vec738, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec742 = load <24 x i32>, ptr %i.acb, align 4, !tbaa !169 ; 3 uses
  %strided.vec743 = shufflevector <24 x i32> %wide.vec742, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec744 = shufflevector <24 x i32> %wide.vec742, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec745 = shufflevector <24 x i32> %wide.vec742, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.acc = icmp ne <8 x i32> %strided.vec731, zeroinitializer
  %i.acd = icmp ne <8 x i32> %strided.vec735, zeroinitializer
  %i.ace = icmp ne <8 x i32> %strided.vec739, zeroinitializer
  %i.acf = icmp ne <8 x i32> %strided.vec743, zeroinitializer
  %i.acg = or <8 x i1> %vec.phi726, %i.acc        ; 2 uses
  %i.ach = or <8 x i1> %vec.phi727, %i.acd        ; 2 uses
  %i.aci = or <8 x i1> %vec.phi728, %i.ace        ; 2 uses
  %i.acj = or <8 x i1> %vec.phi729, %i.acf        ; 2 uses
  %i.ack = icmp ne <8 x i32> %strided.vec732, zeroinitializer
  %i.acl = icmp ne <8 x i32> %strided.vec736, zeroinitializer
  %i.acm = icmp ne <8 x i32> %strided.vec740, zeroinitializer
  %i.acn = icmp ne <8 x i32> %strided.vec744, zeroinitializer
  %i.aco = or <8 x i1> %vec.phi722, %i.ack        ; 2 uses
  %i.acp = or <8 x i1> %vec.phi723, %i.acl        ; 2 uses
  %i.acq = or <8 x i1> %vec.phi724, %i.acm        ; 2 uses
  %i.acr = or <8 x i1> %vec.phi725, %i.acn        ; 2 uses
  %i.acs = icmp ne <8 x i32> %strided.vec733, zeroinitializer
  %i.act = icmp ne <8 x i32> %strided.vec737, zeroinitializer
  %i.acu = icmp ne <8 x i32> %strided.vec741, zeroinitializer
  %i.acv = icmp ne <8 x i32> %strided.vec745, zeroinitializer
  %i.acw = or <8 x i1> %vec.phi718, %i.acs        ; 2 uses
  %i.acx = or <8 x i1> %vec.phi719, %i.act        ; 2 uses
  %i.acy = or <8 x i1> %vec.phi720, %i.acu        ; 2 uses
  %i.acz = or <8 x i1> %vec.phi721, %i.acv        ; 2 uses
  %index.next746 = add nuw i64 %index717, 32      ; 2 uses
  %i.ada = icmp eq i64 %index.next746, %n.vec715
  br i1 %i.ada, label %middle.block747, label %vector.body716, !llvm.loop !851

middle.block747:                                  ; preds = %vector.body716
  %bin.rdx748 = or <8 x i1> %i.acx, %i.acw
  %bin.rdx749 = or <8 x i1> %i.acy, %bin.rdx748
  %bin.rdx750 = or <8 x i1> %i.acz, %bin.rdx749
  %bin.rdx750.fr = freeze <8 x i1> %bin.rdx750
  %i.adb = bitcast <8 x i1> %bin.rdx750.fr to i8
  %.not799 = icmp eq i8 %i.adb, 0
  %rdx.select751 = select i1 %.not799, i8 %i.abq, i8 1 ; 3 uses
  %bin.rdx752 = or <8 x i1> %i.acp, %i.aco
  %bin.rdx753 = or <8 x i1> %i.acq, %bin.rdx752
  %bin.rdx754 = or <8 x i1> %i.acr, %bin.rdx753
  %bin.rdx754.fr = freeze <8 x i1> %bin.rdx754
  %i.adc = bitcast <8 x i1> %bin.rdx754.fr to i8
  %.not800 = icmp eq i8 %i.adc, 0
  %rdx.select755 = select i1 %.not800, i8 %i.abr, i8 1 ; 3 uses
  %bin.rdx756 = or <8 x i1> %i.ach, %i.acg
  %bin.rdx757 = or <8 x i1> %i.aci, %bin.rdx756
  %bin.rdx758 = or <8 x i1> %i.acj, %bin.rdx757
  %bin.rdx758.fr = freeze <8 x i1> %bin.rdx758
  %i.add = bitcast <8 x i1> %bin.rdx758.fr to i8
  %.not801 = icmp eq i8 %i.add, 0
  %rdx.select759 = select i1 %.not801, i8 %i.abs, i8 1 ; 3 uses
  %cmp.n760 = icmp eq i64 %n.vec715, %wide.trip.count.i280
  br i1 %cmp.n760, label %_ZL21haveAbsoluteReferenceRK10t_inputrec.exit294.loopexit, label %vec.epilog.iter.check767

vec.epilog.iter.check767:                         ; preds = %middle.block747
  %min.epilog.iters.check768 = icmp eq i64 %i.abu, 0
  br i1 %min.epilog.iters.check768, label %.preheader.i281.preheader, label %vec.epilog.ph769, !prof !423

vec.epilog.ph769:                                 ; preds = %vector.main.loop.iter.check712, %vec.epilog.iter.check767
  %vec.epilog.resume.val761 = phi i64 [ %n.vec715, %vec.epilog.iter.check767 ], [ 0, %vector.main.loop.iter.check712 ]
  %bc.merge.rdx762 = phi i8 [ %rdx.select751, %vec.epilog.iter.check767 ], [ %i.abq, %vector.main.loop.iter.check712 ]
  %bc.merge.rdx763 = phi i8 [ %rdx.select755, %vec.epilog.iter.check767 ], [ %i.abr, %vector.main.loop.iter.check712 ]
  %bc.merge.rdx764 = phi i8 [ %rdx.select759, %vec.epilog.iter.check767 ], [ %i.abs, %vector.main.loop.iter.check712 ]
  %16 = icmp ne i8 %bc.merge.rdx762, %i.abq
  %i.ade = icmp ne i8 %bc.merge.rdx763, %i.abr
  %17 = icmp ne i8 %bc.merge.rdx764, %i.abs
  %n.vec770 = and i64 %wide.trip.count.i280, 2147483644 ; 3 uses
  %broadcast.splatinsert771 = insertelement <4 x i1> poison, i1 %16, i64 0
  %broadcast.splat772 = shufflevector <4 x i1> %broadcast.splatinsert771, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert773 = insertelement <4 x i1> poison, i1 %i.ade, i64 0
  %broadcast.splat774 = shufflevector <4 x i1> %broadcast.splatinsert773, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert775 = insertelement <4 x i1> poison, i1 %17, i64 0
  %broadcast.splat776 = shufflevector <4 x i1> %broadcast.splatinsert775, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body777

vec.epilog.vector.body777:                        ; preds = %vec.epilog.vector.body777, %vec.epilog.ph769
  %index778 = phi i64 [ %vec.epilog.resume.val761, %vec.epilog.ph769 ], [ %index.next786, %vec.epilog.vector.body777 ] ; 2 uses
  %vec.phi779 = phi <4 x i1> [ %broadcast.splat772, %vec.epilog.ph769 ], [ %.fr802, %vec.epilog.vector.body777 ]
  %vec.phi780 = phi <4 x i1> [ %broadcast.splat774, %vec.epilog.ph769 ], [ %.fr804, %vec.epilog.vector.body777 ]
  %vec.phi781 = phi <4 x i1> [ %broadcast.splat776, %vec.epilog.ph769 ], [ %.fr806, %vec.epilog.vector.body777 ]
  %i.adf = getelementptr inbounds nuw [12 x i8], ptr %i.abt, i64 %index778
  %wide.vec782 = load <12 x i32>, ptr %i.adf, align 4, !tbaa !169 ; 3 uses
  %strided.vec783 = shufflevector <12 x i32> %wide.vec782, <12 x i32> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %strided.vec784 = shufflevector <12 x i32> %wide.vec782, <12 x i32> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 10>
  %strided.vec785 = shufflevector <12 x i32> %wide.vec782, <12 x i32> poison, <4 x i32> <i32 2, i32 5, i32 8, i32 11>
  %i.adg = icmp ne <4 x i32> %strided.vec783, zeroinitializer
  %i.adh = or <4 x i1> %vec.phi781, %i.adg
  %.fr806 = freeze <4 x i1> %i.adh                ; 2 uses
  %i.adi = icmp ne <4 x i32> %strided.vec784, zeroinitializer
  %i.adj = or <4 x i1> %vec.phi780, %i.adi
  %.fr804 = freeze <4 x i1> %i.adj                ; 2 uses
  %i.adk = icmp ne <4 x i32> %strided.vec785, zeroinitializer
  %i.adl = or <4 x i1> %vec.phi779, %i.adk
  %.fr802 = freeze <4 x i1> %i.adl                ; 2 uses
  %index.next786 = add nuw i64 %index778, 4       ; 2 uses
  %i.adm = icmp eq i64 %index.next786, %n.vec770
  br i1 %i.adm, label %vec.epilog.middle.block787, label %vec.epilog.vector.body777, !llvm.loop !852

vec.epilog.middle.block787:                       ; preds = %vec.epilog.vector.body777
  %i.adn = bitcast <4 x i1> %.fr802 to i4
  %.not803 = icmp eq i4 %i.adn, 0
  %rdx.select788 = select i1 %.not803, i8 %i.abq, i8 1 ; 2 uses
  %i.ado = bitcast <4 x i1> %.fr804 to i4
  %.not805 = icmp eq i4 %i.ado, 0
  %rdx.select789 = select i1 %.not805, i8 %i.abr, i8 1 ; 2 uses
  %i.adp = bitcast <4 x i1> %.fr806 to i4
  %.not807 = icmp eq i4 %i.adp, 0
  %rdx.select790 = select i1 %.not807, i8 %i.abs, i8 1 ; 2 uses
  %cmp.n791 = icmp eq i64 %n.vec770, %wide.trip.count.i280
  br i1 %cmp.n791, label %_ZL21haveAbsoluteReferenceRK10t_inputrec.exit294.loopexit, label %.preheader.i281.preheader

.preheader.i281.preheader:                        ; preds = %iter.check765, %vec.epilog.iter.check767, %vec.epilog.middle.block787
  %.sroa.7.0.i282.ph = phi i8 [ %i.abq, %iter.check765 ], [ %rdx.select751, %vec.epilog.iter.check767 ], [ %rdx.select788, %vec.epilog.middle.block787 ]
  %.sroa.4.0.i283.ph = phi i8 [ %i.abr, %iter.check765 ], [ %rdx.select755, %vec.epilog.iter.check767 ], [ %rdx.select789, %vec.epilog.middle.block787 ]
  %.sroa.0.0.i284.ph = phi i8 [ %i.abs, %iter.check765 ], [ %rdx.select759, %vec.epilog.iter.check767 ], [ %rdx.select790, %vec.epilog.middle.block787 ]
  %indvars.iv.i285.ph = phi i64 [ 0, %iter.check765 ], [ %n.vec715, %vec.epilog.iter.check767 ], [ %n.vec770, %vec.epilog.middle.block787 ]
  br label %.preheader.i281

.preheader.i281:                                  ; preds = %.preheader.i281.preheader, %.preheader.i281
  %.sroa.7.0.i282 = phi i8 [ %.sroa.7.2.i291, %.preheader.i281 ], [ %.sroa.7.0.i282.ph, %.preheader.i281.preheader ]
  %.sroa.4.0.i283 = phi i8 [ %.sroa.4.2.i289, %.preheader.i281 ], [ %.sroa.4.0.i283.ph, %.preheader.i281.preheader ]
  %.sroa.0.0.i284 = phi i8 [ %spec.select.i287, %.preheader.i281 ], [ %.sroa.0.0.i284.ph, %.preheader.i281.preheader ]
  %indvars.iv.i285 = phi i64 [ %indvars.iv.next.i292, %.preheader.i281 ], [ %indvars.iv.i285.ph, %.preheader.i281.preheader ] ; 2 uses
  %i.adq = getelementptr inbounds nuw [12 x i8], ptr %i.abt, i64 %indvars.iv.i285 ; 3 uses
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !169
  %.not.i286 = icmp eq i32 %i.adr, 0
  %spec.select.i287 = select i1 %.not.i286, i8 %.sroa.0.0.i284, i8 1 ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adq, i64 4
  %i.adt = load i32, ptr %i.ads, align 4, !tbaa !169
  %.not.1.i288 = icmp eq i32 %i.adt, 0
  %.sroa.4.2.i289 = select i1 %.not.1.i288, i8 %.sroa.4.0.i283, i8 1 ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adq, i64 8
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !169
  %.not.2.i290 = icmp eq i32 %i.adv, 0
  %.sroa.7.2.i291 = select i1 %.not.2.i290, i8 %.sroa.7.0.i282, i8 1 ; 2 uses
  %indvars.iv.next.i292 = add nuw nsw i64 %indvars.iv.i285, 1 ; 2 uses
  %exitcond.not.i293 = icmp eq i64 %indvars.iv.next.i292, %wide.trip.count.i280
  br i1 %exitcond.not.i293, label %_ZL21haveAbsoluteReferenceRK10t_inputrec.exit294.loopexit, label %.preheader.i281, !llvm.loop !853

_ZL21haveAbsoluteReferenceRK10t_inputrec.exit294.loopexit: ; preds = %.preheader.i281, %vec.epilog.middle.block787, %middle.block747
  %spec.select.i287.lcssa = phi i8 [ %rdx.select790, %vec.epilog.middle.block787 ], [ %rdx.select759, %middle.block747 ], [ %spec.select.i287, %.preheader.i281 ]
  %.sroa.4.2.i289.lcssa = phi i8 [ %rdx.select789, %vec.epilog.middle.block787 ], [ %rdx.select755, %middle.block747 ], [ %.sroa.4.2.i289, %.preheader.i281 ]
  %.sroa.7.2.i291.lcssa = phi i8 [ %rdx.select788, %vec.epilog.middle.block787 ], [ %rdx.select751, %middle.block747 ], [ %.sroa.7.2.i291, %.preheader.i281 ]
  %i.adw = trunc nuw i8 %spec.select.i287.lcssa to i1
  %i.adx = trunc nuw i8 %.sroa.4.2.i289.lcssa to i1
  %i.ady = trunc nuw i8 %.sroa.7.2.i291.lcssa to i1
  br label %_ZL21haveAbsoluteReferenceRK10t_inputrec.exit294

_ZL21haveAbsoluteReferenceRK10t_inputrec.exit294: ; preds = %_ZL21haveAbsoluteReferenceRK10t_inputrec.exit294.loopexit, %bb.ez
  %.sroa.7.1.i269 = phi i1 [ %i.abn, %bb.ez ], [ %i.ady, %_ZL21haveAbsoluteReferenceRK10t_inputrec.exit294.loopexit ]
  %.sroa.4.1.i270 = phi i1 [ %i.abl, %bb.ez ], [ %i.adx, %_ZL21haveAbsoluteReferenceRK10t_inputrec.exit294.loopexit ]
  %.sroa.0.1.i271 = phi i1 [ %i.abj, %bb.ez ], [ %i.adw, %_ZL21haveAbsoluteReferenceRK10t_inputrec.exit294.loopexit ]
  %i.adz = call fastcc i24 @_ZL22havePositionRestraintsRK10gmx_mtop_t(ptr noundef nonnull align 8 dereferenceable(768) %2) ; 3 uses
  %i.aea = load ptr, ptr %i.ut, align 8, !tbaa !270 ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 56
  %i.aec = load ptr, ptr %i.aeb, align 8, !tbaa !283
  %i.aed = getelementptr inbounds nuw [176 x i8], ptr %i.aec, i64 %indvars.iv448 ; 3 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 116
  %i.aef = load i32, ptr %i.aee, align 4, !tbaa !169
  %.not245 = icmp eq i32 %i.aef, 0
  %brmerge619 = select i1 %.not245, i1 true, i1 %.sroa.0.1.i271
  %i.aeg = trunc i24 %i.adz to i1
  %or.cond = select i1 %brmerge619, i1 true, i1 %i.aeg
  br i1 %or.cond, label %bb.fa, label %.loopexit359.thread

.loopexit359.thread:                              ; preds = %bb.fb, %bb.fa, %_ZL21haveAbsoluteReferenceRK10t_inputrec.exit294
  call void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 141, ptr nonnull @.str.730)
  %.pre530.pre = load ptr, ptr %i.ut, align 8, !tbaa !270 ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %.pre530.pre, i64 4
  %i.aei = load i32, ptr %i.aeh, align 4, !tbaa !282
  br label %.preheader357

bb.fa:                                            ; preds = %_ZL21haveAbsoluteReferenceRK10t_inputrec.exit294
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aed, i64 120
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !169
  %.not245.1 = icmp eq i32 %i.aek, 0
  %brmerge620 = select i1 %.not245.1, i1 true, i1 %.sroa.4.1.i270
  %i.ael = and i24 %i.adz, 256
  %.not577 = icmp ne i24 %i.ael, 0
  %or.cond621.not = select i1 %brmerge620, i1 true, i1 %.not577
  br i1 %or.cond621.not, label %bb.fb, label %.loopexit359.thread

bb.fb:                                            ; preds = %bb.fa
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aed, i64 124
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !169
  %.not245.2 = icmp eq i32 %i.aen, 0
  %brmerge622 = select i1 %.not245.2, i1 true, i1 %.sroa.7.1.i269
  %i.aeo = and i24 %i.adz, 65536
  %.not578 = icmp ne i24 %i.aeo, 0
  %or.cond623.not = select i1 %brmerge622, i1 true, i1 %.not578
  br i1 %or.cond623.not, label %.loopexit359, label %.loopexit359.thread

.loopexit359:                                     ; preds = %bb.fb, %bb.ew, %bb.ey
  %i.aep = phi ptr [ %i.aaw, %bb.ew ], [ %i.aaw, %bb.ey ], [ %i.aea, %bb.fb ] ; 3 uses
  %indvars.iv.next449 = add nuw nsw i64 %indvars.iv448, 1 ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 4
  %i.aer = load i32, ptr %i.aeq, align 4, !tbaa !282 ; 2 uses
  %i.aes = sext i32 %i.aer to i64
  %.not624 = icmp slt i64 %indvars.iv.next449, %i.aes
  br i1 %.not624, label %bb.ew, label %.preheader357, !llvm.loop !854

.split.us:                                        ; preds = %bb.ea, %bb.ee, %bb.ei, %bb.em, %bb.eq, %bb.eu, %bb.dh, %bb.dk, %bb.dn, %bb.dq, %bb.dt, %bb.dw
  %.us-phi = phi i32 [ 122, %bb.dw ], [ 120, %bb.ee ], [ 120, %bb.em ], [ 121, %bb.ei ], [ 121, %bb.eq ], [ 122, %bb.eu ], [ 120, %bb.dh ], [ 121, %bb.dn ], [ 120, %bb.dk ], [ 120, %bb.dq ], [ 121, %bb.dt ], [ 120, %bb.ea ]
  %.us-phi413 = phi i64 [ %indvars.iv485.2.2, %bb.dw ], [ %indvars.iv450.1, %bb.ee ], [ %indvars.iv450.2, %bb.em ], [ %indvars.iv450.1.1, %bb.ei ], [ %indvars.iv450.2.1, %bb.eq ], [ %indvars.iv450.2.2, %bb.eu ], [ %indvars.iv485, %bb.dh ], [ %indvars.iv485.1.1, %bb.dn ], [ %indvars.iv485.1, %bb.dk ], [ %indvars.iv485.2, %bb.dq ], [ %indvars.iv485.2.1, %bb.dt ], [ %indvars.iv450, %bb.ea ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 1 dereferenceable(69) @.str.10, i8 noundef zeroext 2)
  %i.aet = load ptr, ptr %i.ut, align 8, !tbaa !270
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 56
  %i.aev = load ptr, ptr %i.aeu, align 8, !tbaa !283
  %i.aew = getelementptr inbounds nuw [176 x i8], ptr %i.aev, i64 %.us-phi413
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 40
  %i.aey = load i32, ptr %i.aex, align 8, !tbaa !860
  %i.aez = invoke noundef ptr @_Z17enumValueToString17PullGroupGeometry(i32 noundef %i.aey)
          to label %bb.fc unwind label %bb.fe

bb.fc:                                            ; preds = %.split.us
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef 5265, ptr noundef nonnull @.str.731, ptr noundef %i.aez, i32 noundef %.us-phi) #29
          to label %bb.fd unwind label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  unreachable

bb.fe:                                            ; preds = %bb.fc, %.split.us
  %i.afa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.gb

.loopexit358:                                     ; preds = %bb.ev, %bb.dx, %.preheader357, %bb.es, %..loopexit_crit_edge.us.us.us.us.2.1, %_ZL26checksForFepLambaLargerOneRK10t_inputrecRK10gmx_mtop_tP14WarningHandler.exit
  %i.afb = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.afc = load i8, ptr %i.afb, align 8, !tbaa !291, !range !166, !noundef !167
  %i.afd = trunc nuw i8 %i.afc to i1
  br i1 %i.afd, label %bb.ff, label %bb.fh

bb.ff:                                            ; preds = %.loopexit358
  %i.afe = call noundef zeroext i1 @_Z31haveConstantEnsembleTemperatureRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %1)
  br i1 %i.afe, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  call void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 52, ptr nonnull @.str.732)
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff, %.loopexit358
  %i.aff = call noundef zeroext i1 @_Z21ir_haveBoxDeformationRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %1)
  br i1 %i.aff, label %bb.fi, label %bb.fn

bb.fi:                                            ; preds = %bb.fh
  %i.afg = load i32, ptr %i.eo, align 4, !tbaa !135
  switch i32 %i.afg, label %bb.fl [
    i32 12, label %bb.fj
    i32 9, label %bb.fk
    i32 3, label %bb.fj
    i32 10, label %bb.fj
    i32 11, label %bb.fj
  ]

bb.fj:                                            ; preds = %bb.fi, %bb.fi, %bb.fi, %bb.fi
  %i.afh = load i32, ptr %i.ck, align 8, !tbaa !151
  %.not238 = icmp eq i32 %i.afh, 0
  br i1 %.not238, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fi, %bb.fj
  %i.afi = call noundef ptr @_Z17enumValueToString20IntegrationAlgorithm(i32 noundef 0)
  %i.afj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.733, ptr noundef %i.afi) #30 ; 0 uses
  %i.afk = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #30
  call void @_ZN14WarningHandler7addNoteESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 %i.afk, ptr nonnull %i.e)
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fi, %bb.fk, %bb.fj
  %i.afl = getelementptr inbounds nuw i8, ptr %1, i64 744
end_hunk_2
begin_hunk_3_@_ZL22havePositionRestraintsRK10gmx_mtop_t:bb.a
  %.sroa.021.0.copyload42 = load ptr, ptr %5, align 8
  %.sroa.222.0.copyload43 = load i64, ptr %.sroa.222.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %.sroa.021.0.copyload42, ptr %1, align 8
  store i64 %.sroa.222.0.copyload43, ptr %i.d, align 8
  store ptr %.sroa.023.0.copyload, ptr %2, align 8
  store i64 %.sroa.5.0.copyload, ptr %i.e, align 8
  %i.f = call noundef zeroext i1 @_ZNK13IListIteratoreqERKS_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %i.f, label %._crit_edge, label %.lr.ph44

.lr.ph44:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %.0.copyload = load i24, ptr %3, align 4
  ret i24 %.0.copyload

bb.b:                                             ; preds = %.lr.ph44, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %5, ptr %6, align 8
  %i.h = call noundef nonnull align 8 dereferenceable(2280) ptr @_ZNK10IListProxy4listEv(ptr noundef nonnull align 8 dereferenceable(8) %6) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1248
  %i.j = call noundef nonnull align 8 dereferenceable(2280) ptr @_ZNK10IListProxy4listEv(ptr noundef nonnull align 8 dereferenceable(8) %6) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1272
  %i.l = call noundef i32 @_ZNK10IListProxy4nmolEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.n = load i8, ptr %3, align 4, !tbaa !203, !range !166, !noundef !167
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = load i8, ptr %i.a, align 1, !range !166
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond = select i1 %i.o, i1 %i.q, i1 false
  %i.r = load i8, ptr %i.b, align 2, !range !166
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond35 = select i1 %or.cond, i1 %i.s, i1 false
  br i1 %or.cond35, label %.loopexit, label %.preheader36

.preheader36:                                     ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 1256
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !412
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !328  ; 7 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = lshr exact i64 %i.y, 2                   ; 2 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %iter.check, label %.preheader

iter.check:                                       ; preds = %.preheader36
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !428 ; 6 uses
  %i.ad = and i64 %i.z, 2147483647                ; 4 uses
  %i.ae = load <2 x i8>, ptr %3, align 4          ; 5 uses
  %.promoted55 = load i8, ptr %i.b, align 2       ; 5 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.ad, i64 2)
  %i.af = add nsw i64 %umax, -1
  %i.ag = lshr i64 %i.af, 1
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.ad, 9
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check61 = icmp samesign ult i64 %i.ad, 65
  br i1 %min.iters.check61, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.ah, 31                       ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  %i.ak = select i1 %i.aj, i64 32, i64 %i.ai      ; 2 uses
  %n.vec = sub nsw i64 %i.ah, %i.ak               ; 3 uses
  %i.al = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.bs, %vector.body ]
  %vec.phi62 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.bt, %vector.body ]
  %vec.phi63 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.bu, %vector.body ]
  %vec.phi64 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.bv, %vector.body ]
  %vec.phi65 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.bk, %vector.body ]
  %vec.phi66 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.bl, %vector.body ]
  %vec.phi67 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.bm, %vector.body ]
  %vec.phi68 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.bn, %vector.body ]
  %vec.phi69 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %vec.phi70 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.bd, %vector.body ]
  %vec.phi71 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.be, %vector.body ]
  %vec.phi72 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %i.am = shl nuw i64 %index, 1                   ; 4 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.am
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.am
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 192
  %wide.vec = load <16 x i32>, ptr %i.an, align 4, !tbaa !169
  %strided.vec = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec73 = load <16 x i32>, ptr %i.ap, align 4, !tbaa !169
  %strided.vec74 = shufflevector <16 x i32> %wide.vec73, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec75 = load <16 x i32>, ptr %i.ar, align 4, !tbaa !169
  %strided.vec76 = shufflevector <16 x i32> %wide.vec75, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec77 = load <16 x i32>, ptr %i.at, align 4, !tbaa !169
  %strided.vec78 = shufflevector <16 x i32> %wide.vec77, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.au = sext <8 x i32> %strided.vec to <8 x i64>
  %i.av = sext <8 x i32> %strided.vec74 to <8 x i64>
  %i.aw = sext <8 x i32> %strided.vec76 to <8 x i64>
  %i.ax = sext <8 x i32> %strided.vec78 to <8 x i64>
  %wide.gep = getelementptr inbounds nuw [48 x i8], ptr %i.ac, <8 x i64> %i.au ; 3 uses
  %wide.gep79 = getelementptr inbounds nuw [48 x i8], ptr %i.ac, <8 x i64> %i.av ; 3 uses
  %wide.gep80 = getelementptr inbounds nuw [48 x i8], ptr %i.ac, <8 x i64> %i.aw ; 3 uses
  %wide.gep81 = getelementptr inbounds nuw [48 x i8], ptr %i.ac, <8 x i64> %i.ax ; 3 uses
  %wide.gep82 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  %wide.gep83 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep79, i64 12
  %wide.gep84 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep80, i64 12
  %wide.gep85 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep81, i64 12
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep82, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %wide.masked.gather86 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep83, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %wide.masked.gather87 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep84, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %wide.masked.gather88 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep85, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %i.ay = fcmp une <8 x float> %wide.masked.gather, zeroinitializer
  %i.az = fcmp une <8 x float> %wide.masked.gather86, zeroinitializer
  %i.ba = fcmp une <8 x float> %wide.masked.gather87, zeroinitializer
  %i.bb = fcmp une <8 x float> %wide.masked.gather88, zeroinitializer
  %i.bc = or <8 x i1> %vec.phi69, %i.ay           ; 2 uses
  %i.bd = or <8 x i1> %vec.phi70, %i.az           ; 2 uses
  %i.be = or <8 x i1> %vec.phi71, %i.ba           ; 2 uses
  %i.bf = or <8 x i1> %vec.phi72, %i.bb           ; 2 uses
  %wide.gep89 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 16
  %wide.gep90 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep79, i64 16
  %wide.gep91 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep80, i64 16
  %wide.gep92 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep81, i64 16
  %wide.masked.gather93 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep89, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %wide.masked.gather94 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep90, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %wide.masked.gather95 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep91, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %wide.masked.gather96 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep92, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %i.bg = fcmp une <8 x float> %wide.masked.gather93, zeroinitializer
  %i.bh = fcmp une <8 x float> %wide.masked.gather94, zeroinitializer
  %i.bi = fcmp une <8 x float> %wide.masked.gather95, zeroinitializer
  %i.bj = fcmp une <8 x float> %wide.masked.gather96, zeroinitializer
  %i.bk = or <8 x i1> %vec.phi65, %i.bg           ; 2 uses
  %i.bl = or <8 x i1> %vec.phi66, %i.bh           ; 2 uses
  %i.bm = or <8 x i1> %vec.phi67, %i.bi           ; 2 uses
  %i.bn = or <8 x i1> %vec.phi68, %i.bj           ; 2 uses
  %wide.gep97 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 20
  %wide.gep98 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep79, i64 20
  %wide.gep99 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep80, i64 20
  %wide.gep100 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep81, i64 20
  %wide.masked.gather101 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep97, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %wide.masked.gather102 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep98, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %wide.masked.gather103 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep99, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %wide.masked.gather104 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep100, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %i.bo = fcmp une <8 x float> %wide.masked.gather101, zeroinitializer
  %i.bp = fcmp une <8 x float> %wide.masked.gather102, zeroinitializer
  %i.bq = fcmp une <8 x float> %wide.masked.gather103, zeroinitializer
  %i.br = fcmp une <8 x float> %wide.masked.gather104, zeroinitializer
  %i.bs = or <8 x i1> %vec.phi, %i.bo             ; 2 uses
  %i.bt = or <8 x i1> %vec.phi62, %i.bp           ; 2 uses
  %i.bu = or <8 x i1> %vec.phi63, %i.bq           ; 2 uses
  %i.bv = or <8 x i1> %vec.phi64, %i.br           ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !867

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx111 = or <8 x i1> %i.bd, %i.bc
  %bin.rdx112 = or <8 x i1> %i.be, %bin.rdx111
  %bin.rdx113 = or <8 x i1> %i.bf, %bin.rdx112
  %bin.rdx113.fr = freeze <8 x i1> %bin.rdx113
  %i.bx = bitcast <8 x i1> %bin.rdx113.fr to i8
  %bin.rdx107 = or <8 x i1> %i.bl, %i.bk
  %bin.rdx108 = or <8 x i1> %i.bm, %bin.rdx107
  %bin.rdx109 = or <8 x i1> %i.bn, %bin.rdx108
  %bin.rdx109.fr = freeze <8 x i1> %bin.rdx109
  %i.by = bitcast <8 x i1> %bin.rdx109.fr to i8
  %i.bz = insertelement <2 x i8> poison, i8 %i.bx, i64 0
  %i.ca = insertelement <2 x i8> %i.bz, i8 %i.by, i64 1
  %i.cb = icmp eq <2 x i8> %i.ca, zeroinitializer
  %i.cc = select <2 x i1> %i.cb, <2 x i8> %i.ae, <2 x i8> splat (i8 1) ; 2 uses
  %bin.rdx = or <8 x i1> %i.bt, %i.bs
  %bin.rdx105 = or <8 x i1> %i.bu, %bin.rdx
  %bin.rdx106 = or <8 x i1> %i.bv, %bin.rdx105
  %bin.rdx106.fr = freeze <8 x i1> %bin.rdx106
  %i.cd = bitcast <8 x i1> %bin.rdx106.fr to i8
  %.not = icmp eq i8 %i.cd, 0
  %rdx.select = select i1 %.not, i8 %.promoted55, i8 1 ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.ak, 5
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !423

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %rdx.select, %vec.epilog.iter.check ], [ %.promoted55, %vector.main.loop.iter.check ]
  %i.ce = phi <2 x i8> [ %i.cc, %vec.epilog.iter.check ], [ %i.ae, %vector.main.loop.iter.check ]
  %8 = icmp ne i8 %bc.merge.rdx, %.promoted55
  %9 = icmp ne <2 x i8> %i.ce, %i.ae              ; 2 uses
  %i.cf = and i64 %i.ah, 3                        ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  %i.ch = select i1 %i.cg, i64 4, i64 %i.cf
  %n.vec117 = sub nsw i64 %i.ah, %i.ch            ; 2 uses
  %10 = shl i64 %n.vec117, 1
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %8, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splat119 = shufflevector <2 x i1> %9, <2 x i1> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat121 = shufflevector <2 x i1> %9, <2 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index122 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next135, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi123 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr145, %vec.epilog.vector.body ]
  %vec.phi124 = phi <4 x i1> [ %broadcast.splat119, %vec.epilog.ph ], [ %.fr147, %vec.epilog.vector.body ]
  %vec.phi125 = phi <4 x i1> [ %broadcast.splat121, %vec.epilog.ph ], [ %.fr149, %vec.epilog.vector.body ]
  %.idx = shl nuw i64 %index122, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx
  %wide.vec126 = load <8 x i32>, ptr %i.ci, align 4, !tbaa !169
  %strided.vec127 = shufflevector <8 x i32> %wide.vec126, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cj = sext <4 x i32> %strided.vec127 to <4 x i64>
  %wide.gep128 = getelementptr inbounds nuw [48 x i8], ptr %i.ac, <4 x i64> %i.cj ; 3 uses
  %wide.gep129 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep128, i64 12
  %wide.masked.gather130 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep129, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !22
  %i.ck = fcmp une <4 x float> %wide.masked.gather130, zeroinitializer
  %i.cl = or <4 x i1> %vec.phi125, %i.ck
  %.fr149 = freeze <4 x i1> %i.cl                 ; 2 uses
  %wide.gep131 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep128, i64 16
  %wide.masked.gather132 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep131, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !22
  %i.cm = fcmp une <4 x float> %wide.masked.gather132, zeroinitializer
  %i.cn = or <4 x i1> %vec.phi124, %i.cm
  %.fr147 = freeze <4 x i1> %i.cn                 ; 2 uses
  %wide.gep133 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep128, i64 20
  %wide.masked.gather134 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep133, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !22
  %i.co = fcmp une <4 x float> %wide.masked.gather134, zeroinitializer
  %i.cp = or <4 x i1> %vec.phi123, %i.co
  %.fr145 = freeze <4 x i1> %i.cp                 ; 2 uses
  %index.next135 = add nuw i64 %index122, 4       ; 2 uses
  %i.cq = icmp eq i64 %index.next135, %n.vec117
  br i1 %i.cq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !868

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cr = bitcast <4 x i1> %.fr145 to i4
  %.not146 = icmp eq i4 %i.cr, 0
  %rdx.select136 = select i1 %.not146, i8 %.promoted55, i8 1
  %i.cs = bitcast <4 x i1> %.fr147 to i4
  %i.ct = bitcast <4 x i1> %.fr149 to i4
  %i.cu = insertelement <2 x i4> poison, i4 %i.ct, i64 0
  %i.cv = insertelement <2 x i4> %i.cu, i4 %i.cs, i64 1
  %i.cw = icmp eq <2 x i4> %i.cv, zeroinitializer
  %i.cx = select <2 x i1> %i.cw, <2 x i8> %i.ae, <2 x i8> splat (i8 1)
  br label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i8 [ %.promoted55, %iter.check ], [ %rdx.select, %vec.epilog.iter.check ], [ %rdx.select136, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %i.al, %vec.epilog.iter.check ], [ %10, %vec.epilog.middle.block ]
  %.ph151 = phi <2 x i8> [ %i.ae, %iter.check ], [ %i.cc, %vec.epilog.iter.check ], [ %i.cx, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader.loopexit:                              ; preds = %vec.epilog.scalar.ph
  %i.cy = extractelement <2 x i8> %i.dt, i64 0
  store i8 %i.cy, ptr %3, align 4
  %i.cz = extractelement <2 x i8> %i.dt, i64 1
  store i8 %i.cz, ptr %i.a, align 1
  store i8 %i.dx, ptr %i.b, align 2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader36
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 1280
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !412
  %i.dc = load ptr, ptr %i.k, align 8, !tbaa !328 ; 2 uses
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = lshr exact i64 %i.df, 2
  %i.dh = trunc i64 %i.dg to i32                  ; 2 uses
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.lr.ph41, label %.loopexit

.lr.ph41:                                         ; preds = %.preheader
  %i.dj = load ptr, ptr %i.g, align 8, !tbaa !428
  br label %bb.d

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.dk = phi i8 [ %i.dx, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.dl = phi <2 x i8> [ %i.dt, %vec.epilog.scalar.ph ], [ %.ph151, %vec.epilog.scalar.ph.preheader ]
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !169
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [48 x i8], ptr %i.ac, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.dr = load <2 x float>, ptr %i.dq, align 4, !tbaa !22
  %i.ds = fcmp une <2 x float> %i.dr, zeroinitializer
  %i.dt = select <2 x i1> %i.ds, <2 x i8> splat (i8 1), <2 x i8> %i.dl ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 20
  %i.dv = load float, ptr %i.du, align 4, !tbaa !22
  %i.dw = fcmp une float %i.dv, 0.000000e+00
  %i.dx = select i1 %i.dw, i8 1, i8 %i.dk         ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dy = icmp samesign ult i64 %indvars.iv.next, %i.ad
  br i1 %i.dy, label %vec.epilog.scalar.ph, label %.preheader.loopexit, !llvm.loop !869

bb.d:                                             ; preds = %.lr.ph41, %bb.n
  %indvars.iv48 = phi i64 [ 0, %.lr.ph41 ], [ %indvars.iv.next49, %bb.n ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv48
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !169
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [48 x i8], ptr %i.dj, i64 %i.eb ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !22
  %i.ef = fcmp une float %i.ee, 0.000000e+00
  br i1 %i.ef, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 20
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !22 ; 2 uses
  switch i32 %i.eh, label %bb.k [
    i32 1, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 2, label %bb.i
    i32 8, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.j
    i32 5, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %3, align 4
  store i8 1, ptr %i.a, align 1
  store i8 1, ptr %i.b, align 2, !tbaa !22
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !203
  store i8 1, ptr %i.a, align 1, !tbaa !203
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !203
  store i8 1, ptr %3, align 4, !tbaa !203
  br label %bb.n

bb.i:                                             ; preds = %bb.e, %bb.e
  store i8 1, ptr %i.a, align 1, !tbaa !203
  store i8 1, ptr %3, align 4, !tbaa !203
  br label %bb.n

bb.j:                                             ; preds = %bb.e, %bb.e, %bb.e
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr i8, ptr %3, i64 %i.ei
  %i.ek = getelementptr i8, ptr %i.ej, i64 -3
  store i8 1, ptr %i.ek, align 1, !tbaa !203
  br label %bb.n

bb.k:                                             ; preds = %bb.e
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 1 dereferenceable(69) @.str.10, i8 noundef zeroext 2)
  %i.em = load i32, ptr %i.el, align 4, !tbaa !22
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 4751, ptr noundef nonnull @.str.736, i32 noundef 8, i32 noundef %i.em) #29
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.en

bb.n:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.d
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 2 ; 2 uses
  %i.eo = trunc nuw i64 %indvars.iv.next49 to i32
  %i.ep = icmp slt i32 %i.eo, %i.dh
  br i1 %i.ep, label %bb.d, label %.loopexit, !llvm.loop !870

.loopexit:                                        ; preds = %bb.n, %.preheader, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.eq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13IListIteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %5) ; 0 uses
  %.sroa.021.0.copyload = load ptr, ptr %5, align 8
  %.sroa.222.0.copyload = load i64, ptr %.sroa.222.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %.sroa.021.0.copyload, ptr %1, align 8
  store i64 %.sroa.222.0.copyload, ptr %i.d, align 8
  store ptr %.sroa.023.0.copyload, ptr %2, align 8
  store i64 %.sroa.5.0.copyload, ptr %i.e, align 8
  %i.er = call noundef zeroext i1 @_ZNK13IListIteratoreqERKS_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %i.er, label %._crit_edge, label %bb.b
}

declare noundef zeroext i1 @_Z23haveEnsembleTemperatureRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888)) local_unnamed_addr #6

declare noundef zeroext i1 @_Z31haveConstantEnsembleTemperatureRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888)) local_unnamed_addr #6

declare noundef ptr @_Z28gmx_mtop_atomloop_block_initRK10gmx_mtop_t(ptr noundef nonnull align 8 dereferenceable(768)) local_unnamed_addr #6

declare noundef zeroext i1 @_Z28gmx_mtop_atomloop_block_nextP23gmx_mtop_atomloop_blockPPK6t_atomPi(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare noundef ptr @_Z17enumValueToString17PullGroupGeometry(i32 noundef) local_unnamed_addr #6
end_hunk_3
