Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/mapfile.cc.X86_64?download=true
inline.NumInlined: 1826
inline.NumDeleted: 914
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN3tbb6detail2d19start_forINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEEZNS7_L7get_mapIS9_EENS6_IPNS8_IT_EESC_IPNSD_IST_EESaISX_EENSI_ISV_EENSK_ISL_IKSV_SZ_EEEEERNS7_7ContextIST_EEEUlRKSR_E_KNS1_16auto_partitionerEE8run_bodyERSR_:bb.a
  %.sroa.05.0.lcssa.i.i.i133.4.i.i.i.i = phi ptr [ %.sroa.0.021.i.i130.ptr.4.i.i.i.i, %bb.z ], [ %.sroa.0.010.i.i.i157.4.i.i.i.i, %.lr.ph.i.i.i156.4.i.i.i.i ]
  store ptr %i.eh, ptr %.sroa.05.0.lcssa.i.i.i133.4.i.i.i.i, align 8, !tbaa !191
  %.pre.i.i134.4.i.i.i.i = load ptr, ptr %.sroa.026.030.i127.i.i.i.i, align 8, !tbaa !191
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.fa = ptrtoint ptr %.sroa.0.021.i.i130.ptr.4.i.i.i.i to i64
  %i.fb = sub i64 %i.fa, %i.al                    ; 3 uses
  %i.fc = ashr exact i64 %i.fb, 3                 ; 2 uses
  %i.fd = icmp sgt i64 %i.fc, 1
  br i1 %i.fd, label %bb.ad, label %bb.ab, !prof !237

bb.ab:                                            ; preds = %bb.aa
  %i.fe = icmp eq i64 %i.fb, 8
  br i1 %i.fe, label %bb.ac, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i160.4.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.eg, ptr %.sroa.0.021.i.i130.ptr.4.i.i.i.i, align 8, !tbaa !191
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i160.4.i.i.i.i

bb.ad:                                            ; preds = %bb.aa
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.026.030.i127.i.i.i.i, i64 48
  %i.fg = sub nsw i64 0, %i.fc
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.fg
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fh, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.026.030.i127.i.i.i.i, i64 %i.fb, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i160.4.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i160.4.i.i.i.i: ; preds = %bb.ad, %bb.ac, %bb.ab
  store ptr %i.eh, ptr %.sroa.026.030.i127.i.i.i.i, align 8, !tbaa !191
  br label %bb.ae

bb.ae:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i160.4.i.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SL_.exit.i.i132.4.i.i.i.i
  %i.fi = phi ptr [ %i.eh, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i160.4.i.i.i.i ], [ %.pre.i.i134.4.i.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SL_.exit.i.i132.4.i.i.i.i ] ; 2 uses
  %.sroa.0.021.i.i130.ptr.5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.026.030.i127.i.i.i.i, i64 48 ; 5 uses
  %i.fj = load ptr, ptr %.sroa.0.021.i.i130.ptr.5.i.i.i.i, align 8, !tbaa !191 ; 3 uses
  %i.fk = load i64, ptr %i.a, align 8, !tbaa !42  ; 3 uses
  %i.fl = getelementptr inbounds i8, ptr %i.fj, i64 %i.fk
  %i.fm = getelementptr inbounds i8, ptr %i.fi, i64 %i.fk
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !130 ; 2 uses
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !130
  %i.fp = icmp ult i64 %i.fn, %i.fo
  br i1 %i.fp, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fq = load ptr, ptr %.sroa.0.021.i.i130.ptr.4.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 %i.fk
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !130
  %i.ft = icmp ult i64 %i.fn, %i.fs
  br i1 %i.ft, label %.lr.ph.i.i.i156.5.i.i.i.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit.i136.i.i.i.i

.lr.ph.i.i.i156.5.i.i.i.i:                        ; preds = %bb.af, %.lr.ph.i.i.i156.5.i.i.i.i
  %i.fu = phi ptr [ %i.fx, %.lr.ph.i.i.i156.5.i.i.i.i ], [ %i.fq, %bb.af ]
  %.sroa.0.010.i.i.i157.5.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i159.5.i.i.i.i, %.lr.ph.i.i.i156.5.i.i.i.i ], [ %.sroa.0.021.i.i130.ptr.4.i.i.i.i, %bb.af ] ; 3 uses
  %.sroa.05.09.i.i.i158.5.i.i.i.i = phi ptr [ %.sroa.0.010.i.i.i157.5.i.i.i.i, %.lr.ph.i.i.i156.5.i.i.i.i ], [ %.sroa.0.021.i.i130.ptr.5.i.i.i.i, %bb.af ]
  store ptr %i.fu, ptr %.sroa.05.09.i.i.i158.5.i.i.i.i, align 8, !tbaa !191
  %.sroa.0.0.i.i.i159.5.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i157.5.i.i.i.i, i64 -8 ; 2 uses
  %i.fv = load i64, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %i.fj, i64 %i.fv
  %i.fx = load ptr, ptr %.sroa.0.0.i.i.i159.5.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 %i.fv
  %i.fz = load i64, ptr %i.fw, align 8, !tbaa !130
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !130
  %i.gb = icmp ult i64 %i.fz, %i.ga
  br i1 %i.gb, label %.lr.ph.i.i.i156.5.i.i.i.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit.i136.i.i.i.i, !llvm.loop !13

bb.ag:                                            ; preds = %bb.ae
  %i.gc = ptrtoint ptr %.sroa.0.021.i.i130.ptr.5.i.i.i.i to i64
  %i.gd = sub i64 %i.gc, %i.al                    ; 3 uses
  %i.ge = ashr exact i64 %i.gd, 3                 ; 2 uses
  %i.gf = icmp sgt i64 %i.ge, 1
  br i1 %i.gf, label %bb.aj, label %bb.ah, !prof !237

bb.ah:                                            ; preds = %bb.ag
  %i.gg = icmp eq i64 %i.gd, 8
  br i1 %i.gg, label %bb.ai, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit.i136.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.fi, ptr %.sroa.0.021.i.i130.ptr.5.i.i.i.i, align 8, !tbaa !191
  br label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit.i136.i.i.i.i

bb.aj:                                            ; preds = %bb.ag
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.026.030.i127.i.i.i.i, i64 56
  %i.gi = sub nsw i64 0, %i.ge
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %i.gi
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gj, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.026.030.i127.i.i.i.i, i64 %i.gd, i1 false)
  br label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit.i136.i.i.i.i

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit.i136.i.i.i.i: ; preds = %.lr.ph.i.i.i156.5.i.i.i.i, %bb.aj, %bb.ai, %bb.ah, %bb.af
  %.sroa.026.030.i127.sink.i.i.i.i = phi ptr [ %.sroa.026.030.i127.i.i.i.i, %bb.ah ], [ %.sroa.0.021.i.i130.ptr.5.i.i.i.i, %bb.af ], [ %.sroa.026.030.i127.i.i.i.i, %bb.aj ], [ %.sroa.026.030.i127.i.i.i.i, %bb.ai ], [ %.sroa.0.010.i.i.i157.5.i.i.i.i, %.lr.ph.i.i.i156.5.i.i.i.i ]
  store ptr %i.fj, ptr %.sroa.026.030.i127.sink.i.i.i.i, align 8, !tbaa !191
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.026.030.i127.i.i.i.i, i64 56 ; 3 uses
  %i.gl = ptrtoint ptr %i.gk to i64               ; 3 uses
  %i.gm = sub i64 %i.aj, %i.gl
  %.not.i137.i.i.i.i = icmp slt i64 %i.gm, 56
  br i1 %.not.i137.i.i.i.i, label %._crit_edge.i138.i.i.i.i, label %.lr.ph.i.i126.i.i.i.i, !llvm.loop !14

._crit_edge.i138.i.i.i.i:                         ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit.i136.i.i.i.i, %bb.c
  %.sroa.026.0.lcssa.i139.i.i.i.i = phi ptr [ %i.r, %bb.c ], [ %i.gk, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit.i136.i.i.i.i ] ; 7 uses
  %.lcssa.i140.i.i.i.i = phi i64 [ %i.w, %bb.c ], [ %i.gl, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit.i136.i.i.i.i ]
  %i.gn = icmp eq ptr %.sroa.026.0.lcssa.i139.i.i.i.i, %i.ai
  br i1 %i.gn, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_.exit161.i.i.i.i, label %.preheader.i10.i141.i.i.i.i

.preheader.i10.i141.i.i.i.i:                      ; preds = %._crit_edge.i138.i.i.i.i
  %.sroa.0.019.i11.i142.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.026.0.lcssa.i139.i.i.i.i, i64 8 ; 2 uses
  %i.go = icmp eq ptr %.sroa.0.019.i11.i142.i.i.i.i, %i.ai
  br i1 %i.go, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_.exit161.i.i.i.i, label %.lr.ph.i12.i143.i.i.i.i

.lr.ph.i12.i143.i.i.i.i:                          ; preds = %.preheader.i10.i141.i.i.i.i
  %.pre23.i13.i144.i.i.i.i = load ptr, ptr %.sroa.026.0.lcssa.i139.i.i.i.i, align 8, !tbaa !191
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aq, %.lr.ph.i12.i143.i.i.i.i
  %i.gp = phi ptr [ %.pre23.i13.i144.i.i.i.i, %.lr.ph.i12.i143.i.i.i.i ], [ %i.hs, %bb.aq ] ; 2 uses
  %.sroa.0.021.i14.i145.i.i.i.i = phi ptr [ %.sroa.0.019.i11.i142.i.i.i.i, %.lr.ph.i12.i143.i.i.i.i ], [ %.sroa.0.0.i19.i150.i.i.i.i, %bb.aq ] ; 6 uses
  %.pn20.i15.i146.i.i.i.i = phi ptr [ %.sroa.026.0.lcssa.i139.i.i.i.i, %.lr.ph.i12.i143.i.i.i.i ], [ %.sroa.0.021.i14.i145.i.i.i.i, %bb.aq ] ; 4 uses
  %i.gq = load ptr, ptr %.sroa.0.021.i14.i145.i.i.i.i, align 8, !tbaa !191 ; 5 uses
  %i.gr = load i64, ptr %i.a, align 8, !tbaa !42  ; 3 uses
  %i.gs = getelementptr inbounds i8, ptr %i.gq, i64 %i.gr
  %i.gt = getelementptr inbounds i8, ptr %i.gp, i64 %i.gr
  %i.gu = load i64, ptr %i.gs, align 8, !tbaa !130 ; 2 uses
  %i.gv = load i64, ptr %i.gt, align 8, !tbaa !130
  %i.gw = icmp ult i64 %i.gu, %i.gv
  br i1 %i.gw, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.gx = ptrtoint ptr %.sroa.0.021.i14.i145.i.i.i.i to i64
  %i.gy = sub i64 %i.gx, %.lcssa.i140.i.i.i.i     ; 3 uses
  %i.gz = ashr exact i64 %i.gy, 3                 ; 2 uses
  %i.ha = icmp sgt i64 %i.gz, 1
  br i1 %i.ha, label %bb.am, label %bb.an, !prof !237

bb.am:                                            ; preds = %bb.al
  %i.hb = getelementptr inbounds nuw i8, ptr %.pn20.i15.i146.i.i.i.i, i64 16
  %i.hc = sub nsw i64 0, %i.gz
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.hc
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hd, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.026.0.lcssa.i139.i.i.i.i, i64 %i.gy, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i24.i155.i.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.he = icmp eq i64 %i.gy, 8
  br i1 %i.he, label %bb.ao, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i24.i155.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.hf = getelementptr inbounds nuw i8, ptr %.pn20.i15.i146.i.i.i.i, i64 8
  store ptr %i.gp, ptr %i.hf, align 8, !tbaa !191
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i24.i155.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i24.i155.i.i.i.i: ; preds = %bb.ao, %bb.an, %bb.am
  store ptr %i.gq, ptr %.sroa.026.0.lcssa.i139.i.i.i.i, align 8, !tbaa !191
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ak
  %i.hg = load ptr, ptr %.pn20.i15.i146.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 %i.gr
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !130
  %i.hj = icmp ult i64 %i.gu, %i.hi
  br i1 %i.hj, label %.lr.ph.i.i20.i151.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SL_.exit.i16.i147.i.i.i.i

.lr.ph.i.i20.i151.i.i.i.i:                        ; preds = %bb.ap, %.lr.ph.i.i20.i151.i.i.i.i
  %i.hk = phi ptr [ %i.hn, %.lr.ph.i.i20.i151.i.i.i.i ], [ %i.hg, %bb.ap ]
  %.sroa.0.010.i.i21.i152.i.i.i.i = phi ptr [ %.sroa.0.0.i.i23.i154.i.i.i.i, %.lr.ph.i.i20.i151.i.i.i.i ], [ %.pn20.i15.i146.i.i.i.i, %bb.ap ] ; 3 uses
  %.sroa.05.09.i.i22.i153.i.i.i.i = phi ptr [ %.sroa.0.010.i.i21.i152.i.i.i.i, %.lr.ph.i.i20.i151.i.i.i.i ], [ %.sroa.0.021.i14.i145.i.i.i.i, %bb.ap ]
  store ptr %i.hk, ptr %.sroa.05.09.i.i22.i153.i.i.i.i, align 8, !tbaa !191
  %.sroa.0.0.i.i23.i154.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i21.i152.i.i.i.i, i64 -8 ; 2 uses
  %i.hl = load i64, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %i.gq, i64 %i.hl
  %i.hn = load ptr, ptr %.sroa.0.0.i.i23.i154.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.ho = getelementptr inbounds i8, ptr %i.hn, i64 %i.hl
  %i.hp = load i64, ptr %i.hm, align 8, !tbaa !130
  %i.hq = load i64, ptr %i.ho, align 8, !tbaa !130
  %i.hr = icmp ult i64 %i.hp, %i.hq
  br i1 %i.hr, label %.lr.ph.i.i20.i151.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SL_.exit.i16.i147.i.i.i.i, !llvm.loop !13

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SL_.exit.i16.i147.i.i.i.i: ; preds = %.lr.ph.i.i20.i151.i.i.i.i, %bb.ap
  %.sroa.05.0.lcssa.i.i17.i148.i.i.i.i = phi ptr [ %.sroa.0.021.i14.i145.i.i.i.i, %bb.ap ], [ %.sroa.0.010.i.i21.i152.i.i.i.i, %.lr.ph.i.i20.i151.i.i.i.i ]
  store ptr %i.gq, ptr %.sroa.05.0.lcssa.i.i17.i148.i.i.i.i, align 8, !tbaa !191
  %.pre.i18.i149.i.i.i.i = load ptr, ptr %.sroa.026.0.lcssa.i139.i.i.i.i, align 8, !tbaa !191
  br label %bb.aq

