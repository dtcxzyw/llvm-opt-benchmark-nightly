Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/mapfile.cc.X86_64?download=true
inline.NumInlined: 1826
inline.NumDeleted: 914
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN3tbb6detail2d19start_forINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEEZNS7_L7get_mapIS9_EENS6_IPNS8_IT_EESC_IPNSD_IST_EESaISX_EENSI_ISV_EENSK_ISL_IKSV_SZ_EEEEERNS7_7ContextIST_EEEUlRKSR_E_KNS1_16auto_partitionerEE8run_bodyERSR_:bb.a
bb.w:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i134.3.i.i.i.i
  %i.eq = load ptr, ptr %.sroa.0.021.i.i132.ptr.3.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 %i.ej
  %i.es = load i64, ptr %i.er, align 8, !tbaa !130
  %i.et = icmp ult i64 %i.en, %i.es
  br i1 %i.et, label %.lr.ph.i.i.i154.4.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i134.4.i.i.i.i

.lr.ph.i.i.i154.4.i.i.i.i:                        ; preds = %bb.w, %.lr.ph.i.i.i154.4.i.i.i.i
  %i.eu = phi ptr [ %i.ex, %.lr.ph.i.i.i154.4.i.i.i.i ], [ %i.eq, %bb.w ]
  %.sroa.0.010.i.i.i155.4.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i157.4.i.i.i.i, %.lr.ph.i.i.i154.4.i.i.i.i ], [ %.sroa.0.021.i.i132.ptr.3.i.i.i.i, %bb.w ] ; 3 uses
  %.sroa.05.09.i.i.i156.4.i.i.i.i = phi ptr [ %.sroa.0.010.i.i.i155.4.i.i.i.i, %.lr.ph.i.i.i154.4.i.i.i.i ], [ %.sroa.0.021.i.i132.ptr.4.i.i.i.i, %bb.w ]
  store ptr %i.eu, ptr %.sroa.05.09.i.i.i156.4.i.i.i.i, align 8, !tbaa !191
  %.sroa.0.0.i.i.i157.4.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i155.4.i.i.i.i, i64 -8 ; 2 uses
  %i.ev = load i64, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.ew = getelementptr inbounds i8, ptr %i.ei, i64 %i.ev
  %i.ex = load ptr, ptr %.sroa.0.0.i.i.i157.4.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 %i.ev
  %i.ez = load i64, ptr %i.ew, align 8, !tbaa !130
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !130
  %i.fb = icmp ult i64 %i.ez, %i.fa
  br i1 %i.fb, label %.lr.ph.i.i.i154.4.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i134.4.i.i.i.i, !llvm.loop !13

bb.x:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i134.3.i.i.i.i
  %i.fc = ptrtoint ptr %.sroa.0.021.i.i132.ptr.4.i.i.i.i to i64
  %i.fd = sub i64 %i.fc, %i.al                    ; 3 uses
  %i.fe = ashr exact i64 %i.fd, 3                 ; 2 uses
  %i.ff = icmp sgt i64 %i.fe, 1
  br i1 %i.ff, label %bb.aa, label %bb.y, !prof !237

bb.y:                                             ; preds = %bb.x
  %i.fg = icmp eq i64 %i.fd, 8
  br i1 %i.fg, label %bb.z, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i134.4.i.i.i.i

bb.z:                                             ; preds = %bb.y
  store ptr %i.el, ptr %.sroa.0.021.i.i132.ptr.4.i.i.i.i, align 8, !tbaa !191
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i134.4.i.i.i.i

bb.aa:                                            ; preds = %bb.x
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.023.028.i129.i.i.i.i, i64 48
  %i.fi = sub nsw i64 0, %i.fe
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %i.fi
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fj, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.023.028.i129.i.i.i.i, i64 %i.fd, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i134.4.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i134.4.i.i.i.i: ; preds = %.lr.ph.i.i.i154.4.i.i.i.i, %bb.aa, %bb.z, %bb.y, %bb.w
  %.sink.i.i135.4.i.i.i.i = phi ptr [ %.sroa.023.028.i129.i.i.i.i, %bb.z ], [ %.sroa.023.028.i129.i.i.i.i, %bb.aa ], [ %.sroa.023.028.i129.i.i.i.i, %bb.y ], [ %.sroa.0.021.i.i132.ptr.4.i.i.i.i, %bb.w ], [ %.sroa.0.010.i.i.i155.4.i.i.i.i, %.lr.ph.i.i.i154.4.i.i.i.i ]
  store ptr %i.ei, ptr %.sink.i.i135.4.i.i.i.i, align 8, !tbaa !191
  %.sroa.0.021.i.i132.ptr.5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.023.028.i129.i.i.i.i, i64 48 ; 5 uses
  %i.fk = load ptr, ptr %.sroa.0.021.i.i132.ptr.5.i.i.i.i, align 8, !tbaa !191 ; 3 uses
  %i.fl = load i64, ptr %i.a, align 8, !tbaa !42  ; 3 uses
  %i.fm = getelementptr inbounds i8, ptr %i.fk, i64 %i.fl
  %i.fn = load ptr, ptr %.sroa.023.028.i129.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 %i.fl
  %i.fp = load i64, ptr %i.fm, align 8, !tbaa !130 ; 2 uses
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !130
  %i.fr = icmp ult i64 %i.fp, %i.fq
  br i1 %i.fr, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i134.4.i.i.i.i
  %i.fs = load ptr, ptr %.sroa.0.021.i.i132.ptr.4.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 %i.fl
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !130
  %i.fv = icmp ult i64 %i.fp, %i.fu
  br i1 %i.fv, label %.lr.ph.i.i.i154.5.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i134.5.i.i.i.i

.lr.ph.i.i.i154.5.i.i.i.i:                        ; preds = %bb.ab, %.lr.ph.i.i.i154.5.i.i.i.i
  %i.fw = phi ptr [ %i.fz, %.lr.ph.i.i.i154.5.i.i.i.i ], [ %i.fs, %bb.ab ]
  %.sroa.0.010.i.i.i155.5.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i157.5.i.i.i.i, %.lr.ph.i.i.i154.5.i.i.i.i ], [ %.sroa.0.021.i.i132.ptr.4.i.i.i.i, %bb.ab ] ; 3 uses
  %.sroa.05.09.i.i.i156.5.i.i.i.i = phi ptr [ %.sroa.0.010.i.i.i155.5.i.i.i.i, %.lr.ph.i.i.i154.5.i.i.i.i ], [ %.sroa.0.021.i.i132.ptr.5.i.i.i.i, %bb.ab ]
  store ptr %i.fw, ptr %.sroa.05.09.i.i.i156.5.i.i.i.i, align 8, !tbaa !191
  %.sroa.0.0.i.i.i157.5.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i155.5.i.i.i.i, i64 -8 ; 2 uses
  %i.fx = load i64, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %i.fk, i64 %i.fx
  %i.fz = load ptr, ptr %.sroa.0.0.i.i.i157.5.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %i.fz, i64 %i.fx
  %i.gb = load i64, ptr %i.fy, align 8, !tbaa !130
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !130
  %i.gd = icmp ult i64 %i.gb, %i.gc
  br i1 %i.gd, label %.lr.ph.i.i.i154.5.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i134.5.i.i.i.i, !llvm.loop !13

bb.ac:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i134.4.i.i.i.i
  %i.ge = ptrtoint ptr %.sroa.0.021.i.i132.ptr.5.i.i.i.i to i64
  %i.gf = sub i64 %i.ge, %i.al                    ; 3 uses
  %i.gg = ashr exact i64 %i.gf, 3                 ; 2 uses
  %i.gh = icmp sgt i64 %i.gg, 1
  br i1 %i.gh, label %bb.af, label %bb.ad, !prof !237

bb.ad:                                            ; preds = %bb.ac
  %i.gi = icmp eq i64 %i.gf, 8
  br i1 %i.gi, label %bb.ae, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i134.5.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.fn, ptr %.sroa.0.021.i.i132.ptr.5.i.i.i.i, align 8, !tbaa !191
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i134.5.i.i.i.i

bb.af:                                            ; preds = %bb.ac
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.023.028.i129.i.i.i.i, i64 56
  %i.gk = sub nsw i64 0, %i.gg
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.gj, i64 %i.gk
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gl, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.023.028.i129.i.i.i.i, i64 %i.gf, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i134.5.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i134.5.i.i.i.i: ; preds = %.lr.ph.i.i.i154.5.i.i.i.i, %bb.af, %bb.ae, %bb.ad, %bb.ab
  %.sink.i.i135.5.i.i.i.i = phi ptr [ %.sroa.023.028.i129.i.i.i.i, %bb.ae ], [ %.sroa.023.028.i129.i.i.i.i, %bb.af ], [ %.sroa.023.028.i129.i.i.i.i, %bb.ad ], [ %.sroa.0.021.i.i132.ptr.5.i.i.i.i, %bb.ab ], [ %.sroa.0.010.i.i.i155.5.i.i.i.i, %.lr.ph.i.i.i154.5.i.i.i.i ]
  store ptr %i.fk, ptr %.sink.i.i135.5.i.i.i.i, align 8, !tbaa !191
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.023.028.i129.i.i.i.i, i64 56 ; 3 uses
  %i.gn = ptrtoint ptr %i.gm to i64               ; 3 uses
  %i.go = sub i64 %i.aj, %i.gn
  %.not.i138.i.i.i.i = icmp slt i64 %i.go, 56
  br i1 %.not.i138.i.i.i.i, label %._crit_edge.i139.i.i.i.i, label %.lr.ph.i.preheader.i128.i.i.i.i, !llvm.loop !14

._crit_edge.i139.i.i.i.i:                         ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i134.5.i.i.i.i, %bb.c
  %.sroa.023.0.lcssa.i140.i.i.i.i = phi ptr [ %i.r, %bb.c ], [ %i.gm, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i134.5.i.i.i.i ] ; 8 uses
  %.lcssa.i141.i.i.i.i = phi i64 [ %i.w, %bb.c ], [ %i.gn, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i134.5.i.i.i.i ]
  %i.gp = icmp eq ptr %.sroa.023.0.lcssa.i140.i.i.i.i, %i.ai
  %.sroa.0.019.i11.i142.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.023.0.lcssa.i140.i.i.i.i, i64 8 ; 2 uses
  %i.gq = icmp eq ptr %.sroa.0.019.i11.i142.i.i.i.i, %i.ai
  %or.cond26.i143.i.i.i.i = select i1 %i.gp, i1 true, i1 %i.gq
  br i1 %or.cond26.i143.i.i.i.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_.exit158.i.i.i.i, label %.lr.ph.i12.i144.i.i.i.i

.lr.ph.i12.i144.i.i.i.i:                          ; preds = %._crit_edge.i139.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15.i147.i.i.i.i
  %.sroa.0.021.i13.i145.i.i.i.i = phi ptr [ %.sroa.0.0.i17.i149.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15.i147.i.i.i.i ], [ %.sroa.0.019.i11.i142.i.i.i.i, %._crit_edge.i139.i.i.i.i ] ; 6 uses
  %.pn20.i14.i146.i.i.i.i = phi ptr [ %.sroa.0.021.i13.i145.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15.i147.i.i.i.i ], [ %.sroa.023.0.lcssa.i140.i.i.i.i, %._crit_edge.i139.i.i.i.i ] ; 4 uses
  %i.gr = load ptr, ptr %.sroa.0.021.i13.i145.i.i.i.i, align 8, !tbaa !191 ; 3 uses
  %i.gs = load i64, ptr %i.a, align 8, !tbaa !42  ; 3 uses
  %i.gt = getelementptr inbounds i8, ptr %i.gr, i64 %i.gs
  %i.gu = load ptr, ptr %.sroa.023.0.lcssa.i140.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.gv = getelementptr inbounds i8, ptr %i.gu, i64 %i.gs
  %i.gw = load i64, ptr %i.gt, align 8, !tbaa !130 ; 2 uses
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !130
  %i.gy = icmp ult i64 %i.gw, %i.gx
  br i1 %i.gy, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %.lr.ph.i12.i144.i.i.i.i
  %i.gz = ptrtoint ptr %.sroa.0.021.i13.i145.i.i.i.i to i64
  %i.ha = sub i64 %i.gz, %.lcssa.i141.i.i.i.i     ; 3 uses
  %i.hb = ashr exact i64 %i.ha, 3                 ; 2 uses
  %i.hc = icmp sgt i64 %i.hb, 1
  br i1 %i.hc, label %bb.ah, label %bb.ai, !prof !237

bb.ah:                                            ; preds = %bb.ag
  %i.hd = getelementptr inbounds nuw i8, ptr %.pn20.i14.i146.i.i.i.i, i64 16
  %i.he = sub nsw i64 0, %i.hb
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.hd, i64 %i.he
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hf, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.023.0.lcssa.i140.i.i.i.i, i64 %i.ha, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15.i147.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.hg = icmp eq i64 %i.ha, 8
  br i1 %i.hg, label %bb.aj, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15.i147.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.hh = getelementptr inbounds nuw i8, ptr %.pn20.i14.i146.i.i.i.i, i64 8
  store ptr %i.gu, ptr %i.hh, align 8, !tbaa !191
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15.i147.i.i.i.i

bb.ak:                                            ; preds = %.lr.ph.i12.i144.i.i.i.i
  %i.hi = load ptr, ptr %.pn20.i14.i146.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 %i.gs
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !130
  %i.hl = icmp ult i64 %i.gw, %i.hk
  br i1 %i.hl, label %.lr.ph.i.i18.i150.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15.i147.i.i.i.i

