Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/aruco_detector?download=true
inline.NumInlined: 4513
inline.NumDeleted: 1557
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZSt17__merge_sort_loopIPN2cv5aruco19MarkerCandidateTreeEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_less_iterEEvT_SC_T0_T1_T2_:bb.a
  br i1 %.not4.i.i.i.i.i.i66, label %_ZSt8_DestroyIPN2cv5aruco15MarkerCandidateES2_EvT_S4_RSaIT0_E.exit.i.i.i.i74, label %.lr.ph.i.i.i.i.i.i67

.lr.ph.i.i.i.i.i.i67:                             ; preds = %_ZN2cv5aruco15MarkerCandidateaSEOS1_.exit.i65, %_ZSt8_DestroyIN2cv5aruco15MarkerCandidateEEvPT_.exit.i.i.i.i.i.i72
  %.05.i.i.i.i.i.i68 = phi ptr [ %i.dg, %_ZSt8_DestroyIN2cv5aruco15MarkerCandidateEEvPT_.exit.i.i.i.i.i.i72 ], [ %i.cl, %_ZN2cv5aruco15MarkerCandidateaSEOS1_.exit.i65 ] ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i68, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !113 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i69 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i69, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i.i70, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i67
  %i.cv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i68, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !114
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = sub i64 %i.cx, %i.cy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cz) #33
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i.i70

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i.i70: ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i67
  %i.da = load ptr, ptr %.05.i.i.i.i.i.i68, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i.i71 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i71, label %_ZSt8_DestroyIN2cv5aruco15MarkerCandidateEEvPT_.exit.i.i.i.i.i.i72, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i.i70
  %i.db = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i68, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !106
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.da to i64
  %i.df = sub i64 %i.dd, %i.de
  tail call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.df) #33
  br label %_ZSt8_DestroyIN2cv5aruco15MarkerCandidateEEvPT_.exit.i.i.i.i.i.i72

_ZSt8_DestroyIN2cv5aruco15MarkerCandidateEEvPT_.exit.i.i.i.i.i.i72: ; preds = %bb.m, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i.i70
  %i.dg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i68, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i73 = icmp eq ptr %i.dg, %i.cn
  br i1 %.not.i.i.i.i.i.i73, label %_ZSt8_DestroyIPN2cv5aruco15MarkerCandidateES2_EvT_S4_RSaIT0_E.exit.i.i.i.i74, label %.lr.ph.i.i.i.i.i.i67, !llvm.loop !11

_ZSt8_DestroyIPN2cv5aruco15MarkerCandidateES2_EvT_S4_RSaIT0_E.exit.i.i.i.i74: ; preds = %_ZSt8_DestroyIN2cv5aruco15MarkerCandidateEEvPT_.exit.i.i.i.i.i.i72, %_ZN2cv5aruco15MarkerCandidateaSEOS1_.exit.i65
  %.not.i.i1.i.i.i.i75 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i1.i.i.i.i75, label %_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit76, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN2cv5aruco15MarkerCandidateES2_EvT_S4_RSaIT0_E.exit.i.i.i.i74
  %i.dh = ptrtoint ptr %i.cp to i64
  %i.di = ptrtoint ptr %i.cl to i64
  %i.dj = sub i64 %i.dh, %i.di
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dj) #33
  br label %_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit76

_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit76:  ; preds = %_ZSt8_DestroyIPN2cv5aruco15MarkerCandidateES2_EvT_S4_RSaIT0_E.exit.i.i.i.i74, %bb.n
  %i.dk = getelementptr inbounds nuw i8, ptr %.030.i, i64 88
  br label %bb.o

bb.o:                                             ; preds = %_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit76, %_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit91
  %.117.i = phi ptr [ %i.bm, %_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit91 ], [ %.01629.i, %_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit76 ] ; 3 uses
  %.1.i = phi ptr [ %.030.i, %_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit91 ], [ %i.dk, %_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit76 ] ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 88 ; 2 uses
  %i.dm = icmp ne ptr %.1.i, %i.f
  %i.dn = icmp ne ptr %.117.i, %i.g
  %i.do = select i1 %i.dm, i1 %i.dn, i1 false
  br i1 %i.do, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !577