bb.aq:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SL_.exit.i16.i147.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i24.i155.i.i.i.i
  %i.hs = phi ptr [ %i.gq, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i24.i155.i.i.i.i ], [ %.pre.i18.i149.i.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SL_.exit.i16.i147.i.i.i.i ]
  %.sroa.0.0.i19.i150.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i14.i145.i.i.i.i, i64 8 ; 2 uses
  %i.ht = icmp eq ptr %.sroa.0.0.i19.i150.i.i.i.i, %i.ai
  br i1 %i.ht, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_.exit161.i.i.i.i, label %bb.ak, !llvm.loop !15

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_.exit161.i.i.i.i: ; preds = %bb.aq, %.preheader.i10.i141.i.i.i.i, %._crit_edge.i138.i.i.i.i
  %i.hu = icmp sgt i64 %i.y, 14
  br i1 %i.hu, label %.lr.ph.i.i.preheader.i.i.i.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_.exit.i.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i:                     ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_.exit161.i.i.i.i
  %i.hv = ptrtoint ptr %i.ak to i64               ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt17__merge_sort_loopIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit73.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i
  %.022.i.i.i.i.i.i = phi i64 [ %i.ku, %_ZSt17__merge_sort_loopIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit73.i.i.i.i ], [ 7, %.lr.ph.i.i.preheader.i.i.i.i ] ; 8 uses
  %i.hw = shl nsw i64 %.022.i.i.i.i.i.i, 1        ; 6 uses
  %.not60.i74.i.i.i.i = icmp slt i64 %i.aa, %i.hw
  br i1 %.not60.i74.i.i.i.i, label %._crit_edge.i95.i.i.i.i, label %.lr.ph.i75.i.i.i.i

.lr.ph.i75.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i
  %.idx.i76.i.i.i.i = shl i64 %.022.i.i.i.i.i.i, 3 ; 12 uses
  %.idx55.i77.i.i.i.i = shl i64 %.022.i.i.i.i.i.i, 4 ; 2 uses
  %i.hx = icmp eq i64 %.idx.i76.i.i.i.i, %.idx55.i77.i.i.i.i
  br i1 %i.hx, label %.critedge.i.us.preheader.i117.i.i.i.i, label %.lr.ph.i.preheader.i78.i.i.i.i

.critedge.i.us.preheader.i117.i.i.i.i:            ; preds = %.lr.ph.i75.i.i.i.i
  %i.hy = icmp sgt i64 %.idx.i76.i.i.i.i, 8
  br i1 %i.hy, label %.critedge.i.us.i118.us.i.i.i.i, label %.critedge.i.us.preheader.i117.split.i.i.i.i, !prof !237

.critedge.i.us.i118.us.i.i.i.i:                   ; preds = %.critedge.i.us.preheader.i117.i.i.i.i, %.critedge.i.us.i118.us.i.i.i.i
  %.062.us.i119.us.i.i.i.i = phi ptr [ %2, %.critedge.i.us.i118.us.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.critedge.i.us.preheader.i117.i.i.i.i ] ; 2 uses
  %.sroa.044.061.us.i120.us.i.i.i.i = phi ptr [ %i.hz, %.critedge.i.us.i118.us.i.i.i.i ], [ %i.r, %.critedge.i.us.preheader.i117.i.i.i.i ] ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.044.061.us.i120.us.i.i.i.i, i64 %.idx.i76.i.i.i.i ; 4 uses
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.062.us.i119.us.i.i.i.i, ptr align 8 %.sroa.044.061.us.i120.us.i.i.i.i, i64 %.idx.i76.i.i.i.i, i1 false)
  %i.ia = getelementptr inbounds nuw i8, ptr %.062.us.i119.us.i.i.i.i, i64 %.idx.i76.i.i.i.i ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ia, ptr nonnull align 8 %i.hz, i64 %.idx.i76.i.i.i.i, i1 false)
  %2 = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.idx.i76.i.i.i.i ; 2 uses
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = sub i64 %i.aj, %i.ib
  %i.id = ashr exact i64 %i.ic, 3                 ; 2 uses
  %.not.us.i122.us.i.i.i.i = icmp slt i64 %i.id, %i.hw
  br i1 %.not.us.i122.us.i.i.i.i, label %._crit_edge.i95.i.i.i.i, label %.critedge.i.us.i118.us.i.i.i.i, !llvm.loop !16

.critedge.i.us.preheader.i117.split.i.i.i.i:      ; preds = %.critedge.i.us.preheader.i117.i.i.i.i
  %i.ie = icmp eq i64 %.idx.i76.i.i.i.i, 8
  br i1 %i.ie, label %.critedge.i.us.i118.us54.preheader.i.i.i.i, label %.critedge.i.us.i118.i.i.i.i

.critedge.i.us.i118.us54.preheader.i.i.i.i:       ; preds = %.critedge.i.us.preheader.i117.split.i.i.i.i
  %.pre142.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !191
  br label %.critedge.i.us.i118.us54.i.i.i.i

.critedge.i.us.i118.us54.i.i.i.i:                 ; preds = %.critedge.i.us.i118.us54.i.i.i.i, %.critedge.i.us.i118.us54.preheader.i.i.i.i
  %i.if = phi ptr [ %i.ii, %.critedge.i.us.i118.us54.i.i.i.i ], [ %.pre142.i.i.i.i, %.critedge.i.us.i118.us54.preheader.i.i.i.i ]
  %.062.us.i119.us55.i.i.i.i = phi ptr [ %3, %.critedge.i.us.i118.us54.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.critedge.i.us.i118.us54.preheader.i.i.i.i ] ; 3 uses
  %.sroa.044.061.us.i120.us56.i.i.i.i = phi ptr [ %i.ig, %.critedge.i.us.i118.us54.i.i.i.i ], [ %i.r, %.critedge.i.us.i118.us54.preheader.i.i.i.i ]
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.044.061.us.i120.us56.i.i.i.i, i64 8 ; 4 uses
  store ptr %i.if, ptr %.062.us.i119.us55.i.i.i.i, align 8, !tbaa !191
  %i.ih = getelementptr inbounds nuw i8, ptr %.062.us.i119.us55.i.i.i.i, i64 8
  %i.ii = load ptr, ptr %i.ig, align 8, !tbaa !191 ; 2 uses
  store ptr %i.ii, ptr %i.ih, align 8, !tbaa !191
  %3 = getelementptr inbounds nuw i8, ptr %.062.us.i119.us55.i.i.i.i, i64 16 ; 2 uses
  %i.ij = ptrtoint ptr %i.ig to i64
  %i.ik = sub i64 %i.aj, %i.ij
  %i.il = ashr exact i64 %i.ik, 3                 ; 2 uses
  %.not.us.i122.us58.i.i.i.i = icmp slt i64 %i.il, %i.hw
  br i1 %.not.us.i122.us58.i.i.i.i, label %._crit_edge.i95.i.i.i.i, label %.critedge.i.us.i118.us54.i.i.i.i, !llvm.loop !16

.critedge.i.us.i118.i.i.i.i:                      ; preds = %.critedge.i.us.preheader.i117.split.i.i.i.i, %.critedge.i.us.i118.i.i.i.i
  %.062.us.i119.i.i.i.i = phi ptr [ %i.in, %.critedge.i.us.i118.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.critedge.i.us.preheader.i117.split.i.i.i.i ]
  %.sroa.044.061.us.i120.i.i.i.i = phi ptr [ %4, %.critedge.i.us.i118.i.i.i.i ], [ %i.r, %.critedge.i.us.preheader.i117.split.i.i.i.i ]
  %4 = getelementptr inbounds i8, ptr %.sroa.044.061.us.i120.i.i.i.i, i64 %.idx.i76.i.i.i.i ; 3 uses
  %i.im = getelementptr inbounds i8, ptr %.062.us.i119.i.i.i.i, i64 %.idx.i76.i.i.i.i
  %i.in = getelementptr inbounds i8, ptr %i.im, i64 %.idx.i76.i.i.i.i ; 2 uses
  %i.io = ptrtoint ptr %4 to i64
  %i.ip = sub i64 %i.aj, %i.io
  %i.iq = ashr exact i64 %i.ip, 3                 ; 2 uses
  %.not.us.i122.i.i.i.i = icmp slt i64 %i.iq, %i.hw
  br i1 %.not.us.i122.i.i.i.i, label %._crit_edge.i95.i.i.i.i, label %.critedge.i.us.i118.i.i.i.i, !llvm.loop !16

.lr.ph.i.preheader.i78.i.i.i.i:                   ; preds = %.lr.ph.i75.i.i.i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i93.i.i.i.i
  %.062.i79.i.i.i.i = phi ptr [ %i.jr, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i93.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.lr.ph.i75.i.i.i.i ]
  %.sroa.044.061.i80.i.i.i.i = phi ptr [ %i.is, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i93.i.i.i.i ], [ %i.r, %.lr.ph.i75.i.i.i.i ] ; 3 uses
  %i.ir = getelementptr inbounds i8, ptr %.sroa.044.061.i80.i.i.i.i, i64 %.idx.i76.i.i.i.i ; 3 uses
  %i.is = getelementptr inbounds i8, ptr %.sroa.044.061.i80.i.i.i.i, i64 %.idx55.i77.i.i.i.i ; 4 uses
  br label %.lr.ph.i.i81.i.i.i.i

.lr.ph.i.i81.i.i.i.i:                             ; preds = %.lr.ph.i.i81.i.i.i.i, %.lr.ph.i.preheader.i78.i.i.i.i
  %.020.i.i82.i.i.i.i = phi ptr [ %i.jb, %.lr.ph.i.i81.i.i.i.i ], [ %.062.i79.i.i.i.i, %.lr.ph.i.preheader.i78.i.i.i.i ] ; 2 uses
  %.sroa.014.019.i.i83.i.i.i.i = phi ptr [ %.sroa.014.1.i.i89.i.i.i.i, %.lr.ph.i.i81.i.i.i.i ], [ %.sroa.044.061.i80.i.i.i.i, %.lr.ph.i.preheader.i78.i.i.i.i ] ; 2 uses
  %.sroa.010.018.i.i84.i.i.i.i = phi ptr [ %.sroa.010.1.i.i87.i.i.i.i, %.lr.ph.i.i81.i.i.i.i ], [ %i.ir, %.lr.ph.i.preheader.i78.i.i.i.i ] ; 2 uses
  %i.it = load ptr, ptr %.sroa.010.018.i.i84.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.iu = load i64, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.iv = getelementptr inbounds i8, ptr %i.it, i64 %i.iu
  %i.iw = load ptr, ptr %.sroa.014.019.i.i83.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.ix = getelementptr inbounds i8, ptr %i.iw, i64 %i.iu
  %i.iy = load i64, ptr %i.iv, align 8, !tbaa !130
  %i.iz = load i64, ptr %i.ix, align 8, !tbaa !130
  %i.ja = icmp ult i64 %i.iy, %i.iz               ; 3 uses
  %.sink.i.i85.i.i.i.i = select i1 %i.ja, ptr %i.it, ptr %i.iw
  %.sroa.010.1.idx.i.i86.i.i.i.i = select i1 %i.ja, i64 8, i64 0
  %.sroa.010.1.i.i87.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i84.i.i.i.i, i64 %.sroa.010.1.idx.i.i86.i.i.i.i ; 5 uses
  %.sroa.014.1.idx.i.i88.i.i.i.i = select i1 %i.ja, i64 0, i64 8
  %.sroa.014.1.i.i89.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i.i83.i.i.i.i, i64 %.sroa.014.1.idx.i.i88.i.i.i.i ; 5 uses
  store ptr %.sink.i.i85.i.i.i.i, ptr %.020.i.i82.i.i.i.i, align 8, !tbaa !191
  %i.jb = getelementptr inbounds nuw i8, ptr %.020.i.i82.i.i.i.i, i64 8 ; 4 uses
  %i.jc = icmp eq ptr %.sroa.014.1.i.i89.i.i.i.i, %i.ir
  %i.jd = icmp eq ptr %.sroa.010.1.i.i87.i.i.i.i, %i.is
  %or.cond.i.i90.i.i.i.i = select i1 %i.jc, i1 true, i1 %i.jd
  br i1 %or.cond.i.i90.i.i.i.i, label %.critedge.i.loopexit.i91.i.i.i.i, label %.lr.ph.i.i81.i.i.i.i, !llvm.loop !17

.critedge.i.loopexit.i91.i.i.i.i:                 ; preds = %.lr.ph.i.i81.i.i.i.i
  %i.je = ptrtoint ptr %i.ir to i64
  %i.jf = ptrtoint ptr %.sroa.014.1.i.i89.i.i.i.i to i64
  %i.jg = sub i64 %i.je, %i.jf                    ; 4 uses
  %i.jh = icmp sgt i64 %i.jg, 8
  br i1 %i.jh, label %bb.ar, label %bb.as, !prof !237

bb.ar:                                            ; preds = %.critedge.i.loopexit.i91.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jb, ptr nonnull align 8 %.sroa.014.1.i.i89.i.i.i.i, i64 %i.jg, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i92.i.i.i.i

bb.as:                                            ; preds = %.critedge.i.loopexit.i91.i.i.i.i
  %i.ji = icmp eq i64 %i.jg, 8
  br i1 %i.ji, label %bb.at, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i92.i.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.jj = load ptr, ptr %.sroa.014.1.i.i89.i.i.i.i, align 8, !tbaa !191
  store ptr %i.jj, ptr %i.jb, align 8, !tbaa !191
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i92.i.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i92.i.i.i.i: ; preds = %bb.at, %bb.as, %bb.ar
  %i.jk = getelementptr inbounds i8, ptr %i.jb, i64 %i.jg ; 3 uses
  %i.jl = ptrtoint ptr %i.is to i64               ; 2 uses
  %i.jm = ptrtoint ptr %.sroa.010.1.i.i87.i.i.i.i to i64
  %i.jn = sub i64 %i.jl, %i.jm                    ; 4 uses
  %i.jo = icmp sgt i64 %i.jn, 8
  br i1 %i.jo, label %bb.au, label %bb.av, !prof !237

bb.au:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i92.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jk, ptr nonnull align 8 %.sroa.010.1.i.i87.i.i.i.i, i64 %i.jn, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i93.i.i.i.i

bb.av:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i92.i.i.i.i
  %i.jp = icmp eq i64 %i.jn, 8
  br i1 %i.jp, label %bb.aw, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i93.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.jq = load ptr, ptr %.sroa.010.1.i.i87.i.i.i.i, align 8, !tbaa !191
  store ptr %i.jq, ptr %i.jk, align 8, !tbaa !191
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i93.i.i.i.i

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i93.i.i.i.i: ; preds = %bb.aw, %bb.av, %bb.au
  %i.jr = getelementptr inbounds i8, ptr %i.jk, i64 %i.jn ; 2 uses
  %i.js = sub i64 %i.aj, %i.jl
  %i.jt = ashr exact i64 %i.js, 3                 ; 2 uses
  %.not.i94.i.i.i.i = icmp slt i64 %i.jt, %i.hw
  br i1 %.not.i94.i.i.i.i, label %._crit_edge.i95.i.i.i.i, label %.lr.ph.i.preheader.i78.i.i.i.i, !llvm.loop !16

