Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/time_zone_format?download=true
inline.NumInlined: 481
inline.NumDeleted: 166
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4absl12lts_2025051213time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i690: ; preds = %bb.eq
  %i.aed = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.1258, i64 noundef %i.adz)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit693 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit693: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i690
  %i.aee = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 3 ; 2 uses
  br label %.thread805

bb.er:                                            ; preds = %bb.cr
  %i.aef = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 2 ; 2 uses
  %.not334 = icmp eq ptr %i.aef, %i.cb
  br i1 %.not334, label %.thread818, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.aeg = load i8, ptr %i.aef, align 1, !tbaa !17
  %i.aeh = icmp eq i8 %i.aeg, 89
  br i1 %i.aeh, label %bb.et, label %.thread818

bb.et:                                            ; preds = %bb.es
  %i.aei = getelementptr inbounds i8, ptr %.2.lcssa, i64 -1 ; 2 uses
  %.not341 = icmp eq ptr %i.aei, %.3253
  br i1 %.not341, label %bb.fb, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  store ptr %i.cn, ptr %18, align 8, !tbaa !13
  store i64 0, ptr %i.co, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.aej = ptrtoint ptr %i.aei to i64
  %i.aek = ptrtoint ptr %.3253 to i64
  %i.ael = sub i64 %i.aej, %i.aek                 ; 4 uses
  store i64 %i.ael, ptr %i.c, align 8, !tbaa !32
  %i.aem = icmp ugt i64 %i.ael, 15
  br i1 %i.aem, label %.noexc.i695, label %._crit_edge.i.i694

.noexc.i695:                                      ; preds = %bb.eu
  %i.aen = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc696 unwind label %bb.ez ; 2 uses

.noexc696:                                        ; preds = %.noexc.i695
  store ptr %i.aen, ptr %18, align 8, !tbaa !30
  %i.aeo = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.aeo, ptr %i.cn, align 8, !tbaa !17
  br label %._crit_edge.i.i694

._crit_edge.i.i694:                               ; preds = %.noexc696, %bb.eu
  %i.aep = phi ptr [ %i.aen, %.noexc696 ], [ %i.cn, %bb.eu ] ; 2 uses
  switch i64 %i.ael, label %bb.ew [
    i64 1, label %bb.ev
    i64 0, label %bb.ex
  ]

bb.ev:                                            ; preds = %._crit_edge.i.i694
  %i.aeq = load i8, ptr %.3253, align 1, !tbaa !17
  store i8 %i.aeq, ptr %i.aep, align 1, !tbaa !17
  br label %bb.ex

bb.ew:                                            ; preds = %._crit_edge.i.i694
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aep, ptr align 1 %.3253, i64 %i.ael, i1 false)
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev, %._crit_edge.i.i694
  %i.aer = load i64, ptr %i.c, align 8, !tbaa !32 ; 2 uses
  store i64 %i.aer, ptr %i.co, align 8, !tbaa !16
  %i.aes = load ptr, ptr %18, align 8, !tbaa !30
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 %i.aer
  store i8 0, ptr %i.aet, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  invoke fastcc void @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.ey unwind label %bb.fa

bb.ey:                                            ; preds = %bb.ex
  %i.aeu = load ptr, ptr %18, align 8, !tbaa !30  ; 2 uses
  %i.aev = icmp eq ptr %i.aeu, %i.cn
  br i1 %i.aev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i698

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i698: ; preds = %bb.ey
  %i.aew = load i64, ptr %i.cn, align 8, !tbaa !17
  %i.aex = add i64 %i.aew, 1
  call void @_ZdlPvm(ptr noundef %i.aeu, i64 noundef %i.aex) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700: ; preds = %bb.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i698
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.fb

bb.ez:                                            ; preds = %.noexc.i695
  %i.aey = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703

bb.fa:                                            ; preds = %bb.ex
  %i.aez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afa = load ptr, ptr %18, align 8, !tbaa !30  ; 2 uses
  %i.afb = icmp eq ptr %i.afa, %i.cn
  br i1 %i.afb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i701

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i701: ; preds = %bb.fa
  %i.afc = load i64, ptr %i.cn, align 8, !tbaa !17
  %i.afd = add i64 %i.afc, 1
  call void @_ZdlPvm(ptr noundef %i.afa, i64 noundef %i.afd) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703: ; preds = %bb.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i701, %bb.ez
  %.pn342 = phi { ptr, i32 } [ %i.aey, %bb.ez ], [ %i.aez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i701 ], [ %i.aez, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %.loopexit.split-lp

bb.fb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700, %bb.et
  %i.afe = load i64, ptr %5, align 8, !tbaa !25   ; 4 uses
  %i.aff = icmp slt i64 %i.afe, 0                 ; 2 uses
  br i1 %i.aff, label %bb.fc, label %bb.ff

bb.fc:                                            ; preds = %bb.fb
  %i.afg = icmp eq i64 %i.afe, -9223372036854775808
  br i1 %i.afg, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  store i8 56, ptr %i.cf, align 4, !tbaa !17
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %.026.i723 = phi ptr [ %i.cf, %bb.fd ], [ %i.by, %bb.fc ]
  %.022.i724 = phi i32 [ 2, %bb.fd ], [ 3, %bb.fc ]
  %.1.i725 = phi i64 [ -922337203685477580, %bb.fd ], [ %i.afe, %bb.fc ]
  %i.afh = sub nsw i64 0, %.1.i725
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fb
  %.127.i704 = phi ptr [ %.026.i723, %bb.fe ], [ %i.by, %bb.fb ] ; 2 uses
  %.123.i705 = phi i32 [ %.022.i724, %bb.fe ], [ 4, %bb.fb ] ; 2 uses
  %.2.i706 = phi i64 [ %i.afh, %bb.fe ], [ %i.afe, %bb.fb ]
  %scevgep40.i707 = getelementptr i8, ptr %.127.i704, i64 -2
  %i.afi = add nsw i32 %.123.i705, -2
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fg, %bb.ff
  %indvars.iv42.i708 = phi i32 [ %indvars.iv.next.i715, %bb.fg ], [ %i.afi, %bb.ff ] ; 2 uses
  %indvars.iv.i709 = phi ptr [ %scevgep41.i714, %bb.fg ], [ %scevgep40.i707, %bb.ff ] ; 2 uses
  %.228.i710 = phi ptr [ %i.afn, %bb.fg ], [ %.127.i704, %bb.ff ] ; 2 uses
  %.224.i711 = phi i32 [ %i.afj, %bb.fg ], [ %.123.i705, %bb.ff ] ; 3 uses
  %.3.i712 = phi i64 [ %i.afo, %bb.fg ], [ %.2.i706, %bb.ff ] ; 3 uses
  %i.afj = add i32 %.224.i711, -1                 ; 2 uses
  %i.afk = urem i64 %.3.i712, 10
  %i.afl = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.afk
  %i.afm = load i8, ptr %i.afl, align 1, !tbaa !17
  %i.afn = getelementptr inbounds i8, ptr %.228.i710, i64 -1 ; 3 uses
  store i8 %i.afm, ptr %i.afn, align 1, !tbaa !17
  %i.afo = udiv i64 %.3.i712, 10
  %.not.i713 = icmp ult i64 %.3.i712, 10
  %scevgep41.i714 = getelementptr i8, ptr %indvars.iv.i709, i64 -1
  %indvars.iv.next.i715 = add i32 %indvars.iv42.i708, -1
  br i1 %.not.i713, label %.preheader.i716, label %bb.fg, !llvm.loop !41

.preheader.i716:                                  ; preds = %bb.fg
  %i.afp = icmp sgt i32 %.224.i711, 1
  br i1 %i.afp, label %.lr.ph.preheader.i720, label %._crit_edge.i717

.lr.ph.preheader.i720:                            ; preds = %.preheader.i716
  %i.afq = getelementptr i8, ptr %.228.i710, i64 -2
  %i.afr = add nsw i32 %.224.i711, -2
  %i.afs = zext nneg i32 %i.afr to i64
  %i.aft = sub nsw i64 0, %i.afs
  %scevgep.i721 = getelementptr i8, ptr %i.afq, i64 %i.aft
  %i.afu = zext nneg i32 %i.afj to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i721, i8 48, i64 %i.afu, i1 false), !tbaa !17
  %i.afv = zext i32 %indvars.iv42.i708 to i64
  %i.afw = sub nsw i64 0, %i.afv
  %scevgep43.i722 = getelementptr i8, ptr %indvars.iv.i709, i64 %i.afw
  br label %._crit_edge.i717

._crit_edge.i717:                                 ; preds = %.lr.ph.preheader.i720, %.preheader.i716
  %.329.lcssa.i718 = phi ptr [ %i.afn, %.preheader.i716 ], [ %scevgep43.i722, %.lr.ph.preheader.i720 ] ; 2 uses
  br i1 %i.aff, label %bb.fh, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit726

bb.fh:                                            ; preds = %._crit_edge.i717
  %i.afx = getelementptr inbounds i8, ptr %.329.lcssa.i718, i64 -1 ; 2 uses
  store i8 45, ptr %i.afx, align 1, !tbaa !17
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit726

