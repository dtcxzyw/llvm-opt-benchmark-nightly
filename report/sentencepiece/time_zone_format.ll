Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/time_zone_format?download=true
inline.NumInlined: 515
inline.NumDeleted: 152
begin_hunk_0_@_ZN4absl12lts_2026052613time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE:bb.a
  %i.ain = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aij, i64 noundef 0, ptr noundef nonnull %.1238, i64 noundef %i.aim)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit677 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit677: ; preds = %bb.em
  %i.aio = getelementptr inbounds nuw i8, ptr %.2229.lcssa, i64 3 ; 2 uses
  br label %.thread

bb.en:                                            ; preds = %bb.cy
  %i.aip = getelementptr inbounds nuw i8, ptr %.2229.lcssa, i64 2 ; 2 uses
  %.not308 = icmp eq ptr %i.aip, %i.cd
  br i1 %.not308, label %.thread801, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.aiq = load i8, ptr %i.aip, align 1, !tbaa !18
  %i.air = icmp eq i8 %i.aiq, 89
  br i1 %i.air, label %bb.ep, label %.thread801

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  %i.ais = getelementptr inbounds i8, ptr %.2229.lcssa, i64 -1
  store ptr %i.ch, ptr %19, align 8, !tbaa !14
  store i64 0, ptr %i.ci, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.ait = ptrtoint ptr %i.ais to i64
  %i.aiu = ptrtoint ptr %.5235 to i64
  %i.aiv = sub i64 %i.ait, %i.aiu                 ; 4 uses
  store i64 %i.aiv, ptr %i.c, align 8, !tbaa !32
  %i.aiw = icmp ugt i64 %i.aiv, 15
  br i1 %i.aiw, label %.noexc.i679, label %._crit_edge.i.i678

.noexc.i679:                                      ; preds = %bb.ep
  %i.aix = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc680 unwind label %bb.ez ; 2 uses

.noexc680:                                        ; preds = %.noexc.i679
  store ptr %i.aix, ptr %19, align 8, !tbaa !31
  %i.aiy = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.aiy, ptr %i.ch, align 8, !tbaa !18
  br label %._crit_edge.i.i678

._crit_edge.i.i678:                               ; preds = %.noexc680, %bb.ep
  %i.aiz = phi ptr [ %i.aix, %.noexc680 ], [ %i.ch, %bb.ep ] ; 2 uses
  switch i64 %i.aiv, label %bb.er [
    i64 1, label %bb.eq
    i64 0, label %bb.es
  ]

bb.eq:                                            ; preds = %._crit_edge.i.i678
  %i.aja = load i8, ptr %.5235, align 1, !tbaa !18
  store i8 %i.aja, ptr %i.aiz, align 1, !tbaa !18
  br label %bb.es

bb.er:                                            ; preds = %._crit_edge.i.i678
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aiz, ptr align 1 %.5235, i64 %i.aiv, i1 false)
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq, %._crit_edge.i.i678
  %i.ajb = load i64, ptr %i.c, align 8, !tbaa !32 ; 2 uses
  store i64 %i.ajb, ptr %i.ci, align 8, !tbaa !17
  %i.ajc = load ptr, ptr %19, align 8, !tbaa !31
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 %i.ajb
  store i8 0, ptr %i.ajd, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.aje = load i64, ptr %i.o, align 8, !tbaa !17 ; 3 uses
  %i.ajf = load i64, ptr %i.ci, align 8, !tbaa !17
  %i.ajg = shl i64 %i.ajf, 4
  %i.ajh = or disjoint i64 %i.ajg, 1              ; 2 uses
  %i.aji = add i64 %i.ajh, %i.aje
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aji, i8 noundef signext 0)
          to label %.noexc682 unwind label %bb.fa

.noexc682:                                        ; preds = %bb.es
  %i.ajj = load ptr, ptr %0, align 8, !tbaa !31
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajj, i64 %i.aje
  %i.ajl = load ptr, ptr %19, align 8, !tbaa !31
  %i.ajm = call i64 @strftime(ptr noundef nonnull %i.ajk, i64 noundef %i.ajh, ptr noundef %i.ajl, ptr noundef nonnull align 8 dereferenceable(56) %6) #18
  %i.ajn = add i64 %i.ajm, %i.aje
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ajn, i8 noundef signext 0)
          to label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm.exit684 unwind label %bb.fa

_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm.exit684: ; preds = %.noexc682
  %i.ajo = load ptr, ptr %19, align 8, !tbaa !31  ; 2 uses
  %i.ajp = icmp eq ptr %i.ajo, %i.ch
  br i1 %i.ajp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit687, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i685

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i685: ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm.exit684
  %i.ajq = load i64, ptr %i.ch, align 8, !tbaa !18
  %i.ajr = add i64 %i.ajq, 1
  call void @_ZdlPvm(ptr noundef %i.ajo, i64 noundef %i.ajr) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit687

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit687: ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm.exit684, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i685
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  %i.ajs = load i64, ptr %5, align 8, !tbaa !26   ; 4 uses
  %i.ajt = icmp slt i64 %i.ajs, 0                 ; 2 uses
  br i1 %i.ajt, label %bb.et, label %bb.ew

bb.et:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit687
  %i.aju = icmp eq i64 %i.ajs, -9223372036854775808
  br i1 %i.aju, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  store i8 56, ptr %i.cj, align 1, !tbaa !18
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %.026.i707 = phi ptr [ %i.cj, %bb.eu ], [ %i.ca, %bb.et ]
  %.022.i708 = phi i32 [ 2, %bb.eu ], [ 3, %bb.et ]
  %.1.i709 = phi i64 [ -922337203685477580, %bb.eu ], [ %i.ajs, %bb.et ]
  %i.ajv = sub nsw i64 0, %.1.i709
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit687
  %.127.i688 = phi ptr [ %.026.i707, %bb.ev ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit687 ] ; 2 uses
  %.123.i689 = phi i32 [ %.022.i708, %bb.ev ], [ 4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit687 ] ; 2 uses
  %.2.i690 = phi i64 [ %i.ajv, %bb.ev ], [ %i.ajs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit687 ]
  %scevgep40.i691 = getelementptr i8, ptr %.127.i688, i64 -2
  %i.ajw = add nsw i32 %.123.i689, -2
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ex, %bb.ew
  %indvars.iv42.i692 = phi i32 [ %indvars.iv.next.i699, %bb.ex ], [ %i.ajw, %bb.ew ] ; 2 uses
  %indvars.iv.i693 = phi ptr [ %scevgep41.i698, %bb.ex ], [ %scevgep40.i691, %bb.ew ] ; 2 uses
  %.228.i694 = phi ptr [ %i.akb, %bb.ex ], [ %.127.i688, %bb.ew ] ; 2 uses
  %.224.i695 = phi i32 [ %i.ajx, %bb.ex ], [ %.123.i689, %bb.ew ] ; 3 uses
  %.3.i696 = phi i64 [ %i.akc, %bb.ex ], [ %.2.i690, %bb.ew ] ; 3 uses
  %i.ajx = add i32 %.224.i695, -1                 ; 2 uses
  %i.ajy = urem i64 %.3.i696, 10
  %i.ajz = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.ajy
  %i.aka = load i8, ptr %i.ajz, align 1, !tbaa !18
  %i.akb = getelementptr inbounds i8, ptr %.228.i694, i64 -1 ; 3 uses
  store i8 %i.aka, ptr %i.akb, align 1, !tbaa !18
  %i.akc = udiv i64 %.3.i696, 10
  %.not.i697 = icmp ult i64 %.3.i696, 10
  %scevgep41.i698 = getelementptr i8, ptr %indvars.iv.i693, i64 -1
  %indvars.iv.next.i699 = add i32 %indvars.iv42.i692, -1
  br i1 %.not.i697, label %.preheader.i700, label %bb.ex, !llvm.loop !42

.preheader.i700:                                  ; preds = %bb.ex
  %i.akd = icmp sgt i32 %.224.i695, 1
  br i1 %i.akd, label %.lr.ph.preheader.i704, label %._crit_edge.i701

.lr.ph.preheader.i704:                            ; preds = %.preheader.i700
  %i.ake = getelementptr i8, ptr %.228.i694, i64 -2
  %i.akf = add nsw i32 %.224.i695, -2
  %i.akg = zext nneg i32 %i.akf to i64
  %i.akh = sub nsw i64 0, %i.akg
  %scevgep.i705 = getelementptr i8, ptr %i.ake, i64 %i.akh
  %i.aki = zext nneg i32 %i.ajx to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i705, i8 48, i64 %i.aki, i1 false), !tbaa !18
  %i.akj = zext i32 %indvars.iv42.i692 to i64
  %i.akk = sub nsw i64 0, %i.akj
  %scevgep43.i706 = getelementptr i8, ptr %indvars.iv.i693, i64 %i.akk
  br label %._crit_edge.i701

._crit_edge.i701:                                 ; preds = %.lr.ph.preheader.i704, %.preheader.i700
  %.329.lcssa.i702 = phi ptr [ %i.akb, %.preheader.i700 ], [ %scevgep43.i706, %.lr.ph.preheader.i704 ] ; 2 uses
  br i1 %i.ajt, label %bb.ey, label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit710

bb.ey:                                            ; preds = %._crit_edge.i701
  %i.akl = getelementptr inbounds i8, ptr %.329.lcssa.i702, i64 -1 ; 2 uses
  store i8 45, ptr %i.akl, align 1, !tbaa !18
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit710

_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit710: ; preds = %._crit_edge.i701, %bb.ey
  %.4.i703 = phi ptr [ %i.akl, %bb.ey ], [ %.329.lcssa.i702, %._crit_edge.i701 ] ; 2 uses
  %i.akm = load i64, ptr %i.o, align 8, !tbaa !17
  %i.akn = ptrtoint ptr %.4.i703 to i64
  %i.ako = sub i64 %i.ck, %i.akn
  %i.akp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.akm, i64 noundef 0, ptr noundef nonnull %.4.i703, i64 noundef %i.ako)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit712 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit712: ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit710
  %i.akq = getelementptr inbounds nuw i8, ptr %.2229.lcssa, i64 3 ; 2 uses
  br label %.thread