._crit_edge.i95.i.i.i.i:                          ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i93.i.i.i.i, %.critedge.i.us.i118.i.i.i.i, %.critedge.i.us.i118.us54.i.i.i.i, %.critedge.i.us.i118.us.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.044.0.lcssa.i96.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.hz, %.critedge.i.us.i118.us.i.i.i.i ], [ %i.ig, %.critedge.i.us.i118.us54.i.i.i.i ], [ %4, %.critedge.i.us.i118.i.i.i.i ], [ %i.is, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i93.i.i.i.i ] ; 3 uses
  %.0.lcssa.i97.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %2, %.critedge.i.us.i118.us.i.i.i.i ], [ %3, %.critedge.i.us.i118.us54.i.i.i.i ], [ %i.in, %.critedge.i.us.i118.i.i.i.i ], [ %i.jr, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i93.i.i.i.i ] ; 2 uses
  %.lcssa58.i98.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i.i ], [ %i.id, %.critedge.i.us.i118.us.i.i.i.i ], [ %i.il, %.critedge.i.us.i118.us54.i.i.i.i ], [ %i.iq, %.critedge.i.us.i118.i.i.i.i ], [ %i.jt, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i93.i.i.i.i ]
  %.sroa.speculated.i99.i.i.i.i = call i64 @llvm.smin.i64(i64 %.022.i.i.i.i.i.i, i64 %.lcssa58.i98.i.i.i.i) ; 2 uses
  %.idx56.i100.i.i.i.i = shl nsw i64 %.sroa.speculated.i99.i.i.i.i, 3
  %i.ju = getelementptr inbounds i8, ptr %.sroa.044.0.lcssa.i96.i.i.i.i, i64 %.idx56.i100.i.i.i.i ; 5 uses
  %i.jv = icmp eq i64 %.sroa.speculated.i99.i.i.i.i, 0
  %i.jw = icmp eq ptr %i.ju, %i.ai
  %or.cond17.i16.i101.i.i.i.i = select i1 %i.jv, i1 true, i1 %i.jw
  br i1 %or.cond17.i16.i101.i.i.i.i, label %.critedge.i27.i112.i.i.i.i, label %.lr.ph.i17.i102.i.i.i.i

.lr.ph.i17.i102.i.i.i.i:                          ; preds = %._crit_edge.i95.i.i.i.i, %.lr.ph.i17.i102.i.i.i.i
  %.020.i18.i103.i.i.i.i = phi ptr [ %i.kf, %.lr.ph.i17.i102.i.i.i.i ], [ %.0.lcssa.i97.i.i.i.i, %._crit_edge.i95.i.i.i.i ] ; 2 uses
  %.sroa.014.019.i19.i104.i.i.i.i = phi ptr [ %.sroa.014.1.i25.i110.i.i.i.i, %.lr.ph.i17.i102.i.i.i.i ], [ %.sroa.044.0.lcssa.i96.i.i.i.i, %._crit_edge.i95.i.i.i.i ] ; 2 uses
  %.sroa.010.018.i20.i105.i.i.i.i = phi ptr [ %.sroa.010.1.i23.i108.i.i.i.i, %.lr.ph.i17.i102.i.i.i.i ], [ %i.ju, %._crit_edge.i95.i.i.i.i ] ; 2 uses
  %i.jx = load ptr, ptr %.sroa.010.018.i20.i105.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.jy = load i64, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.jz = getelementptr inbounds i8, ptr %i.jx, i64 %i.jy
  %i.ka = load ptr, ptr %.sroa.014.019.i19.i104.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.kb = getelementptr inbounds i8, ptr %i.ka, i64 %i.jy
  %i.kc = load i64, ptr %i.jz, align 8, !tbaa !130
  %i.kd = load i64, ptr %i.kb, align 8, !tbaa !130
  %i.ke = icmp ult i64 %i.kc, %i.kd               ; 3 uses
  %.sink.i21.i106.i.i.i.i = select i1 %i.ke, ptr %i.jx, ptr %i.ka
  %.sroa.010.1.idx.i22.i107.i.i.i.i = select i1 %i.ke, i64 8, i64 0
  %.sroa.010.1.i23.i108.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i20.i105.i.i.i.i, i64 %.sroa.010.1.idx.i22.i107.i.i.i.i ; 3 uses
  %.sroa.014.1.idx.i24.i109.i.i.i.i = select i1 %i.ke, i64 0, i64 8
  %.sroa.014.1.i25.i110.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i19.i104.i.i.i.i, i64 %.sroa.014.1.idx.i24.i109.i.i.i.i ; 3 uses
  store ptr %.sink.i21.i106.i.i.i.i, ptr %.020.i18.i103.i.i.i.i, align 8, !tbaa !191
  %i.kf = getelementptr inbounds nuw i8, ptr %.020.i18.i103.i.i.i.i, i64 8 ; 2 uses
  %i.kg = icmp eq ptr %.sroa.014.1.i25.i110.i.i.i.i, %i.ju
  %i.kh = icmp eq ptr %.sroa.010.1.i23.i108.i.i.i.i, %i.ai
  %or.cond.i26.i111.i.i.i.i = select i1 %i.kg, i1 true, i1 %i.kh
  br i1 %or.cond.i26.i111.i.i.i.i, label %.critedge.i27.i112.i.i.i.i, label %.lr.ph.i17.i102.i.i.i.i, !llvm.loop !17

.critedge.i27.i112.i.i.i.i:                       ; preds = %.lr.ph.i17.i102.i.i.i.i, %._crit_edge.i95.i.i.i.i
  %.sroa.010.0.lcssa.i28.i113.i.i.i.i = phi ptr [ %i.ju, %._crit_edge.i95.i.i.i.i ], [ %.sroa.010.1.i23.i108.i.i.i.i, %.lr.ph.i17.i102.i.i.i.i ] ; 3 uses
  %.sroa.014.0.lcssa.i29.i114.i.i.i.i = phi ptr [ %.sroa.044.0.lcssa.i96.i.i.i.i, %._crit_edge.i95.i.i.i.i ], [ %.sroa.014.1.i25.i110.i.i.i.i, %.lr.ph.i17.i102.i.i.i.i ] ; 3 uses
  %.0.lcssa.i30.i115.i.i.i.i = phi ptr [ %.0.lcssa.i97.i.i.i.i, %._crit_edge.i95.i.i.i.i ], [ %i.kf, %.lr.ph.i17.i102.i.i.i.i ] ; 3 uses
  %i.ki = ptrtoint ptr %i.ju to i64
  %i.kj = ptrtoint ptr %.sroa.014.0.lcssa.i29.i114.i.i.i.i to i64
  %i.kk = sub i64 %i.ki, %i.kj                    ; 4 uses
  %i.kl = icmp sgt i64 %i.kk, 8
  br i1 %i.kl, label %bb.ax, label %bb.ay, !prof !237

bb.ax:                                            ; preds = %.critedge.i27.i112.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i30.i115.i.i.i.i, ptr align 8 %.sroa.014.0.lcssa.i29.i114.i.i.i.i, i64 %i.kk, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31.i116.i.i.i.i

bb.ay:                                            ; preds = %.critedge.i27.i112.i.i.i.i
  %i.km = icmp eq i64 %i.kk, 8
  br i1 %i.km, label %bb.az, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31.i116.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.kn = load ptr, ptr %.sroa.014.0.lcssa.i29.i114.i.i.i.i, align 8, !tbaa !191
  store ptr %i.kn, ptr %.0.lcssa.i30.i115.i.i.i.i, align 8, !tbaa !191
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31.i116.i.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31.i116.i.i.i.i: ; preds = %bb.az, %bb.ay, %bb.ax
  %i.ko = getelementptr inbounds i8, ptr %.0.lcssa.i30.i115.i.i.i.i, i64 %i.kk ; 2 uses
  %i.kp = ptrtoint ptr %.sroa.010.0.lcssa.i28.i113.i.i.i.i to i64
  %i.kq = sub i64 %i.aj, %i.kp                    ; 3 uses
  %i.kr = icmp sgt i64 %i.kq, 8
  br i1 %i.kr, label %bb.ba, label %bb.bb, !prof !237

bb.ba:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31.i116.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ko, ptr align 8 %.sroa.010.0.lcssa.i28.i113.i.i.i.i, i64 %i.kq, i1 false)
  br label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit123.i.i.i.i

bb.bb:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31.i116.i.i.i.i
  %i.ks = icmp eq i64 %i.kq, 8
  br i1 %i.ks, label %bb.bc, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit123.i.i.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.kt = load ptr, ptr %.sroa.010.0.lcssa.i28.i113.i.i.i.i, align 8, !tbaa !191
  store ptr %i.kt, ptr %i.ko, align 8, !tbaa !191
  br label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit123.i.i.i.i

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit123.i.i.i.i: ; preds = %bb.bc, %bb.bb, %bb.ba
  %i.ku = shl nsw i64 %.022.i.i.i.i.i.i, 2        ; 5 uses
  %.not55.i25.i.i.i.i = icmp slt i64 %i.aa, %i.ku
  br i1 %.not55.i25.i.i.i.i, label %._crit_edge.i46.i.i.i.i, label %.lr.ph.i26.i.i.i.i

.lr.ph.i26.i.i.i.i:                               ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit123.i.i.i.i
  %.idx.i27.i.i.i.i = shl i64 %.022.i.i.i.i.i.i, 4 ; 8 uses
  %.idx49.i28.i.i.i.i = shl nsw i64 %.022.i.i.i.i.i.i, 5 ; 2 uses
  %.not50.i29.i.i.i.i = icmp eq i64 %.idx.i27.i.i.i.i, %.idx49.i28.i.i.i.i
  br i1 %.not50.i29.i.i.i.i, label %._crit_edge.i.us.preheader.i66.i.i.i.i, label %.lr.ph.i.preheader.i30.i.i.i.i

._crit_edge.i.us.preheader.i66.i.i.i.i:           ; preds = %.lr.ph.i26.i.i.i.i
  %i.kv = icmp sgt i64 %.022.i.i.i.i.i.i, 0
  %i.kw = icmp sgt i64 %.idx.i27.i.i.i.i, 8
  br label %._crit_edge.i.us.i67.i.i.i.i

._crit_edge.i.us.i67.i.i.i.i:                     ; preds = %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i71.i.i.i.i, %._crit_edge.i.us.preheader.i66.i.i.i.i
  %.sroa.022.057.us.i68.i.i.i.i = phi ptr [ %i.kz, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i71.i.i.i.i ], [ %i.r, %._crit_edge.i.us.preheader.i66.i.i.i.i ] ; 2 uses
  %.056.us.i69.i.i.i.i = phi ptr [ %i.kx, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i71.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %._crit_edge.i.us.preheader.i66.i.i.i.i ] ; 2 uses
  %i.kx = getelementptr inbounds i8, ptr %.056.us.i69.i.i.i.i, i64 %.idx.i27.i.i.i.i ; 4 uses
  br i1 %i.kv, label %bb.bd, label %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i70.i.i.i.i, !prof !237

bb.bd:                                            ; preds = %._crit_edge.i.us.i67.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.022.057.us.i68.i.i.i.i, ptr align 8 %.056.us.i69.i.i.i.i, i64 %.idx.i27.i.i.i.i, i1 false)
  br label %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i70.i.i.i.i

_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i70.i.i.i.i: ; preds = %bb.bd, %._crit_edge.i.us.i67.i.i.i.i
  %i.ky = getelementptr inbounds i8, ptr %.sroa.022.057.us.i68.i.i.i.i, i64 %.idx.i27.i.i.i.i ; 2 uses
  br i1 %i.kw, label %bb.be, label %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i71.i.i.i.i, !prof !238

bb.be:                                            ; preds = %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i70.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ky, ptr nonnull align 8 %i.kx, i64 %.idx.i27.i.i.i.i, i1 false)
  br label %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i71.i.i.i.i

_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i71.i.i.i.i: ; preds = %bb.be, %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i70.i.i.i.i
  %i.kz = getelementptr inbounds i8, ptr %i.ky, i64 %.idx.i27.i.i.i.i ; 2 uses
  %i.la = ptrtoint ptr %i.kx to i64
  %i.lb = sub i64 %i.hv, %i.la
  %i.lc = ashr exact i64 %i.lb, 3                 ; 2 uses
  %.not.us.i72.i.i.i.i = icmp slt i64 %i.lc, %i.ku
  br i1 %.not.us.i72.i.i.i.i, label %._crit_edge.i46.i.i.i.i, label %._crit_edge.i.us.i67.i.i.i.i, !llvm.loop !18

.lr.ph.i.preheader.i30.i.i.i.i:                   ; preds = %.lr.ph.i26.i.i.i.i, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i44.i.i.i.i
  %.sroa.022.057.i31.i.i.i.i = phi ptr [ %i.me, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i44.i.i.i.i ], [ %i.r, %.lr.ph.i26.i.i.i.i ]
  %.056.i32.i.i.i.i = phi ptr [ %i.le, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i44.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.lr.ph.i26.i.i.i.i ] ; 3 uses
  %i.ld = getelementptr inbounds i8, ptr %.056.i32.i.i.i.i, i64 %.idx.i27.i.i.i.i ; 3 uses
  %i.le = getelementptr inbounds i8, ptr %.056.i32.i.i.i.i, i64 %.idx49.i28.i.i.i.i ; 4 uses
  br label %.lr.ph.i.i33.i.i.i.i