.lr.ph.i.i18.i150.i.i.i.i:                        ; preds = %bb.ak, %.lr.ph.i.i18.i150.i.i.i.i
  %i.hm = phi ptr [ %i.hp, %.lr.ph.i.i18.i150.i.i.i.i ], [ %i.hi, %bb.ak ]
  %.sroa.0.010.i.i19.i151.i.i.i.i = phi ptr [ %.sroa.0.0.i.i21.i153.i.i.i.i, %.lr.ph.i.i18.i150.i.i.i.i ], [ %.pn20.i14.i146.i.i.i.i, %bb.ak ] ; 3 uses
  %.sroa.05.09.i.i20.i152.i.i.i.i = phi ptr [ %.sroa.0.010.i.i19.i151.i.i.i.i, %.lr.ph.i.i18.i150.i.i.i.i ], [ %.sroa.0.021.i13.i145.i.i.i.i, %bb.ak ]
  store ptr %i.hm, ptr %.sroa.05.09.i.i20.i152.i.i.i.i, align 8, !tbaa !191
  %.sroa.0.0.i.i21.i153.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i19.i151.i.i.i.i, i64 -8 ; 2 uses
  %i.hn = load i64, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.ho = getelementptr inbounds i8, ptr %i.gr, i64 %i.hn
  %i.hp = load ptr, ptr %.sroa.0.0.i.i21.i153.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.hq = getelementptr inbounds i8, ptr %i.hp, i64 %i.hn
  %i.hr = load i64, ptr %i.ho, align 8, !tbaa !130
  %i.hs = load i64, ptr %i.hq, align 8, !tbaa !130
  %i.ht = icmp ult i64 %i.hr, %i.hs
  br i1 %i.ht, label %.lr.ph.i.i18.i150.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15.i147.i.i.i.i, !llvm.loop !13

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15.i147.i.i.i.i: ; preds = %.lr.ph.i.i18.i150.i.i.i.i, %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %.sink.i16.i148.i.i.i.i = phi ptr [ %.sroa.023.0.lcssa.i140.i.i.i.i, %bb.aj ], [ %.sroa.023.0.lcssa.i140.i.i.i.i, %bb.ah ], [ %.sroa.023.0.lcssa.i140.i.i.i.i, %bb.ai ], [ %.sroa.0.021.i13.i145.i.i.i.i, %bb.ak ], [ %.sroa.0.010.i.i19.i151.i.i.i.i, %.lr.ph.i.i18.i150.i.i.i.i ]
  store ptr %i.gr, ptr %.sink.i16.i148.i.i.i.i, align 8, !tbaa !191
  %.sroa.0.0.i17.i149.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i13.i145.i.i.i.i, i64 8 ; 2 uses
  %i.hu = icmp eq ptr %.sroa.0.0.i17.i149.i.i.i.i, %i.ai
  br i1 %i.hu, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_.exit158.i.i.i.i, label %.lr.ph.i12.i144.i.i.i.i, !llvm.loop !15

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_.exit158.i.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15.i147.i.i.i.i, %._crit_edge.i139.i.i.i.i
  %i.hv = icmp sgt i64 %i.y, 14
  br i1 %i.hv, label %.lr.ph.i.i.preheader.i.i.i.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_.exit.i.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i:                     ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_.exit158.i.i.i.i
  %i.hw = ptrtoint ptr %i.ak to i64               ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt17__merge_sort_loopIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit75.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i
  %.022.i.i.i.i.i.i = phi i64 [ %i.kv, %_ZSt17__merge_sort_loopIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit75.i.i.i.i ], [ 7, %.lr.ph.i.i.preheader.i.i.i.i ] ; 8 uses
  %i.hx = shl nsw i64 %.022.i.i.i.i.i.i, 1        ; 6 uses
  %.not60.i76.i.i.i.i = icmp slt i64 %i.aa, %i.hx
  br i1 %.not60.i76.i.i.i.i, label %._crit_edge.i97.i.i.i.i, label %.lr.ph.i77.i.i.i.i

.lr.ph.i77.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i
  %.idx.i78.i.i.i.i = shl i64 %.022.i.i.i.i.i.i, 3 ; 12 uses
  %.idx55.i79.i.i.i.i = shl i64 %.022.i.i.i.i.i.i, 4 ; 2 uses
  %i.hy = icmp eq i64 %.idx.i78.i.i.i.i, %.idx55.i79.i.i.i.i
  br i1 %i.hy, label %.critedge.i.us.preheader.i119.i.i.i.i, label %.lr.ph.i.preheader.i80.i.i.i.i

.critedge.i.us.preheader.i119.i.i.i.i:            ; preds = %.lr.ph.i77.i.i.i.i
  %i.hz = icmp sgt i64 %.idx.i78.i.i.i.i, 8
  br i1 %i.hz, label %.critedge.i.us.i120.us.i.i.i.i, label %.critedge.i.us.preheader.i119.split.i.i.i.i, !prof !237

.critedge.i.us.i120.us.i.i.i.i:                   ; preds = %.critedge.i.us.preheader.i119.i.i.i.i, %.critedge.i.us.i120.us.i.i.i.i
  %.062.us.i121.us.i.i.i.i = phi ptr [ %2, %.critedge.i.us.i120.us.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.critedge.i.us.preheader.i119.i.i.i.i ] ; 2 uses
  %.sroa.044.061.us.i122.us.i.i.i.i = phi ptr [ %i.ia, %.critedge.i.us.i120.us.i.i.i.i ], [ %i.r, %.critedge.i.us.preheader.i119.i.i.i.i ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.044.061.us.i122.us.i.i.i.i, i64 %.idx.i78.i.i.i.i ; 4 uses
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.062.us.i121.us.i.i.i.i, ptr align 8 %.sroa.044.061.us.i122.us.i.i.i.i, i64 %.idx.i78.i.i.i.i, i1 false)
  %i.ib = getelementptr inbounds nuw i8, ptr %.062.us.i121.us.i.i.i.i, i64 %.idx.i78.i.i.i.i ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ib, ptr nonnull align 8 %i.ia, i64 %.idx.i78.i.i.i.i, i1 false)
  %2 = getelementptr inbounds nuw i8, ptr %i.ib, i64 %.idx.i78.i.i.i.i ; 2 uses
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = sub i64 %i.aj, %i.ic
  %i.ie = ashr exact i64 %i.id, 3                 ; 2 uses
  %.not.us.i124.us.i.i.i.i = icmp slt i64 %i.ie, %i.hx
  br i1 %.not.us.i124.us.i.i.i.i, label %._crit_edge.i97.i.i.i.i, label %.critedge.i.us.i120.us.i.i.i.i, !llvm.loop !16

.critedge.i.us.preheader.i119.split.i.i.i.i:      ; preds = %.critedge.i.us.preheader.i119.i.i.i.i
  %i.if = icmp eq i64 %.idx.i78.i.i.i.i, 8
  br i1 %i.if, label %.critedge.i.us.i120.us54.preheader.i.i.i.i, label %.critedge.i.us.i120.i.i.i.i

.critedge.i.us.i120.us54.preheader.i.i.i.i:       ; preds = %.critedge.i.us.preheader.i119.split.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !191
  br label %.critedge.i.us.i120.us54.i.i.i.i

.critedge.i.us.i120.us54.i.i.i.i:                 ; preds = %.critedge.i.us.i120.us54.i.i.i.i, %.critedge.i.us.i120.us54.preheader.i.i.i.i
  %i.ig = phi ptr [ %i.ij, %.critedge.i.us.i120.us54.i.i.i.i ], [ %.pre.i.i.i.i, %.critedge.i.us.i120.us54.preheader.i.i.i.i ]
  %.062.us.i121.us55.i.i.i.i = phi ptr [ %3, %.critedge.i.us.i120.us54.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.critedge.i.us.i120.us54.preheader.i.i.i.i ] ; 3 uses
  %.sroa.044.061.us.i122.us56.i.i.i.i = phi ptr [ %i.ih, %.critedge.i.us.i120.us54.i.i.i.i ], [ %i.r, %.critedge.i.us.i120.us54.preheader.i.i.i.i ]
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.044.061.us.i122.us56.i.i.i.i, i64 8 ; 4 uses
  store ptr %i.ig, ptr %.062.us.i121.us55.i.i.i.i, align 8, !tbaa !191
  %i.ii = getelementptr inbounds nuw i8, ptr %.062.us.i121.us55.i.i.i.i, i64 8
  %i.ij = load ptr, ptr %i.ih, align 8, !tbaa !191 ; 2 uses
  store ptr %i.ij, ptr %i.ii, align 8, !tbaa !191
  %3 = getelementptr inbounds nuw i8, ptr %.062.us.i121.us55.i.i.i.i, i64 16 ; 2 uses
  %i.ik = ptrtoint ptr %i.ih to i64
  %i.il = sub i64 %i.aj, %i.ik
  %i.im = ashr exact i64 %i.il, 3                 ; 2 uses
  %.not.us.i124.us58.i.i.i.i = icmp slt i64 %i.im, %i.hx
  br i1 %.not.us.i124.us58.i.i.i.i, label %._crit_edge.i97.i.i.i.i, label %.critedge.i.us.i120.us54.i.i.i.i, !llvm.loop !16

.critedge.i.us.i120.i.i.i.i:                      ; preds = %.critedge.i.us.preheader.i119.split.i.i.i.i, %.critedge.i.us.i120.i.i.i.i
  %.062.us.i121.i.i.i.i = phi ptr [ %i.io, %.critedge.i.us.i120.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.critedge.i.us.preheader.i119.split.i.i.i.i ]
  %.sroa.044.061.us.i122.i.i.i.i = phi ptr [ %4, %.critedge.i.us.i120.i.i.i.i ], [ %i.r, %.critedge.i.us.preheader.i119.split.i.i.i.i ]
  %4 = getelementptr inbounds i8, ptr %.sroa.044.061.us.i122.i.i.i.i, i64 %.idx.i78.i.i.i.i ; 3 uses
  %i.in = getelementptr inbounds i8, ptr %.062.us.i121.i.i.i.i, i64 %.idx.i78.i.i.i.i
  %i.io = getelementptr inbounds i8, ptr %i.in, i64 %.idx.i78.i.i.i.i ; 2 uses
  %i.ip = ptrtoint ptr %4 to i64
  %i.iq = sub i64 %i.aj, %i.ip
  %i.ir = ashr exact i64 %i.iq, 3                 ; 2 uses
  %.not.us.i124.i.i.i.i = icmp slt i64 %i.ir, %i.hx
  br i1 %.not.us.i124.i.i.i.i, label %._crit_edge.i97.i.i.i.i, label %.critedge.i.us.i120.i.i.i.i, !llvm.loop !16

.lr.ph.i.preheader.i80.i.i.i.i:                   ; preds = %.lr.ph.i77.i.i.i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i95.i.i.i.i
  %.062.i81.i.i.i.i = phi ptr [ %i.js, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i95.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.lr.ph.i77.i.i.i.i ]
  %.sroa.044.061.i82.i.i.i.i = phi ptr [ %i.it, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i95.i.i.i.i ], [ %i.r, %.lr.ph.i77.i.i.i.i ] ; 3 uses
  %i.is = getelementptr inbounds i8, ptr %.sroa.044.061.i82.i.i.i.i, i64 %.idx.i78.i.i.i.i ; 3 uses
  %i.it = getelementptr inbounds i8, ptr %.sroa.044.061.i82.i.i.i.i, i64 %.idx55.i79.i.i.i.i ; 4 uses
  br label %.lr.ph.i.i83.i.i.i.i

.lr.ph.i.i83.i.i.i.i:                             ; preds = %.lr.ph.i.i83.i.i.i.i, %.lr.ph.i.preheader.i80.i.i.i.i
  %.020.i.i84.i.i.i.i = phi ptr [ %i.jc, %.lr.ph.i.i83.i.i.i.i ], [ %.062.i81.i.i.i.i, %.lr.ph.i.preheader.i80.i.i.i.i ] ; 2 uses
  %.sroa.014.019.i.i85.i.i.i.i = phi ptr [ %.sroa.014.1.i.i91.i.i.i.i, %.lr.ph.i.i83.i.i.i.i ], [ %.sroa.044.061.i82.i.i.i.i, %.lr.ph.i.preheader.i80.i.i.i.i ] ; 2 uses
  %.sroa.010.018.i.i86.i.i.i.i = phi ptr [ %.sroa.010.1.i.i89.i.i.i.i, %.lr.ph.i.i83.i.i.i.i ], [ %i.is, %.lr.ph.i.preheader.i80.i.i.i.i ] ; 2 uses
  %i.iu = load ptr, ptr %.sroa.010.018.i.i86.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.iv = load i64, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.iw = getelementptr inbounds i8, ptr %i.iu, i64 %i.iv
  %i.ix = load ptr, ptr %.sroa.014.019.i.i85.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.iy = getelementptr inbounds i8, ptr %i.ix, i64 %i.iv
  %i.iz = load i64, ptr %i.iw, align 8, !tbaa !130
  %i.ja = load i64, ptr %i.iy, align 8, !tbaa !130
  %i.jb = icmp ult i64 %i.iz, %i.ja               ; 3 uses
  %.sink.i.i87.i.i.i.i = select i1 %i.jb, ptr %i.iu, ptr %i.ix
  %.sroa.010.1.idx.i.i88.i.i.i.i = select i1 %i.jb, i64 8, i64 0
  %.sroa.010.1.i.i89.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i86.i.i.i.i, i64 %.sroa.010.1.idx.i.i88.i.i.i.i ; 5 uses
  %.sroa.014.1.idx.i.i90.i.i.i.i = select i1 %i.jb, i64 0, i64 8
  %.sroa.014.1.i.i91.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i.i85.i.i.i.i, i64 %.sroa.014.1.idx.i.i90.i.i.i.i ; 5 uses
  store ptr %.sink.i.i87.i.i.i.i, ptr %.020.i.i84.i.i.i.i, align 8, !tbaa !191
  %i.jc = getelementptr inbounds nuw i8, ptr %.020.i.i84.i.i.i.i, i64 8 ; 4 uses
  %i.jd = icmp eq ptr %.sroa.014.1.i.i91.i.i.i.i, %i.is
  %i.je = icmp eq ptr %.sroa.010.1.i.i89.i.i.i.i, %i.it
  %or.cond.i.i92.i.i.i.i = select i1 %i.jd, i1 true, i1 %i.je
  br i1 %or.cond.i.i92.i.i.i.i, label %.critedge.i.loopexit.i93.i.i.i.i, label %.lr.ph.i.i83.i.i.i.i, !llvm.loop !17