bb.ez:                                            ; preds = %.noexc.i679
  %i.akr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715

bb.fa:                                            ; preds = %.noexc682, %bb.es
  %i.aks = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akt = load ptr, ptr %19, align 8, !tbaa !31  ; 2 uses
  %i.aku = icmp eq ptr %i.akt, %i.ch
  br i1 %i.aku, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i713

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i713: ; preds = %bb.fa
  %i.akv = load i64, ptr %i.ch, align 8, !tbaa !18
  %i.akw = add i64 %i.akv, 1
  call void @_ZdlPvm(ptr noundef %i.akt, i64 noundef %i.akw) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715: ; preds = %bb.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i713, %bb.ez
  %.pn314 = phi { ptr, i32 } [ %i.akr, %bb.ez ], [ %i.aks, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i713 ], [ %i.aks, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %.loopexit.split-lp

bb.fb:                                            ; preds = %bb.cy
  %22 = add i8 %i.zg, -48
  %isdigit = icmp ult i8 %22, 10
  br i1 %isdigit, label %.thread801, label %.thread

.thread801:                                       ; preds = %bb.en, %bb.eo, %bb.fb
  %23 = zext nneg i8 %i.zg to i32
  %memchr95.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %23, i64 11) ; 2 uses
  %.not7396.i = icmp eq ptr %memchr95.i, null
  br i1 %.not7396.i, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread801, %bb.fe
  %memchr100.i = phi ptr [ %memchr.i, %bb.fe ], [ %memchr95.i, %.thread801 ]
  %.04299.i = phi i32 [ %i.alf, %bb.fe ], [ 0, %.thread801 ] ; 3 uses
  %.14998.i.idx = phi i64 [ %.14998.i.add, %bb.fe ], [ 1, %.thread801 ] ; 2 uses
  %i.akx = ptrtoint ptr %memchr100.i to i64
  %i.aky = trunc i64 %i.akx to i32
  %i.akz = sub i32 %i.aky, ptrtoint (ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.ala = icmp sgt i32 %i.akz, 9
  br i1 %i.ala, label %select.unfold.i, label %bb.fc

bb.fc:                                            ; preds = %.lr.ph.i
  %i.alb = icmp slt i32 %.04299.i, -214748364
  br i1 %i.alb, label %.thread, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.alc = mul nsw i32 %.04299.i, 10              ; 2 uses
  %i.ald = or disjoint i32 %i.akz, -2147483648
  %i.ale = icmp slt i32 %i.alc, %i.ald
  br i1 %i.ale, label %.thread, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.alf = sub nsw i32 %i.alc, %i.akz             ; 2 uses
  %.14998.i.add = add nuw nsw i64 %.14998.i.idx, 1 ; 3 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.2229.lcssa, i64 %.14998.i.add
  %i.alg = load i8, ptr %.ptr, align 1, !tbaa !18
  %i.alh = sext i8 %i.alg to i32
  %memchr.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.alh, i64 11) ; 2 uses
  %.not73.i = icmp eq ptr %memchr.i, null
  br i1 %.not73.i, label %select.unfold.i, label %.lr.ph.i

select.unfold.i:                                  ; preds = %bb.fe, %.lr.ph.i
  %.351.ph.i.idx = phi i64 [ %.14998.i.add, %bb.fe ], [ %.14998.i.idx, %.lr.ph.i ] ; 2 uses
  %.2.ph.i = phi i32 [ %i.alf, %bb.fe ], [ %.04299.i, %.lr.ph.i ] ; 6 uses
  %.351.ph.i.ptr = getelementptr inbounds nuw i8, ptr %.2229.lcssa, i64 %.351.ph.i.idx ; 4 uses
  %i.ali = icmp eq i64 %.351.ph.i.idx, 1
  %i.alj = icmp eq i32 %.2.ph.i, -2147483648
  %or.cond76.i.not = select i1 %i.ali, i1 true, i1 %i.alj
  br i1 %or.cond76.i.not, label %.thread, label %bb.ff

bb.ff:                                            ; preds = %select.unfold.i
  %i.alk = sub nsw i32 0, %.2.ph.i                ; 3 uses
  %24 = add nsw i32 %.2.ph.i, -1
  %or.cond77.i = icmp ult i32 %24, -1025
  br i1 %or.cond77.i, label %.thread, label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit: ; preds = %bb.ff
  %i.all = load i8, ptr %.351.ph.i.ptr, align 1, !tbaa !18
  switch i8 %i.all, label %.thread [
    i8 83, label %bb.fg
    i8 102, label %bb.fg
  ]

bb.fg:                                            ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.alm = getelementptr inbounds i8, ptr %.2229.lcssa, i64 -1
  store ptr %i.dc, ptr %20, align 8, !tbaa !14
  store i64 0, ptr %i.dd, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.aln = ptrtoint ptr %i.alm to i64
  %i.alo = ptrtoint ptr %.5235 to i64
  %i.alp = sub i64 %i.aln, %i.alo                 ; 4 uses
  store i64 %i.alp, ptr %i.b, align 8, !tbaa !32
  %i.alq = icmp ugt i64 %i.alp, 15
  br i1 %i.alq, label %.noexc.i721, label %._crit_edge.i.i720

.noexc.i721:                                      ; preds = %bb.fg
  %i.alr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc722 unwind label %bb.fl ; 2 uses

.noexc722:                                        ; preds = %.noexc.i721
  store ptr %i.alr, ptr %20, align 8, !tbaa !31
  %i.als = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.als, ptr %i.dc, align 8, !tbaa !18
  br label %._crit_edge.i.i720

._crit_edge.i.i720:                               ; preds = %.noexc722, %bb.fg
  %i.alt = phi ptr [ %i.alr, %.noexc722 ], [ %i.dc, %bb.fg ] ; 2 uses
  switch i64 %i.alp, label %bb.fi [
    i64 1, label %bb.fh
    i64 0, label %bb.fj
  ]

bb.fh:                                            ; preds = %._crit_edge.i.i720
  %i.alu = load i8, ptr %.5235, align 1, !tbaa !18
  store i8 %i.alu, ptr %i.alt, align 1, !tbaa !18
  br label %bb.fj

bb.fi:                                            ; preds = %._crit_edge.i.i720
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.alt, ptr align 1 %.5235, i64 %i.alp, i1 false)
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh, %._crit_edge.i.i720
  %i.alv = load i64, ptr %i.b, align 8, !tbaa !32 ; 2 uses
  store i64 %i.alv, ptr %i.dd, align 8, !tbaa !17
  %i.alw = load ptr, ptr %20, align 8, !tbaa !31
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 %i.alv
  store i8 0, ptr %i.alx, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.aly = load i64, ptr %i.o, align 8, !tbaa !17 ; 3 uses
  %i.alz = load i64, ptr %i.dd, align 8, !tbaa !17
  %i.ama = shl i64 %i.alz, 4
  %i.amb = or disjoint i64 %i.ama, 1              ; 2 uses
  %i.amc = add i64 %i.amb, %i.aly
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.amc, i8 noundef signext 0)
          to label %.noexc724 unwind label %bb.fm

.noexc724:                                        ; preds = %bb.fj
  %i.amd = load ptr, ptr %0, align 8, !tbaa !31
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 %i.aly
  %i.amf = load ptr, ptr %20, align 8, !tbaa !31
  %i.amg = call i64 @strftime(ptr noundef nonnull %i.ame, i64 noundef %i.amb, ptr noundef %i.amf, ptr noundef nonnull align 8 dereferenceable(56) %6) #18
  %i.amh = add i64 %i.amg, %i.aly
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.amh, i8 noundef signext 0)
          to label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm.exit726 unwind label %bb.fm

_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm.exit726: ; preds = %.noexc724
  %i.ami = load ptr, ptr %20, align 8, !tbaa !31  ; 2 uses
  %i.amj = icmp eq ptr %i.ami, %i.dc
  br i1 %i.amj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i727

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i727: ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm.exit726
  %i.amk = load i64, ptr %i.dc, align 8, !tbaa !18
  %i.aml = add i64 %i.amk, 1
  call void @_ZdlPvm(ptr noundef %i.ami, i64 noundef %i.aml) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729: ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm.exit726, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i727
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %.not885 = icmp eq i32 %.2.ph.i, 0
  br i1 %.not885, label %bb.fx, label %bb.fk

bb.fk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729
  %i.amm = icmp samesign ugt i32 %i.alk, 18
  br i1 %i.amm, label %.thread805, label %bb.fn

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %bb.x, %bb.aj, %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i483, %bb.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit526, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit564, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i580, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit634, %bb.em, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit710, %.thread809, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit508.invoke, %.invoke
  %lpad.loopexit.split-lp1146 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.fl:                                            ; preds = %.noexc.i721
  %i.amn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit732