._crit_edge.i:                                    ; preds = %bb.o, %bb.b
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.018.0107, %bb.b ], [ %i.dl, %bb.o ] ; 4 uses
  %.016.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.117.i, %bb.o ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.0106, %bb.b ], [ %.1.i, %bb.o ] ; 2 uses
  %i.dp = ptrtoint ptr %i.f to i64
  %i.dq = ptrtoint ptr %.0.lcssa.i to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 2 uses
  %i.ds = icmp sgt i64 %i.dr, 0
  br i1 %i.ds, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt4moveIPN2cv5aruco19MarkerCandidateTreeEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %._crit_edge.i
  %i.dt = udiv exact i64 %i.dr, 88
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit61, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.fx, %_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit61 ], [ %i.dt, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.fw, %_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit61 ], [ %.sroa.0.0.lcssa.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 11 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.fv, %_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit61 ], [ %.0.lcssa.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 10 uses
  %i.du = load ptr, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !105 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !106
  %i.dx = load <2 x ptr>, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !140
  store <2 x ptr> %i.dx, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !140
  %i.dy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !106
  store ptr %i.dz, ptr %i.dv, align 8, !tbaa !106
  %.not.i.i.i.i.i.i.i47 = icmp eq ptr %i.du, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.0910.i.i.i.i.i.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i47, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEaSEOS4_.exit.i.i48, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ea = ptrtoint ptr %i.dw to i64
  %i.eb = ptrtoint ptr %i.du to i64
  %i.ec = sub i64 %i.ea, %i.eb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.ec) #33
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEaSEOS4_.exit.i.i48

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEaSEOS4_.exit.i.i48: ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ef = load ptr, ptr %i.ed, align 8, !tbaa !113 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !114
  %i.ei = load <2 x ptr>, ptr %i.ee, align 8, !tbaa !220
  store <2 x ptr> %i.ei, ptr %i.ed, align 8, !tbaa !220
  %i.ej = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 40
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !114
  store ptr %i.ek, ptr %i.eg, align 8, !tbaa !114
  %.not.i.i.i.i.i4.i.i49 = icmp eq ptr %i.ef, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ee, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i4.i.i49, label %_ZN2cv5aruco15MarkerCandidateaSEOS1_.exit.i50, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEaSEOS4_.exit.i.i48
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = ptrtoint ptr %i.ef to i64
  %i.en = sub i64 %i.el, %i.em
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.en) #33
  br label %_ZN2cv5aruco15MarkerCandidateaSEOS1_.exit.i50

_ZN2cv5aruco15MarkerCandidateaSEOS1_.exit.i50:    ; preds = %bb.q, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEaSEOS4_.exit.i.i48
  %i.eo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 48
  %i.ep = load float, ptr %i.eo, align 8, !tbaa !237
  %i.eq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 48
  store float %i.ep, ptr %i.eq, align 8, !tbaa !237
  %i.er = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 52
  %i.es = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 52
  %i.et = load i64, ptr %i.es, align 4
  store i64 %i.et, ptr %i.er, align 4
  %i.eu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.ew = load ptr, ptr %i.eu, align 8, !tbaa !238 ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 72
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !239 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 80 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !240
  %i.fb = load <2 x ptr>, ptr %i.ev, align 8, !tbaa !252
  store <2 x ptr> %i.fb, ptr %i.eu, align 8, !tbaa !252
  %i.fc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 80
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !240
  store ptr %i.fd, ptr %i.ez, align 8, !tbaa !240
  %.not4.i.i.i.i.i.i51 = icmp eq ptr %i.ew, %i.ey
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ev, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i51, label %_ZSt8_DestroyIPN2cv5aruco15MarkerCandidateES2_EvT_S4_RSaIT0_E.exit.i.i.i.i59, label %.lr.ph.i.i.i.i.i.i52

.lr.ph.i.i.i.i.i.i52:                             ; preds = %_ZN2cv5aruco15MarkerCandidateaSEOS1_.exit.i50, %_ZSt8_DestroyIN2cv5aruco15MarkerCandidateEEvPT_.exit.i.i.i.i.i.i57
  %.05.i.i.i.i.i.i53 = phi ptr [ %i.fr, %_ZSt8_DestroyIN2cv5aruco15MarkerCandidateEEvPT_.exit.i.i.i.i.i.i57 ], [ %i.ew, %_ZN2cv5aruco15MarkerCandidateaSEOS1_.exit.i50 ] ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i53, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !113 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i54 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i54, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i.i55, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i52
  %i.fg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i53, i64 40
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !114
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.ff to i64
  %i.fk = sub i64 %i.fi, %i.fj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.fk) #33
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i.i55

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i.i55: ; preds = %bb.r, %.lr.ph.i.i.i.i.i.i52
  %i.fl = load ptr, ptr %.05.i.i.i.i.i.i53, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i.i56 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i56, label %_ZSt8_DestroyIN2cv5aruco15MarkerCandidateEEvPT_.exit.i.i.i.i.i.i57, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i.i55
  %i.fm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i53, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !106
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = ptrtoint ptr %i.fl to i64
  %i.fq = sub i64 %i.fo, %i.fp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fq) #33
  br label %_ZSt8_DestroyIN2cv5aruco15MarkerCandidateEEvPT_.exit.i.i.i.i.i.i57