.critedge.i.loopexit.i93.i.i.i.i:                 ; preds = %.lr.ph.i.i83.i.i.i.i
  %i.jf = ptrtoint ptr %i.is to i64
  %i.jg = ptrtoint ptr %.sroa.014.1.i.i91.i.i.i.i to i64
  %i.jh = sub i64 %i.jf, %i.jg                    ; 4 uses
  %i.ji = icmp sgt i64 %i.jh, 8
  br i1 %i.ji, label %bb.al, label %bb.am, !prof !237

bb.al:                                            ; preds = %.critedge.i.loopexit.i93.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jc, ptr nonnull align 8 %.sroa.014.1.i.i91.i.i.i.i, i64 %i.jh, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i94.i.i.i.i

bb.am:                                            ; preds = %.critedge.i.loopexit.i93.i.i.i.i
  %i.jj = icmp eq i64 %i.jh, 8
  br i1 %i.jj, label %bb.an, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i94.i.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.jk = load ptr, ptr %.sroa.014.1.i.i91.i.i.i.i, align 8, !tbaa !191
  store ptr %i.jk, ptr %i.jc, align 8, !tbaa !191
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i94.i.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i94.i.i.i.i: ; preds = %bb.an, %bb.am, %bb.al
  %i.jl = getelementptr inbounds i8, ptr %i.jc, i64 %i.jh ; 3 uses
  %i.jm = ptrtoint ptr %i.it to i64               ; 2 uses
  %i.jn = ptrtoint ptr %.sroa.010.1.i.i89.i.i.i.i to i64
  %i.jo = sub i64 %i.jm, %i.jn                    ; 4 uses
  %i.jp = icmp sgt i64 %i.jo, 8
  br i1 %i.jp, label %bb.ao, label %bb.ap, !prof !237

bb.ao:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i94.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jl, ptr nonnull align 8 %.sroa.010.1.i.i89.i.i.i.i, i64 %i.jo, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i95.i.i.i.i

bb.ap:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i94.i.i.i.i
  %i.jq = icmp eq i64 %i.jo, 8
  br i1 %i.jq, label %bb.aq, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i95.i.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.jr = load ptr, ptr %.sroa.010.1.i.i89.i.i.i.i, align 8, !tbaa !191
  store ptr %i.jr, ptr %i.jl, align 8, !tbaa !191
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i95.i.i.i.i

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i95.i.i.i.i: ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.js = getelementptr inbounds i8, ptr %i.jl, i64 %i.jo ; 2 uses
  %i.jt = sub i64 %i.aj, %i.jm
  %i.ju = ashr exact i64 %i.jt, 3                 ; 2 uses
  %.not.i96.i.i.i.i = icmp slt i64 %i.ju, %i.hx
  br i1 %.not.i96.i.i.i.i, label %._crit_edge.i97.i.i.i.i, label %.lr.ph.i.preheader.i80.i.i.i.i, !llvm.loop !16

._crit_edge.i97.i.i.i.i:                          ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i95.i.i.i.i, %.critedge.i.us.i120.i.i.i.i, %.critedge.i.us.i120.us54.i.i.i.i, %.critedge.i.us.i120.us.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.044.0.lcssa.i98.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.ia, %.critedge.i.us.i120.us.i.i.i.i ], [ %i.ih, %.critedge.i.us.i120.us54.i.i.i.i ], [ %4, %.critedge.i.us.i120.i.i.i.i ], [ %i.it, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i95.i.i.i.i ] ; 3 uses
  %.0.lcssa.i99.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %2, %.critedge.i.us.i120.us.i.i.i.i ], [ %3, %.critedge.i.us.i120.us54.i.i.i.i ], [ %i.io, %.critedge.i.us.i120.i.i.i.i ], [ %i.js, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i95.i.i.i.i ] ; 2 uses
  %.lcssa58.i100.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i.i ], [ %i.ie, %.critedge.i.us.i120.us.i.i.i.i ], [ %i.im, %.critedge.i.us.i120.us54.i.i.i.i ], [ %i.ir, %.critedge.i.us.i120.i.i.i.i ], [ %i.ju, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i95.i.i.i.i ]
  %.sroa.speculated.i101.i.i.i.i = call i64 @llvm.smin.i64(i64 %.022.i.i.i.i.i.i, i64 %.lcssa58.i100.i.i.i.i) ; 2 uses
  %.idx56.i102.i.i.i.i = shl nsw i64 %.sroa.speculated.i101.i.i.i.i, 3
  %i.jv = getelementptr inbounds i8, ptr %.sroa.044.0.lcssa.i98.i.i.i.i, i64 %.idx56.i102.i.i.i.i ; 5 uses
  %i.jw = icmp eq i64 %.sroa.speculated.i101.i.i.i.i, 0
  %i.jx = icmp eq ptr %i.jv, %i.ai
  %or.cond17.i16.i103.i.i.i.i = select i1 %i.jw, i1 true, i1 %i.jx
  br i1 %or.cond17.i16.i103.i.i.i.i, label %.critedge.i27.i114.i.i.i.i, label %.lr.ph.i17.i104.i.i.i.i

.lr.ph.i17.i104.i.i.i.i:                          ; preds = %._crit_edge.i97.i.i.i.i, %.lr.ph.i17.i104.i.i.i.i
  %.020.i18.i105.i.i.i.i = phi ptr [ %i.kg, %.lr.ph.i17.i104.i.i.i.i ], [ %.0.lcssa.i99.i.i.i.i, %._crit_edge.i97.i.i.i.i ] ; 2 uses
  %.sroa.014.019.i19.i106.i.i.i.i = phi ptr [ %.sroa.014.1.i25.i112.i.i.i.i, %.lr.ph.i17.i104.i.i.i.i ], [ %.sroa.044.0.lcssa.i98.i.i.i.i, %._crit_edge.i97.i.i.i.i ] ; 2 uses
  %.sroa.010.018.i20.i107.i.i.i.i = phi ptr [ %.sroa.010.1.i23.i110.i.i.i.i, %.lr.ph.i17.i104.i.i.i.i ], [ %i.jv, %._crit_edge.i97.i.i.i.i ] ; 2 uses
  %i.jy = load ptr, ptr %.sroa.010.018.i20.i107.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.jz = load i64, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.ka = getelementptr inbounds i8, ptr %i.jy, i64 %i.jz
  %i.kb = load ptr, ptr %.sroa.014.019.i19.i106.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.kc = getelementptr inbounds i8, ptr %i.kb, i64 %i.jz
  %i.kd = load i64, ptr %i.ka, align 8, !tbaa !130
  %i.ke = load i64, ptr %i.kc, align 8, !tbaa !130
  %i.kf = icmp ult i64 %i.kd, %i.ke               ; 3 uses
  %.sink.i21.i108.i.i.i.i = select i1 %i.kf, ptr %i.jy, ptr %i.kb
  %.sroa.010.1.idx.i22.i109.i.i.i.i = select i1 %i.kf, i64 8, i64 0
  %.sroa.010.1.i23.i110.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i20.i107.i.i.i.i, i64 %.sroa.010.1.idx.i22.i109.i.i.i.i ; 3 uses
  %.sroa.014.1.idx.i24.i111.i.i.i.i = select i1 %i.kf, i64 0, i64 8
  %.sroa.014.1.i25.i112.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i19.i106.i.i.i.i, i64 %.sroa.014.1.idx.i24.i111.i.i.i.i ; 3 uses
  store ptr %.sink.i21.i108.i.i.i.i, ptr %.020.i18.i105.i.i.i.i, align 8, !tbaa !191
  %i.kg = getelementptr inbounds nuw i8, ptr %.020.i18.i105.i.i.i.i, i64 8 ; 2 uses
  %i.kh = icmp eq ptr %.sroa.014.1.i25.i112.i.i.i.i, %i.jv
  %i.ki = icmp eq ptr %.sroa.010.1.i23.i110.i.i.i.i, %i.ai
  %or.cond.i26.i113.i.i.i.i = select i1 %i.kh, i1 true, i1 %i.ki
  br i1 %or.cond.i26.i113.i.i.i.i, label %.critedge.i27.i114.i.i.i.i, label %.lr.ph.i17.i104.i.i.i.i, !llvm.loop !17

.critedge.i27.i114.i.i.i.i:                       ; preds = %.lr.ph.i17.i104.i.i.i.i, %._crit_edge.i97.i.i.i.i
  %.sroa.010.0.lcssa.i28.i115.i.i.i.i = phi ptr [ %i.jv, %._crit_edge.i97.i.i.i.i ], [ %.sroa.010.1.i23.i110.i.i.i.i, %.lr.ph.i17.i104.i.i.i.i ] ; 3 uses
  %.sroa.014.0.lcssa.i29.i116.i.i.i.i = phi ptr [ %.sroa.044.0.lcssa.i98.i.i.i.i, %._crit_edge.i97.i.i.i.i ], [ %.sroa.014.1.i25.i112.i.i.i.i, %.lr.ph.i17.i104.i.i.i.i ] ; 3 uses
  %.0.lcssa.i30.i117.i.i.i.i = phi ptr [ %.0.lcssa.i99.i.i.i.i, %._crit_edge.i97.i.i.i.i ], [ %i.kg, %.lr.ph.i17.i104.i.i.i.i ] ; 3 uses
  %i.kj = ptrtoint ptr %i.jv to i64
  %i.kk = ptrtoint ptr %.sroa.014.0.lcssa.i29.i116.i.i.i.i to i64
  %i.kl = sub i64 %i.kj, %i.kk                    ; 4 uses
  %i.km = icmp sgt i64 %i.kl, 8
  br i1 %i.km, label %bb.ar, label %bb.as, !prof !237

bb.ar:                                            ; preds = %.critedge.i27.i114.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i30.i117.i.i.i.i, ptr align 8 %.sroa.014.0.lcssa.i29.i116.i.i.i.i, i64 %i.kl, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31.i118.i.i.i.i

bb.as:                                            ; preds = %.critedge.i27.i114.i.i.i.i
  %i.kn = icmp eq i64 %i.kl, 8
  br i1 %i.kn, label %bb.at, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31.i118.i.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.ko = load ptr, ptr %.sroa.014.0.lcssa.i29.i116.i.i.i.i, align 8, !tbaa !191
  store ptr %i.ko, ptr %.0.lcssa.i30.i117.i.i.i.i, align 8, !tbaa !191
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31.i118.i.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31.i118.i.i.i.i: ; preds = %bb.at, %bb.as, %bb.ar
  %i.kp = getelementptr inbounds i8, ptr %.0.lcssa.i30.i117.i.i.i.i, i64 %i.kl ; 2 uses
  %i.kq = ptrtoint ptr %.sroa.010.0.lcssa.i28.i115.i.i.i.i to i64
  %i.kr = sub i64 %i.aj, %i.kq                    ; 3 uses
  %i.ks = icmp sgt i64 %i.kr, 8
  br i1 %i.ks, label %bb.au, label %bb.av, !prof !237

bb.au:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31.i118.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.kp, ptr align 8 %.sroa.010.0.lcssa.i28.i115.i.i.i.i, i64 %i.kr, i1 false)
  br label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit125.i.i.i.i

bb.av:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31.i118.i.i.i.i
  %i.kt = icmp eq i64 %i.kr, 8
  br i1 %i.kt, label %bb.aw, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit125.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.ku = load ptr, ptr %.sroa.010.0.lcssa.i28.i115.i.i.i.i, align 8, !tbaa !191
  store ptr %i.ku, ptr %i.kp, align 8, !tbaa !191
  br label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit125.i.i.i.i

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit125.i.i.i.i: ; preds = %bb.aw, %bb.av, %bb.au
  %i.kv = shl nsw i64 %.022.i.i.i.i.i.i, 2        ; 5 uses
  %.not55.i27.i.i.i.i = icmp slt i64 %i.aa, %i.kv
  br i1 %.not55.i27.i.i.i.i, label %._crit_edge.i48.i.i.i.i, label %.lr.ph.i28.i.i.i.i

.lr.ph.i28.i.i.i.i:                               ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit125.i.i.i.i
  %.idx.i29.i.i.i.i = shl i64 %.022.i.i.i.i.i.i, 4 ; 8 uses
  %.idx49.i30.i.i.i.i = shl nsw i64 %.022.i.i.i.i.i.i, 5 ; 2 uses
  %.not50.i31.i.i.i.i = icmp eq i64 %.idx.i29.i.i.i.i, %.idx49.i30.i.i.i.i
  br i1 %.not50.i31.i.i.i.i, label %._crit_edge.i.us.preheader.i68.i.i.i.i, label %.lr.ph.i.preheader.i32.i.i.i.i

