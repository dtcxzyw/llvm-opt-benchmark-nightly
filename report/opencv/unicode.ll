Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/unicode?download=true
inline.NumInlined: 8690
inline.NumDeleted: 3216
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN2cv3dnn19unicode_regex_splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE:bb.a
  %i.asb = ashr exact i64 %i.asa, 2
  br label %.lr.ph1757

bb.kl:                                            ; preds = %.lr.ph1757
  %i.asc = add nuw i64 %.01151756, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.asc, %i.asb
  br i1 %exitcond.not, label %._crit_edge1758, label %.lr.ph1757, !llvm.loop !757

._crit_edge1758:                                  ; preds = %bb.kl, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  store ptr %i.iy, ptr %22, align 8, !tbaa !74
  store i64 0, ptr %i.iz, align 8, !tbaa !73
  store i8 0, ptr %i.iy, align 8, !tbaa !72
  %i.asd = load i64, ptr %i.lj, align 8, !tbaa !73 ; 2 uses
  %.not1792 = icmp eq i64 %i.asd, 0
  br i1 %.not1792, label %._crit_edge1764, label %.lr.ph1763

bb.km:                                            ; preds = %bb.kk
  %i.ase = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11regex_error
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit350

.lr.ph1757:                                       ; preds = %.lr.ph1757.preheader, %bb.kl
  %.01151756 = phi i64 [ %i.asc, %bb.kl ], [ 0, %.lr.ph1757.preheader ] ; 2 uses
  %i.asf = getelementptr inbounds nuw [4 x i8], ptr %i.arx, i64 %.01151756
  %i.asg = load i32, ptr %i.asf, align 4, !tbaa !80
  %i.ash = icmp ugt i32 %i.asg, 127
  br i1 %i.ash, label %bb.kn, label %bb.kl

bb.kn:                                            ; preds = %.lr.ph1757
  %i.asi = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.asi, ptr noundef nonnull @.str.13)
          to label %bb.ko unwind label %bb.kp

bb.ko:                                            ; preds = %bb.kn
  invoke void @__cxa_throw(ptr nonnull %i.asi, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
          to label %bb.qu unwind label %bb.kq

bb.kp:                                            ; preds = %bb.kn
  %i.asj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11regex_error
  call void @__cxa_free_exception(ptr nonnull %i.asi) #28
  br label %bb.no

bb.kq:                                            ; preds = %bb.ko
  %i.ask = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11regex_error
  br label %bb.no

._crit_edge1764:                                  ; preds = %bb.nj, %._crit_edge1758
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !790
  invoke void @_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEEC2ISt11char_traitsIcESaIcEEERKNS_12basic_stringIcT_T0_EENSt15regex_constants18syntax_option_typeE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %22, i32 noundef 16)
          to label %.noexc256 unwind label %bb.nn

.noexc256:                                        ; preds = %._crit_edge1764
  %i.asl = ptrtoint ptr %.sroa.24.01771 to i64
  %i.asm = ptrtoint ptr %.sroa.0599.01770 to i64  ; 2 uses
  %i.asn = sub i64 %i.asl, %i.asm                 ; 3 uses
  %i.aso = icmp ugt i64 %i.asn, 9223372036854775800
  br i1 %i.aso, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %.noexc256
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #29
          to label %.noexc.i255 unwind label %.thread202.i.loopexit.split-lp, !noalias !790

.noexc.i255:                                      ; preds = %bb.kr
  unreachable

bb.ks:                                            ; preds = %.noexc256
  %.not192.i = icmp eq ptr %.sroa.24.01771, %.sroa.0599.01770
  br i1 %.not192.i, label %._crit_edge.i, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i: ; preds = %bb.ks
  %i.asp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.asn) #31
          to label %.lr.ph144.i unwind label %.thread202.i.loopexit, !noalias !790 ; 5 uses

.lr.ph144.i:                                      ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asp, i64 %i.asn ; 4 uses
  br label %bb.kz

._crit_edge.i:                                    ; preds = %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit92.i, %bb.ks
  %.sroa.0569.7 = phi ptr [ null, %bb.ks ], [ %.sroa.0569.6, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit92.i ]
  %.sroa.11571.5 = phi ptr [ null, %bb.ks ], [ %.sroa.11571.4, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit92.i ]
  %.sroa.19572.7 = phi ptr [ null, %bb.ks ], [ %.sroa.19572.6, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit92.i ]
  %i.asr = load ptr, ptr %i.jj, align 8, !tbaa !139, !noalias !790 ; 8 uses
  %.not.i.i.i.i250 = icmp eq ptr %i.asr, null
  br i1 %.not.i.i.i.i250, label %bb.nk, label %bb.kt

bb.kt:                                            ; preds = %._crit_edge.i
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asr, i64 8 ; 4 uses
  %i.ast = load atomic i64, ptr %i.ass acquire, align 8, !noalias !790 ; 2 uses
  %i.asu = icmp eq i64 %i.ast, 4294967297
  %i.asv = trunc i64 %i.ast to i32                ; 2 uses
  br i1 %i.asu, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %bb.kt
  store i32 0, ptr %i.ass, align 8, !tbaa !141, !noalias !790
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asr, i64 12
  store i32 0, ptr %i.asw, align 4, !tbaa !142, !noalias !790
  %i.asx = load ptr, ptr %i.asr, align 8, !tbaa !144, !noalias !790
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asx, i64 16
  %i.asz = load ptr, ptr %i.asy, align 8, !noalias !790
  call void %i.asz(ptr noundef nonnull align 8 dereferenceable(16) %i.asr) #28, !noalias !790, !inline_history !760
  %i.ata = load ptr, ptr %i.asr, align 8, !tbaa !144, !noalias !790
  %i.atb = getelementptr inbounds nuw i8, ptr %i.ata, i64 24
  %i.atc = load ptr, ptr %i.atb, align 8, !noalias !790
  call void %i.atc(ptr noundef nonnull align 8 dereferenceable(16) %i.asr) #28, !noalias !790, !inline_history !760
  br label %bb.nk

bb.kv:                                            ; preds = %bb.kt
  %i.atd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72, !noalias !790
  %.not.i.i.i.i.i251 = icmp eq i8 %i.atd, 0
  br i1 %.not.i.i.i.i.i251, label %bb.kx, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.ate = add nsw i32 %i.asv, -1
  store i32 %i.ate, ptr %i.ass, align 8, !tbaa !80, !noalias !790
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.kx:                                            ; preds = %bb.kv
  %i.atf = atomicrmw volatile add ptr %i.ass, i32 -1 acq_rel, align 4, !noalias !790
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.kx, %bb.kw
  %.0.i.i.i.i.i.i = phi i32 [ %i.asv, %bb.kw ], [ %i.atf, %bb.kx ]
  %i.atg = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.atg, label %bb.ky, label %bb.nk, !prof !114

bb.ky:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.asr) #28, !noalias !790
  br label %bb.nk

.thread202.i.loopexit:                            ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i
  %lpad.loopexit752 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11regex_error
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

.thread202.i.loopexit.split-lp:                   ; preds = %bb.kr
  %lpad.loopexit.split-lp753 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11regex_error
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

bb.kz:                                            ; preds = %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit92.i, %.lr.ph144.i
  %.sroa.0569.1 = phi ptr [ %i.asp, %.lr.ph144.i ], [ %.sroa.0569.6, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit92.i ] ; 3 uses
  %.sroa.11571.1 = phi ptr [ %i.asp, %.lr.ph144.i ], [ %.sroa.11571.4, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit92.i ] ; 2 uses
  %.sroa.19572.1 = phi ptr [ %i.asq, %.lr.ph144.i ], [ %.sroa.19572.6, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit92.i ] ; 3 uses
  %i.ath = phi ptr [ %i.asq, %.lr.ph144.i ], [ %i.azs, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit92.i ] ; 5 uses
  %i.ati = phi ptr [ %i.asq, %.lr.ph144.i ], [ %i.azt, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit92.i ] ; 3 uses
  %i.atj = phi ptr [ %i.asp, %.lr.ph144.i ], [ %i.azu, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit92.i ] ; 5 uses
  %i.atk = phi ptr [ %i.asq, %.lr.ph144.i ], [ %i.azv, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit92.i ] ; 3 uses
  %i.atl = phi ptr [ %i.asp, %.lr.ph144.i ], [ %i.azw, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit92.i ] ; 3 uses
  %.025143.i = phi i64 [ 0, %.lr.ph144.i ], [ %i.azx, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit92.i ] ; 2 uses
  %.sroa.0110.0142.i = phi ptr [ %.sroa.0599.01770, %.lr.ph144.i ], [ %i.bad, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit92.i ] ; 2 uses
  %i.atm = load i64, ptr %.sroa.0110.0142.i, align 8, !tbaa !66, !noalias !790 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28, !noalias !790
  %i.atn = load ptr, ptr %20, align 8, !tbaa !71, !noalias !790
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atn, i64 %.025143.i ; 3 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %i.ato, i64 %i.atm ; 2 uses
  store ptr %i.ato, ptr %7, align 8, !tbaa !792, !noalias !790
  store ptr %i.atp, ptr %i.jg, align 8, !tbaa !793, !noalias !790
  store ptr %6, ptr %i.jc, align 8, !tbaa !794, !noalias !790
  store i32 0, ptr %i.jh, align 8, !tbaa !795, !noalias !790
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jd, i8 0, i64 32, i1 false), !noalias !790
  %i.atq = invoke noundef zeroext i1 @_ZNSt8__detail17__regex_algo_implIPKcSaINSt7__cxx119sub_matchIS2_EEEcNS3_12regex_traitsIcEEEEbT_S9_RNS3_13match_resultsIS9_T0_EERKNS3_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeENS_20_RegexExecutorPolicyEb(ptr noundef %i.ato, ptr noundef %i.atp, ptr noundef nonnull align 8 dereferenceable(32) %i.jd, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZSt12regex_searchIPKcSaINSt7__cxx119sub_matchIS1_EEEcNS2_12regex_traitsIcEEEbT_S8_RNS2_13match_resultsIS8_T0_EERKNS2_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeE.exit.i unwind label %bb.la, !noalias !790

_ZSt12regex_searchIPKcSaINSt7__cxx119sub_matchIS1_EEEcNS2_12regex_traitsIcEEEbT_S8_RNS2_13match_resultsIS8_T0_EERKNS2_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeE.exit.i: ; preds = %bb.kz
  br i1 %i.atq, label %.preheader.i, label %.preheader.i.thread

.preheader.i.thread:                              ; preds = %_ZSt12regex_searchIPKcSaINSt7__cxx119sub_matchIS1_EEEcNS2_12regex_traitsIcEEEbT_S8_RNS2_13match_resultsIS8_T0_EERKNS2_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeE.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 28, i1 false), !noalias !790
  %i.atr = load ptr, ptr %i.jd, align 8, !tbaa !153, !noalias !790
  store ptr %i.atr, ptr %i.jf, align 8, !tbaa !154, !noalias !790
  store ptr null, ptr %i.je, align 8, !tbaa !155, !noalias !790
  br label %_ZNKSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEneERKS5_.exit.i

bb.la:                                            ; preds = %bb.kz
  %i.ats = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11regex_error          ; 2 uses
  %i.att = load ptr, ptr %i.jd, align 8, !tbaa !153, !noalias !790 ; 2 uses
  %.not.i.i.i.i517 = icmp eq ptr %i.att, null
  br i1 %.not.i.i.i.i517, label %bb.lv, label %.sink.split