_ZSt8_DestroyIN2cv5aruco15MarkerCandidateEEvPT_.exit.i.i.i.i.i.i57: ; preds = %bb.s, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i.i55
  %i.fr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i53, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i58 = icmp eq ptr %i.fr, %i.ey
  br i1 %.not.i.i.i.i.i.i58, label %_ZSt8_DestroyIPN2cv5aruco15MarkerCandidateES2_EvT_S4_RSaIT0_E.exit.i.i.i.i59, label %.lr.ph.i.i.i.i.i.i52, !llvm.loop !11

_ZSt8_DestroyIPN2cv5aruco15MarkerCandidateES2_EvT_S4_RSaIT0_E.exit.i.i.i.i59: ; preds = %_ZSt8_DestroyIN2cv5aruco15MarkerCandidateEEvPT_.exit.i.i.i.i.i.i57, %_ZN2cv5aruco15MarkerCandidateaSEOS1_.exit.i50
  %.not.i.i1.i.i.i.i60 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i1.i.i.i.i60, label %_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit61, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPN2cv5aruco15MarkerCandidateES2_EvT_S4_RSaIT0_E.exit.i.i.i.i59
  %i.fs = ptrtoint ptr %i.fa to i64
  %i.ft = ptrtoint ptr %i.ew to i64
  %i.fu = sub i64 %i.fs, %i.ft
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fu) #33
  br label %_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit61

_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit61:  ; preds = %_ZSt8_DestroyIPN2cv5aruco15MarkerCandidateES2_EvT_S4_RSaIT0_E.exit.i.i.i.i59, %bb.t
  %i.fv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 88
  %i.fw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 88 ; 2 uses
  %i.fx = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.fy = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.fy, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPN2cv5aruco19MarkerCandidateTreeEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i, !llvm.loop !14

_ZSt4moveIPN2cv5aruco19MarkerCandidateTreeEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i: ; preds = %_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit61, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %i.fw, %_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit61 ]
  %i.fz = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i to i64 ; 2 uses
  %i.ga = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.gb ; 3 uses
  %i.gd = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.ge = ptrtoint ptr %.016.lcssa.i to i64
  %i.gf = sub i64 %i.gd, %i.ge                    ; 2 uses
  %i.gg = icmp sgt i64 %i.gf, 0
  br i1 %i.gg, label %.lr.ph.preheader.i.i.i.i.i19.i, label %_ZSt12__move_mergeIPN2cv5aruco19MarkerCandidateTreeEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit

.lr.ph.preheader.i.i.i.i.i19.i:                   ; preds = %_ZSt4moveIPN2cv5aruco19MarkerCandidateTreeEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i
  %i.gh = udiv exact i64 %i.gf, 88
  br label %.lr.ph.i.i.i.i.i20.i

