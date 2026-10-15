Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/time_zone_format?download=true
inline.NumInlined: 499
inline.NumDeleted: 172
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4absl12lts_2024011613time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE:bb.a
  %or.cond3.i626 = and i1 %i.un, %i.uo
  %i.up = or i1 %i.uk, %or.cond3.i626
  %spec.select47.i627 = select i1 %i.up, i8 43, i8 45
  %.lhs.trunc.i630 = trunc nuw nsw i32 %i.um to i8 ; 2 uses
  %i.uq = urem i8 %.lhs.trunc.i630, 10
  %i.ur = zext nneg i8 %i.uq to i64
  %i.us = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.ur
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !17
  store i8 %i.ut, ptr %i.bu, align 4, !tbaa !17
  %i.uu = udiv i8 %.lhs.trunc.i630, 10
  %i.uv = zext nneg i8 %i.uu to i64
  %i.uw = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.uv
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !17
  store i8 %i.ux, ptr %i.by, align 1, !tbaa !17
  store i8 58, ptr %.039.i978.idx.sroa.gep, align 2, !tbaa !17
  %i.uy = udiv i32 %spec.select.i624, 3600
  %i.uz = urem i32 %i.uy, 10
  %i.va = zext nneg i32 %i.uz to i64
  %i.vb = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.va
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !17
  store i8 %i.vc, ptr %i.bz, align 1, !tbaa !17
  %i.vd = udiv i32 %spec.select.i624, 36000
  %.lhs.trunc56.i629 = trunc nuw i32 %i.vd to i16
  %i.ve = urem i16 %.lhs.trunc56.i629, 10
  %i.vf = zext nneg i16 %i.ve to i64
  %i.vg = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.vf
  %i.vh = load i8, ptr %i.vg, align 1, !tbaa !17
  store i8 %i.vh, ptr %i.ca, align 16, !tbaa !17
  store i8 %spec.select47.i627, ptr %i.cf, align 1, !tbaa !17
  %i.vi = load i64, ptr %i.d, align 8, !tbaa !16  ; 5 uses
  %i.vj = icmp sgt i64 %i.vi, 9223372036854775801
  br i1 %i.vj, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i631

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i631: ; preds = %bb.dz
  %i.vk = add nsw i64 %i.vi, 6                    ; 3 uses
  %i.vl = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.vm = icmp eq ptr %i.vl, %i.c
  br i1 %i.vm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i637, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i632

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i637: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i631
  %i.vn = icmp ult i64 %i.vi, 16
  call void @llvm.assume(i1 %i.vn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i633

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i632: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i631
  %i.vo = load i64, ptr %i.c, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i633

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i633: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i632, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i637
  %i.vp = phi i64 [ %i.vo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i632 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i637 ]
  %.not.i.i634 = icmp ugt i64 %i.vk, %i.vp
  br i1 %.not.i.i634, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i633
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vl, i64 %i.vi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.vq, ptr noundef nonnull align 1 dereferenceable(6) %i.cf, i64 6, i1 false)
  br label %bb.ec

bb.eb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i633
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.vi, i64 noundef 0, ptr noundef nonnull %i.cf, i64 noundef 6)
          to label %bb.ec unwind label %.loopexit1065

bb.ec:                                            ; preds = %bb.ea, %bb.eb
  store i64 %i.vk, ptr %i.d, align 8, !tbaa !16
  %i.vr = load ptr, ptr %0, align 8, !tbaa !30
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 %i.vk
  store i8 0, ptr %i.vs, align 1, !tbaa !17
  %i.vt = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 2 ; 2 uses
  br label %.thread981, !llvm.loop !41

bb.ed:                                            ; preds = %bb.dp
  %i.vu = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 2 ; 2 uses
  %.not329 = icmp eq ptr %i.vu, %i.bq
  br i1 %.not329, label %.thread981, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !17
  switch i8 %i.vv, label %.thread981 [
    i8 122, label %bb.ef
    i8 58, label %bb.er
  ]

bb.ef:                                            ; preds = %bb.ee
  %i.vw = getelementptr inbounds i8, ptr %.2.lcssa, i64 -1 ; 2 uses
  %.not360 = icmp eq ptr %i.vw, %.3253
  br i1 %.not360, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store ptr %i.cq, ptr %11, align 8, !tbaa !13
  store i64 0, ptr %i.cr, align 8, !tbaa !16
  %i.vx = ptrtoint ptr %i.vw to i64
  %i.vy = ptrtoint ptr %.3253 to i64
  %i.vz = sub i64 %i.vx, %i.vy                    ; 8 uses
  %i.wa = icmp ugt i64 %i.vz, 15
  br i1 %i.wa, label %bb.eh, label %._crit_edge.i.i641

bb.eh:                                            ; preds = %bb.eg
  %i.wb = icmp slt i64 %i.vz, 0
  br i1 %i.wb, label %.noexc.i644, label %bb.ei

