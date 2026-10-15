Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3GraphAlg?download=true
inline.NumInlined: 1704
inline.NumDeleted: 657
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEEvT_SE_T0_T1_":bb.a
  %i.ek = icmp slt i32 %i.ej, 0
  br i1 %i.ek, label %.lr.ph.i.i.4.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.4.i

.lr.ph.i.i.4.i:                                   ; preds = %bb.v, %.lr.ph.i.i.4.i
  %.sroa.0.08.i.i.4.i = phi ptr [ %.sroa.0.0.i.i.4.i, %.lr.ph.i.i.4.i ], [ %.sroa.0.019.i.ptr.3.i, %bb.v ] ; 4 uses
  %.sroa.03.07.i.i.4.i = phi ptr [ %.sroa.0.08.i.i.4.i, %.lr.ph.i.i.4.i ], [ %.sroa.0.019.i.ptr.4.i, %bb.v ]
  %i.el = load ptr, ptr %.sroa.0.08.i.i.4.i, align 8, !tbaa !34
  store ptr %i.el, ptr %.sroa.03.07.i.i.4.i, align 8, !tbaa !34
  %.sroa.0.0.i.i.4.i = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.4.i, i64 -8 ; 2 uses
  %i.em = load ptr, ptr %.sroa.0.0.i.i.4.i, align 8, !tbaa !34
  %i.en = load ptr, ptr %i.ee, align 8, !tbaa !137
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 96
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = tail call noundef i32 %i.ep(ptr noundef nonnull align 8 dereferenceable(80) %i.ee, ptr noundef %i.em), !inline_history !303
  %i.er = icmp slt i32 %i.eq, 0
  br i1 %i.er, label %.lr.ph.i.i.4.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.4.i, !llvm.loop !4

bb.w:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.3.i
  %i.es = ptrtoint ptr %.sroa.0.019.i.ptr.4.i to i64
  %i.et = sub i64 %i.es, %i.g                     ; 3 uses
  %i.eu = ashr exact i64 %i.et, 3                 ; 2 uses
  %i.ev = icmp sgt i64 %i.eu, 1
  br i1 %i.ev, label %bb.z, label %bb.x, !prof !75

bb.x:                                             ; preds = %bb.w
  %i.ew = icmp eq i64 %i.et, 8
  br i1 %i.ew, label %bb.y, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.4.i

bb.y:                                             ; preds = %bb.x
  %i.ex = load ptr, ptr %.sroa.025.028.i, align 8, !tbaa !34
  store ptr %i.ex, ptr %.sroa.0.019.i.ptr.4.i, align 8, !tbaa !34
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.4.i

bb.z:                                             ; preds = %bb.w
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.025.028.i, i64 48
  %i.ez = sub nsw i64 0, %i.eu
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %i.ez
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fa, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.025.028.i, i64 %i.et, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.4.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.4.i: ; preds = %.lr.ph.i.i.4.i, %bb.z, %bb.y, %bb.x, %bb.v
  %.sink.i.4.i = phi ptr [ %.sroa.025.028.i, %bb.y ], [ %.sroa.025.028.i, %bb.z ], [ %.sroa.025.028.i, %bb.x ], [ %.sroa.0.019.i.ptr.4.i, %bb.v ], [ %.sroa.0.08.i.i.4.i, %.lr.ph.i.i.4.i ]
  store ptr %i.ee, ptr %.sink.i.4.i, align 8, !tbaa !34
  %.sroa.0.019.i.ptr.5.i = getelementptr inbounds nuw i8, ptr %.sroa.025.028.i, i64 48 ; 6 uses
  %i.fb = load ptr, ptr %.sroa.0.019.i.ptr.5.i, align 8, !tbaa !34 ; 2 uses
  %i.fc = load ptr, ptr %.sroa.025.028.i, align 8, !tbaa !34
  %i.fd = load ptr, ptr %i.fb, align 8, !tbaa !137
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 96
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = tail call noundef i32 %i.ff(ptr noundef nonnull align 8 dereferenceable(80) %i.fb, ptr noundef %i.fc), !inline_history !302
  %i.fh = icmp slt i32 %i.fg, 0
  %i.fi = load ptr, ptr %.sroa.0.019.i.ptr.5.i, align 8, !tbaa !34 ; 5 uses
  br i1 %i.fh, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.4.i
  %i.fj = load ptr, ptr %.sroa.0.019.i.ptr.4.i, align 8, !tbaa !34
  %i.fk = load ptr, ptr %i.fi, align 8, !tbaa !137
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 96
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = tail call noundef i32 %i.fm(ptr noundef nonnull align 8 dereferenceable(80) %i.fi, ptr noundef %i.fj), !inline_history !303
  %i.fo = icmp slt i32 %i.fn, 0
  br i1 %i.fo, label %.lr.ph.i.i.5.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.5.i

.lr.ph.i.i.5.i:                                   ; preds = %bb.aa, %.lr.ph.i.i.5.i
  %.sroa.0.08.i.i.5.i = phi ptr [ %.sroa.0.0.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.019.i.ptr.4.i, %bb.aa ] ; 4 uses
  %.sroa.03.07.i.i.5.i = phi ptr [ %.sroa.0.08.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.019.i.ptr.5.i, %bb.aa ]
  %i.fp = load ptr, ptr %.sroa.0.08.i.i.5.i, align 8, !tbaa !34
  store ptr %i.fp, ptr %.sroa.03.07.i.i.5.i, align 8, !tbaa !34
  %.sroa.0.0.i.i.5.i = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.5.i, i64 -8 ; 2 uses
  %i.fq = load ptr, ptr %.sroa.0.0.i.i.5.i, align 8, !tbaa !34
  %i.fr = load ptr, ptr %i.fi, align 8, !tbaa !137
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 96
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = tail call noundef i32 %i.ft(ptr noundef nonnull align 8 dereferenceable(80) %i.fi, ptr noundef %i.fq), !inline_history !303
  %i.fv = icmp slt i32 %i.fu, 0
  br i1 %i.fv, label %.lr.ph.i.i.5.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.5.i, !llvm.loop !4

bb.ab:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.4.i
  %i.fw = ptrtoint ptr %.sroa.0.019.i.ptr.5.i to i64
  %i.fx = sub i64 %i.fw, %i.g                     ; 3 uses
  %i.fy = ashr exact i64 %i.fx, 3                 ; 2 uses
  %i.fz = icmp sgt i64 %i.fy, 1
  br i1 %i.fz, label %bb.ae, label %bb.ac, !prof !75

bb.ac:                                            ; preds = %bb.ab
  %i.ga = icmp eq i64 %i.fx, 8
  br i1 %i.ga, label %bb.ad, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.5.i

bb.ad:                                            ; preds = %bb.ac
  %i.gb = load ptr, ptr %.sroa.025.028.i, align 8, !tbaa !34
  store ptr %i.gb, ptr %.sroa.0.019.i.ptr.5.i, align 8, !tbaa !34
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.5.i

bb.ae:                                            ; preds = %bb.ab
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.025.028.i, i64 56
  %i.gd = sub nsw i64 0, %i.fy
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.gd
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ge, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.025.028.i, i64 %i.fx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.5.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.5.i: ; preds = %.lr.ph.i.i.5.i, %bb.ae, %bb.ad, %bb.ac, %bb.aa
  %.sink.i.5.i = phi ptr [ %.sroa.025.028.i, %bb.ad ], [ %.sroa.025.028.i, %bb.ae ], [ %.sroa.025.028.i, %bb.ac ], [ %.sroa.0.019.i.ptr.5.i, %bb.aa ], [ %.sroa.0.08.i.i.5.i, %.lr.ph.i.i.5.i ]
  store ptr %i.fi, ptr %.sink.i.5.i, align 8, !tbaa !34
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.025.028.i, i64 56 ; 3 uses
  %i.gg = ptrtoint ptr %i.gf to i64               ; 3 uses
  %i.gh = sub i64 %i.a, %i.gg
  %i.gi = icmp sgt i64 %i.gh, 48
  br i1 %i.gi, label %.lr.ph.i.i, label %._crit_edge.i, !llvm.loop !304

._crit_edge.i:                                    ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.5.i, %bb.a
  %.sroa.025.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.gf, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.5.i ] ; 9 uses
  %.lcssa.i = phi i64 [ %i.b, %bb.a ], [ %i.gg, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.5.i ]
  %i.gj = icmp eq ptr %.sroa.025.0.lcssa.i, %1
  %.sroa.0.016.i11.i = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i, i64 8 ; 2 uses
  %.not17.i12.i = icmp eq ptr %.sroa.0.016.i11.i, %1
  %or.cond.i = select i1 %i.gj, i1 true, i1 %.not17.i12.i
  br i1 %or.cond.i, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEEvT_SE_T0_T1_.exit", label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %._crit_edge.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i16.i
  %.sroa.0.019.i14.i = phi ptr [ %.sroa.0.0.i18.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i16.i ], [ %.sroa.0.016.i11.i, %._crit_edge.i ] ; 7 uses
  %.pn18.i15.i = phi ptr [ %.sroa.0.019.i14.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i16.i ], [ %.sroa.025.0.lcssa.i, %._crit_edge.i ] ; 4 uses
  %i.gk = load ptr, ptr %.sroa.0.019.i14.i, align 8, !tbaa !34 ; 2 uses
  %i.gl = load ptr, ptr %.sroa.025.0.lcssa.i, align 8, !tbaa !34
  %i.gm = load ptr, ptr %i.gk, align 8, !tbaa !137
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 96
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = tail call noundef i32 %i.go(ptr noundef nonnull align 8 dereferenceable(80) %i.gk, ptr noundef %i.gl), !inline_history !302
  %i.gq = icmp slt i32 %i.gp, 0
  %i.gr = load ptr, ptr %.sroa.0.019.i14.i, align 8, !tbaa !34 ; 5 uses
  br i1 %i.gq, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %.lr.ph.i13.i
  %i.gs = ptrtoint ptr %.sroa.0.019.i14.i to i64
  %i.gt = sub i64 %i.gs, %.lcssa.i                ; 3 uses
  %i.gu = ashr exact i64 %i.gt, 3                 ; 2 uses
  %i.gv = icmp sgt i64 %i.gu, 1
  br i1 %i.gv, label %bb.ag, label %bb.ah, !prof !75