_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit726: ; preds = %._crit_edge.i717, %bb.fh
  %.4.i719 = phi ptr [ %i.afx, %bb.fh ], [ %.329.lcssa.i718, %._crit_edge.i717 ] ; 2 uses
  %i.afy = ptrtoint ptr %.4.i719 to i64
  %i.afz = sub i64 %i.cg, %i.afy                  ; 2 uses
  %i.aga = load i64, ptr %i.n, align 8, !tbaa !16
  %i.agb = sub i64 4611686018427387903, %i.aga
  %i.agc = icmp ult i64 %i.agb, %i.afz
  br i1 %i.agc, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i727

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i727: ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit726
  %i.agd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.4.i719, i64 noundef %i.afz)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit730 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit730: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i727
  %i.age = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 3 ; 2 uses
  br label %.thread805

bb.fi:                                            ; preds = %bb.cr
  %21 = sext i8 %i.we to i32
  %isdigittmp = add nsw i32 %21, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %.thread818, label %.thread805

.thread818:                                       ; preds = %bb.fi, %bb.es, %bb.er
  %22 = sext i8 %i.we to i32
  %memchr95.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %22, i64 11) ; 2 uses
  %.not7396.i = icmp eq ptr %memchr95.i, null
  br i1 %.not7396.i, label %.thread805, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread818, %bb.fl
  %memchr100.i = phi ptr [ %memchr.i, %bb.fl ], [ %memchr95.i, %.thread818 ]
  %.04299.i = phi i32 [ %i.agn, %bb.fl ], [ 0, %.thread818 ] ; 3 uses
  %.14998.i.idx = phi i64 [ %.14998.i.add, %bb.fl ], [ 1, %.thread818 ] ; 2 uses
  %i.agf = ptrtoint ptr %memchr100.i to i64
  %i.agg = trunc i64 %i.agf to i32
  %i.agh = sub i32 %i.agg, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.agi = icmp sgt i32 %i.agh, 9
  br i1 %i.agi, label %select.unfold.i, label %bb.fj

bb.fj:                                            ; preds = %.lr.ph.i
  %i.agj = icmp slt i32 %.04299.i, -214748364
  br i1 %i.agj, label %.thread805, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.agk = mul nsw i32 %.04299.i, 10              ; 2 uses
  %i.agl = or disjoint i32 %i.agh, -2147483648
  %i.agm = icmp slt i32 %i.agk, %i.agl
  br i1 %i.agm, label %.thread805, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.agn = sub nsw i32 %i.agk, %i.agh             ; 2 uses
  %.14998.i.add = add nuw nsw i64 %.14998.i.idx, 1 ; 3 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %.14998.i.add
  %i.ago = load i8, ptr %.ptr, align 1, !tbaa !17
  %i.agp = sext i8 %i.ago to i32
  %memchr.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.agp, i64 11) ; 2 uses
  %.not73.i = icmp eq ptr %memchr.i, null
  br i1 %.not73.i, label %select.unfold.i, label %.lr.ph.i

select.unfold.i:                                  ; preds = %bb.fl, %.lr.ph.i
  %.351.ph.i.idx = phi i64 [ %.14998.i.add, %bb.fl ], [ %.14998.i.idx, %.lr.ph.i ] ; 2 uses
  %.2.ph.i = phi i32 [ %i.agn, %bb.fl ], [ %.04299.i, %.lr.ph.i ] ; 4 uses
  %.351.ph.i.ptr = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %.351.ph.i.idx ; 4 uses
  %i.agq = icmp eq i64 %.351.ph.i.idx, 1
  %i.agr = icmp eq i32 %.2.ph.i, -2147483648
  %or.cond76.i.not = select i1 %i.agq, i1 true, i1 %i.agr
  br i1 %or.cond76.i.not, label %.thread805, label %bb.fm

bb.fm:                                            ; preds = %select.unfold.i
  %i.ags = sub nsw i32 0, %.2.ph.i                ; 5 uses
  %or.cond77.i = icmp ugt i32 %i.ags, 1024
  br i1 %or.cond77.i, label %.thread805, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit

_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit: ; preds = %bb.fm
  %i.agt = load i8, ptr %.351.ph.i.ptr, align 1, !tbaa !17
  switch i8 %i.agt, label %.thread805 [
    i8 83, label %bb.fn
    i8 102, label %bb.fn
  ]

bb.fn:                                            ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit
  %i.agu = getelementptr inbounds i8, ptr %.2.lcssa, i64 -1 ; 2 uses
  %.not336 = icmp eq ptr %i.agu, %.3253
  br i1 %.not336, label %bb.fv, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  store ptr %i.db, ptr %19, align 8, !tbaa !13
  store i64 0, ptr %i.dc, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.agv = ptrtoint ptr %i.agu to i64
  %i.agw = ptrtoint ptr %.3253 to i64
  %i.agx = sub i64 %i.agv, %i.agw                 ; 4 uses
  store i64 %i.agx, ptr %i.b, align 8, !tbaa !32
  %i.agy = icmp ugt i64 %i.agx, 15
  br i1 %i.agy, label %.noexc.i736, label %._crit_edge.i.i735

.noexc.i736:                                      ; preds = %bb.fo
  %i.agz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc737 unwind label %bb.ft ; 2 uses

.noexc737:                                        ; preds = %.noexc.i736
  store ptr %i.agz, ptr %19, align 8, !tbaa !30
  %i.aha = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.aha, ptr %i.db, align 8, !tbaa !17
  br label %._crit_edge.i.i735

._crit_edge.i.i735:                               ; preds = %.noexc737, %bb.fo
  %i.ahb = phi ptr [ %i.agz, %.noexc737 ], [ %i.db, %bb.fo ] ; 2 uses
  switch i64 %i.agx, label %bb.fq [
    i64 1, label %bb.fp
    i64 0, label %bb.fr
  ]

bb.fp:                                            ; preds = %._crit_edge.i.i735
  %i.ahc = load i8, ptr %.3253, align 1, !tbaa !17
  store i8 %i.ahc, ptr %i.ahb, align 1, !tbaa !17
  br label %bb.fr

bb.fq:                                            ; preds = %._crit_edge.i.i735
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ahb, ptr align 1 %.3253, i64 %i.agx, i1 false)
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp, %._crit_edge.i.i735
  %i.ahd = load i64, ptr %i.b, align 8, !tbaa !32 ; 2 uses
  store i64 %i.ahd, ptr %i.dc, align 8, !tbaa !16
  %i.ahe = load ptr, ptr %19, align 8, !tbaa !30
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 %i.ahd
  store i8 0, ptr %i.ahf, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  invoke fastcc void @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.fs unwind label %bb.fu