.lr.ph.i.i.i.i.i20.i:                             ; preds = %_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit, %.lr.ph.preheader.i.i.i.i.i19.i
  %.012.i.i.i.i.i21.i = phi i64 [ %i.il, %_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit ], [ %i.gh, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i = phi ptr [ %i.ik, %_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit ], [ %i.gc, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 11 uses
  %.0910.i.i.i.i.i23.i = phi ptr [ %i.ij, %_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit ], [ %.016.lcssa.i, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 10 uses
  %i.gi = load ptr, ptr %.0811.i.i.i.i.i22.i, align 8, !tbaa !105 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 16 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !106
  %i.gl = load <2 x ptr>, ptr %.0910.i.i.i.i.i23.i, align 8, !tbaa !140
  store <2 x ptr> %i.gl, ptr %.0811.i.i.i.i.i22.i, align 8, !tbaa !140
  %i.gm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !106
  store ptr %i.gn, ptr %i.gj, align 8, !tbaa !106
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gi, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.0910.i.i.i.i.i23.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEaSEOS4_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i20.i
  %i.go = ptrtoint ptr %i.gk to i64
  %i.gp = ptrtoint ptr %i.gi to i64
  %i.gq = sub i64 %i.go, %i.gp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.gq) #33
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEaSEOS4_.exit.i.i

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEaSEOS4_.exit.i.i: ; preds = %bb.u, %.lr.ph.i.i.i.i.i20.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 24 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 24 ; 2 uses
  %i.gt = load ptr, ptr %i.gr, align 8, !tbaa !113 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 40 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !114
  %i.gw = load <2 x ptr>, ptr %i.gs, align 8, !tbaa !220
  store <2 x ptr> %i.gw, ptr %i.gr, align 8, !tbaa !220
  %i.gx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 40
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !114
  store ptr %i.gy, ptr %i.gu, align 8, !tbaa !114
  %.not.i.i.i.i.i4.i.i = icmp eq ptr %i.gt, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gs, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i4.i.i, label %_ZN2cv5aruco15MarkerCandidateaSEOS1_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEaSEOS4_.exit.i.i
  %i.gz = ptrtoint ptr %i.gv to i64
  %i.ha = ptrtoint ptr %i.gt to i64
  %i.hb = sub i64 %i.gz, %i.ha
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.hb) #33
  br label %_ZN2cv5aruco15MarkerCandidateaSEOS1_.exit.i

_ZN2cv5aruco15MarkerCandidateaSEOS1_.exit.i:      ; preds = %bb.v, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEaSEOS4_.exit.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 48
  %i.hd = load float, ptr %i.hc, align 8, !tbaa !237
  %i.he = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 48
  store float %i.hd, ptr %i.he, align 8, !tbaa !237
  %i.hf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 52
  %i.hg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 52
  %i.hh = load i64, ptr %i.hg, align 4
  store i64 %i.hh, ptr %i.hf, align 4
  %i.hi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 64 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 64 ; 2 uses
  %i.hk = load ptr, ptr %i.hi, align 8, !tbaa !238 ; 5 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 72
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !239 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 80 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !240
  %i.hp = load <2 x ptr>, ptr %i.hj, align 8, !tbaa !252
  store <2 x ptr> %i.hp, ptr %i.hi, align 8, !tbaa !252
  %i.hq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 80
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !240
  store ptr %i.hr, ptr %i.hn, align 8, !tbaa !240
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.hk, %i.hm
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hj, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv5aruco15MarkerCandidateES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i46

.lr.ph.i.i.i.i.i.i46:                             ; preds = %_ZN2cv5aruco15MarkerCandidateaSEOS1_.exit.i, %_ZSt8_DestroyIN2cv5aruco15MarkerCandidateEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.if, %_ZSt8_DestroyIN2cv5aruco15MarkerCandidateEEvPT_.exit.i.i.i.i.i.i ], [ %i.hk, %_ZN2cv5aruco15MarkerCandidateaSEOS1_.exit.i ] ; 5 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !113 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i46
  %i.hu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 40
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !114
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = ptrtoint ptr %i.ht to i64
  %i.hy = sub i64 %i.hw, %i.hx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ht, i64 noundef %i.hy) #33
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.w, %.lr.ph.i.i.i.i.i.i46
  %i.hz = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN2cv5aruco15MarkerCandidateEEvPT_.exit.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !106
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = ptrtoint ptr %i.hz to i64
  %i.ie = sub i64 %i.ic, %i.id
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef %i.ie) #33
  br label %_ZSt8_DestroyIN2cv5aruco15MarkerCandidateEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN2cv5aruco15MarkerCandidateEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.x, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.if, %i.hm
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv5aruco15MarkerCandidateES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i46, !llvm.loop !11

_ZSt8_DestroyIPN2cv5aruco15MarkerCandidateES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN2cv5aruco15MarkerCandidateEEvPT_.exit.i.i.i.i.i.i, %_ZN2cv5aruco15MarkerCandidateaSEOS1_.exit.i
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.hk, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit, label %bb.y

bb.y:                                             ; preds = %_ZSt8_DestroyIPN2cv5aruco15MarkerCandidateES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.ig = ptrtoint ptr %i.ho to i64
  %i.ih = ptrtoint ptr %i.hk to i64
  %i.ii = sub i64 %i.ig, %i.ih
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.ii) #33
  br label %_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit

