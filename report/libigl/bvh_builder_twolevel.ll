inline.NumInlined: 11316
inline.NumDeleted: 1655
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 105
loop-unroll.NumUnrolled: 293
begin_hunk_0_@_ZSt22__final_insertion_sortIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_T0_:bb.a
  %i.dv = icmp ugt i64 %i.cv, %i.du
  br i1 %i.dv, label %.lr.ph.i.i19, label %_ZSt25__unguarded_linear_insertIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIS7_EEEEvT_T0_.exit.i14, !llvm.loop !947

_ZSt25__unguarded_linear_insertIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIS7_EEEEvT_T0_.exit.i14: ; preds = %.lr.ph.i.i19, %.lr.ph.i
  %.09.lcssa.i.i15 = phi ptr [ %.07.i, %.lr.ph.i ], [ %.0.i.i21, %.lr.ph.i.i19 ] ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %.09.lcssa.i.i15, ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0.i.i13, i64 9, i1 false)
  %i.dw = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i15, i64 16
  store <4 x float> %i.cj, ptr %i.dw, align 16
  %i.dx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i15, i64 32
  store <4 x float> %i.cl, ptr %i.dx, align 16
  %i.dy = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i15, i64 48
  store <4 x float> %i.cn, ptr %i.dy, align 16
  %i.dz = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i15, i64 64
  store <4 x float> %i.cp, ptr %i.dz, align 16
  %i.ea = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i15, i64 80
  store i64 %i.cr, ptr %i.ea, align 16
  %.sroa.15.80..sroa_idx.i.i16 = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i15, i64 88
  store <2 x i64> %i.ct, ptr %.sroa.15.80..sroa_idx.i.i16, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i13)
  %i.eb = getelementptr inbounds nuw i8, ptr %.07.i, i64 112 ; 2 uses
  %.not.i18 = icmp eq ptr %i.eb, %1
  br i1 %.not.i18, label %_ZSt26__unguarded_insertion_sortIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_T0_.exit, label %.lr.ph.i, !llvm.loop !949

bb.f:                                             ; preds = %bb.a
  %i.ec = icmp eq ptr %0, %1
  br i1 %i.ec, label %_ZSt26__unguarded_insertion_sortIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_T0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %.016.i24 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.not17.i = icmp eq ptr %.016.i24, %1
  br i1 %.not17.i, label %_ZSt26__unguarded_insertion_sortIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_T0_.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.preheader.i
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.15.80..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %.lr.ph.i25
  %.019.i27 = phi ptr [ %.016.i24, %.lr.ph.i25 ], [ %.0.i33, %bb.j ] ; 8 uses
  %.pn18.i28 = phi ptr [ %0, %.lr.ph.i25 ], [ %.019.i27, %bb.j ] ; 10 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.pn18.i28, i64 192
  %i.ek = getelementptr inbounds nuw i8, ptr %.pn18.i28, i64 200
  %i.el = load i64, ptr %i.ek, align 8            ; 3 uses
  %i.em = load i64, ptr %i.ej, align 8            ; 3 uses
  %i.en = sub i64 %i.el, %i.em                    ; 3 uses
  %i.eo = load i64, ptr %i.ee, align 8
  %i.ep = load i64, ptr %i.ed, align 8
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = icmp ugt i64 %i.en, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %.pn18.i28, i64 128 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.pn18.i28, i64 144 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.pn18.i28, i64 160 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.pn18.i28, i64 176 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.pn18.i28, i64 208 ; 2 uses
  br i1 %i.er, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i23)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0.i23, ptr noundef nonnull align 16 dereferenceable(9) %.019.i27, i64 9, i1 false)
  %i.ex = load <4 x float>, ptr %i.es, align 16
  %i.ey = load <4 x float>, ptr %i.et, align 16
  %i.ez = load <4 x float>, ptr %i.eu, align 16
  %i.fa = load <4 x float>, ptr %i.ev, align 16
  %i.fb = load i64, ptr %i.ew, align 16
  %i.fc = ptrtoint ptr %.019.i27 to i64
  %i.fd = sub i64 %i.fc, %i.b                     ; 2 uses
  %i.fe = icmp sgt i64 %i.fd, 0
  br i1 %i.fe, label %.lr.ph.preheader.i.i.i.i.i.i39, label %_ZSt13move_backwardIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEES8_ET0_T_SA_S9_.exit.i38