._crit_edge.i.us.preheader.i68.i.i.i.i:           ; preds = %.lr.ph.i28.i.i.i.i
  %i.kw = icmp sgt i64 %.022.i.i.i.i.i.i, 0
  %i.kx = icmp sgt i64 %.idx.i29.i.i.i.i, 8
  br label %._crit_edge.i.us.i69.i.i.i.i

._crit_edge.i.us.i69.i.i.i.i:                     ; preds = %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i73.i.i.i.i, %._crit_edge.i.us.preheader.i68.i.i.i.i
  %.sroa.022.057.us.i70.i.i.i.i = phi ptr [ %i.la, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i73.i.i.i.i ], [ %i.r, %._crit_edge.i.us.preheader.i68.i.i.i.i ] ; 2 uses
  %.056.us.i71.i.i.i.i = phi ptr [ %i.ky, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i73.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %._crit_edge.i.us.preheader.i68.i.i.i.i ] ; 2 uses
  %i.ky = getelementptr inbounds i8, ptr %.056.us.i71.i.i.i.i, i64 %.idx.i29.i.i.i.i ; 4 uses
  br i1 %i.kw, label %bb.ax, label %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i72.i.i.i.i, !prof !237

bb.ax:                                            ; preds = %._crit_edge.i.us.i69.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.022.057.us.i70.i.i.i.i, ptr align 8 %.056.us.i71.i.i.i.i, i64 %.idx.i29.i.i.i.i, i1 false)
  br label %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i72.i.i.i.i

_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i72.i.i.i.i: ; preds = %bb.ax, %._crit_edge.i.us.i69.i.i.i.i
  %i.kz = getelementptr inbounds i8, ptr %.sroa.022.057.us.i70.i.i.i.i, i64 %.idx.i29.i.i.i.i ; 2 uses
  br i1 %i.kx, label %bb.ay, label %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i73.i.i.i.i, !prof !238

bb.ay:                                            ; preds = %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i72.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kz, ptr nonnull align 8 %i.ky, i64 %.idx.i29.i.i.i.i, i1 false)
  br label %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i73.i.i.i.i

_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i73.i.i.i.i: ; preds = %bb.ay, %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i72.i.i.i.i
  %i.la = getelementptr inbounds i8, ptr %i.kz, i64 %.idx.i29.i.i.i.i ; 2 uses
  %i.lb = ptrtoint ptr %i.ky to i64
  %i.lc = sub i64 %i.hw, %i.lb
  %i.ld = ashr exact i64 %i.lc, 3                 ; 2 uses
  %.not.us.i74.i.i.i.i = icmp slt i64 %i.ld, %i.kv
  br i1 %.not.us.i74.i.i.i.i, label %._crit_edge.i48.i.i.i.i, label %._crit_edge.i.us.i69.i.i.i.i, !llvm.loop !18

.lr.ph.i.preheader.i32.i.i.i.i:                   ; preds = %.lr.ph.i28.i.i.i.i, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i46.i.i.i.i
  %.sroa.022.057.i33.i.i.i.i = phi ptr [ %i.mf, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i46.i.i.i.i ], [ %i.r, %.lr.ph.i28.i.i.i.i ]
  %.056.i34.i.i.i.i = phi ptr [ %i.lf, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i46.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.lr.ph.i28.i.i.i.i ] ; 3 uses
  %i.le = getelementptr inbounds i8, ptr %.056.i34.i.i.i.i, i64 %.idx.i29.i.i.i.i ; 3 uses
  %i.lf = getelementptr inbounds i8, ptr %.056.i34.i.i.i.i, i64 %.idx49.i30.i.i.i.i ; 4 uses
  br label %.lr.ph.i.i35.i.i.i.i

.lr.ph.i.i35.i.i.i.i:                             ; preds = %.lr.ph.i.i35.i.i.i.i, %.lr.ph.i.preheader.i32.i.i.i.i
  %.023.i.i36.i.i.i.i = phi ptr [ %.1.i.i43.i.i.i.i, %.lr.ph.i.i35.i.i.i.i ], [ %.056.i34.i.i.i.i, %.lr.ph.i.preheader.i32.i.i.i.i ] ; 2 uses
  %.01622.i.i37.i.i.i.i = phi ptr [ %.117.i.i41.i.i.i.i, %.lr.ph.i.i35.i.i.i.i ], [ %i.le, %.lr.ph.i.preheader.i32.i.i.i.i ] ; 2 uses
  %.sroa.0.021.i.i38.i.i.i.i = phi ptr [ %i.lo, %.lr.ph.i.i35.i.i.i.i ], [ %.sroa.022.057.i33.i.i.i.i, %.lr.ph.i.preheader.i32.i.i.i.i ] ; 2 uses
  %i.lg = load ptr, ptr %.01622.i.i37.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.lh = load i64, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.li = getelementptr inbounds i8, ptr %i.lg, i64 %i.lh
  %i.lj = load ptr, ptr %.023.i.i36.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.lk = getelementptr inbounds i8, ptr %i.lj, i64 %i.lh
  %i.ll = load i64, ptr %i.li, align 8, !tbaa !130
  %i.lm = load i64, ptr %i.lk, align 8, !tbaa !130
  %i.ln = icmp ult i64 %i.ll, %i.lm               ; 3 uses
  %.sink.i.i39.i.i.i.i = select i1 %i.ln, ptr %i.lg, ptr %i.lj
  %.117.idx.i.i40.i.i.i.i = select i1 %i.ln, i64 8, i64 0
  %.117.i.i41.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01622.i.i37.i.i.i.i, i64 %.117.idx.i.i40.i.i.i.i ; 5 uses
  %.1.idx.i.i42.i.i.i.i = select i1 %i.ln, i64 0, i64 8
  %.1.i.i43.i.i.i.i = getelementptr inbounds nuw i8, ptr %.023.i.i36.i.i.i.i, i64 %.1.idx.i.i42.i.i.i.i ; 5 uses
  store ptr %.sink.i.i39.i.i.i.i, ptr %.sroa.0.021.i.i38.i.i.i.i, align 8, !tbaa !191
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i38.i.i.i.i, i64 8 ; 4 uses
  %i.lp = icmp ne ptr %.1.i.i43.i.i.i.i, %i.le
  %i.lq = icmp ne ptr %.117.i.i41.i.i.i.i, %i.lf
  %i.lr = select i1 %i.lp, i1 %i.lq, i1 false
  br i1 %i.lr, label %.lr.ph.i.i35.i.i.i.i, label %._crit_edge.i.loopexit.i44.i.i.i.i, !llvm.loop !19

._crit_edge.i.loopexit.i44.i.i.i.i:               ; preds = %.lr.ph.i.i35.i.i.i.i
  %i.ls = ptrtoint ptr %i.le to i64
  %i.lt = ptrtoint ptr %.1.i.i43.i.i.i.i to i64
  %i.lu = sub i64 %i.ls, %i.lt                    ; 4 uses
  %i.lv = icmp sgt i64 %i.lu, 8
  br i1 %i.lv, label %bb.az, label %bb.ba, !prof !237

bb.az:                                            ; preds = %._crit_edge.i.loopexit.i44.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lo, ptr nonnull align 8 %.1.i.i43.i.i.i.i, i64 %i.lu, i1 false)
  br label %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i45.i.i.i.i

bb.ba:                                            ; preds = %._crit_edge.i.loopexit.i44.i.i.i.i
  %i.lw = icmp eq i64 %i.lu, 8
  br i1 %i.lw, label %bb.bb, label %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i45.i.i.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.lx = load ptr, ptr %.1.i.i43.i.i.i.i, align 8, !tbaa !191
  store ptr %i.lx, ptr %i.lo, align 8, !tbaa !191
  br label %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i45.i.i.i.i

_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i45.i.i.i.i: ; preds = %bb.bb, %bb.ba, %bb.az
  %i.ly = getelementptr inbounds i8, ptr %i.lo, i64 %i.lu ; 3 uses
  %i.lz = ptrtoint ptr %i.lf to i64               ; 2 uses
  %i.ma = ptrtoint ptr %.117.i.i41.i.i.i.i to i64
  %i.mb = sub i64 %i.lz, %i.ma                    ; 4 uses
  %i.mc = icmp sgt i64 %i.mb, 8
  br i1 %i.mc, label %bb.bc, label %bb.bd, !prof !237

bb.bc:                                            ; preds = %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i45.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ly, ptr nonnull align 8 %.117.i.i41.i.i.i.i, i64 %i.mb, i1 false)
  br label %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i46.i.i.i.i

bb.bd:                                            ; preds = %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i45.i.i.i.i
  %i.md = icmp eq i64 %i.mb, 8
  br i1 %i.md, label %bb.be, label %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i46.i.i.i.i

bb.be:                                            ; preds = %bb.bd
  %i.me = load ptr, ptr %.117.i.i41.i.i.i.i, align 8, !tbaa !191
  store ptr %i.me, ptr %i.ly, align 8, !tbaa !191
  br label %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i46.i.i.i.i

_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i46.i.i.i.i: ; preds = %bb.be, %bb.bd, %bb.bc
  %i.mf = getelementptr inbounds i8, ptr %i.ly, i64 %i.mb ; 2 uses
  %i.mg = sub i64 %i.hw, %i.lz
  %i.mh = ashr exact i64 %i.mg, 3                 ; 2 uses
  %.not.i47.i.i.i.i = icmp slt i64 %i.mh, %i.kv
  br i1 %.not.i47.i.i.i.i, label %._crit_edge.i48.i.i.i.i, label %.lr.ph.i.preheader.i32.i.i.i.i, !llvm.loop !18

._crit_edge.i48.i.i.i.i:                          ; preds = %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i46.i.i.i.i, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i73.i.i.i.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit125.i.i.i.i
  %.0.lcssa.i49.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit125.i.i.i.i ], [ %i.ky, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i73.i.i.i.i ], [ %i.lf, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i46.i.i.i.i ] ; 3 uses
  %.sroa.022.0.lcssa.i50.i.i.i.i = phi ptr [ %i.r, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit125.i.i.i.i ], [ %i.la, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i73.i.i.i.i ], [ %i.mf, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i46.i.i.i.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d19start_forINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEEZNS7_L7get_mapIS9_EENS6_IPNS8_IT_EESC_IPNSD_IST_EESaISX_EENSI_ISV_EENSK_ISL_IKSV_SZ_EEEEERNS7_7ContextIST_EEEUlRKSR_E_KNS1_16auto_partitionerEE8run_bodyERSR_:bb.a
bb.ce:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.3.i.i.i.i
  %i.rt = load ptr, ptr %.sroa.0.021.i.i22.ptr.3.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.ru = getelementptr inbounds i8, ptr %i.rt, i64 %i.rm
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !130
  %i.rw = icmp ult i64 %i.rq, %i.rv
  br i1 %i.rw, label %.lr.ph.i.i.i.4.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.4.i.i.i.i

.lr.ph.i.i.i.4.i.i.i.i:                           ; preds = %bb.ce, %.lr.ph.i.i.i.4.i.i.i.i
  %i.rx = phi ptr [ %i.sa, %.lr.ph.i.i.i.4.i.i.i.i ], [ %i.rt, %bb.ce ]
  %.sroa.0.010.i.i.i.4.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.4.i.i.i.i, %.lr.ph.i.i.i.4.i.i.i.i ], [ %.sroa.0.021.i.i22.ptr.3.i.i.i.i, %bb.ce ] ; 3 uses
  %.sroa.05.09.i.i.i.4.i.i.i.i = phi ptr [ %.sroa.0.010.i.i.i.4.i.i.i.i, %.lr.ph.i.i.i.4.i.i.i.i ], [ %.sroa.0.021.i.i22.ptr.4.i.i.i.i, %bb.ce ]
  store ptr %i.rx, ptr %.sroa.05.09.i.i.i.4.i.i.i.i, align 8, !tbaa !191
  %.sroa.0.0.i.i.i.4.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i.4.i.i.i.i, i64 -8 ; 2 uses
  %i.ry = load i64, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.rz = getelementptr inbounds i8, ptr %i.rl, i64 %i.ry
  %i.sa = load ptr, ptr %.sroa.0.0.i.i.i.4.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.sb = getelementptr inbounds i8, ptr %i.sa, i64 %i.ry
  %i.sc = load i64, ptr %i.rz, align 8, !tbaa !130
  %i.sd = load i64, ptr %i.sb, align 8, !tbaa !130
  %i.se = icmp ult i64 %i.sc, %i.sd
  br i1 %i.se, label %.lr.ph.i.i.i.4.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.4.i.i.i.i, !llvm.loop !13

bb.cf:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.3.i.i.i.i
  %i.sf = ptrtoint ptr %.sroa.0.021.i.i22.ptr.4.i.i.i.i to i64
  %i.sg = sub i64 %i.sf, %i.no                    ; 3 uses
  %i.sh = ashr exact i64 %i.sg, 3                 ; 2 uses
  %i.si = icmp sgt i64 %i.sh, 1
  br i1 %i.si, label %bb.ci, label %bb.cg, !prof !237

bb.cg:                                            ; preds = %bb.cf
  %i.sj = icmp eq i64 %i.sg, 8
  br i1 %i.sj, label %bb.ch, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.4.i.i.i.i

bb.ch:                                            ; preds = %bb.cg
  store ptr %i.ro, ptr %.sroa.0.021.i.i22.ptr.4.i.i.i.i, align 8, !tbaa !191
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.4.i.i.i.i

