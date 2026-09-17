Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/input-files.cc.X86_64?download=true
inline.NumInlined: 5152
inline.NumDeleted: 2381
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZSt17__merge_sort_loopIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEElNS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEEvSP_SP_SR_T1_T2_:bb.a
  %i.fo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 14
  %i.fp = load atomic i8, ptr %i.fo monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.fp, ptr %i.fn monotonic, align 2
  %i.fq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.fr, ptr noundef nonnull align 4 dereferenceable(15) %i.fq, i64 14, i1 false)
  %i.fs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 30
  %i.ft = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 30
  %i.fu = load atomic i8, ptr %i.ft monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.fu, ptr %i.fs monotonic, align 2
  %i.fv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 32
  %i.fw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 32 ; 2 uses
  %i.fx = add nsw i64 %.012.i.i.i.i.i20.i, -2
  %i.fy = icmp sgt i64 %.012.i.i.i.i.i20.i, 2
  br i1 %i.fy, label %.lr.ph.i.i.i.i.i19.i, label %_ZSt12__move_mergeIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESR_SP_SP_SP_SP_SR_T1_.exit, !llvm.loop !12

_ZSt12__move_mergeIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESR_SP_SP_SP_SP_SR_T1_.exit: ; preds = %.lr.ph.i.i.i.i.i19.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i, %_ZSt4moveIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i
  %.08.lcssa.i.i.i.i.i18.i = phi ptr [ %i.ez, %_ZSt4moveIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i ], [ %.lcssa104.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ], [ %i.fw, %.lr.ph.i.i.i.i.i19.i ]
  %i.fz = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i to i64
  %i.ga = sub i64 %i.fz, %i.ew
  %i.gb = getelementptr inbounds i8, ptr %i.ez, i64 %i.ga ; 2 uses
  %i.gc = sub i64 %i.b, %i.fa
  %i.gd = ashr exact i64 %i.gc, 4                 ; 2 uses
  %.not = icmp slt i64 %i.gd, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1311

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESR_SP_SP_SP_SP_SR_T1_.exit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %_ZSt12__move_mergeIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESR_SP_SP_SP_SP_SR_T1_.exit ] ; 3 uses
  %.sroa.022.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.gb, %_ZSt12__move_mergeIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESR_SP_SP_SP_SP_SR_T1_.exit ] ; 2 uses
  %.lcssa61 = phi i64 [ %i.e, %bb.a ], [ %i.gd, %_ZSt12__move_mergeIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESR_SP_SP_SP_SP_SR_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa61) ; 2 uses
  %.idx56 = shl nsw i64 %.sroa.speculated, 4
  %i.ge = getelementptr inbounds i8, ptr %.0.lcssa, i64 %.idx56 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %4, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %.sroa.2.0..sroa_idx, align 8
  %i.gf = icmp ne i64 %.sroa.speculated, 0
  %i.gg = icmp ne ptr %i.ge, %1
  %i.gh = and i1 %i.gf, %i.gg
  br i1 %i.gh, label %.lr.ph.i40, label %._crit_edge.i25

.lr.ph.i40:                                       ; preds = %._crit_edge, %bb.v
  %.029.i41 = phi ptr [ %.1.i45, %bb.v ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %.01628.i42 = phi ptr [ %.117.i44, %bb.v ], [ %i.ge, %._crit_edge ] ; 5 uses
  %.sroa.0.027.i43 = phi ptr [ %i.gq, %bb.v ], [ %.sroa.022.0.lcssa, %._crit_edge ] ; 4 uses
  %i.gi = call noundef zeroext i1 @_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SN_EEbSJ_SK_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(15) %.01628.i42, ptr noundef nonnull align 4 dereferenceable(15) %.029.i41)
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i43, i64 14 ; 2 uses
  br i1 %i.gi, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.sroa.0.027.i43, ptr noundef nonnull align 4 dereferenceable(15) %.01628.i42, i64 14, i1 false)
  %i.gk = getelementptr inbounds nuw i8, ptr %.01628.i42, i64 14
  %i.gl = load atomic i8, ptr %i.gk monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.gl, ptr %i.gj monotonic, align 2
  %i.gm = getelementptr inbounds nuw i8, ptr %.01628.i42, i64 16
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph.i40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.sroa.0.027.i43, ptr noundef nonnull align 4 dereferenceable(15) %.029.i41, i64 14, i1 false)
  %i.gn = getelementptr inbounds nuw i8, ptr %.029.i41, i64 14
  %i.go = load atomic i8, ptr %i.gn monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.go, ptr %i.gj monotonic, align 2
  %i.gp = getelementptr inbounds nuw i8, ptr %.029.i41, i64 16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.117.i44 = phi ptr [ %i.gm, %bb.t ], [ %.01628.i42, %bb.u ] ; 3 uses
  %.1.i45 = phi ptr [ %.029.i41, %bb.t ], [ %i.gp, %bb.u ] ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i43, i64 16 ; 2 uses
  %i.gr = icmp ne ptr %.1.i45, %i.ge
  %i.gs = icmp ne ptr %.117.i44, %1
  %i.gt = select i1 %i.gr, i1 %i.gs, i1 false
  br i1 %i.gt, label %.lr.ph.i40, label %._crit_edge.i25, !llvm.loop !1310

._crit_edge.i25:                                  ; preds = %bb.v, %._crit_edge
  %.sroa.0.0.lcssa.i26 = phi ptr [ %.sroa.022.0.lcssa, %._crit_edge ], [ %i.gq, %bb.v ] ; 7 uses
  %.016.lcssa.i27 = phi ptr [ %i.ge, %._crit_edge ], [ %.117.i44, %bb.v ] ; 5 uses
  %.0.lcssa.i28 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.1.i45, %bb.v ] ; 5 uses
  %i.gu = ptrtoint ptr %i.ge to i64
  %i.gv = ptrtoint ptr %.0.lcssa.i28 to i64
  %i.gw = sub i64 %i.gu, %i.gv                    ; 3 uses
  %i.gx = ashr exact i64 %i.gw, 4                 ; 3 uses
  %i.gy = icmp sgt i64 %i.gx, 0
  br i1 %i.gy, label %.lr.ph.i.i.i.i.i.i36.preheader, label %_ZSt4moveIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29

.lr.ph.i.i.i.i.i.i36.preheader:                   ; preds = %._crit_edge.i25
  %i.gz = and i64 %i.gw, 16
  %lcmp.mod111.not = icmp eq i64 %i.gz, 0
  br i1 %lcmp.mod111.not, label %.lr.ph.i.i.i.i.i.i36.prol.loopexit, label %.lr.ph.i.i.i.i.i.i36.prol

.lr.ph.i.i.i.i.i.i36.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i36.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.sroa.0.0.lcssa.i26, ptr noundef nonnull align 4 dereferenceable(15) %.0.lcssa.i28, i64 14, i1 false)
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i26, i64 14
  %i.hb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i28, i64 14
  %i.hc = load atomic i8, ptr %i.hb monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.hc, ptr %i.ha monotonic, align 2
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i28, i64 16
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i26, i64 16 ; 2 uses
  %i.hf = add nsw i64 %i.gx, -1
  br label %.lr.ph.i.i.i.i.i.i36.prol.loopexit

.lr.ph.i.i.i.i.i.i36.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i36.prol, %.lr.ph.i.i.i.i.i.i36.preheader
  %.012.i.i.i.i.i.i37.unr = phi i64 [ %i.gx, %.lr.ph.i.i.i.i.i.i36.preheader ], [ %i.hf, %.lr.ph.i.i.i.i.i.i36.prol ]
  %.0811.i.i.i.i.i.i38.unr = phi ptr [ %.sroa.0.0.lcssa.i26, %.lr.ph.i.i.i.i.i.i36.preheader ], [ %i.he, %.lr.ph.i.i.i.i.i.i36.prol ]
  %.0910.i.i.i.i.i.i39.unr = phi ptr [ %.0.lcssa.i28, %.lr.ph.i.i.i.i.i.i36.preheader ], [ %i.hd, %.lr.ph.i.i.i.i.i.i36.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i36.preheader ], [ %i.he, %.lr.ph.i.i.i.i.i.i36.prol ]
  %i.hg = icmp eq i64 %i.gw, 16
  br i1 %i.hg, label %_ZSt4moveIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29, label %.lr.ph.i.i.i.i.i.i36