.lr.ph.preheader.i.i.i.i.i.i39:                   ; preds = %bb.h
  %i.ff = getelementptr inbounds nuw i8, ptr %.pn18.i28, i64 224
  %i.fg = udiv exact i64 %i.fd, 112
  br label %.lr.ph.i.i.i.i.i.i40

.lr.ph.i.i.i.i.i.i40:                             ; preds = %.lr.ph.i.i.i.i.i.i40, %.lr.ph.preheader.i.i.i.i.i.i39
  %.010.i.i.i.i.i.i41 = phi i64 [ %i.fx, %.lr.ph.i.i.i.i.i.i40 ], [ %i.fg, %.lr.ph.preheader.i.i.i.i.i.i39 ] ; 2 uses
  %.069.i.i.i.i.i.i42 = phi ptr [ %i.fi, %.lr.ph.i.i.i.i.i.i40 ], [ %i.ff, %.lr.ph.preheader.i.i.i.i.i.i39 ] ; 6 uses
  %.078.i.i.i.i.i.i43 = phi ptr [ %i.fh, %.lr.ph.i.i.i.i.i.i40 ], [ %.019.i27, %.lr.ph.preheader.i.i.i.i.i.i39 ] ; 6 uses
  %i.fh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i43, i64 -112 ; 2 uses
  %i.fi = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i42, i64 -112 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.fi, ptr noundef nonnull align 16 dereferenceable(112) %i.fh, i64 9, i1 false)
  %i.fj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i42, i64 -96
  %i.fk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i43, i64 -96
  %i.fl = load <4 x float>, ptr %i.fk, align 16
  store <4 x float> %i.fl, ptr %i.fj, align 16
  %i.fm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i43, i64 -80
  %i.fn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i42, i64 -80
  %i.fo = load <4 x float>, ptr %i.fm, align 16
  store <4 x float> %i.fo, ptr %i.fn, align 16
  %i.fp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i42, i64 -64
  %i.fq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i43, i64 -64
  %i.fr = load <4 x float>, ptr %i.fq, align 16
  store <4 x float> %i.fr, ptr %i.fp, align 16
  %i.fs = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i43, i64 -48
  %i.ft = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i42, i64 -48
  %i.fu = load <4 x float>, ptr %i.fs, align 16
  store <4 x float> %i.fu, ptr %i.ft, align 16
  %i.fv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i42, i64 -32
  %i.fw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i43, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.fv, ptr noundef nonnull align 16 dereferenceable(24) %i.fw, i64 24, i1 false)
  %i.fx = add nsw i64 %.010.i.i.i.i.i.i41, -1
  %i.fy = icmp samesign ugt i64 %.010.i.i.i.i.i.i41, 1
  br i1 %i.fy, label %.lr.ph.i.i.i.i.i.i40, label %_ZSt13move_backwardIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEES8_ET0_T_SA_S9_.exit.i38, !llvm.loop !946

_ZSt13move_backwardIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEES8_ET0_T_SA_S9_.exit.i38: ; preds = %.lr.ph.i.i.i.i.i.i40, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %0, ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0.i23, i64 9, i1 false)
  store <4 x float> %i.ex, ptr %i.ef, align 16
  store <4 x float> %i.ey, ptr %i.eg, align 16
  store <4 x float> %i.ez, ptr %i.eh, align 16
  store <4 x float> %i.fa, ptr %i.ei, align 16
  store i64 %i.em, ptr %i.ed, align 16
  store i64 %i.el, ptr %i.ee, align 8
  store i64 %i.fb, ptr %.sroa.15.80..sroa_idx.i26, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i23)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i22)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0.i.i22, ptr noundef nonnull align 16 dereferenceable(9) %.019.i27, i64 9, i1 false)
  %i.fz = load <4 x float>, ptr %i.es, align 16
  %i.ga = load <4 x float>, ptr %i.et, align 16
  %i.gb = load <4 x float>, ptr %i.eu, align 16
  %i.gc = load <4 x float>, ptr %i.ev, align 16
  %i.gd = load i64, ptr %i.ew, align 16
  %i.ge = getelementptr inbounds nuw i8, ptr %.pn18.i28, i64 80 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.pn18.i28, i64 88
  %i.gg = load i64, ptr %i.gf, align 8
  %i.gh = load i64, ptr %i.ge, align 16
  %i.gi = sub i64 %i.gg, %i.gh
  %i.gj = icmp ugt i64 %i.en, %i.gi
  br i1 %i.gj, label %.lr.ph.i.i35, label %_ZSt25__unguarded_linear_insertIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIS7_EEEEvT_T0_.exit.i29