bb.fm:                                            ; preds = %.noexc724, %bb.fj
  %i.amo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.amp = load ptr, ptr %20, align 8, !tbaa !31  ; 2 uses
  %i.amq = icmp eq ptr %i.amp, %i.dc
  br i1 %i.amq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit732, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i730

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i730: ; preds = %bb.fm
  %i.amr = load i64, ptr %i.dc, align 8, !tbaa !18
  %i.ams = add i64 %i.amr, 1
  call void @_ZdlPvm(ptr noundef %i.amp, i64 noundef %i.ams) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit732

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit732: ; preds = %bb.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i730, %bb.fl
  %.pn310 = phi { ptr, i32 } [ %i.amn, %bb.fl ], [ %i.amo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i730 ], [ %i.amo, %bb.fm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %.loopexit.split-lp

bb.fn:                                            ; preds = %bb.fk
  %25 = icmp samesign ult i32 %.2.ph.i, -15
  br i1 %25, label %.thread805, label %bb.fo

.thread805:                                       ; preds = %bb.fk, %bb.fn
  %.0787808 = phi i32 [ %i.alk, %bb.fn ], [ 18, %bb.fk ] ; 2 uses
  %i.amt = load i64, ptr %3, align 8, !tbaa !55
  %i.amu = zext nneg i32 %.0787808 to i64
  %i.amv = getelementptr [8 x i8], ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_16kExp10E, i64 %i.amu
  %i.amw = getelementptr i8, ptr %i.amv, i64 -120
  %i.amx = load i64, ptr %i.amw, align 8, !tbaa !32
  %i.amy = mul nsw i64 %i.amx, %i.amt
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.amz = load i64, ptr %3, align 8, !tbaa !55
  %i.ana = sext i32 %.2.ph.i to i64
  %i.anb = getelementptr [8 x i8], ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_16kExp10E, i64 %i.ana
  %i.anc = getelementptr i8, ptr %i.anb, i64 120
  %i.and = load i64, ptr %i.anc, align 8, !tbaa !32
  %i.ane = sdiv i64 %i.amz, %i.and
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %.thread805
  %.0787807 = phi i32 [ %.0787808, %.thread805 ], [ %i.alk, %bb.fo ] ; 3 uses
  %i.anf = phi i64 [ %i.amy, %.thread805 ], [ %i.ane, %bb.fo ] ; 4 uses
  %i.ang = icmp slt i64 %i.anf, 0                 ; 2 uses
  br i1 %i.ang, label %bb.fq, label %bb.ft

bb.fq:                                            ; preds = %bb.fp
  %i.anh = add nsw i32 %.0787807, -1
  %i.ani = icmp eq i64 %i.anf, -9223372036854775808
  br i1 %i.ani, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.anj = add nsw i32 %.0787807, -2
  store i8 56, ptr %i.cj, align 1, !tbaa !18
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.026.i752 = phi ptr [ %i.cj, %bb.fr ], [ %i.ca, %bb.fq ]
  %.022.i753 = phi i32 [ %i.anj, %bb.fr ], [ %i.anh, %bb.fq ]
  %.1.i754 = phi i64 [ -922337203685477580, %bb.fr ], [ %i.anf, %bb.fq ]
  %i.ank = sub nsw i64 0, %.1.i754
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fp
  %.127.i733 = phi ptr [ %.026.i752, %bb.fs ], [ %i.ca, %bb.fp ] ; 2 uses
  %.123.i734 = phi i32 [ %.022.i753, %bb.fs ], [ %.0787807, %bb.fp ] ; 2 uses
  %.2.i735 = phi i64 [ %i.ank, %bb.fs ], [ %i.anf, %bb.fp ]
  %scevgep40.i736 = getelementptr i8, ptr %.127.i733, i64 -2
  %i.anl = add nsw i32 %.123.i734, -2
  br label %bb.fu

bb.fu:                                            ; preds = %bb.fu, %bb.ft
  %indvars.iv42.i737 = phi i32 [ %indvars.iv.next.i744, %bb.fu ], [ %i.anl, %bb.ft ] ; 2 uses
  %indvars.iv.i738 = phi ptr [ %scevgep41.i743, %bb.fu ], [ %scevgep40.i736, %bb.ft ] ; 2 uses
  %.228.i739 = phi ptr [ %i.anq, %bb.fu ], [ %.127.i733, %bb.ft ] ; 2 uses
  %.224.i740 = phi i32 [ %i.anm, %bb.fu ], [ %.123.i734, %bb.ft ] ; 3 uses
  %.3.i741 = phi i64 [ %i.anr, %bb.fu ], [ %.2.i735, %bb.ft ] ; 3 uses
  %i.anm = add i32 %.224.i740, -1                 ; 2 uses
  %i.ann = urem i64 %.3.i741, 10
  %i.ano = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.ann
  %i.anp = load i8, ptr %i.ano, align 1, !tbaa !18
  %i.anq = getelementptr inbounds i8, ptr %.228.i739, i64 -1 ; 3 uses
  store i8 %i.anp, ptr %i.anq, align 1, !tbaa !18
  %i.anr = udiv i64 %.3.i741, 10
  %.not.i742 = icmp ult i64 %.3.i741, 10
  %scevgep41.i743 = getelementptr i8, ptr %indvars.iv.i738, i64 -1
  %indvars.iv.next.i744 = add i32 %indvars.iv42.i737, -1
  br i1 %.not.i742, label %.preheader.i745, label %bb.fu, !llvm.loop !42

.preheader.i745:                                  ; preds = %bb.fu
  %i.ans = icmp sgt i32 %.224.i740, 1
  br i1 %i.ans, label %.lr.ph.preheader.i749, label %._crit_edge.i746

.lr.ph.preheader.i749:                            ; preds = %.preheader.i745
  %i.ant = getelementptr i8, ptr %.228.i739, i64 -2
  %i.anu = add nsw i32 %.224.i740, -2
  %i.anv = zext nneg i32 %i.anu to i64
  %i.anw = sub nsw i64 0, %i.anv
  %scevgep.i750 = getelementptr i8, ptr %i.ant, i64 %i.anw
  %i.anx = zext nneg i32 %i.anm to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i750, i8 48, i64 %i.anx, i1 false), !tbaa !18
  %i.any = zext i32 %indvars.iv42.i737 to i64
  %i.anz = sub nsw i64 0, %i.any
  %scevgep43.i751 = getelementptr i8, ptr %indvars.iv.i738, i64 %i.anz
  br label %._crit_edge.i746

._crit_edge.i746:                                 ; preds = %.lr.ph.preheader.i749, %.preheader.i745
  %.329.lcssa.i747 = phi ptr [ %i.anq, %.preheader.i745 ], [ %scevgep43.i751, %.lr.ph.preheader.i749 ] ; 2 uses
  br i1 %i.ang, label %bb.fv, label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit755

bb.fv:                                            ; preds = %._crit_edge.i746
  %i.aoa = getelementptr inbounds i8, ptr %.329.lcssa.i747, i64 -1 ; 2 uses
  store i8 45, ptr %i.aoa, align 1, !tbaa !18
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit755

_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit755: ; preds = %._crit_edge.i746, %bb.fv
  %.4.i748 = phi ptr [ %i.aoa, %bb.fv ], [ %.329.lcssa.i747, %._crit_edge.i746 ] ; 2 uses
  %i.aob = load i8, ptr %.351.ph.i.ptr, align 1, !tbaa !18
  %i.aoc = icmp eq i8 %i.aob, 83
  br i1 %i.aoc, label %bb.fw, label %.thread809

bb.fw:                                            ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit755
  %i.aod = getelementptr inbounds i8, ptr %.4.i748, i64 -1 ; 2 uses
  store i8 46, ptr %i.aod, align 1, !tbaa !18
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729
  %.2239.ph = phi ptr [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729 ], [ %i.aod, %bb.fw ] ; 3 uses
  %.pr = load i8, ptr %.351.ph.i.ptr, align 1, !tbaa !18
  %i.aoe = icmp eq i8 %.pr, 83
  br i1 %i.aoe, label %bb.fy, label %.thread809

bb.fy:                                            ; preds = %bb.fx
  %i.aof = load i8, ptr %i.u, align 4, !tbaa !36  ; 2 uses
  %i.aog = srem i8 %i.aof, 10
  %i.aoh = sext i8 %i.aog to i64
  %i.aoi = getelementptr inbounds i8, ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.aoh
  %i.aoj = load i8, ptr %i.aoi, align 1, !tbaa !18
  %i.aok = getelementptr inbounds i8, ptr %.2239.ph, i64 -1
  store i8 %i.aoj, ptr %i.aok, align 1, !tbaa !18
  %i.aol = sdiv i8 %i.aof, 10
  %i.aom = srem i8 %i.aol, 10
  %i.aon = sext i8 %i.aom to i64
  %i.aoo = getelementptr inbounds i8, ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.aon
  %i.aop = load i8, ptr %i.aoo, align 1, !tbaa !18
  %i.aoq = getelementptr inbounds i8, ptr %.2239.ph, i64 -2 ; 2 uses
  store i8 %i.aop, ptr %i.aoq, align 1, !tbaa !18
  br label %.thread809

.thread809:                                       ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit755, %bb.fy, %bb.fx
  %.3240 = phi ptr [ %i.aoq, %bb.fy ], [ %.2239.ph, %bb.fx ], [ %.4.i748, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit755 ] ; 2 uses
  %i.aor = load i64, ptr %i.o, align 8, !tbaa !17
  %i.aos = ptrtoint ptr %.3240 to i64
  %i.aot = sub i64 %i.ck, %i.aos
  %i.aou = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aor, i64 noundef 0, ptr noundef %.3240, i64 noundef %i.aot)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit757 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit757: ; preds = %.thread809
  %i.aov = getelementptr inbounds nuw i8, ptr %.351.ph.i.ptr, i64 1 ; 2 uses
  br label %.thread

.thread:                                          ; preds = %bb.fc, %bb.fd, %.thread801, %bb.dl, %bb.bz, %select.unfold.i, %bb.ff, %bb.dt, %bb.ca, %bb.cq, %bb.cr, %bb.ci, %bb.cb, %bb.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit757, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit583, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit636, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit712, %bb.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit677, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit608, %bb.cx, %bb.y, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit566, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit558, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit535, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit
  %.8 = phi ptr [ %.5235, %bb.bz ], [ %i.tj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit ], [ %i.vn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit535 ], [ %i.yd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit558 ], [ %i.yy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit566 ], [ %.5235, %bb.y ], [ %.5235, %bb.z ], [ %.5235, %bb.cx ], [ %i.aak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit583 ], [ %i.acs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit608 ], [ %i.afj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit636 ], [ %i.aio, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit677 ], [ %i.akq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit712 ], [ %.5235, %bb.ca ], [ %.5235, %bb.fb ], [ %.5235, %bb.dt ], [ %i.aov, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit757 ], [ %.5235, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit ], [ %.5235, %bb.cj ], [ %.5235, %bb.cb ], [ %.5235, %bb.ci ], [ %.5235, %bb.cr ], [ %.5235, %bb.cq ], [ %.5235, %bb.dl ], [ %.5235, %bb.ff ], [ %.5235, %select.unfold.i ], [ %.5235, %.thread801 ], [ %.5235, %bb.fd ], [ %.5235, %bb.fc ] ; 2 uses
  %.6 = phi ptr [ %.2229.lcssa, %bb.bz ], [ %i.tj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit ], [ %i.vn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit535 ], [ %i.yd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit558 ], [ %i.yy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit566 ], [ %.2229.lcssa, %bb.y ], [ %.2229.lcssa, %bb.z ], [ %.ptr991, %bb.cx ], [ %i.aak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit583 ], [ %i.acs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit608 ], [ %i.afj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit636 ], [ %i.aio, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit677 ], [ %i.akq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit712 ], [ %.2229.lcssa, %bb.ca ], [ %.ptr991, %bb.fb ], [ %.ptr991, %bb.dt ], [ %i.aov, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPcvEERS4_T_S8_.exit757 ], [ %.ptr991, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit ], [ %.2229.lcssa, %bb.cj ], [ %.2229.lcssa, %bb.cb ], [ %.2229.lcssa, %bb.ci ], [ %.2229.lcssa, %bb.cr ], [ %.2229.lcssa, %bb.cq ], [ %.ptr991, %bb.dl ], [ %.ptr991, %bb.ff ], [ %.ptr991, %select.unfold.i ], [ %.ptr991, %.thread801 ], [ %.ptr991, %bb.fd ], [ %.ptr991, %bb.fc ] ; 3 uses
  %.not = icmp eq ptr %.6, %i.cd
  br i1 %.not, label %._crit_edge, label %.preheader.backedge