.preheader.i:                                     ; preds = %_ZSt12regex_searchIPKcSaINSt7__cxx119sub_matchIS1_EEEcNS2_12regex_traitsIcEEEbT_S8_RNS2_13match_resultsIS8_T0_EERKNS2_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeE.exit.i
  %.pre2569 = load ptr, ptr %i.jc, align 8, !tbaa !794, !noalias !790
  %i.atu = icmp eq ptr %.pre2569, null
  br i1 %i.atu, label %_ZNKSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEneERKS5_.exit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %.pre2570 = load ptr, ptr %i.je, align 8, !tbaa !155, !noalias !790
  %.pre2571 = load ptr, ptr %i.jf, align 8, !tbaa !156, !noalias !790
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.i
  %i.atv = phi ptr [ %36, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.i ], [ %.pre2571, %.lr.ph.i.preheader ] ; 5 uses
  %i.atw = phi ptr [ %37, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.i ], [ %.pre2570, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.0569.2 = phi ptr [ %.sroa.0569.4, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.i ], [ %.sroa.0569.1, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.19572.2 = phi ptr [ %.sroa.19572.4, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.i ], [ %.sroa.19572.1, %.lr.ph.i.preheader ] ; 3 uses
  %i.atx = phi ptr [ %i.awt, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.i ], [ %i.ath, %.lr.ph.i.preheader ] ; 5 uses
  %i.aty = phi ptr [ %i.awv, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.i ], [ %i.ati, %.lr.ph.i.preheader ] ; 3 uses
  %i.atz = phi ptr [ %i.aww, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.i ], [ %i.atj, %.lr.ph.i.preheader ] ; 8 uses
  %i.aua = phi ptr [ %i.awv, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.i ], [ %i.atk, %.lr.ph.i.preheader ] ; 2 uses
  %i.aub = phi ptr [ %.sroa.11571.2, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.i ], [ %i.atl, %.lr.ph.i.preheader ] ; 5 uses
  %.0140.i = phi i64 [ %i.ayt, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.auc = load ptr, ptr %i.jd, align 8, !tbaa !156, !noalias !790 ; 7 uses
  %i.aud = icmp eq ptr %i.auc, %i.atv
  %.pre.i.i.i = ptrtoint ptr %i.atv to i64        ; 3 uses
  %.pre2.i.i.i = ptrtoint ptr %i.auc to i64       ; 5 uses
  br i1 %i.aud, label %bb.lb, label %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i

_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i: ; preds = %.lr.ph.i
  %i.aue = load ptr, ptr %i.auc, align 8, !tbaa !158, !noalias !790
  %i.auf = ptrtoint ptr %i.aue to i64             ; 2 uses
  %i.aug = ptrtoint ptr %i.atw to i64             ; 2 uses
  %i.auh = sub i64 %i.auf, %i.aug
  %i.aui = icmp sgt i64 %i.auh, %.0140.i
  br i1 %i.aui, label %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i42.i, label %_ZNSt6vectorImSaImEE12emplace_backIJlEEERmDpOT_.exit.i

bb.lb:                                            ; preds = %.lr.ph.i
  %.pre4.i.i.i = sub i64 %.pre.i.i.i, %.pre2.i.i.i
  %i.auj = getelementptr i8, ptr %i.auc, i64 %.pre4.i.i.i
  %i.auk = getelementptr i8, ptr %i.auj, i64 -72
  %i.aul = load ptr, ptr %i.auk, align 8, !tbaa !158, !noalias !790
  %i.aum = ptrtoint ptr %i.aul to i64             ; 2 uses
  %i.aun = ptrtoint ptr %i.atw to i64             ; 2 uses
  %i.auo = sub i64 %i.aum, %i.aun
  %i.aup = icmp sgt i64 %i.auo, %.0140.i
  br i1 %i.aup, label %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i42.i, label %_ZNSt6vectorImSaImEE12emplace_backIJlEEERmDpOT_.exit.i

_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i42.i: ; preds = %bb.lb, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i
  %.pre-phi2581 = phi i64 [ %i.aum, %bb.lb ], [ %i.auf, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i ]
  %i.auq = phi i64 [ %i.aun, %bb.lb ], [ %i.aug, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i ]
  %i.aur = add i64 %i.auq, %.0140.i
  %i.aus = sub i64 %.pre-phi2581, %i.aur          ; 2 uses
  %.not.i.i254 = icmp eq ptr %i.aub, %i.aua
  br i1 %.not.i.i254, label %bb.ld, label %bb.lc

bb.lc:                                            ; preds = %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i42.i
  store i64 %i.aus, ptr %i.aub, align 8, !tbaa !66, !noalias !790
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aub, i64 8
  br label %_ZNSt6vectorImSaImEE12emplace_backIJlEEERmDpOT_.exit.i

bb.ld:                                            ; preds = %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i42.i
  %i.auu = ptrtoint ptr %i.aua to i64
  %i.auv = ptrtoint ptr %i.atz to i64
  %i.auw = sub i64 %i.auu, %i.auv                 ; 6 uses
  %i.aux = icmp eq i64 %i.auw, 9223372036854775800
  br i1 %i.aux, label %bb.le, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.le:                                            ; preds = %bb.ld
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #29
          to label %.noexc46.i unwind label %.loopexit.split-lp.i, !noalias !790

.noexc46.i:                                       ; preds = %bb.le
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ld
  %i.auy = ashr exact i64 %i.auw, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.auy, i64 1)
  %i.auz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.auy ; 2 uses
  %i.ava = icmp ult i64 %i.auz, %i.auy
  %i.avb = call i64 @llvm.umin.i64(i64 %i.auz, i64 1152921504606846975)
  %i.avc = select i1 %i.ava, i64 1152921504606846975, i64 %i.avb ; 3 uses
  %.not.i.i.i45.i = icmp ne i64 %i.avc, 0
  call void @llvm.assume(i1 %.not.i.i.i45.i)
  %i.avd = shl nuw nsw i64 %i.avc, 3
  %i.ave = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.avd) #31
          to label %.noexc47.i unwind label %.loopexit.i, !noalias !790 ; 5 uses

.noexc47.i:                                       ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.avf = getelementptr inbounds i8, ptr %i.ave, i64 %i.auw ; 2 uses
  store i64 %i.aus, ptr %i.avf, align 8, !tbaa !66, !noalias !790
  %i.avg = icmp sgt i64 %i.auw, 0
  br i1 %i.avg, label %bb.lf, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

bb.lf:                                            ; preds = %.noexc47.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ave, ptr align 8 %i.atz, i64 %i.auw, i1 false), !noalias !790
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.lf, %.noexc47.i
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avf, i64 8
  call void @_ZdlPvm(ptr noundef nonnull %i.atz, i64 noundef %i.auw) #30, !noalias !790
  %i.avi = getelementptr inbounds nuw [8 x i8], ptr %i.ave, i64 %i.avc ; 3 uses
  %.pre147.i = load ptr, ptr %i.jd, align 8, !tbaa !156, !noalias !790 ; 2 uses
  %.pre148.i = load ptr, ptr %i.jf, align 8, !tbaa !156, !noalias !790 ; 2 uses
  %.pre159.i = ptrtoint ptr %.pre148.i to i64
  %.pre160.i = ptrtoint ptr %.pre147.i to i64
  br label %_ZNSt6vectorImSaImEE12emplace_backIJlEEERmDpOT_.exit.i

bb.lg:                                            ; preds = %bb.lo, %bb.lm
  %i.avj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11regex_error
  br label %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit94.i

.loopexit.i:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11regex_error
  br label %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit94.i

.loopexit.split-lp.i:                             ; preds = %bb.le
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11regex_error
  br label %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit94.i

_ZNSt6vectorImSaImEE12emplace_backIJlEEERmDpOT_.exit.i: ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.lc, %bb.lb, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i
  %i.avk = phi ptr [ %.pre148.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.atv, %bb.lc ], [ %i.atv, %bb.lb ], [ %i.atv, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i ] ; 2 uses
  %.sroa.0569.3 = phi ptr [ %i.ave, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0569.2, %bb.lc ], [ %.sroa.0569.2, %bb.lb ], [ %.sroa.0569.2, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i ]
  %.sroa.19572.3 = phi ptr [ %i.avi, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.19572.2, %bb.lc ], [ %.sroa.19572.2, %bb.lb ], [ %.sroa.19572.2, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i ]
  %.pre2.i.i49.pre-phi.i = phi i64 [ %.pre160.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.pre2.i.i.i, %bb.lc ], [ %.pre2.i.i.i, %bb.lb ], [ %.pre2.i.i.i, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i ] ; 2 uses
  %.pre.i.i48.pre-phi.i = phi i64 [ %.pre159.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.pre.i.i.i, %bb.lc ], [ %.pre2.i.i.i, %bb.lb ], [ %.pre.i.i.i, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i ] ; 2 uses
  %i.avl = phi ptr [ %i.avi, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.atx, %bb.lc ], [ %i.atx, %bb.lb ], [ %i.atx, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i ] ; 3 uses
  %i.avm = phi ptr [ %i.avi, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.aty, %bb.lc ], [ %i.aty, %bb.lb ], [ %i.aty, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i ] ; 3 uses
  %i.avn = phi ptr [ %i.avh, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.aut, %bb.lc ], [ %i.aub, %bb.lb ], [ %i.aub, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i ] ; 3 uses
  %i.avo = phi ptr [ %.pre147.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.auc, %bb.lc ], [ %i.auc, %bb.lb ], [ %i.auc, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i ] ; 4 uses
  %i.avp = phi ptr [ %i.ave, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.atz, %bb.lc ], [ %i.atz, %bb.lb ], [ %i.atz, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i ] ; 6 uses
  %i.avq = icmp eq ptr %i.avo, %i.avk
  %.pre4.i.i50.i = sub i64 %.pre.i.i48.pre-phi.i, %.pre2.i.i49.pre-phi.i ; 2 uses
  %.not121.i = icmp eq i64 %.pre4.i.i50.i, 72
  %or.cond.i = or i1 %.not121.i, %i.avq
  %i.avr = getelementptr i8, ptr %i.avo, i64 %.pre4.i.i50.i
  %i.avs = getelementptr i8, ptr %i.avr, i64 -72
  %i.avt = select i1 %or.cond.i, ptr %i.avs, ptr %i.avo ; 3 uses
  %i.avu = getelementptr inbounds nuw i8, ptr %i.avt, i64 16
  %i.avv = load i8, ptr %i.avu, align 8, !tbaa !161, !range !162, !noalias !790, !noundef !163
  %i.avw = trunc nuw i8 %i.avv to i1
  %i.avx = load ptr, ptr %i.avt, align 8, !noalias !790
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avt, i64 8
  %i.avz = load ptr, ptr %i.avy, align 8, !noalias !790
  %i.awa = ptrtoint ptr %i.avz to i64
  %i.awb = ptrtoint ptr %i.avx to i64
  %i.awc = sub i64 %i.awa, %i.awb
  %i.awd = select i1 %i.avw, i64 %i.awc, i64 0    ; 2 uses
  %.not.i53.i = icmp eq ptr %i.avn, %i.avm
  br i1 %.not.i53.i, label %bb.li, label %bb.lh

bb.lh:                                            ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJlEEERmDpOT_.exit.i
  store i64 %i.awd, ptr %i.avn, align 8, !tbaa !66, !noalias !790
  br label %_ZNSt6vectorImSaImEE12emplace_backIJlEEERmDpOT_.exit62.i

bb.li:                                            ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJlEEERmDpOT_.exit.i
  %i.awe = ptrtoint ptr %i.avm to i64
  %i.awf = ptrtoint ptr %i.avp to i64
  %i.awg = sub i64 %i.awe, %i.awf                 ; 6 uses
  %i.awh = icmp eq i64 %i.awg, 9223372036854775800
  br i1 %i.awh, label %bb.lj, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i54.i

bb.lj:                                            ; preds = %bb.li
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #29
          to label %.noexc60.i253 unwind label %.loopexit.split-lp126.i, !noalias !790

.noexc60.i253:                                    ; preds = %bb.lj
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i54.i: ; preds = %bb.li
  %i.awi = ashr exact i64 %i.awg, 3               ; 3 uses
  %.sroa.speculated.i.i.i55.i = call i64 @llvm.umax.i64(i64 %i.awi, i64 1)
  %i.awj = add nsw i64 %.sroa.speculated.i.i.i55.i, %i.awi ; 2 uses
  %i.awk = icmp ult i64 %i.awj, %i.awi
  %i.awl = call i64 @llvm.umin.i64(i64 %i.awj, i64 1152921504606846975)
  %i.awm = select i1 %i.awk, i64 1152921504606846975, i64 %i.awl ; 3 uses
  %.not.i.i.i56.i = icmp ne i64 %i.awm, 0
  call void @llvm.assume(i1 %.not.i.i.i56.i)
  %i.awn = shl nuw nsw i64 %i.awm, 3
  %i.awo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.awn) #31
          to label %.noexc61.i252 unwind label %.loopexit125.i, !noalias !790 ; 5 uses

.noexc61.i252:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i54.i
  %i.awp = getelementptr inbounds i8, ptr %i.awo, i64 %i.awg ; 2 uses
  store i64 %i.awd, ptr %i.awp, align 8, !tbaa !66, !noalias !790
  %i.awq = icmp sgt i64 %i.awg, 0
  br i1 %i.awq, label %bb.lk, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i59.i

bb.lk:                                            ; preds = %.noexc61.i252
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.awo, ptr align 8 %i.avp, i64 %i.awg, i1 false), !noalias !790
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i59.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i59.i: ; preds = %bb.lk, %.noexc61.i252
  call void @_ZdlPvm(ptr noundef nonnull %i.avp, i64 noundef %i.awg) #30, !noalias !790
  %i.awr = getelementptr inbounds nuw [8 x i8], ptr %i.awo, i64 %i.awm ; 3 uses
  %.pre149.i = load ptr, ptr %i.jd, align 8, !tbaa !156, !noalias !790 ; 2 uses
  %.pre150.i = load ptr, ptr %i.jf, align 8, !tbaa !156, !noalias !790 ; 2 uses
  %.pre161.i = ptrtoint ptr %.pre150.i to i64
  %.pre162.i = ptrtoint ptr %.pre149.i to i64
  br label %_ZNSt6vectorImSaImEE12emplace_backIJlEEERmDpOT_.exit62.i

_ZNSt6vectorImSaImEE12emplace_backIJlEEERmDpOT_.exit62.i: ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i59.i, %bb.lh
  %i.aws = phi ptr [ %.pre150.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i59.i ], [ %i.avk, %bb.lh ] ; 3 uses
  %.sroa.0569.4 = phi ptr [ %i.awo, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i59.i ], [ %.sroa.0569.3, %bb.lh ] ; 3 uses
  %.pn730 = phi ptr [ %i.awp, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i59.i ], [ %i.avn, %bb.lh ]
  %.sroa.19572.4 = phi ptr [ %i.awr, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i59.i ], [ %.sroa.19572.3, %bb.lh ] ; 3 uses
  %.pre2.i.i64.pre-phi.i = phi i64 [ %.pre162.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i59.i ], [ %.pre2.i.i49.pre-phi.i, %bb.lh ]
  %.pre.i.i63.pre-phi.i = phi i64 [ %.pre161.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i59.i ], [ %.pre.i.i48.pre-phi.i, %bb.lh ]
  %i.awt = phi ptr [ %i.awr, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i59.i ], [ %i.avl, %bb.lh ] ; 4 uses
  %i.awu = phi ptr [ %.pre149.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i59.i ], [ %i.avo, %bb.lh ] ; 5 uses
  %i.awv = phi ptr [ %i.awr, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i59.i ], [ %i.avm, %bb.lh ] ; 6 uses
  %i.aww = phi ptr [ %i.awo, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i59.i ], [ %i.avp, %bb.lh ] ; 4 uses
  %.sroa.11571.2 = getelementptr inbounds nuw i8, ptr %.pn730, i64 8 ; 5 uses
  %i.awx = load ptr, ptr %i.je, align 8, !tbaa !155, !noalias !790 ; 4 uses
  %i.awy = icmp eq ptr %i.awu, %i.aws
  br i1 %i.awy, label %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEEixEm.exit.i.i, label %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i66.i