.lr.ph.i.i33.i.i.i.i:                             ; preds = %.lr.ph.i.i33.i.i.i.i, %.lr.ph.i.preheader.i30.i.i.i.i
  %.023.i.i34.i.i.i.i = phi ptr [ %.1.i.i41.i.i.i.i, %.lr.ph.i.i33.i.i.i.i ], [ %.056.i32.i.i.i.i, %.lr.ph.i.preheader.i30.i.i.i.i ] ; 2 uses
  %.01622.i.i35.i.i.i.i = phi ptr [ %.117.i.i39.i.i.i.i, %.lr.ph.i.i33.i.i.i.i ], [ %i.ld, %.lr.ph.i.preheader.i30.i.i.i.i ] ; 2 uses
  %.sroa.0.021.i.i36.i.i.i.i = phi ptr [ %i.ln, %.lr.ph.i.i33.i.i.i.i ], [ %.sroa.022.057.i31.i.i.i.i, %.lr.ph.i.preheader.i30.i.i.i.i ] ; 2 uses
  %i.lf = load ptr, ptr %.01622.i.i35.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.lg = load i64, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.lh = getelementptr inbounds i8, ptr %i.lf, i64 %i.lg
  %i.li = load ptr, ptr %.023.i.i34.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.lj = getelementptr inbounds i8, ptr %i.li, i64 %i.lg
  %i.lk = load i64, ptr %i.lh, align 8, !tbaa !130
  %i.ll = load i64, ptr %i.lj, align 8, !tbaa !130
  %i.lm = icmp ult i64 %i.lk, %i.ll               ; 3 uses
  %.sink.i.i37.i.i.i.i = select i1 %i.lm, ptr %i.lf, ptr %i.li
  %.117.idx.i.i38.i.i.i.i = select i1 %i.lm, i64 8, i64 0
  %.117.i.i39.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01622.i.i35.i.i.i.i, i64 %.117.idx.i.i38.i.i.i.i ; 5 uses
  %.1.idx.i.i40.i.i.i.i = select i1 %i.lm, i64 0, i64 8
  %.1.i.i41.i.i.i.i = getelementptr inbounds nuw i8, ptr %.023.i.i34.i.i.i.i, i64 %.1.idx.i.i40.i.i.i.i ; 5 uses
  store ptr %.sink.i.i37.i.i.i.i, ptr %.sroa.0.021.i.i36.i.i.i.i, align 8, !tbaa !191
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i36.i.i.i.i, i64 8 ; 4 uses
  %i.lo = icmp ne ptr %.1.i.i41.i.i.i.i, %i.ld
  %i.lp = icmp ne ptr %.117.i.i39.i.i.i.i, %i.le
  %i.lq = select i1 %i.lo, i1 %i.lp, i1 false
  br i1 %i.lq, label %.lr.ph.i.i33.i.i.i.i, label %._crit_edge.i.loopexit.i42.i.i.i.i, !llvm.loop !19

._crit_edge.i.loopexit.i42.i.i.i.i:               ; preds = %.lr.ph.i.i33.i.i.i.i
  %i.lr = ptrtoint ptr %i.ld to i64
  %i.ls = ptrtoint ptr %.1.i.i41.i.i.i.i to i64
  %i.lt = sub i64 %i.lr, %i.ls                    ; 4 uses
  %i.lu = icmp sgt i64 %i.lt, 8
  br i1 %i.lu, label %bb.bf, label %bb.bg, !prof !237

bb.bf:                                            ; preds = %._crit_edge.i.loopexit.i42.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ln, ptr nonnull align 8 %.1.i.i41.i.i.i.i, i64 %i.lt, i1 false)
  br label %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i43.i.i.i.i

bb.bg:                                            ; preds = %._crit_edge.i.loopexit.i42.i.i.i.i
  %i.lv = icmp eq i64 %i.lt, 8
  br i1 %i.lv, label %bb.bh, label %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i43.i.i.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.lw = load ptr, ptr %.1.i.i41.i.i.i.i, align 8, !tbaa !191
  store ptr %i.lw, ptr %i.ln, align 8, !tbaa !191
  br label %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i43.i.i.i.i

_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i43.i.i.i.i: ; preds = %bb.bh, %bb.bg, %bb.bf
  %i.lx = getelementptr inbounds i8, ptr %i.ln, i64 %i.lt ; 3 uses
  %i.ly = ptrtoint ptr %i.le to i64               ; 2 uses
  %i.lz = ptrtoint ptr %.117.i.i39.i.i.i.i to i64
  %i.ma = sub i64 %i.ly, %i.lz                    ; 4 uses
  %i.mb = icmp sgt i64 %i.ma, 8
  br i1 %i.mb, label %bb.bi, label %bb.bj, !prof !237

bb.bi:                                            ; preds = %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i43.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lx, ptr nonnull align 8 %.117.i.i39.i.i.i.i, i64 %i.ma, i1 false)
  br label %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i44.i.i.i.i

bb.bj:                                            ; preds = %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i43.i.i.i.i
  %i.mc = icmp eq i64 %i.ma, 8
  br i1 %i.mc, label %bb.bk, label %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i44.i.i.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.md = load ptr, ptr %.117.i.i39.i.i.i.i, align 8, !tbaa !191
  store ptr %i.md, ptr %i.lx, align 8, !tbaa !191
  br label %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i44.i.i.i.i

_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i44.i.i.i.i: ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.me = getelementptr inbounds i8, ptr %i.lx, i64 %i.ma ; 2 uses
  %i.mf = sub i64 %i.hv, %i.ly
  %i.mg = ashr exact i64 %i.mf, 3                 ; 2 uses
  %.not.i45.i.i.i.i = icmp slt i64 %i.mg, %i.ku
  br i1 %.not.i45.i.i.i.i, label %._crit_edge.i46.i.i.i.i, label %.lr.ph.i.preheader.i30.i.i.i.i, !llvm.loop !18

._crit_edge.i46.i.i.i.i:                          ; preds = %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i44.i.i.i.i, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i71.i.i.i.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit123.i.i.i.i
  %.0.lcssa.i47.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit123.i.i.i.i ], [ %i.kx, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i71.i.i.i.i ], [ %i.le, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i44.i.i.i.i ] ; 3 uses
  %.sroa.022.0.lcssa.i48.i.i.i.i = phi ptr [ %i.r, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit123.i.i.i.i ], [ %i.kz, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i71.i.i.i.i ], [ %i.me, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i44.i.i.i.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d19start_forINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEEZNS7_L7get_mapIS9_EENS6_IPNS8_IT_EESC_IPNSD_IST_EESaISX_EENSI_ISV_EENSK_ISL_IKSV_SZ_EEEEERNS7_7ContextIST_EEEUlRKSR_E_KNS1_16auto_partitionerEE8run_bodyERSR_:bb.a
  %.sroa.05.0.lcssa.i.i.i.4.i.i.i.i = phi ptr [ %.sroa.0.021.i.i21.ptr.4.i.i.i.i, %bb.cn ], [ %.sroa.0.010.i.i.i.4.i.i.i.i, %.lr.ph.i.i.i.4.i.i.i.i ]
  store ptr %i.rj, ptr %.sroa.05.0.lcssa.i.i.i.4.i.i.i.i, align 8, !tbaa !191
  %.pre.i.i.4.i.i.i.i = load ptr, ptr %.sroa.026.030.i.i.i.i.i, align 8, !tbaa !191
  br label %bb.cs

bb.co:                                            ; preds = %bb.cm
  %i.sc = ptrtoint ptr %.sroa.0.021.i.i21.ptr.4.i.i.i.i to i64
  %i.sd = sub i64 %i.sc, %i.nn                    ; 3 uses
  %i.se = ashr exact i64 %i.sd, 3                 ; 2 uses
  %i.sf = icmp sgt i64 %i.se, 1
  br i1 %i.sf, label %bb.cr, label %bb.cp, !prof !237

bb.cp:                                            ; preds = %bb.co
  %i.sg = icmp eq i64 %i.sd, 8
  br i1 %i.sg, label %bb.cq, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.4.i.i.i.i

bb.cq:                                            ; preds = %bb.cp
  store ptr %i.ri, ptr %.sroa.0.021.i.i21.ptr.4.i.i.i.i, align 8, !tbaa !191
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.4.i.i.i.i

bb.cr:                                            ; preds = %bb.co
  %i.sh = getelementptr inbounds nuw i8, ptr %.sroa.026.030.i.i.i.i.i, i64 48
  %i.si = sub nsw i64 0, %i.se
  %i.sj = getelementptr inbounds [8 x i8], ptr %i.sh, i64 %i.si
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.sj, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.026.030.i.i.i.i.i, i64 %i.sd, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.4.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.4.i.i.i.i: ; preds = %bb.cr, %bb.cq, %bb.cp
  store ptr %i.rj, ptr %.sroa.026.030.i.i.i.i.i, align 8, !tbaa !191
  br label %bb.cs

bb.cs:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.4.i.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SL_.exit.i.i.4.i.i.i.i
  %i.sk = phi ptr [ %i.rj, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.4.i.i.i.i ], [ %.pre.i.i.4.i.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SL_.exit.i.i.4.i.i.i.i ] ; 2 uses
  %.sroa.0.021.i.i21.ptr.5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.026.030.i.i.i.i.i, i64 48 ; 5 uses
  %i.sl = load ptr, ptr %.sroa.0.021.i.i21.ptr.5.i.i.i.i, align 8, !tbaa !191 ; 3 uses
  %i.sm = load i64, ptr %i.a, align 8, !tbaa !42  ; 3 uses
  %i.sn = getelementptr inbounds i8, ptr %i.sl, i64 %i.sm
  %i.so = getelementptr inbounds i8, ptr %i.sk, i64 %i.sm
  %i.sp = load i64, ptr %i.sn, align 8, !tbaa !130 ; 2 uses
  %i.sq = load i64, ptr %i.so, align 8, !tbaa !130
  %i.sr = icmp ult i64 %i.sp, %i.sq
  br i1 %i.sr, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ss = load ptr, ptr %.sroa.0.021.i.i21.ptr.4.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.st = getelementptr inbounds i8, ptr %i.ss, i64 %i.sm
  %i.su = load i64, ptr %i.st, align 8, !tbaa !130
  %i.sv = icmp ult i64 %i.sp, %i.su
  br i1 %i.sv, label %.lr.ph.i.i.i.5.i.i.i.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit.i.i.i.i.i

.lr.ph.i.i.i.5.i.i.i.i:                           ; preds = %bb.ct, %.lr.ph.i.i.i.5.i.i.i.i
  %i.sw = phi ptr [ %i.sz, %.lr.ph.i.i.i.5.i.i.i.i ], [ %i.ss, %bb.ct ]
  %.sroa.0.010.i.i.i.5.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.5.i.i.i.i, %.lr.ph.i.i.i.5.i.i.i.i ], [ %.sroa.0.021.i.i21.ptr.4.i.i.i.i, %bb.ct ] ; 3 uses
  %.sroa.05.09.i.i.i.5.i.i.i.i = phi ptr [ %.sroa.0.010.i.i.i.5.i.i.i.i, %.lr.ph.i.i.i.5.i.i.i.i ], [ %.sroa.0.021.i.i21.ptr.5.i.i.i.i, %bb.ct ]
  store ptr %i.sw, ptr %.sroa.05.09.i.i.i.5.i.i.i.i, align 8, !tbaa !191
  %.sroa.0.0.i.i.i.5.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i.5.i.i.i.i, i64 -8 ; 2 uses
  %i.sx = load i64, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.sy = getelementptr inbounds i8, ptr %i.sl, i64 %i.sx
  %i.sz = load ptr, ptr %.sroa.0.0.i.i.i.5.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.ta = getelementptr inbounds i8, ptr %i.sz, i64 %i.sx
  %i.tb = load i64, ptr %i.sy, align 8, !tbaa !130
  %i.tc = load i64, ptr %i.ta, align 8, !tbaa !130
  %i.td = icmp ult i64 %i.tb, %i.tc
  br i1 %i.td, label %.lr.ph.i.i.i.5.i.i.i.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit.i.i.i.i.i, !llvm.loop !13

bb.cu:                                            ; preds = %bb.cs
  %i.te = ptrtoint ptr %.sroa.0.021.i.i21.ptr.5.i.i.i.i to i64
  %i.tf = sub i64 %i.te, %i.nn                    ; 3 uses
  %i.tg = ashr exact i64 %i.tf, 3                 ; 2 uses
  %i.th = icmp sgt i64 %i.tg, 1
  br i1 %i.th, label %bb.cx, label %bb.cv, !prof !237

bb.cv:                                            ; preds = %bb.cu
  %i.ti = icmp eq i64 %i.tf, 8
  br i1 %i.ti, label %bb.cw, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit.i.i.i.i.i

bb.cw:                                            ; preds = %bb.cv
  store ptr %i.sk, ptr %.sroa.0.021.i.i21.ptr.5.i.i.i.i, align 8, !tbaa !191
  br label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit.i.i.i.i.i

bb.cx:                                            ; preds = %bb.cu
  %i.tj = getelementptr inbounds nuw i8, ptr %.sroa.026.030.i.i.i.i.i, i64 56
  %i.tk = sub nsw i64 0, %i.tg
  %i.tl = getelementptr inbounds [8 x i8], ptr %i.tj, i64 %i.tk
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.tl, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.026.030.i.i.i.i.i, i64 %i.tf, i1 false)
  br label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit.i.i.i.i.i

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.5.i.i.i.i, %bb.cx, %bb.cw, %bb.cv, %bb.ct
  %.sroa.026.030.i.sink.i.i.i.i = phi ptr [ %.sroa.026.030.i.i.i.i.i, %bb.cv ], [ %.sroa.0.021.i.i21.ptr.5.i.i.i.i, %bb.ct ], [ %.sroa.026.030.i.i.i.i.i, %bb.cx ], [ %.sroa.026.030.i.i.i.i.i, %bb.cw ], [ %.sroa.0.010.i.i.i.5.i.i.i.i, %.lr.ph.i.i.i.5.i.i.i.i ]
  store ptr %i.sl, ptr %.sroa.026.030.i.sink.i.i.i.i, align 8, !tbaa !191
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.026.030.i.i.i.i.i, i64 56 ; 3 uses
  %i.tn = ptrtoint ptr %i.tm to i64               ; 3 uses
  %i.to = sub i64 %i.v, %i.tn
  %.not.i23.i.i.i.i = icmp slt i64 %i.to, 56
  br i1 %.not.i23.i.i.i.i, label %._crit_edge.i24.i.i.i.i, label %.lr.ph.i.i20.i.i.i.i, !llvm.loop !14

._crit_edge.i24.i.i.i.i:                          ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit.i.i.i.i.i, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_.exit.i.i.i.i.i
  %.sroa.026.0.lcssa.i.i.i.i.i = phi ptr [ %i.ai, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_.exit.i.i.i.i.i ], [ %i.tm, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit.i.i.i.i.i ] ; 7 uses
  %.lcssa.i.i.i.i.i = phi i64 [ %i.aj, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_.exit.i.i.i.i.i ], [ %i.tn, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit.i.i.i.i.i ]
  %i.tp = icmp eq ptr %.sroa.026.0.lcssa.i.i.i.i.i, %i.t
  br i1 %i.tp, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_.exit.i.i.i.i, label %.preheader.i10.i.i.i.i.i

.preheader.i10.i.i.i.i.i:                         ; preds = %._crit_edge.i24.i.i.i.i
  %.sroa.0.019.i11.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.026.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %i.tq = icmp eq ptr %.sroa.0.019.i11.i.i.i.i.i, %i.t
  br i1 %i.tq, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_.exit.i.i.i.i, label %.lr.ph.i12.i.i.i.i.i