.lr.ph.i.i35:                                     ; preds = %bb.i, %.lr.ph.i.i35
  %i.gk = phi ptr [ %i.gy, %.lr.ph.i.i35 ], [ %i.ge, %bb.i ]
  %.0910.i.i36 = phi ptr [ %.0.i.i37, %.lr.ph.i.i35 ], [ %.019.i27, %bb.i ] ; 13 uses
  %.0.i.i37 = getelementptr inbounds i8, ptr %.0910.i.i36, i64 -112 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.0910.i.i36, ptr noundef nonnull align 16 dereferenceable(112) %.0.i.i37, i64 9, i1 false)
  %i.gl = getelementptr inbounds nuw i8, ptr %.0910.i.i36, i64 16
  %i.gm = getelementptr inbounds i8, ptr %.0910.i.i36, i64 -96
  %i.gn = load <4 x float>, ptr %i.gm, align 16
  store <4 x float> %i.gn, ptr %i.gl, align 16
  %i.go = getelementptr inbounds i8, ptr %.0910.i.i36, i64 -80
  %i.gp = getelementptr inbounds nuw i8, ptr %.0910.i.i36, i64 32
  %i.gq = load <4 x float>, ptr %i.go, align 16
  store <4 x float> %i.gq, ptr %i.gp, align 16
  %i.gr = getelementptr inbounds nuw i8, ptr %.0910.i.i36, i64 48
  %i.gs = getelementptr inbounds i8, ptr %.0910.i.i36, i64 -64
  %i.gt = load <4 x float>, ptr %i.gs, align 16
  store <4 x float> %i.gt, ptr %i.gr, align 16
  %i.gu = getelementptr inbounds i8, ptr %.0910.i.i36, i64 -48
  %i.gv = getelementptr inbounds nuw i8, ptr %.0910.i.i36, i64 64
  %i.gw = load <4 x float>, ptr %i.gu, align 16
  store <4 x float> %i.gw, ptr %i.gv, align 16
  %i.gx = getelementptr inbounds nuw i8, ptr %.0910.i.i36, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.gx, ptr noundef nonnull align 16 dereferenceable(24) %i.gk, i64 24, i1 false)
  %i.gy = getelementptr inbounds i8, ptr %.0910.i.i36, i64 -144 ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %.0910.i.i36, i64 -136
  %i.ha = load i64, ptr %i.gz, align 8
  %i.hb = load i64, ptr %i.gy, align 16
  %i.hc = sub i64 %i.ha, %i.hb
  %i.hd = icmp ugt i64 %i.en, %i.hc
  br i1 %i.hd, label %.lr.ph.i.i35, label %_ZSt25__unguarded_linear_insertIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIS7_EEEEvT_T0_.exit.i29, !llvm.loop !947

_ZSt25__unguarded_linear_insertIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIS7_EEEEvT_T0_.exit.i29: ; preds = %.lr.ph.i.i35, %bb.i
  %.09.lcssa.i.i30 = phi ptr [ %.019.i27, %bb.i ], [ %.0.i.i37, %.lr.ph.i.i35 ] ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %.09.lcssa.i.i30, ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0.i.i22, i64 9, i1 false)
  %i.he = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i30, i64 16
  store <4 x float> %i.fz, ptr %i.he, align 16
  %i.hf = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i30, i64 32
  store <4 x float> %i.ga, ptr %i.hf, align 16
  %i.hg = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i30, i64 48
  store <4 x float> %i.gb, ptr %i.hg, align 16
  %i.hh = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i30, i64 64
  store <4 x float> %i.gc, ptr %i.hh, align 16
  %i.hi = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i30, i64 80
  store i64 %i.em, ptr %i.hi, align 16
  %.sroa.15.80..sroa_idx.i.i31 = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i30, i64 88
  store i64 %i.el, ptr %.sroa.15.80..sroa_idx.i.i31, align 8
  %.sroa.17.80..sroa_idx.i.i32 = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i30, i64 96
  store i64 %i.gd, ptr %.sroa.17.80..sroa_idx.i.i32, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i22)
  br label %bb.j

bb.j:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIS7_EEEEvT_T0_.exit.i29, %_ZSt13move_backwardIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEES8_ET0_T_SA_S9_.exit.i38
  %.0.i33 = getelementptr inbounds nuw i8, ptr %.019.i27, i64 112 ; 2 uses
  %.not.i34 = icmp eq ptr %.0.i33, %1
  br i1 %.not.i34, label %_ZSt26__unguarded_insertion_sortIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_T0_.exit, label %bb.g, !llvm.loop !948