bb.ci:                                            ; preds = %bb.cf
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.023.028.i.i.i.i.i, i64 48
  %i.sl = sub nsw i64 0, %i.sh
  %i.sm = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %i.sl
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.sm, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.023.028.i.i.i.i.i, i64 %i.sg, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.4.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.4.i.i.i.i: ; preds = %.lr.ph.i.i.i.4.i.i.i.i, %bb.ci, %bb.ch, %bb.cg, %bb.ce
  %.sink.i.i23.4.i.i.i.i = phi ptr [ %.sroa.023.028.i.i.i.i.i, %bb.ch ], [ %.sroa.023.028.i.i.i.i.i, %bb.ci ], [ %.sroa.023.028.i.i.i.i.i, %bb.cg ], [ %.sroa.0.021.i.i22.ptr.4.i.i.i.i, %bb.ce ], [ %.sroa.0.010.i.i.i.4.i.i.i.i, %.lr.ph.i.i.i.4.i.i.i.i ]
  store ptr %i.rl, ptr %.sink.i.i23.4.i.i.i.i, align 8, !tbaa !191
  %.sroa.0.021.i.i22.ptr.5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.023.028.i.i.i.i.i, i64 48 ; 5 uses
  %i.sn = load ptr, ptr %.sroa.0.021.i.i22.ptr.5.i.i.i.i, align 8, !tbaa !191 ; 3 uses
  %i.so = load i64, ptr %i.a, align 8, !tbaa !42  ; 3 uses
  %i.sp = getelementptr inbounds i8, ptr %i.sn, i64 %i.so
  %i.sq = load ptr, ptr %.sroa.023.028.i.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.sr = getelementptr inbounds i8, ptr %i.sq, i64 %i.so
  %i.ss = load i64, ptr %i.sp, align 8, !tbaa !130 ; 2 uses
  %i.st = load i64, ptr %i.sr, align 8, !tbaa !130
  %i.su = icmp ult i64 %i.ss, %i.st
  br i1 %i.su, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.4.i.i.i.i
  %i.sv = load ptr, ptr %.sroa.0.021.i.i22.ptr.4.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.sw = getelementptr inbounds i8, ptr %i.sv, i64 %i.so
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !130
  %i.sy = icmp ult i64 %i.ss, %i.sx
  br i1 %i.sy, label %.lr.ph.i.i.i.5.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.5.i.i.i.i

.lr.ph.i.i.i.5.i.i.i.i:                           ; preds = %bb.cj, %.lr.ph.i.i.i.5.i.i.i.i
  %i.sz = phi ptr [ %i.tc, %.lr.ph.i.i.i.5.i.i.i.i ], [ %i.sv, %bb.cj ]
  %.sroa.0.010.i.i.i.5.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.5.i.i.i.i, %.lr.ph.i.i.i.5.i.i.i.i ], [ %.sroa.0.021.i.i22.ptr.4.i.i.i.i, %bb.cj ] ; 3 uses
  %.sroa.05.09.i.i.i.5.i.i.i.i = phi ptr [ %.sroa.0.010.i.i.i.5.i.i.i.i, %.lr.ph.i.i.i.5.i.i.i.i ], [ %.sroa.0.021.i.i22.ptr.5.i.i.i.i, %bb.cj ]
  store ptr %i.sz, ptr %.sroa.05.09.i.i.i.5.i.i.i.i, align 8, !tbaa !191
  %.sroa.0.0.i.i.i.5.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i.5.i.i.i.i, i64 -8 ; 2 uses
  %i.ta = load i64, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.tb = getelementptr inbounds i8, ptr %i.sn, i64 %i.ta
  %i.tc = load ptr, ptr %.sroa.0.0.i.i.i.5.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.td = getelementptr inbounds i8, ptr %i.tc, i64 %i.ta
  %i.te = load i64, ptr %i.tb, align 8, !tbaa !130
  %i.tf = load i64, ptr %i.td, align 8, !tbaa !130
  %i.tg = icmp ult i64 %i.te, %i.tf
  br i1 %i.tg, label %.lr.ph.i.i.i.5.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.5.i.i.i.i, !llvm.loop !13

bb.ck:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.4.i.i.i.i
  %i.th = ptrtoint ptr %.sroa.0.021.i.i22.ptr.5.i.i.i.i to i64
  %i.ti = sub i64 %i.th, %i.no                    ; 3 uses
  %i.tj = ashr exact i64 %i.ti, 3                 ; 2 uses
  %i.tk = icmp sgt i64 %i.tj, 1
  br i1 %i.tk, label %bb.cn, label %bb.cl, !prof !237

bb.cl:                                            ; preds = %bb.ck
  %i.tl = icmp eq i64 %i.ti, 8
  br i1 %i.tl, label %bb.cm, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.5.i.i.i.i

bb.cm:                                            ; preds = %bb.cl
  store ptr %i.sq, ptr %.sroa.0.021.i.i22.ptr.5.i.i.i.i, align 8, !tbaa !191
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.5.i.i.i.i

bb.cn:                                            ; preds = %bb.ck
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.023.028.i.i.i.i.i, i64 56
  %i.tn = sub nsw i64 0, %i.tj
  %i.to = getelementptr inbounds [8 x i8], ptr %i.tm, i64 %i.tn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.to, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.023.028.i.i.i.i.i, i64 %i.ti, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.5.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.5.i.i.i.i: ; preds = %.lr.ph.i.i.i.5.i.i.i.i, %bb.cn, %bb.cm, %bb.cl, %bb.cj
  %.sink.i.i23.5.i.i.i.i = phi ptr [ %.sroa.023.028.i.i.i.i.i, %bb.cm ], [ %.sroa.023.028.i.i.i.i.i, %bb.cn ], [ %.sroa.023.028.i.i.i.i.i, %bb.cl ], [ %.sroa.0.021.i.i22.ptr.5.i.i.i.i, %bb.cj ], [ %.sroa.0.010.i.i.i.5.i.i.i.i, %.lr.ph.i.i.i.5.i.i.i.i ]
  store ptr %i.sn, ptr %.sink.i.i23.5.i.i.i.i, align 8, !tbaa !191
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.023.028.i.i.i.i.i, i64 56 ; 3 uses
  %i.tq = ptrtoint ptr %i.tp to i64               ; 3 uses
  %i.tr = sub i64 %i.v, %i.tq
  %.not.i25.i.i.i.i = icmp slt i64 %i.tr, 56
  br i1 %.not.i25.i.i.i.i, label %._crit_edge.i26.i.i.i.i, label %.lr.ph.i.preheader.i20.i.i.i.i, !llvm.loop !14

._crit_edge.i26.i.i.i.i:                          ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.5.i.i.i.i, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_.exit.i.i.i.i.i
  %.sroa.023.0.lcssa.i.i.i.i.i = phi ptr [ %i.ai, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_.exit.i.i.i.i.i ], [ %i.tp, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.5.i.i.i.i ] ; 8 uses
  %.lcssa.i.i.i.i.i = phi i64 [ %i.aj, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_.exit.i.i.i.i.i ], [ %i.tq, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.5.i.i.i.i ]
  %i.ts = icmp eq ptr %.sroa.023.0.lcssa.i.i.i.i.i, %i.t
  %.sroa.0.019.i11.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.023.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %i.tt = icmp eq ptr %.sroa.0.019.i11.i.i.i.i.i, %i.t
  %or.cond26.i.i.i.i.i = select i1 %i.ts, i1 true, i1 %i.tt
  br i1 %or.cond26.i.i.i.i.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_.exit.i.i.i.i, label %.lr.ph.i12.i.i.i.i.i

.lr.ph.i12.i.i.i.i.i:                             ; preds = %._crit_edge.i26.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15.i.i.i.i.i
  %.sroa.0.021.i13.i.i.i.i.i = phi ptr [ %.sroa.0.0.i17.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15.i.i.i.i.i ], [ %.sroa.0.019.i11.i.i.i.i.i, %._crit_edge.i26.i.i.i.i ] ; 6 uses
  %.pn20.i14.i.i.i.i.i = phi ptr [ %.sroa.0.021.i13.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15.i.i.i.i.i ], [ %.sroa.023.0.lcssa.i.i.i.i.i, %._crit_edge.i26.i.i.i.i ] ; 4 uses
  %i.tu = load ptr, ptr %.sroa.0.021.i13.i.i.i.i.i, align 8, !tbaa !191 ; 3 uses
  %i.tv = load i64, ptr %i.a, align 8, !tbaa !42  ; 3 uses
  %i.tw = getelementptr inbounds i8, ptr %i.tu, i64 %i.tv
  %i.tx = load ptr, ptr %.sroa.023.0.lcssa.i.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.ty = getelementptr inbounds i8, ptr %i.tx, i64 %i.tv
  %i.tz = load i64, ptr %i.tw, align 8, !tbaa !130 ; 2 uses
  %i.ua = load i64, ptr %i.ty, align 8, !tbaa !130
  %i.ub = icmp ult i64 %i.tz, %i.ua
  br i1 %i.ub, label %bb.co, label %bb.cs

bb.co:                                            ; preds = %.lr.ph.i12.i.i.i.i.i
  %i.uc = ptrtoint ptr %.sroa.0.021.i13.i.i.i.i.i to i64
  %i.ud = sub i64 %i.uc, %.lcssa.i.i.i.i.i        ; 3 uses
  %i.ue = ashr exact i64 %i.ud, 3                 ; 2 uses
  %i.uf = icmp sgt i64 %i.ue, 1
  br i1 %i.uf, label %bb.cp, label %bb.cq, !prof !237

bb.cp:                                            ; preds = %bb.co
  %i.ug = getelementptr inbounds nuw i8, ptr %.pn20.i14.i.i.i.i.i, i64 16
  %i.uh = sub nsw i64 0, %i.ue
  %i.ui = getelementptr inbounds [8 x i8], ptr %i.ug, i64 %i.uh
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ui, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.023.0.lcssa.i.i.i.i.i, i64 %i.ud, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15.i.i.i.i.i

bb.cq:                                            ; preds = %bb.co
  %i.uj = icmp eq i64 %i.ud, 8
  br i1 %i.uj, label %bb.cr, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15.i.i.i.i.i

bb.cr:                                            ; preds = %bb.cq
  %i.uk = getelementptr inbounds nuw i8, ptr %.pn20.i14.i.i.i.i.i, i64 8
  store ptr %i.tx, ptr %i.uk, align 8, !tbaa !191
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15.i.i.i.i.i

bb.cs:                                            ; preds = %.lr.ph.i12.i.i.i.i.i
  %i.ul = load ptr, ptr %.pn20.i14.i.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.um = getelementptr inbounds i8, ptr %i.ul, i64 %i.tv
  %i.un = load i64, ptr %i.um, align 8, !tbaa !130
  %i.uo = icmp ult i64 %i.tz, %i.un
  br i1 %i.uo, label %.lr.ph.i.i18.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15.i.i.i.i.i

.lr.ph.i.i18.i.i.i.i.i:                           ; preds = %bb.cs, %.lr.ph.i.i18.i.i.i.i.i
  %i.up = phi ptr [ %i.us, %.lr.ph.i.i18.i.i.i.i.i ], [ %i.ul, %bb.cs ]
  %.sroa.0.010.i.i19.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i21.i.i.i.i.i, %.lr.ph.i.i18.i.i.i.i.i ], [ %.pn20.i14.i.i.i.i.i, %bb.cs ] ; 3 uses
  %.sroa.05.09.i.i20.i.i.i.i.i = phi ptr [ %.sroa.0.010.i.i19.i.i.i.i.i, %.lr.ph.i.i18.i.i.i.i.i ], [ %.sroa.0.021.i13.i.i.i.i.i, %bb.cs ]
  store ptr %i.up, ptr %.sroa.05.09.i.i20.i.i.i.i.i, align 8, !tbaa !191
  %.sroa.0.0.i.i21.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i19.i.i.i.i.i, i64 -8 ; 2 uses
  %i.uq = load i64, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.ur = getelementptr inbounds i8, ptr %i.tu, i64 %i.uq
  %i.us = load ptr, ptr %.sroa.0.0.i.i21.i.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.ut = getelementptr inbounds i8, ptr %i.us, i64 %i.uq
  %i.uu = load i64, ptr %i.ur, align 8, !tbaa !130
  %i.uv = load i64, ptr %i.ut, align 8, !tbaa !130
  %i.uw = icmp ult i64 %i.uu, %i.uv
  br i1 %i.uw, label %.lr.ph.i.i18.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15.i.i.i.i.i, !llvm.loop !13

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15.i.i.i.i.i: ; preds = %.lr.ph.i.i18.i.i.i.i.i, %bb.cs, %bb.cr, %bb.cq, %bb.cp
  %.sink.i16.i.i.i.i.i = phi ptr [ %.sroa.023.0.lcssa.i.i.i.i.i, %bb.cr ], [ %.sroa.023.0.lcssa.i.i.i.i.i, %bb.cp ], [ %.sroa.023.0.lcssa.i.i.i.i.i, %bb.cq ], [ %.sroa.0.021.i13.i.i.i.i.i, %bb.cs ], [ %.sroa.0.010.i.i19.i.i.i.i.i, %.lr.ph.i.i18.i.i.i.i.i ]
  store ptr %i.tu, ptr %.sink.i16.i.i.i.i.i, align 8, !tbaa !191
  %.sroa.0.0.i17.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i13.i.i.i.i.i, i64 8 ; 2 uses
  %i.ux = icmp eq ptr %.sroa.0.0.i17.i.i.i.i.i, %i.t
  br i1 %i.ux, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_.exit.i.i.i.i, label %.lr.ph.i12.i.i.i.i.i, !llvm.loop !15

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_.exit.i.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15.i.i.i.i.i, %._crit_edge.i26.i.i.i.i
  %i.uy = icmp sgt i64 %i.nm, 7
  br i1 %i.uy, label %.lr.ph.i13.i.preheader.i.i.i.i, label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SJ_SL_T1_.exit.i.i.i.i