.lr.ph.i12.i.i.i.i.i:                             ; preds = %.preheader.i10.i.i.i.i.i
  %.pre23.i13.i.i.i.i.i = load ptr, ptr %.sroa.026.0.lcssa.i.i.i.i.i, align 8, !tbaa !191
  br label %bb.cy

bb.cy:                                            ; preds = %bb.de, %.lr.ph.i12.i.i.i.i.i
  %i.tr = phi ptr [ %.pre23.i13.i.i.i.i.i, %.lr.ph.i12.i.i.i.i.i ], [ %i.uu, %bb.de ] ; 2 uses
  %.sroa.0.021.i14.i.i.i.i.i = phi ptr [ %.sroa.0.019.i11.i.i.i.i.i, %.lr.ph.i12.i.i.i.i.i ], [ %.sroa.0.0.i19.i.i.i.i.i, %bb.de ] ; 6 uses
  %.pn20.i15.i.i.i.i.i = phi ptr [ %.sroa.026.0.lcssa.i.i.i.i.i, %.lr.ph.i12.i.i.i.i.i ], [ %.sroa.0.021.i14.i.i.i.i.i, %bb.de ] ; 4 uses
  %i.ts = load ptr, ptr %.sroa.0.021.i14.i.i.i.i.i, align 8, !tbaa !191 ; 5 uses
  %i.tt = load i64, ptr %i.a, align 8, !tbaa !42  ; 3 uses
  %i.tu = getelementptr inbounds i8, ptr %i.ts, i64 %i.tt
  %i.tv = getelementptr inbounds i8, ptr %i.tr, i64 %i.tt
  %i.tw = load i64, ptr %i.tu, align 8, !tbaa !130 ; 2 uses
  %i.tx = load i64, ptr %i.tv, align 8, !tbaa !130
  %i.ty = icmp ult i64 %i.tw, %i.tx
  br i1 %i.ty, label %bb.cz, label %bb.dd

bb.cz:                                            ; preds = %bb.cy
  %i.tz = ptrtoint ptr %.sroa.0.021.i14.i.i.i.i.i to i64
  %i.ua = sub i64 %i.tz, %.lcssa.i.i.i.i.i        ; 3 uses
  %i.ub = ashr exact i64 %i.ua, 3                 ; 2 uses
  %i.uc = icmp sgt i64 %i.ub, 1
  br i1 %i.uc, label %bb.da, label %bb.db, !prof !237

bb.da:                                            ; preds = %bb.cz
  %i.ud = getelementptr inbounds nuw i8, ptr %.pn20.i15.i.i.i.i.i, i64 16
  %i.ue = sub nsw i64 0, %i.ub
  %i.uf = getelementptr inbounds [8 x i8], ptr %i.ud, i64 %i.ue
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.uf, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.026.0.lcssa.i.i.i.i.i, i64 %i.ua, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i24.i.i.i.i.i

bb.db:                                            ; preds = %bb.cz
  %i.ug = icmp eq i64 %i.ua, 8
  br i1 %i.ug, label %bb.dc, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i24.i.i.i.i.i

bb.dc:                                            ; preds = %bb.db
  %i.uh = getelementptr inbounds nuw i8, ptr %.pn20.i15.i.i.i.i.i, i64 8
  store ptr %i.tr, ptr %i.uh, align 8, !tbaa !191
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i24.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i24.i.i.i.i.i: ; preds = %bb.dc, %bb.db, %bb.da
  store ptr %i.ts, ptr %.sroa.026.0.lcssa.i.i.i.i.i, align 8, !tbaa !191
  br label %bb.de

bb.dd:                                            ; preds = %bb.cy
  %i.ui = load ptr, ptr %.pn20.i15.i.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.uj = getelementptr inbounds i8, ptr %i.ui, i64 %i.tt
  %i.uk = load i64, ptr %i.uj, align 8, !tbaa !130
  %i.ul = icmp ult i64 %i.tw, %i.uk
  br i1 %i.ul, label %.lr.ph.i.i20.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SL_.exit.i16.i.i.i.i.i

.lr.ph.i.i20.i.i.i.i.i:                           ; preds = %bb.dd, %.lr.ph.i.i20.i.i.i.i.i
  %i.um = phi ptr [ %i.up, %.lr.ph.i.i20.i.i.i.i.i ], [ %i.ui, %bb.dd ]
  %.sroa.0.010.i.i21.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i23.i.i.i.i.i, %.lr.ph.i.i20.i.i.i.i.i ], [ %.pn20.i15.i.i.i.i.i, %bb.dd ] ; 3 uses
  %.sroa.05.09.i.i22.i.i.i.i.i = phi ptr [ %.sroa.0.010.i.i21.i.i.i.i.i, %.lr.ph.i.i20.i.i.i.i.i ], [ %.sroa.0.021.i14.i.i.i.i.i, %bb.dd ]
  store ptr %i.um, ptr %.sroa.05.09.i.i22.i.i.i.i.i, align 8, !tbaa !191
  %.sroa.0.0.i.i23.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i21.i.i.i.i.i, i64 -8 ; 2 uses
  %i.un = load i64, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.uo = getelementptr inbounds i8, ptr %i.ts, i64 %i.un
  %i.up = load ptr, ptr %.sroa.0.0.i.i23.i.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.uq = getelementptr inbounds i8, ptr %i.up, i64 %i.un
  %i.ur = load i64, ptr %i.uo, align 8, !tbaa !130
  %i.us = load i64, ptr %i.uq, align 8, !tbaa !130
  %i.ut = icmp ult i64 %i.ur, %i.us
  br i1 %i.ut, label %.lr.ph.i.i20.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SL_.exit.i16.i.i.i.i.i, !llvm.loop !13

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SL_.exit.i16.i.i.i.i.i: ; preds = %.lr.ph.i.i20.i.i.i.i.i, %bb.dd
  %.sroa.05.0.lcssa.i.i17.i.i.i.i.i = phi ptr [ %.sroa.0.021.i14.i.i.i.i.i, %bb.dd ], [ %.sroa.0.010.i.i21.i.i.i.i.i, %.lr.ph.i.i20.i.i.i.i.i ]
  store ptr %i.ts, ptr %.sroa.05.0.lcssa.i.i17.i.i.i.i.i, align 8, !tbaa !191
  %.pre.i18.i.i.i.i.i = load ptr, ptr %.sroa.026.0.lcssa.i.i.i.i.i, align 8, !tbaa !191
  br label %bb.de

bb.de:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SL_.exit.i16.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i24.i.i.i.i.i
  %i.uu = phi ptr [ %i.ts, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i24.i.i.i.i.i ], [ %.pre.i18.i.i.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SL_.exit.i16.i.i.i.i.i ]
  %.sroa.0.0.i19.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i14.i.i.i.i.i, i64 8 ; 2 uses
  %i.uv = icmp eq ptr %.sroa.0.0.i19.i.i.i.i.i, %i.t
  br i1 %i.uv, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_.exit.i.i.i.i, label %bb.cy, !llvm.loop !15

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_.exit.i.i.i.i: ; preds = %bb.de, %.preheader.i10.i.i.i.i.i, %._crit_edge.i24.i.i.i.i
  %i.uw = icmp sgt i64 %i.nl, 7
  br i1 %i.uw, label %.lr.ph.i13.i.preheader.i.i.i.i, label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SJ_SL_T1_.exit.i.i.i.i

.lr.ph.i13.i.preheader.i.i.i.i:                   ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_.exit.i.i.i.i
  %i.ux = ptrtoint ptr %i.nm to i64               ; 3 uses
  br label %.lr.ph.i13.i.i.i.i.i

.lr.ph.i13.i.i.i.i.i:                             ; preds = %_ZSt17__merge_sort_loopIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit.i.i.i.i, %.lr.ph.i13.i.preheader.i.i.i.i
  %.022.i14.i.i.i.i.i = phi i64 [ %i.xw, %_ZSt17__merge_sort_loopIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit.i.i.i.i ], [ 7, %.lr.ph.i13.i.preheader.i.i.i.i ] ; 8 uses
  %i.uy = shl nsw i64 %.022.i14.i.i.i.i.i, 1      ; 6 uses
  %.not60.i.i.i.i.i = icmp slt i64 %i.nl, %i.uy
  br i1 %.not60.i.i.i.i.i, label %._crit_edge.i15.i.i.i.i, label %.lr.ph.i9.i.i.i.i

.lr.ph.i9.i.i.i.i:                                ; preds = %.lr.ph.i13.i.i.i.i.i
  %.idx.i10.i.i.i.i = shl i64 %.022.i14.i.i.i.i.i, 3 ; 12 uses
  %.idx55.i.i.i.i.i = shl i64 %.022.i14.i.i.i.i.i, 4 ; 2 uses
  %i.uz = icmp eq i64 %.idx.i10.i.i.i.i, %.idx55.i.i.i.i.i
  br i1 %i.uz, label %.critedge.i.us.preheader.i.i.i.i.i, label %.lr.ph.i.preheader.i11.i.i.i.i

.critedge.i.us.preheader.i.i.i.i.i:               ; preds = %.lr.ph.i9.i.i.i.i
  %i.va = icmp sgt i64 %.idx.i10.i.i.i.i, 8
  br i1 %i.va, label %.critedge.i.us.i.us.i.i.i.i, label %.critedge.i.us.preheader.i.split.i.i.i.i, !prof !237

.critedge.i.us.i.us.i.i.i.i:                      ; preds = %.critedge.i.us.preheader.i.i.i.i.i, %.critedge.i.us.i.us.i.i.i.i
  %.062.us.i.us.i.i.i.i = phi ptr [ %5, %.critedge.i.us.i.us.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.critedge.i.us.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.044.061.us.i.us.i.i.i.i = phi ptr [ %i.vb, %.critedge.i.us.i.us.i.i.i.i ], [ %i.ai, %.critedge.i.us.preheader.i.i.i.i.i ] ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.044.061.us.i.us.i.i.i.i, i64 %.idx.i10.i.i.i.i ; 4 uses
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.062.us.i.us.i.i.i.i, ptr align 8 %.sroa.044.061.us.i.us.i.i.i.i, i64 %.idx.i10.i.i.i.i, i1 false)
  %i.vc = getelementptr inbounds nuw i8, ptr %.062.us.i.us.i.i.i.i, i64 %.idx.i10.i.i.i.i ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.vc, ptr nonnull align 8 %i.vb, i64 %.idx.i10.i.i.i.i, i1 false)
  %5 = getelementptr inbounds nuw i8, ptr %i.vc, i64 %.idx.i10.i.i.i.i ; 2 uses
  %i.vd = ptrtoint ptr %i.vb to i64
  %i.ve = sub i64 %i.v, %i.vd
  %i.vf = ashr exact i64 %i.ve, 3                 ; 2 uses
  %.not.us.i18.us.i.i.i.i = icmp slt i64 %i.vf, %i.uy
  br i1 %.not.us.i18.us.i.i.i.i, label %._crit_edge.i15.i.i.i.i, label %.critedge.i.us.i.us.i.i.i.i, !llvm.loop !16

.critedge.i.us.preheader.i.split.i.i.i.i:         ; preds = %.critedge.i.us.preheader.i.i.i.i.i
  %i.vg = icmp eq i64 %.idx.i10.i.i.i.i, 8
  br i1 %i.vg, label %.critedge.i.us.i.us68.preheader.i.i.i.i, label %.critedge.i.us.i.i.i.i.i

.critedge.i.us.i.us68.preheader.i.i.i.i:          ; preds = %.critedge.i.us.preheader.i.split.i.i.i.i
  %.pre146.i.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !191
  br label %.critedge.i.us.i.us68.i.i.i.i

.critedge.i.us.i.us68.i.i.i.i:                    ; preds = %.critedge.i.us.i.us68.i.i.i.i, %.critedge.i.us.i.us68.preheader.i.i.i.i
  %i.vh = phi ptr [ %i.vk, %.critedge.i.us.i.us68.i.i.i.i ], [ %.pre146.i.i.i.i, %.critedge.i.us.i.us68.preheader.i.i.i.i ]
  %.062.us.i.us69.i.i.i.i = phi ptr [ %6, %.critedge.i.us.i.us68.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.critedge.i.us.i.us68.preheader.i.i.i.i ] ; 3 uses
  %.sroa.044.061.us.i.us70.i.i.i.i = phi ptr [ %i.vi, %.critedge.i.us.i.us68.i.i.i.i ], [ %i.ai, %.critedge.i.us.i.us68.preheader.i.i.i.i ]
  %i.vi = getelementptr inbounds nuw i8, ptr %.sroa.044.061.us.i.us70.i.i.i.i, i64 8 ; 4 uses
  store ptr %i.vh, ptr %.062.us.i.us69.i.i.i.i, align 8, !tbaa !191
  %i.vj = getelementptr inbounds nuw i8, ptr %.062.us.i.us69.i.i.i.i, i64 8
  %i.vk = load ptr, ptr %i.vi, align 8, !tbaa !191 ; 2 uses
  store ptr %i.vk, ptr %i.vj, align 8, !tbaa !191
  %6 = getelementptr inbounds nuw i8, ptr %.062.us.i.us69.i.i.i.i, i64 16 ; 2 uses
  %i.vl = ptrtoint ptr %i.vi to i64
  %i.vm = sub i64 %i.v, %i.vl
  %i.vn = ashr exact i64 %i.vm, 3                 ; 2 uses
  %.not.us.i18.us72.i.i.i.i = icmp slt i64 %i.vn, %i.uy
  br i1 %.not.us.i18.us72.i.i.i.i, label %._crit_edge.i15.i.i.i.i, label %.critedge.i.us.i.us68.i.i.i.i, !llvm.loop !16

.critedge.i.us.i.i.i.i.i:                         ; preds = %.critedge.i.us.preheader.i.split.i.i.i.i, %.critedge.i.us.i.i.i.i.i
  %.062.us.i.i.i.i.i = phi ptr [ %i.vp, %.critedge.i.us.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.critedge.i.us.preheader.i.split.i.i.i.i ]
  %.sroa.044.061.us.i.i.i.i.i = phi ptr [ %7, %.critedge.i.us.i.i.i.i.i ], [ %i.ai, %.critedge.i.us.preheader.i.split.i.i.i.i ]
  %7 = getelementptr inbounds i8, ptr %.sroa.044.061.us.i.i.i.i.i, i64 %.idx.i10.i.i.i.i ; 3 uses
  %i.vo = getelementptr inbounds i8, ptr %.062.us.i.i.i.i.i, i64 %.idx.i10.i.i.i.i
  %i.vp = getelementptr inbounds i8, ptr %i.vo, i64 %.idx.i10.i.i.i.i ; 2 uses
  %i.vq = ptrtoint ptr %7 to i64
  %i.vr = sub i64 %i.v, %i.vq
  %i.vs = ashr exact i64 %i.vr, 3                 ; 2 uses
  %.not.us.i18.i.i.i.i = icmp slt i64 %i.vs, %i.uy
  br i1 %.not.us.i18.i.i.i.i, label %._crit_edge.i15.i.i.i.i, label %.critedge.i.us.i.i.i.i.i, !llvm.loop !16

