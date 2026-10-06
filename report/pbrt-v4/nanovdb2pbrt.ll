Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/nanovdb2pbrt?download=true
inline.NumInlined: 1160
inline.NumDeleted: 429
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:._crit_edge.i.i
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !96
  invoke void @__cxa_end_catch()
          to label %bb.an unwind label %bb.ao

bb.z:                                             ; preds = %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 4 uses
  %.phi.trans.insert339 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.pre340 = load ptr, ptr %.phi.trans.insert339, align 8, !tbaa !42, !noalias !96 ; 3 uses
  %.phi.trans.insert337 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre338 = load i64, ptr %.phi.trans.insert337, align 8, !tbaa !43, !noalias !96 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre336 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !39, !noalias !96
  store ptr %.pre336, ptr %i.cf, align 8, !tbaa !39, !alias.scope !96
  store i64 %.pre338, ptr %i.ch, align 8, !tbaa !43, !alias.scope !96
  store ptr %.pre340, ptr %i.ct, align 8, !tbaa !42, !alias.scope !96
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !96
  %.not.i138 = icmp eq i64 %.pre338, 0
  br i1 %.not.i138, label %bb.ak, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cu = getelementptr inbounds nuw i8, ptr %.pre340, i64 632
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !101
  switch i32 %i.cv, label %bb.ab [
    i32 2, label %bb.ae
    i32 0, label %bb.ae
  ]

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN4pbrt9ErrorExitIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEEvPKcDpOT_(ptr noundef nonnull @.str.30, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7) #33
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ae:                                            ; preds = %bb.aa, %bb.aa
  %i.cx = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !103, !noalias !96
  %i.cy = icmp slt i32 %i.cx, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30, !noalias !96
  br i1 %i.cy, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.cz = getelementptr inbounds nuw i8, ptr %.pre340, i64 728
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !105
  store i64 %i.da, ptr %i.b, align 8, !tbaa !33, !noalias !96
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !96
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.db, ptr %2, align 8, !tbaa !18, !alias.scope !106, !noalias !96
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.dc, align 8, !tbaa !21, !alias.scope !106, !noalias !96
  store i8 0, ptr %i.db, align 8, !tbaa !22, !alias.scope !106, !noalias !96
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJmS9_EEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %2, ptr noundef nonnull @.str.32, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS8_EEES6_PKcDpOT_.exit.i.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.de = load ptr, ptr %2, align 8, !tbaa !25, !alias.scope !106, !noalias !96 ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.db
  br i1 %i.df, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ag
  %i.dg = load i64, ptr %i.db, align 8, !tbaa !22, !alias.scope !106, !noalias !96
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #32
  br label %.body.i

_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS8_EEES6_PKcDpOT_.exit.i.i: ; preds = %bb.af
  %i.di = load ptr, ptr %2, align 8, !tbaa !25, !noalias !96
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str.31, i32 noundef 40, ptr noundef %i.di)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS8_EEES6_PKcDpOT_.exit.i.i
  %i.dj = load ptr, ptr %2, align 8, !tbaa !25, !noalias !96 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.db
  br i1 %i.dk, label %_ZN4pbrt3LogIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS8_EEEvNS_8LogLevelEPKciSB_DpOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ah
  %i.dl = load i64, ptr %i.db, align 8, !tbaa !22, !noalias !96
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #32
  br label %_ZN4pbrt3LogIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS8_EEEvNS_8LogLevelEPKciSB_DpOT_.exit.i

bb.ai:                                            ; preds = %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS8_EEES6_PKcDpOT_.exit.i.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = load ptr, ptr %2, align 8, !tbaa !25, !noalias !96 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.db
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i: ; preds = %bb.ai
  %i.dq = load i64, ptr %i.db, align 8, !tbaa !22, !noalias !96
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !96
  br label %.body.i

_ZN4pbrt3LogIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS8_EEEvNS_8LogLevelEPKciSB_DpOT_.exit.i: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !96
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN4pbrt3LogIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS8_EEEvNS_8LogLevelEPKciSB_DpOT_.exit.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30, !noalias !96
  br label %bb.ak

