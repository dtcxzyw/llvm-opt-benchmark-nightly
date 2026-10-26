Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/nanovdb2pbrt?download=true
inline.NumInlined: 1160
inline.NumDeleted: 429
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:._crit_edge.i.i
  %.sroa.10.0292 = phi ptr [ %.sroa.10.3, %._crit_edge284.split ], [ null, %._crit_edge.i.i140 ]
  %.sroa.0180.0291 = phi ptr [ %.sroa.0180.3, %._crit_edge284.split ], [ null, %._crit_edge.i.i140 ]
  %i.ga = lshr i32 %.055294, 12
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = lshr i32 %.055294, 7
  %i.gd = and i32 %i.gc, 31
  %i.ge = lshr i32 %.055294, 3
  %i.gf = and i32 %i.ge, 15
  %i.gg = and i32 %.055294, 7
  br label %.preheader

._crit_edge295.loopexit323:                       ; preds = %._crit_edge284.split
  %i.gh = ptrtoint ptr %.sroa.14.3 to i64
  br label %._crit_edge295

._crit_edge295:                                   ; preds = %._crit_edge295.loopexit323, %._crit_edge.i.i140
  %.sroa.0180.0.lcssa = phi ptr [ null, %._crit_edge.i.i140 ], [ %.sroa.0180.3, %._crit_edge295.loopexit323 ] ; 5 uses
  %.sroa.10.0.lcssa = phi ptr [ null, %._crit_edge.i.i140 ], [ %.sroa.10.3, %._crit_edge295.loopexit323 ] ; 2 uses
  %.sroa.14.0.lcssa = phi i64 [ 0, %._crit_edge.i.i140 ], [ %i.gh, %._crit_edge295.loopexit323 ]
  %reass.sub = sub i32 %i.fo, %i.fm
  %i.gi = add i32 %reass.sub, 2
  %reass.sub642 = sub i32 %i.ft, %i.fr
  %i.gj = add i32 %reass.sub642, 2
  %reass.sub643 = sub i32 %i.fx, %i.fv
  %i.gk = add i32 %reass.sub643, 2
  %i.gl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.gi, i32 noundef %i.gj, i32 noundef %i.gk) ; 0 uses
  %i.gm = fpext <4 x float> %i.fd to <4 x double> ; 4 uses
  %i.gn = fpext <2 x float> %i.fh to <2 x double> ; 2 uses
  %i.go = extractelement <4 x double> %i.gm, i64 0
  %i.gp = extractelement <4 x double> %i.gm, i64 1
  %i.gq = extractelement <4 x double> %i.gm, i64 2
  %i.gr = extractelement <4 x double> %i.gm, i64 3
  %i.gs = extractelement <2 x double> %i.gn, i64 0
  %i.gt = extractelement <2 x double> %i.gn, i64 1
  %i.gu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %i.go, double noundef %i.gp, double noundef %i.gq, double noundef %i.gr, double noundef %i.gs, double noundef %i.gt) ; 0 uses
  %i.gv = load ptr, ptr %7, align 8, !tbaa !25
  %i.gw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef %i.gv) ; 0 uses
  %i.gx = ptrtoint ptr %.sroa.0180.0.lcssa to i64 ; 2 uses
  %.not321 = icmp eq ptr %.sroa.10.0.lcssa, %.sroa.0180.0.lcssa
  br i1 %.not321, label %._crit_edge317, label %.lr.ph316.preheader

.lr.ph316.preheader:                              ; preds = %._crit_edge295
  %i.gy = ptrtoint ptr %.sroa.10.0.lcssa to i64
  %i.gz = sub i64 %i.gy, %i.gx
  %i.ha = ashr exact i64 %i.gz, 2
  br label %.lr.ph316

bb.at:                                            ; preds = %bb.ap, %bb.ar
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit154

.preheader:                                       ; preds = %.preheader211, %._crit_edge275
  %.054283 = phi i32 [ %i.fr, %.preheader211 ], [ %i.ho, %._crit_edge275 ] ; 6 uses
  %.sroa.14.1282 = phi ptr [ %.sroa.14.0293, %.preheader211 ], [ %.sroa.14.3, %._crit_edge275 ]
  %.sroa.10.1281 = phi ptr [ %.sroa.10.0292, %.preheader211 ], [ %.sroa.10.3, %._crit_edge275 ]
  %.sroa.0180.1280 = phi ptr [ %.sroa.0180.0291, %.preheader211 ], [ %.sroa.0180.3, %._crit_edge275 ]
  %i.hc = lshr i32 %.054283, 12
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = shl nuw nsw i64 %i.hd, 21
  %i.hf = or disjoint i64 %i.he, %i.gb
  %i.hg = lshr i32 %.054283, 2
  %i.hh = and i32 %i.hg, 992
  %i.hi = shl i32 %.054283, 1
  %i.hj = and i32 %i.hi, 240
  %i.hk = shl i32 %.054283, 3
  %i.hl = and i32 %i.hk, 56
  %i.hm = or disjoint i32 %i.hl, %i.gg
  br label %bb.au