_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit:    ; preds = %_ZSt8_DestroyIPN2cv5aruco15MarkerCandidateES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, %bb.y
  %i.ij = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 88
  %i.ik = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 88 ; 2 uses
  %i.il = add nsw i64 %.012.i.i.i.i.i21.i, -1
  %i.im = icmp samesign ugt i64 %.012.i.i.i.i.i21.i, 1
  br i1 %i.im, label %.lr.ph.i.i.i.i.i20.i, label %_ZSt12__move_mergeIPN2cv5aruco19MarkerCandidateTreeEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit, !llvm.loop !14

_ZSt12__move_mergeIPN2cv5aruco19MarkerCandidateTreeEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit: ; preds = %_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit, %_ZSt4moveIPN2cv5aruco19MarkerCandidateTreeEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i
  %.08.lcssa.i.i.i.i.i18.i = phi ptr [ %i.gc, %_ZSt4moveIPN2cv5aruco19MarkerCandidateTreeEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i ], [ %i.ik, %_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit ]
  %4 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i to i64
  %i.in = sub i64 %4, %i.fz
  %i.io = getelementptr inbounds i8, ptr %i.gc, i64 %i.in ; 2 uses
  %i.ip = sub i64 %i.b, %i.gd
  %i.iq = sdiv exact i64 %i.ip, 88                ; 2 uses
  %.not = icmp slt i64 %i.iq, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !578

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIPN2cv5aruco19MarkerCandidateTreeEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %_ZSt12__move_mergeIPN2cv5aruco19MarkerCandidateTreeEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit ] ; 3 uses
  %.sroa.018.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.io, %_ZSt12__move_mergeIPN2cv5aruco19MarkerCandidateTreeEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit ] ; 2 uses
  %.lcssa103 = phi i64 [ %i.e, %bb.a ], [ %i.iq, %_ZSt12__move_mergeIPN2cv5aruco19MarkerCandidateTreeEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa103) ; 2 uses
  %.idx98 = mul nsw i64 %.sroa.speculated, 88
  %i.ir = getelementptr inbounds i8, ptr %.0.lcssa, i64 %.idx98 ; 5 uses
  %i.is = icmp ne i64 %.sroa.speculated, 0
  %i.it = icmp ne ptr %i.ir, %1
  %i.iu = and i1 %i.is, %i.it
  br i1 %i.iu, label %.lr.ph.i39, label %._crit_edge.i21

.lr.ph.i39:                                       ; preds = %._crit_edge, %bb.ab
  %.030.i40 = phi ptr [ %.1.i44, %bb.ab ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %.01629.i41 = phi ptr [ %.117.i43, %bb.ab ], [ %i.ir, %._crit_edge ] ; 4 uses
  %.sroa.0.028.i42 = phi ptr [ %i.je, %bb.ab ], [ %.sroa.018.0.lcssa, %._crit_edge ] ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.01629.i41, i64 48
  %i.iw = load float, ptr %i.iv, align 8, !tbaa !237
  %i.ix = getelementptr inbounds nuw i8, ptr %.030.i40, i64 48
  %i.iy = load float, ptr %i.ix, align 8, !tbaa !237
  %i.iz = fcmp ogt float %i.iw, %i.iy
  br i1 %i.iz, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i39
  %i.ja = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.028.i42, ptr noundef nonnull align 8 dereferenceable(88) %.01629.i41) #31 ; 0 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.01629.i41, i64 88
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i39
  %i.jc = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.028.i42, ptr noundef nonnull align 8 dereferenceable(88) %.030.i40) #31 ; 0 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.030.i40, i64 88
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.117.i43 = phi ptr [ %i.jb, %bb.z ], [ %.01629.i41, %bb.aa ] ; 3 uses
  %.1.i44 = phi ptr [ %.030.i40, %bb.z ], [ %i.jd, %bb.aa ] ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i42, i64 88 ; 2 uses
  %i.jf = icmp ne ptr %.1.i44, %i.ir
  %i.jg = icmp ne ptr %.117.i43, %1
  %i.jh = select i1 %i.jf, i1 %i.jg, i1 false
  br i1 %i.jh, label %.lr.ph.i39, label %._crit_edge.i21, !llvm.loop !577