.body.i:                                          ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i ], [ %i.dd, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30, !noalias !96
  br label %bb.an

bb.ak:                                            ; preds = %bb.aj, %bb.z
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !42, !noalias !96 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i.i, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.du = load i64, ptr %i.ce, align 8, !tbaa !43, !noalias !96
  %i.dv = load ptr, ptr %3, align 8, !tbaa !39, !noalias !96 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !37
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8
  invoke void %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noundef nonnull %i.dt, i64 noundef %i.du, i64 noundef 128)
          to label %bb.ap unwind label %bb.am, !inline_history !0

bb.am:                                            ; preds = %bb.al
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
  %i.ea = extractvalue { ptr, i32 } %i.dz, 0
  call void @__clang_call_terminate(ptr %i.ea) #31
  unreachable

bb.an:                                            ; preds = %.body.i, %bb.ad, %bb.y, %bb.v
  %.merged.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.cw, %bb.ad ], [ %i.ci, %bb.v ], [ %i.cs, %bb.y ]
  call void @_ZN7nanovdb10GridHandleIN4pbrt13NanoVDBBufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %16) #30
  call void @_ZN4pbrt13NanoVDBBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !96
  br label %.body

bb.ao:                                            ; preds = %bb.y
  %i.eb = landingpad { ptr, i32 }
          catch ptr null
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  call void @__clang_call_terminate(ptr %i.ec) #31
  unreachable