bb.ag:                                            ; preds = %bb.af
  %i.gw = getelementptr inbounds nuw i8, ptr %.pn18.i15.i, i64 16
  %i.gx = sub nsw i64 0, %i.gu
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.gx
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gy, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.025.0.lcssa.i, i64 %i.gt, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i16.i

bb.ah:                                            ; preds = %bb.af
  %i.gz = icmp eq i64 %i.gt, 8
  br i1 %i.gz, label %bb.ai, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i16.i

bb.ai:                                            ; preds = %bb.ah
  %i.ha = getelementptr inbounds nuw i8, ptr %.pn18.i15.i, i64 8
  %i.hb = load ptr, ptr %.sroa.025.0.lcssa.i, align 8, !tbaa !34
  store ptr %i.hb, ptr %i.ha, align 8, !tbaa !34
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i16.i

bb.aj:                                            ; preds = %.lr.ph.i13.i
  %i.hc = load ptr, ptr %.pn18.i15.i, align 8, !tbaa !34
  %i.hd = load ptr, ptr %i.gr, align 8, !tbaa !137
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 96
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = tail call noundef i32 %i.hf(ptr noundef nonnull align 8 dereferenceable(80) %i.gr, ptr noundef %i.hc), !inline_history !303
  %i.hh = icmp slt i32 %i.hg, 0
  br i1 %i.hh, label %.lr.ph.i.i20.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i16.i

.lr.ph.i.i20.i:                                   ; preds = %bb.aj, %.lr.ph.i.i20.i
  %.sroa.0.08.i.i21.i = phi ptr [ %.sroa.0.0.i.i23.i, %.lr.ph.i.i20.i ], [ %.pn18.i15.i, %bb.aj ] ; 4 uses
  %.sroa.03.07.i.i22.i = phi ptr [ %.sroa.0.08.i.i21.i, %.lr.ph.i.i20.i ], [ %.sroa.0.019.i14.i, %bb.aj ]
  %i.hi = load ptr, ptr %.sroa.0.08.i.i21.i, align 8, !tbaa !34
  store ptr %i.hi, ptr %.sroa.03.07.i.i22.i, align 8, !tbaa !34
  %.sroa.0.0.i.i23.i = getelementptr inbounds i8, ptr %.sroa.0.08.i.i21.i, i64 -8 ; 2 uses
  %i.hj = load ptr, ptr %.sroa.0.0.i.i23.i, align 8, !tbaa !34
  %i.hk = load ptr, ptr %i.gr, align 8, !tbaa !137
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 96
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = tail call noundef i32 %i.hm(ptr noundef nonnull align 8 dereferenceable(80) %i.gr, ptr noundef %i.hj), !inline_history !303
  %i.ho = icmp slt i32 %i.hn, 0
  br i1 %i.ho, label %.lr.ph.i.i20.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i16.i, !llvm.loop !4

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i16.i: ; preds = %.lr.ph.i.i20.i, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.sink.i17.i = phi ptr [ %.sroa.025.0.lcssa.i, %bb.ai ], [ %.sroa.025.0.lcssa.i, %bb.ag ], [ %.sroa.025.0.lcssa.i, %bb.ah ], [ %.sroa.0.019.i14.i, %bb.aj ], [ %.sroa.0.08.i.i21.i, %.lr.ph.i.i20.i ]
  store ptr %i.gr, ptr %.sink.i17.i, align 8, !tbaa !34
  %.sroa.0.0.i18.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i14.i, i64 8 ; 2 uses
  %.not.i19.i = icmp eq ptr %.sroa.0.0.i18.i, %1
  br i1 %.not.i19.i, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEEvT_SE_T0_T1_.exit", label %.lr.ph.i13.i, !llvm.loop !5

"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEEvT_SE_T0_T1_.exit": ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i16.i, %._crit_edge.i
  %i.hp = icmp sgt i64 %i.d, 7
  br i1 %i.hp, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEEvT_SE_T0_T1_.exit"
  %i.hq = ptrtoint ptr %i.e to i64                ; 3 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph, %"_ZSt17__merge_sort_loopIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEEvT_SE_T0_T1_T2_.exit"
  %.069 = phi i64 [ 7, %.lr.ph ], [ %i.km, %"_ZSt17__merge_sort_loopIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEEvT_SE_T0_T1_T2_.exit" ] ; 8 uses
  %i.hr = shl nsw i64 %.069, 1                    ; 6 uses
  %.not55.i = icmp slt i64 %i.d, %i.hr
  br i1 %.not55.i, label %._crit_edge.i23, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ak
  %.idx.i = shl i64 %.069, 3                      ; 10 uses
  %.idx49.i = shl i64 %.069, 4                    ; 2 uses
  %.not50.i = icmp eq i64 %.idx.i, %.idx49.i
  br i1 %.not50.i, label %.critedge.i.us.preheader.i, label %.lr.ph.i.preheader.i

.critedge.i.us.preheader.i:                       ; preds = %.lr.ph.i
  %i.hs = icmp sgt i64 %.idx.i, 8
  br i1 %i.hs, label %.critedge.i.us.i.us, label %.critedge.i.us.preheader.i.split, !prof !75

.critedge.i.us.i.us:                              ; preds = %.critedge.i.us.preheader.i, %.critedge.i.us.i.us
  %.057.us.i.us = phi ptr [ %i.hu, %.critedge.i.us.i.us ], [ %2, %.critedge.i.us.preheader.i ] ; 2 uses
  %.sroa.041.056.us.i.us = phi ptr [ %i.ht, %.critedge.i.us.i.us ], [ %0, %.critedge.i.us.preheader.i ] ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.041.056.us.i.us, i64 %.idx.i ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.057.us.i.us, ptr align 8 %.sroa.041.056.us.i.us, i64 %.idx.i, i1 false)
  %i.hu = getelementptr inbounds nuw i8, ptr %.057.us.i.us, i64 %.idx.i ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hu, ptr nonnull align 8 %i.ht, i64 %.idx.i, i1 false)
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = sub i64 %i.a, %i.hv
  %i.hx = ashr exact i64 %i.hw, 3                 ; 2 uses
  %.not.us.i.us = icmp slt i64 %i.hx, %i.hr
  br i1 %.not.us.i.us, label %._crit_edge.i23, label %.critedge.i.us.i.us, !llvm.loop !305

.critedge.i.us.preheader.i.split:                 ; preds = %.critedge.i.us.preheader.i
  %i.hy = icmp eq i64 %.idx.i, 8
  br i1 %i.hy, label %.critedge.i.us.i.us58.preheader, label %.critedge.i.us.i

.critedge.i.us.i.us58.preheader:                  ; preds = %.critedge.i.us.preheader.i.split
  %.pre = load ptr, ptr %0, align 8, !tbaa !34
  br label %.critedge.i.us.i.us58

.critedge.i.us.i.us58:                            ; preds = %.critedge.i.us.i.us58.preheader, %.critedge.i.us.i.us58
  %i.hz = phi ptr [ %i.ic, %.critedge.i.us.i.us58 ], [ %.pre, %.critedge.i.us.i.us58.preheader ]
  %.057.us.i.us59 = phi ptr [ %i.ib, %.critedge.i.us.i.us58 ], [ %2, %.critedge.i.us.i.us58.preheader ] ; 2 uses
  %.sroa.041.056.us.i.us60 = phi ptr [ %i.ia, %.critedge.i.us.i.us58 ], [ %0, %.critedge.i.us.i.us58.preheader ]
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.041.056.us.i.us60, i64 8 ; 4 uses
  store ptr %i.hz, ptr %.057.us.i.us59, align 8, !tbaa !34
  %i.ib = getelementptr inbounds nuw i8, ptr %.057.us.i.us59, i64 8 ; 3 uses
  %i.ic = load ptr, ptr %i.ia, align 8, !tbaa !34 ; 2 uses
  store ptr %i.ic, ptr %i.ib, align 8, !tbaa !34
  %i.id = ptrtoint ptr %i.ia to i64
  %i.ie = sub i64 %i.a, %i.id
  %i.if = ashr exact i64 %i.ie, 3                 ; 2 uses
  %.not.us.i.us62 = icmp slt i64 %i.if, %i.hr
  br i1 %.not.us.i.us62, label %._crit_edge.i23, label %.critedge.i.us.i.us58, !llvm.loop !305

