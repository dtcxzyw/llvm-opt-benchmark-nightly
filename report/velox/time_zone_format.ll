Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/time_zone_format?download=true
inline.NumInlined: 499
inline.NumDeleted: 172
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4absl12lts_2024011613time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE:bb.a
  %or.cond3.i626 = and i1 %i.uk, %i.ul
  %i.um = or i1 %i.uh, %or.cond3.i626
  %spec.select47.i627 = select i1 %i.um, i8 43, i8 45
  %.lhs.trunc.i630 = trunc nuw nsw i32 %i.uj to i8 ; 2 uses
  %i.un = urem i8 %.lhs.trunc.i630, 10
  %i.uo = zext nneg i8 %i.un to i64
  %i.up = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.uo
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !17
  store i8 %i.uq, ptr %i.bu, align 4, !tbaa !17
  %i.ur = udiv i8 %.lhs.trunc.i630, 10
  %i.us = zext nneg i8 %i.ur to i64
  %i.ut = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.us
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !17
  store i8 %i.uu, ptr %i.by, align 1, !tbaa !17
  store i8 58, ptr %.039.i978.idx.sroa.gep, align 2, !tbaa !17
  %i.uv = udiv i32 %spec.select.i624, 3600
  %i.uw = urem i32 %i.uv, 10
  %i.ux = zext nneg i32 %i.uw to i64
  %i.uy = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.ux
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !17
  store i8 %i.uz, ptr %i.bz, align 1, !tbaa !17
  %i.va = udiv i32 %spec.select.i624, 36000
  %.lhs.trunc56.i629 = trunc nuw i32 %i.va to i16
  %i.vb = urem i16 %.lhs.trunc56.i629, 10
  %i.vc = zext nneg i16 %i.vb to i64
  %i.vd = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.vc
  %i.ve = load i8, ptr %i.vd, align 1, !tbaa !17
  store i8 %i.ve, ptr %i.ca, align 16, !tbaa !17
  store i8 %spec.select47.i627, ptr %i.cf, align 1, !tbaa !17
  %i.vf = load i64, ptr %i.d, align 8, !tbaa !16  ; 5 uses
  %i.vg = icmp sgt i64 %i.vf, 9223372036854775801
  br i1 %i.vg, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i631

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i631: ; preds = %bb.dz
  %i.vh = add nsw i64 %i.vf, 6                    ; 3 uses
  %i.vi = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.vj = icmp eq ptr %i.vi, %i.c
  br i1 %i.vj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i637, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i632

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i637: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i631
  %i.vk = icmp ult i64 %i.vf, 16
  call void @llvm.assume(i1 %i.vk)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i633

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i632: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i631
  %i.vl = load i64, ptr %i.c, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i633

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i633: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i632, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i637
  %i.vm = phi i64 [ %i.vl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i632 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i637 ]
  %.not.i.i634 = icmp ugt i64 %i.vh, %i.vm
  br i1 %.not.i.i634, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i633
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vi, i64 %i.vf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.vn, ptr noundef nonnull align 1 dereferenceable(6) %i.cf, i64 6, i1 false)
  br label %bb.ec

bb.eb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i633
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.vf, i64 noundef 0, ptr noundef nonnull %i.cf, i64 noundef 6)
          to label %bb.ec unwind label %.loopexit1065

bb.ec:                                            ; preds = %bb.ea, %bb.eb
  store i64 %i.vh, ptr %i.d, align 8, !tbaa !16
  %i.vo = load ptr, ptr %0, align 8, !tbaa !30
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 %i.vh
  store i8 0, ptr %i.vp, align 1, !tbaa !17
  %i.vq = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 2 ; 2 uses
  br label %.thread981, !llvm.loop !41

bb.ed:                                            ; preds = %bb.dp
  %i.vr = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 2 ; 2 uses
  %.not329 = icmp eq ptr %i.vr, %i.bq
  br i1 %.not329, label %.thread981, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !17
  switch i8 %i.vs, label %.thread981 [
    i8 122, label %bb.ef
    i8 58, label %bb.er
  ]

bb.ef:                                            ; preds = %bb.ee
  %i.vt = getelementptr inbounds i8, ptr %.2.lcssa, i64 -1 ; 2 uses
  %.not360 = icmp eq ptr %i.vt, %.3253
  br i1 %.not360, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store ptr %i.cq, ptr %11, align 8, !tbaa !13
  store i64 0, ptr %i.cr, align 8, !tbaa !16
  %i.vu = ptrtoint ptr %i.vt to i64
  %i.vv = ptrtoint ptr %.3253 to i64
  %i.vw = sub i64 %i.vu, %i.vv                    ; 8 uses
  %i.vx = icmp ugt i64 %i.vw, 15
  br i1 %i.vx, label %bb.eh, label %._crit_edge.i.i641

bb.eh:                                            ; preds = %bb.eg
  %i.vy = icmp slt i64 %i.vw, 0
  br i1 %i.vy, label %.noexc.i644, label %bb.ei

.noexc.i644:                                      ; preds = %bb.eh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc645 unwind label %.loopexit.split-lp1111

.noexc645:                                        ; preds = %.noexc.i644
  unreachable

bb.ei:                                            ; preds = %bb.eh
  %i.vz = add nuw i64 %i.vw, 1                    ; 2 uses
  %i.wa = icmp slt i64 %i.vz, 0
  br i1 %i.wa, label %.noexc4.i643, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i642, !prof !32

.noexc4.i643:                                     ; preds = %bb.ei
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc646 unwind label %.loopexit.split-lp1111

.noexc646:                                        ; preds = %.noexc4.i643
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i642: ; preds = %bb.ei
  %i.wb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vz) #21
          to label %.noexc647 unwind label %.loopexit1110 ; 2 uses

.noexc647:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i642
  store ptr %i.wb, ptr %11, align 8, !tbaa !30
  store i64 %i.vw, ptr %i.cq, align 8, !tbaa !17
  br label %._crit_edge.i.i641