bb.ap:                                            ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !96
  %i.ed = load ptr, ptr %16, align 8, !tbaa !37
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = invoke noundef i64 %i.ef(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.aq unwind label %bb.at, !inline_history !1

bb.aq:                                            ; preds = %bb.ap
  %.not208 = icmp eq i64 %i.eg, 0
  br i1 %.not208, label %bb.ar, label %.preheader.i.i

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN4pbrt9ErrorExitIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEvPKcDpOT_(ptr noundef nonnull @.str.5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7) #33
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.ap, %bb.ar
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit154

.preheader.i.i:                                   ; preds = %bb.aq
  %i.ei = load ptr, ptr %i.ct, align 8, !tbaa !42, !nonnull !107, !noundef !107 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !108
  %.not1516.i.i = icmp eq i32 %i.ek, 0
  br i1 %.not1516.i.i, label %._crit_edge.i.i140, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.017.i.i = phi ptr [ %i.en, %.lr.ph.i.i ], [ %i.ei, %.preheader.i.i ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 32
  %i.em = load i64, ptr %i.el, align 32, !tbaa !109
  %i.en = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 %i.em ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !108
  %.not15.i.i = icmp eq i32 %i.ep, 0
  br i1 %.not15.i.i, label %._crit_edge.i.i140, label %.lr.ph.i.i, !llvm.loop !88

._crit_edge.i.i140:                               ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.0.lcssa.i.i = phi ptr [ %i.ei, %.preheader.i.i ], [ %i.en, %.lr.ph.i.i ] ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 636
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !110
  %i.es = icmp eq i32 %i.er, 1
  %i.et = select i1 %i.es, ptr %.0.lcssa.i.i, ptr null
  %17 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 560
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 592
  %i.ev = load <4 x double>, ptr %17, align 8     ; 2 uses
  %18 = load <2 x double>, ptr %i.eu, align 8
  %19 = fptrunc <4 x double> %i.ev to <4 x float> ; 3 uses
  %20 = shufflevector <2 x double> %18, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %21 = shufflevector <4 x double> %i.ev, <4 x double> %20, <4 x i32> <i32 3, i32 4, i32 5, i32 0>
  %22 = fptrunc <4 x double> %21 to <4 x float>   ; 4 uses
  %i.ew = fcmp olt <4 x float> %22, %19
  %23 = shufflevector <4 x float> %22, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %24 = shufflevector <4 x float> %22, <4 x float> %19, <4 x i32> <i32 3, i32 5, i32 6, i32 3>
  %i.ex = select <4 x i1> %i.ew, <4 x float> %23, <4 x float> %24
  %i.ey = shufflevector <4 x float> %19, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %25 = shufflevector <4 x float> %22, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ez = fcmp olt <2 x float> %i.ey, %25
  %i.fa = select <2 x i1> %i.ez, <2 x float> %25, <2 x float> %i.ey
  %i.fb = getelementptr inbounds nuw i8, ptr %i.et, i64 672 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 696 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !33
  %i.fe = getelementptr inbounds i8, ptr %i.fb, i64 %i.fd ; 6 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !23 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !23 ; 3 uses
  %i.fi = add nsw i32 %i.fh, 1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !23 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !23 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !23 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fe, i64 20
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !23 ; 3 uses
  %i.fr = add nsw i32 %i.fq, 1
  %.not290 = icmp sgt i32 %i.fo, %i.fr
  %i.fs = add nsw i32 %i.fm, 1
  %.not82279 = icmp sgt i32 %i.fk, %i.fs
  %or.cond = select i1 %.not290, i1 true, i1 %.not82279
  %.not83268 = icmp sgt i32 %i.ff, %i.fi
  %or.cond401 = select i1 %or.cond, i1 true, i1 %.not83268
  br i1 %or.cond401, label %._crit_edge295, label %.preheader211

.preheader211:                                    ; preds = %._crit_edge.i.i140, %._crit_edge284.split
  %.055294 = phi i32 [ %i.hf, %._crit_edge284.split ], [ %i.fo, %._crit_edge.i.i140 ] ; 6 uses
  %.sroa.14.0293 = phi ptr [ %.sroa.14.3, %._crit_edge284.split ], [ null, %._crit_edge.i.i140 ]
  %.sroa.10.0292 = phi ptr [ %.sroa.10.3, %._crit_edge284.split ], [ null, %._crit_edge.i.i140 ]
  %.sroa.0180.0291 = phi ptr [ %.sroa.0180.3, %._crit_edge284.split ], [ null, %._crit_edge.i.i140 ]
  %i.ft = lshr i32 %.055294, 12
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = lshr i32 %.055294, 7
  %i.fw = and i32 %i.fv, 31
  %i.fx = lshr i32 %.055294, 3
  %i.fy = and i32 %i.fx, 15
  %i.fz = and i32 %.055294, 7
  br label %.preheader

._crit_edge295.loopexit323:                       ; preds = %._crit_edge284.split
  %i.ga = ptrtoint ptr %.sroa.14.3 to i64
  br label %._crit_edge295

._crit_edge295:                                   ; preds = %._crit_edge295.loopexit323, %._crit_edge.i.i140
  %.sroa.0180.0.lcssa = phi ptr [ null, %._crit_edge.i.i140 ], [ %.sroa.0180.3, %._crit_edge295.loopexit323 ] ; 5 uses
  %.sroa.10.0.lcssa = phi ptr [ null, %._crit_edge.i.i140 ], [ %.sroa.10.3, %._crit_edge295.loopexit323 ] ; 2 uses
  %.sroa.14.0.lcssa = phi i64 [ 0, %._crit_edge.i.i140 ], [ %i.ga, %._crit_edge295.loopexit323 ]
  %reass.sub = sub i32 %i.fh, %i.ff
  %i.gb = add i32 %reass.sub, 2
  %reass.sub640 = sub i32 %i.fm, %i.fk
  %i.gc = add i32 %reass.sub640, 2
  %reass.sub641 = sub i32 %i.fq, %i.fo
  %i.gd = add i32 %reass.sub641, 2
  %i.ge = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.gb, i32 noundef %i.gc, i32 noundef %i.gd) ; 0 uses
  %i.gf = fpext <4 x float> %i.ex to <4 x double> ; 4 uses
  %i.gg = fpext <2 x float> %i.fa to <2 x double> ; 2 uses
  %i.gh = extractelement <4 x double> %i.gf, i64 0
  %i.gi = extractelement <4 x double> %i.gf, i64 1
  %i.gj = extractelement <4 x double> %i.gf, i64 2
  %i.gk = extractelement <4 x double> %i.gf, i64 3
  %i.gl = extractelement <2 x double> %i.gg, i64 0
  %i.gm = extractelement <2 x double> %i.gg, i64 1
  %i.gn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %i.gh, double noundef %i.gi, double noundef %i.gj, double noundef %i.gk, double noundef %i.gl, double noundef %i.gm) ; 0 uses
  %i.go = load ptr, ptr %7, align 8, !tbaa !25
  %i.gp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef %i.go) ; 0 uses
  %i.gq = ptrtoint ptr %.sroa.0180.0.lcssa to i64 ; 2 uses
  %.not321 = icmp eq ptr %.sroa.10.0.lcssa, %.sroa.0180.0.lcssa
  br i1 %.not321, label %._crit_edge317, label %.lr.ph316.preheader