.critedge.i.us.i:                                 ; preds = %.critedge.i.us.preheader.i.split, %.critedge.i.us.i
  %.057.us.i = phi ptr [ %i.ih, %.critedge.i.us.i ], [ %2, %.critedge.i.us.preheader.i.split ]
  %.sroa.041.056.us.i = phi ptr [ %i.ig, %.critedge.i.us.i ], [ %0, %.critedge.i.us.preheader.i.split ]
  %i.ig = getelementptr inbounds i8, ptr %.sroa.041.056.us.i, i64 %.idx.i ; 3 uses
  %i.ih = getelementptr inbounds i8, ptr %.057.us.i, i64 %.idx.i ; 2 uses
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = sub i64 %i.a, %i.ii
  %i.ik = ashr exact i64 %i.ij, 3                 ; 2 uses
  %.not.us.i = icmp slt i64 %i.ik, %i.hr
  br i1 %.not.us.i, label %._crit_edge.i23, label %.critedge.i.us.i, !llvm.loop !305

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i"
  %.057.i = phi ptr [ %i.jk, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i" ], [ %2, %.lr.ph.i ]
  %.sroa.041.056.i = phi ptr [ %i.im, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i" ], [ %0, %.lr.ph.i ] ; 3 uses
  %i.il = getelementptr inbounds i8, ptr %.sroa.041.056.i, i64 %.idx.i ; 3 uses
  %i.im = getelementptr inbounds i8, ptr %.sroa.041.056.i, i64 %.idx49.i ; 4 uses
  br label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i.i21, %.lr.ph.i.preheader.i
  %.020.i.i = phi ptr [ %i.iu, %.lr.ph.i.i21 ], [ %.057.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.014.019.i.i = phi ptr [ %.sroa.014.1.i.i, %.lr.ph.i.i21 ], [ %.sroa.041.056.i, %.lr.ph.i.preheader.i ] ; 3 uses
  %.sroa.010.018.i.i = phi ptr [ %.sroa.010.1.i.i, %.lr.ph.i.i21 ], [ %i.il, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.in = load ptr, ptr %.sroa.010.018.i.i, align 8, !tbaa !34 ; 2 uses
  %i.io = load ptr, ptr %.sroa.014.019.i.i, align 8, !tbaa !34
  %i.ip = load ptr, ptr %i.in, align 8, !tbaa !137
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 96
  %i.ir = load ptr, ptr %i.iq, align 8
  %i.is = tail call noundef i32 %i.ir(ptr noundef nonnull align 8 dereferenceable(80) %i.in, ptr noundef %i.io), !inline_history !306
  %i.it = icmp slt i32 %i.is, 0                   ; 3 uses
  %.sink.in.i.i = select i1 %i.it, ptr %.sroa.010.018.i.i, ptr %.sroa.014.019.i.i
  %.sroa.010.1.idx.i.i = select i1 %i.it, i64 8, i64 0
  %.sroa.010.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i, i64 %.sroa.010.1.idx.i.i ; 5 uses
  %.sroa.014.1.idx.i.i = select i1 %i.it, i64 0, i64 8
  %.sroa.014.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i.i, i64 %.sroa.014.1.idx.i.i ; 5 uses
  %.sink.i.i22 = load ptr, ptr %.sink.in.i.i, align 8, !tbaa !34
  store ptr %.sink.i.i22, ptr %.020.i.i, align 8, !tbaa !34
  %i.iu = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 8 ; 4 uses
  %i.iv = icmp ne ptr %.sroa.014.1.i.i, %i.il
  %i.iw = icmp ne ptr %.sroa.010.1.i.i, %i.im
  %or.cond.i.i = select i1 %i.iv, i1 %i.iw, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i21, label %.critedge.i.loopexit.i, !llvm.loop !307

.critedge.i.loopexit.i:                           ; preds = %.lr.ph.i.i21
  %i.ix = ptrtoint ptr %i.il to i64
  %i.iy = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.iz = sub i64 %i.ix, %i.iy                    ; 4 uses
  %i.ja = icmp sgt i64 %i.iz, 8
  br i1 %i.ja, label %bb.al, label %bb.am, !prof !75

bb.al:                                            ; preds = %.critedge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iu, ptr nonnull align 8 %.sroa.014.1.i.i, i64 %i.iz, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i.i

bb.am:                                            ; preds = %.critedge.i.loopexit.i
  %i.jb = icmp eq i64 %i.iz, 8
  br i1 %i.jb, label %bb.an, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i.i

bb.an:                                            ; preds = %bb.am
  %i.jc = load ptr, ptr %.sroa.014.1.i.i, align 8, !tbaa !34
  store ptr %i.jc, ptr %i.iu, align 8, !tbaa !34
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i.i: ; preds = %bb.an, %bb.am, %bb.al
  %i.jd = getelementptr inbounds i8, ptr %i.iu, i64 %i.iz ; 3 uses
  %i.je = ptrtoint ptr %i.im to i64               ; 2 uses
  %i.jf = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.jg = sub i64 %i.je, %i.jf                    ; 4 uses
  %i.jh = icmp sgt i64 %i.jg, 8
  br i1 %i.jh, label %bb.ao, label %bb.ap, !prof !75

bb.ao:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jd, ptr nonnull align 8 %.sroa.010.1.i.i, i64 %i.jg, i1 false)
  br label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i"

bb.ap:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i.i
  %i.ji = icmp eq i64 %i.jg, 8
  br i1 %i.ji, label %bb.aq, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i"

bb.aq:                                            ; preds = %bb.ap
  %i.jj = load ptr, ptr %.sroa.010.1.i.i, align 8, !tbaa !34
  store ptr %i.jj, ptr %i.jd, align 8, !tbaa !34
  br label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i"

"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i": ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.jk = getelementptr inbounds i8, ptr %i.jd, i64 %i.jg ; 2 uses
  %i.jl = sub i64 %i.a, %i.je
  %i.jm = ashr exact i64 %i.jl, 3                 ; 2 uses
  %.not.i = icmp slt i64 %i.jm, %i.hr
  br i1 %.not.i, label %._crit_edge.i23, label %.lr.ph.i.preheader.i, !llvm.loop !305

._crit_edge.i23:                                  ; preds = %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i", %.critedge.i.us.i, %.critedge.i.us.i.us58, %.critedge.i.us.i.us, %bb.ak
  %.sroa.041.0.lcssa.i = phi ptr [ %0, %bb.ak ], [ %i.ht, %.critedge.i.us.i.us ], [ %i.ia, %.critedge.i.us.i.us58 ], [ %i.ig, %.critedge.i.us.i ], [ %i.im, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i" ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.ak ], [ %i.hu, %.critedge.i.us.i.us ], [ %i.ib, %.critedge.i.us.i.us58 ], [ %i.ih, %.critedge.i.us.i ], [ %i.jk, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i" ] ; 2 uses
  %.lcssa53.i = phi i64 [ %i.d, %bb.ak ], [ %i.hx, %.critedge.i.us.i.us ], [ %i.if, %.critedge.i.us.i.us58 ], [ %i.ik, %.critedge.i.us.i ], [ %i.jm, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i" ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.069, i64 %.lcssa53.i) ; 2 uses
  %.idx51.i = shl nsw i64 %.sroa.speculated.i, 3
  %i.jn = getelementptr inbounds i8, ptr %.sroa.041.0.lcssa.i, i64 %.idx51.i ; 5 uses
  %i.jo = icmp ne i64 %.sroa.speculated.i, 0
  %i.jp = icmp ne ptr %i.jn, %1
  %or.cond17.i16.i = select i1 %i.jo, i1 %i.jp, i1 false
  br i1 %or.cond17.i16.i, label %.lr.ph.i22.i, label %.critedge.i17.i

.lr.ph.i22.i:                                     ; preds = %._crit_edge.i23, %.lr.ph.i22.i
  %.020.i23.i = phi ptr [ %i.jx, %.lr.ph.i22.i ], [ %.0.lcssa.i, %._crit_edge.i23 ] ; 2 uses
  %.sroa.014.019.i24.i = phi ptr [ %.sroa.014.1.i30.i, %.lr.ph.i22.i ], [ %.sroa.041.0.lcssa.i, %._crit_edge.i23 ] ; 3 uses
  %.sroa.010.018.i25.i = phi ptr [ %.sroa.010.1.i28.i, %.lr.ph.i22.i ], [ %i.jn, %._crit_edge.i23 ] ; 3 uses
  %i.jq = load ptr, ptr %.sroa.010.018.i25.i, align 8, !tbaa !34 ; 2 uses
  %i.jr = load ptr, ptr %.sroa.014.019.i24.i, align 8, !tbaa !34
  %i.js = load ptr, ptr %i.jq, align 8, !tbaa !137
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 96
  %i.ju = load ptr, ptr %i.jt, align 8
  %i.jv = tail call noundef i32 %i.ju(ptr noundef nonnull align 8 dereferenceable(80) %i.jq, ptr noundef %i.jr), !inline_history !306
  %i.jw = icmp slt i32 %i.jv, 0                   ; 3 uses
  %.sink.in.i26.i = select i1 %i.jw, ptr %.sroa.010.018.i25.i, ptr %.sroa.014.019.i24.i
  %.sroa.010.1.idx.i27.i = select i1 %i.jw, i64 8, i64 0
  %.sroa.010.1.i28.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i25.i, i64 %.sroa.010.1.idx.i27.i ; 3 uses
  %.sroa.014.1.idx.i29.i = select i1 %i.jw, i64 0, i64 8
  %.sroa.014.1.i30.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i24.i, i64 %.sroa.014.1.idx.i29.i ; 3 uses
  %.sink.i31.i = load ptr, ptr %.sink.in.i26.i, align 8, !tbaa !34
  store ptr %.sink.i31.i, ptr %.020.i23.i, align 8, !tbaa !34
  %i.jx = getelementptr inbounds nuw i8, ptr %.020.i23.i, i64 8 ; 2 uses
  %i.jy = icmp ne ptr %.sroa.014.1.i30.i, %i.jn
  %i.jz = icmp ne ptr %.sroa.010.1.i28.i, %1
  %or.cond.i32.i = select i1 %i.jy, i1 %i.jz, i1 false
  br i1 %or.cond.i32.i, label %.lr.ph.i22.i, label %.critedge.i17.i, !llvm.loop !307

.critedge.i17.i:                                  ; preds = %.lr.ph.i22.i, %._crit_edge.i23
  %.sroa.010.0.lcssa.i18.i = phi ptr [ %i.jn, %._crit_edge.i23 ], [ %.sroa.010.1.i28.i, %.lr.ph.i22.i ] ; 3 uses
  %.sroa.014.0.lcssa.i19.i = phi ptr [ %.sroa.041.0.lcssa.i, %._crit_edge.i23 ], [ %.sroa.014.1.i30.i, %.lr.ph.i22.i ] ; 3 uses
  %.0.lcssa.i20.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i23 ], [ %i.jx, %.lr.ph.i22.i ] ; 3 uses
  %i.ka = ptrtoint ptr %i.jn to i64
  %i.kb = ptrtoint ptr %.sroa.014.0.lcssa.i19.i to i64
  %i.kc = sub i64 %i.ka, %i.kb                    ; 4 uses
  %i.kd = icmp sgt i64 %i.kc, 8
  br i1 %i.kd, label %bb.ar, label %bb.as, !prof !75

bb.ar:                                            ; preds = %.critedge.i17.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i20.i, ptr align 8 %.sroa.014.0.lcssa.i19.i, i64 %i.kc, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i21.i

bb.as:                                            ; preds = %.critedge.i17.i
  %i.ke = icmp eq i64 %i.kc, 8
  br i1 %i.ke, label %bb.at, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i21.i

bb.at:                                            ; preds = %bb.as
  %i.kf = load ptr, ptr %.sroa.014.0.lcssa.i19.i, align 8, !tbaa !34
  store ptr %i.kf, ptr %.0.lcssa.i20.i, align 8, !tbaa !34
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i21.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i21.i: ; preds = %bb.at, %bb.as, %bb.ar
  %i.kg = getelementptr inbounds i8, ptr %.0.lcssa.i20.i, i64 %i.kc ; 2 uses
  %i.kh = ptrtoint ptr %.sroa.010.0.lcssa.i18.i to i64
  %i.ki = sub i64 %i.a, %i.kh                     ; 3 uses
  %i.kj = icmp sgt i64 %i.ki, 8
  br i1 %i.kj, label %bb.au, label %bb.av, !prof !75

bb.au:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i21.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.kg, ptr align 8 %.sroa.010.0.lcssa.i18.i, i64 %i.ki, i1 false)
  br label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEEvT_SE_T0_T1_T2_.exit"

bb.av:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i21.i
  %i.kk = icmp eq i64 %i.ki, 8
  br i1 %i.kk, label %bb.aw, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEEvT_SE_T0_T1_T2_.exit"

bb.aw:                                            ; preds = %bb.av
  %i.kl = load ptr, ptr %.sroa.010.0.lcssa.i18.i, align 8, !tbaa !34
  store ptr %i.kl, ptr %i.kg, align 8, !tbaa !34
  br label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEEvT_SE_T0_T1_T2_.exit"

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEEvT_SE_T0_T1_T2_.exit": ; preds = %bb.au, %bb.av, %bb.aw
  %i.km = shl nsw i64 %.069, 2                    ; 5 uses
  %.not53.i = icmp slt i64 %i.d, %i.km
  br i1 %.not53.i, label %._crit_edge.i31, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEEvT_SE_T0_T1_T2_.exit"
  %.idx.i25 = shl i64 %.069, 4                    ; 8 uses
  %.idx47.i = shl nsw i64 %.069, 5                ; 2 uses
  %.not48.i = icmp eq i64 %.idx.i25, %.idx47.i
  br i1 %.not48.i, label %._crit_edge.i.us.preheader.i, label %.lr.ph.i.preheader.i26

._crit_edge.i.us.preheader.i:                     ; preds = %.lr.ph.i24
  %i.kn = icmp sgt i64 %.069, 0
  %i.ko = icmp sgt i64 %.idx.i25, 8
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %"_ZSt12__move_mergeIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.us.i", %._crit_edge.i.us.preheader.i
  %.sroa.022.055.us.i = phi ptr [ %i.kr, %"_ZSt12__move_mergeIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.us.i" ], [ %0, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %.054.us.i = phi ptr [ %i.kp, %"_ZSt12__move_mergeIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.us.i" ], [ %2, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %i.kp = getelementptr inbounds i8, ptr %.054.us.i, i64 %.idx.i25 ; 4 uses
  br i1 %i.kn, label %bb.ax, label %_ZSt4moveIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.us.i, !prof !75

bb.ax:                                            ; preds = %._crit_edge.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.022.055.us.i, ptr align 8 %.054.us.i, i64 %.idx.i25, i1 false)
  br label %_ZSt4moveIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.us.i

_ZSt4moveIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.us.i: ; preds = %._crit_edge.i.us.i, %bb.ax
  %i.kq = getelementptr inbounds i8, ptr %.sroa.022.055.us.i, i64 %.idx.i25 ; 2 uses
  br i1 %i.ko, label %bb.ay, label %"_ZSt12__move_mergeIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.us.i", !prof !178

bb.ay:                                            ; preds = %_ZSt4moveIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kq, ptr nonnull align 8 %i.kp, i64 %.idx.i25, i1 false)
  br label %"_ZSt12__move_mergeIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.us.i"

"_ZSt12__move_mergeIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.us.i": ; preds = %_ZSt4moveIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.us.i, %bb.ay
  %i.kr = getelementptr inbounds i8, ptr %i.kq, i64 %.idx.i25 ; 2 uses
  %i.ks = ptrtoint ptr %i.kp to i64
  %i.kt = sub i64 %i.hq, %i.ks
  %i.ku = ashr exact i64 %i.kt, 3                 ; 2 uses
  %.not.us.i35 = icmp slt i64 %i.ku, %i.km
  br i1 %.not.us.i35, label %._crit_edge.i31, label %._crit_edge.i.us.i, !llvm.loop !308

.lr.ph.i.preheader.i26:                           ; preds = %.lr.ph.i24, %"_ZSt12__move_mergeIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i"
  %.sroa.022.055.i = phi ptr [ %i.lt, %"_ZSt12__move_mergeIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i" ], [ %0, %.lr.ph.i24 ]
  %.054.i = phi ptr [ %i.kw, %"_ZSt12__move_mergeIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i" ], [ %2, %.lr.ph.i24 ] ; 3 uses
  %i.kv = getelementptr inbounds i8, ptr %.054.i, i64 %.idx.i25 ; 3 uses
  %i.kw = getelementptr inbounds i8, ptr %.054.i, i64 %.idx47.i ; 4 uses
  br label %.lr.ph.i.i27

.lr.ph.i.i27:                                     ; preds = %.lr.ph.i.i27, %.lr.ph.i.preheader.i26
  %.023.i.i = phi ptr [ %.1.i.i, %.lr.ph.i.i27 ], [ %.054.i, %.lr.ph.i.preheader.i26 ] ; 3 uses
  %.01622.i.i = phi ptr [ %.117.i.i, %.lr.ph.i.i27 ], [ %i.kv, %.lr.ph.i.preheader.i26 ] ; 3 uses
  %.sroa.0.021.i.i = phi ptr [ %i.lc, %.lr.ph.i.i27 ], [ %.sroa.022.055.i, %.lr.ph.i.preheader.i26 ] ; 2 uses
  %.016.val.i.i = load ptr, ptr %.01622.i.i, align 8, !tbaa !34 ; 2 uses
  %.0.val.i.i = load ptr, ptr %.023.i.i, align 8, !tbaa !34
  %i.kx = load ptr, ptr %.016.val.i.i, align 8, !tbaa !137
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 96
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = tail call noundef i32 %i.kz(ptr noundef nonnull align 8 dereferenceable(80) %.016.val.i.i, ptr noundef %.0.val.i.i), !inline_history !309
  %i.lb = icmp slt i32 %i.la, 0                   ; 3 uses
  %.sink.in.i.i28 = select i1 %i.lb, ptr %.01622.i.i, ptr %.023.i.i
  %.117.idx.i.i = select i1 %i.lb, i64 8, i64 0
  %.117.i.i = getelementptr inbounds nuw i8, ptr %.01622.i.i, i64 %.117.idx.i.i ; 5 uses
  %.1.idx.i.i = select i1 %i.lb, i64 0, i64 8
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 %.1.idx.i.i ; 5 uses
  %.sink.i.i29 = load ptr, ptr %.sink.in.i.i28, align 8, !tbaa !34
  store ptr %.sink.i.i29, ptr %.sroa.0.021.i.i, align 8, !tbaa !34
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i, i64 8 ; 4 uses
  %i.ld = icmp ne ptr %.1.i.i, %i.kv
  %i.le = icmp ne ptr %.117.i.i, %i.kw
  %i.lf = select i1 %i.ld, i1 %i.le, i1 false
  br i1 %i.lf, label %.lr.ph.i.i27, label %._crit_edge.i.loopexit.i, !llvm.loop !310

._crit_edge.i.loopexit.i:                         ; preds = %.lr.ph.i.i27
  %i.lg = ptrtoint ptr %i.kv to i64
  %i.lh = ptrtoint ptr %.1.i.i to i64
  %i.li = sub i64 %i.lg, %i.lh                    ; 4 uses
  %i.lj = icmp sgt i64 %i.li, 8
  br i1 %i.lj, label %bb.az, label %bb.ba, !prof !75

bb.az:                                            ; preds = %._crit_edge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lc, ptr nonnull align 8 %.1.i.i, i64 %i.li, i1 false)
  br label %_ZSt4moveIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i

bb.ba:                                            ; preds = %._crit_edge.i.loopexit.i
  %i.lk = icmp eq i64 %i.li, 8
  br i1 %i.lk, label %bb.bb, label %_ZSt4moveIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.ll = load ptr, ptr %.1.i.i, align 8, !tbaa !34
  store ptr %i.ll, ptr %i.lc, align 8, !tbaa !34
  br label %_ZSt4moveIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i

_ZSt4moveIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i: ; preds = %bb.bb, %bb.ba, %bb.az
  %i.lm = getelementptr inbounds i8, ptr %i.lc, i64 %i.li ; 3 uses
  %i.ln = ptrtoint ptr %i.kw to i64               ; 2 uses
  %i.lo = ptrtoint ptr %.117.i.i to i64
  %i.lp = sub i64 %i.ln, %i.lo                    ; 4 uses
  %i.lq = icmp sgt i64 %i.lp, 8
  br i1 %i.lq, label %bb.bc, label %bb.bd, !prof !75

bb.bc:                                            ; preds = %_ZSt4moveIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lm, ptr nonnull align 8 %.117.i.i, i64 %i.lp, i1 false)
  br label %"_ZSt12__move_mergeIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i"