bb.fs:                                            ; preds = %bb.fr
  %i.ahg = load ptr, ptr %19, align 8, !tbaa !30  ; 2 uses
  %i.ahh = icmp eq ptr %i.ahg, %i.db
  br i1 %i.ahh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit741, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i739

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i739: ; preds = %bb.fs
  %i.ahi = load i64, ptr %i.db, align 8, !tbaa !17
  %i.ahj = add i64 %i.ahi, 1
  call void @_ZdlPvm(ptr noundef %i.ahg, i64 noundef %i.ahj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit741

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit741: ; preds = %bb.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i739
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.fv

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i380, %bb.r, %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i541, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i563, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i586, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i600, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i625, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i653, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i690, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i727, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i768, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i514.invoke, %.invoke
  %lpad.loopexit.split-lp1142 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ft:                                            ; preds = %.noexc.i736
  %i.ahk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit744

bb.fu:                                            ; preds = %bb.fr
  %i.ahl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahm = load ptr, ptr %19, align 8, !tbaa !30  ; 2 uses
  %i.ahn = icmp eq ptr %i.ahm, %i.db
  br i1 %i.ahn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit744, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i742

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i742: ; preds = %bb.fu
  %i.aho = load i64, ptr %i.db, align 8, !tbaa !17
  %i.ahp = add i64 %i.aho, 1
  call void @_ZdlPvm(ptr noundef %i.ahm, i64 noundef %i.ahp) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit744

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit744: ; preds = %bb.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i742, %bb.ft
  %.pn337 = phi { ptr, i32 } [ %i.ahk, %bb.ft ], [ %i.ahl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i742 ], [ %i.ahl, %bb.fu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %.loopexit.split-lp

bb.fv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit741, %bb.fn
  %.not873 = icmp eq i32 %.2.ph.i, 0
  br i1 %.not873, label %bb.gh, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.ahq = icmp samesign ugt i32 %i.ags, 18
  br i1 %i.ahq, label %.thread822, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %23 = icmp samesign ugt i32 %i.ags, 15
  br i1 %23, label %.thread822, label %bb.fy

.thread822:                                       ; preds = %bb.fw, %bb.fx
  %.0797825 = phi i32 [ %i.ags, %bb.fx ], [ 18, %bb.fw ] ; 2 uses
  %i.ahr = load i64, ptr %3, align 8, !tbaa !54
  %i.ahs = zext nneg i32 %.0797825 to i64
  %i.aht = getelementptr [8 x i8], ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_16kExp10E, i64 %i.ahs
  %i.ahu = getelementptr i8, ptr %i.aht, i64 -120
  %i.ahv = load i64, ptr %i.ahu, align 8, !tbaa !32
  %i.ahw = mul nsw i64 %i.ahv, %i.ahr
  br label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.ahx = load i64, ptr %3, align 8, !tbaa !54
  %i.ahy = sext i32 %.2.ph.i to i64
  %i.ahz = getelementptr [8 x i8], ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_16kExp10E, i64 %i.ahy
  %i.aia = getelementptr i8, ptr %i.ahz, i64 120
  %i.aib = load i64, ptr %i.aia, align 8, !tbaa !32
  %i.aic = sdiv i64 %i.ahx, %i.aib
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %.thread822
  %.0797824 = phi i32 [ %.0797825, %.thread822 ], [ %i.ags, %bb.fy ] ; 3 uses
  %i.aid = phi i64 [ %i.ahw, %.thread822 ], [ %i.aic, %bb.fy ] ; 4 uses
  %i.aie = icmp slt i64 %i.aid, 0                 ; 2 uses
  br i1 %i.aie, label %bb.ga, label %bb.gd

bb.ga:                                            ; preds = %bb.fz
  %i.aif = add nsw i32 %.0797824, -1
  %i.aig = icmp eq i64 %i.aid, -9223372036854775808
  br i1 %i.aig, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.aih = add nsw i32 %.0797824, -2
  store i8 56, ptr %i.cf, align 4, !tbaa !17
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %.026.i764 = phi ptr [ %i.cf, %bb.gb ], [ %i.by, %bb.ga ]
  %.022.i765 = phi i32 [ %i.aih, %bb.gb ], [ %i.aif, %bb.ga ]
  %.1.i766 = phi i64 [ -922337203685477580, %bb.gb ], [ %i.aid, %bb.ga ]
  %i.aii = sub nsw i64 0, %.1.i766
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.fz
  %.127.i745 = phi ptr [ %.026.i764, %bb.gc ], [ %i.by, %bb.fz ] ; 2 uses
  %.123.i746 = phi i32 [ %.022.i765, %bb.gc ], [ %.0797824, %bb.fz ] ; 2 uses
  %.2.i747 = phi i64 [ %i.aii, %bb.gc ], [ %i.aid, %bb.fz ]
  %scevgep40.i748 = getelementptr i8, ptr %.127.i745, i64 -2
  %i.aij = add nsw i32 %.123.i746, -2
  br label %bb.ge

bb.ge:                                            ; preds = %bb.ge, %bb.gd
  %indvars.iv42.i749 = phi i32 [ %indvars.iv.next.i756, %bb.ge ], [ %i.aij, %bb.gd ] ; 2 uses
  %indvars.iv.i750 = phi ptr [ %scevgep41.i755, %bb.ge ], [ %scevgep40.i748, %bb.gd ] ; 2 uses
  %.228.i751 = phi ptr [ %i.aio, %bb.ge ], [ %.127.i745, %bb.gd ] ; 2 uses
  %.224.i752 = phi i32 [ %i.aik, %bb.ge ], [ %.123.i746, %bb.gd ] ; 3 uses
  %.3.i753 = phi i64 [ %i.aip, %bb.ge ], [ %.2.i747, %bb.gd ] ; 3 uses
  %i.aik = add i32 %.224.i752, -1                 ; 2 uses
  %i.ail = urem i64 %.3.i753, 10
  %i.aim = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.ail
  %i.ain = load i8, ptr %i.aim, align 1, !tbaa !17
  %i.aio = getelementptr inbounds i8, ptr %.228.i751, i64 -1 ; 3 uses
  store i8 %i.ain, ptr %i.aio, align 1, !tbaa !17
  %i.aip = udiv i64 %.3.i753, 10
  %.not.i754 = icmp ult i64 %.3.i753, 10
  %scevgep41.i755 = getelementptr i8, ptr %indvars.iv.i750, i64 -1
  %indvars.iv.next.i756 = add i32 %indvars.iv42.i749, -1
  br i1 %.not.i754, label %.preheader.i757, label %bb.ge, !llvm.loop !41

.preheader.i757:                                  ; preds = %bb.ge
  %i.aiq = icmp sgt i32 %.224.i752, 1
  br i1 %i.aiq, label %.lr.ph.preheader.i761, label %._crit_edge.i758

.lr.ph.preheader.i761:                            ; preds = %.preheader.i757
  %i.air = getelementptr i8, ptr %.228.i751, i64 -2
  %i.ais = add nsw i32 %.224.i752, -2
  %i.ait = zext nneg i32 %i.ais to i64
  %i.aiu = sub nsw i64 0, %i.ait
  %scevgep.i762 = getelementptr i8, ptr %i.air, i64 %i.aiu
  %i.aiv = zext nneg i32 %i.aik to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i762, i8 48, i64 %i.aiv, i1 false), !tbaa !17
  %i.aiw = zext i32 %indvars.iv42.i749 to i64
  %i.aix = sub nsw i64 0, %i.aiw
  %scevgep43.i763 = getelementptr i8, ptr %indvars.iv.i750, i64 %i.aix
  br label %._crit_edge.i758

._crit_edge.i758:                                 ; preds = %.lr.ph.preheader.i761, %.preheader.i757
  %.329.lcssa.i759 = phi ptr [ %i.aio, %.preheader.i757 ], [ %scevgep43.i763, %.lr.ph.preheader.i761 ] ; 2 uses
  br i1 %i.aie, label %bb.gf, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit767

bb.gf:                                            ; preds = %._crit_edge.i758
  %i.aiy = getelementptr inbounds i8, ptr %.329.lcssa.i759, i64 -1 ; 2 uses
  store i8 45, ptr %i.aiy, align 1, !tbaa !17
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit767

_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit767: ; preds = %._crit_edge.i758, %bb.gf
  %.4.i760 = phi ptr [ %i.aiy, %bb.gf ], [ %.329.lcssa.i759, %._crit_edge.i758 ] ; 2 uses
  %i.aiz = load i8, ptr %.351.ph.i.ptr, align 1, !tbaa !17
  %i.aja = icmp eq i8 %i.aiz, 83
  br i1 %i.aja, label %bb.gg, label %.thread826

bb.gg:                                            ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit767
  %i.ajb = getelementptr inbounds i8, ptr %.4.i760, i64 -1 ; 2 uses
  store i8 46, ptr %i.ajb, align 1, !tbaa !17
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.fv
  %.2259.ph = phi ptr [ %i.by, %bb.fv ], [ %i.ajb, %bb.gg ] ; 3 uses
  %.pr = load i8, ptr %.351.ph.i.ptr, align 1, !tbaa !17
  %i.ajc = icmp eq i8 %.pr, 83
  br i1 %i.ajc, label %bb.gi, label %.thread826

bb.gi:                                            ; preds = %bb.gh
  %i.ajd = load i8, ptr %i.s, align 4, !tbaa !35  ; 2 uses
  %i.aje = srem i8 %i.ajd, 10
  %i.ajf = sext i8 %i.aje to i64
  %i.ajg = getelementptr inbounds i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.ajf
  %i.ajh = load i8, ptr %i.ajg, align 1, !tbaa !17
  %i.aji = getelementptr inbounds i8, ptr %.2259.ph, i64 -1
  store i8 %i.ajh, ptr %i.aji, align 1, !tbaa !17
  %i.ajj = sdiv i8 %i.ajd, 10
  %i.ajk = srem i8 %i.ajj, 10
  %i.ajl = sext i8 %i.ajk to i64
  %i.ajm = getelementptr inbounds i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.ajl
  %i.ajn = load i8, ptr %i.ajm, align 1, !tbaa !17
  %i.ajo = getelementptr inbounds i8, ptr %.2259.ph, i64 -2 ; 2 uses
  store i8 %i.ajn, ptr %i.ajo, align 1, !tbaa !17
  br label %.thread826

.thread826:                                       ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit767, %bb.gi, %bb.gh
  %.3260 = phi ptr [ %i.ajo, %bb.gi ], [ %.2259.ph, %bb.gh ], [ %.4.i760, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit767 ] ; 2 uses
  %i.ajp = ptrtoint ptr %.3260 to i64
  %i.ajq = sub i64 %i.cg, %i.ajp                  ; 2 uses
  %i.ajr = load i64, ptr %i.n, align 8, !tbaa !16
  %i.ajs = sub i64 4611686018427387903, %i.ajr
  %i.ajt = icmp ult i64 %i.ajs, %i.ajq
  br i1 %i.ajt, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i768

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i768: ; preds = %.thread826
  %i.aju = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.3260, i64 noundef %i.ajq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit771 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit771: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i768
  %i.ajv = getelementptr inbounds nuw i8, ptr %.351.ph.i.ptr, i64 1 ; 2 uses
  br label %.thread805

.thread805:                                       ; preds = %bb.fj, %bb.fk, %.thread818, %bb.dk, %bb.bj, %select.unfold.i, %bb.fm, %bb.du, %bb.bk, %bb.cf, %bb.cg, %bb.bv, %bb.bl, %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit771, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit603, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit656, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit730, %bb.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit693, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit628, %bb.cq, %bb.s, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit589, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit566, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit544, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit394
  %.6256 = phi ptr [ %.3253, %bb.bj ], [ %i.pk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit394 ], [ %i.rm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit544 ], [ %i.tu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit566 ], [ %i.wc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit589 ], [ %.3253, %bb.s ], [ %.3253, %bb.t ], [ %.3253, %bb.cq ], [ %i.xe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit603 ], [ %i.ze, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit628 ], [ %i.abn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit656 ], [ %i.aee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit693 ], [ %i.age, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit730 ], [ %.3253, %bb.bk ], [ %.3253, %bb.fi ], [ %.3253, %bb.du ], [ %i.ajv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit771 ], [ %.3253, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit ], [ %.3253, %bb.bw ], [ %.3253, %bb.bl ], [ %.3253, %bb.bv ], [ %.3253, %bb.cg ], [ %.3253, %bb.cf ], [ %.3253, %bb.dk ], [ %.3253, %bb.fm ], [ %.3253, %select.unfold.i ], [ %.3253, %.thread818 ], [ %.3253, %bb.fk ], [ %.3253, %bb.fj ] ; 2 uses
  %.6 = phi ptr [ %.2.lcssa, %bb.bj ], [ %i.pk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit394 ], [ %i.rm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit544 ], [ %i.tu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit566 ], [ %i.wc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit589 ], [ %.2.lcssa, %bb.s ], [ %.2.lcssa, %bb.t ], [ %.ptr982, %bb.cq ], [ %i.xe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit603 ], [ %i.ze, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit628 ], [ %i.abn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit656 ], [ %i.aee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit693 ], [ %i.age, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit730 ], [ %.2.lcssa, %bb.bk ], [ %.ptr982, %bb.fi ], [ %.ptr982, %bb.du ], [ %i.ajv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit771 ], [ %.ptr982, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit ], [ %.2.lcssa, %bb.bw ], [ %.2.lcssa, %bb.bl ], [ %.2.lcssa, %bb.bv ], [ %.2.lcssa, %bb.cg ], [ %.2.lcssa, %bb.cf ], [ %.ptr982, %bb.dk ], [ %.ptr982, %bb.fm ], [ %.ptr982, %select.unfold.i ], [ %.ptr982, %.thread818 ], [ %.ptr982, %bb.fk ], [ %.ptr982, %bb.fj ] ; 2 uses
  %.not = icmp eq ptr %.6, %i.cb
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.thread805, %bb.i
  %.0250.lcssa = phi ptr [ %i.bz, %bb.i ], [ %.6256, %.thread805 ] ; 4 uses
  %.not319 = icmp eq ptr %i.cb, %.0250.lcssa
  br i1 %.not319, label %bb.gq, label %bb.gj

bb.gj:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.ajw = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.ajw, ptr %20, align 8, !tbaa !13
  %i.ajx = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store i64 0, ptr %i.ajx, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ajy = ptrtoint ptr %i.cb to i64
  %i.ajz = ptrtoint ptr %.0250.lcssa to i64
  %i.aka = sub i64 %i.ajy, %i.ajz                 ; 4 uses
  store i64 %i.aka, ptr %i.a, align 8, !tbaa !32
  %i.akb = icmp ugt i64 %i.aka, 15
  br i1 %i.akb, label %.noexc.i773, label %._crit_edge.i.i772

.noexc.i773:                                      ; preds = %bb.gj
  %i.akc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc774 unwind label %bb.go ; 2 uses

.noexc774:                                        ; preds = %.noexc.i773
  store ptr %i.akc, ptr %20, align 8, !tbaa !30
  %i.akd = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.akd, ptr %i.ajw, align 8, !tbaa !17
  br label %._crit_edge.i.i772

._crit_edge.i.i772:                               ; preds = %.noexc774, %bb.gj
  %i.ake = phi ptr [ %i.akc, %.noexc774 ], [ %i.ajw, %bb.gj ] ; 2 uses
  switch i64 %i.aka, label %bb.gl [
    i64 1, label %bb.gk
    i64 0, label %bb.gm
  ]

bb.gk:                                            ; preds = %._crit_edge.i.i772
  %i.akf = load i8, ptr %.0250.lcssa, align 1, !tbaa !17
  store i8 %i.akf, ptr %i.ake, align 1, !tbaa !17
  br label %bb.gm

bb.gl:                                            ; preds = %._crit_edge.i.i772
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ake, ptr align 1 %.0250.lcssa, i64 %i.aka, i1 false)
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk, %._crit_edge.i.i772
  %i.akg = load i64, ptr %i.a, align 8, !tbaa !32 ; 2 uses
  store i64 %i.akg, ptr %i.ajx, align 8, !tbaa !16
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051213time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE:bb.a
  call void @_ZdlPvm(ptr noundef %i.akt, i64 noundef %i.akw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit784

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit784: ; preds = %bb.gs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i782
  resume { ptr, i32 } %.pn370.pn.pn.pn.pn.pn
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZNK4absl12lts_2025051213time_internal4cctz9time_zone6lookupERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEE(ptr dead_on_unwind writable sret(%"struct.absl::lts_20250512::time_internal::cctz::time_zone::absolute_lookup") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16
  %i.c = shl i64 %i.b, 1                          ; 7 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %.noexc, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #19
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp ne i64 %i.c, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #21 ; 5 uses
  store i8 0, ptr %i.e, align 1, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = add nsw i64 %i.c, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.f, i8 0, i64 %i.g, i1 false)
  %i.h = load ptr, ptr %1, align 8, !tbaa !30
  %i.i = tail call i64 @strftime(ptr noundef nonnull %i.e, i64 noundef %i.c, ptr noundef %i.h, ptr noundef nonnull %2) #18 ; 2 uses
  %.not19 = icmp eq i64 %i.i, 0
  br i1 %.not19, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.3, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.2, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.1, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %.lcssa43 = phi ptr [ %i.e, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.s, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.1 ], [ %i.aa, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.2 ], [ %i.ai, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.3 ] ; 3 uses
  %.lcssa41 = phi i64 [ %i.i, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.w, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.1 ], [ %i.ae, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.2 ], [ %i.am, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.3 ] ; 2 uses
  %.lcssa39 = phi i64 [ %i.c, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.q, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.1 ], [ %i.y, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.2 ], [ %i.ag, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.3 ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !16
  %i.l = sub i64 4611686018427387903, %i.k
  %i.m = icmp ult i64 %i.l, %.lcssa41
  br i1 %i.m, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #19
          to label %.noexc22 unwind label %_ZNSt6vectorIcSaIcEED2Ev.exit

.noexc22:                                         ; preds = %bb.c
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.b
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.lcssa43, i64 noundef %.lcssa41)
          to label %_ZNSt6vectorIcSaIcEED2Ev.exit25 unwind label %_ZNSt6vectorIcSaIcEED2Ev.exit ; 0 uses

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa43, i64 noundef %.lcssa39) #20
  resume { ptr, i32 } %i.o