._crit_edge.i.i641:                               ; preds = %.noexc647, %bb.eg
  %i.wc = phi ptr [ %i.wb, %.noexc647 ], [ %i.cq, %bb.eg ] ; 3 uses
  switch i64 %i.vw, label %bb.ek [
    i64 1, label %bb.ej
    i64 0, label %bb.el
  ]

bb.ej:                                            ; preds = %._crit_edge.i.i641
  %i.wd = load i8, ptr %.3253, align 1, !tbaa !17
  store i8 %i.wd, ptr %i.wc, align 1, !tbaa !17
  br label %bb.el

bb.ek:                                            ; preds = %._crit_edge.i.i641
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wc, ptr align 1 %.3253, i64 %i.vw, i1 false)
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej, %._crit_edge.i.i641
  store i64 %i.vw, ptr %i.cr, align 8, !tbaa !16
  %i.we = getelementptr inbounds nuw i8, ptr %i.wc, i64 %i.vw
  store i8 0, ptr %i.we, align 1, !tbaa !17
  invoke fastcc void @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.em unwind label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.wf = load ptr, ptr %11, align 8, !tbaa !30   ; 2 uses
  %i.wg = icmp eq ptr %i.wf, %i.cq
  br i1 %i.wg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649: ; preds = %bb.em
  %i.wh = load i64, ptr %i.cq, align 8, !tbaa !17
  %i.wi = add i64 %i.wh, 1
  call void @_ZdlPvm(ptr noundef %i.wf, i64 noundef %i.wi) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651: ; preds = %bb.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit

.loopexit1110:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i642
  %lpad.loopexit1112 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654

.loopexit.split-lp1111:                           ; preds = %.noexc.i644, %.noexc4.i643
  %lpad.loopexit.split-lp1113 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654

bb.en:                                            ; preds = %bb.el
  %i.wj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wk = load ptr, ptr %11, align 8, !tbaa !30   ; 2 uses
  %i.wl = icmp eq ptr %i.wk, %i.cq
  br i1 %i.wl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652: ; preds = %bb.en
  %i.wm = load i64, ptr %i.cq, align 8, !tbaa !17
  %i.wn = add i64 %i.wm, 1
  call void @_ZdlPvm(ptr noundef %i.wk, i64 noundef %i.wn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654: ; preds = %bb.en, %.loopexit1110, %.loopexit.split-lp1111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652
  %.pn361 = phi { ptr, i32 } [ %i.wj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652 ], [ %lpad.loopexit.split-lp1113, %.loopexit.split-lp1111 ], [ %lpad.loopexit1112, %.loopexit1110 ], [ %i.wj, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.kr

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651, %bb.ef
  %i.wo = load i32, ptr %i.bx, align 8, !tbaa !52 ; 2 uses
  %i.wp = icmp slt i32 %i.wo, 0
  %spec.select.i655 = call i32 @llvm.abs.i32(i32 %i.wo, i1 true) ; 4 uses
  %spec.select45.i656 = select i1 %i.wp, i8 45, i8 43
  %21 = udiv i32 %spec.select.i655, 60
  %22 = insertelement <2 x i32> poison, i32 %spec.select.i655, i64 0
  %23 = insertelement <2 x i32> %22, i32 %21, i64 1
  %24 = urem <2 x i32> %23, splat (i32 60)        ; 2 uses
  %25 = bitcast <2 x i32> %24 to <8 x i8>
  %.lhs.trunc58.i = extractelement <8 x i8> %25, i64 0 ; 2 uses
  %i.wq = urem i8 %.lhs.trunc58.i, 10
  %i.wr = zext nneg i8 %i.wq to i64
  %i.ws = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.wr
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !17
  store i8 %i.wt, ptr %i.bu, align 4, !tbaa !17
  %i.wu = udiv i8 %.lhs.trunc58.i, 10
  %i.wv = zext nneg i8 %i.wu to i64
  %i.ww = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.wv
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !17
  %26 = bitcast <2 x i32> %24 to <8 x i8>
  %.lhs.trunc.i662 = extractelement <8 x i8> %26, i64 4 ; 2 uses
  %i.wy = urem i8 %.lhs.trunc.i662, 10
  %i.wz = zext nneg i8 %i.wy to i64
  %i.xa = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.wz
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !17
  %i.xc = udiv i8 %.lhs.trunc.i662, 10
  %i.xd = zext nneg i8 %i.xc to i64
  %i.xe = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.xd
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !17
  %i.xg = udiv i32 %spec.select.i655, 3600
  %i.xh = urem i32 %i.xg, 10
  %i.xi = zext nneg i32 %i.xh to i64
  %i.xj = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.xi
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !17
  %i.xl = udiv i32 %spec.select.i655, 36000
  %.lhs.trunc56.i661 = trunc nuw i32 %i.xl to i16
  %i.xm = urem i16 %.lhs.trunc56.i661, 10
  %i.xn = zext nneg i16 %i.xm to i64
  %i.xo = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.xn
  %i.xp = load i8, ptr %i.xo, align 1, !tbaa !17
  %i.xq = insertelement <8 x i8> <i8 poison, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison>, i8 %spec.select45.i656, i64 0
  %i.xr = insertelement <8 x i8> %i.xq, i8 %i.xp, i64 1
  %i.xs = insertelement <8 x i8> %i.xr, i8 %i.xk, i64 2
  %i.xt = insertelement <8 x i8> %i.xs, i8 %i.xf, i64 4
  %i.xu = insertelement <8 x i8> %i.xt, i8 %i.xb, i64 5
  %i.xv = insertelement <8 x i8> %i.xu, i8 %i.wx, i64 7
  store <8 x i8> %i.xv, ptr %i.cg, align 4, !tbaa !17
  %i.xw = load i64, ptr %i.d, align 8, !tbaa !16  ; 5 uses
  %i.xx = icmp sgt i64 %i.xw, 9223372036854775798
  br i1 %i.xx, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i663

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i663: ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit
  %i.xy = add nsw i64 %i.xw, 9                    ; 3 uses
  %i.xz = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.ya = icmp eq ptr %i.xz, %i.c
  br i1 %i.ya, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i669, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i664

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i669: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i663
  %i.yb = icmp ult i64 %i.xw, 16
  call void @llvm.assume(i1 %i.yb)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i665

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i664: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i663
  %i.yc = load i64, ptr %i.c, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i665

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i665: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i664, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i669
  %i.yd = phi i64 [ %i.yc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i664 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i669 ]
  %.not.i.i666 = icmp ugt i64 %i.xy, %i.yd
  br i1 %.not.i.i666, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i665
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xz, i64 %i.xw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ye, ptr noundef nonnull align 4 dereferenceable(9) %i.cg, i64 9, i1 false)
  br label %bb.eq

bb.ep:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i665
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.xw, i64 noundef 0, ptr noundef nonnull %i.cg, i64 noundef 9)
          to label %bb.eq unwind label %.loopexit1065