.lr.ph.i13.i.preheader.i.i.i.i:                   ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_.exit.i.i.i.i
  %i.uz = ptrtoint ptr %i.nn to i64               ; 3 uses
  br label %.lr.ph.i13.i.i.i.i.i

.lr.ph.i13.i.i.i.i.i:                             ; preds = %_ZSt17__merge_sort_loopIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit.i.i.i.i, %.lr.ph.i13.i.preheader.i.i.i.i
  %.022.i14.i.i.i.i.i = phi i64 [ %i.xy, %_ZSt17__merge_sort_loopIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit.i.i.i.i ], [ 7, %.lr.ph.i13.i.preheader.i.i.i.i ] ; 8 uses
  %i.va = shl nsw i64 %.022.i14.i.i.i.i.i, 1      ; 6 uses
  %.not60.i.i.i.i.i = icmp slt i64 %i.nm, %i.va
  br i1 %.not60.i.i.i.i.i, label %._crit_edge.i15.i.i.i.i, label %.lr.ph.i9.i.i.i.i

.lr.ph.i9.i.i.i.i:                                ; preds = %.lr.ph.i13.i.i.i.i.i
  %.idx.i10.i.i.i.i = shl i64 %.022.i14.i.i.i.i.i, 3 ; 12 uses
  %.idx55.i.i.i.i.i = shl i64 %.022.i14.i.i.i.i.i, 4 ; 2 uses
  %i.vb = icmp eq i64 %.idx.i10.i.i.i.i, %.idx55.i.i.i.i.i
  br i1 %i.vb, label %.critedge.i.us.preheader.i.i.i.i.i, label %.lr.ph.i.preheader.i11.i.i.i.i

.critedge.i.us.preheader.i.i.i.i.i:               ; preds = %.lr.ph.i9.i.i.i.i
  %i.vc = icmp sgt i64 %.idx.i10.i.i.i.i, 8
  br i1 %i.vc, label %.critedge.i.us.i.us.i.i.i.i, label %.critedge.i.us.preheader.i.split.i.i.i.i, !prof !237

.critedge.i.us.i.us.i.i.i.i:                      ; preds = %.critedge.i.us.preheader.i.i.i.i.i, %.critedge.i.us.i.us.i.i.i.i
  %.062.us.i.us.i.i.i.i = phi ptr [ %5, %.critedge.i.us.i.us.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.critedge.i.us.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.044.061.us.i.us.i.i.i.i = phi ptr [ %i.vd, %.critedge.i.us.i.us.i.i.i.i ], [ %i.ai, %.critedge.i.us.preheader.i.i.i.i.i ] ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.sroa.044.061.us.i.us.i.i.i.i, i64 %.idx.i10.i.i.i.i ; 4 uses
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.062.us.i.us.i.i.i.i, ptr align 8 %.sroa.044.061.us.i.us.i.i.i.i, i64 %.idx.i10.i.i.i.i, i1 false)
  %i.ve = getelementptr inbounds nuw i8, ptr %.062.us.i.us.i.i.i.i, i64 %.idx.i10.i.i.i.i ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ve, ptr nonnull align 8 %i.vd, i64 %.idx.i10.i.i.i.i, i1 false)
  %5 = getelementptr inbounds nuw i8, ptr %i.ve, i64 %.idx.i10.i.i.i.i ; 2 uses
  %i.vf = ptrtoint ptr %i.vd to i64
  %i.vg = sub i64 %i.v, %i.vf
  %i.vh = ashr exact i64 %i.vg, 3                 ; 2 uses
  %.not.us.i18.us.i.i.i.i = icmp slt i64 %i.vh, %i.va
  br i1 %.not.us.i18.us.i.i.i.i, label %._crit_edge.i15.i.i.i.i, label %.critedge.i.us.i.us.i.i.i.i, !llvm.loop !16

.critedge.i.us.preheader.i.split.i.i.i.i:         ; preds = %.critedge.i.us.preheader.i.i.i.i.i
  %i.vi = icmp eq i64 %.idx.i10.i.i.i.i, 8
  br i1 %i.vi, label %.critedge.i.us.i.us68.preheader.i.i.i.i, label %.critedge.i.us.i.i.i.i.i

.critedge.i.us.i.us68.preheader.i.i.i.i:          ; preds = %.critedge.i.us.preheader.i.split.i.i.i.i
  %.pre141.i.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !191
  br label %.critedge.i.us.i.us68.i.i.i.i

.critedge.i.us.i.us68.i.i.i.i:                    ; preds = %.critedge.i.us.i.us68.i.i.i.i, %.critedge.i.us.i.us68.preheader.i.i.i.i
  %i.vj = phi ptr [ %i.vm, %.critedge.i.us.i.us68.i.i.i.i ], [ %.pre141.i.i.i.i, %.critedge.i.us.i.us68.preheader.i.i.i.i ]
  %.062.us.i.us69.i.i.i.i = phi ptr [ %6, %.critedge.i.us.i.us68.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.critedge.i.us.i.us68.preheader.i.i.i.i ] ; 3 uses
  %.sroa.044.061.us.i.us70.i.i.i.i = phi ptr [ %i.vk, %.critedge.i.us.i.us68.i.i.i.i ], [ %i.ai, %.critedge.i.us.i.us68.preheader.i.i.i.i ]
  %i.vk = getelementptr inbounds nuw i8, ptr %.sroa.044.061.us.i.us70.i.i.i.i, i64 8 ; 4 uses
  store ptr %i.vj, ptr %.062.us.i.us69.i.i.i.i, align 8, !tbaa !191
  %i.vl = getelementptr inbounds nuw i8, ptr %.062.us.i.us69.i.i.i.i, i64 8
  %i.vm = load ptr, ptr %i.vk, align 8, !tbaa !191 ; 2 uses
  store ptr %i.vm, ptr %i.vl, align 8, !tbaa !191
  %6 = getelementptr inbounds nuw i8, ptr %.062.us.i.us69.i.i.i.i, i64 16 ; 2 uses
  %i.vn = ptrtoint ptr %i.vk to i64
  %i.vo = sub i64 %i.v, %i.vn
  %i.vp = ashr exact i64 %i.vo, 3                 ; 2 uses
  %.not.us.i18.us72.i.i.i.i = icmp slt i64 %i.vp, %i.va
  br i1 %.not.us.i18.us72.i.i.i.i, label %._crit_edge.i15.i.i.i.i, label %.critedge.i.us.i.us68.i.i.i.i, !llvm.loop !16

.critedge.i.us.i.i.i.i.i:                         ; preds = %.critedge.i.us.preheader.i.split.i.i.i.i, %.critedge.i.us.i.i.i.i.i
  %.062.us.i.i.i.i.i = phi ptr [ %i.vr, %.critedge.i.us.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.critedge.i.us.preheader.i.split.i.i.i.i ]
  %.sroa.044.061.us.i.i.i.i.i = phi ptr [ %7, %.critedge.i.us.i.i.i.i.i ], [ %i.ai, %.critedge.i.us.preheader.i.split.i.i.i.i ]
  %7 = getelementptr inbounds i8, ptr %.sroa.044.061.us.i.i.i.i.i, i64 %.idx.i10.i.i.i.i ; 3 uses
  %i.vq = getelementptr inbounds i8, ptr %.062.us.i.i.i.i.i, i64 %.idx.i10.i.i.i.i
  %i.vr = getelementptr inbounds i8, ptr %i.vq, i64 %.idx.i10.i.i.i.i ; 2 uses
  %i.vs = ptrtoint ptr %7 to i64
  %i.vt = sub i64 %i.v, %i.vs
  %i.vu = ashr exact i64 %i.vt, 3                 ; 2 uses
  %.not.us.i18.i.i.i.i = icmp slt i64 %i.vu, %i.va
  br i1 %.not.us.i18.i.i.i.i, label %._crit_edge.i15.i.i.i.i, label %.critedge.i.us.i.i.i.i.i, !llvm.loop !16

.lr.ph.i.preheader.i11.i.i.i.i:                   ; preds = %.lr.ph.i9.i.i.i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i
  %.062.i.i.i.i.i = phi ptr [ %i.wv, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.lr.ph.i9.i.i.i.i ]
  %.sroa.044.061.i.i.i.i.i = phi ptr [ %i.vw, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i ], [ %i.ai, %.lr.ph.i9.i.i.i.i ] ; 3 uses
  %i.vv = getelementptr inbounds i8, ptr %.sroa.044.061.i.i.i.i.i, i64 %.idx.i10.i.i.i.i ; 3 uses
  %i.vw = getelementptr inbounds i8, ptr %.sroa.044.061.i.i.i.i.i, i64 %.idx55.i.i.i.i.i ; 4 uses
  br label %.lr.ph.i.i12.i.i.i.i

.lr.ph.i.i12.i.i.i.i:                             ; preds = %.lr.ph.i.i12.i.i.i.i, %.lr.ph.i.preheader.i11.i.i.i.i
  %.020.i.i.i.i.i.i = phi ptr [ %i.wf, %.lr.ph.i.i12.i.i.i.i ], [ %.062.i.i.i.i.i, %.lr.ph.i.preheader.i11.i.i.i.i ] ; 2 uses
  %.sroa.014.019.i.i.i.i.i.i = phi ptr [ %.sroa.014.1.i.i.i.i.i.i, %.lr.ph.i.i12.i.i.i.i ], [ %.sroa.044.061.i.i.i.i.i, %.lr.ph.i.preheader.i11.i.i.i.i ] ; 2 uses
  %.sroa.010.018.i.i.i.i.i.i = phi ptr [ %.sroa.010.1.i.i.i.i.i.i, %.lr.ph.i.i12.i.i.i.i ], [ %i.vv, %.lr.ph.i.preheader.i11.i.i.i.i ] ; 2 uses
  %i.vx = load ptr, ptr %.sroa.010.018.i.i.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.vy = load i64, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.vz = getelementptr inbounds i8, ptr %i.vx, i64 %i.vy
  %i.wa = load ptr, ptr %.sroa.014.019.i.i.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.wb = getelementptr inbounds i8, ptr %i.wa, i64 %i.vy
  %i.wc = load i64, ptr %i.vz, align 8, !tbaa !130
  %i.wd = load i64, ptr %i.wb, align 8, !tbaa !130
  %i.we = icmp ult i64 %i.wc, %i.wd               ; 3 uses
  %.sink.i.i13.i.i.i.i = select i1 %i.we, ptr %i.vx, ptr %i.wa
  %.sroa.010.1.idx.i.i.i.i.i.i = select i1 %i.we, i64 8, i64 0
  %.sroa.010.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i.i.i.i.i, i64 %.sroa.010.1.idx.i.i.i.i.i.i ; 5 uses
  %.sroa.014.1.idx.i.i.i.i.i.i = select i1 %i.we, i64 0, i64 8
  %.sroa.014.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i.i.i.i.i.i, i64 %.sroa.014.1.idx.i.i.i.i.i.i ; 5 uses
  store ptr %.sink.i.i13.i.i.i.i, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !191
  %i.wf = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i.i, i64 8 ; 4 uses
  %i.wg = icmp eq ptr %.sroa.014.1.i.i.i.i.i.i, %i.vv
  %i.wh = icmp eq ptr %.sroa.010.1.i.i.i.i.i.i, %i.vw
  %or.cond.i.i.i.i.i.i = select i1 %i.wg, i1 true, i1 %i.wh
  br i1 %or.cond.i.i.i.i.i.i, label %.critedge.i.loopexit.i.i.i.i.i, label %.lr.ph.i.i12.i.i.i.i, !llvm.loop !17

.critedge.i.loopexit.i.i.i.i.i:                   ; preds = %.lr.ph.i.i12.i.i.i.i
  %i.wi = ptrtoint ptr %i.vv to i64
  %i.wj = ptrtoint ptr %.sroa.014.1.i.i.i.i.i.i to i64
  %i.wk = sub i64 %i.wi, %i.wj                    ; 4 uses
  %i.wl = icmp sgt i64 %i.wk, 8
  br i1 %i.wl, label %bb.ct, label %bb.cu, !prof !237

bb.ct:                                            ; preds = %.critedge.i.loopexit.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.wf, ptr nonnull align 8 %.sroa.014.1.i.i.i.i.i.i, i64 %i.wk, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i.i.i.i.i

bb.cu:                                            ; preds = %.critedge.i.loopexit.i.i.i.i.i
  %i.wm = icmp eq i64 %i.wk, 8
  br i1 %i.wm, label %bb.cv, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i.i.i.i.i

bb.cv:                                            ; preds = %bb.cu
  %i.wn = load ptr, ptr %.sroa.014.1.i.i.i.i.i.i, align 8, !tbaa !191
  store ptr %i.wn, ptr %i.wf, align 8, !tbaa !191
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i.i.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i.i.i.i.i: ; preds = %bb.cv, %bb.cu, %bb.ct
  %i.wo = getelementptr inbounds i8, ptr %i.wf, i64 %i.wk ; 3 uses
  %i.wp = ptrtoint ptr %i.vw to i64               ; 2 uses
  %i.wq = ptrtoint ptr %.sroa.010.1.i.i.i.i.i.i to i64
  %i.wr = sub i64 %i.wp, %i.wq                    ; 4 uses
  %i.ws = icmp sgt i64 %i.wr, 8
  br i1 %i.ws, label %bb.cw, label %bb.cx, !prof !237

bb.cw:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.wo, ptr nonnull align 8 %.sroa.010.1.i.i.i.i.i.i, i64 %i.wr, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i

bb.cx:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i.i.i.i.i
  %i.wt = icmp eq i64 %i.wr, 8
  br i1 %i.wt, label %bb.cy, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i