_ZNSt6vectorIcSaIcEED2Ev.exit25:                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa43, i64 noundef %.lcssa39) #20
  br label %.loopexit

bb.d:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.c) #20
  %i.p = load i64, ptr %i.a, align 8, !tbaa !16
  %i.q = shl i64 %i.p, 2                          ; 7 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %.noexc, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.1

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.1: ; preds = %bb.d
  %.not.i.i.i.i.1 = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.1)
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #21 ; 5 uses
  store i8 0, ptr %i.s, align 1, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.u = add nsw i64 %i.q, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.t, i8 0, i64 %i.u, i1 false)
  %i.v = load ptr, ptr %1, align 8, !tbaa !30
  %i.w = tail call i64 @strftime(ptr noundef nonnull %i.s, i64 noundef %i.q, ptr noundef %i.v, ptr noundef nonnull %2) #18 ; 2 uses
  %.not19.1 = icmp eq i64 %i.w, 0
  br i1 %.not19.1, label %bb.e, label %bb.b

bb.e:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.1
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.q) #20
  %i.x = load i64, ptr %i.a, align 8, !tbaa !16
  %i.y = shl i64 %i.x, 3                          ; 7 uses
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %.noexc, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.2

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.2: ; preds = %bb.e
  %.not.i.i.i.i.2 = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.2)
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #21 ; 5 uses
  store i8 0, ptr %i.aa, align 1, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ac = add nsw i64 %i.y, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ab, i8 0, i64 %i.ac, i1 false)
  %i.ad = load ptr, ptr %1, align 8, !tbaa !30
  %i.ae = tail call i64 @strftime(ptr noundef nonnull %i.aa, i64 noundef %i.y, ptr noundef %i.ad, ptr noundef nonnull %2) #18 ; 2 uses
  %.not19.2 = icmp eq i64 %i.ae, 0
  br i1 %.not19.2, label %bb.f, label %bb.b

bb.f:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.y) #20
  %i.af = load i64, ptr %i.a, align 8, !tbaa !16
  %i.ag = shl i64 %i.af, 4                        ; 7 uses
  %i.ah = icmp slt i64 %i.ag, 0
  br i1 %i.ah, label %.noexc, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.3

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.3: ; preds = %bb.f
  %.not.i.i.i.i.3 = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.3)
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #21 ; 5 uses
  store i8 0, ptr %i.ai, align 1, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = add nsw i64 %i.ag, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, i8 0, i64 %i.ak, i1 false)
  %i.al = load ptr, ptr %1, align 8, !tbaa !30
  %i.am = tail call i64 @strftime(ptr noundef nonnull %i.ai, i64 noundef %i.ag, ptr noundef %i.al, ptr noundef nonnull %2) #18 ; 2 uses
  %.not19.3 = icmp eq i64 %i.am, 0
  br i1 %.not19.3, label %.loopexit.loopexit, label %bb.b