.lr.ph.i.preheader.i11.i.i.i.i:                   ; preds = %.lr.ph.i9.i.i.i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i
  %.062.i.i.i.i.i = phi ptr [ %i.wt, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.lr.ph.i9.i.i.i.i ]
  %.sroa.044.061.i.i.i.i.i = phi ptr [ %i.vu, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i ], [ %i.ai, %.lr.ph.i9.i.i.i.i ] ; 3 uses
  %i.vt = getelementptr inbounds i8, ptr %.sroa.044.061.i.i.i.i.i, i64 %.idx.i10.i.i.i.i ; 3 uses
  %i.vu = getelementptr inbounds i8, ptr %.sroa.044.061.i.i.i.i.i, i64 %.idx55.i.i.i.i.i ; 4 uses
  br label %.lr.ph.i.i12.i.i.i.i

.lr.ph.i.i12.i.i.i.i:                             ; preds = %.lr.ph.i.i12.i.i.i.i, %.lr.ph.i.preheader.i11.i.i.i.i
  %.020.i.i.i.i.i.i = phi ptr [ %i.wd, %.lr.ph.i.i12.i.i.i.i ], [ %.062.i.i.i.i.i, %.lr.ph.i.preheader.i11.i.i.i.i ] ; 2 uses
  %.sroa.014.019.i.i.i.i.i.i = phi ptr [ %.sroa.014.1.i.i.i.i.i.i, %.lr.ph.i.i12.i.i.i.i ], [ %.sroa.044.061.i.i.i.i.i, %.lr.ph.i.preheader.i11.i.i.i.i ] ; 2 uses
  %.sroa.010.018.i.i.i.i.i.i = phi ptr [ %.sroa.010.1.i.i.i.i.i.i, %.lr.ph.i.i12.i.i.i.i ], [ %i.vt, %.lr.ph.i.preheader.i11.i.i.i.i ] ; 2 uses
  %i.vv = load ptr, ptr %.sroa.010.018.i.i.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.vw = load i64, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.vx = getelementptr inbounds i8, ptr %i.vv, i64 %i.vw
  %i.vy = load ptr, ptr %.sroa.014.019.i.i.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.vz = getelementptr inbounds i8, ptr %i.vy, i64 %i.vw
  %i.wa = load i64, ptr %i.vx, align 8, !tbaa !130
  %i.wb = load i64, ptr %i.vz, align 8, !tbaa !130
  %i.wc = icmp ult i64 %i.wa, %i.wb               ; 3 uses
  %.sink.i.i13.i.i.i.i = select i1 %i.wc, ptr %i.vv, ptr %i.vy
  %.sroa.010.1.idx.i.i.i.i.i.i = select i1 %i.wc, i64 8, i64 0
  %.sroa.010.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i.i.i.i.i, i64 %.sroa.010.1.idx.i.i.i.i.i.i ; 5 uses
  %.sroa.014.1.idx.i.i.i.i.i.i = select i1 %i.wc, i64 0, i64 8
  %.sroa.014.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i.i.i.i.i.i, i64 %.sroa.014.1.idx.i.i.i.i.i.i ; 5 uses
  store ptr %.sink.i.i13.i.i.i.i, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !191
  %i.wd = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i.i, i64 8 ; 4 uses
  %i.we = icmp eq ptr %.sroa.014.1.i.i.i.i.i.i, %i.vt
  %i.wf = icmp eq ptr %.sroa.010.1.i.i.i.i.i.i, %i.vu
  %or.cond.i.i.i.i.i.i = select i1 %i.we, i1 true, i1 %i.wf
  br i1 %or.cond.i.i.i.i.i.i, label %.critedge.i.loopexit.i.i.i.i.i, label %.lr.ph.i.i12.i.i.i.i, !llvm.loop !17

.critedge.i.loopexit.i.i.i.i.i:                   ; preds = %.lr.ph.i.i12.i.i.i.i
  %i.wg = ptrtoint ptr %i.vt to i64
  %i.wh = ptrtoint ptr %.sroa.014.1.i.i.i.i.i.i to i64
  %i.wi = sub i64 %i.wg, %i.wh                    ; 4 uses
  %i.wj = icmp sgt i64 %i.wi, 8
  br i1 %i.wj, label %bb.df, label %bb.dg, !prof !237

bb.df:                                            ; preds = %.critedge.i.loopexit.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.wd, ptr nonnull align 8 %.sroa.014.1.i.i.i.i.i.i, i64 %i.wi, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i.i.i.i.i

bb.dg:                                            ; preds = %.critedge.i.loopexit.i.i.i.i.i
  %i.wk = icmp eq i64 %i.wi, 8
  br i1 %i.wk, label %bb.dh, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i.i.i.i.i

bb.dh:                                            ; preds = %bb.dg
  %i.wl = load ptr, ptr %.sroa.014.1.i.i.i.i.i.i, align 8, !tbaa !191
  store ptr %i.wl, ptr %i.wd, align 8, !tbaa !191
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i.i.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i.i.i.i.i: ; preds = %bb.dh, %bb.dg, %bb.df
  %i.wm = getelementptr inbounds i8, ptr %i.wd, i64 %i.wi ; 3 uses
  %i.wn = ptrtoint ptr %i.vu to i64               ; 2 uses
  %i.wo = ptrtoint ptr %.sroa.010.1.i.i.i.i.i.i to i64
  %i.wp = sub i64 %i.wn, %i.wo                    ; 4 uses
  %i.wq = icmp sgt i64 %i.wp, 8
  br i1 %i.wq, label %bb.di, label %bb.dj, !prof !237

bb.di:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.wm, ptr nonnull align 8 %.sroa.010.1.i.i.i.i.i.i, i64 %i.wp, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i

bb.dj:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i.i.i.i.i
  %i.wr = icmp eq i64 %i.wp, 8
  br i1 %i.wr, label %bb.dk, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i

bb.dk:                                            ; preds = %bb.dj
  %i.ws = load ptr, ptr %.sroa.010.1.i.i.i.i.i.i, align 8, !tbaa !191
  store ptr %i.ws, ptr %i.wm, align 8, !tbaa !191
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i: ; preds = %bb.dk, %bb.dj, %bb.di
  %i.wt = getelementptr inbounds i8, ptr %i.wm, i64 %i.wp ; 2 uses
  %i.wu = sub i64 %i.v, %i.wn
  %i.wv = ashr exact i64 %i.wu, 3                 ; 2 uses
  %.not.i14.i.i.i.i = icmp slt i64 %i.wv, %i.uy
  br i1 %.not.i14.i.i.i.i, label %._crit_edge.i15.i.i.i.i, label %.lr.ph.i.preheader.i11.i.i.i.i, !llvm.loop !16

._crit_edge.i15.i.i.i.i:                          ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i, %.critedge.i.us.i.i.i.i.i, %.critedge.i.us.i.us68.i.i.i.i, %.critedge.i.us.i.us.i.i.i.i, %.lr.ph.i13.i.i.i.i.i
  %.sroa.044.0.lcssa.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i13.i.i.i.i.i ], [ %i.vb, %.critedge.i.us.i.us.i.i.i.i ], [ %i.vi, %.critedge.i.us.i.us68.i.i.i.i ], [ %7, %.critedge.i.us.i.i.i.i.i ], [ %i.vu, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i16.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %.lr.ph.i13.i.i.i.i.i ], [ %5, %.critedge.i.us.i.us.i.i.i.i ], [ %6, %.critedge.i.us.i.us68.i.i.i.i ], [ %i.vp, %.critedge.i.us.i.i.i.i.i ], [ %i.wt, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i ] ; 2 uses
  %.lcssa58.i.i.i.i.i = phi i64 [ %i.nl, %.lr.ph.i13.i.i.i.i.i ], [ %i.vf, %.critedge.i.us.i.us.i.i.i.i ], [ %i.vn, %.critedge.i.us.i.us68.i.i.i.i ], [ %i.vs, %.critedge.i.us.i.i.i.i.i ], [ %i.wv, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i ]
  %.sroa.speculated.i17.i.i.i.i = call i64 @llvm.smin.i64(i64 %.022.i14.i.i.i.i.i, i64 %.lcssa58.i.i.i.i.i) ; 2 uses
  %.idx56.i.i.i.i.i = shl nsw i64 %.sroa.speculated.i17.i.i.i.i, 3
  %i.ww = getelementptr inbounds i8, ptr %.sroa.044.0.lcssa.i.i.i.i.i, i64 %.idx56.i.i.i.i.i ; 5 uses
  %i.wx = icmp eq i64 %.sroa.speculated.i17.i.i.i.i, 0
  %i.wy = icmp eq ptr %i.ww, %i.t
  %or.cond17.i16.i.i.i.i.i = select i1 %i.wx, i1 true, i1 %i.wy
  br i1 %or.cond17.i16.i.i.i.i.i, label %.critedge.i27.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i:                             ; preds = %._crit_edge.i15.i.i.i.i, %.lr.ph.i17.i.i.i.i.i
  %.020.i18.i.i.i.i.i = phi ptr [ %i.xh, %.lr.ph.i17.i.i.i.i.i ], [ %.0.lcssa.i16.i.i.i.i, %._crit_edge.i15.i.i.i.i ] ; 2 uses
  %.sroa.014.019.i19.i.i.i.i.i = phi ptr [ %.sroa.014.1.i25.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i ], [ %.sroa.044.0.lcssa.i.i.i.i.i, %._crit_edge.i15.i.i.i.i ] ; 2 uses
  %.sroa.010.018.i20.i.i.i.i.i = phi ptr [ %.sroa.010.1.i23.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i ], [ %i.ww, %._crit_edge.i15.i.i.i.i ] ; 2 uses
  %i.wz = load ptr, ptr %.sroa.010.018.i20.i.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.xa = load i64, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.xb = getelementptr inbounds i8, ptr %i.wz, i64 %i.xa
  %i.xc = load ptr, ptr %.sroa.014.019.i19.i.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.xd = getelementptr inbounds i8, ptr %i.xc, i64 %i.xa
  %i.xe = load i64, ptr %i.xb, align 8, !tbaa !130
  %i.xf = load i64, ptr %i.xd, align 8, !tbaa !130
  %i.xg = icmp ult i64 %i.xe, %i.xf               ; 3 uses
  %.sink.i21.i.i.i.i.i = select i1 %i.xg, ptr %i.wz, ptr %i.xc
  %.sroa.010.1.idx.i22.i.i.i.i.i = select i1 %i.xg, i64 8, i64 0
  %.sroa.010.1.i23.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i20.i.i.i.i.i, i64 %.sroa.010.1.idx.i22.i.i.i.i.i ; 3 uses
  %.sroa.014.1.idx.i24.i.i.i.i.i = select i1 %i.xg, i64 0, i64 8
  %.sroa.014.1.i25.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i19.i.i.i.i.i, i64 %.sroa.014.1.idx.i24.i.i.i.i.i ; 3 uses
  store ptr %.sink.i21.i.i.i.i.i, ptr %.020.i18.i.i.i.i.i, align 8, !tbaa !191
  %i.xh = getelementptr inbounds nuw i8, ptr %.020.i18.i.i.i.i.i, i64 8 ; 2 uses
  %i.xi = icmp eq ptr %.sroa.014.1.i25.i.i.i.i.i, %i.ww
  %i.xj = icmp eq ptr %.sroa.010.1.i23.i.i.i.i.i, %i.t
  %or.cond.i26.i.i.i.i.i = select i1 %i.xi, i1 true, i1 %i.xj
  br i1 %or.cond.i26.i.i.i.i.i, label %.critedge.i27.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i, !llvm.loop !17

.critedge.i27.i.i.i.i.i:                          ; preds = %.lr.ph.i17.i.i.i.i.i, %._crit_edge.i15.i.i.i.i
  %.sroa.010.0.lcssa.i28.i.i.i.i.i = phi ptr [ %i.ww, %._crit_edge.i15.i.i.i.i ], [ %.sroa.010.1.i23.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i ] ; 3 uses
  %.sroa.014.0.lcssa.i29.i.i.i.i.i = phi ptr [ %.sroa.044.0.lcssa.i.i.i.i.i, %._crit_edge.i15.i.i.i.i ], [ %.sroa.014.1.i25.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i30.i.i.i.i.i = phi ptr [ %.0.lcssa.i16.i.i.i.i, %._crit_edge.i15.i.i.i.i ], [ %i.xh, %.lr.ph.i17.i.i.i.i.i ] ; 3 uses
  %i.xk = ptrtoint ptr %i.ww to i64
  %i.xl = ptrtoint ptr %.sroa.014.0.lcssa.i29.i.i.i.i.i to i64
  %i.xm = sub i64 %i.xk, %i.xl                    ; 4 uses
  %i.xn = icmp sgt i64 %i.xm, 8
  br i1 %i.xn, label %bb.dl, label %bb.dm, !prof !237

bb.dl:                                            ; preds = %.critedge.i27.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i30.i.i.i.i.i, ptr align 8 %.sroa.014.0.lcssa.i29.i.i.i.i.i, i64 %i.xm, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31.i.i.i.i.i

bb.dm:                                            ; preds = %.critedge.i27.i.i.i.i.i
  %i.xo = icmp eq i64 %i.xm, 8
  br i1 %i.xo, label %bb.dn, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31.i.i.i.i.i

bb.dn:                                            ; preds = %bb.dm
  %i.xp = load ptr, ptr %.sroa.014.0.lcssa.i29.i.i.i.i.i, align 8, !tbaa !191
  store ptr %i.xp, ptr %.0.lcssa.i30.i.i.i.i.i, align 8, !tbaa !191
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31.i.i.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31.i.i.i.i.i: ; preds = %bb.dn, %bb.dm, %bb.dl
  %i.xq = getelementptr inbounds i8, ptr %.0.lcssa.i30.i.i.i.i.i, i64 %i.xm ; 2 uses
  %i.xr = ptrtoint ptr %.sroa.010.0.lcssa.i28.i.i.i.i.i to i64
  %i.xs = sub i64 %i.v, %i.xr                     ; 3 uses
  %i.xt = icmp sgt i64 %i.xs, 8
  br i1 %i.xt, label %bb.do, label %bb.dp, !prof !237

bb.do:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.xq, ptr align 8 %.sroa.010.0.lcssa.i28.i.i.i.i.i, i64 %i.xs, i1 false)
  br label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit.i.i.i.i

bb.dp:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31.i.i.i.i.i
  %i.xu = icmp eq i64 %i.xs, 8
  br i1 %i.xu, label %bb.dq, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit.i.i.i.i