._crit_edge284.split:                             ; preds = %._crit_edge275
  %i.hn = add nsw i32 %.055294, 1
  %.not = icmp sgt i32 %.055294, %i.fx
  br i1 %.not, label %._crit_edge295.loopexit323, label %.preheader211, !llvm.loop !89

._crit_edge275:                                   ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  %i.ho = add nsw i32 %.054283, 1
  %.not82 = icmp sgt i32 %.054283, %i.ft
  br i1 %.not82, label %._crit_edge284.split, label %.preheader, !llvm.loop !90

bb.au:                                            ; preds = %.preheader, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  %.053272 = phi i32 [ %i.fm, %.preheader ], [ %i.kk, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit ] ; 6 uses
  %.sroa.14.2271 = phi ptr [ %.sroa.14.1282, %.preheader ], [ %.sroa.14.3, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit ] ; 3 uses
  %.sroa.10.2270 = phi ptr [ %.sroa.10.1281, %.preheader ], [ %.sroa.10.3, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit ] ; 3 uses
  %.sroa.0180.2269 = phi ptr [ %.sroa.0180.1280, %.preheader ], [ %.sroa.0180.3, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit ] ; 7 uses
  %i.hp = load i64, ptr %i.fj, align 8, !tbaa !33
  %i.hq = getelementptr inbounds i8, ptr %i.fi, i64 %i.hp ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 64
  %i.hs = lshr i32 %.053272, 12
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = shl nuw nsw i64 %i.ht, 42
  %i.hv = or disjoint i64 %i.hu, %i.hf
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !112 ; 2 uses
  %.not12.not.i.i = icmp eq i32 %i.hx, 0
  br i1 %.not12.not.i.i, label %.loopexit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.au
  %wide.trip.count.i.i = zext i32 %i.hx to i64
  br label %.lr.ph.i.i175

bb.av:                                            ; preds = %.lr.ph.i.i175
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.i.i175, !llvm.loop !91

.lr.ph.i.i175:                                    ; preds = %bb.av, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.av ] ; 2 uses
  %i.hy = getelementptr inbounds nuw [32 x i8], ptr %i.hr, i64 %indvars.iv.i.i ; 3 uses
  %i.hz = load i64, ptr %i.hy, align 32, !tbaa !114
  %i.ia = icmp eq i64 %i.hz, %i.hv
  br i1 %i.ia, label %_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8findTileERKS3_.exit.i, label %bb.av

_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8findTileERKS3_.exit.i: ; preds = %.lr.ph.i.i175
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !115 ; 2 uses
  %.not.i176 = icmp eq i64 %i.ic, 0
  br i1 %.not.i176, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8findTileERKS3_.exit.i
  %i.id = getelementptr inbounds i8, ptr %i.hq, i64 %i.ic ; 3 uses
  %i.ie = shl i32 %.053272, 3
  %i.if = and i32 %i.ie, 31744
  %i.ig = or disjoint i32 %i.if, %i.hh            ; 2 uses
  %i.ih = or disjoint i32 %i.ig, %i.gd            ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 4128
  %i.ij = lshr i32 %i.ig, 6
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.ik
  %i.im = load i64, ptr %i.il, align 8, !tbaa !33
  %i.in = and i32 %i.ih, 63
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = shl nuw i64 1, %i.io
  %i.iq = and i64 %i.im, %i.ip
  %.not.i.i177 = icmp eq i64 %i.iq, 0
  %i.ir = getelementptr inbounds nuw i8, ptr %i.id, i64 8256
  %i.is = zext nneg i32 %i.ih to i64
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.is ; 2 uses
  br i1 %.not.i.i177, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !22
  %i.iv = getelementptr inbounds i8, ptr %i.id, i64 %i.iu ; 3 uses
  %i.iw = shl i32 %.053272, 5
  %i.ix = and i32 %i.iw, 3840
  %i.iy = or disjoint i32 %i.ix, %i.hj            ; 2 uses
  %i.iz = or disjoint i32 %i.iy, %i.gf            ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 544
  %i.jb = lshr i32 %i.iy, 6
  %i.jc = zext nneg i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.jc
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !33
  %i.jf = and i32 %i.iz, 63
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = shl nuw i64 1, %i.jg
  %i.ji = and i64 %i.je, %i.jh
  %.not.i.i.i178 = icmp eq i64 %i.ji, 0
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iv, i64 1088
  %i.jk = zext nneg i32 %i.iz to i64
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.jk ; 2 uses
  br i1 %.not.i.i.i178, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !22
  %i.jn = getelementptr inbounds i8, ptr %i.iv, i64 %i.jm
  %i.jo = shl i32 %.053272, 6
  %i.jp = and i32 %i.jo, 448
  %i.jq = or disjoint i32 %i.hm, %i.jp
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 96
  %i.js = zext nneg i32 %i.jq to i64
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.js
  br label %bb.ba

bb.az:                                            ; preds = %_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8findTileERKS3_.exit.i
  %i.ju = getelementptr inbounds nuw i8, ptr %i.hy, i64 20
  br label %bb.ba

.loopexit.i:                                      ; preds = %bb.av, %bb.au
  %i.jv = getelementptr inbounds nuw i8, ptr %i.hq, i64 28
  br label %bb.ba