.lr.ph.i.i.i.i.i.i36:                             ; preds = %.lr.ph.i.i.i.i.i.i36.prol.loopexit, %.lr.ph.i.i.i.i.i.i36
  %.012.i.i.i.i.i.i37 = phi i64 [ %i.hr, %.lr.ph.i.i.i.i.i.i36 ], [ %.012.i.i.i.i.i.i37.unr, %.lr.ph.i.i.i.i.i.i36.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i38 = phi ptr [ %i.hq, %.lr.ph.i.i.i.i.i.i36 ], [ %.0811.i.i.i.i.i.i38.unr, %.lr.ph.i.i.i.i.i.i36.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i.i39 = phi ptr [ %i.hp, %.lr.ph.i.i.i.i.i.i36 ], [ %.0910.i.i.i.i.i.i39.unr, %.lr.ph.i.i.i.i.i.i36.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.0811.i.i.i.i.i.i38, ptr noundef nonnull align 4 dereferenceable(15) %.0910.i.i.i.i.i.i39, i64 14, i1 false)
  %i.hh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38, i64 14
  %i.hi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39, i64 14
  %i.hj = load atomic i8, ptr %i.hi monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.hj, ptr %i.hh monotonic, align 2
  %i.hk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.hl, ptr noundef nonnull align 4 dereferenceable(15) %i.hk, i64 14, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38, i64 30
  %i.hn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39, i64 30
  %i.ho = load atomic i8, ptr %i.hn monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.ho, ptr %i.hm monotonic, align 2
  %i.hp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39, i64 32
  %i.hq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38, i64 32 ; 2 uses
  %i.hr = add nsw i64 %.012.i.i.i.i.i.i37, -2
  %i.hs = icmp sgt i64 %.012.i.i.i.i.i.i37, 2
  br i1 %i.hs, label %.lr.ph.i.i.i.i.i.i36, label %_ZSt4moveIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29, !llvm.loop !12

_ZSt4moveIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29: ; preds = %.lr.ph.i.i.i.i.i.i36.prol.loopexit, %.lr.ph.i.i.i.i.i.i36, %._crit_edge.i25
  %.08.lcssa.i.i.i.i.i.i30 = phi ptr [ %.sroa.0.0.lcssa.i26, %._crit_edge.i25 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i36.prol.loopexit ], [ %i.hq, %.lr.ph.i.i.i.i.i.i36 ]
  %i.ht = ptrtoint ptr %.016.lcssa.i27 to i64
  %i.hu = sub i64 %i.b, %i.ht                     ; 3 uses
  %i.hv = ashr exact i64 %i.hu, 4                 ; 3 uses
  %i.hw = icmp sgt i64 %i.hv, 0
  br i1 %i.hw, label %.lr.ph.i.i.i.i.i19.i32.preheader, label %_ZSt12__move_mergeIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESR_SP_SP_SP_SP_SR_T1_.exit46

.lr.ph.i.i.i.i.i19.i32.preheader:                 ; preds = %_ZSt4moveIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29
  %i.hx = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30 to i64
  %i.hy = ptrtoint ptr %.sroa.0.0.lcssa.i26 to i64
  %i.hz = sub i64 %i.hx, %i.hy
  %i.ia = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26, i64 %i.hz ; 4 uses
  %i.ib = and i64 %i.hu, 16
  %lcmp.mod113.not = icmp eq i64 %i.ib, 0
  br i1 %lcmp.mod113.not, label %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.prol

.lr.ph.i.i.i.i.i19.i32.prol:                      ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.ia, ptr noundef nonnull align 4 dereferenceable(15) %.016.lcssa.i27, i64 14, i1 false)
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 14
  %i.id = getelementptr inbounds nuw i8, ptr %.016.lcssa.i27, i64 14
  %i.ie = load atomic i8, ptr %i.id monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.ie, ptr %i.ic monotonic, align 2
  %i.if = getelementptr inbounds nuw i8, ptr %.016.lcssa.i27, i64 16
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ih = add nsw i64 %i.hv, -1
  br label %.lr.ph.i.i.i.i.i19.i32.prol.loopexit

.lr.ph.i.i.i.i.i19.i32.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i19.i32.prol, %.lr.ph.i.i.i.i.i19.i32.preheader
  %.012.i.i.i.i.i20.i33.unr = phi i64 [ %i.hv, %.lr.ph.i.i.i.i.i19.i32.preheader ], [ %i.ih, %.lr.ph.i.i.i.i.i19.i32.prol ]
  %.0811.i.i.i.i.i21.i34.unr = phi ptr [ %i.ia, %.lr.ph.i.i.i.i.i19.i32.preheader ], [ %i.ig, %.lr.ph.i.i.i.i.i19.i32.prol ]
  %.0910.i.i.i.i.i22.i35.unr = phi ptr [ %.016.lcssa.i27, %.lr.ph.i.i.i.i.i19.i32.preheader ], [ %i.if, %.lr.ph.i.i.i.i.i19.i32.prol ]
  %i.ii = icmp eq i64 %i.hu, 16
  br i1 %i.ii, label %_ZSt12__move_mergeIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESR_SP_SP_SP_SP_SR_T1_.exit46, label %.lr.ph.i.i.i.i.i19.i32

.lr.ph.i.i.i.i.i19.i32:                           ; preds = %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32
  %.012.i.i.i.i.i20.i33 = phi i64 [ %i.it, %.lr.ph.i.i.i.i.i19.i32 ], [ %.012.i.i.i.i.i20.i33.unr, %.lr.ph.i.i.i.i.i19.i32.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34 = phi ptr [ %i.is, %.lr.ph.i.i.i.i.i19.i32 ], [ %.0811.i.i.i.i.i21.i34.unr, %.lr.ph.i.i.i.i.i19.i32.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i22.i35 = phi ptr [ %i.ir, %.lr.ph.i.i.i.i.i19.i32 ], [ %.0910.i.i.i.i.i22.i35.unr, %.lr.ph.i.i.i.i.i19.i32.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.0811.i.i.i.i.i21.i34, ptr noundef nonnull align 4 dereferenceable(15) %.0910.i.i.i.i.i22.i35, i64 14, i1 false)
  %i.ij = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 14
  %i.ik = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 14
  %i.il = load atomic i8, ptr %i.ik monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.il, ptr %i.ij monotonic, align 2
  %i.im = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 16
  %i.in = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.in, ptr noundef nonnull align 4 dereferenceable(15) %i.im, i64 14, i1 false)
  %i.io = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 30
  %i.ip = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 30
  %i.iq = load atomic i8, ptr %i.ip monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.iq, ptr %i.io monotonic, align 2
  %i.ir = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 32
  %i.is = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 32
  %i.it = add nsw i64 %.012.i.i.i.i.i20.i33, -2
  %i.iu = icmp sgt i64 %.012.i.i.i.i.i20.i33, 2
  br i1 %i.iu, label %.lr.ph.i.i.i.i.i19.i32, label %_ZSt12__move_mergeIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESR_SP_SP_SP_SP_SR_T1_.exit46, !llvm.loop !12

_ZSt12__move_mergeIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESR_SP_SP_SP_SP_SR_T1_.exit46: ; preds = %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32, %_ZSt4moveIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEEvSP_SP_SR_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 16 ; 5 uses
  %5 = alloca %"struct.mold::FdeRecord", align 4  ; 8 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 16 ; 4 uses
  %.sroa.0 = alloca <{ i32, i32, i32, i16 }>, align 4 ; 4 uses
  store ptr %2, ptr %6, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.010.019 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %.sroa.010.019, %1
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 14 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = ptrtoint ptr %0 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 14
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.s
  %.sroa.010.021 = phi ptr [ %.sroa.010.019, %.lr.ph ], [ %.sroa.010.0, %bb.s ] ; 11 uses
  %.pn20 = phi ptr [ %0, %.lr.ph ], [ %.sroa.010.021, %bb.s ] ; 7 uses
  %i.j = call noundef zeroext i1 @_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SN_EEbSJ_SK_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(15) %.sroa.010.021, ptr noundef nonnull align 4 dereferenceable(15) %0)
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(14) %.sroa.010.021, i64 14, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %.pn20, i64 30
  %i.l = load atomic i8, ptr %i.k monotonic, align 1, !range !107, !noundef !108
  %i.m = ptrtoint ptr %.sroa.010.021 to i64
  %i.n = sub i64 %i.m, %i.h                       ; 3 uses
  %i.o = ashr exact i64 %i.n, 4                   ; 3 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.pn20, i64 32
  %i.r = and i64 %i.n, 16
  %lcmp.mod.not = icmp eq i64 %i.r, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.s = getelementptr inbounds i8, ptr %.sroa.010.021, i64 -16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.pn20, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.t, ptr noundef nonnull align 4 dereferenceable(15) %i.s, i64 14, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.pn20, i64 30
  %i.v = getelementptr inbounds i8, ptr %.sroa.010.021, i64 -2
  %i.w = load atomic i8, ptr %i.v monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.w, ptr %i.u monotonic, align 2
  %i.x = add nsw i64 %i.o, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.010.i.i.i.i.i.unr = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i.preheader ], [ %i.x, %.lr.ph.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.unr = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.unr = phi ptr [ %.sroa.010.021, %.lr.ph.i.i.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.y = icmp eq i64 %i.n, 16
  br i1 %i.y, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.010.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.069.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.078.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.aa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.aa, ptr noundef nonnull align 4 dereferenceable(15) %i.z, i64 14, i1 false)
  %i.ab = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -2
  %i.ac = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -2
  %i.ad = load atomic i8, ptr %i.ac monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.ad, ptr %i.ab monotonic, align 2
  %i.ae = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.af, ptr noundef nonnull align 4 dereferenceable(15) %i.ae, i64 14, i1 false)
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -18
  %i.ah = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -18
  %i.ai = load atomic i8, ptr %i.ah monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.ai, ptr %i.ag monotonic, align 2
  %i.aj = add nsw i64 %.010.i.i.i.i.i, -2
  %i.ak = icmp sgt i64 %.010.i.i.i.i.i, 2
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, !llvm.loop !13

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %0, ptr noundef nonnull align 4 dereferenceable(14) %.sroa.0, i64 14, i1 false)
  store atomic i8 %i.l, ptr %i.i monotonic, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.al = load <2 x ptr>, ptr %6, align 16, !tbaa !549
  store <2 x ptr> %i.al, ptr %4, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %5, ptr noundef nonnull align 4 dereferenceable(15) %.sroa.010.021, i64 14, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.pn20, i64 30
  %i.an = load atomic i8, ptr %i.am monotonic, align 1, !range !107, !noundef !108
  store i8 %i.an, ptr %i.e, align 2, !tbaa !79
  %i.ao = call noundef zeroext i1 @_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SN_EEbSJ_SK_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(15) %5, ptr noundef nonnull align 4 dereferenceable(15) %.pn20)
  br i1 %i.ao, label %.lr.ph.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEEvSP_SR_.exit