_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i66.i: ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJlEEERmDpOT_.exit62.i
  %i.awz = load ptr, ptr %i.awu, align 8, !tbaa !158, !noalias !790 ; 2 uses
  %i.axa = ptrtoint ptr %i.awz to i64             ; 2 uses
  %i.axb = ptrtoint ptr %i.awx to i64
  %i.axc = sub i64 %i.axa, %i.axb                 ; 2 uses
  %i.axd = getelementptr i8, ptr %i.awu, i64 16
  %i.axe = load i8, ptr %i.axd, align 8, !tbaa !161, !range !162, !noalias !790, !noundef !163
  %i.axf = trunc nuw i8 %i.axe to i1
  %28 = getelementptr i8, ptr %i.awu, i64 8
  %29 = load ptr, ptr %28, align 8, !noalias !790 ; 2 uses
  %30 = ptrtoint ptr %29 to i64
  %31 = sub i64 %30, %i.axa
  br i1 %i.axf, label %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEEixEm.exit42.i.i, label %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.i

_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEEixEm.exit.i.i: ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJlEEERmDpOT_.exit62.i
  %.pre4.i.i65.i = sub i64 %.pre.i.i63.pre-phi.i, %.pre2.i.i64.pre-phi.i
  %i.axg = getelementptr i8, ptr %i.awu, i64 %.pre4.i.i65.i ; 3 uses
  %i.axh = getelementptr i8, ptr %i.axg, i64 -72
  %i.axi = load ptr, ptr %i.axh, align 8, !tbaa !158, !noalias !790 ; 2 uses
  %i.axj = ptrtoint ptr %i.axi to i64             ; 2 uses
  %i.axk = ptrtoint ptr %i.awx to i64
  %i.axl = sub i64 %i.axj, %i.axk                 ; 2 uses
  %i.axm = getelementptr i8, ptr %i.axg, i64 -56
  %i.axn = load i8, ptr %i.axm, align 8, !tbaa !161, !range !162, !noalias !790, !noundef !163
  %i.axo = trunc nuw i8 %i.axn to i1
  %i.axp = getelementptr i8, ptr %i.axg, i64 -64
  %i.axq = load ptr, ptr %i.axp, align 8, !noalias !790 ; 2 uses
  %i.axr = ptrtoint ptr %i.axq to i64
  %i.axs = sub i64 %i.axr, %i.axj
  br i1 %i.axo, label %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEEixEm.exit42.i.i, label %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.i

_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEEixEm.exit42.i.i: ; preds = %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i66.i, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEEixEm.exit.i.i
  %32 = phi ptr [ %i.axq, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEEixEm.exit.i.i ], [ %29, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i66.i ] ; 7 uses
  %33 = phi ptr [ %i.axi, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEEixEm.exit.i.i ], [ %i.awz, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i66.i ]
  %34 = phi i64 [ %i.axs, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEEixEm.exit.i.i ], [ %31, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i66.i ] ; 2 uses
  %35 = phi i64 [ %i.axl, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEEixEm.exit.i.i ], [ %i.axc, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i66.i ] ; 2 uses
  %i.axt = icmp eq ptr %33, %32
  %.pre153.i = load ptr, ptr %i.jg, align 8, !tbaa !793, !noalias !790 ; 3 uses
  br i1 %i.axt, label %bb.ll, label %bb.lo

bb.ll:                                            ; preds = %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEEixEm.exit42.i.i
  %i.axu = icmp eq ptr %32, %.pre153.i
  br i1 %i.axu, label %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.thread.i, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.axv = load ptr, ptr %i.jc, align 8, !tbaa !794, !noalias !790
  %i.axw = load i32, ptr %i.jh, align 8, !tbaa !795, !noalias !790
  %i.axx = or i32 %i.axw, 96
  %i.axy = invoke noundef zeroext i1 @_ZNSt8__detail17__regex_algo_implIPKcSaINSt7__cxx119sub_matchIS2_EEEcNS3_12regex_traitsIcEEEEbT_S9_RNS3_13match_resultsIS9_T0_EERKNS3_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeENS_20_RegexExecutorPolicyEb(ptr noundef %32, ptr noundef %.pre153.i, ptr noundef nonnull align 8 dereferenceable(32) %i.jd, ptr noundef nonnull align 8 dereferenceable(32) %i.axv, i32 noundef %i.axx, i32 noundef 0, i1 noundef zeroext false)
          to label %.noexc80.i unwind label %bb.lg, !noalias !790

.noexc80.i:                                       ; preds = %bb.lm
  br i1 %i.axy, label %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.sink.split.i, label %bb.ln

bb.ln:                                            ; preds = %.noexc80.i
  %i.axz = getelementptr inbounds nuw i8, ptr %32, i64 1
  %.pre152.i = load ptr, ptr %i.jg, align 8, !tbaa !793, !noalias !790
  br label %bb.lo

bb.lo:                                            ; preds = %bb.ln, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEEixEm.exit42.i.i
  %i.aya = phi ptr [ %.pre152.i, %bb.ln ], [ %.pre153.i, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEEixEm.exit42.i.i ]
  %.016.i.i = phi ptr [ %i.axz, %bb.ln ], [ %32, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEEixEm.exit42.i.i ]
  %i.ayb = load i32, ptr %i.jh, align 8, !tbaa !164, !noalias !790
  %i.ayc = or i32 %i.ayb, 128                     ; 2 uses
  store i32 %i.ayc, ptr %i.jh, align 8, !tbaa !164, !noalias !790
  %i.ayd = load ptr, ptr %i.jc, align 8, !tbaa !794, !noalias !790
  %i.aye = invoke noundef zeroext i1 @_ZNSt8__detail17__regex_algo_implIPKcSaINSt7__cxx119sub_matchIS2_EEEcNS3_12regex_traitsIcEEEEbT_S9_RNS3_13match_resultsIS9_T0_EERKNS3_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeENS_20_RegexExecutorPolicyEb(ptr noundef %.016.i.i, ptr noundef %i.aya, ptr noundef nonnull align 8 dereferenceable(32) %i.jd, ptr noundef nonnull align 8 dereferenceable(32) %i.ayd, i32 noundef %i.ayc, i32 noundef 0, i1 noundef zeroext false)
          to label %.noexc81.i unwind label %bb.lg, !noalias !790

.noexc81.i:                                       ; preds = %bb.lo
  br i1 %i.aye, label %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.sink.split.i, label %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.thread.i

_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.thread.i: ; preds = %.noexc81.i, %bb.ll
  store ptr null, ptr %i.jc, align 8, !tbaa !794, !noalias !790
  %i.ayf = add nsw i64 %35, %34
  br label %_ZNKSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEneERKS5_.exit.i

_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.sink.split.i: ; preds = %.noexc81.i, %.noexc80.i
  %i.ayg = load ptr, ptr %i.jf, align 8, !tbaa !154, !noalias !790 ; 2 uses
  %i.ayh = load ptr, ptr %i.jd, align 8, !tbaa !153, !noalias !790 ; 2 uses
  %i.ayi = ptrtoint ptr %i.ayg to i64
  %i.ayj = ptrtoint ptr %i.ayh to i64
  %i.ayk = sub i64 %i.ayi, %i.ayj
  %i.ayl = getelementptr i8, ptr %i.ayh, i64 %i.ayk ; 3 uses
  %i.aym = getelementptr i8, ptr %i.ayl, i64 -48
  store ptr %32, ptr %i.aym, align 8, !tbaa !158, !noalias !790
  %i.ayn = getelementptr i8, ptr %i.ayl, i64 -40
  %i.ayo = load ptr, ptr %i.ayn, align 8, !tbaa !165, !noalias !790
  %i.ayp = icmp ne ptr %32, %i.ayo
  %i.ayq = getelementptr i8, ptr %i.ayl, i64 -32
  %i.ayr = zext i1 %i.ayp to i8
  store i8 %i.ayr, ptr %i.ayq, align 8, !tbaa !161, !noalias !790
  %i.ays = load ptr, ptr %7, align 8, !tbaa !792, !noalias !790 ; 2 uses
  store ptr %i.ays, ptr %i.je, align 8, !tbaa !796, !noalias !790
  br label %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.i

_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.i: ; preds = %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i66.i, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.sink.split.i, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEEixEm.exit.i.i
  %36 = phi ptr [ %i.aws, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEEixEm.exit.i.i ], [ %i.aws, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i66.i ], [ %i.ayg, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.sink.split.i ]
  %37 = phi ptr [ %i.awx, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEEixEm.exit.i.i ], [ %i.awx, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i66.i ], [ %i.ays, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.sink.split.i ]
  %.ph.i = phi i64 [ 0, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEEixEm.exit.i.i ], [ 0, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i66.i ], [ %34, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.sink.split.i ]
  %.ph201.i = phi i64 [ %i.axl, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEEixEm.exit.i.i ], [ %i.axc, %_ZNKSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i66.i ], [ %35, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.sink.split.i ]
  %.pr.i249 = load ptr, ptr %i.jc, align 8, !tbaa !794, !noalias !790
  %i.ayt = add nsw i64 %.ph201.i, %.ph.i          ; 2 uses
  %i.ayu = icmp eq ptr %.pr.i249, null
  br i1 %i.ayu, label %_ZNKSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEneERKS5_.exit.i, label %.lr.ph.i, !llvm.loop !761

.loopexit125.i:                                   ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i54.i
  %lpad.loopexit127.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11regex_error
  br label %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit94.i

.loopexit.split-lp126.i:                          ; preds = %bb.lj
  %lpad.loopexit.split-lp128.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11regex_error
  br label %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit94.i

_ZNKSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEneERKS5_.exit.i: ; preds = %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.i, %.preheader.i.thread, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.thread.i, %.preheader.i
  %.sroa.0569.5 = phi ptr [ %.sroa.0569.1, %.preheader.i ], [ %.sroa.0569.4, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.thread.i ], [ %.sroa.0569.1, %.preheader.i.thread ], [ %.sroa.0569.4, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.i ] ; 2 uses
  %.sroa.11571.3 = phi ptr [ %.sroa.11571.1, %.preheader.i ], [ %.sroa.11571.2, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.thread.i ], [ %.sroa.11571.1, %.preheader.i.thread ], [ %.sroa.11571.2, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.i ]
  %.sroa.19572.5 = phi ptr [ %.sroa.19572.1, %.preheader.i ], [ %.sroa.19572.4, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.thread.i ], [ %.sroa.19572.1, %.preheader.i.thread ], [ %.sroa.19572.4, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.i ] ; 2 uses
  %i.ayv = phi ptr [ %i.ath, %.preheader.i ], [ %i.awt, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.thread.i ], [ %i.ath, %.preheader.i.thread ], [ %i.awt, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.i ] ; 8 uses
  %i.ayw = phi ptr [ %i.ati, %.preheader.i ], [ %i.awv, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.thread.i ], [ %i.ati, %.preheader.i.thread ], [ %i.awv, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.i ]
  %i.ayx = phi ptr [ %i.atj, %.preheader.i ], [ %i.aww, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.thread.i ], [ %i.atj, %.preheader.i.thread ], [ %i.aww, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.i ] ; 7 uses
  %i.ayy = phi ptr [ %i.atk, %.preheader.i ], [ %i.awv, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.thread.i ], [ %i.atk, %.preheader.i.thread ], [ %i.awv, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.i ]
  %i.ayz = phi ptr [ %i.atl, %.preheader.i ], [ %.sroa.11571.2, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.thread.i ], [ %i.atl, %.preheader.i.thread ], [ %.sroa.11571.2, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.i ] ; 4 uses
  %.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.ayf, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.thread.i ], [ 0, %.preheader.i.thread ], [ %i.ayt, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEppEv.exit.i ] ; 2 uses
  %i.aza = icmp slt i64 %.0.lcssa.i, %i.atm
  br i1 %i.aza, label %bb.lp, label %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit.i

bb.lp:                                            ; preds = %_ZNKSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEneERKS5_.exit.i
  %i.azb = sub i64 %i.atm, %.0.lcssa.i            ; 2 uses
  %.not.i82.i = icmp eq ptr %i.ayz, %i.ayv
  br i1 %.not.i82.i, label %bb.lr, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  store i64 %i.azb, ptr %i.ayz, align 8, !tbaa !66, !noalias !790
  %i.azc = getelementptr inbounds nuw i8, ptr %i.ayz, i64 8 ; 2 uses
  br label %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit.i