._crit_edge:                                      ; preds = %.thread, %bb.i
  %.0230.lcssa = phi ptr [ %i.cb, %bb.i ], [ %.8, %.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  %i.aow = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.aow, ptr %21, align 8, !tbaa !14
  %i.aox = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  store i64 0, ptr %i.aox, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.aoy = ptrtoint ptr %i.cd to i64
  %i.aoz = ptrtoint ptr %.0230.lcssa to i64
  %i.apa = sub i64 %i.aoy, %i.aoz                 ; 4 uses
  store i64 %i.apa, ptr %i.a, align 8, !tbaa !32
  %i.apb = icmp ugt i64 %i.apa, 15
  br i1 %i.apb, label %.noexc.i759, label %._crit_edge.i.i758

.noexc.i759:                                      ; preds = %._crit_edge
  %i.apc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc760 unwind label %bb.gc ; 2 uses

.noexc760:                                        ; preds = %.noexc.i759
  store ptr %i.apc, ptr %21, align 8, !tbaa !31
  %i.apd = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.apd, ptr %i.aow, align 8, !tbaa !18
  br label %._crit_edge.i.i758

._crit_edge.i.i758:                               ; preds = %.noexc760, %._crit_edge
  %i.ape = phi ptr [ %i.apc, %.noexc760 ], [ %i.aow, %._crit_edge ] ; 2 uses
  switch i64 %i.apa, label %bb.ga [
    i64 1, label %bb.fz
    i64 0, label %bb.gb
  ]

bb.fz:                                            ; preds = %._crit_edge.i.i758
  %i.apf = load i8, ptr %.0230.lcssa, align 1, !tbaa !18
  store i8 %i.apf, ptr %i.ape, align 1, !tbaa !18
  br label %bb.gb

bb.ga:                                            ; preds = %._crit_edge.i.i758
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ape, ptr align 1 %.0230.lcssa, i64 %i.apa, i1 false)
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz, %._crit_edge.i.i758
  %i.apg = load i64, ptr %i.a, align 8, !tbaa !32 ; 2 uses
  store i64 %i.apg, ptr %i.aox, align 8, !tbaa !17
  %i.aph = load ptr, ptr %21, align 8, !tbaa !31
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 %i.apg
  store i8 0, ptr %i.api, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.apj = load i64, ptr %i.o, align 8, !tbaa !17 ; 3 uses
  %i.apk = load i64, ptr %i.aox, align 8, !tbaa !17
  %i.apl = shl i64 %i.apk, 4
  %i.apm = or disjoint i64 %i.apl, 1              ; 2 uses
  %i.apn = add i64 %i.apm, %i.apj
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.apn, i8 noundef signext 0)
          to label %.noexc762 unwind label %bb.gd

.noexc762:                                        ; preds = %bb.gb
  %i.apo = load ptr, ptr %0, align 8, !tbaa !31
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 %i.apj
  %i.apq = load ptr, ptr %21, align 8, !tbaa !31
  %i.apr = call i64 @strftime(ptr noundef nonnull %i.app, i64 noundef %i.apm, ptr noundef %i.apq, ptr noundef nonnull align 8 dereferenceable(56) %6) #18
  %i.aps = add i64 %i.apr, %i.apj
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aps, i8 noundef signext 0)
          to label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm.exit764 unwind label %bb.gd

_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm.exit764: ; preds = %.noexc762
  %i.apt = load ptr, ptr %21, align 8, !tbaa !31  ; 2 uses
  %i.apu = icmp eq ptr %i.apt, %i.aow
  br i1 %i.apu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit767, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i765

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i765: ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm.exit764
  %i.apv = load i64, ptr %i.aow, align 8, !tbaa !18
  %i.apw = add i64 %i.apv, 1
  call void @_ZdlPvm(ptr noundef %i.apt, i64 noundef %i.apw) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit767

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit767: ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm.exit764, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i765
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.gc:                                            ; preds = %.noexc.i759
  %i.apx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770

bb.gd:                                            ; preds = %.noexc762, %bb.gb
  %i.apy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.apz = load ptr, ptr %21, align 8, !tbaa !31  ; 2 uses
  %i.aqa = icmp eq ptr %i.apz, %i.aow
  br i1 %i.aqa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i768

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i768: ; preds = %bb.gd
  %i.aqb = load i64, ptr %i.aow, align 8, !tbaa !18
  %i.aqc = add i64 %i.aqb, 1
  call void @_ZdlPvm(ptr noundef %i.apz, i64 noundef %i.aqc) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770: ; preds = %bb.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i768, %bb.gc
  %.pn = phi { ptr, i32 } [ %i.apx, %bb.gc ], [ %i.apy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i768 ], [ %i.apy, %bb.gd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit732, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit586, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit561, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770
  %.pn337.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770 ], [ %.pn337, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350 ], [ %.pn314, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715 ], [ %.pn316, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675 ], [ %.pn331, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369 ], [ %.pn329, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538 ], [ %.pn327, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit561 ], [ %.pn325, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569 ], [ %.pn323, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit586 ], [ %.pn321, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611 ], [ %.pn319, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639 ], [ %.pn310, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit732 ], [ %lpad.loopexit.split-lp1146, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.ge

bb.ge:                                            ; preds = %.loopexit.split-lp, %bb.p
  %.pn337.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn337.pn.pn, %.loopexit.split-lp ], [ %i.eo, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.o
  %.pn337.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn337.pn.pn.pn.pn, %bb.ge ], [ %i.en, %bb.o ]
  %i.aqd = load ptr, ptr %0, align 8, !tbaa !31   ; 2 uses
  %i.aqe = icmp eq ptr %i.aqd, %i.n
  br i1 %i.aqe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit773, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i771

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i771: ; preds = %bb.gf
  %i.aqf = load i64, ptr %i.n, align 8, !tbaa !18
  %i.aqg = add i64 %i.aqf, 1
  call void @_ZdlPvm(ptr noundef %i.aqd, i64 noundef %i.aqg) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit773

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit773: ; preds = %bb.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i771
  resume { ptr, i32 } %.pn337.pn.pn.pn.pn.pn
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZNK4absl12lts_2026052613time_internal4cctz9time_zone6lookupERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEE(ptr dead_on_unwind writable sret(%"struct.absl::lts_20260526::time_internal::cctz::time_zone::absolute_lookup") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17
  %i.e = shl i64 %i.d, 4
  %i.f = or disjoint i64 %i.e, 1                  ; 2 uses
  %i.g = add i64 %i.f, %i.b
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g, i8 noundef signext 0)
  %i.h = load ptr, ptr %0, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b
  %i.j = load ptr, ptr %1, align 8, !tbaa !31
  %i.k = tail call i64 @strftime(ptr noundef nonnull %i.i, i64 noundef %i.f, ptr noundef %i.j, ptr noundef nonnull %2) #18
  %i.l = add i64 %i.k, %i.b
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l, i8 noundef signext 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !32
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !31
  %i.i = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.i, ptr %i.b, align 8, !tbaa !18
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a, %.noexc
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i
  %i.k = load i8, ptr %1, align 1, !tbaa !18
  store i8 %i.k, ptr %i.j, align 1, !tbaa !18
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %1, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  store i64 %i.l, ptr %i.c, align 8, !tbaa !17
  %i.m = load ptr, ptr %0, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  store i8 0, ptr %i.n, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_16ToWeekERKNS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 7) %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !57
  %i.b = srem i64 %i.a, 400                       ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !58    ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !59    ; 2 uses
  %i.g = sext i8 %i.f to i64                      ; 2 uses
  %i.h = add nsw i64 %i.g, -1
  %or.cond7.i = icmp ult i64 %i.h, 28
  %2 = add i8 %i.d, -1
  %i.i = icmp ult i8 %2, 12
  %or.cond11.i = and i1 %i.i, %or.cond7.i
  br i1 %or.cond11.i, label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_secEllllll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i8 %i.d, 12
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_monEllllaaa.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = sdiv i8 %i.d, 12
  %.sext = sext i8 %i.j to i64
  %i.k = add nsw i64 %i.b, %.sext                 ; 2 uses
  %i.l = srem i8 %i.d, 12                         ; 3 uses
  %i.m = icmp slt i8 %i.l, 1
  br i1 %i.m, label %bb.d, label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_monEllllaaa.exit.i

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i64 %i.k, -1
  %i.o = add nsw i8 %i.l, 12
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_monEllllaaa.exit.i

_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_monEllllaaa.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %.016.i.i = phi i8 [ %i.o, %bb.d ], [ %i.l, %bb.c ], [ 12, %bb.b ]
  %.0.i.i = phi i64 [ %i.n, %bb.d ], [ %i.k, %bb.c ], [ %i.b, %bb.b ]
  %i.p = tail call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %.0.i.i, i8 noundef signext %.016.i.i, i64 noundef %i.g, i64 noundef 0, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #18 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i64 } %i.p, 1 ; 2 uses
  %.fca.0.extract22.i = extractvalue { i64, i64 } %i.p, 0
  %.sroa.6.sroa.6.0.extract.shift112146.i = lshr i64 %.fca.1.extract.i.i, 8
  %i.q = trunc i64 %.fca.1.extract.i.i to i8
  %i.r = trunc i64 %.sroa.6.sroa.6.0.extract.shift112146.i to i8
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_secEllllll.exit