._crit_edge.i21:                                  ; preds = %bb.ab, %._crit_edge
  %.sroa.0.0.lcssa.i22 = phi ptr [ %.sroa.018.0.lcssa, %._crit_edge ], [ %i.je, %bb.ab ] ; 4 uses
  %.016.lcssa.i23 = phi ptr [ %i.ir, %._crit_edge ], [ %.117.i43, %bb.ab ] ; 2 uses
  %.0.lcssa.i24 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.1.i44, %bb.ab ] ; 2 uses
  %i.ji = ptrtoint ptr %i.ir to i64
  %i.jj = ptrtoint ptr %.0.lcssa.i24 to i64
  %i.jk = sub i64 %i.ji, %i.jj                    ; 2 uses
  %i.jl = icmp sgt i64 %i.jk, 0
  br i1 %i.jl, label %.lr.ph.preheader.i.i.i.i.i.i34, label %_ZSt4moveIPN2cv5aruco19MarkerCandidateTreeEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i25

.lr.ph.preheader.i.i.i.i.i.i34:                   ; preds = %._crit_edge.i21
  %i.jm = udiv exact i64 %i.jk, 88
  br label %.lr.ph.i.i.i.i.i.i35

.lr.ph.i.i.i.i.i.i35:                             ; preds = %.lr.ph.i.i.i.i.i.i35, %.lr.ph.preheader.i.i.i.i.i.i34
  %.012.i.i.i.i.i.i36 = phi i64 [ %i.jq, %.lr.ph.i.i.i.i.i.i35 ], [ %i.jm, %.lr.ph.preheader.i.i.i.i.i.i34 ] ; 2 uses
  %.0811.i.i.i.i.i.i37 = phi ptr [ %i.jp, %.lr.ph.i.i.i.i.i.i35 ], [ %.sroa.0.0.lcssa.i22, %.lr.ph.preheader.i.i.i.i.i.i34 ] ; 2 uses
  %.0910.i.i.i.i.i.i38 = phi ptr [ %i.jo, %.lr.ph.i.i.i.i.i.i35 ], [ %.0.lcssa.i24, %.lr.ph.preheader.i.i.i.i.i.i34 ] ; 2 uses
  %i.jn = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %.0811.i.i.i.i.i.i37, ptr noundef nonnull align 8 dereferenceable(88) %.0910.i.i.i.i.i.i38) #31 ; 0 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i38, i64 88
  %i.jp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i37, i64 88 ; 2 uses
  %i.jq = add nsw i64 %.012.i.i.i.i.i.i36, -1
  %i.jr = icmp samesign ugt i64 %.012.i.i.i.i.i.i36, 1
  br i1 %i.jr, label %.lr.ph.i.i.i.i.i.i35, label %_ZSt4moveIPN2cv5aruco19MarkerCandidateTreeEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i25, !llvm.loop !14

_ZSt4moveIPN2cv5aruco19MarkerCandidateTreeEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i25: ; preds = %.lr.ph.i.i.i.i.i.i35, %._crit_edge.i21
  %.08.lcssa.i.i.i.i.i.i26 = phi ptr [ %.sroa.0.0.lcssa.i22, %._crit_edge.i21 ], [ %i.jp, %.lr.ph.i.i.i.i.i.i35 ]
  %i.js = ptrtoint ptr %.016.lcssa.i23 to i64
  %i.jt = sub i64 %i.b, %i.js                     ; 2 uses
  %i.ju = icmp sgt i64 %i.jt, 0
  br i1 %i.ju, label %.lr.ph.preheader.i.i.i.i.i19.i28, label %_ZSt12__move_mergeIPN2cv5aruco19MarkerCandidateTreeEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit45

.lr.ph.preheader.i.i.i.i.i19.i28:                 ; preds = %_ZSt4moveIPN2cv5aruco19MarkerCandidateTreeEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i25
  %i.jv = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i26 to i64
  %i.jw = ptrtoint ptr %.sroa.0.0.lcssa.i22 to i64
  %i.jx = sub i64 %i.jv, %i.jw
  %i.jy = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i22, i64 %i.jx
  %i.jz = udiv exact i64 %i.jt, 88
  br label %.lr.ph.i.i.i.i.i20.i29