bb.dq:                                            ; preds = %bb.dp
  %i.xv = load ptr, ptr %.sroa.010.0.lcssa.i28.i.i.i.i.i, align 8, !tbaa !191
  store ptr %i.xv, ptr %i.xq, align 8, !tbaa !191
  br label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit.i.i.i.i

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit.i.i.i.i: ; preds = %bb.dq, %bb.dp, %bb.do
  %i.xw = shl nsw i64 %.022.i14.i.i.i.i.i, 2      ; 5 uses
  %.not55.i.i.i.i.i = icmp slt i64 %i.nl, %i.xw
  br i1 %.not55.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i3.i.i.i.i

.lr.ph.i3.i.i.i.i:                                ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit.i.i.i.i
  %.idx.i.i.i.i.i = shl i64 %.022.i14.i.i.i.i.i, 4 ; 8 uses
  %.idx49.i.i.i.i.i = shl nsw i64 %.022.i14.i.i.i.i.i, 5 ; 2 uses
  %.not50.i.i.i.i.i = icmp eq i64 %.idx.i.i.i.i.i, %.idx49.i.i.i.i.i
  br i1 %.not50.i.i.i.i.i, label %._crit_edge.i.us.preheader.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i

._crit_edge.i.us.preheader.i.i.i.i.i:             ; preds = %.lr.ph.i3.i.i.i.i
  %i.xx = icmp sgt i64 %.022.i14.i.i.i.i.i, 0
  %i.xy = icmp sgt i64 %.idx.i.i.i.i.i, 8
  br label %._crit_edge.i.us.i.i.i.i.i

._crit_edge.i.us.i.i.i.i.i:                       ; preds = %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i.i.i.i.i, %._crit_edge.i.us.preheader.i.i.i.i.i
  %.sroa.022.057.us.i.i.i.i.i = phi ptr [ %i.yb, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i.i.i.i.i ], [ %i.ai, %._crit_edge.i.us.preheader.i.i.i.i.i ] ; 2 uses
  %.056.us.i.i.i.i.i = phi ptr [ %i.xz, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %._crit_edge.i.us.preheader.i.i.i.i.i ] ; 2 uses
  %i.xz = getelementptr inbounds i8, ptr %.056.us.i.i.i.i.i, i64 %.idx.i.i.i.i.i ; 4 uses
  br i1 %i.xx, label %bb.dr, label %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i.i.i.i.i, !prof !237

bb.dr:                                            ; preds = %._crit_edge.i.us.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.022.057.us.i.i.i.i.i, ptr align 8 %.056.us.i.i.i.i.i, i64 %.idx.i.i.i.i.i, i1 false)
  br label %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i.i.i.i.i

_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i.i.i.i.i: ; preds = %bb.dr, %._crit_edge.i.us.i.i.i.i.i
  %i.ya = getelementptr inbounds i8, ptr %.sroa.022.057.us.i.i.i.i.i, i64 %.idx.i.i.i.i.i ; 2 uses
  br i1 %i.xy, label %bb.ds, label %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i.i.i.i.i, !prof !238

bb.ds:                                            ; preds = %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ya, ptr nonnull align 8 %i.xz, i64 %.idx.i.i.i.i.i, i1 false)
  br label %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i.i.i.i.i

_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i.i.i.i.i: ; preds = %bb.ds, %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i.i.i.i.i
  %i.yb = getelementptr inbounds i8, ptr %i.ya, i64 %.idx.i.i.i.i.i ; 2 uses
  %i.yc = ptrtoint ptr %i.xz to i64
  %i.yd = sub i64 %i.ux, %i.yc
  %i.ye = ashr exact i64 %i.yd, 3                 ; 2 uses
  %.not.us.i.i.i.i.i = icmp slt i64 %i.ye, %i.xw
  br i1 %.not.us.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %._crit_edge.i.us.i.i.i.i.i, !llvm.loop !18

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %.lr.ph.i3.i.i.i.i, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i
  %.sroa.022.057.i.i.i.i.i = phi ptr [ %i.zg, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i ], [ %i.ai, %.lr.ph.i3.i.i.i.i ]
  %.056.i.i.i.i.i = phi ptr [ %i.yg, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.lr.ph.i3.i.i.i.i ] ; 3 uses
  %i.yf = getelementptr inbounds i8, ptr %.056.i.i.i.i.i, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.yg = getelementptr inbounds i8, ptr %.056.i.i.i.i.i, i64 %.idx49.i.i.i.i.i ; 4 uses
  br label %.lr.ph.i.i4.i.i.i.i

.lr.ph.i.i4.i.i.i.i:                              ; preds = %.lr.ph.i.i4.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.023.i.i.i.i.i.i = phi ptr [ %.1.i.i7.i.i.i.i, %.lr.ph.i.i4.i.i.i.i ], [ %.056.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %.01622.i.i.i.i.i.i = phi ptr [ %.117.i.i.i.i.i.i, %.lr.ph.i.i4.i.i.i.i ], [ %i.yf, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.0.021.i.i.i.i.i.i = phi ptr [ %i.yp, %.lr.ph.i.i4.i.i.i.i ], [ %.sroa.022.057.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.yh = load ptr, ptr %.01622.i.i.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.yi = load i64, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.yj = getelementptr inbounds i8, ptr %i.yh, i64 %i.yi
  %i.yk = load ptr, ptr %.023.i.i.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.yl = getelementptr inbounds i8, ptr %i.yk, i64 %i.yi
  %i.ym = load i64, ptr %i.yj, align 8, !tbaa !130
  %i.yn = load i64, ptr %i.yl, align 8, !tbaa !130
  %i.yo = icmp ult i64 %i.ym, %i.yn               ; 3 uses
  %.sink.i.i5.i.i.i.i = select i1 %i.yo, ptr %i.yh, ptr %i.yk
  %.117.idx.i.i.i.i.i.i = select i1 %i.yo, i64 8, i64 0
  %.117.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01622.i.i.i.i.i.i, i64 %.117.idx.i.i.i.i.i.i ; 5 uses
  %.1.idx.i.i6.i.i.i.i = select i1 %i.yo, i64 0, i64 8
  %.1.i.i7.i.i.i.i = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i.i.i, i64 %.1.idx.i.i6.i.i.i.i ; 5 uses
  store ptr %.sink.i.i5.i.i.i.i, ptr %.sroa.0.021.i.i.i.i.i.i, align 8, !tbaa !191
  %i.yp = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i.i.i.i, i64 8 ; 4 uses
  %i.yq = icmp ne ptr %.1.i.i7.i.i.i.i, %i.yf
  %i.yr = icmp ne ptr %.117.i.i.i.i.i.i, %i.yg
  %i.ys = select i1 %i.yq, i1 %i.yr, i1 false
  br i1 %i.ys, label %.lr.ph.i.i4.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i, !llvm.loop !19

._crit_edge.i.loopexit.i.i.i.i.i:                 ; preds = %.lr.ph.i.i4.i.i.i.i
  %i.yt = ptrtoint ptr %i.yf to i64
  %i.yu = ptrtoint ptr %.1.i.i7.i.i.i.i to i64
  %i.yv = sub i64 %i.yt, %i.yu                    ; 4 uses
  %i.yw = icmp sgt i64 %i.yv, 8
  br i1 %i.yw, label %bb.dt, label %bb.du, !prof !237

bb.dt:                                            ; preds = %._crit_edge.i.loopexit.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yp, ptr nonnull align 8 %.1.i.i7.i.i.i.i, i64 %i.yv, i1 false)
  br label %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i.i.i.i.i

bb.du:                                            ; preds = %._crit_edge.i.loopexit.i.i.i.i.i
  %i.yx = icmp eq i64 %i.yv, 8
  br i1 %i.yx, label %bb.dv, label %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i.i.i.i.i

bb.dv:                                            ; preds = %bb.du
  %i.yy = load ptr, ptr %.1.i.i7.i.i.i.i, align 8, !tbaa !191
  store ptr %i.yy, ptr %i.yp, align 8, !tbaa !191
  br label %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i.i.i.i.i

_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i.i.i.i.i: ; preds = %bb.dv, %bb.du, %bb.dt
  %i.yz = getelementptr inbounds i8, ptr %i.yp, i64 %i.yv ; 3 uses
  %i.za = ptrtoint ptr %i.yg to i64               ; 2 uses
  %i.zb = ptrtoint ptr %.117.i.i.i.i.i.i to i64
  %i.zc = sub i64 %i.za, %i.zb                    ; 4 uses
  %i.zd = icmp sgt i64 %i.zc, 8
  br i1 %i.zd, label %bb.dw, label %bb.dx, !prof !237

bb.dw:                                            ; preds = %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yz, ptr nonnull align 8 %.117.i.i.i.i.i.i, i64 %i.zc, i1 false)
  br label %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i

bb.dx:                                            ; preds = %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i.i.i.i.i
  %i.ze = icmp eq i64 %i.zc, 8
  br i1 %i.ze, label %bb.dy, label %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i

bb.dy:                                            ; preds = %bb.dx
  %i.zf = load ptr, ptr %.117.i.i.i.i.i.i, align 8, !tbaa !191
  store ptr %i.zf, ptr %i.yz, align 8, !tbaa !191
  br label %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i

_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i: ; preds = %bb.dy, %bb.dx, %bb.dw
  %i.zg = getelementptr inbounds i8, ptr %i.yz, i64 %i.zc ; 2 uses
  %i.zh = sub i64 %i.ux, %i.za
  %i.zi = ashr exact i64 %i.zh, 3                 ; 2 uses
  %.not.i8.i.i.i.i = icmp slt i64 %i.zi, %i.xw
  br i1 %.not.i8.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i, !llvm.loop !18

._crit_edge.i.i.i.i.i:                            ; preds = %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i.i.i.i.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit.i.i.i.i ], [ %i.xz, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i.i.i.i.i ], [ %i.yg, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.022.0.lcssa.i.i.i.i.i = phi ptr [ %i.ai, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit.i.i.i.i ], [ %i.yb, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i.i.i.i.i ], [ %i.zg, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_:bb.a
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = sub i64 %i.a, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not.us = icmp slt i64 %i.h, %2
  br i1 %.not.us, label %._crit_edge, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.us, !llvm.loop !14

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit
  %i.i = phi i64 [ %i.ap, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit ], [ %i.b, %.lr.ph ]
  %.sroa.026.030 = phi ptr [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit ], [ %0, %.lr.ph ] ; 7 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.026.030, i64 %.idx ; 4 uses
  %.sroa.0.019.i = getelementptr inbounds nuw i8, ptr %.sroa.026.030, i64 8
  %.pre23.i = load ptr, ptr %.sroa.026.030, align 8, !tbaa !191
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i
  %i.k = phi ptr [ %.pre23.i, %.lr.ph.i ], [ %i.an, %bb.h ] ; 2 uses
  %.sroa.0.021.i = phi ptr [ %.sroa.0.019.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.h ] ; 6 uses
  %.pn20.i = phi ptr [ %.sroa.026.030, %.lr.ph.i ], [ %.sroa.0.021.i, %bb.h ] ; 4 uses
  %i.l = load ptr, ptr %.sroa.0.021.i, align 8, !tbaa !191 ; 5 uses
  %i.m = load i64, ptr %4, align 8, !tbaa !42     ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.m
  %i.p = load i64, ptr %i.n, align 8, !tbaa !130  ; 2 uses
  %i.q = load i64, ptr %i.o, align 8, !tbaa !130
  %i.r = icmp ult i64 %i.p, %i.q
  br i1 %i.r, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.s = ptrtoint ptr %.sroa.0.021.i to i64
  %i.t = sub i64 %i.s, %i.i                       ; 3 uses
  %i.u = ashr exact i64 %i.t, 3                   ; 2 uses
  %i.v = icmp sgt i64 %i.u, 1
  br i1 %i.v, label %bb.d, label %bb.e, !prof !237

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  %i.x = sub nsw i64 0, %i.u
  %i.y = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.026.030, i64 %i.t, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.t, 8
  br i1 %i.z, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  store ptr %i.k, ptr %i.aa, align 8, !tbaa !191
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  store ptr %i.l, ptr %.sroa.026.030, align 8, !tbaa !191
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %.pn20.i, align 8, !tbaa !191 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.m
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !130
  %i.ae = icmp ult i64 %i.p, %i.ad
  br i1 %i.ae, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SL_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.af = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.ab, %bb.g ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.g ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i, %bb.g ]
  store ptr %i.af, ptr %.sroa.05.09.i.i, align 8, !tbaa !191
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.ag = load i64, ptr %4, align 8, !tbaa !42    ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.l, i64 %i.ag
  %i.ai = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !191 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.ag
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !130
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !130
  %i.am = icmp ult i64 %i.ak, %i.al
  br i1 %i.am, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SL_.exit.i, !llvm.loop !13

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SL_.exit.i: ; preds = %.lr.ph.i.i, %bb.g
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.021.i, %bb.g ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store ptr %i.l, ptr %.sroa.05.0.lcssa.i.i, align 8, !tbaa !191
  %.pre.i = load ptr, ptr %.sroa.026.030, align 8, !tbaa !191
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SL_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i
  %i.an = phi ptr [ %i.l, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SL_.exit.i ]
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 8 ; 2 uses
  %i.ao = icmp eq ptr %.sroa.0.0.i, %i.j
  br i1 %i.ao, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit, label %bb.b, !llvm.loop !15

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit: ; preds = %bb.h
  %i.ap = ptrtoint ptr %i.j to i64                ; 3 uses
  %i.aq = sub i64 %i.a, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %.not = icmp slt i64 %i.ar, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !14

._crit_edge:                                      ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.us, %bb.a
  %.sroa.026.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.us ], [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit ] ; 7 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.f, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.us ], [ %i.ap, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit ]
  %i.as = icmp eq ptr %.sroa.026.0.lcssa, %1
  br i1 %i.as, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit25, label %.preheader.i10

.preheader.i10:                                   ; preds = %._crit_edge
  %.sroa.0.019.i11 = getelementptr inbounds nuw i8, ptr %.sroa.026.0.lcssa, i64 8 ; 2 uses
  %i.at = icmp eq ptr %.sroa.0.019.i11, %1
  br i1 %i.at, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit25, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %.preheader.i10
  %.pre23.i13 = load ptr, ptr %.sroa.026.0.lcssa, align 8, !tbaa !191
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i12
  %i.au = phi ptr [ %.pre23.i13, %.lr.ph.i12 ], [ %i.bx, %bb.o ] ; 2 uses
  %.sroa.0.021.i14 = phi ptr [ %.sroa.0.019.i11, %.lr.ph.i12 ], [ %.sroa.0.0.i19, %bb.o ] ; 6 uses
  %.pn20.i15 = phi ptr [ %.sroa.026.0.lcssa, %.lr.ph.i12 ], [ %.sroa.0.021.i14, %bb.o ] ; 4 uses
  %i.av = load ptr, ptr %.sroa.0.021.i14, align 8, !tbaa !191 ; 5 uses
  %i.aw = load i64, ptr %4, align 8, !tbaa !42    ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.aw
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !130 ; 2 uses
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !130
  %i.bb = icmp ult i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bc = ptrtoint ptr %.sroa.0.021.i14 to i64
  %i.bd = sub i64 %i.bc, %.lcssa                  ; 3 uses
  %i.be = ashr exact i64 %i.bd, 3                 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 1
  br i1 %i.bf, label %bb.k, label %bb.l, !prof !237

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn20.i15, i64 16
  %i.bh = sub nsw i64 0, %i.be
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bh
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bi, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.026.0.lcssa, i64 %i.bd, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i24