bb.lr:                                            ; preds = %bb.lp
  %i.azd = ptrtoint ptr %i.ayv to i64
  %i.aze = ptrtoint ptr %i.ayx to i64
  %i.azf = sub i64 %i.azd, %i.aze                 ; 6 uses
  %i.azg = icmp eq i64 %i.azf, 9223372036854775800
  br i1 %i.azg, label %bb.ls, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i83.i

bb.ls:                                            ; preds = %bb.lr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #29
          to label %.noexc88.i unwind label %.loopexit.split-lp131.i, !noalias !790

.noexc88.i:                                       ; preds = %bb.ls
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i83.i: ; preds = %bb.lr
  %i.azh = ashr exact i64 %i.azf, 3               ; 3 uses
  %.sroa.speculated.i.i.i84.i = call i64 @llvm.umax.i64(i64 %i.azh, i64 1)
  %i.azi = add nsw i64 %.sroa.speculated.i.i.i84.i, %i.azh ; 2 uses
  %i.azj = icmp ult i64 %i.azi, %i.azh
  %i.azk = call i64 @llvm.umin.i64(i64 %i.azi, i64 1152921504606846975)
  %i.azl = select i1 %i.azj, i64 1152921504606846975, i64 %i.azk ; 3 uses
  %.not.i.i.i85.i = icmp ne i64 %i.azl, 0
  call void @llvm.assume(i1 %.not.i.i.i85.i)
  %i.azm = shl nuw nsw i64 %i.azl, 3
  %i.azn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.azm) #31
          to label %.noexc89.i unwind label %.loopexit130.i, !noalias !790 ; 5 uses

.noexc89.i:                                       ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i83.i
  %i.azo = getelementptr inbounds i8, ptr %i.azn, i64 %i.azf ; 2 uses
  store i64 %i.azb, ptr %i.azo, align 8, !tbaa !66, !noalias !790
  %i.azp = icmp sgt i64 %i.azf, 0
  br i1 %i.azp, label %bb.lt, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

bb.lt:                                            ; preds = %.noexc89.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.azn, ptr align 8 %i.ayx, i64 %i.azf, i1 false), !noalias !790
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.lt, %.noexc89.i
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azo, i64 8 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.ayx, i64 noundef %i.azf) #30, !noalias !790
  %i.azr = getelementptr inbounds nuw [8 x i8], ptr %i.azn, i64 %i.azl ; 4 uses
  br label %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit.i

.loopexit130.i:                                   ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i83.i
  %lpad.loopexit132.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11regex_error
  br label %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit94.i

.loopexit.split-lp131.i:                          ; preds = %bb.ls
  %lpad.loopexit.split-lp133.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11regex_error
  br label %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit94.i

_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit.i: ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.lq, %_ZNKSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEneERKS5_.exit.i
  %.sroa.0569.6 = phi ptr [ %i.azn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0569.5, %bb.lq ], [ %.sroa.0569.5, %_ZNKSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEneERKS5_.exit.i ] ; 2 uses
  %.sroa.11571.4 = phi ptr [ %i.azq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.azc, %bb.lq ], [ %.sroa.11571.3, %_ZNKSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEneERKS5_.exit.i ] ; 2 uses
  %.sroa.19572.6 = phi ptr [ %i.azr, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.19572.5, %bb.lq ], [ %.sroa.19572.5, %_ZNKSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEneERKS5_.exit.i ] ; 2 uses
  %i.azs = phi ptr [ %i.azr, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.ayv, %bb.lq ], [ %i.ayv, %_ZNKSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEneERKS5_.exit.i ]
  %i.azt = phi ptr [ %i.azr, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.ayv, %bb.lq ], [ %i.ayw, %_ZNKSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEneERKS5_.exit.i ]
  %i.azu = phi ptr [ %i.azn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.ayx, %bb.lq ], [ %i.ayx, %_ZNKSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEneERKS5_.exit.i ]
  %i.azv = phi ptr [ %i.azr, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.ayv, %bb.lq ], [ %i.ayy, %_ZNKSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEneERKS5_.exit.i ]
  %i.azw = phi ptr [ %i.azq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.azc, %bb.lq ], [ %i.ayz, %_ZNKSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEEneERKS5_.exit.i ]
  %i.azx = add i64 %i.atm, %.025143.i
  %i.azy = load ptr, ptr %i.jd, align 8, !tbaa !153, !noalias !790 ; 3 uses
  %.not.i.i.i.i91.i = icmp eq ptr %i.azy, null
  br i1 %.not.i.i.i.i91.i, label %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit92.i, label %bb.lu

bb.lu:                                            ; preds = %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit.i
  %i.azz = load ptr, ptr %i.ji, align 8, !tbaa !166, !noalias !790
  %i.baa = ptrtoint ptr %i.azz to i64
  %i.bab = ptrtoint ptr %i.azy to i64
  %i.bac = sub i64 %i.baa, %i.bab
  call void @_ZdlPvm(ptr noundef nonnull %i.azy, i64 noundef %i.bac) #30, !noalias !790
  br label %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit92.i

_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit92.i: ; preds = %bb.lu, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !790
  %i.bad = getelementptr inbounds nuw i8, ptr %.sroa.0110.0142.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bad, %.sroa.24.01771
  br i1 %.not.i, label %._crit_edge.i, label %bb.kz

_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit94.i: ; preds = %.loopexit.split-lp131.i, %.loopexit130.i, %.loopexit.split-lp126.i, %.loopexit125.i, %.loopexit.split-lp.i, %.loopexit.i, %bb.lg
  %i.bae = phi ptr [ %i.atx, %.loopexit.split-lp.i ], [ %i.avl, %.loopexit.split-lp126.i ], [ %i.awt, %bb.lg ], [ %i.atx, %.loopexit.i ], [ %i.avl, %.loopexit125.i ], [ %i.ayv, %.loopexit130.i ], [ %i.ayv, %.loopexit.split-lp131.i ] ; 2 uses
  %i.baf = phi ptr [ %i.atz, %.loopexit.split-lp.i ], [ %i.avp, %.loopexit.split-lp126.i ], [ %i.aww, %bb.lg ], [ %i.atz, %.loopexit.i ], [ %i.avp, %.loopexit125.i ], [ %i.ayx, %.loopexit130.i ], [ %i.ayx, %.loopexit.split-lp131.i ] ; 2 uses
  %.pn.pn.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp128.i, %.loopexit.split-lp126.i ], [ %i.avj, %bb.lg ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit127.i, %.loopexit125.i ], [ %lpad.loopexit132.i, %.loopexit130.i ], [ %lpad.loopexit.split-lp133.i, %.loopexit.split-lp131.i ] ; 2 uses
  %i.bag = load ptr, ptr %i.jd, align 8, !tbaa !153, !noalias !790 ; 2 uses
  %.not.i.i.i.i95.i = icmp eq ptr %i.bag, null
  br i1 %.not.i.i.i.i95.i, label %bb.lv, label %.sink.split

.sink.split:                                      ; preds = %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit94.i, %bb.la
  %.sink3651 = phi ptr [ %i.att, %bb.la ], [ %i.bag, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit94.i ] ; 2 uses
  %.ph = phi ptr [ %i.ath, %bb.la ], [ %i.bae, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit94.i ]
  %.ph3646 = phi ptr [ %i.atj, %bb.la ], [ %i.baf, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit94.i ]
  %.pn.pn.pn.pn.i.ph = phi { ptr, i32 } [ %i.ats, %bb.la ], [ %.pn.pn.pn.i, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit94.i ]
  %i.bah = load ptr, ptr %i.ji, align 8, !tbaa !166, !noalias !790
  %i.bai = ptrtoint ptr %i.bah to i64
  %i.baj = ptrtoint ptr %.sink3651 to i64
  %i.bak = sub i64 %i.bai, %i.baj
  call void @_ZdlPvm(ptr noundef nonnull %.sink3651, i64 noundef %i.bak) #30, !noalias !790
  br label %bb.lv

bb.lv:                                            ; preds = %.sink.split, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit94.i, %bb.la
  %i.bal = phi ptr [ %i.ath, %bb.la ], [ %i.bae, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit94.i ], [ %.ph, %.sink.split ]
  %i.bam = phi ptr [ %i.atj, %bb.la ], [ %i.baf, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit94.i ], [ %.ph3646, %.sink.split ] ; 2 uses
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ats, %bb.la ], [ %.pn.pn.pn.i, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit94.i ], [ %.pn.pn.pn.pn.i.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !790
  %i.ban = ptrtoint ptr %i.bal to i64
  %i.bao = ptrtoint ptr %i.bam to i64
  %i.bap = sub i64 %i.ban, %i.bao
  call void @_ZdlPvm(ptr noundef nonnull %i.bam, i64 noundef %i.bap) #30, !noalias !790
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %.thread202.i.loopexit, %.thread202.i.loopexit.split-lp, %bb.lv
  %.pn.pn.pn.pn.pn205.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.i, %bb.lv ], [ %lpad.loopexit.split-lp753, %.thread202.i.loopexit.split-lp ], [ %lpad.loopexit752, %.thread202.i.loopexit ]
  call void @_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #28, !noalias !790
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !790
  br label %.body257

.lr.ph1763:                                       ; preds = %._crit_edge1758, %bb.nj
  %i.baq = phi i64 [ %i.bgu, %bb.nj ], [ %i.asd, %._crit_edge1758 ]
  %.01091761 = phi i64 [ %i.bgt, %bb.nj ], [ 0, %._crit_edge1758 ] ; 19 uses
  %.01131759 = phi i1 [ %.1114, %bb.nj ], [ false, %._crit_edge1758 ] ; 5 uses
  %i.bar = load ptr, ptr %.sroa.0594.01773, align 8, !tbaa !71 ; 2 uses
  %i.bas = getelementptr i8, ptr %i.bar, i64 %.01091761 ; 5 uses
  %i.bat = load i8, ptr %i.bas, align 1, !tbaa !72 ; 4 uses
  %i.bau = icmp eq i8 %i.bat, 91
  br i1 %i.bau, label %bb.lw, label %bb.mb

bb.lw:                                            ; preds = %.lr.ph1763
  %i.bav = icmp eq i64 %.01091761, 0
  br i1 %i.bav, label %bb.ly, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.baw = getelementptr i8, ptr %i.bas, i64 -1
  %i.bax = load i8, ptr %i.baw, align 1, !tbaa !72
  %.not199 = icmp eq i8 %i.bax, 92
  br i1 %.not199, label %.thread709, label %bb.ly

bb.ly:                                            ; preds = %bb.lx, %bb.lw
  %i.bay = load i64, ptr %i.iz, align 8, !tbaa !73 ; 4 uses
  %i.baz = add i64 %i.bay, 1                      ; 2 uses
  %i.bba = load ptr, ptr %22, align 8, !tbaa !71  ; 2 uses
  %i.bbb = icmp eq ptr %i.bba, %i.iy
  br i1 %i.bbb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i259

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i260: ; preds = %bb.ly
  %i.bbc = icmp ult i64 %i.bay, 16
  call void @llvm.assume(i1 %i.bbc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i259: ; preds = %bb.ly
  %i.bbd = load i64, ptr %i.iy, align 8, !tbaa !72
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i259, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i260
  %i.bbe = phi i64 [ %i.bbd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i259 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i260 ]
  %i.bbf = icmp ugt i64 %i.baz, %i.bbe
  br i1 %i.bbf, label %bb.lz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn19unicode_regex_splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE:bb.a
  %min.iters.check = icmp ult i64 %i.biz, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i355.preheader4475, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i355.preheader
  %n.vec = and i64 %i.bjb, 9223372036854775800    ; 3 uses
  %i.bjc = shl i64 %n.vec, 2                      ; 2 uses
  %i.bjd = getelementptr i8, ptr %i.bix, i64 %i.bjc
  %i.bje = getelementptr i8, ptr %i.bin, i64 %i.bjc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bjf = shl i64 %index, 2                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bix, i64 %i.bjf ; 2 uses
  %next.gep4467 = getelementptr i8, ptr %i.bin, i64 %i.bjf ; 2 uses
  %i.bjg = getelementptr i8, ptr %next.gep4467, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep4467, align 4, !tbaa !80
  %wide.load4468 = load <4 x i32>, ptr %i.bjg, align 4, !tbaa !80
  %i.bjh = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !178
  store <4 x i32> %wide.load4468, ptr %i.bjh, align 4, !tbaa !178
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bji = icmp eq i64 %index.next, %n.vec
  br i1 %i.bji, label %middle.block, label %vector.body, !llvm.loop !771

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bjb, %n.vec
  br i1 %cmp.n, label %.loopexit736, label %.lr.ph.i.i.i355.preheader4475

.lr.ph.i.i.i355.preheader4475:                    ; preds = %.lr.ph.i.i.i355.preheader, %middle.block
  %.07.i.i.i.ph = phi ptr [ %i.bix, %.lr.ph.i.i.i355.preheader ], [ %i.bjd, %middle.block ]
  %.sroa.02.06.i.i.i.ph = phi ptr [ %i.bin, %.lr.ph.i.i.i355.preheader ], [ %i.bje, %middle.block ]
  br label %.lr.ph.i.i.i355

.lr.ph.i.i.i355:                                  ; preds = %.lr.ph.i.i.i355.preheader4475, %.lr.ph.i.i.i355
  %.07.i.i.i = phi ptr [ %i.bjl, %.lr.ph.i.i.i355 ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i355.preheader4475 ] ; 2 uses
  %.sroa.02.06.i.i.i = phi ptr [ %i.bjk, %.lr.ph.i.i.i355 ], [ %.sroa.02.06.i.i.i.ph, %.lr.ph.i.i.i355.preheader4475 ] ; 2 uses
  %i.bjj = load i32, ptr %.sroa.02.06.i.i.i, align 4, !tbaa !80
  store i32 %i.bjj, ptr %.07.i.i.i, align 4, !tbaa !178
  %i.bjk = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 4 ; 2 uses
  %i.bjl = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 4
  %.not.i.i.i356 = icmp eq ptr %i.bjk, %i.bio
  br i1 %.not.i.i.i356, label %.loopexit736, label %.lr.ph.i.i.i355, !llvm.loop !772

.loopexit736:                                     ; preds = %.lr.ph.i.i.i355, %middle.block, %._crit_edge.i.i354
  store i64 %i.biw, ptr %i.ju, align 8, !tbaa !176
  %i.bjm = getelementptr inbounds nuw [4 x i8], ptr %i.bix, i64 %i.biw
  store i32 0, ptr %i.bjm, align 4, !tbaa !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.not1793 = icmp eq i64 %i.biw, 0
  br i1 %.not1793, label %._crit_edge1768, label %.lr.ph1767

._crit_edge1768:                                  ; preds = %.critedge, %.loopexit736
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !807
  invoke void @_ZNSt7__cxx1111basic_regexIwNS_12regex_traitsIwEEEC2ISt11char_traitsIwESaIwEEERKNS_12basic_stringIwT_T0_EENSt15regex_constants18syntax_option_typeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %24, i32 noundef 16)
          to label %.noexc441 unwind label %bb.pn