.lr.ph316.preheader:                              ; preds = %._crit_edge295
  %i.gr = ptrtoint ptr %.sroa.10.0.lcssa to i64
  %i.gs = sub i64 %i.gr, %i.gq
  %i.gt = ashr exact i64 %i.gs, 2
  br label %.lr.ph316

.preheader:                                       ; preds = %.preheader211, %._crit_edge275
  %.054283 = phi i32 [ %i.fk, %.preheader211 ], [ %i.hg, %._crit_edge275 ] ; 6 uses
  %.sroa.14.1282 = phi ptr [ %.sroa.14.0293, %.preheader211 ], [ %.sroa.14.3, %._crit_edge275 ]
  %.sroa.10.1281 = phi ptr [ %.sroa.10.0292, %.preheader211 ], [ %.sroa.10.3, %._crit_edge275 ]
  %.sroa.0180.1280 = phi ptr [ %.sroa.0180.0291, %.preheader211 ], [ %.sroa.0180.3, %._crit_edge275 ]
  %i.gu = lshr i32 %.054283, 12
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = shl nuw nsw i64 %i.gv, 21
  %i.gx = or disjoint i64 %i.gw, %i.fu
  %i.gy = lshr i32 %.054283, 2
  %i.gz = and i32 %i.gy, 992
  %i.ha = shl i32 %.054283, 1
  %i.hb = and i32 %i.ha, 240
  %i.hc = shl i32 %.054283, 3
  %i.hd = and i32 %i.hc, 56
  %i.he = or disjoint i32 %i.hd, %i.fz
  br label %bb.au

._crit_edge284.split:                             ; preds = %._crit_edge275
  %i.hf = add nsw i32 %.055294, 1
  %.not = icmp sgt i32 %.055294, %i.fq
  br i1 %.not, label %._crit_edge295.loopexit323, label %.preheader211, !llvm.loop !89

._crit_edge275:                                   ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  %i.hg = add nsw i32 %.054283, 1
  %.not82 = icmp sgt i32 %.054283, %i.fm
  br i1 %.not82, label %._crit_edge284.split, label %.preheader, !llvm.loop !90

bb.au:                                            ; preds = %.preheader, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  %.053272 = phi i32 [ %i.ff, %.preheader ], [ %i.kc, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit ] ; 6 uses
  %.sroa.14.2271 = phi ptr [ %.sroa.14.1282, %.preheader ], [ %.sroa.14.3, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit ] ; 3 uses
  %.sroa.10.2270 = phi ptr [ %.sroa.10.1281, %.preheader ], [ %.sroa.10.3, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit ] ; 3 uses
  %.sroa.0180.2269 = phi ptr [ %.sroa.0180.1280, %.preheader ], [ %.sroa.0180.3, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit ] ; 7 uses
  %i.hh = load i64, ptr %i.fc, align 8, !tbaa !33
  %i.hi = getelementptr inbounds i8, ptr %i.fb, i64 %i.hh ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 64
  %i.hk = lshr i32 %.053272, 12
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = shl nuw nsw i64 %i.hl, 42
  %i.hn = or disjoint i64 %i.hm, %i.gx
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !112 ; 2 uses
  %.not12.not.i.i = icmp eq i32 %i.hp, 0
  br i1 %.not12.not.i.i, label %.loopexit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.au
  %wide.trip.count.i.i = zext i32 %i.hp to i64
  br label %.lr.ph.i.i175

bb.av:                                            ; preds = %.lr.ph.i.i175
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.i.i175, !llvm.loop !91

.lr.ph.i.i175:                                    ; preds = %bb.av, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.av ] ; 2 uses
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %i.hj, i64 %indvars.iv.i.i ; 3 uses
  %i.hr = load i64, ptr %i.hq, align 32, !tbaa !114
  %i.hs = icmp eq i64 %i.hr, %i.hn
  br i1 %i.hs, label %_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8findTileERKS3_.exit.i, label %bb.av