bb.eq:                                            ; preds = %bb.eo, %bb.ep
  store i64 %i.xy, ptr %i.d, align 8, !tbaa !16
  %i.yf = load ptr, ptr %0, align 8, !tbaa !30
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.xy
  store i8 0, ptr %i.yg, align 1, !tbaa !17
  %i.yh = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 3 ; 2 uses
  br label %.thread981, !llvm.loop !41

bb.er:                                            ; preds = %bb.ee
  %i.yi = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 3 ; 2 uses
  %.not330 = icmp eq ptr %i.yi, %i.bq
  br i1 %.not330, label %.thread981, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !17
  %i.yk = icmp eq i8 %i.yj, 122
  br i1 %i.yk, label %bb.et, label %.thread981

bb.et:                                            ; preds = %bb.es
  %i.yl = getelementptr inbounds i8, ptr %.2.lcssa, i64 -1 ; 2 uses
  %.not357 = icmp eq ptr %i.yl, %.3253
  br i1 %.not357, label %bb.ez, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %.3253, ptr noundef nonnull %i.yl, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.ev unwind label %bb.ex

bb.ev:                                            ; preds = %bb.eu
  invoke fastcc void @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.ew unwind label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  %i.ym = load ptr, ptr %12, align 8, !tbaa !30   ; 2 uses
  %i.yn = icmp eq ptr %i.ym, %i.cp
  br i1 %i.yn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i673

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i673: ; preds = %bb.ew
  %i.yo = load i64, ptr %i.cp, align 8, !tbaa !17
  %i.yp = add i64 %i.yo, 1
  call void @_ZdlPvm(ptr noundef %i.ym, i64 noundef %i.yp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675: ; preds = %bb.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i673
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.ez

bb.ex:                                            ; preds = %bb.eu
  %i.yq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678

bb.ey:                                            ; preds = %bb.ev
  %i.yr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ys = load ptr, ptr %12, align 8, !tbaa !30   ; 2 uses
  %i.yt = icmp eq ptr %i.ys, %i.cp
  br i1 %i.yt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676: ; preds = %bb.ey
  %i.yu = load i64, ptr %i.cp, align 8, !tbaa !17
  %i.yv = add i64 %i.yu, 1
  call void @_ZdlPvm(ptr noundef %i.ys, i64 noundef %i.yv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678: ; preds = %bb.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676, %bb.ex
  %.pn358 = phi { ptr, i32 } [ %i.yq, %bb.ex ], [ %i.yr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676 ], [ %i.yr, %bb.ey ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.kr

bb.ez:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675, %bb.et
  %i.yw = load i32, ptr %i.bx, align 8, !tbaa !52 ; 2 uses
  %i.yx = icmp slt i32 %i.yw, 0
  %spec.select.i679 = call i32 @llvm.abs.i32(i32 %i.yw, i1 true) ; 5 uses
  %spec.select45.i680 = select i1 %i.yx, i8 45, i8 43 ; 2 uses
  %27 = urem i32 %spec.select.i679, 60            ; 2 uses
  %28 = udiv i32 %spec.select.i679, 60
  %29 = urem i32 %28, 60                          ; 2 uses
  %.not1050 = icmp eq i32 %27, 0
  br i1 %.not1050, label %bb.fa, label %.thread

.thread:                                          ; preds = %bb.ez
  %.lhs.trunc58.i690 = trunc nuw nsw i32 %27 to i8 ; 2 uses
  %i.yy = urem i8 %.lhs.trunc58.i690, 10
  %i.yz = zext nneg i8 %i.yy to i64
  %i.za = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.yz
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !17
  store i8 %i.zb, ptr %i.bu, align 4, !tbaa !17
  %i.zc = udiv i8 %.lhs.trunc58.i690, 10
  %i.zd = zext nneg i8 %i.zc to i64
  %i.ze = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.zd
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !17
  store i8 %i.zf, ptr %i.by, align 1, !tbaa !17
  store i8 58, ptr %.039.i978.idx.sroa.gep, align 2, !tbaa !17
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.zg = icmp samesign ult i32 %spec.select.i679, 3600
  %i.zh = icmp eq i32 %29, 0                      ; 2 uses
  %or.cond3.i682 = and i1 %i.zg, %i.zh
  %spec.select47.i683 = select i1 %or.cond3.i682, i8 43, i8 %spec.select45.i680
  br i1 %i.zh, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit691, label %bb.fb

bb.fb:                                            ; preds = %.thread, %bb.fa
  %.039.i978.idx.sroa.phi = phi ptr [ %.039.i978.idx.sroa.gep, %.thread ], [ %.039.i978.idx.sroa.gep1310, %bb.fa ] ; 2 uses
  %.039.i978.idx.sroa.phi1488 = phi ptr [ %.039.i978.idx.sroa.gep1489, %.thread ], [ %.039.i978.idx.sroa.gep1490, %bb.fa ]
  %.039.i978.idx = phi i64 [ 15, %.thread ], [ 18, %bb.fa ]
  %.lhs.trunc.i689 = trunc nuw nsw i32 %29 to i8  ; 2 uses
  %i.zi = urem i8 %.lhs.trunc.i689, 10
  %i.zj = zext nneg i8 %i.zi to i64
  %i.zk = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.zj
  %i.zl = load i8, ptr %i.zk, align 1, !tbaa !17
  %i.zm = getelementptr inbounds i8, ptr %.039.i978.idx.sroa.phi, i64 -1
  store i8 %i.zl, ptr %i.zm, align 1, !tbaa !17
  %i.zn = udiv i8 %.lhs.trunc.i689, 10
  %i.zo = zext nneg i8 %i.zn to i64
  %i.zp = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.zo
  %i.zq = load i8, ptr %i.zp, align 1, !tbaa !17
  %i.zr = getelementptr inbounds i8, ptr %.039.i978.idx.sroa.phi, i64 -2
  store i8 %i.zq, ptr %i.zr, align 1, !tbaa !17
  store i8 58, ptr %.039.i978.idx.sroa.phi1488, align 1, !tbaa !17
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit691

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit691: ; preds = %bb.fa, %bb.fb
  %.1.i684979 = phi i8 [ %spec.select45.i680, %bb.fb ], [ %spec.select47.i683, %bb.fa ]
  %.140.i687.idx = phi i64 [ %.039.i978.idx, %bb.fb ], [ 21, %bb.fa ] ; 3 uses
  %.140.i687.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.140.i687.idx ; 2 uses
  %i.zs = udiv i32 %spec.select.i679, 3600
  %i.zt = urem i32 %i.zs, 10
  %i.zu = zext nneg i32 %i.zt to i64
  %i.zv = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.zu
  %i.zw = load i8, ptr %i.zv, align 1, !tbaa !17
  %i.zx = getelementptr inbounds i8, ptr %.140.i687.ptr, i64 -1
  store i8 %i.zw, ptr %i.zx, align 1, !tbaa !17
  %i.zy = udiv i32 %spec.select.i679, 36000
  %.lhs.trunc56.i688 = trunc nuw i32 %i.zy to i16
  %i.zz = urem i16 %.lhs.trunc56.i688, 10
  %i.aaa = zext nneg i16 %i.zz to i64
  %i.aab = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.aaa
  %i.aac = load i8, ptr %i.aab, align 1, !tbaa !17
  %i.aad = getelementptr inbounds i8, ptr %.140.i687.ptr, i64 -2
  store i8 %i.aac, ptr %i.aad, align 1, !tbaa !17
  %i.aae = getelementptr i8, ptr %i.a, i64 %.140.i687.idx
  %.ptr = getelementptr i8, ptr %i.aae, i64 -3    ; 3 uses
  store i8 %.1.i684979, ptr %.ptr, align 1, !tbaa !17
  %gepdiff = sub nuw nsw i64 24, %.140.i687.idx   ; 4 uses
  %i.aaf = load i64, ptr %i.d, align 8, !tbaa !16 ; 5 uses
  %i.aag = sub i64 9223372036854775807, %i.aaf
  %i.aah = icmp ult i64 %i.aag, %gepdiff
  br i1 %i.aah, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i692

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i692: ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit691
  %i.aai = add i64 %i.aaf, %gepdiff               ; 3 uses
  %i.aaj = load ptr, ptr %0, align 8, !tbaa !30   ; 2 uses
  %i.aak = icmp eq ptr %i.aaj, %i.c
  br i1 %i.aak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i698, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i693

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i698: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i692
  %i.aal = icmp ult i64 %i.aaf, 16
  call void @llvm.assume(i1 %i.aal)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i694

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i693: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i692
  %i.aam = load i64, ptr %i.c, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i694

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i694: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i693, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i698
  %i.aan = phi i64 [ %i.aam, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i693 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i698 ]
  %.not.i.i695 = icmp ugt i64 %i.aai, %i.aan
  br i1 %.not.i.i695, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i694
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %i.aaf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aao, ptr nonnull align 1 %.ptr, i64 %gepdiff, i1 false)
  br label %bb.fe

bb.fd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i694
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aaf, i64 noundef 0, ptr noundef nonnull %.ptr, i64 noundef %gepdiff)
          to label %bb.fe unwind label %.loopexit1065

bb.fe:                                            ; preds = %bb.fc, %bb.fd
  store i64 %i.aai, ptr %i.d, align 8, !tbaa !16
  %i.aap = load ptr, ptr %0, align 8, !tbaa !30
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 %i.aai
  store i8 0, ptr %i.aaq, align 1, !tbaa !17
  %i.aar = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 4 ; 2 uses
  br label %.thread981, !llvm.loop !41

bb.ff:                                            ; preds = %bb.dn
  %.ptr1285 = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 1 ; 12 uses
  %i.aas = icmp eq ptr %.ptr1285, %i.bq
  br i1 %i.aas, label %.thread981, label %bb.fg, !llvm.loop !41

bb.fg:                                            ; preds = %bb.ff
  %i.aat = load i8, ptr %.ptr1285, align 1, !tbaa !17 ; 3 uses
  switch i8 %i.aat, label %bb.iy [
    i8 84, label %bb.fh
    i8 122, label %bb.fu
    i8 42, label %bb.gh
    i8 52, label %bb.ia
  ]

bb.fh:                                            ; preds = %bb.fg
  %i.aau = getelementptr inbounds i8, ptr %.2.lcssa, i64 -1 ; 2 uses
  %.not354 = icmp eq ptr %i.aau, %.3253
  br i1 %.not354, label %bb.fq, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  store ptr %i.cl, ptr %14, align 8, !tbaa !13
  store i64 0, ptr %i.cm, align 8, !tbaa !16
  %i.aav = ptrtoint ptr %i.aau to i64
  %i.aaw = ptrtoint ptr %.3253 to i64
  %i.aax = sub i64 %i.aav, %i.aaw                 ; 8 uses
  %i.aay = icmp ugt i64 %i.aax, 15
  br i1 %i.aay, label %bb.fj, label %._crit_edge.i.i702

bb.fj:                                            ; preds = %bb.fi
  %i.aaz = icmp slt i64 %i.aax, 0
  br i1 %i.aaz, label %.noexc.i705, label %bb.fk

.noexc.i705:                                      ; preds = %bb.fj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc706 unwind label %.loopexit.split-lp1096

.noexc706:                                        ; preds = %.noexc.i705
  unreachable

bb.fk:                                            ; preds = %bb.fj
  %i.aba = add nuw i64 %i.aax, 1                  ; 2 uses
  %i.abb = icmp slt i64 %i.aba, 0
  br i1 %i.abb, label %.noexc4.i704, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i703, !prof !32

.noexc4.i704:                                     ; preds = %bb.fk
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc707 unwind label %.loopexit.split-lp1096

.noexc707:                                        ; preds = %.noexc4.i704
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i703: ; preds = %bb.fk
  %i.abc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aba) #21
          to label %.noexc708 unwind label %.loopexit1095 ; 2 uses