_ZSt26__unguarded_insertion_sortIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_T0_.exit: ; preds = %bb.j, %_ZSt25__unguarded_linear_insertIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIS7_EEEEvT_T0_.exit.i14, %.preheader.i, %bb.f, %_ZSt16__insertion_sortIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__sort_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 112
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_SF_RT0_.exit
  %.07 = phi ptr [ %1, %.lr.ph ], [ %i.j, %_ZSt10__pop_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_SF_RT0_.exit ] ; 7 uses
  %i.j = getelementptr inbounds i8, ptr %.07, i64 -112 ; 4 uses
  %.sroa.07.i.sroa.0.0.copyload = load <9 x i8>, ptr %i.j, align 16
  %i.k = getelementptr inbounds i8, ptr %.07, i64 -96 ; 2 uses
  %i.l = load <4 x float>, ptr %i.k, align 16
  %i.m = getelementptr inbounds i8, ptr %.07, i64 -80 ; 2 uses
  %i.n = load <4 x float>, ptr %i.m, align 16
  %i.o = getelementptr inbounds i8, ptr %.07, i64 -64 ; 2 uses
  %i.p = load <4 x float>, ptr %i.o, align 16
  %i.q = getelementptr inbounds i8, ptr %.07, i64 -48 ; 2 uses
  %i.r = load <4 x float>, ptr %i.q, align 16
  %i.s = getelementptr inbounds i8, ptr %.07, i64 -32 ; 2 uses
  %i.t = load i64, ptr %i.s, align 16             ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.07, i64 -24 ; 2 uses
  %i.v = load <2 x i64>, ptr %i.u, align 8
  %i.w = load i64, ptr %i.u, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.j, ptr noundef nonnull align 16 dereferenceable(112) %0, i64 9, i1 false)
  %i.x = load <4 x float>, ptr %i.e, align 16
  store <4 x float> %i.x, ptr %i.k, align 16
  %i.y = load <4 x float>, ptr %i.f, align 16
  store <4 x float> %i.y, ptr %i.m, align 16
  %i.z = load <4 x float>, ptr %i.g, align 16
  store <4 x float> %i.z, ptr %i.o, align 16
  %i.aa = load <4 x float>, ptr %i.h, align 16
  store <4 x float> %i.aa, ptr %i.q, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.s, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.ab = ptrtoint ptr %i.j to i64
  %i.ac = sub i64 %i.ab, %i.a                     ; 3 uses
  %i.ad = sdiv exact i64 %i.ac, 112               ; 3 uses
  %i.ae = add nsw i64 %i.ad, -1
  %i.af = sdiv i64 %i.ae, 2
  %i.ag = icmp sgt i64 %i.ac, 224
  br i1 %i.ag, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.029.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.ah = shl i64 %.029.i.i, 1                    ; 3 uses
  %i.ai = add i64 %i.ah, 2                        ; 2 uses
  %i.aj = getelementptr inbounds [112 x i8], ptr %0, i64 %i.ai ; 2 uses
  %i.ak = getelementptr [112 x i8], ptr %0, i64 %i.ah ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = load i64, ptr %i.al, align 8
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = getelementptr i8, ptr %i.ak, i64 192
  %i.ar = getelementptr i8, ptr %i.ak, i64 200
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = load i64, ptr %i.aq, align 8
  %i.au = sub i64 %i.as, %i.at
  %i.av = icmp ugt i64 %i.ap, %i.au
  %i.aw = or disjoint i64 %i.ah, 1
  %spec.select.i.i = select i1 %i.av, i64 %i.aw, i64 %i.ai ; 4 uses
  %i.ax = getelementptr inbounds [112 x i8], ptr %0, i64 %spec.select.i.i ; 6 uses
  %i.ay = getelementptr inbounds [112 x i8], ptr %0, i64 %.029.i.i ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ay, ptr noundef nonnull align 16 dereferenceable(112) %i.ax, i64 9, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = load <4 x float>, ptr %i.ba, align 16
  store <4 x float> %i.bb, ptr %i.az, align 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.be = load <4 x float>, ptr %i.bc, align 16
  store <4 x float> %i.be, ptr %i.bd, align 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bh = load <4 x float>, ptr %i.bg, align 16
  store <4 x float> %i.bh, ptr %i.bf, align 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.bk = load <4 x float>, ptr %i.bi, align 16
  store <4 x float> %i.bk, ptr %i.bj, align 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bl, ptr noundef nonnull align 16 dereferenceable(24) %i.bm, i64 24, i1 false)
  %i.bn = icmp slt i64 %spec.select.i.i, %i.af
  br i1 %i.bn, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !950

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.bo = and i64 %i.ad, 1
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.bq = add nsw i64 %i.ad, -2
  %i.br = ashr exact i64 %i.bq, 1
  %i.bs = icmp eq i64 %.0.lcssa.i.i, %i.br
  br i1 %i.bs, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.bt = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bu = or disjoint i64 %i.bt, 1                ; 2 uses
  %i.bv = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %i.bu ; 6 uses
  %i.bw = getelementptr inbounds [112 x i8], ptr %0, i64 %.0.lcssa.i.i ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bw, ptr noundef nonnull align 16 dereferenceable(112) %i.bv, i64 9, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bz = load <4 x float>, ptr %i.by, align 16
  store <4 x float> %i.bz, ptr %i.bx, align 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cc = load <4 x float>, ptr %i.ca, align 16
  store <4 x float> %i.cc, ptr %i.cb, align 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.cf = load <4 x float>, ptr %i.ce, align 16
  store <4 x float> %i.cf, ptr %i.cd, align 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.ci = load <4 x float>, ptr %i.cg, align 16
  store <4 x float> %i.ci, ptr %i.ch, align 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 80
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bv, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.cj, ptr noundef nonnull align 16 dereferenceable(24) %i.ck, i64 24, i1 false)
  br label %.lr.ph.i.preheader.i.i

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_SF_RT0_.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.d, %.thread.i
  %.127.i15.i = phi i64 [ %i.bu, %.thread.i ], [ %.0.lcssa.i.i, %bb.d ]
  %i.cl = sub i64 %i.w, %i.t
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.preheader.i.i
  %.01316.i.i.i = phi i64 [ %.017.i.i1617.i, %bb.e ], [ %.127.i15.i, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %.017.in.i.i.i = add nsw i64 %.01316.i.i.i, -1
  %.017.i.i1617.i = lshr i64 %.017.in.i.i.i, 1    ; 3 uses
  %i.cm = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %.017.i.i1617.i ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 80 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 88
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = load i64, ptr %i.cn, align 8
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = icmp ugt i64 %i.cr, %i.cl
  br i1 %i.cs, label %bb.e, label %_ZSt10__pop_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_SF_RT0_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ct = getelementptr inbounds [112 x i8], ptr %0, i64 %.01316.i.i.i ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ct, ptr noundef nonnull align 16 dereferenceable(112) %i.cm, i64 9, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cw = load <4 x float>, ptr %i.cv, align 16
  store <4 x float> %i.cw, ptr %i.cu, align 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cz = load <4 x float>, ptr %i.cx, align 16
  store <4 x float> %i.cz, ptr %i.cy, align 16
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.db = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.dc = load <4 x float>, ptr %i.db, align 16
  store <4 x float> %i.dc, ptr %i.da, align 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cm, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  %i.df = load <4 x float>, ptr %i.dd, align 16
  store <4 x float> %i.df, ptr %i.de, align 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.dg, ptr noundef nonnull align 16 dereferenceable(24) %i.cn, i64 24, i1 false)
  %.not18.i = icmp eq i64 %.017.i.i1617.i, 0
  br i1 %.not18.i, label %_ZSt10__pop_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_SF_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !951