.noexc.i644:                                      ; preds = %bb.eh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc645 unwind label %.loopexit.split-lp1111

.noexc645:                                        ; preds = %.noexc.i644
  unreachable

bb.ei:                                            ; preds = %bb.eh
  %i.wc = add nuw i64 %i.vz, 1                    ; 2 uses
  %i.wd = icmp slt i64 %i.wc, 0
  br i1 %i.wd, label %.noexc4.i643, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i642, !prof !32

.noexc4.i643:                                     ; preds = %bb.ei
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc646 unwind label %.loopexit.split-lp1111

.noexc646:                                        ; preds = %.noexc4.i643
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i642: ; preds = %bb.ei
  %i.we = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wc) #21
          to label %.noexc647 unwind label %.loopexit1110 ; 2 uses

.noexc647:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i642
  store ptr %i.we, ptr %11, align 8, !tbaa !30
  store i64 %i.vz, ptr %i.cq, align 8, !tbaa !17
  br label %._crit_edge.i.i641

._crit_edge.i.i641:                               ; preds = %.noexc647, %bb.eg
  %i.wf = phi ptr [ %i.we, %.noexc647 ], [ %i.cq, %bb.eg ] ; 3 uses
  switch i64 %i.vz, label %bb.ek [
    i64 1, label %bb.ej
    i64 0, label %bb.el
  ]

bb.ej:                                            ; preds = %._crit_edge.i.i641
  %i.wg = load i8, ptr %.3253, align 1, !tbaa !17
  store i8 %i.wg, ptr %i.wf, align 1, !tbaa !17
  br label %bb.el

bb.ek:                                            ; preds = %._crit_edge.i.i641
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wf, ptr align 1 %.3253, i64 %i.vz, i1 false)
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej, %._crit_edge.i.i641
  store i64 %i.vz, ptr %i.cr, align 8, !tbaa !16
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wf, i64 %i.vz
  store i8 0, ptr %i.wh, align 1, !tbaa !17
  invoke fastcc void @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.em unwind label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.wi = load ptr, ptr %11, align 8, !tbaa !30   ; 2 uses
  %i.wj = icmp eq ptr %i.wi, %i.cq
  br i1 %i.wj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649: ; preds = %bb.em
  %i.wk = load i64, ptr %i.cq, align 8, !tbaa !17
  %i.wl = add i64 %i.wk, 1
  call void @_ZdlPvm(ptr noundef %i.wi, i64 noundef %i.wl) #22
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
  %i.wm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wn = load ptr, ptr %11, align 8, !tbaa !30   ; 2 uses
  %i.wo = icmp eq ptr %i.wn, %i.cq
  br i1 %i.wo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652: ; preds = %bb.en
  %i.wp = load i64, ptr %i.cq, align 8, !tbaa !17
  %i.wq = add i64 %i.wp, 1
  call void @_ZdlPvm(ptr noundef %i.wn, i64 noundef %i.wq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654: ; preds = %bb.en, %.loopexit1110, %.loopexit.split-lp1111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652
  %.pn361 = phi { ptr, i32 } [ %i.wm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652 ], [ %lpad.loopexit.split-lp1113, %.loopexit.split-lp1111 ], [ %lpad.loopexit1112, %.loopexit1110 ], [ %i.wm, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.kr

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651, %bb.ef
  %i.wr = load i32, ptr %i.bx, align 8, !tbaa !52 ; 2 uses
  %i.ws = icmp slt i32 %i.wr, 0
  %spec.select.i655 = call i32 @llvm.abs.i32(i32 %i.wr, i1 true) ; 4 uses
  %spec.select45.i656 = select i1 %i.ws, i8 45, i8 43
  %21 = udiv i32 %spec.select.i655, 60
  %22 = insertelement <2 x i32> poison, i32 %spec.select.i655, i64 0
  %23 = insertelement <2 x i32> %22, i32 %21, i64 1
  %24 = urem <2 x i32> %23, splat (i32 60)        ; 2 uses
  %25 = bitcast <2 x i32> %24 to <8 x i8>
  %.lhs.trunc58.i = extractelement <8 x i8> %25, i64 0 ; 2 uses
  %i.wt = urem i8 %.lhs.trunc58.i, 10
  %i.wu = zext nneg i8 %i.wt to i64
  %i.wv = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.wu
  %i.ww = load i8, ptr %i.wv, align 1, !tbaa !17
  store i8 %i.ww, ptr %i.bu, align 4, !tbaa !17
  %i.wx = udiv i8 %.lhs.trunc58.i, 10
  %i.wy = zext nneg i8 %i.wx to i64
  %i.wz = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.wy
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !17
  %26 = bitcast <2 x i32> %24 to <8 x i8>
  %.lhs.trunc.i662 = extractelement <8 x i8> %26, i64 4 ; 2 uses
  %i.xb = urem i8 %.lhs.trunc.i662, 10
  %i.xc = zext nneg i8 %i.xb to i64
  %i.xd = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.xc
  %i.xe = load i8, ptr %i.xd, align 1, !tbaa !17
  %i.xf = udiv i8 %.lhs.trunc.i662, 10
  %i.xg = zext nneg i8 %i.xf to i64
  %i.xh = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.xg
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !17
  %i.xj = udiv i32 %spec.select.i655, 3600
  %i.xk = urem i32 %i.xj, 10
  %i.xl = zext nneg i32 %i.xk to i64
  %i.xm = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.xl
  %i.xn = load i8, ptr %i.xm, align 1, !tbaa !17
  %i.xo = udiv i32 %spec.select.i655, 36000
  %.lhs.trunc56.i661 = trunc nuw i32 %i.xo to i16
  %i.xp = urem i16 %.lhs.trunc56.i661, 10
  %i.xq = zext nneg i16 %i.xp to i64
  %i.xr = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.xq
  %i.xs = load i8, ptr %i.xr, align 1, !tbaa !17
  %i.xt = insertelement <8 x i8> <i8 poison, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison>, i8 %spec.select45.i656, i64 0
  %i.xu = insertelement <8 x i8> %i.xt, i8 %i.xs, i64 1
  %i.xv = insertelement <8 x i8> %i.xu, i8 %i.xn, i64 2
  %i.xw = insertelement <8 x i8> %i.xv, i8 %i.xi, i64 4
  %i.xx = insertelement <8 x i8> %i.xw, i8 %i.xe, i64 5
  %i.xy = insertelement <8 x i8> %i.xx, i8 %i.xa, i64 7
  store <8 x i8> %i.xy, ptr %i.cg, align 4, !tbaa !17
  %i.xz = load i64, ptr %i.d, align 8, !tbaa !16  ; 5 uses
  %i.ya = icmp sgt i64 %i.xz, 9223372036854775798
  br i1 %i.ya, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i663

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i663: ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit
  %i.yb = add nsw i64 %i.xz, 9                    ; 3 uses
  %i.yc = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.yd = icmp eq ptr %i.yc, %i.c
  br i1 %i.yd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i669, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i664

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i669: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i663
  %i.ye = icmp ult i64 %i.xz, 16
  call void @llvm.assume(i1 %i.ye)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i665

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i664: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i663
  %i.yf = load i64, ptr %i.c, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i665

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i665: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i664, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i669
  %i.yg = phi i64 [ %i.yf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i664 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i669 ]
  %.not.i.i666 = icmp ugt i64 %i.yb, %i.yg
  br i1 %.not.i.i666, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i665
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yc, i64 %i.xz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.yh, ptr noundef nonnull align 4 dereferenceable(9) %i.cg, i64 9, i1 false)
  br label %bb.eq

bb.ep:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i665
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.xz, i64 noundef 0, ptr noundef nonnull %i.cg, i64 noundef 9)
          to label %bb.eq unwind label %.loopexit1065