.noexc708:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i703
  store ptr %i.abc, ptr %14, align 8, !tbaa !30
  store i64 %i.aax, ptr %i.cl, align 8, !tbaa !17
  br label %._crit_edge.i.i702

._crit_edge.i.i702:                               ; preds = %.noexc708, %bb.fi
  %i.abd = phi ptr [ %i.abc, %.noexc708 ], [ %i.cl, %bb.fi ] ; 3 uses
  switch i64 %i.aax, label %bb.fm [
    i64 1, label %bb.fl
    i64 0, label %bb.fn
  ]

bb.fl:                                            ; preds = %._crit_edge.i.i702
  %i.abe = load i8, ptr %.3253, align 1, !tbaa !17
  store i8 %i.abe, ptr %i.abd, align 1, !tbaa !17
  br label %bb.fn

bb.fm:                                            ; preds = %._crit_edge.i.i702
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.abd, ptr align 1 %.3253, i64 %i.aax, i1 false)
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl, %._crit_edge.i.i702
  store i64 %i.aax, ptr %i.cm, align 8, !tbaa !16
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abd, i64 %i.aax
  store i8 0, ptr %i.abf, align 1, !tbaa !17
  invoke fastcc void @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.fo unwind label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.abg = load ptr, ptr %14, align 8, !tbaa !30  ; 2 uses
  %i.abh = icmp eq ptr %i.abg, %i.cl
  br i1 %i.abh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit712, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i710

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i710: ; preds = %bb.fo
  %i.abi = load i64, ptr %i.cl, align 8, !tbaa !17
  %i.abj = add i64 %i.abi, 1
  call void @_ZdlPvm(ptr noundef %i.abg, i64 noundef %i.abj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit712

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit712: ; preds = %bb.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i710
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.fq

.loopexit1095:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i703
  %lpad.loopexit1097 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715

.loopexit.split-lp1096:                           ; preds = %.noexc.i705, %.noexc4.i704
  %lpad.loopexit.split-lp1098 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715

bb.fp:                                            ; preds = %bb.fn
  %i.abk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abl = load ptr, ptr %14, align 8, !tbaa !30  ; 2 uses
  %i.abm = icmp eq ptr %i.abl, %i.cl
  br i1 %i.abm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i713

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i713: ; preds = %bb.fp
  %i.abn = load i64, ptr %i.cl, align 8, !tbaa !17
  %i.abo = add i64 %i.abn, 1
  call void @_ZdlPvm(ptr noundef %i.abl, i64 noundef %i.abo) #22
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2024011613time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE:bb.a
  %i.ada = icmp samesign ult i32 %spec.select.i740, 3600
  %i.adb = icmp eq i32 %i.acz, 0
  %or.cond3.i742 = and i1 %i.ada, %i.adb
  %i.adc = or i1 %i.acx, %or.cond3.i742
  %spec.select47.i743 = select i1 %i.adc, i8 43, i8 45
  %.lhs.trunc.i750 = trunc nuw nsw i32 %i.acz to i8 ; 2 uses
  %i.add = urem i8 %.lhs.trunc.i750, 10
  %i.ade = zext nneg i8 %i.add to i64
  %i.adf = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.ade
  %i.adg = load i8, ptr %i.adf, align 1, !tbaa !17
  store i8 %i.adg, ptr %i.bu, align 4, !tbaa !17
  %i.adh = udiv i8 %.lhs.trunc.i750, 10
  %i.adi = zext nneg i8 %i.adh to i64
  %i.adj = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.adi
  %i.adk = load i8, ptr %i.adj, align 1, !tbaa !17
  store i8 %i.adk, ptr %i.by, align 1, !tbaa !17
  store i8 58, ptr %.039.i978.idx.sroa.gep, align 2, !tbaa !17
  %i.adl = udiv i32 %spec.select.i740, 3600
  %i.adm = urem i32 %i.adl, 10
  %i.adn = zext nneg i32 %i.adm to i64
  %i.ado = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.adn
  %i.adp = load i8, ptr %i.ado, align 1, !tbaa !17
  store i8 %i.adp, ptr %i.bz, align 1, !tbaa !17
  %i.adq = udiv i32 %spec.select.i740, 36000
  %.lhs.trunc56.i749 = trunc nuw i32 %i.adq to i16
  %i.adr = urem i16 %.lhs.trunc56.i749, 10
  %i.ads = zext nneg i16 %i.adr to i64
  %i.adt = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.ads
  %i.adu = load i8, ptr %i.adt, align 1, !tbaa !17
  store i8 %i.adu, ptr %i.ca, align 16, !tbaa !17
  store i8 %spec.select47.i743, ptr %i.cf, align 1, !tbaa !17
  %i.adv = load i64, ptr %i.d, align 8, !tbaa !16 ; 5 uses
  %i.adw = icmp sgt i64 %i.adv, 9223372036854775801
  br i1 %i.adw, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i751

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i751: ; preds = %bb.gd
  %i.adx = add nsw i64 %i.adv, 6                  ; 3 uses
  %i.ady = load ptr, ptr %0, align 8, !tbaa !30   ; 2 uses
  %i.adz = icmp eq ptr %i.ady, %i.c
  br i1 %i.adz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i757, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i752

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i757: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i751
  %i.aea = icmp ult i64 %i.adv, 16
  call void @llvm.assume(i1 %i.aea)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i753

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i752: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i751
  %i.aeb = load i64, ptr %i.c, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i753

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i753: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i752, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i757
  %i.aec = phi i64 [ %i.aeb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i752 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i757 ]
  %.not.i.i754 = icmp ugt i64 %i.adx, %i.aec
  br i1 %.not.i.i754, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i753
  %i.aed = getelementptr inbounds nuw i8, ptr %i.ady, i64 %i.adv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aed, ptr noundef nonnull align 1 dereferenceable(6) %i.cf, i64 6, i1 false)
  br label %bb.gg