bb.bd:                                            ; preds = %_ZSt4moveIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i
  %i.lr = icmp eq i64 %i.lp, 8
  br i1 %i.lr, label %bb.be, label %"_ZSt12__move_mergeIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i"

bb.be:                                            ; preds = %bb.bd
  %i.ls = load ptr, ptr %.117.i.i, align 8, !tbaa !34
  store ptr %i.ls, ptr %i.lm, align 8, !tbaa !34
  br label %"_ZSt12__move_mergeIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i"

"_ZSt12__move_mergeIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i": ; preds = %bb.be, %bb.bd, %bb.bc
  %i.lt = getelementptr inbounds i8, ptr %i.lm, i64 %i.lp ; 2 uses
  %i.lu = sub i64 %i.hq, %i.ln
  %i.lv = ashr exact i64 %i.lu, 3                 ; 2 uses
  %.not.i30 = icmp slt i64 %i.lv, %i.km
  br i1 %.not.i30, label %._crit_edge.i31, label %.lr.ph.i.preheader.i26, !llvm.loop !308

._crit_edge.i31:                                  ; preds = %"_ZSt12__move_mergeIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i", %"_ZSt12__move_mergeIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.us.i", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEEvT_SE_T0_T1_T2_.exit"
  %.0.lcssa.i32 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEEvT_SE_T0_T1_T2_.exit" ], [ %i.kp, %"_ZSt12__move_mergeIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.us.i" ], [ %i.kw, %"_ZSt12__move_mergeIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i" ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPP13V3GraphVertexSt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEEvT_SE_T0_T1_T2_.exit" ], [ %i.kr, %"_ZSt12__move_mergeIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.us.i" ], [ %i.lt, %"_ZSt12__move_mergeIPP13V3GraphVertexN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph12sortVerticesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i" ] ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEEvT_SE_T0_T1_":bb.a
  %i.ek = icmp slt i32 %i.ej, 0
  br i1 %i.ek, label %.lr.ph.i.i.4.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.4.i