_ZSt10__pop_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_SF_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.013.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.01316.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.dh = getelementptr inbounds [112 x i8], ptr %0, i64 %.013.lcssa.i.i.i ; 7 uses
  store <9 x i8> %.sroa.07.i.sroa.0.0.copyload, ptr %i.dh, align 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <4 x float> %i.l, ptr %i.di, align 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  store <4 x float> %i.n, ptr %i.dj, align 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  store <4 x float> %i.p, ptr %i.dk, align 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  store <4 x float> %i.r, ptr %i.dl, align 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 80
  store i64 %i.t, ptr %i.dm, align 16
  %.sroa.13.80..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 88
  store <2 x i64> %i.v, ptr %.sroa.13.80..sroa_idx.i.i, align 8
  %i.dn = icmp sgt i64 %i.ac, 112
  br i1 %i.dn, label %bb.b, label %._crit_edge, !llvm.loop !952

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_SF_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 224
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 112                 ; 3 uses
  %i.f = add nsw i64 %i.e, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.e, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.e, 1
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %i.m ; 6 uses
  %i.o = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %i.l ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEElS7_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_T0_SG_T1_T2_.exit, %bb.b
  %.013 = phi i64 [ %i.g, %bb.b ], [ %i.de, %_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEElS7_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_T0_SG_T1_T2_.exit ] ; 8 uses
  %i.z = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %.013 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load <4 x float>, ptr %i.aa, align 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ad = load <4 x float>, ptr %i.ac, align 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.af = load <4 x float>, ptr %i.ae, align 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ah = load <4 x float>, ptr %i.ag, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.aj = load i64, ptr %i.ai, align 16           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 88 ; 2 uses
  %i.al = load <2 x i64>, ptr %i.ak, align 8
  %i.am = load i64, ptr %i.ak, align 8
  %.sroa.0.sroa.0.0.copyload = load <9 x i8>, ptr %i.z, align 16
  %i.an = icmp slt i64 %.013, %i.i
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.013, %bb.c ] ; 2 uses
  %i.ao = shl i64 %.029.i, 1                      ; 3 uses
  %i.ap = add i64 %i.ao, 2                        ; 2 uses
  %i.aq = getelementptr inbounds [112 x i8], ptr %0, i64 %i.ap ; 2 uses
  %i.ar = getelementptr [112 x i8], ptr %0, i64 %i.ao ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.au = load i64, ptr %i.at, align 8
  %i.av = load i64, ptr %i.as, align 8
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = getelementptr i8, ptr %i.ar, i64 192
  %i.ay = getelementptr i8, ptr %i.ar, i64 200
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = load i64, ptr %i.ax, align 8
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = icmp ugt i64 %i.aw, %i.bb
  %i.bd = or disjoint i64 %i.ao, 1
  %spec.select.i = select i1 %i.bc, i64 %i.bd, i64 %i.ap ; 4 uses
  %i.be = getelementptr inbounds [112 x i8], ptr %0, i64 %spec.select.i ; 6 uses
  %i.bf = getelementptr inbounds [112 x i8], ptr %0, i64 %.029.i ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bf, ptr noundef nonnull align 16 dereferenceable(112) %i.be, i64 9, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bi = load <4 x float>, ptr %i.bh, align 16
  store <4 x float> %i.bi, ptr %i.bg, align 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bl = load <4 x float>, ptr %i.bj, align 16
  store <4 x float> %i.bl, ptr %i.bk, align 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bo = load <4 x float>, ptr %i.bn, align 16
  store <4 x float> %i.bo, ptr %i.bm, align 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.br = load <4 x float>, ptr %i.bp, align 16
  store <4 x float> %i.br, ptr %i.bq, align 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bf, i64 80
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bs, ptr noundef nonnull align 16 dereferenceable(24) %i.bt, i64 24, i1 false)
  %i.bu = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bu, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !950

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.013, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bv = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.bv, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.o, ptr noundef nonnull align 16 dereferenceable(112) %i.n, i64 9, i1 false)
  %i.bw = load <4 x float>, ptr %i.q, align 16
  store <4 x float> %i.bw, ptr %i.p, align 16
  %i.bx = load <4 x float>, ptr %i.r, align 16
  store <4 x float> %i.bx, ptr %i.s, align 16
  %i.by = load <4 x float>, ptr %i.u, align 16
  store <4 x float> %i.by, ptr %i.t, align 16
  %i.bz = load <4 x float>, ptr %i.v, align 16
  store <4 x float> %i.bz, ptr %i.w, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.x, ptr noundef nonnull align 16 dereferenceable(24) %i.y, i64 24, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.127.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ca = icmp sgt i64 %.127.i, %.013
  br i1 %i.ca, label %.lr.ph.i.preheader.i, label %_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEElS7_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_T0_SG_T1_T2_.exit