.noexc441:                                        ; preds = %._crit_edge1768
  %i.bjn = ptrtoint ptr %.sroa.24.01771 to i64
  %i.bjo = ptrtoint ptr %.sroa.0599.01770 to i64  ; 2 uses
  %i.bjp = sub i64 %i.bjn, %i.bjo                 ; 3 uses
  %i.bjq = icmp ugt i64 %i.bjp, 9223372036854775800
  br i1 %i.bjq, label %bb.nu, label %bb.nv

bb.nu:                                            ; preds = %.noexc441
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #29
          to label %.noexc.i440 unwind label %.thread204.i.loopexit.split-lp, !noalias !807

.noexc.i440:                                      ; preds = %bb.nu
  unreachable

bb.nv:                                            ; preds = %.noexc441
  %.not193.i = icmp eq ptr %.sroa.24.01771, %.sroa.0599.01770
  br i1 %.not193.i, label %._crit_edge.i388, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i360

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i360: ; preds = %bb.nv
  %i.bjr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bjp) #31
          to label %.lr.ph145.i unwind label %.thread204.i.loopexit, !noalias !807 ; 5 uses

.lr.ph145.i:                                      ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i360
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bjr, i64 %i.bjp ; 4 uses
  br label %bb.oc

._crit_edge.i388:                                 ; preds = %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit92.i, %bb.nv
  %.sroa.0565.7 = phi ptr [ null, %bb.nv ], [ %.sroa.0565.6, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit92.i ]
  %.sroa.11.5 = phi ptr [ null, %bb.nv ], [ %.sroa.11.4, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit92.i ]
  %.sroa.19.7 = phi ptr [ null, %bb.nv ], [ %.sroa.19.6, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit92.i ]
  %i.bjt = load ptr, ptr %i.kc, align 8, !tbaa !139, !noalias !807 ; 8 uses
  %.not.i.i.i.i389 = icmp eq ptr %i.bjt, null
  br i1 %.not.i.i.i.i389, label %bb.pl, label %bb.nw

bb.nw:                                            ; preds = %._crit_edge.i388
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjt, i64 8 ; 4 uses
  %i.bjv = load atomic i64, ptr %i.bju acquire, align 8, !noalias !807 ; 2 uses
  %i.bjw = icmp eq i64 %i.bjv, 4294967297
  %i.bjx = trunc i64 %i.bjv to i32                ; 2 uses
  br i1 %i.bjw, label %bb.nx, label %bb.ny

bb.nx:                                            ; preds = %bb.nw
  store i32 0, ptr %i.bju, align 8, !tbaa !141, !noalias !807
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.bjt, i64 12
  store i32 0, ptr %i.bjy, align 4, !tbaa !142, !noalias !807
  %i.bjz = load ptr, ptr %i.bjt, align 8, !tbaa !144, !noalias !807
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bjz, i64 16
  %i.bkb = load ptr, ptr %i.bka, align 8, !noalias !807
  call void %i.bkb(ptr noundef nonnull align 8 dereferenceable(16) %i.bjt) #28, !noalias !807, !inline_history !775
  %i.bkc = load ptr, ptr %i.bjt, align 8, !tbaa !144, !noalias !807
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bkc, i64 24
  %i.bke = load ptr, ptr %i.bkd, align 8, !noalias !807
  call void %i.bke(ptr noundef nonnull align 8 dereferenceable(16) %i.bjt) #28, !noalias !807, !inline_history !775
  br label %bb.pl

bb.ny:                                            ; preds = %bb.nw
  %i.bkf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72, !noalias !807
  %.not.i.i.i.i.i390 = icmp eq i8 %i.bkf, 0
  br i1 %.not.i.i.i.i.i390, label %bb.oa, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.bkg = add nsw i32 %i.bjx, -1
  store i32 %i.bkg, ptr %i.bju, align 8, !tbaa !80, !noalias !807
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i391

bb.oa:                                            ; preds = %bb.ny
  %i.bkh = atomicrmw volatile add ptr %i.bju, i32 -1 acq_rel, align 4, !noalias !807
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i391

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i391: ; preds = %bb.oa, %bb.nz
  %.0.i.i.i.i.i.i392 = phi i32 [ %i.bjx, %bb.nz ], [ %i.bkh, %bb.oa ]
  %i.bki = icmp eq i32 %.0.i.i.i.i.i.i392, 1
  br i1 %i.bki, label %bb.ob, label %bb.pl, !prof !114

bb.ob:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i391
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bjt) #28, !noalias !807
  br label %bb.pl

.thread204.i.loopexit:                            ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i360
  %lpad.loopexit755 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11regex_error
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i361

.thread204.i.loopexit.split-lp:                   ; preds = %bb.nu
  %lpad.loopexit.split-lp756 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11regex_error
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i361

bb.oc:                                            ; preds = %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit92.i, %.lr.ph145.i
  %.sroa.0565.1 = phi ptr [ %i.bjr, %.lr.ph145.i ], [ %.sroa.0565.6, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit92.i ] ; 3 uses
  %.sroa.11.1 = phi ptr [ %i.bjr, %.lr.ph145.i ], [ %.sroa.11.4, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit92.i ] ; 2 uses
  %.sroa.19.1 = phi ptr [ %i.bjs, %.lr.ph145.i ], [ %.sroa.19.6, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit92.i ] ; 3 uses
  %i.bkj = phi ptr [ %i.bjs, %.lr.ph145.i ], [ %i.bqy, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit92.i ] ; 5 uses
  %i.bkk = phi ptr [ %i.bjs, %.lr.ph145.i ], [ %i.bqz, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit92.i ] ; 3 uses
  %i.bkl = phi ptr [ %i.bjr, %.lr.ph145.i ], [ %i.bra, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit92.i ] ; 5 uses
  %i.bkm = phi ptr [ %i.bjs, %.lr.ph145.i ], [ %i.brb, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit92.i ] ; 3 uses
  %i.bkn = phi ptr [ %i.bjr, %.lr.ph145.i ], [ %i.brc, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit92.i ] ; 3 uses
  %.025144.i = phi i64 [ 0, %.lr.ph145.i ], [ %i.brd, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit92.i ] ; 2 uses
  %.sroa.0110.0143.i = phi ptr [ %.sroa.0599.01770, %.lr.ph145.i ], [ %i.brj, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit92.i ] ; 2 uses
  %i.bko = load i64, ptr %.sroa.0110.0143.i, align 8, !tbaa !66, !noalias !807 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !807
  %i.bkp = load ptr, ptr %25, align 8, !tbaa !179, !noalias !807
  %i.bkq = getelementptr inbounds nuw [4 x i8], ptr %i.bkp, i64 %.025144.i ; 3 uses
  %i.bkr = getelementptr inbounds nuw [4 x i8], ptr %i.bkq, i64 %i.bko ; 2 uses
  store ptr %i.bkq, ptr %4, align 8, !tbaa !809, !noalias !807
  store ptr %i.bkr, ptr %i.jz, align 8, !tbaa !810, !noalias !807
  store ptr %3, ptr %i.jv, align 8, !tbaa !811, !noalias !807
  store i32 0, ptr %i.ka, align 8, !tbaa !812, !noalias !807
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jw, i8 0, i64 32, i1 false), !noalias !807
  %i.bks = invoke noundef zeroext i1 @_ZNSt8__detail17__regex_algo_implIPKwSaINSt7__cxx119sub_matchIS2_EEEwNS3_12regex_traitsIwEEEEbT_S9_RNS3_13match_resultsIS9_T0_EERKNS3_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeENS_20_RegexExecutorPolicyEb(ptr noundef %i.bkq, ptr noundef %i.bkr, ptr noundef nonnull align 8 dereferenceable(32) %i.jw, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZSt12regex_searchIPKwSaINSt7__cxx119sub_matchIS1_EEEwNS2_12regex_traitsIwEEEbT_S8_RNS2_13match_resultsIS8_T0_EERKNS2_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeE.exit.i unwind label %bb.od, !noalias !807

_ZSt12regex_searchIPKwSaINSt7__cxx119sub_matchIS1_EEEwNS2_12regex_traitsIwEEEbT_S8_RNS2_13match_resultsIS8_T0_EERKNS2_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeE.exit.i: ; preds = %bb.oc
  br i1 %i.bks, label %.preheader.i367, label %.preheader.i367.thread

.preheader.i367.thread:                           ; preds = %_ZSt12regex_searchIPKwSaINSt7__cxx119sub_matchIS1_EEEwNS2_12regex_traitsIwEEEbT_S8_RNS2_13match_resultsIS8_T0_EERKNS2_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeE.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 28, i1 false), !noalias !807
  %i.bkt = load ptr, ptr %i.jw, align 8, !tbaa !187, !noalias !807
  store ptr %i.bkt, ptr %i.jy, align 8, !tbaa !188, !noalias !807
  store ptr null, ptr %i.jx, align 8, !tbaa !189, !noalias !807
  br label %_ZNKSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEneERKS5_.exit.i

bb.od:                                            ; preds = %bb.oc
  %i.bku = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11regex_error          ; 2 uses
  %i.bkv = load ptr, ptr %i.jw, align 8, !tbaa !187, !noalias !807 ; 2 uses
  %.not.i.i.i.i523 = icmp eq ptr %i.bkv, null
  br i1 %.not.i.i.i.i523, label %bb.oy, label %.sink.split3658

.preheader.i367:                                  ; preds = %_ZSt12regex_searchIPKwSaINSt7__cxx119sub_matchIS1_EEEwNS2_12regex_traitsIwEEEbT_S8_RNS2_13match_resultsIS8_T0_EERKNS2_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeE.exit.i
  %.pre2572 = load ptr, ptr %i.jv, align 8, !tbaa !811, !noalias !807
  %i.bkw = icmp eq ptr %.pre2572, null
  br i1 %i.bkw, label %_ZNKSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEneERKS5_.exit.i, label %.lr.ph.i368.preheader

.lr.ph.i368.preheader:                            ; preds = %.preheader.i367
  %.pre2573 = load ptr, ptr %i.jx, align 8, !tbaa !189, !noalias !807
  %.pre2574 = load ptr, ptr %i.jy, align 8, !tbaa !190, !noalias !807
  br label %.lr.ph.i368

.lr.ph.i368:                                      ; preds = %.lr.ph.i368.preheader, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.i
  %i.bkx = phi ptr [ %45, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.i ], [ %.pre2574, %.lr.ph.i368.preheader ] ; 5 uses
  %i.bky = phi ptr [ %46, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.i ], [ %.pre2573, %.lr.ph.i368.preheader ] ; 2 uses
  %.sroa.0565.2 = phi ptr [ %.sroa.0565.4, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.i ], [ %.sroa.0565.1, %.lr.ph.i368.preheader ] ; 3 uses
  %.sroa.19.2 = phi ptr [ %.sroa.19.4, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.i ], [ %.sroa.19.1, %.lr.ph.i368.preheader ] ; 3 uses
  %i.bkz = phi ptr [ %i.bnw, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.i ], [ %i.bkj, %.lr.ph.i368.preheader ] ; 5 uses
  %i.bla = phi ptr [ %i.bny, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.i ], [ %i.bkk, %.lr.ph.i368.preheader ] ; 3 uses
  %i.blb = phi ptr [ %i.bnz, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.i ], [ %i.bkl, %.lr.ph.i368.preheader ] ; 8 uses
  %i.blc = phi ptr [ %i.bny, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.i ], [ %i.bkm, %.lr.ph.i368.preheader ] ; 2 uses
  %i.bld = phi ptr [ %.sroa.11.2, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.i ], [ %i.bkn, %.lr.ph.i368.preheader ] ; 5 uses
  %.0139.i = phi i64 [ %i.bpz, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.i ], [ 0, %.lr.ph.i368.preheader ] ; 3 uses
  %i.ble = load ptr, ptr %i.jw, align 8, !tbaa !190, !noalias !807 ; 7 uses
  %i.blf = icmp eq ptr %i.ble, %i.bkx
  %.pre.i.i.i369 = ptrtoint ptr %i.bkx to i64     ; 3 uses
  %.pre2.i.i.i370 = ptrtoint ptr %i.ble to i64    ; 5 uses
  br i1 %i.blf, label %bb.oe, label %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i