bb.l:                                             ; preds = %bb.j
  %i.bj = icmp eq i64 %i.bd, 8
  br i1 %i.bj, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i24

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %.pn20.i15, i64 8
  store ptr %i.au, ptr %i.bk, align 8, !tbaa !191
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i24

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i24: ; preds = %bb.m, %bb.l, %bb.k
  store ptr %i.av, ptr %.sroa.026.0.lcssa, align 8, !tbaa !191
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bl = load ptr, ptr %.pn20.i15, align 8, !tbaa !191 ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.aw
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !130
  %i.bo = icmp ult i64 %i.az, %i.bn
  br i1 %i.bo, label %.lr.ph.i.i20, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SL_.exit.i16

.lr.ph.i.i20:                                     ; preds = %bb.n, %.lr.ph.i.i20
  %i.bp = phi ptr [ %i.bs, %.lr.ph.i.i20 ], [ %i.bl, %bb.n ]
  %.sroa.0.010.i.i21 = phi ptr [ %.sroa.0.0.i.i23, %.lr.ph.i.i20 ], [ %.pn20.i15, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i22 = phi ptr [ %.sroa.0.010.i.i21, %.lr.ph.i.i20 ], [ %.sroa.0.021.i14, %bb.n ]
  store ptr %i.bp, ptr %.sroa.05.09.i.i22, align 8, !tbaa !191
  %.sroa.0.0.i.i23 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i21, i64 -8 ; 2 uses
  %i.bq = load i64, ptr %4, align 8, !tbaa !42    ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.av, i64 %i.bq
  %i.bs = load ptr, ptr %.sroa.0.0.i.i23, align 8, !tbaa !191 ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %i.bq
  %i.bu = load i64, ptr %i.br, align 8, !tbaa !130
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !130
  %i.bw = icmp ult i64 %i.bu, %i.bv
  br i1 %i.bw, label %.lr.ph.i.i20, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SL_.exit.i16, !llvm.loop !13

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SL_.exit.i16: ; preds = %.lr.ph.i.i20, %bb.n
  %.sroa.05.0.lcssa.i.i17 = phi ptr [ %.sroa.0.021.i14, %bb.n ], [ %.sroa.0.010.i.i21, %.lr.ph.i.i20 ]
  store ptr %i.av, ptr %.sroa.05.0.lcssa.i.i17, align 8, !tbaa !191
  %.pre.i18 = load ptr, ptr %.sroa.026.0.lcssa, align 8, !tbaa !191
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SL_.exit.i16, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i24
  %i.bx = phi ptr [ %i.av, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i24 ], [ %.pre.i18, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SL_.exit.i16 ]
  %.sroa.0.0.i19 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i14, i64 8 ; 2 uses
  %i.by = icmp eq ptr %.sroa.0.0.i19, %1
  br i1 %i.by, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit25, label %bb.i, !llvm.loop !15

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit25: ; preds = %bb.o, %._crit_edge, %.preheader.i10
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4, ptr %5) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %.not60 = icmp slt i64 %i.e, %i.a
  br i1 %.not60, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 3                           ; 11 uses
  %.idx55 = shl i64 %3, 4                         ; 2 uses
  %i.f = icmp eq i64 %.idx, %.idx55
  br i1 %i.f, label %.critedge.i.us.preheader, label %.lr.ph.i.preheader

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.g = icmp sgt i64 %.idx, 8
  %i.h = icmp eq i64 %.idx, 8
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us
  %.062.us = phi ptr [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.044.061.us = phi ptr [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.044.061.us, i64 %.idx ; 5 uses
  br i1 %i.g, label %bb.d, label %bb.b, !prof !237

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.h, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %.sroa.044.061.us, align 8, !tbaa !191
  store ptr %i.j, ptr %.062.us, align 8, !tbaa !191
  %i.k = getelementptr inbounds nuw i8, ptr %.062.us, i64 %.idx
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !191
  store ptr %i.l, ptr %i.k, align 8, !tbaa !191
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.062.us, ptr align 8 %.sroa.044.061.us, i64 %.idx, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.062.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.i, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %6 = getelementptr inbounds i8, ptr %.062.us, i64 %.idx
  %i.n = getelementptr inbounds i8, ptr %6, i64 %.idx ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.b, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 2 uses
  %.not.us = icmp slt i64 %i.q, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !16

.lr.ph.i.preheader:                               ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit
  %.062 = phi ptr [ %i.ar, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.044.061 = phi ptr [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.044.061, i64 %.idx ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.044.061, i64 %.idx55 ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.020.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.062, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.014.019.i = phi ptr [ %.sroa.014.1.i, %.lr.ph.i ], [ %.sroa.044.061, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.010.018.i = phi ptr [ %.sroa.010.1.i, %.lr.ph.i ], [ %i.r, %.lr.ph.i.preheader ] ; 2 uses
  %i.t = load ptr, ptr %.sroa.010.018.i, align 8, !tbaa !191 ; 2 uses
  %i.u = load i64, ptr %5, align 8, !tbaa !42     ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %i.u
  %i.w = load ptr, ptr %.sroa.014.019.i, align 8, !tbaa !191 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.u
  %i.y = load i64, ptr %i.v, align 8, !tbaa !130
  %i.z = load i64, ptr %i.x, align 8, !tbaa !130
  %i.aa = icmp ult i64 %i.y, %i.z                 ; 3 uses
  %.sink.i = select i1 %i.aa, ptr %i.t, ptr %i.w
  %.sroa.010.1.idx.i = select i1 %i.aa, i64 8, i64 0
  %.sroa.010.1.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i, i64 %.sroa.010.1.idx.i ; 5 uses
  %.sroa.014.1.idx.i = select i1 %i.aa, i64 0, i64 8
  %.sroa.014.1.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i, i64 %.sroa.014.1.idx.i ; 5 uses
  store ptr %.sink.i, ptr %.020.i, align 8, !tbaa !191
  %i.ab = getelementptr inbounds nuw i8, ptr %.020.i, i64 8 ; 4 uses
  %i.ac = icmp eq ptr %.sroa.014.1.i, %i.r
  %i.ad = icmp eq ptr %.sroa.010.1.i, %i.s
  %or.cond.i = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond.i, label %.critedge.i.loopexit, label %.lr.ph.i, !llvm.loop !17

.critedge.i.loopexit:                             ; preds = %.lr.ph.i
  %i.ae = ptrtoint ptr %i.r to i64
  %i.af = ptrtoint ptr %.sroa.014.1.i to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 4 uses
  %i.ah = icmp sgt i64 %i.ag, 8
  br i1 %i.ah, label %bb.e, label %bb.f, !prof !237

bb.e:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %.sroa.014.1.i, i64 %i.ag, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i

bb.f:                                             ; preds = %.critedge.i.loopexit
  %i.ai = icmp eq i64 %i.ag, 8
  br i1 %i.ai, label %bb.g, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %.sroa.014.1.i, align 8, !tbaa !191
  store ptr %i.aj, ptr %i.ab, align 8, !tbaa !191
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.ak = getelementptr inbounds i8, ptr %i.ab, i64 %i.ag ; 3 uses
  %i.al = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.am = ptrtoint ptr %.sroa.010.1.i to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 8
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !237

bb.h:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr nonnull align 8 %.sroa.010.1.i, i64 %i.an, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit

bb.i:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i
  %i.ap = icmp eq i64 %i.an, 8
  br i1 %i.ap, label %bb.j, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr %.sroa.010.1.i, align 8, !tbaa !191
  store ptr %i.aq, ptr %i.ak, align 8, !tbaa !191
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.ar = getelementptr inbounds i8, ptr %i.ak, i64 %i.an ; 2 uses
  %i.as = sub i64 %i.b, %i.al
  %i.at = ashr exact i64 %i.as, 3                 ; 2 uses
  %.not = icmp slt i64 %i.at, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !16

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us, %bb.a
  %.sroa.044.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us ], [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us ], [ %i.ar, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit ] ; 2 uses
  %.lcssa58 = phi i64 [ %i.e, %bb.a ], [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us ], [ %i.at, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa58) ; 2 uses
  %.idx56 = shl nsw i64 %.sroa.speculated, 3
  %i.au = getelementptr inbounds i8, ptr %.sroa.044.0.lcssa, i64 %.idx56 ; 5 uses
  %i.av = icmp eq i64 %.sroa.speculated, 0
  %i.aw = icmp eq ptr %i.au, %1
  %or.cond17.i16 = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond17.i16, label %.critedge.i27, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %._crit_edge, %.lr.ph.i17
  %.020.i18 = phi ptr [ %i.bf, %.lr.ph.i17 ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.014.019.i19 = phi ptr [ %.sroa.014.1.i25, %.lr.ph.i17 ], [ %.sroa.044.0.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.010.018.i20 = phi ptr [ %.sroa.010.1.i23, %.lr.ph.i17 ], [ %i.au, %._crit_edge ] ; 2 uses
  %i.ax = load ptr, ptr %.sroa.010.018.i20, align 8, !tbaa !191 ; 2 uses
  %i.ay = load i64, ptr %5, align 8, !tbaa !42    ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 %i.ay
  %i.ba = load ptr, ptr %.sroa.014.019.i19, align 8, !tbaa !191 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.ay
  %i.bc = load i64, ptr %i.az, align 8, !tbaa !130
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !130
  %i.be = icmp ult i64 %i.bc, %i.bd               ; 3 uses
  %.sink.i21 = select i1 %i.be, ptr %i.ax, ptr %i.ba
  %.sroa.010.1.idx.i22 = select i1 %i.be, i64 8, i64 0
  %.sroa.010.1.i23 = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i20, i64 %.sroa.010.1.idx.i22 ; 3 uses
  %.sroa.014.1.idx.i24 = select i1 %i.be, i64 0, i64 8
  %.sroa.014.1.i25 = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i19, i64 %.sroa.014.1.idx.i24 ; 3 uses
  store ptr %.sink.i21, ptr %.020.i18, align 8, !tbaa !191
  %i.bf = getelementptr inbounds nuw i8, ptr %.020.i18, i64 8 ; 2 uses
  %i.bg = icmp eq ptr %.sroa.014.1.i25, %i.au
  %i.bh = icmp eq ptr %.sroa.010.1.i23, %1
  %or.cond.i26 = select i1 %i.bg, i1 true, i1 %i.bh
  br i1 %or.cond.i26, label %.critedge.i27, label %.lr.ph.i17, !llvm.loop !17

.critedge.i27:                                    ; preds = %.lr.ph.i17, %._crit_edge
  %.sroa.010.0.lcssa.i28 = phi ptr [ %i.au, %._crit_edge ], [ %.sroa.010.1.i23, %.lr.ph.i17 ] ; 3 uses
  %.sroa.014.0.lcssa.i29 = phi ptr [ %.sroa.044.0.lcssa, %._crit_edge ], [ %.sroa.014.1.i25, %.lr.ph.i17 ] ; 3 uses
  %.0.lcssa.i30 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bf, %.lr.ph.i17 ] ; 3 uses
  %i.bi = ptrtoint ptr %i.au to i64
  %i.bj = ptrtoint ptr %.sroa.014.0.lcssa.i29 to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 4 uses
  %i.bl = icmp sgt i64 %i.bk, 8
  br i1 %i.bl, label %bb.k, label %bb.l, !prof !237

bb.k:                                             ; preds = %.critedge.i27
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i30, ptr align 8 %.sroa.014.0.lcssa.i29, i64 %i.bk, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31

bb.l:                                             ; preds = %.critedge.i27
  %i.bm = icmp eq i64 %i.bk, 8
  br i1 %i.bm, label %bb.m, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31

bb.m:                                             ; preds = %bb.l
  %i.bn = load ptr, ptr %.sroa.014.0.lcssa.i29, align 8, !tbaa !191
  store ptr %i.bn, ptr %.0.lcssa.i30, align 8, !tbaa !191
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31: ; preds = %bb.m, %bb.l, %bb.k
  %i.bo = getelementptr inbounds i8, ptr %.0.lcssa.i30, i64 %i.bk ; 2 uses
  %i.bp = ptrtoint ptr %.sroa.010.0.lcssa.i28 to i64
  %i.bq = sub i64 %i.b, %i.bp                     ; 3 uses
  %i.br = icmp sgt i64 %i.bq, 8
  br i1 %i.br, label %bb.n, label %bb.o, !prof !237

bb.n:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bo, ptr align 8 %.sroa.010.0.lcssa.i28, i64 %i.bq, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit32

bb.o:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31
  %i.bs = icmp eq i64 %i.bq, 8
  br i1 %i.bs, label %bb.p, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit32

bb.p:                                             ; preds = %bb.o
  %i.bt = load ptr, ptr %.sroa.010.0.lcssa.i28, align 8, !tbaa !191
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !191
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit32

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit32: ; preds = %bb.n, %bb.o, %bb.p
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZSt17__merge_sort_loopIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3, ptr %4, ptr %5) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %.not55 = icmp slt i64 %i.e, %i.a
  br i1 %.not55, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 3                           ; 10 uses
  %.idx49 = shl nsw i64 %3, 4                     ; 2 uses
  %.not50 = icmp eq i64 %.idx, %.idx49
  br i1 %.not50, label %._crit_edge.i.us.preheader, label %.lr.ph.i.preheader

._crit_edge.i.us.preheader:                       ; preds = %.lr.ph
  %i.f = icmp sgt i64 %3, 1
  %i.g = icmp eq i64 %3, 1
  %i.h = icmp sgt i64 %.idx, 8
  %i.i = icmp eq i64 %.idx, 8
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %._crit_edge.i.us.preheader, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us
  %.sroa.022.057.us = phi ptr [ %i.q, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us ], [ %2, %._crit_edge.i.us.preheader ] ; 4 uses
  %.056.us = phi ptr [ %i.j, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us ], [ %0, %._crit_edge.i.us.preheader ] ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %.056.us, i64 %.idx ; 5 uses
  br i1 %i.f, label %bb.c, label %bb.b, !prof !237

bb.b:                                             ; preds = %._crit_edge.i.us
  br i1 %i.g, label %.thread, label %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us
end_hunk_2