.loopexit.loopexit:                               ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.ag) #20
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt6vectorIcSaIcEED2Ev.exit25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !32
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !30
  %i.i = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.i, ptr %i.b, align 8, !tbaa !17
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a, %.noexc
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i
  %i.k = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.k, ptr %i.j, align 1, !tbaa !17
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %1, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  store i64 %i.l, ptr %i.c, align 8, !tbaa !16
  %i.m = load ptr, ptr %0, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  store i8 0, ptr %i.n, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_16ToWeekERKNS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 7) %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !56
  %i.b = srem i64 %i.a, 400                       ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !57    ; 5 uses
  %2 = sext i8 %i.d to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !58    ; 2 uses
  %i.g = sext i8 %i.f to i64                      ; 2 uses
  %i.h = add nsw i64 %i.g, -1
  %or.cond7.i = icmp ult i64 %i.h, 28
  %3 = add nsw i64 %2, -1
  %i.i = icmp ult i64 %3, 12
  %or.cond11.i = and i1 %i.i, %or.cond7.i
  br i1 %or.cond11.i, label %_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_secEllllll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i8 %i.d, 12
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_monEllllaaa.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = sdiv i8 %i.d, 12
  %.sext = sext i8 %i.j to i64
  %i.k = add nsw i64 %i.b, %.sext                 ; 2 uses
  %i.l = srem i8 %i.d, 12                         ; 3 uses
  %i.m = icmp slt i8 %i.l, 1
  br i1 %i.m, label %bb.d, label %_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_monEllllaaa.exit.i

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i64 %i.k, -1
  %i.o = add nsw i8 %i.l, 12
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_monEllllaaa.exit.i

_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_monEllllaaa.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %.016.i.i = phi i8 [ %i.o, %bb.d ], [ %i.l, %bb.c ], [ 12, %bb.b ]
  %.0.i.i = phi i64 [ %i.n, %bb.d ], [ %i.k, %bb.c ], [ %i.b, %bb.b ]
  %i.p = tail call { i64, i64 } @_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %.0.i.i, i8 noundef signext %.016.i.i, i64 noundef %i.g, i64 noundef 0, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #18 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i64 } %i.p, 1 ; 2 uses
  %.fca.0.extract22.i = extractvalue { i64, i64 } %i.p, 0
  %.sroa.6.sroa.6.0.extract.shift112146.i = lshr i64 %.fca.1.extract.i.i, 8
  %i.q = trunc i64 %.fca.1.extract.i.i to i8
  %i.r = trunc i64 %.sroa.6.sroa.6.0.extract.shift112146.i to i8
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_secEllllll.exit

_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_secEllllll.exit: ; preds = %bb.a, %_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_monEllllaaa.exit.i
  %.sroa.6.sroa.6.0.in.i = phi i8 [ %i.f, %bb.a ], [ %i.r, %_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_monEllllaaa.exit.i ]
  %.sroa.6.sroa.0.0.in.i = phi i8 [ %i.d, %bb.a ], [ %i.q, %_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_monEllllaaa.exit.i ]
  %.sroa.0.0.i = phi i64 [ %i.b, %bb.a ], [ %.fca.0.extract22.i, %_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_monEllllaaa.exit.i ] ; 3 uses
  %i.s = srem i64 %.sroa.0.0.i, 400
  %i.t = add nsw i64 %i.s, 2399                   ; 3 uses
  %i.u = lshr i64 %i.t, 2
  %.lhs.trunc.i.i = trunc nuw nsw i64 %i.t to i16 ; 2 uses
  %i.v = udiv i16 %.lhs.trunc.i.i, 100
  %i.w = udiv i16 %.lhs.trunc.i.i, 400
  %i.x = add nuw nsw i64 %i.u, %i.t
  %i.y = trunc nuw nsw i64 %i.x to i16
  %reass.sub = sub nsw i16 %i.w, %i.v
  %i.z = add nuw nsw i16 %reass.sub, 1
  %.lhs.trunc = add nsw i16 %i.z, %i.y
  %i.aa = urem i16 %.lhs.trunc, 7
  %.zext = zext nneg i16 %i.aa to i64
  %i.ab = getelementptr [4 x i8], ptr @__const._ZN4absl12lts_2025051213time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE.k_weekday_by_mon_off, i64 %.zext
  %i.ac = getelementptr i8, ptr %i.ab, i64 24
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_secEllllll.exit
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_secEllllll.exit ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN4absl12lts_2025051213time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.k_weekdays_back, i64 %indvars.iv.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !28
  %i.ag = icmp eq i32 %i.ad, %i.af
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.ag, label %.preheader.i, label %bb.e, !llvm.loop !0

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %indvars.iv17.i = phi i64 [ %indvars.iv.next18.i, %.preheader.i ], [ %indvars.iv.i, %bb.e ]
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1 ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN4absl12lts_2025051213time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.k_weekdays_back, i64 %indvars.iv.next18.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !28
  %i.aj = icmp eq i32 %1, %i.ai
  br i1 %i.aj, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit, label %.preheader.i, !llvm.loop !1

_ZN4absl12lts_2025051213time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit: ; preds = %.preheader.i
  %i.ak = sub nuw nsw i64 %indvars.iv.next18.i, %indvars.iv.i
  %i.al = and i64 %i.ak, 4294967295
  %i.am = tail call { i64, i64 } @_ZN4absl12lts_2025051213time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl(i64 %.sroa.0.0.i, i64 257, i64 noundef %i.al) #18 ; 2 uses
  %i.an = extractvalue { i64, i64 } %i.am, 0
  %i.ao = extractvalue { i64, i64 } %i.am, 1      ; 2 uses
  %.sroa.2.8.extract.trunc.i.i = trunc i64 %i.ao to i8
  %.sroa.4.8.extract.shift.i.i = lshr i64 %i.ao, 8
  %.sroa.4.8.extract.trunc.i.i = trunc i64 %.sroa.4.8.extract.shift.i.i to i8
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2025051213time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %.sroa.0.0.i, i8 noundef signext %.sroa.6.sroa.0.0.in.i, i8 noundef signext %.sroa.6.sroa.6.0.in.i, i64 noundef %i.an, i8 noundef signext %.sroa.2.8.extract.trunc.i.i, i8 noundef signext %.sroa.4.8.extract.trunc.i.i) #18
  %i.aq = sdiv i64 %i.ap, 7
  %i.ar = trunc i64 %i.aq to i32
  ret i32 %i.ar
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_(ptr nofree noundef readonly captures(address, ret: address, provenance) %0, i32 noundef range(i32 0, 3) %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 6, 1025) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #4 {
bb.a:
  %.not70 = icmp eq ptr %0, null
  br i1 %.not70, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !17      ; 2 uses
  %i.b = icmp eq i8 %i.a, 45                      ; 4 uses
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  switch i32 %1, label %.fold.split [
    i32 0, label %bb.d
    i32 1, label %.thread
  ]

.fold.split:                                      ; preds = %bb.c
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.fold.split
  %.052 = phi i32 [ %1, %bb.c ], [ 1, %.fold.split ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.c, align 1, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.d = phi i8 [ %.pre, %bb.d ], [ %i.a, %bb.b ]
  %.153 = phi i32 [ %.052, %bb.d ], [ %1, %bb.b ]
  %.048 = phi ptr [ %i.c, %bb.d ], [ %0, %bb.b ]  ; 3 uses
  %i.e = sext i8 %i.d to i32
  %memchr95 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.e, i64 11) ; 2 uses
  %.not7396 = icmp eq ptr %memchr95, null
  br i1 %.not7396, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.i
  %memchr100 = phi ptr [ %memchr, %bb.i ], [ %memchr95, %bb.e ]
  %.04299 = phi i32 [ %i.n, %bb.i ], [ 0, %bb.e ] ; 4 uses
  %.14998 = phi ptr [ %i.o, %bb.i ], [ %.048, %bb.e ] ; 4 uses
  %.25497 = phi i32 [ %.557, %bb.i ], [ %.153, %bb.e ] ; 2 uses
  %i.f = ptrtoint ptr %memchr100 to i64
  %i.g = trunc i64 %i.f to i32
  %i.h = sub i32 %i.g, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.i = icmp sgt i32 %i.h, 9
  br i1 %i.i, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.j = icmp slt i32 %.04299, -214748364
  br i1 %i.j, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = mul nsw i32 %.04299, 10                  ; 2 uses
  %i.l = or disjoint i32 %i.h, -2147483648
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %select.unfold, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = sub nsw i32 %i.k, %i.h                   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.14998, i64 1 ; 4 uses
  switch i32 %.25497, label %.fold.split123 [
    i32 0, label %bb.i
    i32 1, label %select.unfold
  ]

.fold.split123:                                   ; preds = %bb.h
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.fold.split123
  %.557 = phi i32 [ %.25497, %bb.h ], [ 1, %.fold.split123 ]
  %i.p = load i8, ptr %i.o, align 1, !tbaa !17
  %i.q = sext i8 %i.p to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.q, i64 11) ; 2 uses
  %.not73 = icmp eq ptr %memchr, null
  br i1 %.not73, label %select.unfold, label %.lr.ph