bb.eq:                                            ; preds = %bb.eo, %bb.ep
  store i64 %i.yb, ptr %i.d, align 8, !tbaa !16
  %i.yi = load ptr, ptr %0, align 8, !tbaa !30
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 %i.yb
  store i8 0, ptr %i.yj, align 1, !tbaa !17
  %i.yk = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 3 ; 2 uses
  br label %.thread981, !llvm.loop !41

bb.er:                                            ; preds = %bb.ee
  %i.yl = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 3 ; 2 uses
  %.not330 = icmp eq ptr %i.yl, %i.bq
  br i1 %.not330, label %.thread981, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !17
  %i.yn = icmp eq i8 %i.ym, 122
  br i1 %i.yn, label %bb.et, label %.thread981

bb.et:                                            ; preds = %bb.es
  %i.yo = getelementptr inbounds i8, ptr %.2.lcssa, i64 -1 ; 2 uses
  %.not357 = icmp eq ptr %i.yo, %.3253
  br i1 %.not357, label %bb.ez, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %.3253, ptr noundef nonnull %i.yo, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.ev unwind label %bb.ex

bb.ev:                                            ; preds = %bb.eu
  invoke fastcc void @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.ew unwind label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  %i.yp = load ptr, ptr %12, align 8, !tbaa !30   ; 2 uses
  %i.yq = icmp eq ptr %i.yp, %i.cp
  br i1 %i.yq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i673

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i673: ; preds = %bb.ew
  %i.yr = load i64, ptr %i.cp, align 8, !tbaa !17
  %i.ys = add i64 %i.yr, 1
  call void @_ZdlPvm(ptr noundef %i.yp, i64 noundef %i.ys) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675: ; preds = %bb.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i673
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.ez

bb.ex:                                            ; preds = %bb.eu
  %i.yt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678