.lr.ph.i:                                         ; preds = %bb.d, %_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SN_EEbSJ_SK_.exit
  %.sroa.0.08.i = phi ptr [ %.sroa.0.0.i, %_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SN_EEbSJ_SK_.exit ], [ %.pn20, %bb.d ] ; 6 uses
  %.sroa.03.07.i = phi ptr [ %.sroa.0.08.i, %_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SN_EEbSJ_SK_.exit ], [ %.sroa.010.021, %bb.d ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.sroa.03.07.i, ptr noundef nonnull align 4 dereferenceable(15) %.sroa.0.08.i, i64 14, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 14
  %i.aq = getelementptr inbounds i8, ptr %.sroa.03.07.i, i64 -2
  %i.ar = load atomic i8, ptr %i.aq monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.ar, ptr %i.ap monotonic, align 2
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -16
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !682, !nonnull !108, !align !517
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !680, !nonnull !108, !align !517
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !541 ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 504
  %i.ax = load i16, ptr %i.f, align 4, !tbaa !561
  %i.ay = zext i16 %i.ax to i64
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !545 ; 2 uses
  %i.ba = getelementptr inbounds nuw [72 x i8], ptr %i.az, i64 %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !tbaa !482
  %i.bc = load i32, ptr %i.g, align 4, !tbaa !560
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.bf, align 1
  %i.bg = zext i32 %.0.copyload.i.i.i.i.i.i to i64 ; 2 uses
  %i.bh = load ptr, ptr %i.av, align 8, !tbaa !106 ; 2 uses
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 6
  %.0.copyload.i.i.i2.i.i.i.i.i = load i16, ptr %i.bj, align 1 ; 3 uses
  %i.bk = icmp eq i16 %.0.copyload.i.i.i2.i.i.i.i.i, -1
  br i1 %i.bk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.au, i64 976
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !113
  %i.bn = shl nuw nsw i64 %i.bg, 2
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  %.0.copyload.i5.i.i.i.i.i.i.i = load i32, ptr %i.bo, align 1
  %i.bp = zext i32 %.0.copyload.i5.i.i.i.i.i.i.i to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.bq = icmp ugt i16 %.0.copyload.i.i.i2.i.i.i.i.i, -257
  %narrow.i.i.i.i.i.i.i = select i1 %i.bq, i16 0, i16 %.0.copyload.i.i.i2.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i = zext i16 %narrow.i.i.i.i.i.i.i to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i.i

_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i3.i.i.i.i.i = phi i64 [ %i.bp, %bb.e ], [ %spec.select.i.i.i.i.i.i.i, %bb.f ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.au, i64 448
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !226 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.0.i.i3.i.i.i.i.i
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !501 ; 2 uses
  %or.cond.i.i.i.i.i.i.i = icmp sgt i32 %i.bu, 0
  call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i.i)
  %i.bv = add nsw i32 %i.bu, -1
  %i.bw = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.au, i64 360
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !509, !noalias !1320 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.au, i64 368
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !131, !noalias !1320
  %i.cb = getelementptr inbounds nuw i8, ptr %i.au, i64 384
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !130, !noalias !1320 ; 2 uses
  %i.cd = ptrtoint ptr %i.by to i64
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = sdiv exact i64 %i.cf, 80                ; 2 uses
  %i.ch = add nsw i64 %i.cg, %i.bw                ; 5 uses
  %i.ci = icmp sgt i64 %i.ch, -1
  br i1 %i.ci, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i.i
  %i.cj = icmp samesign ult i64 %i.ch, 6
  br i1 %i.cj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ck = getelementptr inbounds nuw [80 x i8], ptr %i.by, i64 %i.bw
  br label %_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JRS8_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.cl = udiv i64 %i.ch, 6
  br label %bb.k

bb.j:                                             ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i.i
  %i.cm = xor i64 %i.ch, -1
  %i.cn = udiv i64 %i.cm, 6
  %i.co = xor i64 %i.cn, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cp = phi i64 [ %i.cl, %bb.i ], [ %i.co, %bb.j ] ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !129, !noalias !1320
  %.idx.i.i.i.i.i.i.i.i.i.i.i = mul i64 %i.cp, -480
  %i.cs = getelementptr i8, ptr %i.cr, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.ct = getelementptr [80 x i8], ptr %i.cs, i64 %i.ch
  br label %_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JRS8_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit.i

_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JRS8_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit.i: ; preds = %bb.k, %bb.h
  %.0.i2.i.i.i.i.i.i = phi ptr [ %i.ck, %bb.h ], [ %i.ct, %bb.k ] ; 2 uses
  %i.cu = load ptr, ptr %.0.i2.i.i.i.i.i.i, align 8, !tbaa !516, !nonnull !108, !align !517
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 128
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !576
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i.i.i.i, i64 48
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !515
  %i.cz = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -4
  %i.da = load i16, ptr %i.cz, align 4, !tbaa !561
  %i.db = zext i16 %i.da to i64
  %i.dc = getelementptr inbounds nuw [72 x i8], ptr %i.az, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i3.i = load ptr, ptr %i.dd, align 8, !tbaa !482
  %i.de = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -8
  %i.df = load i32, ptr %i.de, align 4, !tbaa !560
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i3.i, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  %.0.copyload.i.i.i.i.i4.i = load i32, ptr %i.di, align 1
  %i.dj = zext i32 %.0.copyload.i.i.i.i.i4.i to i64 ; 2 uses
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 6
  %.0.copyload.i.i.i2.i.i.i.i5.i = load i16, ptr %i.dl, align 1 ; 3 uses
  %i.dm = icmp eq i16 %.0.copyload.i.i.i2.i.i.i.i5.i, -1
  br i1 %i.dm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JRS8_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.au, i64 976
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !113
  %i.dp = shl nuw nsw i64 %i.dj, 2
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dp
  %.0.copyload.i5.i.i.i.i.i.i13.i = load i32, ptr %i.dq, align 1
  %i.dr = zext i32 %.0.copyload.i5.i.i.i.i.i.i13.i to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i8.i

bb.m:                                             ; preds = %_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JRS8_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit.i
  %i.ds = icmp ugt i16 %.0.copyload.i.i.i2.i.i.i.i5.i, -257
  %narrow.i.i.i.i.i.i6.i = select i1 %i.ds, i16 0, i16 %.0.copyload.i.i.i2.i.i.i.i5.i
  %spec.select.i.i.i.i.i.i7.i = zext i16 %narrow.i.i.i.i.i.i6.i to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i8.i

_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i8.i: ; preds = %bb.m, %bb.l
  %.0.i.i3.i.i.i.i9.i = phi i64 [ %i.dr, %bb.l ], [ %spec.select.i.i.i.i.i.i7.i, %bb.m ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.0.i.i3.i.i.i.i9.i
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !501 ; 2 uses
  %or.cond.i.i.i.i.i.i10.i = icmp sgt i32 %i.du, 0
  call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i10.i)
  %i.dv = add nsw i32 %i.du, -1
  %i.dw = zext nneg i32 %i.dv to i64              ; 2 uses
  %i.dx = add nsw i64 %i.cg, %i.dw                ; 5 uses
  %i.dy = icmp sgt i64 %i.dx, -1
  br i1 %i.dy, label %bb.n, label %bb.q

bb.n:                                             ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i8.i
  %i.dz = icmp samesign ult i64 %i.dx, 6
  br i1 %i.dz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ea = getelementptr inbounds nuw [80 x i8], ptr %i.by, i64 %i.dw
  br label %_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SN_EEbSJ_SK_.exit

bb.p:                                             ; preds = %bb.n
  %i.eb = udiv i64 %i.dx, 6
  br label %bb.r

bb.q:                                             ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i8.i
  %i.ec = xor i64 %i.dx, -1
  %i.ed = udiv i64 %i.ec, 6
  %i.ee = xor i64 %i.ed, -1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ef = phi i64 [ %i.eb, %bb.p ], [ %i.ee, %bb.q ] ; 2 uses
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !129, !noalias !1321
  %.idx.i.i.i.i.i.i.i.i.i.i11.i = mul i64 %i.ef, -480
  %i.ei = getelementptr i8, ptr %i.eh, i64 %.idx.i.i.i.i.i.i.i.i.i.i11.i
  %i.ej = getelementptr [80 x i8], ptr %i.ei, i64 %i.dx
  br label %_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SN_EEbSJ_SK_.exit

_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SN_EEbSJ_SK_.exit: ; preds = %bb.o, %bb.r
  %.0.i2.i.i.i.i.i12.i = phi ptr [ %i.ea, %bb.o ], [ %i.ej, %bb.r ] ; 2 uses
  %i.ek = shl i64 %i.cw, 32
  %i.el = sext i32 %i.cy to i64
  %i.em = or i64 %i.ek, %i.el
end_hunk_0
begin_hunk_1_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEEvSP_SP_SR_:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local noundef zeroext i1 @_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SN_EEbSJ_SK_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(15) %1, ptr noundef nonnull align 4 dereferenceable(15) %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !682, !nonnull !108, !align !517
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !680, !nonnull !108, !align !517
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !541  ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 504
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load i16, ptr %i.g, align 4, !tbaa !561
  %i.i = zext i16 %i.h to i64
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !545  ; 2 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.j, i64 %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !482
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !560
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %.0.copyload.i.i.i.i.i = load i32, ptr %i.q, align 1
  %i.r = zext i32 %.0.copyload.i.i.i.i.i to i64   ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !106  ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  %.0.copyload.i.i.i2.i.i.i.i = load i16, ptr %i.u, align 1 ; 3 uses
  %i.v = icmp eq i16 %.0.copyload.i.i.i2.i.i.i.i, -1
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 976
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !113
  %i.y = shl nuw nsw i64 %i.r, 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %.0.copyload.i5.i.i.i.i.i.i = load i32, ptr %i.z, align 1
  %i.aa = zext i32 %.0.copyload.i5.i.i.i.i.i.i to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.ab = icmp ugt i16 %.0.copyload.i.i.i2.i.i.i.i, -257
  %narrow.i.i.i.i.i.i = select i1 %i.ab, i16 0, i16 %.0.copyload.i.i.i2.i.i.i.i
  %spec.select.i.i.i.i.i.i = zext i16 %narrow.i.i.i.i.i.i to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i

_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.0.i.i3.i.i.i.i = phi i64 [ %i.aa, %bb.b ], [ %spec.select.i.i.i.i.i.i, %bb.c ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !226 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.0.i.i3.i.i.i.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !501 ; 2 uses
  %or.cond.i.i.i.i.i.i = icmp sgt i32 %i.af, 0
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i)
  %i.ag = add nsw i32 %i.af, -1
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !509, !noalias !1326 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !131, !noalias !1326
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !130, !noalias !1326 ; 2 uses
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 80                ; 2 uses
  %i.as = add nsw i64 %i.ar, %i.ah                ; 5 uses
  %i.at = icmp sgt i64 %i.as, -1
  br i1 %i.at, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i
  %i.au = icmp samesign ult i64 %i.as, 6
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw [80 x i8], ptr %i.aj, i64 %i.ah
  br label %_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JRS8_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit

bb.f:                                             ; preds = %bb.d
  %i.aw = udiv i64 %i.as, 6
  br label %bb.h

bb.g:                                             ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i
  %i.ax = xor i64 %i.as, -1
  %i.ay = udiv i64 %i.ax, 6
  %i.az = xor i64 %i.ay, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ba = phi i64 [ %i.aw, %bb.f ], [ %i.az, %bb.g ] ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !129, !noalias !1326
  %.idx.i.i.i.i.i.i.i.i.i.i = mul i64 %i.ba, -480
  %i.bd = getelementptr i8, ptr %i.bc, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.be = getelementptr [80 x i8], ptr %i.bd, i64 %i.as
  br label %_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JRS8_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit

_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JRS8_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit: ; preds = %bb.e, %bb.h
  %.0.i2.i.i.i.i.i = phi ptr [ %i.av, %bb.e ], [ %i.be, %bb.h ] ; 2 uses
  %i.bf = load ptr, ptr %.0.i2.i.i.i.i.i, align 8, !tbaa !516, !nonnull !108, !align !517
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 128
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !576
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i.i.i, i64 48
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !515
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bl = load i16, ptr %i.bk, align 4, !tbaa !561
  %i.bm = zext i16 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [72 x i8], ptr %i.j, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i3 = load ptr, ptr %i.bo, align 8, !tbaa !482
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !560
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i3, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %.0.copyload.i.i.i.i.i4 = load i32, ptr %i.bt, align 1
  %i.bu = zext i32 %.0.copyload.i.i.i.i.i4 to i64 ; 2 uses
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 6
  %.0.copyload.i.i.i2.i.i.i.i5 = load i16, ptr %i.bw, align 1 ; 3 uses
  %i.bx = icmp eq i16 %.0.copyload.i.i.i2.i.i.i.i5, -1
  br i1 %i.bx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JRS8_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 976
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !113
  %i.ca = shl nuw nsw i64 %i.bu, 2
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca
  %.0.copyload.i5.i.i.i.i.i.i13 = load i32, ptr %i.cb, align 1
  %i.cc = zext i32 %.0.copyload.i5.i.i.i.i.i.i13 to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i8

bb.j:                                             ; preds = %_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JRS8_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit
  %i.cd = icmp ugt i16 %.0.copyload.i.i.i2.i.i.i.i5, -257
  %narrow.i.i.i.i.i.i6 = select i1 %i.cd, i16 0, i16 %.0.copyload.i.i.i2.i.i.i.i5
  %spec.select.i.i.i.i.i.i7 = zext i16 %narrow.i.i.i.i.i.i6 to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i8

_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i8: ; preds = %bb.j, %bb.i
  %.0.i.i3.i.i.i.i9 = phi i64 [ %i.cc, %bb.i ], [ %spec.select.i.i.i.i.i.i7, %bb.j ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.0.i.i3.i.i.i.i9
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !501 ; 2 uses
  %or.cond.i.i.i.i.i.i10 = icmp sgt i32 %i.cf, 0
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i10)
  %i.cg = add nsw i32 %i.cf, -1
  %i.ch = zext nneg i32 %i.cg to i64              ; 2 uses
  %i.ci = add nsw i64 %i.ar, %i.ch                ; 5 uses
  %i.cj = icmp sgt i64 %i.ci, -1
  br i1 %i.cj, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i8
  %i.ck = icmp samesign ult i64 %i.ci, 6
  br i1 %i.ck, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cl = getelementptr inbounds nuw [80 x i8], ptr %i.aj, i64 %i.ch
  br label %_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JRS8_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit14

bb.m:                                             ; preds = %bb.k
  %i.cm = udiv i64 %i.ci, 6
  br label %bb.o

bb.n:                                             ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i8
  %i.cn = xor i64 %i.ci, -1
  %i.co = udiv i64 %i.cn, 6
  %i.cp = xor i64 %i.co, -1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cq = phi i64 [ %i.cm, %bb.m ], [ %i.cp, %bb.n ] ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !129, !noalias !1327
  %.idx.i.i.i.i.i.i.i.i.i.i11 = mul i64 %i.cq, -480
  %i.ct = getelementptr i8, ptr %i.cs, i64 %.idx.i.i.i.i.i.i.i.i.i.i11
  %i.cu = getelementptr [80 x i8], ptr %i.ct, i64 %i.ci
  br label %_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JRS8_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit14

_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JRS8_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit14: ; preds = %bb.l, %bb.o
  %.0.i2.i.i.i.i.i12 = phi ptr [ %i.cl, %bb.l ], [ %i.cu, %bb.o ] ; 2 uses
  %i.cv = shl i64 %i.bh, 32
  %i.cw = sext i32 %i.bj to i64
  %i.cx = or i64 %i.cv, %i.cw
  %i.cy = load ptr, ptr %.0.i2.i.i.i.i.i12, align 8, !tbaa !516, !nonnull !108, !align !517
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 128
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !576
  %i.db = shl i64 %i.da, 32
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i.i.i12, i64 48
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !515
  %i.de = sext i32 %i.dd to i64
  %i.df = or i64 %i.db, %i.de
  %i.dg = icmp slt i64 %i.cx, %i.df
  ret i1 %i.dg
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEEvSP_SP_SP_SR_SR_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %5) local_unnamed_addr #2 comdat {
bb.a:
  %6 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8 ; 5 uses
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 8 ; 5 uses
  %.sroa.0.i.i = alloca <{ i32, i32, i32, i16 }>, align 4 ; 4 uses
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i64 %4, %3
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = call noundef zeroext i1 @_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SN_EEbSJ_SK_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(15) %1, ptr noundef nonnull align 4 dereferenceable(15) %0)
  br i1 %i.e, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.0.i.i, ptr noundef nonnull align 4 dereferenceable(15) %0, i64 14, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.g = load atomic i8, ptr %i.f monotonic, align 2, !range !107, !noundef !108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %0, ptr noundef nonnull align 4 dereferenceable(15) %1, i64 14, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 2 uses
  %i.i = load atomic i8, ptr %i.h monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.i, ptr %i.f monotonic, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %1, ptr noundef nonnull align 4 dereferenceable(14) %.sroa.0.i.i, i64 14, i1 false)
  store atomic i8 %i.g, ptr %i.h monotonic, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.j = icmp sgt i64 %3, %4
  %.sroa.021.0.copyload = load ptr, ptr %5, align 8, !tbaa !678 ; 2 uses
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.222.0.copyload = load ptr, ptr %.sroa.222.0..sroa_idx, align 8, !tbaa !549 ; 2 uses
  br i1 %i.j, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit56

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.k = sdiv i64 %3, 2                           ; 2 uses
  %i.l = getelementptr inbounds [16 x i8], ptr %0, i64 %i.k ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %.sroa.021.0.copyload, ptr %7, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sroa.222.0.copyload, ptr %i.m, align 8
  %i.n = ptrtoint ptr %2 to i64
  %i.o = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.016.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.q, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.s = lshr i64 %.016.i, 1                      ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i, i64 %i.s ; 2 uses
  %i.u = call noundef zeroext i1 @_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SD_EEbSJ_SK_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(15) %i.t, ptr noundef nonnull align 4 dereferenceable(15) %i.l) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = xor i64 %i.s, -1
  %i.x = add nsw i64 %.016.i, %i.w
  %.sroa.011.1.i = select i1 %i.u, ptr %i.v, ptr %.sroa.011.015.i ; 3 uses
  %.1.i = select i1 %i.u, i64 %i.x, i64 %i.s      ; 2 uses
  %i.y = icmp sgt i64 %.1.i, 0
  br i1 %i.y, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit.loopexit, !llvm.loop !14

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit.loopexit ], [ %i.o, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit.loopexit ], [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.z = sub i64 %.pre-phi, %i.o
  %i.aa = ashr exact i64 %i.z, 4
  br label %bb.f

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit56: ; preds = %bb.e
  %i.ab = sdiv i64 %4, 2                          ; 2 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %1, i64 %i.ab ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %.sroa.021.0.copyload, ptr %6, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.222.0.copyload, ptr %i.ad, align 8
  %i.ae = ptrtoint ptr %1 to i64
  %i.af = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 4                 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 0
  br i1 %i.ai, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i60, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i60: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit56, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i60
  %.016.i61 = phi i64 [ %.1.i66, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i60 ], [ %i.ah, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit56 ] ; 2 uses
  %.sroa.011.015.i62 = phi ptr [ %.sroa.011.1.i65, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i60 ], [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit56 ] ; 2 uses
  %i.aj = lshr i64 %.016.i61, 1                   ; 3 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i62, i64 %i.aj ; 2 uses
  %i.al = call noundef zeroext i1 @_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clISD_RSB_EEbSJ_SK_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(15) %i.ac, ptr noundef nonnull align 4 dereferenceable(15) %i.ak) ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.an = xor i64 %i.aj, -1
  %i.ao = add nsw i64 %.016.i61, %i.an
  %.sroa.011.1.i65 = select i1 %i.al, ptr %.sroa.011.015.i62, ptr %i.am ; 3 uses
  %.1.i66 = select i1 %i.al, i64 %i.aj, i64 %i.ao ; 2 uses
  %i.ap = icmp sgt i64 %.1.i66, 0
  br i1 %i.ap, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i60, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit.loopexit, !llvm.loop !15

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i60
  %.pre80 = ptrtoint ptr %.sroa.011.1.i65 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit56
  %.pre-phi81 = phi i64 [ %.pre80, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit.loopexit ], [ %i.af, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit56 ]
  %.sroa.011.0.lcssa.i59 = phi ptr [ %.sroa.011.1.i65, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit.loopexit ], [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit56 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.aq = sub i64 %.pre-phi81, %i.af
  %i.ar = ashr exact i64 %i.aq, 4
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit
  %.sroa.069.0 = phi ptr [ %i.l, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit ], [ %.sroa.011.0.lcssa.i59, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.011.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit ], [ %i.ac, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit ] ; 2 uses
  %.050 = phi i64 [ %i.aa, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit ], [ %i.ab, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.k, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit ], [ %i.ar, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit ] ; 2 uses
  %i.as = call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS3_6X86_64EEESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_St26random_access_iterator_tag(ptr %.sroa.069.0, ptr %1, ptr %.sroa.0.0) ; 2 uses
  call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEEvSP_SP_SP_SR_SR_T1_(ptr %0, ptr %.sroa.069.0, ptr %i.as, i64 noundef %.0, i64 noundef %.050, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %5)
  %i.at = sub nsw i64 %3, %.0
  %i.au = sub nsw i64 %4, %.050
  call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEEvSP_SP_SP_SR_SR_T1_(ptr %i.as, ptr %.sroa.0.0, ptr %2, i64 noundef %i.at, i64 noundef %i.au, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %5)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local noundef zeroext i1 @_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SD_EEbSJ_SK_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(15) %1, ptr noundef nonnull align 4 dereferenceable(15) %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !682, !nonnull !108, !align !517
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !680, !nonnull !108, !align !517
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !541  ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 504
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load i16, ptr %i.g, align 4, !tbaa !561
  %i.i = zext i16 %i.h to i64
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !545  ; 2 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.j, i64 %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !482
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !560
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %.0.copyload.i.i.i.i.i = load i32, ptr %i.q, align 1
  %i.r = zext i32 %.0.copyload.i.i.i.i.i to i64   ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !106  ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  %.0.copyload.i.i.i2.i.i.i.i = load i16, ptr %i.u, align 1 ; 3 uses
  %i.v = icmp eq i16 %.0.copyload.i.i.i2.i.i.i.i, -1
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 976
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !113
  %i.y = shl nuw nsw i64 %i.r, 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %.0.copyload.i5.i.i.i.i.i.i = load i32, ptr %i.z, align 1
  %i.aa = zext i32 %.0.copyload.i5.i.i.i.i.i.i to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.ab = icmp ugt i16 %.0.copyload.i.i.i2.i.i.i.i, -257
  %narrow.i.i.i.i.i.i = select i1 %i.ab, i16 0, i16 %.0.copyload.i.i.i2.i.i.i.i
  %spec.select.i.i.i.i.i.i = zext i16 %narrow.i.i.i.i.i.i to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i

_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.0.i.i3.i.i.i.i = phi i64 [ %i.aa, %bb.b ], [ %spec.select.i.i.i.i.i.i, %bb.c ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !226 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.0.i.i3.i.i.i.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !501 ; 2 uses
  %or.cond.i.i.i.i.i.i = icmp sgt i32 %i.af, 0
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i)
  %i.ag = add nsw i32 %i.af, -1
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !509, !noalias !1332 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !131, !noalias !1332
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !130, !noalias !1332 ; 2 uses
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 80                ; 2 uses
  %i.as = add nsw i64 %i.ar, %i.ah                ; 5 uses
  %i.at = icmp sgt i64 %i.as, -1
  br i1 %i.at, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i
  %i.au = icmp samesign ult i64 %i.as, 6
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw [80 x i8], ptr %i.aj, i64 %i.ah
  br label %_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JRS8_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit

bb.f:                                             ; preds = %bb.d
  %i.aw = udiv i64 %i.as, 6
  br label %bb.h

bb.g:                                             ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i
  %i.ax = xor i64 %i.as, -1
  %i.ay = udiv i64 %i.ax, 6
  %i.az = xor i64 %i.ay, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ba = phi i64 [ %i.aw, %bb.f ], [ %i.az, %bb.g ] ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !129, !noalias !1332
  %.idx.i.i.i.i.i.i.i.i.i.i = mul i64 %i.ba, -480
  %i.bd = getelementptr i8, ptr %i.bc, i64 %.idx.i.i.i.i.i.i.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SD_EEbSJ_SK_:bb.a
  %i.dg = icmp slt i64 %i.cx, %i.df
  ret i1 %i.dg
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local noundef zeroext i1 @_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clISD_RSB_EEbSJ_SK_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(15) %1, ptr noundef nonnull align 4 dereferenceable(15) %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !682, !nonnull !108, !align !517
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !680, !nonnull !108, !align !517
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !541  ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 504
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load i16, ptr %i.g, align 4, !tbaa !561
  %i.i = zext i16 %i.h to i64
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !545  ; 2 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.j, i64 %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !482
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !560
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %.0.copyload.i.i.i.i.i = load i32, ptr %i.q, align 1
  %i.r = zext i32 %.0.copyload.i.i.i.i.i to i64   ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !106  ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  %.0.copyload.i.i.i2.i.i.i.i = load i16, ptr %i.u, align 1 ; 3 uses
  %i.v = icmp eq i16 %.0.copyload.i.i.i2.i.i.i.i, -1
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 976
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !113
  %i.y = shl nuw nsw i64 %i.r, 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %.0.copyload.i5.i.i.i.i.i.i = load i32, ptr %i.z, align 1
  %i.aa = zext i32 %.0.copyload.i5.i.i.i.i.i.i to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.ab = icmp ugt i16 %.0.copyload.i.i.i2.i.i.i.i, -257
  %narrow.i.i.i.i.i.i = select i1 %i.ab, i16 0, i16 %.0.copyload.i.i.i2.i.i.i.i
  %spec.select.i.i.i.i.i.i = zext i16 %narrow.i.i.i.i.i.i to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i

_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.0.i.i3.i.i.i.i = phi i64 [ %i.aa, %bb.b ], [ %spec.select.i.i.i.i.i.i, %bb.c ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !226 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.0.i.i3.i.i.i.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !501 ; 2 uses
  %or.cond.i.i.i.i.i.i = icmp sgt i32 %i.af, 0
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i)
  %i.ag = add nsw i32 %i.af, -1
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !509, !noalias !1338 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !131, !noalias !1338
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !130, !noalias !1338 ; 2 uses
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 80                ; 2 uses
  %i.as = add nsw i64 %i.ar, %i.ah                ; 5 uses
  %i.at = icmp sgt i64 %i.as, -1
  br i1 %i.at, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i
  %i.au = icmp samesign ult i64 %i.as, 6
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw [80 x i8], ptr %i.aj, i64 %i.ah
  br label %_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JSA_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSE_DpOSF_.exit

bb.f:                                             ; preds = %bb.d
  %i.aw = udiv i64 %i.as, 6
  br label %bb.h

bb.g:                                             ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i
  %i.ax = xor i64 %i.as, -1
  %i.ay = udiv i64 %i.ax, 6
  %i.az = xor i64 %i.ay, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ba = phi i64 [ %i.aw, %bb.f ], [ %i.az, %bb.g ] ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !129, !noalias !1338
  %.idx.i.i.i.i.i.i.i.i.i.i = mul i64 %i.ba, -480
  %i.bd = getelementptr i8, ptr %i.bc, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.be = getelementptr [80 x i8], ptr %i.bd, i64 %i.as
  br label %_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JSA_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSE_DpOSF_.exit

_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JSA_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSE_DpOSF_.exit: ; preds = %bb.e, %bb.h
  %.0.i2.i.i.i.i.i = phi ptr [ %i.av, %bb.e ], [ %i.be, %bb.h ] ; 2 uses
  %i.bf = load ptr, ptr %.0.i2.i.i.i.i.i, align 8, !tbaa !516, !nonnull !108, !align !517
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 128
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !576
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i.i.i, i64 48
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !515
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bl = load i16, ptr %i.bk, align 4, !tbaa !561
  %i.bm = zext i16 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [72 x i8], ptr %i.j, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i3 = load ptr, ptr %i.bo, align 8, !tbaa !482
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !560
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i3, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %.0.copyload.i.i.i.i.i4 = load i32, ptr %i.bt, align 1
  %i.bu = zext i32 %.0.copyload.i.i.i.i.i4 to i64 ; 2 uses
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 6
  %.0.copyload.i.i.i2.i.i.i.i5 = load i16, ptr %i.bw, align 1 ; 3 uses
  %i.bx = icmp eq i16 %.0.copyload.i.i.i2.i.i.i.i5, -1
  br i1 %i.bx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JSA_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSE_DpOSF_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 976
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !113
  %i.ca = shl nuw nsw i64 %i.bu, 2
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca
  %.0.copyload.i5.i.i.i.i.i.i13 = load i32, ptr %i.cb, align 1
  %i.cc = zext i32 %.0.copyload.i5.i.i.i.i.i.i13 to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i8

bb.j:                                             ; preds = %_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JSA_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSE_DpOSF_.exit
  %i.cd = icmp ugt i16 %.0.copyload.i.i.i2.i.i.i.i5, -257
  %narrow.i.i.i.i.i.i6 = select i1 %i.cd, i16 0, i16 %.0.copyload.i.i.i2.i.i.i.i5
  %spec.select.i.i.i.i.i.i7 = zext i16 %narrow.i.i.i.i.i.i6 to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i8

_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i8: ; preds = %bb.j, %bb.i
  %.0.i.i3.i.i.i.i9 = phi i64 [ %i.cc, %bb.i ], [ %spec.select.i.i.i.i.i.i7, %bb.j ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.0.i.i3.i.i.i.i9
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !501 ; 2 uses
  %or.cond.i.i.i.i.i.i10 = icmp sgt i32 %i.cf, 0
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i10)
  %i.cg = add nsw i32 %i.cf, -1
  %i.ch = zext nneg i32 %i.cg to i64              ; 2 uses
  %i.ci = add nsw i64 %i.ar, %i.ch                ; 5 uses
  %i.cj = icmp sgt i64 %i.ci, -1
  br i1 %i.cj, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i8
  %i.ck = icmp samesign ult i64 %i.ci, 6
  br i1 %i.ck, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cl = getelementptr inbounds nuw [80 x i8], ptr %i.aj, i64 %i.ch
  br label %_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JRS8_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit

bb.m:                                             ; preds = %bb.k
  %i.cm = udiv i64 %i.ci, 6
  br label %bb.o

bb.n:                                             ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i8
  %i.cn = xor i64 %i.ci, -1
  %i.co = udiv i64 %i.cn, 6
  %i.cp = xor i64 %i.co, -1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cq = phi i64 [ %i.cm, %bb.m ], [ %i.cp, %bb.n ] ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !129, !noalias !1339
  %.idx.i.i.i.i.i.i.i.i.i.i11 = mul i64 %i.cq, -480
  %i.ct = getelementptr i8, ptr %i.cs, i64 %.idx.i.i.i.i.i.i.i.i.i.i11
  %i.cu = getelementptr [80 x i8], ptr %i.ct, i64 %i.ci
  br label %_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JRS8_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit

_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JRS8_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit: ; preds = %bb.l, %bb.o
  %.0.i2.i.i.i.i.i12 = phi ptr [ %i.cl, %bb.l ], [ %i.cu, %bb.o ] ; 2 uses
  %i.cv = shl i64 %i.bh, 32
  %i.cw = sext i32 %i.bj to i64
  %i.cx = or i64 %i.cv, %i.cw
  %i.cy = load ptr, ptr %.0.i2.i.i.i.i.i12, align 8, !tbaa !516, !nonnull !108, !align !517
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 128
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !576
  %i.db = shl i64 %i.da, 32
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i.i.i12, i64 48
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !515
  %i.de = sext i32 %i.dd to i64
  %i.df = or i64 %i.db, %i.de
  %i.dg = icmp slt i64 %i.cx, %i.df
  ret i1 %i.dg
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS3_6X86_64EEESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %.sroa.0.i.i24 = alloca <{ i32, i32, i32, i16 }>, align 4 ; 4 uses
  %.sroa.0.i.i = alloca <{ i32, i32, i32, i16 }>, align 4 ; 4 uses
  %.sroa.0.i.i.i = alloca <{ i32, i32, i32, i16 }>, align 4 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 4                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 4                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.sroa.0.07.i = phi ptr [ %i.q, %.lr.ph.i ], [ %1, %bb.c ] ; 4 uses
  %.sroa.04.06.i = phi ptr [ %i.p, %.lr.ph.i ], [ %0, %bb.c ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.0.i.i.i, ptr noundef nonnull align 4 dereferenceable(15) %.sroa.04.06.i, i64 14, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.06.i, i64 14 ; 2 uses
  %i.m = load atomic i8, ptr %i.l monotonic, align 2, !range !107, !noundef !108
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.sroa.04.06.i, ptr noundef nonnull align 4 dereferenceable(15) %.sroa.0.07.i, i64 14, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 14 ; 2 uses
  %i.o = load atomic i8, ptr %i.n monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.o, ptr %i.l monotonic, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.sroa.0.07.i, ptr noundef nonnull align 4 dereferenceable(14) %.sroa.0.i.i.i, i64 14, i1 false)
  store atomic i8 %i.m, ptr %i.n monotonic, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.06.i, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16
  %i.r = icmp eq ptr %i.p, %1
  br i1 %i.r, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %.lr.ph.i, !llvm.loop !1340

bb.d:                                             ; preds = %bb.c
  %i.s = sub i64 %i.c, %i.g
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.057 = phi i64 [ %i.f, %bb.d ], [ %.057.be, %.backedge ] ; 4 uses
  %.0 = phi i64 [ %i.i, %bb.d ], [ %.0.be, %.backedge ] ; 8 uses
  %.sroa.027.0 = phi ptr [ %0, %bb.d ], [ %.sroa.027.0.be, %.backedge ] ; 5 uses
  %i.u = sub nsw i64 %.057, %.0                   ; 6 uses
  %i.v = icmp slt i64 %.0, %i.u
  br i1 %i.v, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = icmp sgt i64 %i.u, 0
  br i1 %i.w, label %.lr.ph67.preheader, label %._crit_edge68

.lr.ph67.preheader:                               ; preds = %bb.f
  %i.x = getelementptr inbounds [16 x i8], ptr %.sroa.027.0, i64 %.0
  br label %.lr.ph67

._crit_edge68:                                    ; preds = %.lr.ph67, %bb.f
  %.sroa.027.1.lcssa = phi ptr [ %.sroa.027.0, %bb.f ], [ %i.ad, %.lr.ph67 ]
  %i.y = srem i64 %.057, %.0                      ; 2 uses
  %.not21 = icmp eq i64 %i.y, 0
  br i1 %.not21, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %bb.g

.lr.ph67:                                         ; preds = %.lr.ph67.preheader, %.lr.ph67
  %.01965 = phi i64 [ %i.af, %.lr.ph67 ], [ 0, %.lr.ph67.preheader ]
  %.sroa.026.064 = phi ptr [ %i.ae, %.lr.ph67 ], [ %i.x, %.lr.ph67.preheader ] ; 4 uses
  %.sroa.027.163 = phi ptr [ %i.ad, %.lr.ph67 ], [ %.sroa.027.0, %.lr.ph67.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.0.i.i, ptr noundef nonnull align 4 dereferenceable(15) %.sroa.027.163, i64 14, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.027.163, i64 14 ; 2 uses
  %i.aa = load atomic i8, ptr %i.z monotonic, align 2, !range !107, !noundef !108
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.sroa.027.163, ptr noundef nonnull align 4 dereferenceable(15) %.sroa.026.064, i64 14, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.026.064, i64 14 ; 2 uses
  %i.ac = load atomic i8, ptr %i.ab monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.ac, ptr %i.z monotonic, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.sroa.026.064, ptr noundef nonnull align 4 dereferenceable(14) %.sroa.0.i.i, i64 14, i1 false)
  store atomic i8 %i.aa, ptr %i.ab monotonic, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.027.163, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.026.064, i64 16
  %i.af = add nuw nsw i64 %.01965, 1              ; 2 uses
  %exitcond72.not = icmp eq i64 %i.af, %i.u
  br i1 %exitcond72.not, label %._crit_edge68, label %.lr.ph67, !llvm.loop !1341

bb.g:                                             ; preds = %._crit_edge68
  %i.ag = sub nsw i64 %.0, %i.y
  br label %.backedge

bb.h:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds [16 x i8], ptr %.sroa.027.0, i64 %.057 ; 2 uses
  %i.ai = sub i64 0, %i.u
  %i.aj = getelementptr inbounds [16 x i8], ptr %i.ah, i64 %i.ai ; 2 uses
  %i.ak = icmp sgt i64 %.0, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  %.sroa.027.2.lcssa = phi ptr [ %i.aj, %bb.h ], [ %.sroa.027.0, %.lr.ph ]
  %i.al = srem i64 %.057, %i.u                    ; 2 uses
  %.not = icmp eq i64 %i.al, 0
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.g
  %.057.be = phi i64 [ %.0, %bb.g ], [ %i.u, %._crit_edge ]
  %.0.be = phi i64 [ %i.ag, %bb.g ], [ %i.al, %._crit_edge ]
  %.sroa.027.0.be = phi ptr [ %.sroa.027.1.lcssa, %bb.g ], [ %.sroa.027.2.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !1342

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %.01862 = phi i64 [ %i.as, %.lr.ph ], [ 0, %bb.h ]
  %.sroa.0.061 = phi ptr [ %i.an, %.lr.ph ], [ %i.ah, %bb.h ] ; 2 uses
  %.sroa.027.260 = phi ptr [ %i.am, %.lr.ph ], [ %i.aj, %bb.h ] ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.027.260, i64 -16 ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %.sroa.0.061, i64 -16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i24)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.0.i.i24, ptr noundef nonnull align 4 dereferenceable(15) %i.am, i64 14, i1 false)
  %i.ao = getelementptr inbounds i8, ptr %.sroa.027.260, i64 -2 ; 2 uses
  %i.ap = load atomic i8, ptr %i.ao monotonic, align 2, !range !107, !noundef !108
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.am, ptr noundef nonnull align 4 dereferenceable(15) %i.an, i64 14, i1 false)
  %i.aq = getelementptr inbounds i8, ptr %.sroa.0.061, i64 -2 ; 2 uses
  %i.ar = load atomic i8, ptr %i.aq monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.ar, ptr %i.ao monotonic, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.an, ptr noundef nonnull align 4 dereferenceable(14) %.sroa.0.i.i24, i64 14, i1 false)
  store atomic i8 %i.ap, ptr %i.aq monotonic, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i24)
  %i.as = add nuw nsw i64 %.01862, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.as, %.0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1343

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %._crit_edge, %._crit_edge68, %.lr.ph.i, %bb.b, %bb.a
  %.sroa.015.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %1, %.lr.ph.i ], [ %i.t, %._crit_edge68 ], [ %i.t, %._crit_edge ]
  ret ptr %.sroa.015.1
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEEvSP_SP_SP_SR_SR_T1_SR_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %7) local_unnamed_addr #2 comdat {
bb.a:
  %8 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8 ; 5 uses
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 8 ; 5 uses
  %.not = icmp sgt i64 %3, %6
  %.not63 = icmp sgt i64 %4, %6
  %or.cond = and i1 %.not, %.not63
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEEvSP_SP_SP_SR_SR_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %7)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.a = icmp sgt i64 %3, %4
  %.sroa.020.0.copyload = load ptr, ptr %7, align 8, !tbaa !678 ; 2 uses
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.221.0.copyload = load ptr, ptr %.sroa.221.0..sroa_idx, align 8, !tbaa !549 ; 2 uses
  br i1 %i.a, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit67

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.b = sdiv i64 %3, 2                           ; 2 uses
  %i.c = getelementptr inbounds [16 x i8], ptr %0, i64 %i.b ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %.sroa.020.0.copyload, ptr %9, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.sroa.221.0.copyload, ptr %i.d, align 8
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4                   ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.016.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.j = lshr i64 %.016.i, 1                      ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i, i64 %i.j ; 2 uses
  %i.l = call noundef zeroext i1 @_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SD_EEbSJ_SK_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(15) %i.k, ptr noundef nonnull align 4 dereferenceable(15) %i.c) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = xor i64 %i.j, -1
  %i.o = add nsw i64 %.016.i, %i.n
  %.sroa.011.1.i = select i1 %i.l, ptr %i.m, ptr %.sroa.011.015.i ; 3 uses
  %.1.i = select i1 %i.l, i64 %i.o, i64 %i.j      ; 2 uses
  %i.p = icmp sgt i64 %.1.i, 0
  br i1 %i.p, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit.loopexit, !llvm.loop !14

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit.loopexit ], [ %i.f, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit.loopexit ], [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.q = sub i64 %.pre-phi, %i.f
  %i.r = ashr exact i64 %i.q, 4
  br label %bb.d

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit67: ; preds = %bb.c
  %i.s = sdiv i64 %4, 2                           ; 2 uses
  %i.t = getelementptr inbounds [16 x i8], ptr %1, i64 %i.s ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %.sroa.020.0.copyload, ptr %8, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.221.0.copyload, ptr %i.u, align 8
  %i.v = ptrtoint ptr %1 to i64
  %i.w = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 4                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i71, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i71: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit67, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i71
  %.016.i72 = phi i64 [ %.1.i77, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i71 ], [ %i.y, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit67 ] ; 2 uses
  %.sroa.011.015.i73 = phi ptr [ %.sroa.011.1.i76, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i71 ], [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit67 ] ; 2 uses
  %i.aa = lshr i64 %.016.i72, 1                   ; 3 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i73, i64 %i.aa ; 2 uses
  %i.ac = call noundef zeroext i1 @_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clISD_RSB_EEbSJ_SK_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(15) %i.t, ptr noundef nonnull align 4 dereferenceable(15) %i.ab) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = xor i64 %i.aa, -1
  %i.af = add nsw i64 %.016.i72, %i.ae
  %.sroa.011.1.i76 = select i1 %i.ac, ptr %.sroa.011.015.i73, ptr %i.ad ; 3 uses
  %.1.i77 = select i1 %i.ac, i64 %i.aa, i64 %i.af ; 2 uses
  %i.ag = icmp sgt i64 %.1.i77, 0
  br i1 %i.ag, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i71, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit.loopexit, !llvm.loop !15

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i71
  %.pre91 = ptrtoint ptr %.sroa.011.1.i76 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit67
  %.pre-phi92 = phi i64 [ %.pre91, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit.loopexit ], [ %i.w, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit67 ]
  %.sroa.011.0.lcssa.i70 = phi ptr [ %.sroa.011.1.i76, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit.loopexit ], [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit67 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ah = sub i64 %.pre-phi92, %i.w
  %i.ai = ashr exact i64 %i.ah, 4
  br label %bb.d

bb.d:                                             ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit
  %.sroa.080.0 = phi ptr [ %i.c, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit ], [ %.sroa.011.0.lcssa.i70, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.011.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit ], [ %i.t, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit ] ; 2 uses
  %.059 = phi i64 [ %i.r, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit ], [ %i.s, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.b, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit ], [ %i.ai, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESP_SP_SP_RKSR_T1_.exit ] ; 2 uses
  %i.aj = sub nsw i64 %3, %.0                     ; 2 uses
  %i.ak = call ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES6_lET_SB_SB_SB_T1_SC_T0_SC_(ptr %.sroa.080.0, ptr %1, ptr %.sroa.0.0, i64 noundef %i.aj, i64 noundef %.059, ptr noundef %5, i64 noundef %6) ; 2 uses
  call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEEvSP_SP_SP_SR_SR_T1_SR_T2_(ptr %0, ptr %.sroa.080.0, ptr %i.ak, i64 noundef %.0, i64 noundef %.059, ptr noundef %5, i64 noundef %6, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %7)
  %i.al = sub nsw i64 %4, %.059
  call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEEvSP_SP_SP_SR_SR_T1_SR_T2_(ptr %i.ak, ptr %.sroa.0.0, ptr %2, i64 noundef %i.aj, i64 noundef %i.al, ptr noundef %5, i64 noundef %6, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %7)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES6_lET_SB_SB_SB_T1_SC_T0_SC_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not36 = icmp eq i64 %4, 0
  br i1 %.not36, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = ashr exact i64 %i.d, 4                   ; 3 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %i.g = and i64 %i.d, 16
  %lcmp.mod.not = icmp eq i64 %i.g, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %5, ptr noundef nonnull align 4 dereferenceable(15) %1, i64 14, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 14
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.j = load atomic i8, ptr %i.i monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.j, ptr %i.h monotonic, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.m = add nsw i64 %i.e, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.unr = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i.preheader ], [ %i.m, %.lr.ph.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %5, %.lr.ph.i.i.i.i.i.preheader ], [ %i.l, %.lr.ph.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.k, %.lr.ph.i.i.i.i.i.prol ]
  %.lcssa82.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.l, %.lr.ph.i.i.i.i.i.prol ]
  %i.n = icmp eq i64 %i.d, 16
  br i1 %i.n, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.0811.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(15) %.0910.i.i.i.i.i, i64 14, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 14
  %i.p = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 14
  %i.q = load atomic i8, ptr %i.p monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.q, ptr %i.o monotonic, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.s, ptr noundef nonnull align 4 dereferenceable(15) %i.r, i64 14, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 30
  %i.u = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 30
  %i.v = load atomic i8, ptr %i.u monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.v, ptr %i.t monotonic, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 2 uses
  %i.y = add nsw i64 %.012.i.i.i.i.i, -2
  %i.z = icmp sgt i64 %.012.i.i.i.i.i, 2
  br i1 %i.z, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit, !llvm.loop !12

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.c
  %.08.lcssa.i.i.i.i.i = phi ptr [ %5, %bb.c ], [ %.lcssa82.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.x, %.lr.ph.i.i.i.i.i ]
  %i.aa = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.ab = sub i64 %i.c, %i.aa                     ; 3 uses
  %i.ac = ashr exact i64 %i.ab, 4                 ; 3 uses
  %i.ad = icmp sgt i64 %i.ac, 0
end_hunk_2