select.unfold:                                    ; preds = %bb.g, %bb.f, %.lr.ph, %bb.i, %bb.h, %bb.e
  %.351.ph = phi ptr [ %.048, %bb.e ], [ %i.o, %bb.h ], [ %.14998, %bb.f ], [ %.14998, %.lr.ph ], [ %i.o, %bb.i ], [ %.14998, %bb.g ] ; 2 uses
  %.247.ph.not = phi i1 [ true, %bb.e ], [ true, %bb.h ], [ false, %bb.f ], [ true, %.lr.ph ], [ true, %bb.i ], [ false, %bb.g ]
  %.2.ph = phi i32 [ 0, %bb.e ], [ %i.n, %bb.h ], [ %.04299, %bb.f ], [ %.04299, %.lr.ph ], [ %i.n, %bb.i ], [ -2147483640, %bb.g ] ; 4 uses
  %i.r = icmp ne ptr %.351.ph, %.048
  %or.cond.not94 = and i1 %i.r, %.247.ph.not
  %i.s = icmp ne i32 %.2.ph, -2147483648
  %or.cond3 = select i1 %i.b, i1 true, i1 %i.s
  %or.cond76 = select i1 %or.cond.not94, i1 %or.cond3, i1 false
  %or.cond76.not = xor i1 %or.cond76, true
  %i.t = icmp eq i32 %.2.ph, 0
  %or.cond5.not = select i1 %i.b, i1 %i.t, i1 false
  %or.cond80 = select i1 %or.cond76.not, i1 true, i1 %or.cond5.not
  br i1 %or.cond80, label %.thread, label %bb.j

bb.j:                                             ; preds = %select.unfold
  %i.u = sub nsw i32 0, %.2.ph
  %spec.select = select i1 %i.b, i32 %.2.ph, i32 %i.u ; 3 uses
  %.not = icmp sgt i32 %2, %spec.select
  %.not75 = icmp sgt i32 %spec.select, %3
  %or.cond77 = or i1 %.not, %.not75
  br i1 %or.cond77, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %spec.select, ptr %4, align 4, !tbaa !21
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.k, %bb.j, %select.unfold, %bb.a
  %.5 = phi ptr [ null, %bb.a ], [ null, %select.unfold ], [ %.351.ph, %bb.k ], [ null, %bb.j ], [ null, %bb.c ]
  ret ptr %.5
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051213time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS2_9time_zoneEPNSt6chrono10time_pointINSF_3_V212system_clockENSF_8durationIlSt5ratioILl1ELl1EEEEEEPNSJ_IlSK_ILl1ELl1000000000000000EEEEPS9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %6 = alloca %struct.tm, align 16                ; 18 uses
  %7 = alloca %"class.std::chrono::duration.1", align 8 ; 9 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051213time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS2_9time_zoneEPNSt6chrono10time_pointINSF_3_V212system_clockENSF_8durationIlSt5ratioILl1ELl1EEEEEEPNSJ_IlSK_ILl1ELl1000000000000000EEEEPS9_:bb.a
.noexc582:                                        ; preds = %bb.cb
  %.pre.i.i = load ptr, ptr %8, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i: ; preds = %.noexc582, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.kv = phi ptr [ %.pre.i.i, %.noexc582 ], [ %i.kp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.kn
  store i8 %i.kj, ptr %i.kw, align 1, !tbaa !17
  store i64 %i.ko, ptr %i.r, align 8, !tbaa !16
  %i.kx = load ptr, ptr %8, align 8, !tbaa !30
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.ko
  store i8 0, ptr %i.ky, align 1, !tbaa !17
  %i.kz = load i8, ptr %i.km, align 1, !tbaa !17  ; 2 uses
  %.not.i581 = icmp eq i8 %i.kz, 0
  br i1 %.not.i581, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i579, !llvm.loop !63

_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i579, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i, %bb.bz
  %.0.lcssa.i = phi ptr [ %.11717521141, %bb.bz ], [ %.013.i, %.lr.ph.i579 ], [ %i.km, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i ]
  %i.la = load i64, ptr %i.r, align 8, !tbaa !16
  %i.lb = icmp eq i64 %i.la, 0
  br i1 %i.lb, label %.critedge, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit361

bb.cc:                                            ; preds = %bb.f
  %i.lc = load i8, ptr %.11717521141, align 1, !tbaa !17 ; 2 uses
  %i.ld = icmp eq i8 %i.lc, 45                    ; 4 uses
  br i1 %i.ld, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.le = getelementptr inbounds nuw i8, ptr %.11717521141, i64 1 ; 2 uses
  %.pre.i609 = load i8, ptr %i.le, align 1, !tbaa !17
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.lf = phi i8 [ %.pre.i609, %bb.cd ], [ %i.lc, %bb.cc ]
  %.048.i584 = phi ptr [ %i.le, %bb.cd ], [ %.11717521141, %bb.cc ] ; 3 uses
  %i.lg = sext i8 %i.lf to i32
  %memchr94.i585 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.lg, i64 11) ; 2 uses
  %.not7295.i586 = icmp eq ptr %memchr94.i585, null
  br i1 %.not7295.i586, label %select.unfold.i595, label %.lr.ph.i587

.lr.ph.i587:                                      ; preds = %bb.ce, %bb.ch
  %memchr99.i588 = phi ptr [ %memchr.i593, %bb.ch ], [ %memchr94.i585, %bb.ce ]
  %.04298.i589 = phi i64 [ %i.lr, %bb.ch ], [ 0, %bb.ce ] ; 4 uses
  %.14997.i590 = phi ptr [ %i.lq, %bb.ch ], [ %.048.i584, %bb.ce ] ; 4 uses
  %i.lh = ptrtoint ptr %memchr99.i588 to i64
  %i.li = trunc i64 %i.lh to i32
  %i.lj = sub i32 %i.li, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
  %i.lk = icmp sgt i32 %i.lj, 9
  br i1 %i.lk, label %select.unfold.i595, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph.i587
  %i.ll = icmp slt i64 %.04298.i589, -922337203685477580
  br i1 %i.ll, label %select.unfold.i595, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lm = mul nsw i64 %.04298.i589, 10            ; 2 uses
  %i.ln = sext i32 %i.lj to i64                   ; 2 uses
  %i.lo = or disjoint i64 %i.ln, -9223372036854775808
  %i.lp = icmp slt i64 %i.lm, %i.lo
  br i1 %i.lp, label %select.unfold.i595, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.lq = getelementptr inbounds nuw i8, ptr %.14997.i590, i64 1 ; 3 uses
  %i.lr = sub nsw i64 %i.lm, %i.ln                ; 2 uses
  %i.ls = load i8, ptr %i.lq, align 1, !tbaa !17
  %i.lt = sext i8 %i.ls to i32
  %memchr.i593 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.lt, i64 11) ; 2 uses
  %.not72.i594 = icmp eq ptr %memchr.i593, null
  br i1 %.not72.i594, label %select.unfold.i595, label %.lr.ph.i587

select.unfold.i595:                               ; preds = %bb.ch, %bb.cg, %bb.cf, %.lr.ph.i587, %bb.ce
  %.351.ph.i596 = phi ptr [ %.048.i584, %bb.ce ], [ %i.lq, %bb.ch ], [ %.14997.i590, %.lr.ph.i587 ], [ %.14997.i590, %bb.cf ], [ %.14997.i590, %bb.cg ] ; 2 uses
  %.247.ph.not.i597 = phi i1 [ true, %bb.ce ], [ true, %bb.ch ], [ true, %.lr.ph.i587 ], [ false, %bb.cf ], [ false, %bb.cg ]
  %.2.ph.i598 = phi i64 [ 0, %bb.ce ], [ %i.lr, %bb.ch ], [ %.04298.i589, %.lr.ph.i587 ], [ %.04298.i589, %bb.cf ], [ -9223372036854775800, %bb.cg ] ; 4 uses
  %i.lu = icmp ne ptr %.351.ph.i596, %.048.i584
  %or.cond.not93.i599 = and i1 %i.lu, %.247.ph.not.i597
  %i.lv = icmp ne i64 %.2.ph.i598, -9223372036854775808
  %or.cond3.i600 = select i1 %i.ld, i1 true, i1 %i.lv
  %or.cond75.i601 = select i1 %or.cond.not93.i599, i1 %or.cond3.i600, i1 false
  %or.cond75.not.i602 = xor i1 %or.cond75.i601, true
  %i.lw = icmp eq i64 %.2.ph.i598, 0
  %or.cond5.not.i603 = select i1 %i.ld, i1 %i.lw, i1 false
  %or.cond79.i604 = select i1 %or.cond75.not.i602, i1 true, i1 %or.cond5.not.i603
  %i.lx = sub nsw i64 0, %.2.ph.i598
  %spec.select.i605 = select i1 %i.ld, i64 %.2.ph.i598, i64 %i.lx
  br i1 %or.cond79.i604, label %.critedge, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit361, !llvm.loop !62

bb.ci:                                            ; preds = %bb.f
  %i.ly = load i8, ptr %i.at, align 1, !tbaa !17
  switch i8 %i.ly, label %bb.dm [
    i8 122, label %bb.cl
    i8 58, label %bb.cj
  ]

bb.cj:                                            ; preds = %bb.ci
  %i.lz = getelementptr inbounds nuw i8, ptr %.02157511142, i64 3
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !17
  switch i8 %i.ma, label %bb.dm [
    i8 122, label %bb.cl
    i8 58, label %bb.ck
  ]