.lr.ph.i.i.4.i:                                   ; preds = %bb.v, %.lr.ph.i.i.4.i
  %.sroa.0.08.i.i.4.i = phi ptr [ %.sroa.0.0.i.i.4.i, %.lr.ph.i.i.4.i ], [ %.sroa.0.019.i.ptr.3.i, %bb.v ] ; 4 uses
  %.sroa.03.07.i.i.4.i = phi ptr [ %.sroa.0.08.i.i.4.i, %.lr.ph.i.i.4.i ], [ %.sroa.0.019.i.ptr.4.i, %bb.v ]
  %i.el = load ptr, ptr %.sroa.0.08.i.i.4.i, align 8, !tbaa !38
  store ptr %i.el, ptr %.sroa.03.07.i.i.4.i, align 8, !tbaa !38
  %.sroa.0.0.i.i.4.i = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.4.i, i64 -8 ; 2 uses
  %i.em = load ptr, ptr %.sroa.0.0.i.i.4.i, align 8, !tbaa !38
  %i.en = load ptr, ptr %i.ee, align 8, !tbaa !137
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 64
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = tail call noundef i32 %i.ep(ptr noundef nonnull align 8 dereferenceable(72) %i.ee, ptr noundef %i.em), !inline_history !344
  %i.er = icmp slt i32 %i.eq, 0
  br i1 %i.er, label %.lr.ph.i.i.4.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.4.i, !llvm.loop !10

bb.w:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.3.i
  %i.es = ptrtoint ptr %.sroa.0.019.i.ptr.4.i to i64
  %i.et = sub i64 %i.es, %i.g                     ; 3 uses
  %i.eu = ashr exact i64 %i.et, 3                 ; 2 uses
  %i.ev = icmp sgt i64 %i.eu, 1
  br i1 %i.ev, label %bb.z, label %bb.x, !prof !75

bb.x:                                             ; preds = %bb.w
  %i.ew = icmp eq i64 %i.et, 8
  br i1 %i.ew, label %bb.y, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.4.i

bb.y:                                             ; preds = %bb.x
  %i.ex = load ptr, ptr %.sroa.025.028.i, align 8, !tbaa !38
  store ptr %i.ex, ptr %.sroa.0.019.i.ptr.4.i, align 8, !tbaa !38
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.4.i

bb.z:                                             ; preds = %bb.w
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.025.028.i, i64 48
  %i.ez = sub nsw i64 0, %i.eu
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %i.ez
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fa, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.025.028.i, i64 %i.et, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.4.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.4.i: ; preds = %.lr.ph.i.i.4.i, %bb.z, %bb.y, %bb.x, %bb.v
  %.sink.i.4.i = phi ptr [ %.sroa.025.028.i, %bb.y ], [ %.sroa.025.028.i, %bb.z ], [ %.sroa.025.028.i, %bb.x ], [ %.sroa.0.019.i.ptr.4.i, %bb.v ], [ %.sroa.0.08.i.i.4.i, %.lr.ph.i.i.4.i ]
  store ptr %i.ee, ptr %.sink.i.4.i, align 8, !tbaa !38
  %.sroa.0.019.i.ptr.5.i = getelementptr inbounds nuw i8, ptr %.sroa.025.028.i, i64 48 ; 6 uses
  %i.fb = load ptr, ptr %.sroa.0.019.i.ptr.5.i, align 8, !tbaa !38 ; 2 uses
  %i.fc = load ptr, ptr %.sroa.025.028.i, align 8, !tbaa !38
  %i.fd = load ptr, ptr %i.fb, align 8, !tbaa !137
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 64
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = tail call noundef i32 %i.ff(ptr noundef nonnull align 8 dereferenceable(72) %i.fb, ptr noundef %i.fc), !inline_history !343
  %i.fh = icmp slt i32 %i.fg, 0
  %i.fi = load ptr, ptr %.sroa.0.019.i.ptr.5.i, align 8, !tbaa !38 ; 5 uses
  br i1 %i.fh, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.4.i
  %i.fj = load ptr, ptr %.sroa.0.019.i.ptr.4.i, align 8, !tbaa !38
  %i.fk = load ptr, ptr %i.fi, align 8, !tbaa !137
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 64
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = tail call noundef i32 %i.fm(ptr noundef nonnull align 8 dereferenceable(72) %i.fi, ptr noundef %i.fj), !inline_history !344
  %i.fo = icmp slt i32 %i.fn, 0
  br i1 %i.fo, label %.lr.ph.i.i.5.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.5.i

.lr.ph.i.i.5.i:                                   ; preds = %bb.aa, %.lr.ph.i.i.5.i
  %.sroa.0.08.i.i.5.i = phi ptr [ %.sroa.0.0.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.019.i.ptr.4.i, %bb.aa ] ; 4 uses
  %.sroa.03.07.i.i.5.i = phi ptr [ %.sroa.0.08.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.019.i.ptr.5.i, %bb.aa ]
  %i.fp = load ptr, ptr %.sroa.0.08.i.i.5.i, align 8, !tbaa !38
  store ptr %i.fp, ptr %.sroa.03.07.i.i.5.i, align 8, !tbaa !38
  %.sroa.0.0.i.i.5.i = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.5.i, i64 -8 ; 2 uses
  %i.fq = load ptr, ptr %.sroa.0.0.i.i.5.i, align 8, !tbaa !38
  %i.fr = load ptr, ptr %i.fi, align 8, !tbaa !137
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 64
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = tail call noundef i32 %i.ft(ptr noundef nonnull align 8 dereferenceable(72) %i.fi, ptr noundef %i.fq), !inline_history !344
  %i.fv = icmp slt i32 %i.fu, 0
  br i1 %i.fv, label %.lr.ph.i.i.5.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.5.i, !llvm.loop !10

bb.ab:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.4.i
  %i.fw = ptrtoint ptr %.sroa.0.019.i.ptr.5.i to i64
  %i.fx = sub i64 %i.fw, %i.g                     ; 3 uses
  %i.fy = ashr exact i64 %i.fx, 3                 ; 2 uses
  %i.fz = icmp sgt i64 %i.fy, 1
  br i1 %i.fz, label %bb.ae, label %bb.ac, !prof !75

bb.ac:                                            ; preds = %bb.ab
  %i.ga = icmp eq i64 %i.fx, 8
  br i1 %i.ga, label %bb.ad, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.5.i

bb.ad:                                            ; preds = %bb.ac
  %i.gb = load ptr, ptr %.sroa.025.028.i, align 8, !tbaa !38
  store ptr %i.gb, ptr %.sroa.0.019.i.ptr.5.i, align 8, !tbaa !38
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.5.i

bb.ae:                                            ; preds = %bb.ab
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.025.028.i, i64 56
  %i.gd = sub nsw i64 0, %i.fy
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.gd
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ge, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.025.028.i, i64 %i.fx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.5.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.5.i: ; preds = %.lr.ph.i.i.5.i, %bb.ae, %bb.ad, %bb.ac, %bb.aa
  %.sink.i.5.i = phi ptr [ %.sroa.025.028.i, %bb.ad ], [ %.sroa.025.028.i, %bb.ae ], [ %.sroa.025.028.i, %bb.ac ], [ %.sroa.0.019.i.ptr.5.i, %bb.aa ], [ %.sroa.0.08.i.i.5.i, %.lr.ph.i.i.5.i ]
  store ptr %i.fi, ptr %.sink.i.5.i, align 8, !tbaa !38
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.025.028.i, i64 56 ; 3 uses
  %i.gg = ptrtoint ptr %i.gf to i64               ; 3 uses
  %i.gh = sub i64 %i.a, %i.gg
  %i.gi = icmp sgt i64 %i.gh, 48
  br i1 %i.gi, label %.lr.ph.i.i, label %._crit_edge.i, !llvm.loop !345

._crit_edge.i:                                    ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.5.i, %bb.a
  %.sroa.025.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.gf, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.5.i ] ; 9 uses
  %.lcssa.i = phi i64 [ %i.b, %bb.a ], [ %i.gg, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.5.i ]
  %i.gj = icmp eq ptr %.sroa.025.0.lcssa.i, %1
  %.sroa.0.016.i11.i = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i, i64 8 ; 2 uses
  %.not17.i12.i = icmp eq ptr %.sroa.0.016.i11.i, %1
  %or.cond.i = select i1 %i.gj, i1 true, i1 %.not17.i12.i
  br i1 %or.cond.i, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEEvT_SE_T0_T1_.exit", label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %._crit_edge.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i16.i
  %.sroa.0.019.i14.i = phi ptr [ %.sroa.0.0.i18.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i16.i ], [ %.sroa.0.016.i11.i, %._crit_edge.i ] ; 7 uses
  %.pn18.i15.i = phi ptr [ %.sroa.0.019.i14.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i16.i ], [ %.sroa.025.0.lcssa.i, %._crit_edge.i ] ; 4 uses
  %i.gk = load ptr, ptr %.sroa.0.019.i14.i, align 8, !tbaa !38 ; 2 uses
  %i.gl = load ptr, ptr %.sroa.025.0.lcssa.i, align 8, !tbaa !38
  %i.gm = load ptr, ptr %i.gk, align 8, !tbaa !137
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 64
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = tail call noundef i32 %i.go(ptr noundef nonnull align 8 dereferenceable(72) %i.gk, ptr noundef %i.gl), !inline_history !343
  %i.gq = icmp slt i32 %i.gp, 0
  %i.gr = load ptr, ptr %.sroa.0.019.i14.i, align 8, !tbaa !38 ; 5 uses
  br i1 %i.gq, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %.lr.ph.i13.i
  %i.gs = ptrtoint ptr %.sroa.0.019.i14.i to i64
  %i.gt = sub i64 %i.gs, %.lcssa.i                ; 3 uses
  %i.gu = ashr exact i64 %i.gt, 3                 ; 2 uses
  %i.gv = icmp sgt i64 %i.gu, 1
  br i1 %i.gv, label %bb.ag, label %bb.ah, !prof !75

bb.ag:                                            ; preds = %bb.af
  %i.gw = getelementptr inbounds nuw i8, ptr %.pn18.i15.i, i64 16
  %i.gx = sub nsw i64 0, %i.gu
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.gx
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gy, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.025.0.lcssa.i, i64 %i.gt, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i16.i