bb.gf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i753
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.adv, i64 noundef 0, ptr noundef nonnull %i.cf, i64 noundef 6)
          to label %bb.gg unwind label %.loopexit1065

bb.gg:                                            ; preds = %bb.ge, %bb.gf
  store i64 %i.adx, ptr %i.d, align 8, !tbaa !16
  %i.aee = load ptr, ptr %0, align 8, !tbaa !30
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 %i.adx
  store i8 0, ptr %i.aef, align 1, !tbaa !17
  %i.aeg = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 2 ; 2 uses
  br label %.thread981

bb.gh:                                            ; preds = %bb.fg
  %i.aeh = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 2 ; 4 uses
  %.not332 = icmp eq ptr %i.aeh, %i.bq
  br i1 %.not332, label %.thread981, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.aei = load i8, ptr %i.aeh, align 1, !tbaa !17
  %i.aej = icmp eq i8 %i.aei, 122
  br i1 %i.aej, label %bb.gj, label %bb.gv

bb.gj:                                            ; preds = %bb.gi
  %i.aek = getelementptr inbounds i8, ptr %.2.lcssa, i64 -1 ; 2 uses
  %.not348 = icmp eq ptr %i.aek, %.3253
  br i1 %.not348, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit788, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  store ptr %i.cd, ptr %16, align 8, !tbaa !13
  store i64 0, ptr %i.ce, align 8, !tbaa !16
  %i.ael = ptrtoint ptr %i.aek to i64
  %i.aem = ptrtoint ptr %.3253 to i64
  %i.aen = sub i64 %i.ael, %i.aem                 ; 8 uses
  %i.aeo = icmp ugt i64 %i.aen, 15
  br i1 %i.aeo, label %bb.gl, label %._crit_edge.i.i761