_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8findTileERKS3_.exit.i: ; preds = %.lr.ph.i.i175
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !115 ; 2 uses
  %.not.i176 = icmp eq i64 %i.hu, 0
  br i1 %.not.i176, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8findTileERKS3_.exit.i
  %i.hv = getelementptr inbounds i8, ptr %i.hi, i64 %i.hu ; 3 uses
  %i.hw = shl i32 %.053272, 3
  %i.hx = and i32 %i.hw, 31744
  %i.hy = or disjoint i32 %i.hx, %i.gz            ; 2 uses
  %i.hz = or disjoint i32 %i.hy, %i.fw            ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 4128
  %i.ib = lshr i32 %i.hy, 6
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.ic
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !33
  %i.if = and i32 %i.hz, 63
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = shl nuw i64 1, %i.ig
  %i.ii = and i64 %i.ie, %i.ih
  %.not.i.i177 = icmp eq i64 %i.ii, 0
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hv, i64 8256
  %i.ik = zext nneg i32 %i.hz to i64
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ik ; 2 uses
  br i1 %.not.i.i177, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.im = load i64, ptr %i.il, align 8, !tbaa !22
  %i.in = getelementptr inbounds i8, ptr %i.hv, i64 %i.im ; 3 uses
  %i.io = shl i32 %.053272, 5
  %i.ip = and i32 %i.io, 3840
  %i.iq = or disjoint i32 %i.ip, %i.hb            ; 2 uses
  %i.ir = or disjoint i32 %i.iq, %i.fy            ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.in, i64 544
  %i.it = lshr i32 %i.iq, 6
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.iu
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !33
  %i.ix = and i32 %i.ir, 63
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = shl nuw i64 1, %i.iy
  %i.ja = and i64 %i.iw, %i.iz
  %.not.i.i.i178 = icmp eq i64 %i.ja, 0
  %i.jb = getelementptr inbounds nuw i8, ptr %i.in, i64 1088
  %i.jc = zext nneg i32 %i.ir to i64
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.jc ; 2 uses
  br i1 %.not.i.i.i178, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !22
  %i.jf = getelementptr inbounds i8, ptr %i.in, i64 %i.je
  %i.jg = shl i32 %.053272, 6
  %i.jh = and i32 %i.jg, 448
  %i.ji = or disjoint i32 %i.he, %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 96
  %i.jk = zext nneg i32 %i.ji to i64
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.jk
  br label %bb.ba

bb.az:                                            ; preds = %_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8findTileERKS3_.exit.i
  %i.jm = getelementptr inbounds nuw i8, ptr %i.hq, i64 20
  br label %bb.ba

end_hunk_0
begin_hunk_1_@_ZN4pbrt6detail21stringPrintfRecursiveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS8_EEEvPS7_PKcOT_DpOT0_:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = load i64, ptr %i.n, align 8, !tbaa !22
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.bi = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bi, ptr %5, align 8, !tbaa !37
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 -24
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds i8, ptr %5, i64 %i.bl
  store ptr %i.bj, ptr %i.bm, align 8, !tbaa !37
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bn, ptr %i.h, align 8, !tbaa !37
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bo, align 8, !tbaa !37
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !22
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #32
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bo, align 8, !tbaa !37
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bv) #30
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bw, ptr %5, align 8, !tbaa !37
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.by = getelementptr i8, ptr %i.bw, i64 -24
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = getelementptr inbounds i8, ptr %5, i64 %i.bz
  store ptr %i.bx, ptr %i.ca, align 8, !tbaa !37
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.cb, align 8, !tbaa !59
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cc) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.cd = load ptr, ptr %i.c, align 8, !tbaa !40
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull %0, ptr noundef %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.u unwind label %bb.b

bb.m:                                             ; preds = %bb.e
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %bb.f
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.l
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.ai
  br i1 %i.ci, label %.body27, label %.body27.sink.split

.body27.sink.split:                               ; preds = %bb.o, %bb.k
  %.sink = phi ptr [ %i.ar, %bb.k ], [ %i.ch, %bb.o ]
  %.pn20.ph = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %i.cg, %bb.o ]
  %i.cj = load i64, ptr %i.ai, align 8, !tbaa !22
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ck) #32
  br label %.body27