_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_secEllllll.exit: ; preds = %bb.a, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_monEllllaaa.exit.i
  %.sroa.6.sroa.6.0.in.i = phi i8 [ %i.f, %bb.a ], [ %i.r, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_monEllllaaa.exit.i ]
  %.sroa.6.sroa.0.0.in.i = phi i8 [ %i.d, %bb.a ], [ %i.q, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_monEllllaaa.exit.i ]
  %.sroa.0.0.i = phi i64 [ %i.b, %bb.a ], [ %.fca.0.extract22.i, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_monEllllaaa.exit.i ] ; 3 uses
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
  %i.ab = getelementptr [4 x i8], ptr @__const._ZN4absl12lts_2026052613time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE.k_weekday_by_mon_off, i64 %.zext
  %i.ac = getelementptr i8, ptr %i.ab, i64 24
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_secEllllll.exit
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_secEllllll.exit ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN4absl12lts_2026052613time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.k_weekdays_back, i64 %indvars.iv.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !29
  %i.ag = icmp eq i32 %i.ad, %i.af
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.ag, label %.preheader.i, label %bb.e, !llvm.loop !0

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %indvars.iv17.i = phi i64 [ %indvars.iv.next18.i, %.preheader.i ], [ %indvars.iv.i, %bb.e ]
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1 ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN4absl12lts_2026052613time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.k_weekdays_back, i64 %indvars.iv.next18.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !29
  %i.aj = icmp eq i32 %1, %i.ai
  br i1 %i.aj, label %_ZN4absl12lts_2026052613time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit, label %.preheader.i, !llvm.loop !1

_ZN4absl12lts_2026052613time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit: ; preds = %.preheader.i
  %i.ak = sub nuw nsw i64 %indvars.iv.next18.i, %indvars.iv.i
  %i.al = and i64 %i.ak, 4294967295
  %i.am = tail call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl(i64 %.sroa.0.0.i, i64 257, i64 noundef %i.al) #18 ; 2 uses
  %i.an = extractvalue { i64, i64 } %i.am, 0
  %i.ao = extractvalue { i64, i64 } %i.am, 1      ; 2 uses
  %.sroa.2.8.extract.trunc.i.i = trunc i64 %i.ao to i8
  %.sroa.4.8.extract.shift.i.i = lshr i64 %i.ao, 8
  %.sroa.4.8.extract.trunc.i.i = trunc i64 %.sroa.4.8.extract.shift.i.i to i8
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %.sroa.0.0.i, i8 noundef signext %.sroa.6.sroa.0.0.in.i, i8 noundef signext %.sroa.6.sroa.6.0.in.i, i64 noundef %i.an, i8 noundef signext %.sroa.2.8.extract.trunc.i.i, i8 noundef signext %.sroa.4.8.extract.trunc.i.i) #18
  %i.aq = sdiv i64 %i.ap, 7
  %i.ar = trunc i64 %i.aq to i32
  ret i32 %i.ar
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc(ptr nofree noundef nonnull writeonly captures(ret: address, provenance) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %spec.select = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 5 uses
  %spec.select45 = select i1 %i.a, i8 45, i8 43   ; 2 uses
  %i.b = urem i32 %spec.select, 60                ; 3 uses
  %i.c = udiv i32 %spec.select, 60
  %i.d = urem i32 %i.c, 60                        ; 3 uses
  %i.e = load i8, ptr %2, align 1, !tbaa !18      ; 3 uses
  %.not44 = icmp eq i8 %i.e, 0                    ; 2 uses
  br i1 %.not44, label %.thread48, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !18
  %i.h = icmp eq i8 %i.g, 42
  br i1 %i.h, label %bb.c, label %.thread48

.thread48:                                        ; preds = %bb.b, %bb.a
  %i.i = icmp ne i32 %i.b, 0
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !18
  %i.l = icmp ne i8 %i.k, 58                      ; 2 uses
  %i.m = icmp ne i32 %i.b, 0                      ; 2 uses
  %or.cond = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.lhs.trunc58 = trunc nuw nsw i32 %i.b to i8    ; 2 uses
  %i.n = urem i8 %.lhs.trunc58, 10
  %i.o = zext nneg i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !18
  %i.r = getelementptr inbounds i8, ptr %0, i64 -1
  store i8 %i.q, ptr %i.r, align 1, !tbaa !18
  %i.s = udiv i8 %.lhs.trunc58, 10
  %i.t = zext nneg i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !18
  %i.w = getelementptr inbounds i8, ptr %0, i64 -2
  store i8 %i.v, ptr %i.w, align 1, !tbaa !18
  %i.x = getelementptr inbounds i8, ptr %0, i64 -3 ; 2 uses
  store i8 %i.e, ptr %i.x, align 1, !tbaa !18
  br label %bb.f

bb.e:                                             ; preds = %.thread48, %bb.c
  %i.y = phi i1 [ %i.i, %.thread48 ], [ false, %bb.c ]
  %.not453 = phi i1 [ true, %.thread48 ], [ false, %bb.c ]
  %i.z = icmp samesign ult i32 %spec.select, 3600
  %i.aa = icmp eq i32 %i.d, 0
  %or.cond3 = select i1 %i.z, i1 %i.aa, i1 false
  %spec.select47 = select i1 %or.cond3, i8 43, i8 %spec.select45
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = phi i1 [ %i.m, %bb.d ], [ %i.y, %bb.e ]
  %.not452 = phi i1 [ %i.l, %bb.d ], [ %.not453, %bb.e ]
  %.039 = phi ptr [ %i.x, %bb.d ], [ %0, %bb.e ]  ; 4 uses
  %.1 = phi i8 [ %spec.select45, %bb.d ], [ %spec.select47, %bb.e ]
  %i.ac = icmp ne i32 %i.d, 0
  %or.cond6 = select i1 %.not452, i1 true, i1 %i.ac
  %or.cond8 = select i1 %or.cond6, i1 true, i1 %i.ab
  br i1 %or.cond8, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.lhs.trunc = trunc nuw nsw i32 %i.d to i8      ; 2 uses
  %i.ad = urem i8 %.lhs.trunc, 10
  %i.ae = zext nneg i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !18
  %i.ah = getelementptr inbounds i8, ptr %.039, i64 -1
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !18
  %i.ai = udiv i8 %.lhs.trunc, 10
  %i.aj = zext nneg i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !18
  %i.am = getelementptr inbounds i8, ptr %.039, i64 -2 ; 2 uses
  store i8 %i.al, ptr %i.am, align 1, !tbaa !18
  br i1 %.not44, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds i8, ptr %.039, i64 -3 ; 2 uses
  store i8 %i.e, ptr %i.an, align 1, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.140 = phi ptr [ %i.an, %bb.h ], [ %i.am, %bb.g ], [ %.039, %bb.f ] ; 3 uses
  %i.ao = udiv i32 %spec.select, 3600
  %i.ap = urem i32 %i.ao, 10
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !18
  %i.at = getelementptr inbounds i8, ptr %.140, i64 -1
  store i8 %i.as, ptr %i.at, align 1, !tbaa !18
  %i.au = udiv i32 %spec.select, 36000
  %.lhs.trunc56 = trunc nuw i32 %i.au to i16
  %i.av = urem i16 %.lhs.trunc56, 10
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !18
  %i.az = getelementptr inbounds i8, ptr %.140, i64 -2
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !18
  %i.ba = getelementptr inbounds i8, ptr %.140, i64 -3 ; 2 uses
  store i8 %.1, ptr %i.ba, align 1, !tbaa !18
  ret ptr %i.ba
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_(ptr nofree noundef readonly captures(address, ret: address, provenance) %0, i32 noundef range(i32 0, 3) %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 6, 1025) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %.not70 = icmp eq ptr %0, null
  br i1 %.not70, label %.thread, label %bb.b
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052613time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS2_9time_zoneEPNSt6chrono10time_pointINSF_3_V212system_clockENSF_8durationIlSt5ratioILl1ELl1EEEEEEPNSJ_IlSK_ILl1ELl1000000000000000EEEEPS9_:bb.a
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.rd
  store i8 %i.qz, ptr %i.rm, align 1, !tbaa !18
  store i64 %i.re, ptr %i.u, align 8, !tbaa !17
  %i.rn = load ptr, ptr %8, align 8, !tbaa !31
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 %i.re
  store i8 0, ptr %i.ro, align 1, !tbaa !18
  %i.rp = load i8, ptr %i.rc, align 1, !tbaa !18  ; 2 uses
  %.not.i800 = icmp eq i8 %i.rp, 0
  br i1 %.not.i800, label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i798, !llvm.loop !64

_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i798, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i, %bb.dn
  %.0.lcssa.i = phi ptr [ %.1193984, %bb.dn ], [ %.013.i, %.lr.ph.i798 ], [ %i.rc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i ]
  %i.rq = load i64, ptr %i.u, align 8, !tbaa !17
  %i.rr = icmp eq i64 %i.rq, 0
  %spec.select.i799 = select i1 %i.rr, ptr null, ptr %.0.lcssa.i
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397

bb.dq:                                            ; preds = %bb.i
  %i.rs = load i8, ptr %.1193984, align 1, !tbaa !18 ; 2 uses
  %i.rt = icmp eq i8 %i.rs, 45                    ; 4 uses
  br i1 %i.rt, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.ru = getelementptr inbounds nuw i8, ptr %.1193984, i64 1 ; 2 uses
  %.pre.i828 = load i8, ptr %i.ru, align 1, !tbaa !18
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.rv = phi i8 [ %.pre.i828, %bb.dr ], [ %i.rs, %bb.dq ]
  %.048.i803 = phi ptr [ %i.ru, %bb.dr ], [ %.1193984, %bb.dq ] ; 3 uses
  %i.rw = sext i8 %i.rv to i32
  %memchr94.i804 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.rw, i64 11) ; 2 uses
  %.not7295.i805 = icmp eq ptr %memchr94.i804, null
  br i1 %.not7295.i805, label %select.unfold.i814, label %.lr.ph.i806