bb.ck:                                            ; preds = %bb.cj
  %i.mb = getelementptr inbounds nuw i8, ptr %.02157511142, i64 4
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !17
  %i.md = icmp eq i8 %i.mc, 122
  br i1 %i.md, label %bb.cl, label %bb.dm

bb.cl:                                            ; preds = %bb.cj, %bb.ci, %bb.ck
  %i.me = call fastcc noundef ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_111ParseOffsetEPKcS6_Pi(ptr noundef %.11717521141, i8 58, ptr noundef %i.c) ; 2 uses
  %.not291 = icmp ne ptr %i.me, null
  %spec.select308 = select i1 %.not291, i1 true, i1 %.0181.ph790
  %i.mf = load i8, ptr %i.at, align 1, !tbaa !17
  %i.mg = icmp eq i8 %i.mf, 122
  br i1 %i.mg, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.mh = getelementptr inbounds nuw i8, ptr %.02157511142, i64 3
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !17
  %i.mj = icmp eq i8 %i.mi, 122
  %i.mk = select i1 %i.mj, i64 2, i64 3
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cl, %bb.cm
  %i.ml = phi i64 [ %i.mk, %bb.cm ], [ 1, %bb.cl ]
  %i.mm = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ml
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit361, !llvm.loop !62

bb.co:                                            ; preds = %bb.f
  %i.mn = load i8, ptr %.11717521141, align 1, !tbaa !17
  %i.mo = icmp eq i8 %i.mn, 37
  %i.mp = getelementptr inbounds nuw i8, ptr %.11717521141, i64 1
  br i1 %i.mo, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit361, label %.critedge, !llvm.loop !62

bb.cp:                                            ; preds = %bb.f
  %i.mq = load i8, ptr %i.at, align 1, !tbaa !17  ; 3 uses
  switch i8 %i.mq, label %bb.dd [
    i8 84, label %bb.cq
    i8 122, label %bb.ct
    i8 42, label %bb.cs
    i8 52, label %bb.db
  ]

bb.cq:                                            ; preds = %bb.cp
  %i.mr = load i8, ptr %.11717521141, align 1, !tbaa !17
  switch i8 %i.mr, label %.critedge [
    i8 84, label %bb.cr
    i8 116, label %bb.cr
  ], !llvm.loop !62

bb.cr:                                            ; preds = %bb.cq, %bb.cq
  %i.ms = getelementptr inbounds nuw i8, ptr %.11717521141, i64 1
  %i.mt = getelementptr inbounds nuw i8, ptr %.02157511142, i64 3
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit361, !llvm.loop !62

bb.cs:                                            ; preds = %bb.cp
  %i.mu = getelementptr inbounds nuw i8, ptr %.02157511142, i64 3
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !17
  switch i8 %i.mv, label %.thread673.thread [
    i8 122, label %bb.ct
    i8 83, label %bb.cu
    i8 102, label %bb.cy
  ]

bb.ct:                                            ; preds = %bb.cs, %bb.cp
  %i.mw = call fastcc noundef ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_111ParseOffsetEPKcS6_Pi(ptr noundef %.11717521141, i8 58, ptr noundef %i.c) ; 2 uses
  %.not290 = icmp ne ptr %i.mw, null
  %spec.select309.a = select i1 %.not290, i1 true, i1 %.0181.ph790
  %i.mx = load i8, ptr %i.at, align 1, !tbaa !17
  %i.my = icmp eq i8 %i.mx, 122
  %i.mz = select i1 %i.my, i64 1, i64 2
  %i.na = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.mz
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit361, !llvm.loop !62

bb.cu:                                            ; preds = %bb.cs
  %i.nb = call fastcc noundef ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_(ptr noundef nonnull %.11717521141, i32 noundef 2, i32 noundef 0, i32 noundef 60, ptr noundef %6) ; 4 uses
  %.not289 = icmp eq ptr %i.nb, null
  br i1 %.not289, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !17
  %i.nd = icmp eq i8 %i.nc, 46
  br i1 %i.nd, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nb, i64 1
  %i.nf = call fastcc noundef ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_115ParseSubSecondsEPKcPNSt6chrono8durationIlSt5ratioILl1ELl1000000000000000EEEE(ptr noundef %i.ne, ptr noundef %7)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu
  %.5175 = phi ptr [ null, %bb.cu ], [ %i.nb, %bb.cv ], [ %i.nf, %bb.cw ]
  %i.ng = getelementptr inbounds nuw i8, ptr %.02157511142, i64 4
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit361, !llvm.loop !62

.thread673.thread:                                ; preds = %bb.cs
  %i.nh = getelementptr inbounds nuw i8, ptr %.02157511142, i64 3
  br label %bb.dm

bb.cy:                                            ; preds = %bb.cs
  %i.ni = load i8, ptr %.11717521141, align 1, !tbaa !17
  %21 = sext i8 %i.ni to i32
  %isdigittmp287 = add nsw i32 %21, -48
  %isdigit288 = icmp ult i32 %isdigittmp287, 10
  br i1 %isdigit288, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.nj = call fastcc noundef ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_115ParseSubSecondsEPKcPNSt6chrono8durationIlSt5ratioILl1ELl1000000000000000EEEE(ptr noundef %.11717521141, ptr noundef %7)
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.6176 = phi ptr [ %.11717521141, %bb.cy ], [ %i.nj, %bb.cz ]
  %i.nk = getelementptr inbounds nuw i8, ptr %.02157511142, i64 4
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit361, !llvm.loop !62

bb.db:                                            ; preds = %bb.cp
  %i.nl = getelementptr inbounds nuw i8, ptr %.02157511142, i64 3
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !17
  %i.nn = icmp eq i8 %i.nm, 89
  br i1 %i.nn, label %bb.dc, label %.thread670.a

bb.dc:                                            ; preds = %bb.db
  %i.no = call fastcc noundef ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_(ptr noundef %.11717521141, i32 noundef 4, i64 noundef -999, i64 noundef 9999, ptr noundef %i.b) ; 3 uses
  %.not286 = icmp ne ptr %i.no, null
  %i.np = ptrtoint ptr %i.no to i64
  %i.nq = ptrtoint ptr %.11717521141 to i64
  %i.nr = sub i64 %i.np, %i.nq
  %i.ns = icmp eq i64 %i.nr, 4                    ; 2 uses
  %.not798 = and i1 %.not286, %i.ns
  %.2179 = select i1 %.not798, i1 true, i1 %.0177.ph792
  %i.nt = getelementptr inbounds nuw i8, ptr %.02157511142, i64 4
  br i1 %i.ns, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit361, label %.critedge

bb.dd:                                            ; preds = %bb.cp
  %22 = sext i8 %i.mq to i32
  %isdigittmp = add nsw i32 %22, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %.thread670.a, label %.thread673

.thread670.a:                                     ; preds = %bb.db, %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !21
  %i.nu = call fastcc noundef ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_(ptr noundef nonnull %i.at, i32 noundef 0, i32 noundef 0, i32 noundef 1024, ptr noundef %i.d) ; 3 uses
  %.not281 = icmp eq ptr %i.nu, null
  br i1 %.not281, label %.thread677, label %bb.de

bb.de:                                            ; preds = %.thread670.a
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !17
  switch i8 %i.nv, label %.thread677 [
    i8 83, label %bb.df
    i8 102, label %bb.di
  ]

bb.df:                                            ; preds = %bb.de
  %i.nw = call fastcc noundef ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_(ptr noundef nonnull %.11717521141, i32 noundef 2, i32 noundef 0, i32 noundef 60, ptr noundef %6) ; 4 uses
  %.not284.a = icmp eq ptr %i.nw, null
  br i1 %.not284.a, label %bb.dk, label %bb.dg, !llvm.loop !62

bb.dg:                                            ; preds = %bb.df
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !17
  %i.ny = icmp eq i8 %i.nx, 46
  br i1 %i.ny, label %bb.dh, label %bb.dk, !llvm.loop !62

bb.dh:                                            ; preds = %bb.dg
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nw, i64 1
  br label %.sink.split, !llvm.loop !62

bb.di:                                            ; preds = %bb.de
  %i.oa = load i8, ptr %.11717521141, align 1, !tbaa !17
  %23 = sext i8 %i.oa to i32
  %isdigittmp282 = add nsw i32 %23, -48
  %isdigit283 = icmp ult i32 %isdigittmp282, 10
  br i1 %isdigit283, label %bb.dj, label %bb.dk, !llvm.loop !62

bb.dj:                                            ; preds = %bb.di
  br label %.sink.split, !llvm.loop !62

.thread677:                                       ; preds = %bb.de, %.thread670.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %.pre = load i8, ptr %i.at, align 1, !tbaa !17
  %i.ob = freeze i8 %.pre
  br label %.thread673

.sink.split:                                      ; preds = %bb.dh, %bb.dj
  %.1171752.lcssa1021.sink = phi ptr [ %.11717521141, %bb.dj ], [ %i.nz, %bb.dh ]
  %i.oc = call fastcc noundef ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_115ParseSubSecondsEPKcPNSt6chrono8durationIlSt5ratioILl1ELl1000000000000000EEEE(ptr noundef %.1171752.lcssa1021.sink, ptr noundef %7)
  br label %bb.dk