bb.ba:                                            ; preds = %bb.aw, %bb.ax, %bb.ay, %bb.az, %.loopexit.i
  %.1.in.i = phi ptr [ %i.jv, %.loopexit.i ], [ %i.ju, %bb.az ], [ %i.jl, %bb.ax ], [ %i.jt, %bb.ay ], [ %i.it, %bb.aw ]
  %.1.i = load float, ptr %.1.in.i, align 4, !tbaa !22 ; 2 uses
  %.not.i.i142 = icmp eq ptr %.sroa.10.2270, %.sroa.14.2271
  br i1 %.not.i.i142, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store float %.1.i, ptr %.sroa.10.2270, align 4, !tbaa !116
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

bb.bc:                                            ; preds = %bb.ba
  %i.jw = ptrtoint ptr %.sroa.14.2271 to i64
  %i.jx = ptrtoint ptr %.sroa.0180.2269 to i64
  %i.jy = sub i64 %i.jw, %i.jx                    ; 7 uses
  %i.jz = icmp eq i64 %i.jy, 9223372036854775804
  br i1 %i.jz, label %bb.bd, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #33
          to label %.noexc143 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc143:                                        ; preds = %bb.bd
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bc
  %i.ka = ashr exact i64 %i.jy, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ka, i64 1)
  %i.kb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ka ; 2 uses
  %i.kc = icmp ult i64 %i.kb, %i.ka
  %i.kd = call i64 @llvm.umin.i64(i64 %i.kb, i64 2305843009213693951)
  %i.ke = select i1 %i.kc, i64 2305843009213693951, i64 %i.kd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ke, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.kf = shl nuw nsw i64 %i.ke, 2
  %i.kg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kf) #34
          to label %.noexc144 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc144:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.kh = getelementptr inbounds i8, ptr %i.kg, i64 %i.jy ; 2 uses
  store float %.1.i, ptr %i.kh, align 4, !tbaa !116
  %i.ki = icmp sgt i64 %i.jy, 0
  br i1 %i.ki, label %bb.be, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.be:                                            ; preds = %.noexc144
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kg, ptr align 4 %.sroa.0180.2269, i64 %i.jy, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.be, %.noexc144
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0180.2269, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0180.2269, i64 noundef %i.jy) #32
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.bf, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %i.ke
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

_ZNSt6vectorIfSaIfEE9push_backEOf.exit:           ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, %bb.bb
  %.sroa.0180.3 = phi ptr [ %i.kg, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %.sroa.0180.2269, %bb.bb ] ; 4 uses
  %.pn = phi ptr [ %i.kh, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %.sroa.10.2270, %bb.bb ]
  %.sroa.14.3 = phi ptr [ %i.kj, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %.sroa.14.2271, %bb.bb ] ; 4 uses
  %.sroa.10.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 4 uses
  %i.kk = add nsw i32 %.053272, 1
  %.not83 = icmp sgt i32 %.053272, %i.fo
  br i1 %.not83, label %._crit_edge275, label %bb.au, !llvm.loop !92

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.a

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bd
  %lpad.loopexit.split-lp716 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.a

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.a: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
  %17 = phi i64 [ %i.jy, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ 9223372036854775804, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp716, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i153 = icmp eq ptr %.sroa.0180.2269, null
  br i1 %.not.i.i.i153, label %_ZNSt6vectorIfSaIfEED2Ev.exit154, label %bb.bp

._crit_edge317:                                   ; preds = %._crit_edge295
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0180.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge317.thread, %._crit_edge317
  %i.kl = sub i64 %.sroa.14.0.lcssa, %i.gx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0180.0.lcssa, i64 noundef %i.kl) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %._crit_edge317, %bb.bg
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7nanovdb10GridHandleIN4pbrt13NanoVDBBufferEEE, i64 16), ptr %16, align 8, !tbaa !37
  %i.km = load ptr, ptr %i.ct, align 8, !tbaa !42 ; 2 uses
  %.not.i.i.i.i.i145 = icmp eq ptr %i.km, null
  br i1 %.not.i.i.i.i.i145, label %_ZN7nanovdb10GridHandleIN4pbrt13NanoVDBBufferEED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.kn = load i64, ptr %i.ch, align 8, !tbaa !43
  %i.ko = load ptr, ptr %i.cf, align 8, !tbaa !39 ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !37
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kr = load ptr, ptr %i.kq, align 8
  invoke void %i.kr(ptr noundef nonnull align 8 dereferenceable(8) %i.ko, ptr noundef nonnull %i.km, i64 noundef %i.kn, i64 noundef 128)
          to label %_ZN7nanovdb10GridHandleIN4pbrt13NanoVDBBufferEED2Ev.exit unwind label %bb.bi, !inline_history !2

bb.bi:                                            ; preds = %bb.bh
  %i.ks = landingpad { ptr, i32 }
          catch ptr null
  %i.kt = extractvalue { ptr, i32 } %i.ks, 0
  call void @__clang_call_terminate(ptr %i.kt) #31, !inline_history !52
  unreachable