.lr.ph.i806:                                      ; preds = %bb.ds, %bb.dv
  %memchr99.i807 = phi ptr [ %memchr.i812, %bb.dv ], [ %memchr94.i804, %bb.ds ]
  %.04298.i808 = phi i64 [ %i.sh, %bb.dv ], [ 0, %bb.ds ] ; 4 uses
  %.14997.i809 = phi ptr [ %i.sg, %bb.dv ], [ %.048.i803, %bb.ds ] ; 4 uses
  %i.rx = ptrtoint ptr %memchr99.i807 to i64
  %i.ry = trunc i64 %i.rx to i32
  %i.rz = sub i32 %i.ry, ptrtoint (ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
  %i.sa = icmp sgt i32 %i.rz, 9
  br i1 %i.sa, label %select.unfold.i814, label %bb.dt

bb.dt:                                            ; preds = %.lr.ph.i806
  %i.sb = icmp slt i64 %.04298.i808, -922337203685477580
  br i1 %i.sb, label %select.unfold.i814, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.sc = mul nsw i64 %.04298.i808, 10            ; 2 uses
  %i.sd = sext i32 %i.rz to i64                   ; 2 uses
  %i.se = or disjoint i64 %i.sd, -9223372036854775808
  %i.sf = icmp slt i64 %i.sc, %i.se
  br i1 %i.sf, label %select.unfold.i814, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.sg = getelementptr inbounds nuw i8, ptr %.14997.i809, i64 1 ; 3 uses
  %i.sh = sub nsw i64 %i.sc, %i.sd                ; 2 uses
  %i.si = load i8, ptr %i.sg, align 1, !tbaa !18
  %i.sj = sext i8 %i.si to i32
  %memchr.i812 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.sj, i64 11) ; 2 uses
  %.not72.i813 = icmp eq ptr %memchr.i812, null
  br i1 %.not72.i813, label %select.unfold.i814, label %.lr.ph.i806

select.unfold.i814:                               ; preds = %bb.dv, %bb.du, %bb.dt, %.lr.ph.i806, %bb.ds
  %.351.ph.i815 = phi ptr [ %.048.i803, %bb.ds ], [ %i.sg, %bb.dv ], [ %.14997.i809, %.lr.ph.i806 ], [ %.14997.i809, %bb.dt ], [ %.14997.i809, %bb.du ] ; 2 uses
  %.247.ph.not.i816 = phi i1 [ true, %bb.ds ], [ true, %bb.dv ], [ true, %.lr.ph.i806 ], [ false, %bb.dt ], [ false, %bb.du ]
  %.2.ph.i817 = phi i64 [ 0, %bb.ds ], [ %i.sh, %bb.dv ], [ %.04298.i808, %.lr.ph.i806 ], [ %.04298.i808, %bb.dt ], [ -9223372036854775800, %bb.du ] ; 4 uses
  %i.sk = icmp ne ptr %.351.ph.i815, %.048.i803
  %or.cond.not93.i818 = and i1 %i.sk, %.247.ph.not.i816
  %i.sl = icmp ne i64 %.2.ph.i817, -9223372036854775808
  %or.cond3.i819 = select i1 %i.rt, i1 true, i1 %i.sl
  %or.cond75.i820 = select i1 %or.cond.not93.i818, i1 %or.cond3.i819, i1 false
  %or.cond75.not.i821 = xor i1 %or.cond75.i820, true
  %i.sm = icmp eq i64 %.2.ph.i817, 0
  %or.cond5.not.i822 = select i1 %i.rt, i1 %i.sm, i1 false
  %or.cond79.i823 = select i1 %or.cond75.not.i821, i1 true, i1 %or.cond5.not.i822 ; 3 uses
  %i.sn = sub nsw i64 0, %.2.ph.i817
  %spec.select.i824 = select i1 %i.rt, i64 %.2.ph.i817, i64 %i.sn
  %.2879 = select i1 %or.cond79.i823, i64 %.0877.ph1002, i64 %spec.select.i824
  %.4.i827 = select i1 %or.cond79.i823, ptr null, ptr %.351.ph.i815
  %not.or.cond79.i823 = xor i1 %or.cond79.i823, true
  %spec.select343.a = select i1 %not.or.cond79.i823, i1 true, i1 %.0207.ph1010
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397, !llvm.loop !63

bb.dw:                                            ; preds = %bb.i
  %i.so = load i8, ptr %i.ax, align 1, !tbaa !18
  switch i8 %i.so, label %bb.fa [
    i8 122, label %bb.dz
    i8 58, label %bb.dx
  ]

bb.dx:                                            ; preds = %bb.dw
  %i.sp = getelementptr inbounds nuw i8, ptr %.0222983, i64 3
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !18
  switch i8 %i.sq, label %bb.fa [
    i8 122, label %bb.dz
    i8 58, label %bb.dy
  ]

bb.dy:                                            ; preds = %bb.dx
  %i.sr = getelementptr inbounds nuw i8, ptr %.0222983, i64 4
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !18
  %i.st = icmp eq i8 %i.ss, 122
  br i1 %i.st, label %bb.dz, label %bb.fa

bb.dz:                                            ; preds = %bb.dx, %bb.dw, %bb.dy
  %i.su = call fastcc noundef ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_111ParseOffsetEPKcS6_Pi(ptr noundef %.1193984, i8 58, ptr noundef %i.c) ; 2 uses
  %.not320 = icmp ne ptr %i.su, null
  %spec.select344 = select i1 %.not320, i1 true, i1 %.0252.ph1004
  %i.sv = load i8, ptr %i.ax, align 1, !tbaa !18
  %i.sw = icmp eq i8 %i.sv, 122
  br i1 %i.sw, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.sx = getelementptr inbounds nuw i8, ptr %.0222983, i64 3
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !18
  %i.sz = icmp eq i8 %i.sy, 122
  %i.ta = select i1 %i.sz, i64 2, i64 3
  br label %bb.eb

bb.eb:                                            ; preds = %bb.dz, %bb.ea
  %i.tb = phi i64 [ %i.ta, %bb.ea ], [ 1, %bb.dz ]
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.tb
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397, !llvm.loop !63

bb.ec:                                            ; preds = %bb.i
  %i.td = load i8, ptr %.1193984, align 1, !tbaa !18
  %i.te = icmp eq i8 %i.td, 37
  %i.tf = getelementptr inbounds nuw i8, ptr %.1193984, i64 1
  %i.tg = select i1 %i.te, ptr %i.tf, ptr null
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397, !llvm.loop !63

bb.ed:                                            ; preds = %bb.i
  %i.th = load i8, ptr %i.ax, align 1, !tbaa !18  ; 3 uses
  switch i8 %i.th, label %bb.er [
    i8 84, label %bb.ee
    i8 122, label %bb.eh
    i8 42, label %bb.eg
    i8 52, label %bb.ep
  ]

bb.ee:                                            ; preds = %bb.ed
  %i.ti = load i8, ptr %.1193984, align 1, !tbaa !18
  switch i8 %i.ti, label %.outer._crit_edge [
    i8 84, label %bb.ef
    i8 116, label %bb.ef
  ], !llvm.loop !63

bb.ef:                                            ; preds = %bb.ee, %bb.ee
  %i.tj = getelementptr inbounds nuw i8, ptr %.1193984, i64 1
  %i.tk = getelementptr inbounds nuw i8, ptr %.0222983, i64 3
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397, !llvm.loop !63

bb.eg:                                            ; preds = %bb.ed
  %i.tl = getelementptr inbounds nuw i8, ptr %.0222983, i64 3
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !18
  switch i8 %i.tm, label %.thread921.thread [
    i8 122, label %bb.eh
    i8 83, label %bb.ei
    i8 102, label %bb.em
  ]

bb.eh:                                            ; preds = %bb.eg, %bb.ed
  %i.tn = call fastcc noundef ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_111ParseOffsetEPKcS6_Pi(ptr noundef %.1193984, i8 58, ptr noundef %i.c) ; 2 uses
  %.not319 = icmp ne ptr %i.tn, null
  %spec.select345.a = select i1 %.not319, i1 true, i1 %.0252.ph1004
  %i.to = load i8, ptr %i.ax, align 1, !tbaa !18
  %i.tp = icmp eq i8 %i.to, 122
  %i.tq = select i1 %i.tp, i64 1, i64 2
  %i.tr = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.tq
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397, !llvm.loop !63

bb.ei:                                            ; preds = %bb.eg
  %i.ts = call fastcc noundef ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_(ptr noundef nonnull %.1193984, i32 noundef 2, i32 noundef 0, i32 noundef 60, ptr noundef %6) ; 4 uses
  %.not318 = icmp eq ptr %i.ts, null
  br i1 %.not318, label %bb.el, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !18
  %i.tu = icmp eq i8 %i.tt, 46
  br i1 %i.tu, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ts, i64 1
  %i.tw = call fastcc noundef ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_115ParseSubSecondsEPKcPNSt6chrono8durationIlSt5ratioILl1ELl1000000000000000EEEE(ptr noundef %i.tv, ptr noundef %7)
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej, %bb.ei
  %.7 = phi ptr [ null, %bb.ei ], [ %i.ts, %bb.ej ], [ %i.tw, %bb.ek ]
  %i.tx = getelementptr inbounds nuw i8, ptr %.0222983, i64 4
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397, !llvm.loop !63

.thread921.thread:                                ; preds = %bb.eg
  %i.ty = getelementptr inbounds nuw i8, ptr %.0222983, i64 3
  br label %bb.fa

bb.em:                                            ; preds = %bb.eg
  %i.tz = load i8, ptr %.1193984, align 1, !tbaa !18
  %21 = add i8 %i.tz, -48
  %isdigit317 = icmp ult i8 %21, 10
  br i1 %isdigit317, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.ua = call fastcc noundef ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_115ParseSubSecondsEPKcPNSt6chrono8durationIlSt5ratioILl1ELl1000000000000000EEEE(ptr noundef %.1193984, ptr noundef %7)
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.8 = phi ptr [ %.1193984, %bb.em ], [ %i.ua, %bb.en ]
  %i.ub = getelementptr inbounds nuw i8, ptr %.0222983, i64 4
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397, !llvm.loop !63