bb.ah:                                            ; preds = %bb.af
  %i.gz = icmp eq i64 %i.gt, 8
  br i1 %i.gz, label %bb.ai, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i16.i

bb.ai:                                            ; preds = %bb.ah
  %i.ha = getelementptr inbounds nuw i8, ptr %.pn18.i15.i, i64 8
  %i.hb = load ptr, ptr %.sroa.025.0.lcssa.i, align 8, !tbaa !38
  store ptr %i.hb, ptr %i.ha, align 8, !tbaa !38
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i16.i

bb.aj:                                            ; preds = %.lr.ph.i13.i
  %i.hc = load ptr, ptr %.pn18.i15.i, align 8, !tbaa !38
  %i.hd = load ptr, ptr %i.gr, align 8, !tbaa !137
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 64
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = tail call noundef i32 %i.hf(ptr noundef nonnull align 8 dereferenceable(72) %i.gr, ptr noundef %i.hc), !inline_history !344
  %i.hh = icmp slt i32 %i.hg, 0
  br i1 %i.hh, label %.lr.ph.i.i20.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i16.i

.lr.ph.i.i20.i:                                   ; preds = %bb.aj, %.lr.ph.i.i20.i
  %.sroa.0.08.i.i21.i = phi ptr [ %.sroa.0.0.i.i23.i, %.lr.ph.i.i20.i ], [ %.pn18.i15.i, %bb.aj ] ; 4 uses
  %.sroa.03.07.i.i22.i = phi ptr [ %.sroa.0.08.i.i21.i, %.lr.ph.i.i20.i ], [ %.sroa.0.019.i14.i, %bb.aj ]
  %i.hi = load ptr, ptr %.sroa.0.08.i.i21.i, align 8, !tbaa !38
  store ptr %i.hi, ptr %.sroa.03.07.i.i22.i, align 8, !tbaa !38
  %.sroa.0.0.i.i23.i = getelementptr inbounds i8, ptr %.sroa.0.08.i.i21.i, i64 -8 ; 2 uses
  %i.hj = load ptr, ptr %.sroa.0.0.i.i23.i, align 8, !tbaa !38
  %i.hk = load ptr, ptr %i.gr, align 8, !tbaa !137
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 64
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = tail call noundef i32 %i.hm(ptr noundef nonnull align 8 dereferenceable(72) %i.gr, ptr noundef %i.hj), !inline_history !344
  %i.ho = icmp slt i32 %i.hn, 0
  br i1 %i.ho, label %.lr.ph.i.i20.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i16.i, !llvm.loop !10

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i16.i: ; preds = %.lr.ph.i.i20.i, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.sink.i17.i = phi ptr [ %.sroa.025.0.lcssa.i, %bb.ai ], [ %.sroa.025.0.lcssa.i, %bb.ag ], [ %.sroa.025.0.lcssa.i, %bb.ah ], [ %.sroa.0.019.i14.i, %bb.aj ], [ %.sroa.0.08.i.i21.i, %.lr.ph.i.i20.i ]
  store ptr %i.gr, ptr %.sink.i17.i, align 8, !tbaa !38
  %.sroa.0.0.i18.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i14.i, i64 8 ; 2 uses
  %.not.i19.i = icmp eq ptr %.sroa.0.0.i18.i, %1
  br i1 %.not.i19.i, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEEvT_SE_T0_T1_.exit", label %.lr.ph.i13.i, !llvm.loop !11

"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEEvT_SE_T0_T1_.exit": ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i16.i, %._crit_edge.i
  %i.hp = icmp sgt i64 %i.d, 7
  br i1 %i.hp, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEEvT_SE_T0_T1_.exit"
  %i.hq = ptrtoint ptr %i.e to i64                ; 3 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph, %"_ZSt17__merge_sort_loopIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEEvT_SE_T0_T1_T2_.exit"
  %.069 = phi i64 [ 7, %.lr.ph ], [ %i.km, %"_ZSt17__merge_sort_loopIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEEvT_SE_T0_T1_T2_.exit" ] ; 8 uses
  %i.hr = shl nsw i64 %.069, 1                    ; 6 uses
  %.not55.i = icmp slt i64 %i.d, %i.hr
  br i1 %.not55.i, label %._crit_edge.i23, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ak
  %.idx.i = shl i64 %.069, 3                      ; 10 uses
  %.idx49.i = shl i64 %.069, 4                    ; 2 uses
  %.not50.i = icmp eq i64 %.idx.i, %.idx49.i
  br i1 %.not50.i, label %.critedge.i.us.preheader.i, label %.lr.ph.i.preheader.i

.critedge.i.us.preheader.i:                       ; preds = %.lr.ph.i
  %i.hs = icmp sgt i64 %.idx.i, 8
  br i1 %i.hs, label %.critedge.i.us.i.us, label %.critedge.i.us.preheader.i.split, !prof !75

.critedge.i.us.i.us:                              ; preds = %.critedge.i.us.preheader.i, %.critedge.i.us.i.us
  %.057.us.i.us = phi ptr [ %i.hu, %.critedge.i.us.i.us ], [ %2, %.critedge.i.us.preheader.i ] ; 2 uses
  %.sroa.041.056.us.i.us = phi ptr [ %i.ht, %.critedge.i.us.i.us ], [ %0, %.critedge.i.us.preheader.i ] ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.041.056.us.i.us, i64 %.idx.i ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.057.us.i.us, ptr align 8 %.sroa.041.056.us.i.us, i64 %.idx.i, i1 false)
  %i.hu = getelementptr inbounds nuw i8, ptr %.057.us.i.us, i64 %.idx.i ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hu, ptr nonnull align 8 %i.ht, i64 %.idx.i, i1 false)
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = sub i64 %i.a, %i.hv
  %i.hx = ashr exact i64 %i.hw, 3                 ; 2 uses
  %.not.us.i.us = icmp slt i64 %i.hx, %i.hr
  br i1 %.not.us.i.us, label %._crit_edge.i23, label %.critedge.i.us.i.us, !llvm.loop !346

.critedge.i.us.preheader.i.split:                 ; preds = %.critedge.i.us.preheader.i
  %i.hy = icmp eq i64 %.idx.i, 8
  br i1 %i.hy, label %.critedge.i.us.i.us58.preheader, label %.critedge.i.us.i

.critedge.i.us.i.us58.preheader:                  ; preds = %.critedge.i.us.preheader.i.split
  %.pre = load ptr, ptr %0, align 8, !tbaa !38
  br label %.critedge.i.us.i.us58

.critedge.i.us.i.us58:                            ; preds = %.critedge.i.us.i.us58.preheader, %.critedge.i.us.i.us58
  %i.hz = phi ptr [ %i.ic, %.critedge.i.us.i.us58 ], [ %.pre, %.critedge.i.us.i.us58.preheader ]
  %.057.us.i.us59 = phi ptr [ %i.ib, %.critedge.i.us.i.us58 ], [ %2, %.critedge.i.us.i.us58.preheader ] ; 2 uses
  %.sroa.041.056.us.i.us60 = phi ptr [ %i.ia, %.critedge.i.us.i.us58 ], [ %0, %.critedge.i.us.i.us58.preheader ]
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.041.056.us.i.us60, i64 8 ; 4 uses
  store ptr %i.hz, ptr %.057.us.i.us59, align 8, !tbaa !38
  %i.ib = getelementptr inbounds nuw i8, ptr %.057.us.i.us59, i64 8 ; 3 uses
  %i.ic = load ptr, ptr %i.ia, align 8, !tbaa !38 ; 2 uses
  store ptr %i.ic, ptr %i.ib, align 8, !tbaa !38
  %i.id = ptrtoint ptr %i.ia to i64
  %i.ie = sub i64 %i.a, %i.id
  %i.if = ashr exact i64 %i.ie, 3                 ; 2 uses
  %.not.us.i.us62 = icmp slt i64 %i.if, %i.hr
  br i1 %.not.us.i.us62, label %._crit_edge.i23, label %.critedge.i.us.i.us58, !llvm.loop !346