bb.cy:                                            ; preds = %bb.cx
  %i.wu = load ptr, ptr %.sroa.010.1.i.i.i.i.i.i, align 8, !tbaa !191
  store ptr %i.wu, ptr %i.wo, align 8, !tbaa !191
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i: ; preds = %bb.cy, %bb.cx, %bb.cw
  %i.wv = getelementptr inbounds i8, ptr %i.wo, i64 %i.wr ; 2 uses
  %i.ww = sub i64 %i.v, %i.wp
  %i.wx = ashr exact i64 %i.ww, 3                 ; 2 uses
  %.not.i14.i.i.i.i = icmp slt i64 %i.wx, %i.va
  br i1 %.not.i14.i.i.i.i, label %._crit_edge.i15.i.i.i.i, label %.lr.ph.i.preheader.i11.i.i.i.i, !llvm.loop !16

._crit_edge.i15.i.i.i.i:                          ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i, %.critedge.i.us.i.i.i.i.i, %.critedge.i.us.i.us68.i.i.i.i, %.critedge.i.us.i.us.i.i.i.i, %.lr.ph.i13.i.i.i.i.i
  %.sroa.044.0.lcssa.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i13.i.i.i.i.i ], [ %i.vd, %.critedge.i.us.i.us.i.i.i.i ], [ %i.vk, %.critedge.i.us.i.us68.i.i.i.i ], [ %7, %.critedge.i.us.i.i.i.i.i ], [ %i.vw, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i16.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %.lr.ph.i13.i.i.i.i.i ], [ %5, %.critedge.i.us.i.us.i.i.i.i ], [ %6, %.critedge.i.us.i.us68.i.i.i.i ], [ %i.vr, %.critedge.i.us.i.i.i.i.i ], [ %i.wv, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i ] ; 2 uses
  %.lcssa58.i.i.i.i.i = phi i64 [ %i.nm, %.lr.ph.i13.i.i.i.i.i ], [ %i.vh, %.critedge.i.us.i.us.i.i.i.i ], [ %i.vp, %.critedge.i.us.i.us68.i.i.i.i ], [ %i.vu, %.critedge.i.us.i.i.i.i.i ], [ %i.wx, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i ]
  %.sroa.speculated.i17.i.i.i.i = call i64 @llvm.smin.i64(i64 %.022.i14.i.i.i.i.i, i64 %.lcssa58.i.i.i.i.i) ; 2 uses
  %.idx56.i.i.i.i.i = shl nsw i64 %.sroa.speculated.i17.i.i.i.i, 3
  %i.wy = getelementptr inbounds i8, ptr %.sroa.044.0.lcssa.i.i.i.i.i, i64 %.idx56.i.i.i.i.i ; 5 uses
  %i.wz = icmp eq i64 %.sroa.speculated.i17.i.i.i.i, 0
  %i.xa = icmp eq ptr %i.wy, %i.t
  %or.cond17.i16.i.i.i.i.i = select i1 %i.wz, i1 true, i1 %i.xa
  br i1 %or.cond17.i16.i.i.i.i.i, label %.critedge.i27.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i:                             ; preds = %._crit_edge.i15.i.i.i.i, %.lr.ph.i17.i.i.i.i.i
  %.020.i18.i.i.i.i.i = phi ptr [ %i.xj, %.lr.ph.i17.i.i.i.i.i ], [ %.0.lcssa.i16.i.i.i.i, %._crit_edge.i15.i.i.i.i ] ; 2 uses
  %.sroa.014.019.i19.i.i.i.i.i = phi ptr [ %.sroa.014.1.i25.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i ], [ %.sroa.044.0.lcssa.i.i.i.i.i, %._crit_edge.i15.i.i.i.i ] ; 2 uses
  %.sroa.010.018.i20.i.i.i.i.i = phi ptr [ %.sroa.010.1.i23.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i ], [ %i.wy, %._crit_edge.i15.i.i.i.i ] ; 2 uses
  %i.xb = load ptr, ptr %.sroa.010.018.i20.i.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.xc = load i64, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.xd = getelementptr inbounds i8, ptr %i.xb, i64 %i.xc
  %i.xe = load ptr, ptr %.sroa.014.019.i19.i.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.xf = getelementptr inbounds i8, ptr %i.xe, i64 %i.xc
  %i.xg = load i64, ptr %i.xd, align 8, !tbaa !130
  %i.xh = load i64, ptr %i.xf, align 8, !tbaa !130
  %i.xi = icmp ult i64 %i.xg, %i.xh               ; 3 uses
  %.sink.i21.i.i.i.i.i = select i1 %i.xi, ptr %i.xb, ptr %i.xe
  %.sroa.010.1.idx.i22.i.i.i.i.i = select i1 %i.xi, i64 8, i64 0
  %.sroa.010.1.i23.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i20.i.i.i.i.i, i64 %.sroa.010.1.idx.i22.i.i.i.i.i ; 3 uses
  %.sroa.014.1.idx.i24.i.i.i.i.i = select i1 %i.xi, i64 0, i64 8
  %.sroa.014.1.i25.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i19.i.i.i.i.i, i64 %.sroa.014.1.idx.i24.i.i.i.i.i ; 3 uses
  store ptr %.sink.i21.i.i.i.i.i, ptr %.020.i18.i.i.i.i.i, align 8, !tbaa !191
  %i.xj = getelementptr inbounds nuw i8, ptr %.020.i18.i.i.i.i.i, i64 8 ; 2 uses
  %i.xk = icmp eq ptr %.sroa.014.1.i25.i.i.i.i.i, %i.wy
  %i.xl = icmp eq ptr %.sroa.010.1.i23.i.i.i.i.i, %i.t
  %or.cond.i26.i.i.i.i.i = select i1 %i.xk, i1 true, i1 %i.xl
  br i1 %or.cond.i26.i.i.i.i.i, label %.critedge.i27.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i, !llvm.loop !17

.critedge.i27.i.i.i.i.i:                          ; preds = %.lr.ph.i17.i.i.i.i.i, %._crit_edge.i15.i.i.i.i
  %.sroa.010.0.lcssa.i28.i.i.i.i.i = phi ptr [ %i.wy, %._crit_edge.i15.i.i.i.i ], [ %.sroa.010.1.i23.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i ] ; 3 uses
  %.sroa.014.0.lcssa.i29.i.i.i.i.i = phi ptr [ %.sroa.044.0.lcssa.i.i.i.i.i, %._crit_edge.i15.i.i.i.i ], [ %.sroa.014.1.i25.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i30.i.i.i.i.i = phi ptr [ %.0.lcssa.i16.i.i.i.i, %._crit_edge.i15.i.i.i.i ], [ %i.xj, %.lr.ph.i17.i.i.i.i.i ] ; 3 uses
  %i.xm = ptrtoint ptr %i.wy to i64
  %i.xn = ptrtoint ptr %.sroa.014.0.lcssa.i29.i.i.i.i.i to i64
  %i.xo = sub i64 %i.xm, %i.xn                    ; 4 uses
  %i.xp = icmp sgt i64 %i.xo, 8
  br i1 %i.xp, label %bb.cz, label %bb.da, !prof !237

bb.cz:                                            ; preds = %.critedge.i27.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i30.i.i.i.i.i, ptr align 8 %.sroa.014.0.lcssa.i29.i.i.i.i.i, i64 %i.xo, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31.i.i.i.i.i

bb.da:                                            ; preds = %.critedge.i27.i.i.i.i.i
  %i.xq = icmp eq i64 %i.xo, 8
  br i1 %i.xq, label %bb.db, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31.i.i.i.i.i

bb.db:                                            ; preds = %bb.da
  %i.xr = load ptr, ptr %.sroa.014.0.lcssa.i29.i.i.i.i.i, align 8, !tbaa !191
  store ptr %i.xr, ptr %.0.lcssa.i30.i.i.i.i.i, align 8, !tbaa !191
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31.i.i.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31.i.i.i.i.i: ; preds = %bb.db, %bb.da, %bb.cz
  %i.xs = getelementptr inbounds i8, ptr %.0.lcssa.i30.i.i.i.i.i, i64 %i.xo ; 2 uses
  %i.xt = ptrtoint ptr %.sroa.010.0.lcssa.i28.i.i.i.i.i to i64
  %i.xu = sub i64 %i.v, %i.xt                     ; 3 uses
  %i.xv = icmp sgt i64 %i.xu, 8
  br i1 %i.xv, label %bb.dc, label %bb.dd, !prof !237

bb.dc:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.xs, ptr align 8 %.sroa.010.0.lcssa.i28.i.i.i.i.i, i64 %i.xu, i1 false)
  br label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit.i.i.i.i

bb.dd:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31.i.i.i.i.i
  %i.xw = icmp eq i64 %i.xu, 8
  br i1 %i.xw, label %bb.de, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit.i.i.i.i

bb.de:                                            ; preds = %bb.dd
  %i.xx = load ptr, ptr %.sroa.010.0.lcssa.i28.i.i.i.i.i, align 8, !tbaa !191
  store ptr %i.xx, ptr %i.xs, align 8, !tbaa !191
  br label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit.i.i.i.i

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit.i.i.i.i: ; preds = %bb.de, %bb.dd, %bb.dc
  %i.xy = shl nsw i64 %.022.i14.i.i.i.i.i, 2      ; 5 uses
  %.not55.i.i.i.i.i = icmp slt i64 %i.nm, %i.xy
  br i1 %.not55.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i3.i.i.i.i

.lr.ph.i3.i.i.i.i:                                ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit.i.i.i.i
  %.idx.i.i.i.i.i = shl i64 %.022.i14.i.i.i.i.i, 4 ; 8 uses
  %.idx49.i.i.i.i.i = shl nsw i64 %.022.i14.i.i.i.i.i, 5 ; 2 uses
  %.not50.i.i.i.i.i = icmp eq i64 %.idx.i.i.i.i.i, %.idx49.i.i.i.i.i
  br i1 %.not50.i.i.i.i.i, label %._crit_edge.i.us.preheader.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i

._crit_edge.i.us.preheader.i.i.i.i.i:             ; preds = %.lr.ph.i3.i.i.i.i
  %i.xz = icmp sgt i64 %.022.i14.i.i.i.i.i, 0
  %i.ya = icmp sgt i64 %.idx.i.i.i.i.i, 8
  br label %._crit_edge.i.us.i.i.i.i.i

._crit_edge.i.us.i.i.i.i.i:                       ; preds = %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i.i.i.i.i, %._crit_edge.i.us.preheader.i.i.i.i.i
  %.sroa.022.057.us.i.i.i.i.i = phi ptr [ %i.yd, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i.i.i.i.i ], [ %i.ai, %._crit_edge.i.us.preheader.i.i.i.i.i ] ; 2 uses
  %.056.us.i.i.i.i.i = phi ptr [ %i.yb, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %._crit_edge.i.us.preheader.i.i.i.i.i ] ; 2 uses
  %i.yb = getelementptr inbounds i8, ptr %.056.us.i.i.i.i.i, i64 %.idx.i.i.i.i.i ; 4 uses
  br i1 %i.xz, label %bb.df, label %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i.i.i.i.i, !prof !237

bb.df:                                            ; preds = %._crit_edge.i.us.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.022.057.us.i.i.i.i.i, ptr align 8 %.056.us.i.i.i.i.i, i64 %.idx.i.i.i.i.i, i1 false)
  br label %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i.i.i.i.i

_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i.i.i.i.i: ; preds = %bb.df, %._crit_edge.i.us.i.i.i.i.i
  %i.yc = getelementptr inbounds i8, ptr %.sroa.022.057.us.i.i.i.i.i, i64 %.idx.i.i.i.i.i ; 2 uses
  br i1 %i.ya, label %bb.dg, label %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i.i.i.i.i, !prof !238

bb.dg:                                            ; preds = %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yc, ptr nonnull align 8 %i.yb, i64 %.idx.i.i.i.i.i, i1 false)
  br label %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i.i.i.i.i

_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i.i.i.i.i: ; preds = %bb.dg, %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i.i.i.i.i
  %i.yd = getelementptr inbounds i8, ptr %i.yc, i64 %.idx.i.i.i.i.i ; 2 uses
  %i.ye = ptrtoint ptr %i.yb to i64
  %i.yf = sub i64 %i.uz, %i.ye
  %i.yg = ashr exact i64 %i.yf, 3                 ; 2 uses
  %.not.us.i.i.i.i.i = icmp slt i64 %i.yg, %i.xy
  br i1 %.not.us.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %._crit_edge.i.us.i.i.i.i.i, !llvm.loop !18

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %.lr.ph.i3.i.i.i.i, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i
  %.sroa.022.057.i.i.i.i.i = phi ptr [ %i.zi, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i ], [ %i.ai, %.lr.ph.i3.i.i.i.i ]
  %.056.i.i.i.i.i = phi ptr [ %i.yi, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.lr.ph.i3.i.i.i.i ] ; 3 uses
  %i.yh = getelementptr inbounds i8, ptr %.056.i.i.i.i.i, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.yi = getelementptr inbounds i8, ptr %.056.i.i.i.i.i, i64 %.idx49.i.i.i.i.i ; 4 uses
  br label %.lr.ph.i.i4.i.i.i.i