bb.ep:                                            ; preds = %bb.ed
  %i.uc = getelementptr inbounds nuw i8, ptr %.0222983, i64 3
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !18
  %i.ue = icmp eq i8 %i.ud, 89
  br i1 %i.ue, label %bb.eq, label %.thread918.a

bb.eq:                                            ; preds = %bb.ep
  %i.uf = call fastcc noundef ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_(ptr noundef %.1193984, i32 noundef 4, i64 noundef -999, i64 noundef 9999, ptr noundef %i.b) ; 3 uses
  %.not315 = icmp ne ptr %i.uf, null
  %i.ug = ptrtoint ptr %i.uf to i64
  %i.uh = ptrtoint ptr %.1193984 to i64
  %i.ui = sub i64 %i.ug, %i.uh
  %i.uj = icmp eq i64 %i.ui, 4                    ; 2 uses
  %.not1026 = and i1 %.not315, %i.uj
  %.3202 = select i1 %.not1026, i1 true, i1 %.0199.ph1011
  %.9 = select i1 %i.uj, ptr %i.uf, ptr null
  %i.uk = getelementptr inbounds nuw i8, ptr %.0222983, i64 4
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397

bb.er:                                            ; preds = %bb.ed
  %22 = add i8 %i.th, -48
  %isdigit = icmp ult i8 %22, 10
  br i1 %isdigit, label %.thread918.a, label %.thread921

.thread918.a:                                     ; preds = %bb.ep, %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !22
  %i.ul = call fastcc noundef ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_(ptr noundef nonnull %i.ax, i32 noundef 0, i32 noundef 0, i32 noundef 1024, ptr noundef %i.d) ; 3 uses
  %.not310 = icmp eq ptr %i.ul, null
  br i1 %.not310, label %.thread925, label %bb.es

bb.es:                                            ; preds = %.thread918.a
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !18
  switch i8 %i.um, label %.thread925 [
    i8 83, label %bb.et
    i8 102, label %bb.ew
  ]

bb.et:                                            ; preds = %bb.es
  %i.un = call fastcc noundef ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_(ptr noundef nonnull %.1193984, i32 noundef 2, i32 noundef 0, i32 noundef 60, ptr noundef %6) ; 4 uses
  %.not313.a = icmp eq ptr %i.un, null
  br i1 %.not313.a, label %bb.ey, label %bb.eu, !llvm.loop !63

bb.eu:                                            ; preds = %bb.et
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !18
  %i.up = icmp eq i8 %i.uo, 46
  br i1 %i.up, label %bb.ev, label %bb.ey, !llvm.loop !63

bb.ev:                                            ; preds = %bb.eu
  %i.uq = getelementptr inbounds nuw i8, ptr %i.un, i64 1
  br label %.sink.split, !llvm.loop !63

bb.ew:                                            ; preds = %bb.es
  %i.ur = load i8, ptr %.1193984, align 1, !tbaa !18
  %23 = add i8 %i.ur, -48
  %isdigit312 = icmp ult i8 %23, 10
  br i1 %isdigit312, label %bb.ex, label %bb.ey, !llvm.loop !63

bb.ex:                                            ; preds = %bb.ew
  br label %.sink.split, !llvm.loop !63

.thread925:                                       ; preds = %bb.es, %.thread918.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %.pre = load i8, ptr %i.ax, align 1, !tbaa !18
  %i.us = freeze i8 %.pre
  br label %.thread921

.sink.split:                                      ; preds = %bb.ev, %bb.ex
  %.1193984.lcssa.sink = phi ptr [ %.1193984, %bb.ex ], [ %i.uq, %bb.ev ]
  %i.ut = call fastcc noundef ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_115ParseSubSecondsEPKcPNSt6chrono8durationIlSt5ratioILl1ELl1000000000000000EEEE(ptr noundef %.1193984.lcssa.sink, ptr noundef %7)
  br label %bb.ey

bb.ey:                                            ; preds = %.sink.split, %bb.ew, %bb.et, %bb.eu
  %.12 = phi ptr [ %.1193984, %bb.ew ], [ null, %bb.et ], [ %i.un, %bb.eu ], [ %i.ut, %.sink.split ]
  %.4226 = getelementptr inbounds nuw i8, ptr %i.ul, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397

.thread921:                                       ; preds = %.thread925, %bb.er
  %.fr = phi i8 [ %i.th, %bb.er ], [ %i.us, %.thread925 ] ; 3 uses
  %i.uu = icmp ne i8 %.fr, 99
  %i.uv = icmp ne i8 %.fr, 88
  %.not1029 = and i1 %i.uv, %i.uu
  %.2217 = select i1 %.not1029, i1 %.0215.ph1007, i1 false
  %.not314 = icmp eq i8 %.fr, 0
  %i.uw = getelementptr inbounds nuw i8, ptr %.0222983, i64 3
  %spec.select1317 = select i1 %.not314, ptr %i.ax, ptr %i.uw
  br label %bb.fa

bb.ez:                                            ; preds = %bb.i
  %i.ux = load i8, ptr %i.ax, align 1, !tbaa !18  ; 3 uses
  %i.uy = icmp ne i8 %i.ux, 72
  %spec.select347 = select i1 %i.uy, i1 %.0215.ph1007, i1 false
  %i.uz = icmp eq i8 %i.ux, 73
  %.4219 = select i1 %i.uz, i1 true, i1 %spec.select347
  %.not309 = icmp eq i8 %i.ux, 0
  %i.va = getelementptr inbounds nuw i8, ptr %.0222983, i64 3
  %spec.select353 = select i1 %.not309, ptr %i.ax, ptr %i.va
  br label %bb.fa

bb.fa:                                            ; preds = %.thread921, %.thread921.thread, %bb.ez, %bb.dx, %bb.dw, %bb.dy, %bb.dl, %bb.dk, %bb.i
  %.6228 = phi ptr [ %i.ax, %bb.i ], [ %i.ax, %bb.dk ], [ %i.ax, %bb.dl ], [ %i.ax, %bb.dy ], [ %i.ax, %bb.dx ], [ %i.ax, %bb.dw ], [ %spec.select353, %bb.ez ], [ %i.ty, %.thread921.thread ], [ %spec.select1317, %.thread921 ] ; 2 uses
  %.5220 = phi i1 [ %.0215.ph1007, %bb.i ], [ true, %bb.dk ], [ false, %bb.dl ], [ %.0215.ph1007, %bb.dy ], [ %.0215.ph1007, %bb.dx ], [ %.0215.ph1007, %bb.dw ], [ %.4219, %bb.ez ], [ %.0215.ph1007, %.thread921.thread ], [ %.2217, %.thread921 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store ptr %i.aa, ptr %9, align 8, !tbaa !14
  store i64 0, ptr %i.ab, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.vb = ptrtoint ptr %.6228 to i64
  %i.vc = ptrtoint ptr %.0222983 to i64
  %i.vd = sub i64 %i.vb, %i.vc                    ; 4 uses
  store i64 %i.vd, ptr %i.a, align 8, !tbaa !32
  %i.ve = icmp ugt i64 %i.vd, 15
  br i1 %i.ve, label %.noexc.i831, label %._crit_edge.i.i830

.noexc.i831:                                      ; preds = %bb.fa
  %i.vf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc832 unwind label %bb.fd ; 2 uses

.noexc832:                                        ; preds = %.noexc.i831
  store ptr %i.vf, ptr %9, align 8, !tbaa !31
  %i.vg = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.vg, ptr %i.aa, align 8, !tbaa !18
  br label %._crit_edge.i.i830

._crit_edge.i.i830:                               ; preds = %.noexc832, %bb.fa
  %i.vh = phi ptr [ %i.vf, %.noexc832 ], [ %i.aa, %bb.fa ] ; 2 uses
  switch i64 %i.vd, label %bb.fc [
    i64 1, label %bb.fb
    i64 0, label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit
  ]

bb.fb:                                            ; preds = %._crit_edge.i.i830
  %i.vi = load i8, ptr %.0222983, align 1, !tbaa !18
  store i8 %i.vi, ptr %i.vh, align 1, !tbaa !18
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit

bb.fc:                                            ; preds = %._crit_edge.i.i830
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vh, ptr nonnull align 1 %.0222983, i64 %i.vd, i1 false)
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit

_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit: ; preds = %bb.fc, %bb.fb, %._crit_edge.i.i830
  %i.vj = load i64, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  store i64 %i.vj, ptr %i.ab, align 8, !tbaa !17
  %i.vk = load ptr, ptr %9, align 8, !tbaa !31
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 %i.vj
  store i8 0, ptr %i.vl, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.vm = load ptr, ptr %9, align 8, !tbaa !31
  %i.vn = call ptr @strptime(ptr noundef nonnull %.1193984, ptr noundef %i.vm, ptr noundef nonnull %6) #18 ; 3 uses
  %i.vo = load i64, ptr %i.ab, align 8, !tbaa !17
  %i.vp = icmp eq i64 %i.vo, 2
  %.pre1071.a = load ptr, ptr %9, align 8, !tbaa !31 ; 3 uses
  br i1 %i.vp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit
  %i.vq = load i16, ptr %.pre1071.a, align 1
  %i.vr = icmp ne i16 %i.vq, 28709
  %i.vs = zext i1 %i.vr to i32
  %i.vt = icmp eq i32 %i.vs, 0
  %i.vu = icmp ne ptr %i.vn, null
  %or.cond = and i1 %i.vu, %i.vt
  br i1 %or.cond, label %._crit_edge.i.i834, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

._crit_edge.i.i834:                               ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store ptr %i.ac, ptr %10, align 8, !tbaa !14
  store i8 49, ptr %i.ac, align 8, !tbaa !18
  store i64 1, ptr %i.ad, align 8, !tbaa !17
  store i8 0, ptr %i.af, align 1, !tbaa !18
  %i.vv = ptrtoint ptr %i.vn to i64
  %i.vw = ptrtoint ptr %.1193984 to i64
  %i.vx = sub i64 %i.vv, %i.vw
  %i.vy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 1, i64 noundef 0, ptr noundef nonnull %.1193984, i64 noundef %i.vx)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPKcvEERS4_T_S9_.exit unwind label %bb.fe ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPKcvEERS4_T_S9_.exit: ; preds = %._crit_edge.i.i834
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, i8 0, i64 56, i1 false)
  %i.vz = load ptr, ptr %10, align 8, !tbaa !31   ; 2 uses
  %.not.i839 = icmp eq ptr %i.vz, null
  br i1 %.not.i839, label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit841.thread, label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit841