.critedge.i.us.i:                                 ; preds = %.critedge.i.us.preheader.i.split, %.critedge.i.us.i
  %.057.us.i = phi ptr [ %i.ih, %.critedge.i.us.i ], [ %2, %.critedge.i.us.preheader.i.split ]
  %.sroa.041.056.us.i = phi ptr [ %i.ig, %.critedge.i.us.i ], [ %0, %.critedge.i.us.preheader.i.split ]
  %i.ig = getelementptr inbounds i8, ptr %.sroa.041.056.us.i, i64 %.idx.i ; 3 uses
  %i.ih = getelementptr inbounds i8, ptr %.057.us.i, i64 %.idx.i ; 2 uses
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = sub i64 %i.a, %i.ii
  %i.ik = ashr exact i64 %i.ij, 3                 ; 2 uses
  %.not.us.i = icmp slt i64 %i.ik, %i.hr
  br i1 %.not.us.i, label %._crit_edge.i23, label %.critedge.i.us.i, !llvm.loop !346

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i"
  %.057.i = phi ptr [ %i.jk, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i" ], [ %2, %.lr.ph.i ]
  %.sroa.041.056.i = phi ptr [ %i.im, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i" ], [ %0, %.lr.ph.i ] ; 3 uses
  %i.il = getelementptr inbounds i8, ptr %.sroa.041.056.i, i64 %.idx.i ; 3 uses
  %i.im = getelementptr inbounds i8, ptr %.sroa.041.056.i, i64 %.idx49.i ; 4 uses
  br label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i.i21, %.lr.ph.i.preheader.i
  %.020.i.i = phi ptr [ %i.iu, %.lr.ph.i.i21 ], [ %.057.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.014.019.i.i = phi ptr [ %.sroa.014.1.i.i, %.lr.ph.i.i21 ], [ %.sroa.041.056.i, %.lr.ph.i.preheader.i ] ; 3 uses
  %.sroa.010.018.i.i = phi ptr [ %.sroa.010.1.i.i, %.lr.ph.i.i21 ], [ %i.il, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.in = load ptr, ptr %.sroa.010.018.i.i, align 8, !tbaa !38 ; 2 uses
  %i.io = load ptr, ptr %.sroa.014.019.i.i, align 8, !tbaa !38
  %i.ip = load ptr, ptr %i.in, align 8, !tbaa !137
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 64
  %i.ir = load ptr, ptr %i.iq, align 8
  %i.is = tail call noundef i32 %i.ir(ptr noundef nonnull align 8 dereferenceable(72) %i.in, ptr noundef %i.io), !inline_history !347
  %i.it = icmp slt i32 %i.is, 0                   ; 3 uses
  %.sink.in.i.i = select i1 %i.it, ptr %.sroa.010.018.i.i, ptr %.sroa.014.019.i.i
  %.sroa.010.1.idx.i.i = select i1 %i.it, i64 8, i64 0
  %.sroa.010.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i, i64 %.sroa.010.1.idx.i.i ; 5 uses
  %.sroa.014.1.idx.i.i = select i1 %i.it, i64 0, i64 8
  %.sroa.014.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i.i, i64 %.sroa.014.1.idx.i.i ; 5 uses
  %.sink.i.i22 = load ptr, ptr %.sink.in.i.i, align 8, !tbaa !38
  store ptr %.sink.i.i22, ptr %.020.i.i, align 8, !tbaa !38
  %i.iu = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 8 ; 4 uses
  %i.iv = icmp ne ptr %.sroa.014.1.i.i, %i.il
  %i.iw = icmp ne ptr %.sroa.010.1.i.i, %i.im
  %or.cond.i.i = select i1 %i.iv, i1 %i.iw, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i21, label %.critedge.i.loopexit.i, !llvm.loop !348

.critedge.i.loopexit.i:                           ; preds = %.lr.ph.i.i21
  %i.ix = ptrtoint ptr %i.il to i64
  %i.iy = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.iz = sub i64 %i.ix, %i.iy                    ; 4 uses
  %i.ja = icmp sgt i64 %i.iz, 8
  br i1 %i.ja, label %bb.al, label %bb.am, !prof !75

bb.al:                                            ; preds = %.critedge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iu, ptr nonnull align 8 %.sroa.014.1.i.i, i64 %i.iz, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i.i

bb.am:                                            ; preds = %.critedge.i.loopexit.i
  %i.jb = icmp eq i64 %i.iz, 8
  br i1 %i.jb, label %bb.an, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i.i

bb.an:                                            ; preds = %bb.am
  %i.jc = load ptr, ptr %.sroa.014.1.i.i, align 8, !tbaa !38
  store ptr %i.jc, ptr %i.iu, align 8, !tbaa !38
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i.i: ; preds = %bb.an, %bb.am, %bb.al
  %i.jd = getelementptr inbounds i8, ptr %i.iu, i64 %i.iz ; 3 uses
  %i.je = ptrtoint ptr %i.im to i64               ; 2 uses
  %i.jf = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.jg = sub i64 %i.je, %i.jf                    ; 4 uses
  %i.jh = icmp sgt i64 %i.jg, 8
  br i1 %i.jh, label %bb.ao, label %bb.ap, !prof !75

bb.ao:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jd, ptr nonnull align 8 %.sroa.010.1.i.i, i64 %i.jg, i1 false)
  br label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i"

bb.ap:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i.i
  %i.ji = icmp eq i64 %i.jg, 8
  br i1 %i.ji, label %bb.aq, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i"

bb.aq:                                            ; preds = %bb.ap
  %i.jj = load ptr, ptr %.sroa.010.1.i.i, align 8, !tbaa !38
  store ptr %i.jj, ptr %i.jd, align 8, !tbaa !38
  br label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i"

"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i": ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.jk = getelementptr inbounds i8, ptr %i.jd, i64 %i.jg ; 2 uses
  %i.jl = sub i64 %i.a, %i.je
  %i.jm = ashr exact i64 %i.jl, 3                 ; 2 uses
  %.not.i = icmp slt i64 %i.jm, %i.hr
  br i1 %.not.i, label %._crit_edge.i23, label %.lr.ph.i.preheader.i, !llvm.loop !346

._crit_edge.i23:                                  ; preds = %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i", %.critedge.i.us.i, %.critedge.i.us.i.us58, %.critedge.i.us.i.us, %bb.ak
  %.sroa.041.0.lcssa.i = phi ptr [ %0, %bb.ak ], [ %i.ht, %.critedge.i.us.i.us ], [ %i.ia, %.critedge.i.us.i.us58 ], [ %i.ig, %.critedge.i.us.i ], [ %i.im, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i" ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.ak ], [ %i.hu, %.critedge.i.us.i.us ], [ %i.ib, %.critedge.i.us.i.us58 ], [ %i.ih, %.critedge.i.us.i ], [ %i.jk, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i" ] ; 2 uses
  %.lcssa53.i = phi i64 [ %i.d, %bb.ak ], [ %i.hx, %.critedge.i.us.i.us ], [ %i.if, %.critedge.i.us.i.us58 ], [ %i.ik, %.critedge.i.us.i ], [ %i.jm, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i" ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.069, i64 %.lcssa53.i) ; 2 uses
  %.idx51.i = shl nsw i64 %.sroa.speculated.i, 3
  %i.jn = getelementptr inbounds i8, ptr %.sroa.041.0.lcssa.i, i64 %.idx51.i ; 5 uses
  %i.jo = icmp ne i64 %.sroa.speculated.i, 0
  %i.jp = icmp ne ptr %i.jn, %1
  %or.cond17.i16.i = select i1 %i.jo, i1 %i.jp, i1 false
  br i1 %or.cond17.i16.i, label %.lr.ph.i22.i, label %.critedge.i17.i

.lr.ph.i22.i:                                     ; preds = %._crit_edge.i23, %.lr.ph.i22.i
  %.020.i23.i = phi ptr [ %i.jx, %.lr.ph.i22.i ], [ %.0.lcssa.i, %._crit_edge.i23 ] ; 2 uses
  %.sroa.014.019.i24.i = phi ptr [ %.sroa.014.1.i30.i, %.lr.ph.i22.i ], [ %.sroa.041.0.lcssa.i, %._crit_edge.i23 ] ; 3 uses
  %.sroa.010.018.i25.i = phi ptr [ %.sroa.010.1.i28.i, %.lr.ph.i22.i ], [ %i.jn, %._crit_edge.i23 ] ; 3 uses
  %i.jq = load ptr, ptr %.sroa.010.018.i25.i, align 8, !tbaa !38 ; 2 uses
  %i.jr = load ptr, ptr %.sroa.014.019.i24.i, align 8, !tbaa !38
  %i.js = load ptr, ptr %i.jq, align 8, !tbaa !137
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 64
  %i.ju = load ptr, ptr %i.jt, align 8
  %i.jv = tail call noundef i32 %i.ju(ptr noundef nonnull align 8 dereferenceable(72) %i.jq, ptr noundef %i.jr), !inline_history !347
  %i.jw = icmp slt i32 %i.jv, 0                   ; 3 uses
  %.sink.in.i26.i = select i1 %i.jw, ptr %.sroa.010.018.i25.i, ptr %.sroa.014.019.i24.i
  %.sroa.010.1.idx.i27.i = select i1 %i.jw, i64 8, i64 0
  %.sroa.010.1.i28.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i25.i, i64 %.sroa.010.1.idx.i27.i ; 3 uses
  %.sroa.014.1.idx.i29.i = select i1 %i.jw, i64 0, i64 8
  %.sroa.014.1.i30.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i24.i, i64 %.sroa.014.1.idx.i29.i ; 3 uses
  %.sink.i31.i = load ptr, ptr %.sink.in.i26.i, align 8, !tbaa !38
  store ptr %.sink.i31.i, ptr %.020.i23.i, align 8, !tbaa !38
  %i.jx = getelementptr inbounds nuw i8, ptr %.020.i23.i, i64 8 ; 2 uses
  %i.jy = icmp ne ptr %.sroa.014.1.i30.i, %i.jn
  %i.jz = icmp ne ptr %.sroa.010.1.i28.i, %1
  %or.cond.i32.i = select i1 %i.jy, i1 %i.jz, i1 false
  br i1 %or.cond.i32.i, label %.lr.ph.i22.i, label %.critedge.i17.i, !llvm.loop !348

.critedge.i17.i:                                  ; preds = %.lr.ph.i22.i, %._crit_edge.i23
  %.sroa.010.0.lcssa.i18.i = phi ptr [ %i.jn, %._crit_edge.i23 ], [ %.sroa.010.1.i28.i, %.lr.ph.i22.i ] ; 3 uses
  %.sroa.014.0.lcssa.i19.i = phi ptr [ %.sroa.041.0.lcssa.i, %._crit_edge.i23 ], [ %.sroa.014.1.i30.i, %.lr.ph.i22.i ] ; 3 uses
  %.0.lcssa.i20.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i23 ], [ %i.jx, %.lr.ph.i22.i ] ; 3 uses
  %i.ka = ptrtoint ptr %i.jn to i64
  %i.kb = ptrtoint ptr %.sroa.014.0.lcssa.i19.i to i64
  %i.kc = sub i64 %i.ka, %i.kb                    ; 4 uses
  %i.kd = icmp sgt i64 %i.kc, 8
  br i1 %i.kd, label %bb.ar, label %bb.as, !prof !75

bb.ar:                                            ; preds = %.critedge.i17.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i20.i, ptr align 8 %.sroa.014.0.lcssa.i19.i, i64 %i.kc, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i21.i

bb.as:                                            ; preds = %.critedge.i17.i
  %i.ke = icmp eq i64 %i.kc, 8
  br i1 %i.ke, label %bb.at, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i21.i

bb.at:                                            ; preds = %bb.as
  %i.kf = load ptr, ptr %.sroa.014.0.lcssa.i19.i, align 8, !tbaa !38
  store ptr %i.kf, ptr %.0.lcssa.i20.i, align 8, !tbaa !38
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i21.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i21.i: ; preds = %bb.at, %bb.as, %bb.ar
  %i.kg = getelementptr inbounds i8, ptr %.0.lcssa.i20.i, i64 %i.kc ; 2 uses
  %i.kh = ptrtoint ptr %.sroa.010.0.lcssa.i18.i to i64
  %i.ki = sub i64 %i.a, %i.kh                     ; 3 uses
  %i.kj = icmp sgt i64 %i.ki, 8
  br i1 %i.kj, label %bb.au, label %bb.av, !prof !75

bb.au:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i21.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.kg, ptr align 8 %.sroa.010.0.lcssa.i18.i, i64 %i.ki, i1 false)
  br label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEEvT_SE_T0_T1_T2_.exit"

bb.av:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i21.i
  %i.kk = icmp eq i64 %i.ki, 8
  br i1 %i.kk, label %bb.aw, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEEvT_SE_T0_T1_T2_.exit"

bb.aw:                                            ; preds = %bb.av
  %i.kl = load ptr, ptr %.sroa.010.0.lcssa.i18.i, align 8, !tbaa !38
  store ptr %i.kl, ptr %i.kg, align 8, !tbaa !38
  br label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEEvT_SE_T0_T1_T2_.exit"

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEEvT_SE_T0_T1_T2_.exit": ; preds = %bb.au, %bb.av, %bb.aw
  %i.km = shl nsw i64 %.069, 2                    ; 5 uses
  %.not53.i = icmp slt i64 %i.d, %i.km
  br i1 %.not53.i, label %._crit_edge.i31, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEEvT_SE_T0_T1_T2_.exit"
  %.idx.i25 = shl i64 %.069, 4                    ; 8 uses
  %.idx47.i = shl nsw i64 %.069, 5                ; 2 uses
  %.not48.i = icmp eq i64 %.idx.i25, %.idx47.i
  br i1 %.not48.i, label %._crit_edge.i.us.preheader.i, label %.lr.ph.i.preheader.i26

._crit_edge.i.us.preheader.i:                     ; preds = %.lr.ph.i24
  %i.kn = icmp sgt i64 %.069, 0
  %i.ko = icmp sgt i64 %.idx.i25, 8
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %"_ZSt12__move_mergeIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.us.i", %._crit_edge.i.us.preheader.i
  %.sroa.022.055.us.i = phi ptr [ %i.kr, %"_ZSt12__move_mergeIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.us.i" ], [ %0, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %.054.us.i = phi ptr [ %i.kp, %"_ZSt12__move_mergeIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.us.i" ], [ %2, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %i.kp = getelementptr inbounds i8, ptr %.054.us.i, i64 %.idx.i25 ; 4 uses
  br i1 %i.kn, label %bb.ax, label %_ZSt4moveIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.us.i, !prof !75

bb.ax:                                            ; preds = %._crit_edge.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.022.055.us.i, ptr align 8 %.054.us.i, i64 %.idx.i25, i1 false)
  br label %_ZSt4moveIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.us.i

_ZSt4moveIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.us.i: ; preds = %._crit_edge.i.us.i, %bb.ax
  %i.kq = getelementptr inbounds i8, ptr %.sroa.022.055.us.i, i64 %.idx.i25 ; 2 uses
  br i1 %i.ko, label %bb.ay, label %"_ZSt12__move_mergeIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.us.i", !prof !178

bb.ay:                                            ; preds = %_ZSt4moveIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kq, ptr nonnull align 8 %i.kp, i64 %.idx.i25, i1 false)
  br label %"_ZSt12__move_mergeIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.us.i"

"_ZSt12__move_mergeIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.us.i": ; preds = %_ZSt4moveIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.us.i, %bb.ay
  %i.kr = getelementptr inbounds i8, ptr %i.kq, i64 %.idx.i25 ; 2 uses
  %i.ks = ptrtoint ptr %i.kp to i64
  %i.kt = sub i64 %i.hq, %i.ks
  %i.ku = ashr exact i64 %i.kt, 3                 ; 2 uses
  %.not.us.i35 = icmp slt i64 %i.ku, %i.km
  br i1 %.not.us.i35, label %._crit_edge.i31, label %._crit_edge.i.us.i, !llvm.loop !349

.lr.ph.i.preheader.i26:                           ; preds = %.lr.ph.i24, %"_ZSt12__move_mergeIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i"
  %.sroa.022.055.i = phi ptr [ %i.lt, %"_ZSt12__move_mergeIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i" ], [ %0, %.lr.ph.i24 ]
  %.054.i = phi ptr [ %i.kw, %"_ZSt12__move_mergeIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i" ], [ %2, %.lr.ph.i24 ] ; 3 uses
  %i.kv = getelementptr inbounds i8, ptr %.054.i, i64 %.idx.i25 ; 3 uses
  %i.kw = getelementptr inbounds i8, ptr %.054.i, i64 %.idx47.i ; 4 uses
  br label %.lr.ph.i.i27

.lr.ph.i.i27:                                     ; preds = %.lr.ph.i.i27, %.lr.ph.i.preheader.i26
  %.023.i.i = phi ptr [ %.1.i.i, %.lr.ph.i.i27 ], [ %.054.i, %.lr.ph.i.preheader.i26 ] ; 3 uses
  %.01622.i.i = phi ptr [ %.117.i.i, %.lr.ph.i.i27 ], [ %i.kv, %.lr.ph.i.preheader.i26 ] ; 3 uses
  %.sroa.0.021.i.i = phi ptr [ %i.lc, %.lr.ph.i.i27 ], [ %.sroa.022.055.i, %.lr.ph.i.preheader.i26 ] ; 2 uses
  %.016.val.i.i = load ptr, ptr %.01622.i.i, align 8, !tbaa !38 ; 2 uses
  %.0.val.i.i = load ptr, ptr %.023.i.i, align 8, !tbaa !38
  %i.kx = load ptr, ptr %.016.val.i.i, align 8, !tbaa !137
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 64
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = tail call noundef i32 %i.kz(ptr noundef nonnull align 8 dereferenceable(72) %.016.val.i.i, ptr noundef %.0.val.i.i), !inline_history !350
  %i.lb = icmp slt i32 %i.la, 0                   ; 3 uses
  %.sink.in.i.i28 = select i1 %i.lb, ptr %.01622.i.i, ptr %.023.i.i
  %.117.idx.i.i = select i1 %i.lb, i64 8, i64 0
  %.117.i.i = getelementptr inbounds nuw i8, ptr %.01622.i.i, i64 %.117.idx.i.i ; 5 uses
  %.1.idx.i.i = select i1 %i.lb, i64 0, i64 8
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 %.1.idx.i.i ; 5 uses
  %.sink.i.i29 = load ptr, ptr %.sink.in.i.i28, align 8, !tbaa !38
  store ptr %.sink.i.i29, ptr %.sroa.0.021.i.i, align 8, !tbaa !38
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i, i64 8 ; 4 uses
  %i.ld = icmp ne ptr %.1.i.i, %i.kv
  %i.le = icmp ne ptr %.117.i.i, %i.kw
  %i.lf = select i1 %i.ld, i1 %i.le, i1 false
  br i1 %i.lf, label %.lr.ph.i.i27, label %._crit_edge.i.loopexit.i, !llvm.loop !351

._crit_edge.i.loopexit.i:                         ; preds = %.lr.ph.i.i27
  %i.lg = ptrtoint ptr %i.kv to i64
  %i.lh = ptrtoint ptr %.1.i.i to i64
  %i.li = sub i64 %i.lg, %i.lh                    ; 4 uses
  %i.lj = icmp sgt i64 %i.li, 8
  br i1 %i.lj, label %bb.az, label %bb.ba, !prof !75

bb.az:                                            ; preds = %._crit_edge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lc, ptr nonnull align 8 %.1.i.i, i64 %i.li, i1 false)
  br label %_ZSt4moveIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i

bb.ba:                                            ; preds = %._crit_edge.i.loopexit.i
  %i.lk = icmp eq i64 %i.li, 8
  br i1 %i.lk, label %bb.bb, label %_ZSt4moveIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.ll = load ptr, ptr %.1.i.i, align 8, !tbaa !38
  store ptr %i.ll, ptr %i.lc, align 8, !tbaa !38
  br label %_ZSt4moveIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i

_ZSt4moveIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i: ; preds = %bb.bb, %bb.ba, %bb.az
  %i.lm = getelementptr inbounds i8, ptr %i.lc, i64 %i.li ; 3 uses
  %i.ln = ptrtoint ptr %i.kw to i64               ; 2 uses
  %i.lo = ptrtoint ptr %.117.i.i to i64
  %i.lp = sub i64 %i.ln, %i.lo                    ; 4 uses
  %i.lq = icmp sgt i64 %i.lp, 8
  br i1 %i.lq, label %bb.bc, label %bb.bd, !prof !75

bb.bc:                                            ; preds = %_ZSt4moveIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lm, ptr nonnull align 8 %.117.i.i, i64 %i.lp, i1 false)
  br label %"_ZSt12__move_mergeIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i"