_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i: ; preds = %.lr.ph.i368
  %i.blg = load ptr, ptr %i.ble, align 8, !tbaa !192, !noalias !807
  %i.blh = ptrtoint ptr %i.blg to i64
  %i.bli = ptrtoint ptr %i.bky to i64
  %i.blj = sub i64 %i.blh, %i.bli
  %i.blk = ashr exact i64 %i.blj, 2               ; 2 uses
  %i.bll = icmp sgt i64 %i.blk, %.0139.i
  br i1 %i.bll, label %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i42.i, label %_ZNSt6vectorImSaImEE12emplace_backIJlEEERmDpOT_.exit.i371

bb.oe:                                            ; preds = %.lr.ph.i368
  %.pre4.i.i.i439 = sub i64 %.pre.i.i.i369, %.pre2.i.i.i370
  %i.blm = getelementptr i8, ptr %i.ble, i64 %.pre4.i.i.i439
  %i.bln = getelementptr i8, ptr %i.blm, i64 -72
  %i.blo = load ptr, ptr %i.bln, align 8, !tbaa !192, !noalias !807
  %i.blp = ptrtoint ptr %i.blo to i64
  %i.blq = ptrtoint ptr %i.bky to i64
  %i.blr = sub i64 %i.blp, %i.blq
  %i.bls = ashr exact i64 %i.blr, 2               ; 2 uses
  %i.blt = icmp sgt i64 %i.bls, %.0139.i
  br i1 %i.blt, label %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i42.i, label %_ZNSt6vectorImSaImEE12emplace_backIJlEEERmDpOT_.exit.i371

_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i42.i: ; preds = %bb.oe, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i
  %.pre-phi2580 = phi i64 [ %i.bls, %bb.oe ], [ %i.blk, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i ]
  %i.blu = sub nsw i64 %.pre-phi2580, %.0139.i    ; 2 uses
  %.not.i.i422 = icmp eq ptr %i.bld, %i.blc
  br i1 %.not.i.i422, label %bb.og, label %bb.of

bb.of:                                            ; preds = %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i42.i
  store i64 %i.blu, ptr %i.bld, align 8, !tbaa !66, !noalias !807
  %i.blv = getelementptr inbounds nuw i8, ptr %i.bld, i64 8
  br label %_ZNSt6vectorImSaImEE12emplace_backIJlEEERmDpOT_.exit.i371

bb.og:                                            ; preds = %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i42.i
  %i.blw = ptrtoint ptr %i.blc to i64
  %i.blx = ptrtoint ptr %i.blb to i64
  %i.bly = sub i64 %i.blw, %i.blx                 ; 6 uses
  %i.blz = icmp eq i64 %i.bly, 9223372036854775800
  br i1 %i.blz, label %bb.oh, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i423

bb.oh:                                            ; preds = %bb.og
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #29
          to label %.noexc46.i438 unwind label %.loopexit.split-lp.i436, !noalias !807

.noexc46.i438:                                    ; preds = %bb.oh
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i423: ; preds = %bb.og
  %i.bma = ashr exact i64 %i.bly, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i424 = call i64 @llvm.umax.i64(i64 %i.bma, i64 1)
  %i.bmb = add nsw i64 %.sroa.speculated.i.i.i.i424, %i.bma ; 2 uses
  %i.bmc = icmp ult i64 %i.bmb, %i.bma
  %i.bmd = call i64 @llvm.umin.i64(i64 %i.bmb, i64 1152921504606846975)
  %i.bme = select i1 %i.bmc, i64 1152921504606846975, i64 %i.bmd ; 3 uses
  %.not.i.i.i45.i425 = icmp ne i64 %i.bme, 0
  call void @llvm.assume(i1 %.not.i.i.i45.i425)
  %i.bmf = shl nuw nsw i64 %i.bme, 3
  %i.bmg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bmf) #31
          to label %.noexc47.i428 unwind label %.loopexit.i426, !noalias !807 ; 5 uses

.noexc47.i428:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i423
  %i.bmh = getelementptr inbounds i8, ptr %i.bmg, i64 %i.bly ; 2 uses
  store i64 %i.blu, ptr %i.bmh, align 8, !tbaa !66, !noalias !807
  %i.bmi = icmp sgt i64 %i.bly, 0
  br i1 %i.bmi, label %bb.oi, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i431

bb.oi:                                            ; preds = %.noexc47.i428
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bmg, ptr align 8 %i.blb, i64 %i.bly, i1 false), !noalias !807
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i431

_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i431: ; preds = %bb.oi, %.noexc47.i428
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bmh, i64 8
  call void @_ZdlPvm(ptr noundef nonnull %i.blb, i64 noundef %i.bly) #30, !noalias !807
  %i.bmk = getelementptr inbounds nuw [8 x i8], ptr %i.bmg, i64 %i.bme ; 3 uses
  %.pre148.i432 = load ptr, ptr %i.jw, align 8, !tbaa !190, !noalias !807 ; 2 uses
  %.pre149.i433 = load ptr, ptr %i.jy, align 8, !tbaa !190, !noalias !807 ; 2 uses
  %.pre160.i434 = ptrtoint ptr %.pre149.i433 to i64
  %.pre161.i435 = ptrtoint ptr %.pre148.i432 to i64
  br label %_ZNSt6vectorImSaImEE12emplace_backIJlEEERmDpOT_.exit.i371

bb.oj:                                            ; preds = %bb.or, %bb.op
  %i.bml = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11regex_error
  br label %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit94.i

.loopexit.i426:                                   ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i423
  %lpad.loopexit.i427 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11regex_error
  br label %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit94.i

.loopexit.split-lp.i436:                          ; preds = %bb.oh
  %lpad.loopexit.split-lp.i437 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11regex_error
  br label %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit94.i

_ZNSt6vectorImSaImEE12emplace_backIJlEEERmDpOT_.exit.i371: ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i431, %bb.of, %bb.oe, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i
  %i.bmm = phi ptr [ %.pre149.i433, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i431 ], [ %i.bkx, %bb.of ], [ %i.bkx, %bb.oe ], [ %i.bkx, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i ] ; 2 uses
  %.sroa.0565.3 = phi ptr [ %i.bmg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i431 ], [ %.sroa.0565.2, %bb.of ], [ %.sroa.0565.2, %bb.oe ], [ %.sroa.0565.2, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i ]
  %.sroa.19.3 = phi ptr [ %i.bmk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i431 ], [ %.sroa.19.2, %bb.of ], [ %.sroa.19.2, %bb.oe ], [ %.sroa.19.2, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i ]
  %.pre2.i.i49.pre-phi.i372 = phi i64 [ %.pre161.i435, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i431 ], [ %.pre2.i.i.i370, %bb.of ], [ %.pre2.i.i.i370, %bb.oe ], [ %.pre2.i.i.i370, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i ] ; 2 uses
  %.pre.i.i48.pre-phi.i373 = phi i64 [ %.pre160.i434, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i431 ], [ %.pre.i.i.i369, %bb.of ], [ %.pre2.i.i.i370, %bb.oe ], [ %.pre.i.i.i369, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i ] ; 2 uses
  %i.bmn = phi ptr [ %i.bmk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i431 ], [ %i.bkz, %bb.of ], [ %i.bkz, %bb.oe ], [ %i.bkz, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i ] ; 3 uses
  %i.bmo = phi ptr [ %i.bmk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i431 ], [ %i.bla, %bb.of ], [ %i.bla, %bb.oe ], [ %i.bla, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i ] ; 3 uses
  %i.bmp = phi ptr [ %i.bmj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i431 ], [ %i.blv, %bb.of ], [ %i.bld, %bb.oe ], [ %i.bld, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i ] ; 3 uses
  %i.bmq = phi ptr [ %.pre148.i432, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i431 ], [ %i.ble, %bb.of ], [ %i.ble, %bb.oe ], [ %i.ble, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i ] ; 4 uses
  %i.bmr = phi ptr [ %i.bmg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i431 ], [ %i.blb, %bb.of ], [ %i.blb, %bb.oe ], [ %i.blb, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i.i ] ; 6 uses
  %i.bms = icmp eq ptr %i.bmq, %i.bmm
  %.pre4.i.i50.i374 = sub i64 %.pre.i.i48.pre-phi.i373, %.pre2.i.i49.pre-phi.i372 ; 2 uses
  %.not121.i375 = icmp eq i64 %.pre4.i.i50.i374, 72
  %or.cond.i376 = or i1 %.not121.i375, %i.bms
  %i.bmt = getelementptr i8, ptr %i.bmq, i64 %.pre4.i.i50.i374
  %i.bmu = getelementptr i8, ptr %i.bmt, i64 -72
  %i.bmv = select i1 %or.cond.i376, ptr %i.bmu, ptr %i.bmq ; 3 uses
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bmv, i64 16
  %i.bmx = load i8, ptr %i.bmw, align 8, !tbaa !194, !range !162, !noalias !807, !noundef !163
  %i.bmy = trunc nuw i8 %i.bmx to i1
  %i.bmz = load ptr, ptr %i.bmv, align 8, !noalias !807
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bmv, i64 8
  %i.bnb = load ptr, ptr %i.bna, align 8, !noalias !807
  %i.bnc = ptrtoint ptr %i.bnb to i64
  %i.bnd = ptrtoint ptr %i.bmz to i64
  %i.bne = sub i64 %i.bnc, %i.bnd
  %i.bnf = ashr exact i64 %i.bne, 2
  %i.bng = select i1 %i.bmy, i64 %i.bnf, i64 0    ; 2 uses
  %.not.i53.i377 = icmp eq ptr %i.bmp, %i.bmo
  br i1 %.not.i53.i377, label %bb.ol, label %bb.ok

bb.ok:                                            ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJlEEERmDpOT_.exit.i371
  store i64 %i.bng, ptr %i.bmp, align 8, !tbaa !66, !noalias !807
  br label %_ZNSt6vectorImSaImEE12emplace_backIJlEEERmDpOT_.exit62.i378

bb.ol:                                            ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJlEEERmDpOT_.exit.i371
  %i.bnh = ptrtoint ptr %i.bmo to i64
  %i.bni = ptrtoint ptr %i.bmr to i64
  %i.bnj = sub i64 %i.bnh, %i.bni                 ; 6 uses
  %i.bnk = icmp eq i64 %i.bnj, 9223372036854775800
  br i1 %i.bnk, label %bb.om, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i54.i412

bb.om:                                            ; preds = %bb.ol
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #29
          to label %.noexc60.i421 unwind label %.loopexit.split-lp125.i, !noalias !807

.noexc60.i421:                                    ; preds = %bb.om
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i54.i412: ; preds = %bb.ol
  %i.bnl = ashr exact i64 %i.bnj, 3               ; 3 uses
  %.sroa.speculated.i.i.i55.i413 = call i64 @llvm.umax.i64(i64 %i.bnl, i64 1)
  %i.bnm = add nsw i64 %.sroa.speculated.i.i.i55.i413, %i.bnl ; 2 uses
  %i.bnn = icmp ult i64 %i.bnm, %i.bnl
  %i.bno = call i64 @llvm.umin.i64(i64 %i.bnm, i64 1152921504606846975)
  %i.bnp = select i1 %i.bnn, i64 1152921504606846975, i64 %i.bno ; 3 uses
  %.not.i.i.i56.i414 = icmp ne i64 %i.bnp, 0
  call void @llvm.assume(i1 %.not.i.i.i56.i414)
  %i.bnq = shl nuw nsw i64 %i.bnp, 3
  %i.bnr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bnq) #31
          to label %.noexc61.i415 unwind label %.loopexit124.i, !noalias !807 ; 5 uses

.noexc61.i415:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i54.i412
  %i.bns = getelementptr inbounds i8, ptr %i.bnr, i64 %i.bnj ; 2 uses
  store i64 %i.bng, ptr %i.bns, align 8, !tbaa !66, !noalias !807
  %i.bnt = icmp sgt i64 %i.bnj, 0
  br i1 %i.bnt, label %bb.on, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i59.i418

bb.on:                                            ; preds = %.noexc61.i415
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bnr, ptr align 8 %i.bmr, i64 %i.bnj, i1 false), !noalias !807
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i59.i418

_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i59.i418: ; preds = %bb.on, %.noexc61.i415
  call void @_ZdlPvm(ptr noundef nonnull %i.bmr, i64 noundef %i.bnj) #30, !noalias !807
  %i.bnu = getelementptr inbounds nuw [8 x i8], ptr %i.bnr, i64 %i.bnp ; 3 uses
  %.pre150.i419 = load ptr, ptr %i.jw, align 8, !tbaa !190, !noalias !807 ; 2 uses
  %.pre151.i = load ptr, ptr %i.jy, align 8, !tbaa !190, !noalias !807 ; 2 uses
  %.pre162.i420 = ptrtoint ptr %.pre151.i to i64
  %.pre163.i = ptrtoint ptr %.pre150.i419 to i64
  br label %_ZNSt6vectorImSaImEE12emplace_backIJlEEERmDpOT_.exit62.i378