.lr.ph.i.i4.i.i.i.i:                              ; preds = %.lr.ph.i.i4.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.023.i.i.i.i.i.i = phi ptr [ %.1.i.i7.i.i.i.i, %.lr.ph.i.i4.i.i.i.i ], [ %.056.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %.01622.i.i.i.i.i.i = phi ptr [ %.117.i.i.i.i.i.i, %.lr.ph.i.i4.i.i.i.i ], [ %i.yh, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.0.021.i.i.i.i.i.i = phi ptr [ %i.yr, %.lr.ph.i.i4.i.i.i.i ], [ %.sroa.022.057.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.yj = load ptr, ptr %.01622.i.i.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.yk = load i64, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.yl = getelementptr inbounds i8, ptr %i.yj, i64 %i.yk
  %i.ym = load ptr, ptr %.023.i.i.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %i.yn = getelementptr inbounds i8, ptr %i.ym, i64 %i.yk
  %i.yo = load i64, ptr %i.yl, align 8, !tbaa !130
  %i.yp = load i64, ptr %i.yn, align 8, !tbaa !130
  %i.yq = icmp ult i64 %i.yo, %i.yp               ; 3 uses
  %.sink.i.i5.i.i.i.i = select i1 %i.yq, ptr %i.yj, ptr %i.ym
  %.117.idx.i.i.i.i.i.i = select i1 %i.yq, i64 8, i64 0
  %.117.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01622.i.i.i.i.i.i, i64 %.117.idx.i.i.i.i.i.i ; 5 uses
  %.1.idx.i.i6.i.i.i.i = select i1 %i.yq, i64 0, i64 8
  %.1.i.i7.i.i.i.i = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i.i.i, i64 %.1.idx.i.i6.i.i.i.i ; 5 uses
  store ptr %.sink.i.i5.i.i.i.i, ptr %.sroa.0.021.i.i.i.i.i.i, align 8, !tbaa !191
  %i.yr = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i.i.i.i, i64 8 ; 4 uses
  %i.ys = icmp ne ptr %.1.i.i7.i.i.i.i, %i.yh
  %i.yt = icmp ne ptr %.117.i.i.i.i.i.i, %i.yi
  %i.yu = select i1 %i.ys, i1 %i.yt, i1 false
  br i1 %i.yu, label %.lr.ph.i.i4.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i, !llvm.loop !19

._crit_edge.i.loopexit.i.i.i.i.i:                 ; preds = %.lr.ph.i.i4.i.i.i.i
  %i.yv = ptrtoint ptr %i.yh to i64
  %i.yw = ptrtoint ptr %.1.i.i7.i.i.i.i to i64
  %i.yx = sub i64 %i.yv, %i.yw                    ; 4 uses
  %i.yy = icmp sgt i64 %i.yx, 8
  br i1 %i.yy, label %bb.dh, label %bb.di, !prof !237

bb.dh:                                            ; preds = %._crit_edge.i.loopexit.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yr, ptr nonnull align 8 %.1.i.i7.i.i.i.i, i64 %i.yx, i1 false)
  br label %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i.i.i.i.i

bb.di:                                            ; preds = %._crit_edge.i.loopexit.i.i.i.i.i
  %i.yz = icmp eq i64 %i.yx, 8
  br i1 %i.yz, label %bb.dj, label %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i.i.i.i.i

bb.dj:                                            ; preds = %bb.di
  %i.za = load ptr, ptr %.1.i.i7.i.i.i.i, align 8, !tbaa !191
  store ptr %i.za, ptr %i.yr, align 8, !tbaa !191
  br label %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i.i.i.i.i

_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i.i.i.i.i: ; preds = %bb.dj, %bb.di, %bb.dh
  %i.zb = getelementptr inbounds i8, ptr %i.yr, i64 %i.yx ; 3 uses
  %i.zc = ptrtoint ptr %i.yi to i64               ; 2 uses
  %i.zd = ptrtoint ptr %.117.i.i.i.i.i.i to i64
  %i.ze = sub i64 %i.zc, %i.zd                    ; 4 uses
  %i.zf = icmp sgt i64 %i.ze, 8
  br i1 %i.zf, label %bb.dk, label %bb.dl, !prof !237

bb.dk:                                            ; preds = %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zb, ptr nonnull align 8 %.117.i.i.i.i.i.i, i64 %i.ze, i1 false)
  br label %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i

bb.dl:                                            ; preds = %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i.i.i.i.i
  %i.zg = icmp eq i64 %i.ze, 8
  br i1 %i.zg, label %bb.dm, label %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dl
  %i.zh = load ptr, ptr %.117.i.i.i.i.i.i, align 8, !tbaa !191
  store ptr %i.zh, ptr %i.zb, align 8, !tbaa !191
  br label %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i

_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i: ; preds = %bb.dm, %bb.dl, %bb.dk
  %i.zi = getelementptr inbounds i8, ptr %i.zb, i64 %i.ze ; 2 uses
  %i.zj = sub i64 %i.uz, %i.zc
  %i.zk = ashr exact i64 %i.zj, 3                 ; 2 uses
  %.not.i8.i.i.i.i = icmp slt i64 %i.zk, %i.xy
  br i1 %.not.i8.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i, !llvm.loop !18

._crit_edge.i.i.i.i.i:                            ; preds = %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i.i.i.i.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit.i.i.i.i ], [ %i.yb, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i.i.i.i.i ], [ %i.yi, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.022.0.lcssa.i.i.i.i.i = phi ptr [ %i.ai, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_.exit.i.i.i.i ], [ %i.yd, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us.i.i.i.i.i ], [ %i.zi, %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.i.i.i.i.i ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SJ_SL_SL_T1_T2_:bb.a
  %i.bk = getelementptr inbounds i8, ptr %.0.i, i64 -8
  br label %bb.t, !llvm.loop !22

_ZSt21__move_merge_adaptiveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_SL_T1_T2_.exit: ; preds = %bb.f, %bb.z, %bb.y, %bb.x, %bb.w, %bb.r, %bb.q, %bb.p, %bb.o, %bb.i, %bb.h, %bb.g, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3
  %.not27 = icmp slt i64 %i.d, %2
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl nsw i64 %2, 3                       ; 2 uses
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.us, label %.lr.ph.i.preheader

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.us: ; preds = %.lr.ph, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.us
  %.sroa.023.028.us = phi ptr [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.us ], [ %0, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.023.028.us, i64 %.idx ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = sub i64 %i.a, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not.us = icmp slt i64 %i.h, %2
  br i1 %.not.us, label %._crit_edge, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.us, !llvm.loop !14

.lr.ph.i.preheader:                               ; preds = %.lr.ph, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit
  %i.i = phi i64 [ %i.ao, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit ], [ %i.b, %.lr.ph ]
  %.sroa.023.028 = phi ptr [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit ], [ %0, %.lr.ph ] ; 8 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.023.028, i64 %.idx ; 4 uses
  %.sroa.0.019.i = getelementptr inbounds nuw i8, ptr %.sroa.023.028, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i
  %.sroa.0.021.i = phi ptr [ %.sroa.0.0.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i ], [ %.sroa.0.019.i, %.lr.ph.i.preheader ] ; 6 uses
  %.pn20.i = phi ptr [ %.sroa.0.021.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i ], [ %.sroa.023.028, %.lr.ph.i.preheader ] ; 4 uses
  %i.k = load ptr, ptr %.sroa.0.021.i, align 8, !tbaa !191 ; 3 uses
  %i.l = load i64, ptr %4, align 8, !tbaa !42     ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %.sroa.023.028, align 8, !tbaa !191 ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 %i.l
  %i.p = load i64, ptr %i.m, align 8, !tbaa !130  ; 2 uses
  %i.q = load i64, ptr %i.o, align 8, !tbaa !130
  %i.r = icmp ult i64 %i.p, %i.q
  br i1 %i.r, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph.i
  %i.s = ptrtoint ptr %.sroa.0.021.i to i64
  %i.t = sub i64 %i.s, %i.i                       ; 3 uses
  %i.u = ashr exact i64 %i.t, 3                   ; 2 uses
  %i.v = icmp sgt i64 %i.u, 1
  br i1 %i.v, label %bb.c, label %bb.d, !prof !237

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  %i.x = sub nsw i64 0, %i.u
  %i.y = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.023.028, i64 %i.t, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.z = icmp eq i64 %i.t, 8
  br i1 %i.z, label %bb.e, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  store ptr %i.n, ptr %i.aa, align 8, !tbaa !191
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.ab = load ptr, ptr %.pn20.i, align 8, !tbaa !191 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.l
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !130
  %i.ae = icmp ult i64 %i.p, %i.ad
  br i1 %i.ae, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.af = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.ab, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i, %bb.f ]
  store ptr %i.af, ptr %.sroa.05.09.i.i, align 8, !tbaa !191
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.ag = load i64, ptr %4, align 8, !tbaa !42    ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.k, i64 %i.ag
  %i.ai = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !191 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.ag
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !130
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !130
  %i.am = icmp ult i64 %i.ak, %i.al
  br i1 %i.am, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i, !llvm.loop !13

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink.i = phi ptr [ %.sroa.023.028, %bb.e ], [ %.sroa.023.028, %bb.c ], [ %.sroa.023.028, %bb.d ], [ %.sroa.0.021.i, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store ptr %i.k, ptr %.sink.i, align 8, !tbaa !191
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 8 ; 2 uses
  %i.an = icmp eq ptr %.sroa.0.0.i, %i.j
  br i1 %i.an, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit, label %.lr.ph.i, !llvm.loop !15

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i
  %i.ao = ptrtoint ptr %i.j to i64                ; 3 uses
  %i.ap = sub i64 %i.a, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3
  %.not = icmp slt i64 %i.aq, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !14

._crit_edge:                                      ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.us, %bb.a
  %.sroa.023.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.us ], [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit ] ; 8 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.f, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.us ], [ %i.ao, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit ]
  %i.ar = icmp eq ptr %.sroa.023.0.lcssa, %1
  %.sroa.0.019.i11 = getelementptr inbounds nuw i8, ptr %.sroa.023.0.lcssa, i64 8 ; 2 uses
  %i.as = icmp eq ptr %.sroa.0.019.i11, %1
  %or.cond26 = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond26, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit22, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %._crit_edge, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15
  %.sroa.0.021.i13 = phi ptr [ %.sroa.0.0.i17, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15 ], [ %.sroa.0.019.i11, %._crit_edge ] ; 6 uses
  %.pn20.i14 = phi ptr [ %.sroa.0.021.i13, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15 ], [ %.sroa.023.0.lcssa, %._crit_edge ] ; 4 uses
  %i.at = load ptr, ptr %.sroa.0.021.i13, align 8, !tbaa !191 ; 3 uses
  %i.au = load i64, ptr %4, align 8, !tbaa !42    ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.au
  %i.aw = load ptr, ptr %.sroa.023.0.lcssa, align 8, !tbaa !191 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.au
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !130 ; 2 uses
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !130
  %i.ba = icmp ult i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.lr.ph.i12
  %i.bb = ptrtoint ptr %.sroa.0.021.i13 to i64
  %i.bc = sub i64 %i.bb, %.lcssa                  ; 3 uses
  %i.bd = ashr exact i64 %i.bc, 3                 ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 1
  br i1 %i.be, label %bb.h, label %bb.i, !prof !237

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn20.i14, i64 16
  %i.bg = sub nsw i64 0, %i.bd
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bh, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.023.0.lcssa, i64 %i.bc, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15

bb.i:                                             ; preds = %bb.g
  %i.bi = icmp eq i64 %i.bc, 8
  br i1 %i.bi, label %bb.j, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.pn20.i14, i64 8
  store ptr %i.aw, ptr %i.bj, align 8, !tbaa !191
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15

bb.k:                                             ; preds = %.lr.ph.i12
  %i.bk = load ptr, ptr %.pn20.i14, align 8, !tbaa !191 ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.au
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !130
  %i.bn = icmp ult i64 %i.ay, %i.bm
  br i1 %i.bn, label %.lr.ph.i.i18, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15

.lr.ph.i.i18:                                     ; preds = %bb.k, %.lr.ph.i.i18
  %i.bo = phi ptr [ %i.br, %.lr.ph.i.i18 ], [ %i.bk, %bb.k ]
  %.sroa.0.010.i.i19 = phi ptr [ %.sroa.0.0.i.i21, %.lr.ph.i.i18 ], [ %.pn20.i14, %bb.k ] ; 3 uses
  %.sroa.05.09.i.i20 = phi ptr [ %.sroa.0.010.i.i19, %.lr.ph.i.i18 ], [ %.sroa.0.021.i13, %bb.k ]
  store ptr %i.bo, ptr %.sroa.05.09.i.i20, align 8, !tbaa !191
  %.sroa.0.0.i.i21 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i19, i64 -8 ; 2 uses
  %i.bp = load i64, ptr %4, align 8, !tbaa !42    ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.at, i64 %i.bp
  %i.br = load ptr, ptr %.sroa.0.0.i.i21, align 8, !tbaa !191 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.bp
  %i.bt = load i64, ptr %i.bq, align 8, !tbaa !130
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !130
  %i.bv = icmp ult i64 %i.bt, %i.bu
  br i1 %i.bv, label %.lr.ph.i.i18, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15, !llvm.loop !13

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15: ; preds = %.lr.ph.i.i18, %bb.k, %bb.j, %bb.i, %bb.h
  %.sink.i16 = phi ptr [ %.sroa.023.0.lcssa, %bb.j ], [ %.sroa.023.0.lcssa, %bb.h ], [ %.sroa.023.0.lcssa, %bb.i ], [ %.sroa.0.021.i13, %bb.k ], [ %.sroa.0.010.i.i19, %.lr.ph.i.i18 ]
  store ptr %i.at, ptr %.sink.i16, align 8, !tbaa !191
  %.sroa.0.0.i17 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i13, i64 8 ; 2 uses
  %i.bw = icmp eq ptr %.sroa.0.0.i17, %1
  br i1 %i.bw, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit22, label %.lr.ph.i12, !llvm.loop !15

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit22: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15, %._crit_edge
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