bb.gl:                                            ; preds = %bb.gk
  %i.aep = icmp slt i64 %i.aen, 0
  br i1 %i.aep, label %.noexc.i764, label %bb.gm

.noexc.i764:                                      ; preds = %bb.gl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc765 unwind label %.loopexit.split-lp1076

.noexc765:                                        ; preds = %.noexc.i764
  unreachable

bb.gm:                                            ; preds = %bb.gl
  %i.aeq = add nuw i64 %i.aen, 1                  ; 2 uses
  %i.aer = icmp slt i64 %i.aeq, 0
  br i1 %i.aer, label %.noexc4.i763, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i762, !prof !32

.noexc4.i763:                                     ; preds = %bb.gm
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc766 unwind label %.loopexit.split-lp1076

.noexc766:                                        ; preds = %.noexc4.i763
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i762: ; preds = %bb.gm
  %i.aes = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aeq) #21
          to label %.noexc767 unwind label %.loopexit1075 ; 2 uses

.noexc767:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i762
  store ptr %i.aes, ptr %16, align 8, !tbaa !30
  store i64 %i.aen, ptr %i.cd, align 8, !tbaa !17
  br label %._crit_edge.i.i761

._crit_edge.i.i761:                               ; preds = %.noexc767, %bb.gk
  %i.aet = phi ptr [ %i.aes, %.noexc767 ], [ %i.cd, %bb.gk ] ; 3 uses
  switch i64 %i.aen, label %bb.go [
    i64 1, label %bb.gn
    i64 0, label %bb.gp
  ]

bb.gn:                                            ; preds = %._crit_edge.i.i761
  %i.aeu = load i8, ptr %.3253, align 1, !tbaa !17
  store i8 %i.aeu, ptr %i.aet, align 1, !tbaa !17
  br label %bb.gp

bb.go:                                            ; preds = %._crit_edge.i.i761
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aet, ptr align 1 %.3253, i64 %i.aen, i1 false)
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn, %._crit_edge.i.i761
  store i64 %i.aen, ptr %i.ce, align 8, !tbaa !16
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aet, i64 %i.aen
  store i8 0, ptr %i.aev, align 1, !tbaa !17
  invoke fastcc void @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.gq unwind label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.aew = load ptr, ptr %16, align 8, !tbaa !30  ; 2 uses
  %i.aex = icmp eq ptr %i.aew, %i.cd
  br i1 %i.aex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769: ; preds = %bb.gq
  %i.aey = load i64, ptr %i.cd, align 8, !tbaa !17
  %i.aez = add i64 %i.aey, 1
  call void @_ZdlPvm(ptr noundef %i.aew, i64 noundef %i.aez) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771: ; preds = %bb.gq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit788

.loopexit1075:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i762
  %lpad.loopexit1077 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit774