bb.ey:                                            ; preds = %bb.ev
  %i.yu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yv = load ptr, ptr %12, align 8, !tbaa !30   ; 2 uses
  %i.yw = icmp eq ptr %i.yv, %i.cp
  br i1 %i.yw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676: ; preds = %bb.ey
  %i.yx = load i64, ptr %i.cp, align 8, !tbaa !17
  %i.yy = add i64 %i.yx, 1
  call void @_ZdlPvm(ptr noundef %i.yv, i64 noundef %i.yy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678: ; preds = %bb.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676, %bb.ex
  %.pn358 = phi { ptr, i32 } [ %i.yt, %bb.ex ], [ %i.yu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676 ], [ %i.yu, %bb.ey ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.kr

bb.ez:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675, %bb.et
  %i.yz = load i32, ptr %i.bx, align 8, !tbaa !52 ; 2 uses
  %i.za = icmp slt i32 %i.yz, 0
  %spec.select.i679 = call i32 @llvm.abs.i32(i32 %i.yz, i1 true) ; 5 uses
  %spec.select45.i680 = select i1 %i.za, i8 45, i8 43 ; 2 uses
  %i.zb = urem i32 %spec.select.i679, 60          ; 2 uses
  %i.zc = udiv i32 %spec.select.i679, 60
  %i.zd = urem i32 %i.zc, 60                      ; 2 uses
  %.not1050 = icmp eq i32 %i.zb, 0
  br i1 %.not1050, label %bb.fa, label %.thread

.thread:                                          ; preds = %bb.ez
  %.lhs.trunc58.i690 = trunc nuw nsw i32 %i.zb to i8 ; 2 uses
  %i.ze = urem i8 %.lhs.trunc58.i690, 10
  %i.zf = zext nneg i8 %i.ze to i64
  %i.zg = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.zf
  %i.zh = load i8, ptr %i.zg, align 1, !tbaa !17
  store i8 %i.zh, ptr %i.bu, align 4, !tbaa !17
  %i.zi = udiv i8 %.lhs.trunc58.i690, 10
  %i.zj = zext nneg i8 %i.zi to i64
  %i.zk = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.zj
  %i.zl = load i8, ptr %i.zk, align 1, !tbaa !17
  store i8 %i.zl, ptr %i.by, align 1, !tbaa !17
  store i8 58, ptr %.039.i978.idx.sroa.gep, align 2, !tbaa !17
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.zm = icmp samesign ult i32 %spec.select.i679, 3600
  %i.zn = icmp eq i32 %i.zd, 0                    ; 2 uses
  %or.cond3.i682 = and i1 %i.zm, %i.zn
  %spec.select47.i683 = select i1 %or.cond3.i682, i8 43, i8 %spec.select45.i680
  br i1 %i.zn, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit691, label %bb.fb

bb.fb:                                            ; preds = %.thread, %bb.fa
  %.039.i978.idx.sroa.phi = phi ptr [ %.039.i978.idx.sroa.gep, %.thread ], [ %.039.i978.idx.sroa.gep1310, %bb.fa ] ; 2 uses
  %.039.i978.idx.sroa.phi1488 = phi ptr [ %.039.i978.idx.sroa.gep1489, %.thread ], [ %.039.i978.idx.sroa.gep1490, %bb.fa ]
  %.039.i978.idx = phi i64 [ 15, %.thread ], [ 18, %bb.fa ]
  %.lhs.trunc.i689 = trunc nuw nsw i32 %i.zd to i8 ; 2 uses
  %i.zo = urem i8 %.lhs.trunc.i689, 10
  %i.zp = zext nneg i8 %i.zo to i64
  %i.zq = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.zp
  %i.zr = load i8, ptr %i.zq, align 1, !tbaa !17
  %i.zs = getelementptr inbounds i8, ptr %.039.i978.idx.sroa.phi, i64 -1
  store i8 %i.zr, ptr %i.zs, align 1, !tbaa !17
  %i.zt = udiv i8 %.lhs.trunc.i689, 10
  %i.zu = zext nneg i8 %i.zt to i64
  %i.zv = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.zu
  %i.zw = load i8, ptr %i.zv, align 1, !tbaa !17
  %i.zx = getelementptr inbounds i8, ptr %.039.i978.idx.sroa.phi, i64 -2
  store i8 %i.zw, ptr %i.zx, align 1, !tbaa !17
  store i8 58, ptr %.039.i978.idx.sroa.phi1488, align 1, !tbaa !17
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit691

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit691: ; preds = %bb.fa, %bb.fb
  %.1.i684979 = phi i8 [ %spec.select45.i680, %bb.fb ], [ %spec.select47.i683, %bb.fa ]
  %.140.i687.idx = phi i64 [ %.039.i978.idx, %bb.fb ], [ 21, %bb.fa ] ; 3 uses
  %.140.i687.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.140.i687.idx ; 2 uses
  %i.zy = udiv i32 %spec.select.i679, 3600
  %i.zz = urem i32 %i.zy, 10
  %i.aaa = zext nneg i32 %i.zz to i64
  %i.aab = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.aaa
  %i.aac = load i8, ptr %i.aab, align 1, !tbaa !17
  %i.aad = getelementptr inbounds i8, ptr %.140.i687.ptr, i64 -1
  store i8 %i.aac, ptr %i.aad, align 1, !tbaa !17
  %i.aae = udiv i32 %spec.select.i679, 36000
  %.lhs.trunc56.i688 = trunc nuw i32 %i.aae to i16
  %i.aaf = urem i16 %.lhs.trunc56.i688, 10
  %i.aag = zext nneg i16 %i.aaf to i64
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2024011613time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE:bb.a
  %i.adg = icmp samesign ult i32 %spec.select.i740, 3600
  %i.adh = icmp eq i32 %i.adf, 0
  %or.cond3.i742 = and i1 %i.adg, %i.adh
  %i.adi = or i1 %i.add, %or.cond3.i742
  %spec.select47.i743 = select i1 %i.adi, i8 43, i8 45
  %.lhs.trunc.i750 = trunc nuw nsw i32 %i.adf to i8 ; 2 uses
  %i.adj = urem i8 %.lhs.trunc.i750, 10
  %i.adk = zext nneg i8 %i.adj to i64
  %i.adl = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.adk
  %i.adm = load i8, ptr %i.adl, align 1, !tbaa !17
  store i8 %i.adm, ptr %i.bu, align 4, !tbaa !17
  %i.adn = udiv i8 %.lhs.trunc.i750, 10
  %i.ado = zext nneg i8 %i.adn to i64
  %i.adp = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.ado
  %i.adq = load i8, ptr %i.adp, align 1, !tbaa !17
  store i8 %i.adq, ptr %i.by, align 1, !tbaa !17
  store i8 58, ptr %.039.i978.idx.sroa.gep, align 2, !tbaa !17
  %i.adr = udiv i32 %spec.select.i740, 3600
  %i.ads = urem i32 %i.adr, 10
  %i.adt = zext nneg i32 %i.ads to i64
  %i.adu = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.adt
  %i.adv = load i8, ptr %i.adu, align 1, !tbaa !17
  store i8 %i.adv, ptr %i.bz, align 1, !tbaa !17
  %i.adw = udiv i32 %spec.select.i740, 36000
  %.lhs.trunc56.i749 = trunc nuw i32 %i.adw to i16
  %i.adx = urem i16 %.lhs.trunc56.i749, 10
  %i.ady = zext nneg i16 %i.adx to i64
  %i.adz = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.ady
  %i.aea = load i8, ptr %i.adz, align 1, !tbaa !17
  store i8 %i.aea, ptr %i.ca, align 16, !tbaa !17
  store i8 %spec.select47.i743, ptr %i.cf, align 1, !tbaa !17
  %i.aeb = load i64, ptr %i.d, align 8, !tbaa !16 ; 5 uses
  %i.aec = icmp sgt i64 %i.aeb, 9223372036854775801
  br i1 %i.aec, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i751

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i751: ; preds = %bb.gd
  %i.aed = add nsw i64 %i.aeb, 6                  ; 3 uses
  %i.aee = load ptr, ptr %0, align 8, !tbaa !30   ; 2 uses
  %i.aef = icmp eq ptr %i.aee, %i.c
  br i1 %i.aef, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i757, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i752

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i757: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i751
  %i.aeg = icmp ult i64 %i.aeb, 16
  call void @llvm.assume(i1 %i.aeg)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i753

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i752: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i751
  %i.aeh = load i64, ptr %i.c, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i753

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i753: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i752, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i757
  %i.aei = phi i64 [ %i.aeh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i752 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i757 ]
  %.not.i.i754 = icmp ugt i64 %i.aed, %i.aei
  br i1 %.not.i.i754, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i753
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aee, i64 %i.aeb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aej, ptr noundef nonnull align 1 dereferenceable(6) %i.cf, i64 6, i1 false)
  br label %bb.gg

bb.gf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i753
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aeb, i64 noundef 0, ptr noundef nonnull %i.cf, i64 noundef 6)
          to label %bb.gg unwind label %.loopexit1065