.lr.ph.i.preheader.i:                             ; preds = %bb.e
  %i.cb = sub i64 %i.am, %i.aj
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.preheader.i
  %.01316.i.i = phi i64 [ %.017.i.i, %bb.f ], [ %.127.i, %.lr.ph.i.preheader.i ] ; 3 uses
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i.i = sdiv i64 %.017.in.i.i, 2            ; 4 uses
  %i.cc = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %.017.i.i ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 80 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 88
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = load i64, ptr %i.cd, align 8
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = icmp ugt i64 %i.ch, %i.cb
  br i1 %i.ci, label %bb.f, label %_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEElS7_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_T0_SG_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.cj = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %.01316.i.i ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.cj, ptr noundef nonnull align 16 dereferenceable(112) %i.cc, i64 9, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cm = load <4 x float>, ptr %i.cl, align 16
  store <4 x float> %i.cm, ptr %i.ck, align 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cp = load <4 x float>, ptr %i.cn, align 16
  store <4 x float> %i.cp, ptr %i.co, align 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.cs = load <4 x float>, ptr %i.cr, align 16
  store <4 x float> %i.cs, ptr %i.cq, align 16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cv = load <4 x float>, ptr %i.ct, align 16
  store <4 x float> %i.cv, ptr %i.cu, align 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.cw, ptr noundef nonnull align 16 dereferenceable(24) %i.cd, i64 24, i1 false)
  %i.cx = icmp sgt i64 %.017.i.i, %.013
  br i1 %i.cx, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEElS7_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_T0_SG_T1_T2_.exit, !llvm.loop !951