_ZN7nanovdb10GridHandleIN4pbrt13NanoVDBBufferEED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %i.ku = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.kv = icmp eq ptr %i.ku, %i.g
  br i1 %i.kv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %_ZN7nanovdb10GridHandleIN4pbrt13NanoVDBBufferEED2Ev.exit
  %i.kw = load i64, ptr %i.g, align 8, !tbaa !22
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.kx) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %_ZN7nanovdb10GridHandleIN4pbrt13NanoVDBBufferEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.ky = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.kz = icmp eq ptr %i.ky, %i.e
  br i1 %i.kz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.la = load i64, ptr %i.e, align 8, !tbaa !22
  %i.lb = add i64 %i.la, 1
  call void @_ZdlPvm(ptr noundef %i.ky, i64 noundef %i.lb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.lc = load ptr, ptr %5, align 8, !tbaa !118   ; 3 uses
  %i.ld = load ptr, ptr %i.k, align 8, !tbaa !119 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.lc, %i.ld
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.lj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.lc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ] ; 3 uses
  %i.le = load ptr, ptr %.05.i.i.i, align 8, !tbaa !25 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.lg = icmp eq ptr %i.le, %i.lf
  br i1 %i.lg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.lh = load i64, ptr %i.lf, align 8, !tbaa !22
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.li) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.lj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i152 = icmp eq ptr %i.lj, %i.ld
  br i1 %.not.i.i.i152, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !93

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !118
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  %i.lk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.lc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.lk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ll = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !120
  %i.ln = ptrtoint ptr %i.lm to i64
  %i.lo = ptrtoint ptr %i.lk to i64
  %i.lp = sub i64 %i.ln, %i.lo
  call void @_ZdlPvm(ptr noundef nonnull %i.lk, i64 noundef %i.lp) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret i32 0

.lr.ph316:                                        ; preds = %.lr.ph316.preheader, %bb.bo
  %indvars.iv = phi i64 [ 0, %.lr.ph316.preheader ], [ %indvars.iv.next, %bb.bo ] ; 3 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0180.0.lcssa, i64 %indvars.iv
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !116 ; 2 uses
  %i.ls = fcmp oeq float %i.lr, 0.000000e+00
  br i1 %i.ls, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.lr.ph316
  %i.lt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9) ; 0 uses
  br label %bb.bm

bb.bl:                                            ; preds = %.lr.ph316
  %i.lu = fpext float %i.lr to double
  %i.lv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %i.lu) ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.lw = trunc nuw nsw i64 %indvars.iv to i32
  %i.lx = urem i32 %i.lw, 20
  %i.ly = icmp eq i32 %i.lx, 19
  br i1 %i.ly, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ha
  br i1 %exitcond.not, label %._crit_edge317.thread, label %.lr.ph316, !llvm.loop !94

._crit_edge317.thread:                            ; preds = %bb.bo
  %puts392 = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.bg

bb.bp:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.a
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0180.2269, i64 noundef %17) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit154

_ZNSt6vectorIfSaIfEED2Ev.exit154:                 ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.a, %bb.bp, %bb.at
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hb, %bb.at ], [ %lpad.phi, %bb.bp ], [ %lpad.phi, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.a ] ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7nanovdb10GridHandleIN4pbrt13NanoVDBBufferEEE, i64 16), ptr %16, align 8, !tbaa !37
  %i.lz = load ptr, ptr %i.ct, align 8, !tbaa !42 ; 2 uses
  %.not.i.i.i.i.i155 = icmp eq ptr %i.lz, null
  br i1 %.not.i.i.i.i.i155, label %.body, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit154
  %i.ma = load i64, ptr %i.ch, align 8, !tbaa !43
  %i.mb = load ptr, ptr %i.cf, align 8, !tbaa !39 ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !37
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 24
  %i.me = load ptr, ptr %i.md, align 8
  invoke void %i.me(ptr noundef nonnull align 8 dereferenceable(8) %i.mb, ptr noundef nonnull %i.lz, i64 noundef %i.ma, i64 noundef 128)
          to label %.body unwind label %bb.br, !inline_history !2

bb.br:                                            ; preds = %bb.bq
  %i.mf = landingpad { ptr, i32 }
          catch ptr null
  %i.mg = extractvalue { ptr, i32 } %i.mf, 0
  call void @__clang_call_terminate(ptr %i.mg) #31, !inline_history !52
  unreachable

.body:                                            ; preds = %bb.bq, %_ZNSt6vectorIfSaIfEED2Ev.exit154, %bb.an
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.merged.i, %bb.an ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bq ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit154 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %bb.bs