bb.gg:                                            ; preds = %bb.ge, %bb.gf
  store i64 %i.aed, ptr %i.d, align 8, !tbaa !16
  %i.aek = load ptr, ptr %0, align 8, !tbaa !30
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 %i.aed
  store i8 0, ptr %i.ael, align 1, !tbaa !17
  %i.aem = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 2 ; 2 uses
  br label %.thread981

bb.gh:                                            ; preds = %bb.fg
  %i.aen = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 2 ; 4 uses
  %.not332 = icmp eq ptr %i.aen, %i.bq
  br i1 %.not332, label %.thread981, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.aeo = load i8, ptr %i.aen, align 1, !tbaa !17
  %i.aep = icmp eq i8 %i.aeo, 122
  br i1 %i.aep, label %bb.gj, label %bb.gv

bb.gj:                                            ; preds = %bb.gi
  %i.aeq = getelementptr inbounds i8, ptr %.2.lcssa, i64 -1 ; 2 uses
  %.not348 = icmp eq ptr %i.aeq, %.3253
  br i1 %.not348, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit788, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  store ptr %i.cd, ptr %16, align 8, !tbaa !13
  store i64 0, ptr %i.ce, align 8, !tbaa !16
  %i.aer = ptrtoint ptr %i.aeq to i64
  %i.aes = ptrtoint ptr %.3253 to i64
  %i.aet = sub i64 %i.aer, %i.aes                 ; 8 uses
  %i.aeu = icmp ugt i64 %i.aet, 15
  br i1 %i.aeu, label %bb.gl, label %._crit_edge.i.i761