_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEElS7_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_T0_SG_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.127.i, %bb.e ], [ %.017.i.i, %bb.f ], [ %.01316.i.i, %.lr.ph.i.i ]
  %i.cy = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %.013.lcssa.i.i ; 7 uses
  store <9 x i8> %.sroa.0.sroa.0.0.copyload, ptr %i.cy, align 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <4 x float> %i.ab, ptr %i.cz, align 16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store <4 x float> %i.ad, ptr %i.da, align 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  store <4 x float> %i.af, ptr %i.db, align 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  store <4 x float> %i.ah, ptr %i.dc, align 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 80
  store i64 %i.aj, ptr %i.dd, align 16
  %.sroa.13.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 88
  store <2 x i64> %i.al, ptr %.sroa.13.80..sroa_idx.i, align 8
  %.not = icmp eq i64 %.013, 0
  %i.de = add nsw i64 %.013, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !953

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEElS7_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_T0_SG_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_SF_SF_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.i.i34 = alloca { i64, i8, [7 x i8] }, align 16 ; 4 uses
  %.sroa.0.i.i31 = alloca { i64, i8, [7 x i8] }, align 16 ; 4 uses
  %.sroa.0.i.i28 = alloca { i64, i8, [7 x i8] }, align 16 ; 4 uses
  %.sroa.0.i.i25 = alloca { i64, i8, [7 x i8] }, align 16 ; 4 uses
  %.sroa.0.i.i22 = alloca { i64, i8, [7 x i8] }, align 16 ; 4 uses
  %.sroa.0.i.i = alloca { i64, i8, [7 x i8] }, align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.c = load i64, ptr %i.b, align 8
  %i.d = load i64, ptr %i.a, align 8
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.h = load i64, ptr %i.g, align 8
  %i.i = load i64, ptr %i.f, align 8
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp ugt i64 %i.e, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.n = load i64, ptr %i.m, align 8
  %i.o = load i64, ptr %i.l, align 8
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  br i1 %i.k, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.q = icmp ugt i64 %i.j, %i.p
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0.i.i, ptr noundef nonnull align 16 dereferenceable(112) %0, i64 9, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load <4 x float>, ptr %i.r, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = load <4 x float>, ptr %i.t, align 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.w = load <4 x float>, ptr %i.v, align 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.y = load <4 x float>, ptr %i.x, align 16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ab = load i64, ptr %i.aa, align 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ag = load <2 x i64>, ptr %i.z, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %2, i64 9, i1 false)
  %i.ah = load <4 x float>, ptr %i.ac, align 16
  store <4 x float> %i.ah, ptr %i.r, align 16
  %i.ai = load <4 x float>, ptr %i.ad, align 16
  store <4 x float> %i.ai, ptr %i.t, align 16
  %i.aj = load <4 x float>, ptr %i.ae, align 16
  store <4 x float> %i.aj, ptr %i.v, align 16
  %i.ak = load <4 x float>, ptr %i.af, align 16
  store <4 x float> %i.ak, ptr %i.x, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.z, ptr noundef nonnull align 16 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %2, ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0.i.i, i64 9, i1 false)
  store <4 x float> %i.s, ptr %i.ac, align 16
  store <4 x float> %i.u, ptr %i.ad, align 16
  store <4 x float> %i.w, ptr %i.ae, align 16
  store <4 x float> %i.y, ptr %i.af, align 16
  store <2 x i64> %i.ag, ptr %i.f, align 16
  %.sroa.15.80..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i64 %i.ab, ptr %.sroa.15.80..sroa_idx.i.i, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.al = icmp ugt i64 %i.e, %i.p
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i22)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0.i.i22, ptr noundef nonnull align 16 dereferenceable(112) %0, i64 9, i1 false)
  %i.as = load <4 x float>, ptr %i.am, align 16
  %i.at = load <4 x float>, ptr %i.an, align 16
  %i.au = load <4 x float>, ptr %i.ao, align 16
  %i.av = load <4 x float>, ptr %i.ap, align 16
  %i.aw = load i64, ptr %i.ar, align 16
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.bb = load <2 x i64>, ptr %i.aq, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %3, i64 9, i1 false)
  %i.bc = load <4 x float>, ptr %i.ax, align 16
  store <4 x float> %i.bc, ptr %i.am, align 16
  %i.bd = load <4 x float>, ptr %i.ay, align 16
  store <4 x float> %i.bd, ptr %i.an, align 16
  %i.be = load <4 x float>, ptr %i.az, align 16
  store <4 x float> %i.be, ptr %i.ao, align 16
  %i.bf = load <4 x float>, ptr %i.ba, align 16
  store <4 x float> %i.bf, ptr %i.ap, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aq, ptr noundef nonnull align 16 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %3, ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0.i.i22, i64 9, i1 false)
  store <4 x float> %i.as, ptr %i.ax, align 16
  store <4 x float> %i.at, ptr %i.ay, align 16
  store <4 x float> %i.au, ptr %i.az, align 16
  store <4 x float> %i.av, ptr %i.ba, align 16
  store <2 x i64> %i.bb, ptr %i.l, align 16
  %.sroa.15.80..sroa_idx.i.i24 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i64 %i.aw, ptr %.sroa.15.80..sroa_idx.i.i24, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i22)
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i25)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0.i.i25, ptr noundef nonnull align 16 dereferenceable(112) %0, i64 9, i1 false)
  %i.bg = load <4 x float>, ptr %i.am, align 16
  %i.bh = load <4 x float>, ptr %i.an, align 16
  %i.bi = load <4 x float>, ptr %i.ao, align 16
  %i.bj = load <4 x float>, ptr %i.ap, align 16
  %i.bk = load i64, ptr %i.ar, align 16
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bp = load <2 x i64>, ptr %i.aq, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %1, i64 9, i1 false)
  %i.bq = load <4 x float>, ptr %i.bl, align 16
  store <4 x float> %i.bq, ptr %i.am, align 16
  %i.br = load <4 x float>, ptr %i.bm, align 16
  store <4 x float> %i.br, ptr %i.an, align 16
  %i.bs = load <4 x float>, ptr %i.bn, align 16
  store <4 x float> %i.bs, ptr %i.ao, align 16
  %i.bt = load <4 x float>, ptr %i.bo, align 16
  store <4 x float> %i.bt, ptr %i.ap, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aq, ptr noundef nonnull align 16 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %1, ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0.i.i25, i64 9, i1 false)
  store <4 x float> %i.bg, ptr %i.bl, align 16
  store <4 x float> %i.bh, ptr %i.bm, align 16
  store <4 x float> %i.bi, ptr %i.bn, align 16
  store <4 x float> %i.bj, ptr %i.bo, align 16
  store <2 x i64> %i.bp, ptr %i.a, align 16
  %.sroa.15.80..sroa_idx.i.i27 = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.bk, ptr %.sroa.15.80..sroa_idx.i.i27, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i25)
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.bu = icmp ugt i64 %i.e, %i.p
  br i1 %i.bu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i28)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0.i.i28, ptr noundef nonnull align 16 dereferenceable(112) %0, i64 9, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bw = load <4 x float>, ptr %i.bv, align 16
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.by = load <4 x float>, ptr %i.bx, align 16
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ca = load <4 x float>, ptr %i.bz, align 16
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cc = load <4 x float>, ptr %i.cb, align 16
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cf = load i64, ptr %i.ce, align 16
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ck = load <2 x i64>, ptr %i.cd, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %1, i64 9, i1 false)
  %i.cl = load <4 x float>, ptr %i.cg, align 16
  store <4 x float> %i.cl, ptr %i.bv, align 16
  %i.cm = load <4 x float>, ptr %i.ch, align 16
  store <4 x float> %i.cm, ptr %i.bx, align 16
  %i.cn = load <4 x float>, ptr %i.ci, align 16
  store <4 x float> %i.cn, ptr %i.bz, align 16
  %i.co = load <4 x float>, ptr %i.cj, align 16
end_hunk_0