.loopexit.split-lp1076:                           ; preds = %.noexc.i764, %.noexc4.i763
  %lpad.loopexit.split-lp1078 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit774

bb.gr:                                            ; preds = %bb.gp
  %i.afa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afb = load ptr, ptr %16, align 8, !tbaa !30  ; 2 uses
  %i.afc = icmp eq ptr %i.afb, %i.cd
  br i1 %i.afc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit774, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i772

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i772: ; preds = %bb.gr
  %i.afd = load i64, ptr %i.cd, align 8, !tbaa !17
  %i.afe = add i64 %i.afd, 1
  call void @_ZdlPvm(ptr noundef %i.afb, i64 noundef %i.afe) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit774

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit774: ; preds = %bb.gr, %.loopexit1075, %.loopexit.split-lp1076, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i772
  %.pn349 = phi { ptr, i32 } [ %i.afa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i772 ], [ %lpad.loopexit.split-lp1078, %.loopexit.split-lp1076 ], [ %lpad.loopexit1077, %.loopexit1075 ], [ %i.afa, %bb.gr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.kr

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit788: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771, %bb.gj
  %i.aff = load i32, ptr %i.bx, align 8, !tbaa !52 ; 2 uses
  %i.afg = icmp slt i32 %i.aff, 0
  %spec.select.i775 = call i32 @llvm.abs.i32(i32 %i.aff, i1 true) ; 4 uses
  %spec.select45.i776 = select i1 %i.afg, i8 45, i8 43
  %30 = udiv i32 %spec.select.i775, 60
  %31 = insertelement <2 x i32> poison, i32 %spec.select.i775, i64 0
  %32 = insertelement <2 x i32> %31, i32 %30, i64 1
  %33 = urem <2 x i32> %32, splat (i32 60)        ; 2 uses
  %34 = bitcast <2 x i32> %33 to <8 x i8>
  %.lhs.trunc58.i787 = extractelement <8 x i8> %34, i64 0 ; 2 uses
  %i.afh = urem i8 %.lhs.trunc58.i787, 10
  %i.afi = zext nneg i8 %i.afh to i64
  %i.afj = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.afi
  %i.afk = load i8, ptr %i.afj, align 1, !tbaa !17
  store i8 %i.afk, ptr %i.bu, align 4, !tbaa !17
  %i.afl = udiv i8 %.lhs.trunc58.i787, 10
  %i.afm = zext nneg i8 %i.afl to i64
  %i.afn = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.afm
  %i.afo = load i8, ptr %i.afn, align 1, !tbaa !17
  %35 = bitcast <2 x i32> %33 to <8 x i8>
  %.lhs.trunc.i786 = extractelement <8 x i8> %35, i64 4 ; 2 uses
  %i.afp = urem i8 %.lhs.trunc.i786, 10
  %i.afq = zext nneg i8 %i.afp to i64
  %i.afr = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.afq
  %i.afs = load i8, ptr %i.afr, align 1, !tbaa !17
  %i.aft = udiv i8 %.lhs.trunc.i786, 10
  %i.afu = zext nneg i8 %i.aft to i64
  %i.afv = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.afu
  %i.afw = load i8, ptr %i.afv, align 1, !tbaa !17
  %i.afx = udiv i32 %spec.select.i775, 3600
  %i.afy = urem i32 %i.afx, 10
  %i.afz = zext nneg i32 %i.afy to i64
  %i.aga = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.afz
  %i.agb = load i8, ptr %i.aga, align 1, !tbaa !17
  %i.agc = udiv i32 %spec.select.i775, 36000
  %.lhs.trunc56.i785 = trunc nuw i32 %i.agc to i16
  %i.agd = urem i16 %.lhs.trunc56.i785, 10
  %i.age = zext nneg i16 %i.agd to i64
  %i.agf = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.age
  %i.agg = load i8, ptr %i.agf, align 1, !tbaa !17
  %i.agh = insertelement <8 x i8> <i8 poison, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison>, i8 %spec.select45.i776, i64 0
  %i.agi = insertelement <8 x i8> %i.agh, i8 %i.agg, i64 1
  %i.agj = insertelement <8 x i8> %i.agi, i8 %i.agb, i64 2
  %i.agk = insertelement <8 x i8> %i.agj, i8 %i.afw, i64 4
  %i.agl = insertelement <8 x i8> %i.agk, i8 %i.afs, i64 5
  %i.agm = insertelement <8 x i8> %i.agl, i8 %i.afo, i64 7
  store <8 x i8> %i.agm, ptr %i.cg, align 4, !tbaa !17
  %i.agn = load i64, ptr %i.d, align 8, !tbaa !16 ; 5 uses
  %i.ago = icmp sgt i64 %i.agn, 9223372036854775798
  br i1 %i.ago, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i789

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i789: ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit788
  %i.agp = add nsw i64 %i.agn, 9                  ; 3 uses
  %i.agq = load ptr, ptr %0, align 8, !tbaa !30   ; 2 uses
  %i.agr = icmp eq ptr %i.agq, %i.c
  br i1 %i.agr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i795, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i790

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i795: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i789
  %i.ags = icmp ult i64 %i.agn, 16
  call void @llvm.assume(i1 %i.ags)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i791

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i790: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i789
  %i.agt = load i64, ptr %i.c, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i791

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i791: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i790, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i795
  %i.agu = phi i64 [ %i.agt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i790 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i795 ]
  %.not.i.i792 = icmp ugt i64 %i.agp, %i.agu
  br i1 %.not.i.i792, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i791
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agq, i64 %i.agn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.agv, ptr noundef nonnull align 4 dereferenceable(9) %i.cg, i64 9, i1 false)
  br label %bb.gu

bb.gt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i791
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.agn, i64 noundef 0, ptr noundef nonnull %i.cg, i64 noundef 9)
          to label %bb.gu unwind label %.loopexit1065