bb.gl:                                            ; preds = %bb.gk
  %i.aev = icmp slt i64 %i.aet, 0
  br i1 %i.aev, label %.noexc.i764, label %bb.gm

.noexc.i764:                                      ; preds = %bb.gl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc765 unwind label %.loopexit.split-lp1076

.noexc765:                                        ; preds = %.noexc.i764
  unreachable

bb.gm:                                            ; preds = %bb.gl
  %i.aew = add nuw i64 %i.aet, 1                  ; 2 uses
  %i.aex = icmp slt i64 %i.aew, 0
  br i1 %i.aex, label %.noexc4.i763, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i762, !prof !32

.noexc4.i763:                                     ; preds = %bb.gm
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc766 unwind label %.loopexit.split-lp1076

.noexc766:                                        ; preds = %.noexc4.i763
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i762: ; preds = %bb.gm
  %i.aey = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aew) #21
          to label %.noexc767 unwind label %.loopexit1075 ; 2 uses

.noexc767:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i762
  store ptr %i.aey, ptr %16, align 8, !tbaa !30
  store i64 %i.aet, ptr %i.cd, align 8, !tbaa !17
  br label %._crit_edge.i.i761

._crit_edge.i.i761:                               ; preds = %.noexc767, %bb.gk
  %i.aez = phi ptr [ %i.aey, %.noexc767 ], [ %i.cd, %bb.gk ] ; 3 uses
  switch i64 %i.aet, label %bb.go [
    i64 1, label %bb.gn
    i64 0, label %bb.gp
  ]

bb.gn:                                            ; preds = %._crit_edge.i.i761
  %i.afa = load i8, ptr %.3253, align 1, !tbaa !17
  store i8 %i.afa, ptr %i.aez, align 1, !tbaa !17
  br label %bb.gp