bb.dk:                                            ; preds = %.sink.split, %bb.di, %bb.df, %bb.dg
  %.10 = phi ptr [ %.11717521141, %bb.di ], [ null, %bb.df ], [ %i.nw, %bb.dg ], [ %i.oc, %.sink.split ]
  %.4219 = getelementptr inbounds nuw i8, ptr %i.nu, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit361

.thread673:                                       ; preds = %.thread677, %bb.dd
  %.fr = phi i8 [ %i.mq, %bb.dd ], [ %i.ob, %.thread677 ] ; 3 uses
  %i.od = icmp ne i8 %.fr, 99
  %i.oe = icmp ne i8 %.fr, 88
  %.not801 = and i1 %i.oe, %i.od
  %.2210 = select i1 %.not801, i1 %.0208.ph786, i1 false
  %.not285 = icmp eq i8 %.fr, 0
  %i.of = getelementptr inbounds nuw i8, ptr %.02157511142, i64 3
  %spec.select1077 = select i1 %.not285, ptr %i.at, ptr %i.of
  br label %bb.dm

bb.dl:                                            ; preds = %bb.f
  %i.og = load i8, ptr %i.at, align 1, !tbaa !17  ; 3 uses
  %i.oh = icmp ne i8 %i.og, 72
  %spec.select311 = select i1 %i.oh, i1 %.0208.ph786, i1 false
  %i.oi = icmp eq i8 %i.og, 73
  %.4212 = select i1 %i.oi, i1 true, i1 %spec.select311
  %.not280 = icmp eq i8 %i.og, 0
  %i.oj = getelementptr inbounds nuw i8, ptr %.02157511142, i64 3
  %spec.select317 = select i1 %.not280, ptr %i.at, ptr %i.oj
  br label %bb.dm

bb.dm:                                            ; preds = %.thread673, %.thread673.thread, %bb.f, %bb.bw, %bb.bx, %bb.ck, %bb.ci, %bb.cj, %bb.dl
  %.6221 = phi ptr [ %i.at, %bb.f ], [ %i.at, %bb.bw ], [ %i.at, %bb.bx ], [ %i.at, %bb.ck ], [ %i.at, %bb.cj ], [ %i.at, %bb.ci ], [ %spec.select317, %bb.dl ], [ %i.nh, %.thread673.thread ], [ %spec.select1077, %.thread673 ] ; 2 uses
  %.5213 = phi i1 [ %.0208.ph786, %bb.f ], [ true, %bb.bw ], [ false, %bb.bx ], [ %.0208.ph786, %bb.ck ], [ %.0208.ph786, %bb.cj ], [ %.0208.ph786, %bb.ci ], [ %.4212, %bb.dl ], [ %.0208.ph786, %.thread673.thread ], [ %.2210, %.thread673 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.ok = ptrtoint ptr %.6221 to i64
  %i.ol = ptrtoint ptr %.02157511142 to i64
  %i.om = sub i64 %i.ok, %i.ol                    ; 4 uses
  store ptr %i.u, ptr %9, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.om, ptr %i.a, align 8, !tbaa !32
  %i.on = icmp ugt i64 %i.om, 15
  br i1 %i.on, label %.noexc.i612, label %._crit_edge.i.i611

.noexc.i612:                                      ; preds = %bb.dm
  %i.oo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc614 unwind label %bb.dq ; 2 uses

.noexc614:                                        ; preds = %.noexc.i612
  store ptr %i.oo, ptr %9, align 8, !tbaa !30
  %i.op = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.op, ptr %i.u, align 8, !tbaa !17
  br label %._crit_edge.i.i611

._crit_edge.i.i611:                               ; preds = %.noexc614, %bb.dm
  %i.oq = phi ptr [ %i.oo, %.noexc614 ], [ %i.u, %bb.dm ] ; 2 uses
  switch i64 %i.om, label %bb.do [
    i64 1, label %bb.dn
    i64 0, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit
  ]

bb.dn:                                            ; preds = %._crit_edge.i.i611
  %i.or = load i8, ptr %.02157511142, align 1, !tbaa !17
  store i8 %i.or, ptr %i.oq, align 1, !tbaa !17
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit

bb.do:                                            ; preds = %._crit_edge.i.i611
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oq, ptr nonnull align 1 %.02157511142, i64 %i.om, i1 false)
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit

_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit: ; preds = %bb.do, %bb.dn, %._crit_edge.i.i611
  %i.os = load i64, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  store i64 %i.os, ptr %i.v, align 8, !tbaa !16
  %i.ot = load ptr, ptr %9, align 8, !tbaa !30
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 %i.os
  store i8 0, ptr %i.ou, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.ov = load ptr, ptr %9, align 8, !tbaa !30
  %i.ow = call ptr @strptime(ptr noundef nonnull %.11717521141, ptr noundef %i.ov, ptr noundef nonnull %6) #18 ; 3 uses
  %i.ox = load i64, ptr %i.v, align 8, !tbaa !16
  %i.oy = icmp eq i64 %i.ox, 2
  %.pre858.a = load ptr, ptr %9, align 8, !tbaa !30 ; 3 uses
  br i1 %i.oy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit
  %i.oz = load i16, ptr %.pre858.a, align 1
  %i.pa = icmp ne i16 %i.oz, 28709
  %i.pb = zext i1 %i.pa to i32
  %i.pc = icmp eq i32 %i.pb, 0
  %i.pd = icmp ne ptr %i.ow, null
  %or.cond = and i1 %i.pd, %i.pc
  br i1 %or.cond, label %._crit_edge.i.i616, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

._crit_edge.i.i616:                               ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store ptr %i.w, ptr %10, align 8, !tbaa !13
  store i8 49, ptr %i.w, align 8, !tbaa !17
  store i64 1, ptr %i.x, align 8, !tbaa !16
  store i8 0, ptr %i.z, align 1, !tbaa !17
  %i.pe = ptrtoint ptr %i.ow to i64
  %i.pf = ptrtoint ptr %.11717521141 to i64
  %i.pg = sub i64 %i.pe, %i.pf                    ; 2 uses
  %i.ph = icmp ugt i64 %i.pg, 4611686018427387902
  br i1 %i.ph, label %bb.dp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.dp:                                            ; preds = %._crit_edge.i.i616
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #19
          to label %.noexc620 unwind label %.loopexit.split-lp699.loopexit.split-lp.loopexit.split-lp

.noexc620:                                        ; preds = %bb.dp
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %._crit_edge.i.i616
  %i.pi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %.11717521141, i64 noundef %i.pg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit unwind label %.loopexit.split-lp699.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.pj = load ptr, ptr %10, align 8, !tbaa !30   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, i8 0, i64 56, i1 false)
  %.not.i622 = icmp eq ptr %i.pj, null
  br i1 %.not.i622, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit624.thread, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit624

_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit624.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit624: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %i.pk = call ptr @strptime(ptr noundef nonnull %i.pj, ptr noundef nonnull @.str.9, ptr noundef nonnull %11) #18 ; 0 uses
  %.pre855.a = load i32, ptr %i.y, align 8, !tbaa !67
  %.pre856.a = load ptr, ptr %10, align 8, !tbaa !30 ; 2 uses
  %i.pl = icmp eq i32 %.pre855.a, 13              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.pm = icmp eq ptr %.pre856.a, %i.w
  br i1 %i.pm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit624.thread, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit624
  %i.pn = phi i1 [ false, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit624.thread ], [ %i.pl, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit624 ]
  %i.po = phi ptr [ null, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit624.thread ], [ %.pre856.a, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit624 ]
  %i.pp = load i64, ptr %i.w, align 8, !tbaa !17
  %i.pq = add i64 %i.pp, 1
  call void @_ZdlPvm(ptr noundef %i.po, i64 noundef %i.pq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit624, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.pr = phi i1 [ %i.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.pl, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit624 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %.pre857.a = load ptr, ptr %9, align 8, !tbaa !30
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.dq:                                            ; preds = %.noexc.i612
  %i.ps = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633

.loopexit.split-lp699.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %bb.dp
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pt = load ptr, ptr %10, align 8, !tbaa !30   ; 2 uses
  %i.pu = icmp eq ptr %i.pt, %i.w
  br i1 %i.pu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit627, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i625

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i625: ; preds = %.loopexit.split-lp699.loopexit.split-lp.loopexit.split-lp
  %i.pv = load i64, ptr %i.w, align 8, !tbaa !17
  %i.pw = add i64 %i.pv, 1
  call void @_ZdlPvm(ptr noundef %i.pt, i64 noundef %i.pw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit627

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit627: ; preds = %.loopexit.split-lp699.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i625
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.px = load ptr, ptr %9, align 8, !tbaa !30    ; 2 uses
  %i.py = icmp eq ptr %i.px, %i.u
  br i1 %i.py, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i631

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.pz = phi ptr [ %.pre857.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pre858.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.pre858.a, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit ] ; 2 uses
  %.1206 = phi i1 [ %i.pr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.0205.ph787, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.0205.ph787, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit ]
  %i.qa = icmp eq ptr %i.pz, %i.u
  br i1 %i.qa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i628

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i628: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.qb = load i64, ptr %i.u, align 8, !tbaa !17
  %i.qc = add i64 %i.qb, 1
  call void @_ZdlPvm(ptr noundef %i.pz, i64 noundef %i.qc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i628
end_hunk_2