_ZNSt6vectorImSaImEE12emplace_backIJlEEERmDpOT_.exit62.i378: ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i59.i418, %bb.ok
  %i.bnv = phi ptr [ %.pre151.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i59.i418 ], [ %i.bmm, %bb.ok ] ; 3 uses
  %.sroa.0565.4 = phi ptr [ %i.bnr, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i59.i418 ], [ %.sroa.0565.3, %bb.ok ] ; 3 uses
  %.pn729 = phi ptr [ %i.bns, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i59.i418 ], [ %i.bmp, %bb.ok ]
  %.sroa.19.4 = phi ptr [ %i.bnu, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i59.i418 ], [ %.sroa.19.3, %bb.ok ] ; 3 uses
  %.pre2.i.i64.pre-phi.i379 = phi i64 [ %.pre163.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i59.i418 ], [ %.pre2.i.i49.pre-phi.i372, %bb.ok ]
  %.pre.i.i63.pre-phi.i380 = phi i64 [ %.pre162.i420, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i59.i418 ], [ %.pre.i.i48.pre-phi.i373, %bb.ok ]
  %i.bnw = phi ptr [ %i.bnu, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i59.i418 ], [ %i.bmn, %bb.ok ] ; 4 uses
  %i.bnx = phi ptr [ %.pre150.i419, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i59.i418 ], [ %i.bmq, %bb.ok ] ; 5 uses
  %i.bny = phi ptr [ %i.bnu, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i59.i418 ], [ %i.bmo, %bb.ok ] ; 6 uses
  %i.bnz = phi ptr [ %i.bnr, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i59.i418 ], [ %i.bmr, %bb.ok ] ; 4 uses
  %.sroa.11.2 = getelementptr inbounds nuw i8, ptr %.pn729, i64 8 ; 5 uses
  %i.boa = load ptr, ptr %i.jx, align 8, !tbaa !189, !noalias !807 ; 4 uses
  %i.bob = icmp eq ptr %i.bnx, %i.bnv
  br i1 %i.bob, label %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEEixEm.exit.i.i, label %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i66.i

_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i66.i: ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJlEEERmDpOT_.exit62.i378
  %i.boc = load ptr, ptr %i.bnx, align 8, !tbaa !192, !noalias !807 ; 2 uses
  %i.bod = ptrtoint ptr %i.boc to i64             ; 2 uses
  %i.boe = ptrtoint ptr %i.boa to i64
  %i.bof = sub i64 %i.bod, %i.boe
  %i.bog = ashr exact i64 %i.bof, 2               ; 2 uses
  %i.boh = getelementptr i8, ptr %i.bnx, i64 16
  %i.boi = load i8, ptr %i.boh, align 8, !tbaa !194, !range !162, !noalias !807, !noundef !163
  %i.boj = trunc nuw i8 %i.boi to i1
  %38 = getelementptr i8, ptr %i.bnx, i64 8
  %39 = load ptr, ptr %38, align 8, !noalias !807 ; 2 uses
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %40, %i.bod
  br i1 %i.boj, label %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEEixEm.exit42.i.i, label %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.i

_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEEixEm.exit.i.i: ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJlEEERmDpOT_.exit62.i378
  %.pre4.i.i65.i381 = sub i64 %.pre.i.i63.pre-phi.i380, %.pre2.i.i64.pre-phi.i379
  %i.bok = getelementptr i8, ptr %i.bnx, i64 %.pre4.i.i65.i381 ; 3 uses
  %i.bol = getelementptr i8, ptr %i.bok, i64 -72
  %i.bom = load ptr, ptr %i.bol, align 8, !tbaa !192, !noalias !807 ; 2 uses
  %i.bon = ptrtoint ptr %i.bom to i64             ; 2 uses
  %i.boo = ptrtoint ptr %i.boa to i64
  %i.bop = sub i64 %i.bon, %i.boo
  %i.boq = ashr exact i64 %i.bop, 2               ; 2 uses
  %i.bor = getelementptr i8, ptr %i.bok, i64 -56
  %i.bos = load i8, ptr %i.bor, align 8, !tbaa !194, !range !162, !noalias !807, !noundef !163
  %i.bot = trunc nuw i8 %i.bos to i1
  %i.bou = getelementptr i8, ptr %i.bok, i64 -64
  %i.bov = load ptr, ptr %i.bou, align 8, !noalias !807 ; 2 uses
  %i.bow = ptrtoint ptr %i.bov to i64
  %i.box = sub i64 %i.bow, %i.bon
  br i1 %i.bot, label %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEEixEm.exit42.i.i, label %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.i

_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEEixEm.exit42.i.i: ; preds = %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i66.i, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEEixEm.exit.i.i
  %42 = phi ptr [ %i.bov, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEEixEm.exit.i.i ], [ %39, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i66.i ] ; 7 uses
  %43 = phi ptr [ %i.bom, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEEixEm.exit.i.i ], [ %i.boc, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i66.i ]
  %.in = phi i64 [ %i.box, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEEixEm.exit.i.i ], [ %41, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i66.i ]
  %44 = phi i64 [ %i.boq, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEEixEm.exit.i.i ], [ %i.bog, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i66.i ] ; 2 uses
  %i.boy = ashr exact i64 %.in, 2                 ; 2 uses
  %i.boz = icmp eq ptr %43, %42
  %.pre154.i = load ptr, ptr %i.jz, align 8, !tbaa !810, !noalias !807 ; 3 uses
  br i1 %i.boz, label %bb.oo, label %bb.or

bb.oo:                                            ; preds = %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEEixEm.exit42.i.i
  %i.bpa = icmp eq ptr %42, %.pre154.i
  br i1 %i.bpa, label %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.thread.i, label %bb.op

bb.op:                                            ; preds = %bb.oo
  %i.bpb = load ptr, ptr %i.jv, align 8, !tbaa !811, !noalias !807
  %i.bpc = load i32, ptr %i.ka, align 8, !tbaa !812, !noalias !807
  %i.bpd = or i32 %i.bpc, 96
  %i.bpe = invoke noundef zeroext i1 @_ZNSt8__detail17__regex_algo_implIPKwSaINSt7__cxx119sub_matchIS2_EEEwNS3_12regex_traitsIwEEEEbT_S9_RNS3_13match_resultsIS9_T0_EERKNS3_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeENS_20_RegexExecutorPolicyEb(ptr noundef %42, ptr noundef %.pre154.i, ptr noundef nonnull align 8 dereferenceable(32) %i.jw, ptr noundef nonnull align 8 dereferenceable(32) %i.bpb, i32 noundef %i.bpd, i32 noundef 0, i1 noundef zeroext false)
          to label %.noexc80.i409 unwind label %bb.oj, !noalias !807

.noexc80.i409:                                    ; preds = %bb.op
  br i1 %i.bpe, label %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.sink.split.i, label %bb.oq

bb.oq:                                            ; preds = %.noexc80.i409
  %i.bpf = getelementptr inbounds nuw i8, ptr %42, i64 4
  %.pre153.i410 = load ptr, ptr %i.jz, align 8, !tbaa !810, !noalias !807
  br label %bb.or

bb.or:                                            ; preds = %bb.oq, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEEixEm.exit42.i.i
  %i.bpg = phi ptr [ %.pre153.i410, %bb.oq ], [ %.pre154.i, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEEixEm.exit42.i.i ]
  %.016.i.i407 = phi ptr [ %i.bpf, %bb.oq ], [ %42, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEEixEm.exit42.i.i ]
  %i.bph = load i32, ptr %i.ka, align 8, !tbaa !164, !noalias !807
  %i.bpi = or i32 %i.bph, 128                     ; 2 uses
  store i32 %i.bpi, ptr %i.ka, align 8, !tbaa !164, !noalias !807
  %i.bpj = load ptr, ptr %i.jv, align 8, !tbaa !811, !noalias !807
  %i.bpk = invoke noundef zeroext i1 @_ZNSt8__detail17__regex_algo_implIPKwSaINSt7__cxx119sub_matchIS2_EEEwNS3_12regex_traitsIwEEEEbT_S9_RNS3_13match_resultsIS9_T0_EERKNS3_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeENS_20_RegexExecutorPolicyEb(ptr noundef %.016.i.i407, ptr noundef %i.bpg, ptr noundef nonnull align 8 dereferenceable(32) %i.jw, ptr noundef nonnull align 8 dereferenceable(32) %i.bpj, i32 noundef %i.bpi, i32 noundef 0, i1 noundef zeroext false)
          to label %.noexc81.i408 unwind label %bb.oj, !noalias !807

.noexc81.i408:                                    ; preds = %bb.or
  br i1 %i.bpk, label %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.sink.split.i, label %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.thread.i

_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.thread.i: ; preds = %.noexc81.i408, %bb.oo
  store ptr null, ptr %i.jv, align 8, !tbaa !811, !noalias !807
  %i.bpl = add nsw i64 %44, %i.boy
  br label %_ZNKSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEneERKS5_.exit.i

_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.sink.split.i: ; preds = %.noexc81.i408, %.noexc80.i409
  %i.bpm = load ptr, ptr %i.jy, align 8, !tbaa !188, !noalias !807 ; 2 uses
  %i.bpn = load ptr, ptr %i.jw, align 8, !tbaa !187, !noalias !807 ; 2 uses
  %i.bpo = ptrtoint ptr %i.bpm to i64
  %i.bpp = ptrtoint ptr %i.bpn to i64
  %i.bpq = sub i64 %i.bpo, %i.bpp
  %i.bpr = getelementptr i8, ptr %i.bpn, i64 %i.bpq ; 3 uses
  %i.bps = getelementptr i8, ptr %i.bpr, i64 -48
  store ptr %42, ptr %i.bps, align 8, !tbaa !192, !noalias !807
  %i.bpt = getelementptr i8, ptr %i.bpr, i64 -40
  %i.bpu = load ptr, ptr %i.bpt, align 8, !tbaa !195, !noalias !807
  %i.bpv = icmp ne ptr %42, %i.bpu
  %i.bpw = getelementptr i8, ptr %i.bpr, i64 -32
  %i.bpx = zext i1 %i.bpv to i8
  store i8 %i.bpx, ptr %i.bpw, align 8, !tbaa !194, !noalias !807
  %i.bpy = load ptr, ptr %4, align 8, !tbaa !809, !noalias !807 ; 2 uses
  store ptr %i.bpy, ptr %i.jx, align 8, !tbaa !813, !noalias !807
  br label %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.i

_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.i: ; preds = %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i66.i, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.sink.split.i, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEEixEm.exit.i.i
  %45 = phi ptr [ %i.bnv, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEEixEm.exit.i.i ], [ %i.bnv, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i66.i ], [ %i.bpm, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.sink.split.i ]
  %46 = phi ptr [ %i.boa, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEEixEm.exit.i.i ], [ %i.boa, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i66.i ], [ %i.bpy, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.sink.split.i ]
  %.ph.i383 = phi i64 [ 0, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEEixEm.exit.i.i ], [ 0, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i66.i ], [ %i.boy, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.sink.split.i ]
  %.ph203.i = phi i64 [ %i.boq, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEEixEm.exit.i.i ], [ %i.bog, %_ZNKSt7__cxx1113match_resultsIPKwSaINS_9sub_matchIS2_EEEE4sizeEv.exit.i.i66.i ], [ %44, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.sink.split.i ]
  %.pr.i384 = load ptr, ptr %i.jv, align 8, !tbaa !811, !noalias !807
  %i.bpz = add nsw i64 %.ph203.i, %.ph.i383       ; 2 uses
  %i.bqa = icmp eq ptr %.pr.i384, null
  br i1 %i.bqa, label %_ZNKSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEneERKS5_.exit.i, label %.lr.ph.i368, !llvm.loop !776

.loopexit124.i:                                   ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i54.i412
  %lpad.loopexit126.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11regex_error
  br label %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit94.i

.loopexit.split-lp125.i:                          ; preds = %bb.om
  %lpad.loopexit.split-lp127.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11regex_error
  br label %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit94.i

_ZNKSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEneERKS5_.exit.i: ; preds = %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.i, %.preheader.i367.thread, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.thread.i, %.preheader.i367
  %.sroa.0565.5 = phi ptr [ %.sroa.0565.1, %.preheader.i367 ], [ %.sroa.0565.4, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.thread.i ], [ %.sroa.0565.1, %.preheader.i367.thread ], [ %.sroa.0565.4, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.i ] ; 2 uses
  %.sroa.11.3 = phi ptr [ %.sroa.11.1, %.preheader.i367 ], [ %.sroa.11.2, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.thread.i ], [ %.sroa.11.1, %.preheader.i367.thread ], [ %.sroa.11.2, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.i ]
  %.sroa.19.5 = phi ptr [ %.sroa.19.1, %.preheader.i367 ], [ %.sroa.19.4, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.thread.i ], [ %.sroa.19.1, %.preheader.i367.thread ], [ %.sroa.19.4, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.i ] ; 2 uses
  %i.bqb = phi ptr [ %i.bkj, %.preheader.i367 ], [ %i.bnw, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.thread.i ], [ %i.bkj, %.preheader.i367.thread ], [ %i.bnw, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.i ] ; 8 uses
  %i.bqc = phi ptr [ %i.bkk, %.preheader.i367 ], [ %i.bny, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.thread.i ], [ %i.bkk, %.preheader.i367.thread ], [ %i.bny, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.i ]
  %i.bqd = phi ptr [ %i.bkl, %.preheader.i367 ], [ %i.bnz, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.thread.i ], [ %i.bkl, %.preheader.i367.thread ], [ %i.bnz, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.i ] ; 7 uses
  %i.bqe = phi ptr [ %i.bkm, %.preheader.i367 ], [ %i.bny, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.thread.i ], [ %i.bkm, %.preheader.i367.thread ], [ %i.bny, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.i ]
  %i.bqf = phi ptr [ %i.bkn, %.preheader.i367 ], [ %.sroa.11.2, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.thread.i ], [ %i.bkn, %.preheader.i367.thread ], [ %.sroa.11.2, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.i ] ; 4 uses
  %.0.lcssa.i385 = phi i64 [ 0, %.preheader.i367 ], [ %i.bpl, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.thread.i ], [ 0, %.preheader.i367.thread ], [ %i.bpz, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEppEv.exit.i ] ; 2 uses
  %i.bqg = icmp slt i64 %.0.lcssa.i385, %i.bko
  br i1 %i.bqg, label %bb.os, label %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit.i