bb.go:                                            ; preds = %._crit_edge.i.i761
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aez, ptr align 1 %.3253, i64 %i.aet, i1 false)
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn, %._crit_edge.i.i761
  store i64 %i.aet, ptr %i.ce, align 8, !tbaa !16
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aez, i64 %i.aet
  store i8 0, ptr %i.afb, align 1, !tbaa !17
  invoke fastcc void @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.gq unwind label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.afc = load ptr, ptr %16, align 8, !tbaa !30  ; 2 uses
  %i.afd = icmp eq ptr %i.afc, %i.cd
  br i1 %i.afd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769: ; preds = %bb.gq
  %i.afe = load i64, ptr %i.cd, align 8, !tbaa !17
  %i.aff = add i64 %i.afe, 1
  call void @_ZdlPvm(ptr noundef %i.afc, i64 noundef %i.aff) #22
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
  %i.afg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afh = load ptr, ptr %16, align 8, !tbaa !30  ; 2 uses
  %i.afi = icmp eq ptr %i.afh, %i.cd
  br i1 %i.afi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit774, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i772

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i772: ; preds = %bb.gr
  %i.afj = load i64, ptr %i.cd, align 8, !tbaa !17
  %i.afk = add i64 %i.afj, 1
  call void @_ZdlPvm(ptr noundef %i.afh, i64 noundef %i.afk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit774

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit774: ; preds = %bb.gr, %.loopexit1075, %.loopexit.split-lp1076, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i772
  %.pn349 = phi { ptr, i32 } [ %i.afg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i772 ], [ %lpad.loopexit.split-lp1078, %.loopexit.split-lp1076 ], [ %lpad.loopexit1077, %.loopexit1075 ], [ %i.afg, %bb.gr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.kr

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit788: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771, %bb.gj
  %i.afl = load i32, ptr %i.bx, align 8, !tbaa !52 ; 2 uses
  %i.afm = icmp slt i32 %i.afl, 0
  %spec.select.i775 = call i32 @llvm.abs.i32(i32 %i.afl, i1 true) ; 4 uses
  %spec.select45.i776 = select i1 %i.afm, i8 45, i8 43
  %27 = udiv i32 %spec.select.i775, 60
  %28 = insertelement <2 x i32> poison, i32 %spec.select.i775, i64 0
  %29 = insertelement <2 x i32> %28, i32 %27, i64 1
  %30 = urem <2 x i32> %29, splat (i32 60)        ; 2 uses
  %31 = bitcast <2 x i32> %30 to <8 x i8>
  %.lhs.trunc58.i787 = extractelement <8 x i8> %31, i64 0 ; 2 uses
  %i.afn = urem i8 %.lhs.trunc58.i787, 10
  %i.afo = zext nneg i8 %i.afn to i64
  %i.afp = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.afo
  %i.afq = load i8, ptr %i.afp, align 1, !tbaa !17
  store i8 %i.afq, ptr %i.bu, align 4, !tbaa !17
  %i.afr = udiv i8 %.lhs.trunc58.i787, 10
  %i.afs = zext nneg i8 %i.afr to i64
  %i.aft = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.afs
  %i.afu = load i8, ptr %i.aft, align 1, !tbaa !17
  %32 = bitcast <2 x i32> %30 to <8 x i8>
  %.lhs.trunc.i786 = extractelement <8 x i8> %32, i64 4 ; 2 uses
  %i.afv = urem i8 %.lhs.trunc.i786, 10
  %i.afw = zext nneg i8 %i.afv to i64
  %i.afx = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.afw
  %i.afy = load i8, ptr %i.afx, align 1, !tbaa !17
  %i.afz = udiv i8 %.lhs.trunc.i786, 10
  %i.aga = zext nneg i8 %i.afz to i64
  %i.agb = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.aga
  %i.agc = load i8, ptr %i.agb, align 1, !tbaa !17
  %i.agd = udiv i32 %spec.select.i775, 3600
  %i.age = urem i32 %i.agd, 10
  %i.agf = zext nneg i32 %i.age to i64
  %i.agg = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.agf
  %i.agh = load i8, ptr %i.agg, align 1, !tbaa !17
  %i.agi = udiv i32 %spec.select.i775, 36000
  %.lhs.trunc56.i785 = trunc nuw i32 %i.agi to i16
  %i.agj = urem i16 %.lhs.trunc56.i785, 10
  %i.agk = zext nneg i16 %i.agj to i64
  %i.agl = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.agk
  %i.agm = load i8, ptr %i.agl, align 1, !tbaa !17
  %i.agn = insertelement <8 x i8> <i8 poison, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison>, i8 %spec.select45.i776, i64 0
  %i.ago = insertelement <8 x i8> %i.agn, i8 %i.agm, i64 1
  %i.agp = insertelement <8 x i8> %i.ago, i8 %i.agh, i64 2
  %i.agq = insertelement <8 x i8> %i.agp, i8 %i.agc, i64 4
  %i.agr = insertelement <8 x i8> %i.agq, i8 %i.afy, i64 5
  %i.ags = insertelement <8 x i8> %i.agr, i8 %i.afu, i64 7
  store <8 x i8> %i.ags, ptr %i.cg, align 4, !tbaa !17
  %i.agt = load i64, ptr %i.d, align 8, !tbaa !16 ; 5 uses
  %i.agu = icmp sgt i64 %i.agt, 9223372036854775798
  br i1 %i.agu, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i789

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i789: ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit788
  %i.agv = add nsw i64 %i.agt, 9                  ; 3 uses
  %i.agw = load ptr, ptr %0, align 8, !tbaa !30   ; 2 uses
  %i.agx = icmp eq ptr %i.agw, %i.c
  br i1 %i.agx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i795, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i790

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i795: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i789
  %i.agy = icmp ult i64 %i.agt, 16
  call void @llvm.assume(i1 %i.agy)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i791

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i790: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i789
  %i.agz = load i64, ptr %i.c, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i791

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i791: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i790, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i795
  %i.aha = phi i64 [ %i.agz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i790 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i795 ]
  %.not.i.i792 = icmp ugt i64 %i.agv, %i.aha
  br i1 %.not.i.i792, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i791
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agw, i64 %i.agt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ahb, ptr noundef nonnull align 4 dereferenceable(9) %i.cg, i64 9, i1 false)
  br label %bb.gu

bb.gt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i791
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.agt, i64 noundef 0, ptr noundef nonnull %i.cg, i64 noundef 9)
          to label %bb.gu unwind label %.loopexit1065

bb.gu:                                            ; preds = %bb.gs, %bb.gt
  store i64 %i.agv, ptr %i.d, align 8, !tbaa !16
  %i.ahc = load ptr, ptr %0, align 8, !tbaa !30
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 %i.agv
  store i8 0, ptr %i.ahd, align 1, !tbaa !17
  %i.ahe = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 3 ; 2 uses
  br label %.thread981

bb.gv:                                            ; preds = %bb.gi
  %i.ahf = load i8, ptr %i.aen, align 1, !tbaa !17
  switch i8 %i.ahf, label %.thread981 [
    i8 83, label %bb.gw
    i8 102, label %bb.gw
  ]