bb.bd:                                            ; preds = %_ZSt4moveIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i
  %i.lr = icmp eq i64 %i.lp, 8
  br i1 %i.lr, label %bb.be, label %"_ZSt12__move_mergeIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i"

bb.be:                                            ; preds = %bb.bd
  %i.ls = load ptr, ptr %.117.i.i, align 8, !tbaa !38
  store ptr %i.ls, ptr %i.lm, align 8, !tbaa !38
  br label %"_ZSt12__move_mergeIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i"

"_ZSt12__move_mergeIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i": ; preds = %bb.be, %bb.bd, %bb.bc
  %i.lt = getelementptr inbounds i8, ptr %i.lm, i64 %i.lp ; 2 uses
  %i.lu = sub i64 %i.hq, %i.ln
  %i.lv = ashr exact i64 %i.lu, 3                 ; 2 uses
  %.not.i30 = icmp slt i64 %i.lv, %i.km
  br i1 %.not.i30, label %._crit_edge.i31, label %.lr.ph.i.preheader.i26, !llvm.loop !349

._crit_edge.i31:                                  ; preds = %"_ZSt12__move_mergeIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i", %"_ZSt12__move_mergeIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.us.i", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEEvT_SE_T0_T1_T2_.exit"
  %.0.lcssa.i32 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEEvT_SE_T0_T1_T2_.exit" ], [ %i.kp, %"_ZSt12__move_mergeIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.us.i" ], [ %i.kw, %"_ZSt12__move_mergeIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i" ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPP11V3GraphEdgeSt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEEvT_SE_T0_T1_T2_.exit" ], [ %i.kr, %"_ZSt12__move_mergeIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.us.i" ], [ %i.lt, %"_ZSt12__move_mergeIPP11V3GraphEdgeN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN7V3Graph9sortEdgesEvE3$_0EEET0_T_SF_SF_SF_SE_T1_.exit.i" ] ; 2 uses
end_hunk_1