bb.bs:                                            ; preds = %.body, %bb.t, %bb.s
  %.pn100.pn = phi { ptr, i32 } [ %.pn100, %bb.s ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %i.cc, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %i.mh = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.mi = icmp eq ptr %i.mh, %i.g
  br i1 %i.mi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %bb.bs
  %i.mj = load i64, ptr %i.g, align 8, !tbaa !22
  %i.mk = add i64 %i.mj, 1
  call void @_ZdlPvm(ptr noundef %i.mh, i64 noundef %i.mk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.ml = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.mm = icmp eq ptr %i.ml, %i.e
  br i1 %i.mm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159
  %i.mn = load i64, ptr %i.e, align 8, !tbaa !22
  %i.mo = add i64 %i.mn, 1
  call void @_ZdlPvm(ptr noundef %i.ml, i64 noundef %i.mo) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.mp = load ptr, ptr %5, align 8, !tbaa !118   ; 3 uses
  %i.mq = load ptr, ptr %i.k, align 8, !tbaa !119 ; 2 uses
  %.not4.i.i.i163 = icmp eq ptr %i.mp, %i.mq
  br i1 %.not4.i.i.i163, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i171, label %.lr.ph.i.i.i164

.lr.ph.i.i.i164:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i167
  %.05.i.i.i165 = phi ptr [ %i.mw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i167 ], [ %i.mp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ] ; 3 uses
  %i.mr = load ptr, ptr %.05.i.i.i165, align 8, !tbaa !25 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.05.i.i.i165, i64 16 ; 2 uses
  %i.mt = icmp eq ptr %i.mr, %i.ms
  br i1 %i.mt, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i166: ; preds = %.lr.ph.i.i.i164
  %i.mu = load i64, ptr %i.ms, align 8, !tbaa !22
  %i.mv = add i64 %i.mu, 1
  call void @_ZdlPvm(ptr noundef %i.mr, i64 noundef %i.mv) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i167

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i167: ; preds = %.lr.ph.i.i.i164, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i166
  %i.mw = getelementptr inbounds nuw i8, ptr %.05.i.i.i165, i64 32 ; 2 uses
  %.not.i.i.i168 = icmp eq ptr %i.mw, %i.mq
  br i1 %.not.i.i.i168, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i169, label %.lr.ph.i.i.i164, !llvm.loop !93

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i169: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i167
  %.pr.i170 = load ptr, ptr %5, align 8, !tbaa !118
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i171

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i171: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i169, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162
  %i.mx = phi ptr [ %.pr.i170, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i169 ], [ %i.mp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ] ; 3 uses
  %.not.i.i1.i172 = icmp eq ptr %i.mx, null
  br i1 %.not.i.i1.i172, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit174, label %bb.bt

bb.bt:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i171
  %i.my = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !120
  %i.na = ptrtoint ptr %i.mz to i64
  %i.nb = ptrtoint ptr %i.mx to i64
  %i.nc = sub i64 %i.na, %i.nb
  call void @_ZdlPvm(ptr noundef nonnull %i.mx, i64 noundef %i.nc) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit174

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit174: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i171, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %.pn100.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4pbrt23GetCommandLineArgumentsB5cxx11EPPc(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !18
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.15) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.d, ptr %i.a, align 8, !tbaa !33
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !25
  %i.g = load i64, ptr %i.a, align 8, !tbaa !33
  store i64 %i.g, ptr %i.b, align 8, !tbaa !22
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !22
  store i8 %i.i, ptr %i.h, align 1, !tbaa !22
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !21
  %i.l = load ptr, ptr %0, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: cold mustprogress nofree noreturn nounwind uwtable
define internal fastcc void @_ZL5usageRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.e = load ptr, ptr %0, align 8, !tbaa !25
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.13, ptr noundef %i.e) #35 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !122
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.14, i64 125, i64 1, ptr %i.g) #36 ; 0 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !21
  %i.i = icmp ne i64 %i.h, 0
  %i.j = zext i1 %i.i to i32
  tail call void @exit(i32 noundef %i.j) #31
  unreachable
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4pbrt8ParseArgIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEPiEEbPT_SF_RKS8_T0_St8functionIFvS8_EE(ptr noundef %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3, ptr nofree noundef align 8 dereferenceable(32) %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN7nanovdb2io12GridMetaDataESaIS2_EE17_M_default_appendEm:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 208                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 44343134792571038
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 44343134792571037, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.013.i.i.i.prol = phi ptr [ %i.x, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 11 uses
  %.01012.i.i.i.prol = phi i64 [ %i.w, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 40
  store <4 x double> <double f0x7FEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 72
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.prol, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 88
  store i64 9223372034707292159, ptr %i.q, align 8
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 96
  store i32 2147483647, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.prol, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 100
  store i64 -9223372034707292160, ptr %i.r, align 4
  %.sroa.4.0..sroa_idx.i1.i.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 108
  store i32 -2147483648, ptr %.sroa.4.0..sroa_idx.i1.i.i.i.i.i.i.prol, align 4, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 172
  store i32 67111939, ptr %i.s, align 4, !tbaa !70
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 176
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 192 ; 2 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 184
  store i64 0, ptr %i.v, align 8, !tbaa !21
  store i8 0, ptr %i.u, align 8, !tbaa !22
  %i.w = add nsw i64 %.01012.i.i.i.prol, -1       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 208 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !306

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.x, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.x, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.w, %.lr.ph.i.i.i.prol ]
  %i.y = icmp ult i64 %1, 4
  br i1 %i.y, label %_ZSt27__uninitialized_default_n_aIPN7nanovdb2io12GridMetaDataEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 41 uses
  %.01012.i.i.i = phi i64 [ %i.bb, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 40
  store <4 x double> <double f0x7FEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %i.z, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 72
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 88
  store i64 9223372034707292159, ptr %i.aa, align 8
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 96
  store i32 2147483647, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 100
  store i64 -9223372034707292160, ptr %i.ab, align 4
  %.sroa.4.0..sroa_idx.i1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 108
  store i32 -2147483648, ptr %.sroa.4.0..sroa_idx.i1.i.i.i.i.i.i, align 4, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 172
  store i32 67111939, ptr %i.ac, align 4, !tbaa !70
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 176
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 192 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 184
  store i64 0, ptr %i.af, align 8, !tbaa !21
  store i8 0, ptr %i.ae, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 248
  store <4 x double> <double f0x7FEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %i.ag, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 280
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.1, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 296
  store i64 9223372034707292159, ptr %i.ah, align 8
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 304
  store i32 2147483647, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.1, align 8, !tbaa !22
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 308
  store i64 -9223372034707292160, ptr %i.ai, align 4
  %.sroa.4.0..sroa_idx.i1.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 316
  store i32 -2147483648, ptr %.sroa.4.0..sroa_idx.i1.i.i.i.i.i.i.1, align 4, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 380
  store i32 67111939, ptr %i.aj, align 4, !tbaa !70
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 384
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 400 ; 2 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 392
  store i64 0, ptr %i.am, align 8, !tbaa !21
  store i8 0, ptr %i.al, align 8, !tbaa !22
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 456
  store <4 x double> <double f0x7FEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %i.an, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 488
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.2, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 504
  store i64 9223372034707292159, ptr %i.ao, align 8
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 512
  store i32 2147483647, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.2, align 8, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 516
  store i64 -9223372034707292160, ptr %i.ap, align 4
  %.sroa.4.0..sroa_idx.i1.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 524
  store i32 -2147483648, ptr %.sroa.4.0..sroa_idx.i1.i.i.i.i.i.i.2, align 4, !tbaa !22
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 588
  store i32 67111939, ptr %i.aq, align 4, !tbaa !70
  %i.ar = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 592
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 608 ; 2 uses
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 600
  store i64 0, ptr %i.at, align 8, !tbaa !21
  store i8 0, ptr %i.as, align 8, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 664
  store <4 x double> <double f0x7FEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %i.au, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 696
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.3, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 712
  store i64 9223372034707292159, ptr %i.av, align 8
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 720
  store i32 2147483647, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.3, align 8, !tbaa !22
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 724
  store i64 -9223372034707292160, ptr %i.aw, align 4
  %.sroa.4.0..sroa_idx.i1.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 732
  store i32 -2147483648, ptr %.sroa.4.0..sroa_idx.i1.i.i.i.i.i.i.3, align 4, !tbaa !22
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 796
  store i32 67111939, ptr %i.ax, align 4, !tbaa !70
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 800
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 816 ; 2 uses
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 808
  store i64 0, ptr %i.ba, align 8, !tbaa !21
  store i8 0, ptr %i.az, align 8, !tbaa !22
  %i.bb = add nsw i64 %.01012.i.i.i, -4           ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 832 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN7nanovdb2io12GridMetaDataEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !307

_ZSt27__uninitialized_default_n_aIPN7nanovdb2io12GridMetaDataEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.bc, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !80
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.bd = icmp ult i64 %i.n, %1
  br i1 %i.bd, label %bb.d, label %_ZNKSt6vectorIN7nanovdb2io12GridMetaDataESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #33
  unreachable

_ZNKSt6vectorIN7nanovdb2io12GridMetaDataESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.be = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.be, i64 44343134792571037) ; 2 uses
  %i.bg = mul nuw nsw i64 %i.bf, 208
  %i.bh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #34 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.f ; 3 uses
  %xtraiter54 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod55.not = icmp eq i64 %xtraiter54, 0
  br i1 %lcmp.mod55.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN7nanovdb2io12GridMetaDataESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.013.i.i.i31.prol = phi ptr [ %i.br, %.lr.ph.i.i.i30.prol ], [ %i.bi, %_ZNKSt6vectorIN7nanovdb2io12GridMetaDataESaIS2_EE12_M_check_lenEmPKc.exit ] ; 11 uses
  %.01012.i.i.i32.prol = phi i64 [ %i.bq, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN7nanovdb2io12GridMetaDataESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter56 = phi i64 [ %prol.iter56.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN7nanovdb2io12GridMetaDataESaIS2_EE12_M_check_lenEmPKc.exit ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 40
  store <4 x double> <double f0x7FEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %i.bj, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i35.prol = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 72
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i35.prol, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 88
  store i64 9223372034707292159, ptr %i.bk, align 8
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i37.prol = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 96
  store i32 2147483647, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i37.prol, align 8, !tbaa !22
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 100
  store i64 -9223372034707292160, ptr %i.bl, align 4
  %.sroa.4.0..sroa_idx.i1.i.i.i.i.i.i38.prol = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 108
  store i32 -2147483648, ptr %.sroa.4.0..sroa_idx.i1.i.i.i.i.i.i38.prol, align 4, !tbaa !22
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 172
  store i32 67111939, ptr %i.bm, align 4, !tbaa !70
  %i.bn = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 176
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 192 ; 2 uses
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 184
  store i64 0, ptr %i.bp, align 8, !tbaa !21
  store i8 0, ptr %i.bo, align 8, !tbaa !22
  %i.bq = add nsw i64 %.01012.i.i.i32.prol, -1    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 208 ; 2 uses
  %prol.iter56.next = add i64 %prol.iter56, 1     ; 2 uses
  %prol.iter56.cmp.not = icmp eq i64 %prol.iter56.next, %xtraiter54
  br i1 %prol.iter56.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !308

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN7nanovdb2io12GridMetaDataESaIS2_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i31.unr = phi ptr [ %i.bi, %_ZNKSt6vectorIN7nanovdb2io12GridMetaDataESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.br, %.lr.ph.i.i.i30.prol ]
  %.01012.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN7nanovdb2io12GridMetaDataESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.bq, %.lr.ph.i.i.i30.prol ]
  %2 = icmp slt i64 %1, 4
  br i1 %2, label %_ZSt27__uninitialized_default_n_aIPN7nanovdb2io12GridMetaDataEmS2_ET_S4_T0_RSaIT1_E.exit41, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.cv, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 41 uses
  %.01012.i.i.i32 = phi i64 [ %i.cu, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 40
  store <4 x double> <double f0x7FEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %i.bs, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i35 = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 72
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i35, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 88
  store i64 9223372034707292159, ptr %i.bt, align 8
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i37 = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 96
  store i32 2147483647, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i37, align 8, !tbaa !22
  %i.bu = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 100
  store i64 -9223372034707292160, ptr %i.bu, align 4
  %.sroa.4.0..sroa_idx.i1.i.i.i.i.i.i38 = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 108
  store i32 -2147483648, ptr %.sroa.4.0..sroa_idx.i1.i.i.i.i.i.i38, align 4, !tbaa !22
  %i.bv = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 172
  store i32 67111939, ptr %i.bv, align 4, !tbaa !70
  %i.bw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 176
  %i.bx = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 192 ; 2 uses
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 184
  store i64 0, ptr %i.by, align 8, !tbaa !21
  store i8 0, ptr %i.bx, align 8, !tbaa !22
  %i.bz = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 248
  store <4 x double> <double f0x7FEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %i.bz, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i35.1 = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 280
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i35.1, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 296
  store i64 9223372034707292159, ptr %i.ca, align 8
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i37.1 = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 304
  store i32 2147483647, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i37.1, align 8, !tbaa !22
  %i.cb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 308
  store i64 -9223372034707292160, ptr %i.cb, align 4
  %.sroa.4.0..sroa_idx.i1.i.i.i.i.i.i38.1 = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 316
  store i32 -2147483648, ptr %.sroa.4.0..sroa_idx.i1.i.i.i.i.i.i38.1, align 4, !tbaa !22
  %i.cc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 380
  store i32 67111939, ptr %i.cc, align 4, !tbaa !70
  %i.cd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 384
  %i.ce = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 400 ; 2 uses
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 392
  store i64 0, ptr %i.cf, align 8, !tbaa !21
  store i8 0, ptr %i.ce, align 8, !tbaa !22
  %i.cg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 456
  store <4 x double> <double f0x7FEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %i.cg, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i35.2 = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 488
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i35.2, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 504
  store i64 9223372034707292159, ptr %i.ch, align 8
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i37.2 = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 512
  store i32 2147483647, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i37.2, align 8, !tbaa !22
  %i.ci = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 516
  store i64 -9223372034707292160, ptr %i.ci, align 4
  %.sroa.4.0..sroa_idx.i1.i.i.i.i.i.i38.2 = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 524
  store i32 -2147483648, ptr %.sroa.4.0..sroa_idx.i1.i.i.i.i.i.i38.2, align 4, !tbaa !22
  %i.cj = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 588
  store i32 67111939, ptr %i.cj, align 4, !tbaa !70
  %i.ck = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 592
  %i.cl = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 608 ; 2 uses
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 600
  store i64 0, ptr %i.cm, align 8, !tbaa !21
  store i8 0, ptr %i.cl, align 8, !tbaa !22
  %i.cn = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 664
  store <4 x double> <double f0x7FEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %i.cn, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i35.3 = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 696
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i35.3, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 712
  store i64 9223372034707292159, ptr %i.co, align 8
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i37.3 = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 720
  store i32 2147483647, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i37.3, align 8, !tbaa !22
  %i.cp = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 724
  store i64 -9223372034707292160, ptr %i.cp, align 4
  %.sroa.4.0..sroa_idx.i1.i.i.i.i.i.i38.3 = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 732
  store i32 -2147483648, ptr %.sroa.4.0..sroa_idx.i1.i.i.i.i.i.i38.3, align 4, !tbaa !22
  %i.cq = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 796
  store i32 67111939, ptr %i.cq, align 4, !tbaa !70
  %i.cr = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 800
  %i.cs = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 816 ; 2 uses
  store ptr %i.cs, ptr %i.cr, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 808
  store i64 0, ptr %i.ct, align 8, !tbaa !21
  store i8 0, ptr %i.cs, align 8, !tbaa !22
  %i.cu = add nsw i64 %.01012.i.i.i32, -4         ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 832
  %.not.i.i.i39.3 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i39.3, label %_ZSt27__uninitialized_default_n_aIPN7nanovdb2io12GridMetaDataEmS2_ET_S4_T0_RSaIT1_E.exit41, label %.lr.ph.i.i.i30, !llvm.loop !307

_ZSt27__uninitialized_default_n_aIPN7nanovdb2io12GridMetaDataEmS2_ET_S4_T0_RSaIT1_E.exit41: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7nanovdb2io12GridMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i43

.lr.ph.i.i.i43:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN7nanovdb2io12GridMetaDataEmS2_ET_S4_T0_RSaIT1_E.exit41, %_ZSt19__relocate_object_aIN7nanovdb2io12GridMetaDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.dl, %_ZSt19__relocate_object_aIN7nanovdb2io12GridMetaDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.bh, %_ZSt27__uninitialized_default_n_aIPN7nanovdb2io12GridMetaDataEmS2_ET_S4_T0_RSaIT1_E.exit41 ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.dk, %_ZSt19__relocate_object_aIN7nanovdb2io12GridMetaDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN7nanovdb2io12GridMetaDataEmS2_ET_S4_T0_RSaIT1_E.exit41 ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(208) %.0911.i.i.i, i64 176, i1 false), !alias.scope !316
  %i.cw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 176 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 176 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 192 ; 3 uses
  store ptr %i.cy, ptr %i.cw, align 8, !tbaa !18, !alias.scope !314
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !25, !alias.scope !315 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 192 ; 5 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i43
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 184
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !21, !alias.scope !315 ; 3 uses
  %i.de = icmp ult i64 %i.dd, 16
  tail call void @llvm.assume(i1 %i.de)
  %i.df = add nuw nsw i64 %i.dd, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cy, ptr noundef nonnull align 8 dereferenceable(1) %i.da, i64 %i.df, i1 false), !alias.scope !316
  br label %_ZSt19__relocate_object_aIN7nanovdb2io12GridMetaDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i43
  store ptr %i.cz, ptr %i.cw, align 8, !tbaa !25, !alias.scope !314
  %i.dg = load i64, ptr %i.da, align 8, !tbaa !22, !alias.scope !315
  store i64 %i.dg, ptr %i.cy, align 8, !tbaa !22, !alias.scope !314
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 184
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !21, !alias.scope !315
  br label %_ZSt19__relocate_object_aIN7nanovdb2io12GridMetaDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN7nanovdb2io12GridMetaDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.e
  %i.dh = phi i64 [ %i.dd, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 184
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 184
  store i64 %i.dh, ptr %i.dj, align 8, !tbaa !21, !alias.scope !314
  store ptr %i.da, ptr %i.cx, align 8, !tbaa !25, !alias.scope !315
  store i64 0, ptr %i.di, align 8, !tbaa !21, !alias.scope !315
  store i8 0, ptr %i.da, align 8, !tbaa !22, !alias.scope !315
  %i.dk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 208 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 208
  %.not.i.i.i44 = icmp eq ptr %i.dk, %i.b
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIN7nanovdb2io12GridMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i43, !llvm.loop !312

_ZNSt6vectorIN7nanovdb2io12GridMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN7nanovdb2io12GridMetaDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPN7nanovdb2io12GridMetaDataEmS2_ET_S4_T0_RSaIT1_E.exit41
  %.not.i46 = icmp eq ptr %i.c, null
  br i1 %.not.i46, label %_ZNSt12_Vector_baseIN7nanovdb2io12GridMetaDataESaIS2_EE13_M_deallocateEPS2_m.exit47, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7nanovdb2io12GridMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.dm = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = sub i64 %i.dn, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.do) #32
  br label %_ZNSt12_Vector_baseIN7nanovdb2io12GridMetaDataESaIS2_EE13_M_deallocateEPS2_m.exit47

_ZNSt12_Vector_baseIN7nanovdb2io12GridMetaDataESaIS2_EE13_M_deallocateEPS2_m.exit47: ; preds = %_ZNSt6vectorIN7nanovdb2io12GridMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.f
  store ptr %i.bh, ptr %0, align 8, !tbaa !79
  %i.dp = getelementptr inbounds nuw [208 x i8], ptr %i.bi, i64 %1
  store ptr %i.dp, ptr %i.a, align 8, !tbaa !80
  %i.dq = getelementptr inbounds nuw [208 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.dq, ptr %i.h, align 8, !tbaa !81
  br label %bb.g

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN7nanovdb2io12GridMetaDataEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN7nanovdb2io12GridMetaDataESaIS2_EE13_M_deallocateEPS2_m.exit47, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #24

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #24

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

declare i32 @uncompress(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #12

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN4pbrt9ErrorExitEPKNS_7FileLocEPKc(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcEEEvPS7_SB_OT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull %i.c, ptr noundef %0)
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 noundef signext 42, i64 noundef 0) #30
  %.not = icmp eq i64 %i.d, -1
end_hunk_1