bb.gw:                                            ; preds = %bb.gv, %bb.gv
  %i.ahg = getelementptr inbounds i8, ptr %.2.lcssa, i64 -1 ; 2 uses
  %.not344 = icmp eq ptr %i.ahg, %.3253
  br i1 %.not344, label %bb.hf, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  store ptr %i.ch, ptr %17, align 8, !tbaa !13
  store i64 0, ptr %i.ci, align 8, !tbaa !16
  %i.ahh = ptrtoint ptr %i.ahg to i64
  %i.ahi = ptrtoint ptr %.3253 to i64
  %i.ahj = sub i64 %i.ahh, %i.ahi                 ; 8 uses
  %i.ahk = icmp ugt i64 %i.ahj, 15
  br i1 %i.ahk, label %bb.gy, label %._crit_edge.i.i799

bb.gy:                                            ; preds = %bb.gx
  %i.ahl = icmp slt i64 %i.ahj, 0
  br i1 %i.ahl, label %.noexc.i802, label %bb.gz

.noexc.i802:                                      ; preds = %bb.gy
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc803 unwind label %.loopexit.split-lp1081

.noexc803:                                        ; preds = %.noexc.i802
  unreachable

bb.gz:                                            ; preds = %bb.gy
  %i.ahm = add nuw i64 %i.ahj, 1                  ; 2 uses
  %i.ahn = icmp slt i64 %i.ahm, 0
  br i1 %i.ahn, label %.noexc4.i801, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i800, !prof !32

.noexc4.i801:                                     ; preds = %bb.gz
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc804 unwind label %.loopexit.split-lp1081

.noexc804:                                        ; preds = %.noexc4.i801
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i800: ; preds = %bb.gz
  %i.aho = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahm) #21
          to label %.noexc805 unwind label %.loopexit1080 ; 2 uses

.noexc805:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i800
  store ptr %i.aho, ptr %17, align 8, !tbaa !30
  store i64 %i.ahj, ptr %i.ch, align 8, !tbaa !17
  br label %._crit_edge.i.i799

._crit_edge.i.i799:                               ; preds = %.noexc805, %bb.gx
  %i.ahp = phi ptr [ %i.aho, %.noexc805 ], [ %i.ch, %bb.gx ] ; 3 uses
  switch i64 %i.ahj, label %bb.hb [
    i64 1, label %bb.ha
    i64 0, label %bb.hc
  ]

bb.ha:                                            ; preds = %._crit_edge.i.i799
  %i.ahq = load i8, ptr %.3253, align 1, !tbaa !17
  store i8 %i.ahq, ptr %i.ahp, align 1, !tbaa !17
  br label %bb.hc

bb.hb:                                            ; preds = %._crit_edge.i.i799
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ahp, ptr align 1 %.3253, i64 %i.ahj, i1 false)
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha, %._crit_edge.i.i799
  store i64 %i.ahj, ptr %i.ci, align 8, !tbaa !16
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahp, i64 %i.ahj
  store i8 0, ptr %i.ahr, align 1, !tbaa !17
  invoke fastcc void @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.hd unwind label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.ahs = load ptr, ptr %17, align 8, !tbaa !30  ; 2 uses
  %i.aht = icmp eq ptr %i.ahs, %i.ch
  br i1 %i.aht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i807

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i807: ; preds = %bb.hd
  %i.ahu = load i64, ptr %i.ch, align 8, !tbaa !17
  %i.ahv = add i64 %i.ahu, 1
  call void @_ZdlPvm(ptr noundef %i.ahs, i64 noundef %i.ahv) #22
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
  %i.ahw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahx = load ptr, ptr %17, align 8, !tbaa !30  ; 2 uses
  %i.ahy = icmp eq ptr %i.ahx, %i.ch
  br i1 %i.ahy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i810

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i810: ; preds = %bb.he
  %i.ahz = load i64, ptr %i.ch, align 8, !tbaa !17
  %i.aia = add i64 %i.ahz, 1
  call void @_ZdlPvm(ptr noundef %i.ahx, i64 noundef %i.aia) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812: ; preds = %bb.he, %.loopexit1080, %.loopexit.split-lp1081, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i810
  %.pn345 = phi { ptr, i32 } [ %i.ahw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i810 ], [ %lpad.loopexit.split-lp1083, %.loopexit.split-lp1081 ], [ %lpad.loopexit1082, %.loopexit1080 ], [ %i.ahw, %bb.he ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.kr

bb.hf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809, %bb.gw
  %i.aib = load i64, ptr %3, align 8, !tbaa !55   ; 4 uses
  %i.aic = icmp slt i64 %i.aib, 0                 ; 2 uses
  br i1 %i.aic, label %bb.hg, label %bb.hj

bb.hg:                                            ; preds = %bb.hf
  %i.aid = icmp eq i64 %i.aib, -9223372036854775808
  br i1 %i.aid, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  store i8 56, ptr %i.bu, align 4, !tbaa !17
  br label %bb.hi

end_hunk_1