_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit841.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPKcvEERS4_T_S9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit841: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPKcvEERS4_T_S9_.exit
  %i.wa = call ptr @strptime(ptr noundef nonnull %i.vz, ptr noundef nonnull @.str.9, ptr noundef nonnull %11) #18 ; 0 uses
  %.pre1068.a = load i32, ptr %i.ae, align 8, !tbaa !68
  %.pre1069.a = load ptr, ptr %10, align 8, !tbaa !31 ; 2 uses
  %i.wb = icmp eq i32 %.pre1068.a, 13             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.wc = icmp eq ptr %.pre1069.a, %i.ac
  br i1 %i.wc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit841.thread, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit841
  %i.wd = phi i1 [ false, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit841.thread ], [ %i.wb, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit841 ]
  %i.we = phi ptr [ null, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit841.thread ], [ %.pre1069.a, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit841 ]
  %i.wf = load i64, ptr %i.ac, align 8, !tbaa !18
  %i.wg = add i64 %i.wf, 1
  call void @_ZdlPvm(ptr noundef %i.we, i64 noundef %i.wg) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit841, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.wh = phi i1 [ %i.wd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.wb, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit841 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %.pre1070.a = load ptr, ptr %9, align 8, !tbaa !31
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.fd:                                            ; preds = %.noexc.i831
  %i.wi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit850

bb.fe:                                            ; preds = %._crit_edge.i.i834
  %i.wj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wk = load ptr, ptr %10, align 8, !tbaa !31   ; 2 uses
  %i.wl = icmp eq ptr %i.wk, %i.ac
  br i1 %i.wl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit844, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i842

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i842: ; preds = %bb.fe
  %i.wm = load i64, ptr %i.ac, align 8, !tbaa !18
  %i.wn = add i64 %i.wm, 1
  call void @_ZdlPvm(ptr noundef %i.wk, i64 noundef %i.wn) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit844

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit844: ; preds = %bb.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i842
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.wo = load ptr, ptr %9, align 8, !tbaa !31    ; 2 uses
  %i.wp = icmp eq ptr %i.wo, %i.aa
  br i1 %i.wp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit850, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i848

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.wq = phi ptr [ %.pre1070.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pre1071.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.pre1071.a, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit ] ; 2 uses
  %.1213 = phi i1 [ %i.wh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.0212.ph1008, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.0212.ph1008, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit ]
  %i.wr = icmp eq ptr %i.wq, %i.aa
  br i1 %i.wr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit847, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i845

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i845: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ws = load i64, ptr %i.aa, align 8, !tbaa !18
  %i.wt = add i64 %i.ws, 1
  call void @_ZdlPvm(ptr noundef %i.wq, i64 noundef %i.wt) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit847

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit847: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i845
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397

_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397: ; preds = %bb.bj, %bb.bc, %bb.ey, %bb.dj, %bb.cr, %bb.cl, %bb.cf, %bb.bz, %bb.av, %bb.ac, %bb.w, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.ef, %bb.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit847, %bb.eq, %bb.eo, %bb.el, %bb.eh, %bb.ec, %bb.eb, %select.unfold.i814, %bb.dm, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit
  %.1878 = phi i64 [ %.0877.ph1002, %bb.ey ], [ %.0877.ph1002, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit847 ], [ %.0877.ph1002, %bb.bj ], [ %.0877.ph1002, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit ], [ %.0877.ph1002, %bb.eh ], [ %.0877.ph1002, %bb.w ], [ %.0877.ph1002, %bb.ac ], [ %.0877.ph1002, %bb.av ], [ %.0877.ph1002, %bb.ef ], [ %.0877.ph1002, %bb.dj ], [ %.0877.ph1002, %bb.br ], [ %.0877.ph1002, %bb.bc ], [ %.0877.ph1002, %bb.bz ], [ %.0877.ph1002, %bb.cf ], [ %.0877.ph1002, %bb.cl ], [ %.0877.ph1002, %bb.cr ], [ %.0877.ph1002, %bb.dm ], [ %.0877.ph1002, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.2879, %select.unfold.i814 ], [ %.0877.ph1002, %bb.eb ], [ %.0877.ph1002, %bb.ec ], [ %.0877.ph1002, %bb.el ], [ %.0877.ph1002, %bb.eo ], [ %.0877.ph1002, %bb.eq ] ; 2 uses
  %.1 = phi i32 [ %.0.ph1003, %bb.ey ], [ %.0.ph1003, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit847 ], [ %spec.select938, %bb.bj ], [ %.0.ph1003, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit ], [ %.0.ph1003, %bb.eh ], [ -1, %bb.w ], [ -1, %bb.ac ], [ -1, %bb.av ], [ %.0.ph1003, %bb.ef ], [ %.0.ph1003, %bb.dj ], [ %.0.ph1003, %bb.br ], [ %spec.select936, %bb.bc ], [ %.0.ph1003, %bb.bz ], [ %.0.ph1003, %bb.cf ], [ %.0.ph1003, %bb.cl ], [ %.0.ph1003, %bb.cr ], [ %.0.ph1003, %bb.dm ], [ %.0.ph1003, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.0.ph1003, %select.unfold.i814 ], [ %.0.ph1003, %bb.eb ], [ %.0.ph1003, %bb.ec ], [ %.0.ph1003, %bb.el ], [ %.0.ph1003, %bb.eo ], [ %.0.ph1003, %bb.eq ] ; 2 uses
  %.4256 = phi i1 [ %.0252.ph1004, %bb.ey ], [ %.0252.ph1004, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit847 ], [ %.0252.ph1004, %bb.bj ], [ %.0252.ph1004, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit ], [ %spec.select345.a, %bb.eh ], [ %.0252.ph1004, %bb.w ], [ %.0252.ph1004, %bb.ac ], [ %.0252.ph1004, %bb.av ], [ %.0252.ph1004, %bb.ef ], [ %.0252.ph1004, %bb.dj ], [ %.0252.ph1004, %bb.br ], [ %.0252.ph1004, %bb.bc ], [ %.0252.ph1004, %bb.bz ], [ %.0252.ph1004, %bb.cf ], [ %.0252.ph1004, %bb.cl ], [ %.0252.ph1004, %bb.cr ], [ %spec.select342.a, %bb.dm ], [ %.0252.ph1004, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.0252.ph1004, %select.unfold.i814 ], [ %spec.select344, %bb.eb ], [ %.0252.ph1004, %bb.ec ], [ %.0252.ph1004, %bb.el ], [ %.0252.ph1004, %bb.eo ], [ %.0252.ph1004, %bb.eq ] ; 2 uses
  %.7229 = phi ptr [ %.4226, %bb.ey ], [ %.6228, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit847 ], [ %i.ax, %bb.bj ], [ %i.ax, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit ], [ %i.tr, %bb.eh ], [ %i.ax, %bb.w ], [ %i.ax, %bb.ac ], [ %i.ax, %bb.av ], [ %i.tk, %bb.ef ], [ %i.ax, %bb.dj ], [ %i.ax, %bb.br ], [ %i.ax, %bb.bc ], [ %i.ax, %bb.bz ], [ %i.ax, %bb.cf ], [ %i.ax, %bb.cl ], [ %i.ax, %bb.cr ], [ %i.ax, %bb.dm ], [ %i.ax, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.ax, %select.unfold.i814 ], [ %i.tc, %bb.eb ], [ %i.ax, %bb.ec ], [ %i.tx, %bb.el ], [ %i.ub, %bb.eo ], [ %i.uk, %bb.eq ] ; 2 uses
  %.6221 = phi i1 [ %.0215.ph1007, %bb.ey ], [ %.5220, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit847 ], [ %.0215.ph1007, %bb.bj ], [ %.0215.ph1007, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit ], [ %.0215.ph1007, %bb.eh ], [ %.0215.ph1007, %bb.w ], [ %.0215.ph1007, %bb.ac ], [ %.0215.ph1007, %bb.av ], [ %.0215.ph1007, %bb.ef ], [ false, %bb.dj ], [ %.0215.ph1007, %bb.br ], [ %.0215.ph1007, %bb.bc ], [ %.0215.ph1007, %bb.bz ], [ false, %bb.cf ], [ %.0215.ph1007, %bb.cl ], [ %.0215.ph1007, %bb.cr ], [ %.0215.ph1007, %bb.dm ], [ %.0215.ph1007, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.0215.ph1007, %select.unfold.i814 ], [ %.0215.ph1007, %bb.eb ], [ %.0215.ph1007, %bb.ec ], [ %.0215.ph1007, %bb.el ], [ %.0215.ph1007, %bb.eo ], [ %.0215.ph1007, %bb.eq ] ; 2 uses
  %.2214 = phi i1 [ %.0212.ph1008, %bb.ey ], [ %.1213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit847 ], [ %.0212.ph1008, %bb.bj ], [ %.0212.ph1008, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit ], [ %.0212.ph1008, %bb.eh ], [ %.0212.ph1008, %bb.w ], [ %.0212.ph1008, %bb.ac ], [ %.0212.ph1008, %bb.av ], [ %.0212.ph1008, %bb.ef ], [ %.0212.ph1008, %bb.dj ], [ %.0212.ph1008, %bb.br ], [ %.0212.ph1008, %bb.bc ], [ %.0212.ph1008, %bb.bz ], [ %.0212.ph1008, %bb.cf ], [ %.0212.ph1008, %bb.cl ], [ %.0212.ph1008, %bb.cr ], [ %.0212.ph1008, %bb.dm ], [ %.0212.ph1008, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.0212.ph1008, %select.unfold.i814 ], [ %.0212.ph1008, %bb.eb ], [ %.0212.ph1008, %bb.ec ], [ %.0212.ph1008, %bb.el ], [ %.0212.ph1008, %bb.eo ], [ %.0212.ph1008, %bb.eq ] ; 2 uses
end_hunk_1