.body27:                                          ; preds = %.body27.sink.split, %bb.o, %bb.k
  %.pn20 = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %i.cg, %bb.o ], [ %.pn20.ph, %.body27.sink.split ] ; 2 uses
  %i.cl = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.n
  br i1 %i.cm, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body27, %bb.h
  %.sink75 = phi ptr [ %i.ab, %bb.h ], [ %i.cl, %.body27 ]
  %.pn20.pn.ph = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %.pn20, %.body27 ]
  %i.cn = load i64, ptr %i.n, align 8, !tbaa !22
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %.sink75, i64 noundef %i.co) #32
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body27, %bb.h
  %.pn20.pn = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %.pn20, %.body27 ], [ %.pn20.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.p

bb.p:                                             ; preds = %.body, %bb.n
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %.body ], [ %i.cf, %bb.n ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #30
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn20.pn.pn.pn = phi { ptr, i32 } [ %.pn20.pn.pn, %bb.p ], [ %i.ce, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.v

bb.r:                                             ; preds = %bb.d
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !21
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %.invoke, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = load ptr, ptr %4, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cs, ptr %i.a, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store ptr @_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %i.b, align 8, !tbaa !40
  invoke void @_ZN4pbrt8LogFatalIJPKcRS2_EEEvNS_8LogLevelES2_iS2_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef 176, ptr noundef nonnull @.str.28, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #33
          to label %.noexc39 unwind label %bb.t

.noexc39:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.invoke:                                          ; preds = %bb.a, %bb.r, %bb.c
  %i.cu = phi i32 [ 257, %bb.c ], [ 266, %bb.r ], [ 229, %bb.a ]
  %i.cv = phi ptr [ @.str.25, %bb.c ], [ @.str.26, %bb.r ], [ @.str.24, %bb.a ]
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef %i.cu, ptr noundef nonnull %i.cv) #33
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.cw = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.u
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !22
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.v:                                             ; preds = %bb.t, %bb.q, %bb.b
  %.pn25 = phi { ptr, i32 } [ %i.g, %bb.b ], [ %.pn20.pn.pn.pn, %bb.q ], [ %i.ct, %bb.t ]
  %i.db = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.v
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !22
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn25
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #26

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #26

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { cold mustprogress nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nounwind memory(none) }
attributes #18 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { cold noreturn }
attributes #22 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nofree nounwind }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #30 = { nounwind }
attributes #31 = { noreturn nounwind }
attributes #32 = { builtin nounwind }
attributes #33 = { noreturn }
attributes #34 = { builtin allocsize(0) }
attributes #35 = { cold nounwind }
attributes #36 = { cold }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { nounwind willreturn memory(none) }
attributes #39 = { nounwind allocsize(0) }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{ptr @_ZN7nanovdb10GridHandleIN4pbrt13NanoVDBBufferEED2Ev, null}
!3 = distinct !{!3, !32}
!4 = distinct !{null}
!5 = distinct !{!5, !32}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"p1 omnipotent char", !15, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"long", !11, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !19, i64 8, !11, i64 16}
!21 = !{!20, !19, i64 8}
!22 = !{!11, !11, i64 0}
!23 = !{!12, !12, i64 0}
!24 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0}
!25 = !{!20, !16, i64 0}
!26 = !{!"_ZTSSt14_Function_base", !11, i64 0, !15, i64 16}
!27 = !{!"_ZTSSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !26, i64 0, !15, i64 24}
!28 = !{!27, !15, i64 24}
!29 = !{!26, !15, i64 16}
!30 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEE", !24, i64 0}
!31 = !{!30, !24, i64 0}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!19, !19, i64 0}
!34 = !{!"p1 _ZTSN4pstd3pmr15memory_resourceE", !15, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"vtable pointer", !10, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorISt4byteEE", !34, i64 0}
!39 = !{!38, !34, i64 0}
!40 = !{!16, !16, i64 0}
!41 = !{!"_ZTSN4pbrt13NanoVDBBufferE", !38, i64 0, !19, i64 8, !16, i64 16}
!42 = !{!41, !16, i64 16}
!43 = !{!41, !19, i64 8}
!44 = !{!"_ZTSN7nanovdb7VersionE", !12, i64 0}
!45 = !{!"_ZTSN7nanovdb8BaseBBoxINS_4Vec3IdEEEE", !11, i64 0}
!46 = !{!"_ZTSN7nanovdb4BBoxINS_4Vec3IdEELb1EEE", !45, i64 0}
!47 = !{!"_ZTSN7nanovdb4Vec3IdEE", !11, i64 0}
!48 = !{!"_ZTSN7nanovdb9GridClassE", !11, i64 0}
!49 = !{!"_ZTSN7nanovdb8GridTypeE", !11, i64 0}
!50 = !{!"_ZTSN7nanovdb8BaseBBoxINS_5CoordEEE", !11, i64 0}
!51 = !{!"_ZTSN7nanovdb4BBoxINS_5CoordELb0EEE", !50, i64 0}
!52 = !{ptr @_ZN7nanovdb10GridHandleIN4pbrt13NanoVDBBufferEED2Ev}
!53 = !{!"p1 _ZTSNSt6locale5_ImplE", !15, i64 0}
!54 = !{!"_ZTSSt6locale", !53, i64 0}
!55 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !54, i64 56}
!56 = !{!55, !16, i64 40}
!57 = !{!55, !16, i64 32}
!58 = !{!"_ZTSSi", !19, i64 8}
!59 = !{!58, !19, i64 8}
!60 = !{!"_ZTSSt13_Ios_Fmtflags", !11, i64 0}
!61 = !{!"_ZTSSt12_Ios_Iostate", !11, i64 0}
!62 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !15, i64 0}
!63 = !{!"_ZTSNSt8ios_base6_WordsE", !15, i64 0, !19, i64 8}
!64 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !15, i64 0}
!65 = !{!"_ZTSSt8ios_base", !19, i64 8, !19, i64 16, !60, i64 24, !61, i64 28, !61, i64 32, !62, i64 40, !63, i64 48, !11, i64 64, !12, i64 192, !64, i64 200, !54, i64 208}
!66 = !{!65, !61, i64 32}
!67 = !{!"short", !11, i64 0}
!68 = !{!"_ZTSN7nanovdb2io5CodecE", !11, i64 0}
!69 = !{!"_ZTSN7nanovdb2io6HeaderE", !19, i64 0, !44, i64 8, !67, i64 12, !68, i64 14}
!70 = !{!44, !12, i64 0}
!71 = !{!"p1 _ZTSN7nanovdb2io12GridMetaDataE", !15, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!"_ZTSN7nanovdb2io8MetaDataE", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !49, i64 32, !48, i64 36, !46, i64 40, !51, i64 88, !47, i64 112, !12, i64 136, !11, i64 140, !11, i64 156, !68, i64 168, !67, i64 170, !44, i64 172}
!74 = !{!"_ZTSNSt12_Vector_baseIN7nanovdb2io12GridMetaDataESaIS2_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!75 = !{!"_ZTSNSt12_Vector_baseIN7nanovdb2io12GridMetaDataESaIS2_EE12_Vector_implE", !74, i64 0}
!76 = !{!"_ZTSSt12_Vector_baseIN7nanovdb2io12GridMetaDataESaIS2_EE", !75, i64 0}
!77 = !{!"_ZTSSt6vectorIN7nanovdb2io12GridMetaDataESaIS2_EE", !76, i64 0}
!78 = !{!"_ZTSN7nanovdb2io7SegmentE", !69, i64 0, !77, i64 16}
!79 = !{!74, !71, i64 0}
!80 = !{!74, !71, i64 8}
!81 = !{!74, !71, i64 16}
!82 = distinct !{!82, !32}
!83 = distinct !{!83, i1 false, !"_ZL8readGridIN4pbrt13NanoVDBBufferEEN7nanovdb10GridHandleIT_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_N4pstd3pmr21polymorphic_allocatorISt4byteEE"}
!84 = distinct !{!84, !83, !"_ZL8readGridIN4pbrt13NanoVDBBufferEEN7nanovdb10GridHandleIT_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_N4pstd3pmr21polymorphic_allocatorISt4byteEE: argument 0"}
!85 = distinct !{null}
!86 = distinct !{!86, i1 false, !"_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS8_EEES6_PKcDpOT_"}
!87 = distinct !{!87, !86, !"_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS8_EEES6_PKcDpOT_: argument 0"}
!88 = distinct !{!88, !32}
!89 = distinct !{!89, !32}
!90 = distinct !{!90, !32}
!91 = distinct !{!91, !32}
!92 = distinct !{!92, !32}
!93 = distinct !{!93, !32}
!94 = distinct !{!94, !32}
!95 = !{!24, !24, i64 0}
!96 = !{!84}
!97 = !{!"float", !11, i64 0}
!98 = !{!"double", !11, i64 0}
!99 = !{!"_ZTSN7nanovdb3MapE", !11, i64 0, !11, i64 36, !11, i64 72, !97, i64 84, !11, i64 88, !11, i64 160, !11, i64 232, !98, i64 256}
!100 = !{!"_ZTSN7nanovdb8GridDataE", !19, i64 0, !19, i64 8, !44, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !19, i64 32, !11, i64 40, !99, i64 296, !46, i64 560, !47, i64 608, !48, i64 632, !49, i64 636, !19, i64 640, !12, i64 648}
!101 = !{!100, !48, i64 632}
!102 = !{!"_ZTSN4pbrt8LogLevelE", !11, i64 0}
!103 = !{!102, !102, i64 0}
!104 = !{!"_ZTSN7nanovdb8TreeDataILi3EEE", !11, i64 0, !11, i64 32, !11, i64 44, !19, i64 56}
!105 = !{!104, !19, i64 56}
!106 = !{!87}
!107 = !{}
!108 = !{!100, !12, i64 24}
!109 = !{!100, !19, i64 32}
!110 = !{!49, !49, i64 0}
!111 = !{!"_ZTSN7nanovdb8RootDataINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEEE", !51, i64 0, !12, i64 24, !97, i64 28, !97, i64 32, !97, i64 36, !97, i64 40, !97, i64 44}
!112 = !{!111, !12, i64 24}
!113 = !{!"_ZTSN7nanovdb8RootDataINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE4TileE", !19, i64 0, !19, i64 8, !12, i64 16, !97, i64 20}
!114 = !{!113, !19, i64 0}
!115 = !{!113, !19, i64 8}
!116 = !{!97, !97, i64 0}
!117 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!118 = !{!117, !24, i64 0}
!119 = !{!117, !24, i64 8}
!120 = !{!117, !24, i64 16}
!121 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!122 = !{!121, !121, i64 0}
!123 = distinct !{!123, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!124 = distinct !{!124, !123, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!125 = distinct !{!125, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!126 = distinct !{!126, !125, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!127 = distinct !{!127, i1 false, !"_ZN4pbrt12normalizeArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!128 = distinct !{!128, !127, !"_ZN4pbrt12normalizeArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!129 = distinct !{!129, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_"}
!130 = distinct !{!130, !129, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_: argument 0"}
!131 = distinct !{!131, i1 false, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!132 = distinct !{!132, !131, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!133 = distinct !{!133, i1 false, !"_ZN4pbrt12normalizeArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!134 = distinct !{!134, !133, !"_ZN4pbrt12normalizeArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!135 = distinct !{!135, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!136 = distinct !{!136, !135, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!137 = distinct !{!137, i1 false, !"_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS6_EEES6_PKcDpOT_"}
!138 = distinct !{!138, !137, !"_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS6_EEES6_PKcDpOT_: argument 0"}
!139 = distinct !{!139, i1 false, !"_ZN4pbrt12normalizeArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!140 = distinct !{!140, !139, !"_ZN4pbrt12normalizeArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!141 = distinct !{!141, i1 false, !"_ZN4pbrt12normalizeArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!142 = distinct !{!142, !141, !"_ZN4pbrt12normalizeArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!143 = distinct !{!143, i1 false, !"_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_"}
!144 = distinct !{!144, !143, !"_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_: argument 0"}
!145 = distinct !{!145, i1 false, !"_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS6_EEES6_PKcDpOT_"}
!146 = distinct !{!146, !145, !"_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS6_EEES6_PKcDpOT_: argument 0"}
!147 = !{!124}
!148 = !{!126}
!149 = !{!128}
!150 = !{!130}
!151 = !{!132, !130}
!152 = !{!134}
!153 = !{!136}
!154 = !{!138}
end_hunk_1