bb.gu:                                            ; preds = %bb.gs, %bb.gt
  store i64 %i.agp, ptr %i.d, align 8, !tbaa !16
  %i.agw = load ptr, ptr %0, align 8, !tbaa !30
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 %i.agp
  store i8 0, ptr %i.agx, align 1, !tbaa !17
  %i.agy = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 3 ; 2 uses
  br label %.thread981

bb.gv:                                            ; preds = %bb.gi
  %i.agz = load i8, ptr %i.aeh, align 1, !tbaa !17
  switch i8 %i.agz, label %.thread981 [
    i8 83, label %bb.gw
    i8 102, label %bb.gw
  ]

bb.gw:                                            ; preds = %bb.gv, %bb.gv
  %i.aha = getelementptr inbounds i8, ptr %.2.lcssa, i64 -1 ; 2 uses
  %.not344 = icmp eq ptr %i.aha, %.3253
  br i1 %.not344, label %bb.hf, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  store ptr %i.ch, ptr %17, align 8, !tbaa !13
  store i64 0, ptr %i.ci, align 8, !tbaa !16
  %i.ahb = ptrtoint ptr %i.aha to i64
  %i.ahc = ptrtoint ptr %.3253 to i64
  %i.ahd = sub i64 %i.ahb, %i.ahc                 ; 8 uses
  %i.ahe = icmp ugt i64 %i.ahd, 15
  br i1 %i.ahe, label %bb.gy, label %._crit_edge.i.i799

bb.gy:                                            ; preds = %bb.gx
  %i.ahf = icmp slt i64 %i.ahd, 0
  br i1 %i.ahf, label %.noexc.i802, label %bb.gz

.noexc.i802:                                      ; preds = %bb.gy
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc803 unwind label %.loopexit.split-lp1081

.noexc803:                                        ; preds = %.noexc.i802
  unreachable

bb.gz:                                            ; preds = %bb.gy
  %i.ahg = add nuw i64 %i.ahd, 1                  ; 2 uses
  %i.ahh = icmp slt i64 %i.ahg, 0
  br i1 %i.ahh, label %.noexc4.i801, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i800, !prof !32

.noexc4.i801:                                     ; preds = %bb.gz
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc804 unwind label %.loopexit.split-lp1081

.noexc804:                                        ; preds = %.noexc4.i801
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i800: ; preds = %bb.gz
  %i.ahi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahg) #21
          to label %.noexc805 unwind label %.loopexit1080 ; 2 uses

.noexc805:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i800
  store ptr %i.ahi, ptr %17, align 8, !tbaa !30
  store i64 %i.ahd, ptr %i.ch, align 8, !tbaa !17
  br label %._crit_edge.i.i799

._crit_edge.i.i799:                               ; preds = %.noexc805, %bb.gx
  %i.ahj = phi ptr [ %i.ahi, %.noexc805 ], [ %i.ch, %bb.gx ] ; 3 uses
  switch i64 %i.ahd, label %bb.hb [
    i64 1, label %bb.ha
    i64 0, label %bb.hc
  ]

bb.ha:                                            ; preds = %._crit_edge.i.i799
  %i.ahk = load i8, ptr %.3253, align 1, !tbaa !17
  store i8 %i.ahk, ptr %i.ahj, align 1, !tbaa !17
  br label %bb.hc

bb.hb:                                            ; preds = %._crit_edge.i.i799
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ahj, ptr align 1 %.3253, i64 %i.ahd, i1 false)
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha, %._crit_edge.i.i799
  store i64 %i.ahd, ptr %i.ci, align 8, !tbaa !16
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahj, i64 %i.ahd
  store i8 0, ptr %i.ahl, align 1, !tbaa !17
  invoke fastcc void @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.hd unwind label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.ahm = load ptr, ptr %17, align 8, !tbaa !30  ; 2 uses
  %i.ahn = icmp eq ptr %i.ahm, %i.ch
  br i1 %i.ahn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i807

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i807: ; preds = %bb.hd
  %i.aho = load i64, ptr %i.ch, align 8, !tbaa !17
  %i.ahp = add i64 %i.aho, 1
  call void @_ZdlPvm(ptr noundef %i.ahm, i64 noundef %i.ahp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809: ; preds = %bb.hd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i807
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.hf

.loopexit1080:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i800
  %lpad.loopexit1082 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812

.loopexit.split-lp1081:                           ; preds = %.noexc.i802, %.noexc4.i801
  %lpad.loopexit.split-lp1083 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812

bb.he:                                            ; preds = %bb.hc
  %i.ahq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahr = load ptr, ptr %17, align 8, !tbaa !30  ; 2 uses
  %i.ahs = icmp eq ptr %i.ahr, %i.ch
  br i1 %i.ahs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i810

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i810: ; preds = %bb.he
  %i.aht = load i64, ptr %i.ch, align 8, !tbaa !17
  %i.ahu = add i64 %i.aht, 1
  call void @_ZdlPvm(ptr noundef %i.ahr, i64 noundef %i.ahu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812: ; preds = %bb.he, %.loopexit1080, %.loopexit.split-lp1081, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i810
  %.pn345 = phi { ptr, i32 } [ %i.ahq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i810 ], [ %lpad.loopexit.split-lp1083, %.loopexit.split-lp1081 ], [ %lpad.loopexit1082, %.loopexit1080 ], [ %i.ahq, %bb.he ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.kr

bb.hf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809, %bb.gw
  %i.ahv = load i64, ptr %3, align 8, !tbaa !55   ; 4 uses
  %i.ahw = icmp slt i64 %i.ahv, 0                 ; 2 uses
  br i1 %i.ahw, label %bb.hg, label %bb.hj

bb.hg:                                            ; preds = %bb.hf
  %i.ahx = icmp eq i64 %i.ahv, -9223372036854775808
  br i1 %i.ahx, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  store i8 56, ptr %i.bu, align 4, !tbaa !17
  br label %bb.hi

end_hunk_1