bb.os:                                            ; preds = %_ZNKSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEneERKS5_.exit.i
  %i.bqh = sub i64 %i.bko, %.0.lcssa.i385         ; 2 uses
  %.not.i82.i393 = icmp eq ptr %i.bqf, %i.bqb
  br i1 %.not.i82.i393, label %bb.ou, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  store i64 %i.bqh, ptr %i.bqf, align 8, !tbaa !66, !noalias !807
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bqf, i64 8 ; 2 uses
  br label %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit.i

bb.ou:                                            ; preds = %bb.os
  %i.bqj = ptrtoint ptr %i.bqb to i64
  %i.bqk = ptrtoint ptr %i.bqd to i64
  %i.bql = sub i64 %i.bqj, %i.bqk                 ; 6 uses
  %i.bqm = icmp eq i64 %i.bql, 9223372036854775800
  br i1 %i.bqm, label %bb.ov, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i83.i394

bb.ov:                                            ; preds = %bb.ou
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #29
          to label %.noexc88.i403 unwind label %.loopexit.split-lp130.i, !noalias !807

.noexc88.i403:                                    ; preds = %bb.ov
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i83.i394: ; preds = %bb.ou
  %i.bqn = ashr exact i64 %i.bql, 3               ; 3 uses
  %.sroa.speculated.i.i.i84.i395 = call i64 @llvm.umax.i64(i64 %i.bqn, i64 1)
  %i.bqo = add nsw i64 %.sroa.speculated.i.i.i84.i395, %i.bqn ; 2 uses
  %i.bqp = icmp ult i64 %i.bqo, %i.bqn
  %i.bqq = call i64 @llvm.umin.i64(i64 %i.bqo, i64 1152921504606846975)
  %i.bqr = select i1 %i.bqp, i64 1152921504606846975, i64 %i.bqq ; 3 uses
  %.not.i.i.i85.i396 = icmp ne i64 %i.bqr, 0
  call void @llvm.assume(i1 %.not.i.i.i85.i396)
  %i.bqs = shl nuw nsw i64 %i.bqr, 3
  %i.bqt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bqs) #31
          to label %.noexc89.i399 unwind label %.loopexit129.i, !noalias !807 ; 5 uses

.noexc89.i399:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i83.i394
  %i.bqu = getelementptr inbounds i8, ptr %i.bqt, i64 %i.bql ; 2 uses
  store i64 %i.bqh, ptr %i.bqu, align 8, !tbaa !66, !noalias !807
  %i.bqv = icmp sgt i64 %i.bql, 0
  br i1 %i.bqv, label %bb.ow, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i402

bb.ow:                                            ; preds = %.noexc89.i399
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bqt, ptr align 8 %i.bqd, i64 %i.bql, i1 false), !noalias !807
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i402

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i402: ; preds = %bb.ow, %.noexc89.i399
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bqu, i64 8 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.bqd, i64 noundef %i.bql) #30, !noalias !807
  %i.bqx = getelementptr inbounds nuw [8 x i8], ptr %i.bqt, i64 %i.bqr ; 4 uses
  br label %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit.i

.loopexit129.i:                                   ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i83.i394
  %lpad.loopexit131.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11regex_error
  br label %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit94.i

.loopexit.split-lp130.i:                          ; preds = %bb.ov
  %lpad.loopexit.split-lp132.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11regex_error
  br label %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit94.i

_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit.i: ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i402, %bb.ot, %_ZNKSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEneERKS5_.exit.i
  %.sroa.0565.6 = phi ptr [ %i.bqt, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i402 ], [ %.sroa.0565.5, %bb.ot ], [ %.sroa.0565.5, %_ZNKSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEneERKS5_.exit.i ] ; 2 uses
  %.sroa.11.4 = phi ptr [ %i.bqw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i402 ], [ %i.bqi, %bb.ot ], [ %.sroa.11.3, %_ZNKSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEneERKS5_.exit.i ] ; 2 uses
  %.sroa.19.6 = phi ptr [ %i.bqx, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i402 ], [ %.sroa.19.5, %bb.ot ], [ %.sroa.19.5, %_ZNKSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEneERKS5_.exit.i ] ; 2 uses
  %i.bqy = phi ptr [ %i.bqx, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i402 ], [ %i.bqb, %bb.ot ], [ %i.bqb, %_ZNKSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEneERKS5_.exit.i ]
  %i.bqz = phi ptr [ %i.bqx, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i402 ], [ %i.bqb, %bb.ot ], [ %i.bqc, %_ZNKSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEneERKS5_.exit.i ]
  %i.bra = phi ptr [ %i.bqt, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i402 ], [ %i.bqd, %bb.ot ], [ %i.bqd, %_ZNKSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEneERKS5_.exit.i ]
  %i.brb = phi ptr [ %i.bqx, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i402 ], [ %i.bqb, %bb.ot ], [ %i.bqe, %_ZNKSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEneERKS5_.exit.i ]
  %i.brc = phi ptr [ %i.bqw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i402 ], [ %i.bqi, %bb.ot ], [ %i.bqf, %_ZNKSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEEneERKS5_.exit.i ]
  %i.brd = add i64 %i.bko, %.025144.i
  %i.bre = load ptr, ptr %i.jw, align 8, !tbaa !187, !noalias !807 ; 3 uses
  %.not.i.i.i.i91.i386 = icmp eq ptr %i.bre, null
  br i1 %.not.i.i.i.i91.i386, label %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit92.i, label %bb.ox

bb.ox:                                            ; preds = %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit.i
  %i.brf = load ptr, ptr %i.kb, align 8, !tbaa !196, !noalias !807
  %i.brg = ptrtoint ptr %i.brf to i64
  %i.brh = ptrtoint ptr %i.bre to i64
  %i.bri = sub i64 %i.brg, %i.brh
  call void @_ZdlPvm(ptr noundef nonnull %i.bre, i64 noundef %i.bri) #30, !noalias !807
  br label %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit92.i

_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit92.i: ; preds = %bb.ox, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !807
  %i.brj = getelementptr inbounds nuw i8, ptr %.sroa.0110.0143.i, i64 8 ; 2 uses
  %.not.i387 = icmp eq ptr %i.brj, %.sroa.24.01771
  br i1 %.not.i387, label %._crit_edge.i388, label %bb.oc

_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit94.i: ; preds = %.loopexit.split-lp130.i, %.loopexit129.i, %.loopexit.split-lp125.i, %.loopexit124.i, %.loopexit.split-lp.i436, %.loopexit.i426, %bb.oj
  %i.brk = phi ptr [ %i.bkz, %.loopexit.split-lp.i436 ], [ %i.bmn, %.loopexit.split-lp125.i ], [ %i.bnw, %bb.oj ], [ %i.bkz, %.loopexit.i426 ], [ %i.bmn, %.loopexit124.i ], [ %i.bqb, %.loopexit129.i ], [ %i.bqb, %.loopexit.split-lp130.i ] ; 2 uses
  %i.brl = phi ptr [ %i.blb, %.loopexit.split-lp.i436 ], [ %i.bmr, %.loopexit.split-lp125.i ], [ %i.bnz, %bb.oj ], [ %i.blb, %.loopexit.i426 ], [ %i.bmr, %.loopexit124.i ], [ %i.bqd, %.loopexit129.i ], [ %i.bqd, %.loopexit.split-lp130.i ] ; 2 uses
  %.pn.pn.pn.i397 = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i437, %.loopexit.split-lp.i436 ], [ %lpad.loopexit.split-lp127.i, %.loopexit.split-lp125.i ], [ %i.bml, %bb.oj ], [ %lpad.loopexit.i427, %.loopexit.i426 ], [ %lpad.loopexit126.i, %.loopexit124.i ], [ %lpad.loopexit131.i, %.loopexit129.i ], [ %lpad.loopexit.split-lp132.i, %.loopexit.split-lp130.i ] ; 2 uses
  %i.brm = load ptr, ptr %i.jw, align 8, !tbaa !187, !noalias !807 ; 2 uses
  %.not.i.i.i.i95.i398 = icmp eq ptr %i.brm, null
  br i1 %.not.i.i.i.i95.i398, label %bb.oy, label %.sink.split3658

.sink.split3658:                                  ; preds = %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit94.i, %bb.od
  %.sink3665 = phi ptr [ %i.bkv, %bb.od ], [ %i.brm, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit94.i ] ; 2 uses
  %.ph3659 = phi ptr [ %i.bkj, %bb.od ], [ %i.brk, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit94.i ]
  %.ph3660 = phi ptr [ %i.bkl, %bb.od ], [ %i.brl, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit94.i ]
  %.pn.pn.pn.pn.i365.ph = phi { ptr, i32 } [ %i.bku, %bb.od ], [ %.pn.pn.pn.i397, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit94.i ]
  %i.brn = load ptr, ptr %i.kb, align 8, !tbaa !196, !noalias !807
  %i.bro = ptrtoint ptr %i.brn to i64
  %i.brp = ptrtoint ptr %.sink3665 to i64
  %i.brq = sub i64 %i.bro, %i.brp
  call void @_ZdlPvm(ptr noundef nonnull %.sink3665, i64 noundef %i.brq) #30, !noalias !807
  br label %bb.oy

bb.oy:                                            ; preds = %.sink.split3658, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit94.i, %bb.od
  %i.brr = phi ptr [ %i.bkj, %bb.od ], [ %i.brk, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit94.i ], [ %.ph3659, %.sink.split3658 ]
  %i.brs = phi ptr [ %i.bkl, %bb.od ], [ %i.brl, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit94.i ], [ %.ph3660, %.sink.split3658 ] ; 2 uses
  %.pn.pn.pn.pn.i365 = phi { ptr, i32 } [ %i.bku, %bb.od ], [ %.pn.pn.pn.i397, %_ZNSt7__cxx1114regex_iteratorIPKwwNS_12regex_traitsIwEEED2Ev.exit94.i ], [ %.pn.pn.pn.pn.i365.ph, %.sink.split3658 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !807
  %i.brt = ptrtoint ptr %i.brr to i64
  %i.bru = ptrtoint ptr %i.brs to i64
  %i.brv = sub i64 %i.brt, %i.bru
  call void @_ZdlPvm(ptr noundef nonnull %i.brs, i64 noundef %i.brv) #30, !noalias !807
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i361

_ZNSt6vectorImSaImEED2Ev.exit.i361:               ; preds = %.thread204.i.loopexit, %.thread204.i.loopexit.split-lp, %bb.oy
  %.pn.pn.pn.pn.pn207.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.i365, %bb.oy ], [ %lpad.loopexit.split-lp756, %.thread204.i.loopexit.split-lp ], [ %lpad.loopexit755, %.thread204.i.loopexit ]
  call void @_ZNSt7__cxx1111basic_regexIwNS_12regex_traitsIwEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #28, !noalias !807
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !807
  br label %.body445

bb.oz:                                            ; preds = %.critedge733
  %i.brw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11regex_error
  br label %.body352

bb.pa:                                            ; preds = %.noexc.i358
  %i.brx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11regex_error
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit457

.lr.ph1767:                                       ; preds = %.loopexit736, %.critedge
  %.01031765 = phi i64 [ %i.bsx, %.critedge ], [ 0, %.loopexit736 ] ; 3 uses
  %i.bry = load ptr, ptr %25, align 8, !tbaa !179
  %i.brz = getelementptr inbounds nuw [4 x i8], ptr %i.bry, i64 %.01031765
  %i.bsa = load i32, ptr %i.brz, align 4, !tbaa !178 ; 2 uses
  %i.bsb = icmp sgt i32 %i.bsa, 127
  br i1 %i.bsb, label %bb.pb, label %.critedge

bb.pb:                                            ; preds = %.lr.ph1767
  %i.bsc = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8
  %i.bsd = icmp eq i8 %i.bsc, 0
  br i1 %i.bsd, label %bb.pc, label %bb.pe, !prof !82

bb.pc:                                            ; preds = %bb.pb
  %i.bse = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28
  %.not.i444 = icmp eq i32 %i.bse, 0
  br i1 %.not.i444, label %bb.pe, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !84
  %i.bsf = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28
  br label %bb.pe

bb.pe:                                            ; preds = %bb.pd, %bb.pc, %bb.pb
  %i.bsg = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8
  %i.bsh = icmp eq i8 %i.bsg, 0
  br i1 %i.bsh, label %bb.pf, label %bb.pj, !prof !82
end_hunk_1