.lr.ph.i.i.i.i.i20.i29:                           ; preds = %.lr.ph.i.i.i.i.i20.i29, %.lr.ph.preheader.i.i.i.i.i19.i28
  %.012.i.i.i.i.i21.i30 = phi i64 [ %i.kd, %.lr.ph.i.i.i.i.i20.i29 ], [ %i.jz, %.lr.ph.preheader.i.i.i.i.i19.i28 ] ; 2 uses
  %.0811.i.i.i.i.i22.i31 = phi ptr [ %i.kc, %.lr.ph.i.i.i.i.i20.i29 ], [ %i.jy, %.lr.ph.preheader.i.i.i.i.i19.i28 ] ; 2 uses
  %.0910.i.i.i.i.i23.i32 = phi ptr [ %i.kb, %.lr.ph.i.i.i.i.i20.i29 ], [ %.016.lcssa.i23, %.lr.ph.preheader.i.i.i.i.i19.i28 ] ; 2 uses
  %i.ka = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %.0811.i.i.i.i.i22.i31, ptr noundef nonnull align 8 dereferenceable(88) %.0910.i.i.i.i.i23.i32) #31 ; 0 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i32, i64 88
  %i.kc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i31, i64 88
  %i.kd = add nsw i64 %.012.i.i.i.i.i21.i30, -1
  %i.ke = icmp samesign ugt i64 %.012.i.i.i.i.i21.i30, 1
  br i1 %i.ke, label %.lr.ph.i.i.i.i.i20.i29, label %_ZSt12__move_mergeIPN2cv5aruco19MarkerCandidateTreeEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit45, !llvm.loop !14

_ZSt12__move_mergeIPN2cv5aruco19MarkerCandidateTreeEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit45: ; preds = %.lr.ph.i.i.i.i.i20.i29, %_ZSt4moveIPN2cv5aruco19MarkerCandidateTreeEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv5aruco19MarkerCandidateTreeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.cv::aruco::MarkerCandidateTree", align 16 ; 13 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit15, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.016 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.not17 = icmp eq ptr %.sroa.0.016, %1
  br i1 %.not17, label %.loopexit15, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.k = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.0.019 = phi ptr [ %.sroa.0.016, %.lr.ph ], [ %.sroa.0.0, %bb.o ] ; 7 uses
  %.pn18 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.019, %bb.o ] ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pn18, i64 136
  %i.m = load float, ptr %i.l, align 8, !tbaa !237 ; 2 uses
  %i.n = load float, ptr %i.b, align 8, !tbaa !237
  %i.o = fcmp ogt float %i.m, %i.n
  br i1 %i.o, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.p = load <2 x ptr>, ptr %.sroa.0.019, align 8, !tbaa !140
  store <2 x ptr> %i.p, ptr %2, align 16, !tbaa !140
  %i.q = getelementptr inbounds nuw i8, ptr %.pn18, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !106
  store ptr %i.r, ptr %i.c, align 16, !tbaa !106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.019, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.pn18, i64 112 ; 2 uses
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !220
  store <2 x ptr> %i.t, ptr %i.d, align 8, !tbaa !220
  %i.u = getelementptr inbounds nuw i8, ptr %.pn18, i64 128
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !114
  store ptr %i.v, ptr %i.e, align 8, !tbaa !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  store float %i.m, ptr %i.f, align 16, !tbaa !237
  %i.w = getelementptr inbounds nuw i8, ptr %.pn18, i64 140
  %i.x = load i64, ptr %i.w, align 4
  store i64 %i.x, ptr %i.g, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %.pn18, i64 152 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.y, align 8, !tbaa !252
  store <2 x ptr> %i.z, ptr %i.h, align 16, !tbaa !252
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn18, i64 168
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !240
  store ptr %i.ab, ptr %i.j, align 16, !tbaa !240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %i.ac = ptrtoint ptr %.sroa.0.019 to i64
  %i.ad = sub i64 %i.ac, %i.k                     ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.pn18, i64 176
  %i.ag = udiv exact i64 %i.ad, 88
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.ck, %_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit ], [ %i.ag, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ai, %_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit ], [ %i.af, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ah, %_ZN2cv5aruco19MarkerCandidateTreeaSEOS1_.exit ], [ %.sroa.0.019, %.lr.ph.preheader.i.i.i.i.i ] ; 8 uses
  %i.ah = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -88 ; 3 uses
  %i.ai = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -88 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !105 ; 3 uses
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -72 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !106
  %i.am = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !140
  store <2 x ptr> %i.am, ptr %i.ai, align 8, !tbaa !140
  %i.an = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !106
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !106
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ah, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEaSEOS4_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = ptrtoint ptr %i.aj to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ar) #33
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEaSEOS4_.exit.i.i

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEaSEOS4_.exit.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.as = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -64 ; 2 uses
end_hunk_0
