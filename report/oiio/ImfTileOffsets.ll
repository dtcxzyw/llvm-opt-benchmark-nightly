Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/ImfTileOffsets?download=true
inline.NumInlined: 552
inline.NumDeleted: 225
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK27OpenImageIO_v3_1_Imf__3_3_511TileOffsets12getTileOrderEPiS1_S1_S1_:bb.a
  %.neg23.neg.i45.i.i.i = sub nsw i64 0, %.neg23.i44.i.i.i
  %i.dv = getelementptr inbounds [24 x i8], ptr %i.du, i64 %.neg23.neg.i45.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dv, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0107.0, i64 %i.ds, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.dw = icmp eq i64 %i.ds, 24
  br i1 %i.dw, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.dx = getelementptr inbounds nuw i8, ptr %.pn18.i28.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.0107.0, i64 24, i1 false), !tbaa.struct !46
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0107.0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.i26.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i22.i.i.i)
  %.sroa.5.0..val3.sroa_idx.i.i31.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i28.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i22.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..val3.sroa_idx.i.i31.i.i.i, i64 16, i1 false), !tbaa.struct !112
  %.val2.i10.i.i32.i.i.i = load i64, ptr %.pn18.i28.i.i.i, align 8, !tbaa !48
  %i.dy = icmp ult i64 %.val2.i.i29.i.i.i, %.val2.i10.i.i32.i.i.i
  br i1 %i.dy, label %.lr.ph.i.i38.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33.i.i.i

.lr.ph.i.i38.i.i.i:                               ; preds = %bb.n, %.lr.ph.i.i38.i.i.i
  %.sroa.0.012.i.i39.i.i.i = phi ptr [ %.sroa.0.0.i.i41.i.i.i, %.lr.ph.i.i38.i.i.i ], [ %.pn18.i28.i.i.i, %bb.n ] ; 4 uses
  %.sroa.08.011.i.i40.i.i.i = phi ptr [ %.sroa.0.012.i.i39.i.i.i, %.lr.ph.i.i38.i.i.i ], [ %.sroa.0.019.i27.i.i.i, %bb.n ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.011.i.i40.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.012.i.i39.i.i.i, i64 24, i1 false), !tbaa.struct !46
  %.sroa.0.0.i.i41.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i39.i.i.i, i64 -24 ; 2 uses
  %.val2.i.i.i42.i.i.i = load i64, ptr %.sroa.0.0.i.i41.i.i.i, align 8, !tbaa !48
  %i.dz = icmp ult i64 %.val2.i.i29.i.i.i, %.val2.i.i.i42.i.i.i
  br i1 %i.dz, label %.lr.ph.i.i38.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33.i.i.i, !llvm.loop !96

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33.i.i.i: ; preds = %.lr.ph.i.i38.i.i.i, %bb.n
  %.sroa.08.0.lcssa.i.i34.i.i.i = phi ptr [ %.sroa.0.019.i27.i.i.i, %bb.n ], [ %.sroa.0.012.i.i39.i.i.i, %.lr.ph.i.i38.i.i.i ] ; 2 uses
  store i64 %.val2.i.i29.i.i.i, ptr %.sroa.08.0.lcssa.i.i34.i.i.i, align 8, !tbaa !36
  %.sroa.5.0..val.sroa_idx.i.i35.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i34.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..val.sroa_idx.i.i35.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i22.i.i.i, i64 16, i1 false), !tbaa.struct !112
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i22.i.i.i)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i
  %.sroa.0.0.i36.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i27.i.i.i, i64 24 ; 2 uses
  %.not.i37.i.i.i = icmp eq ptr %.sroa.0.0.i36.i.i.i, %.0.i.i.i.i.i
  br i1 %.not.i37.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i26.i.i.i, !llvm.loop !97

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13.i.i.i, %._crit_edge134, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i.i.i, %bb.i
  br i1 %.not.i.i.i.i189, label %._crit_edge137, label %.lr.ph136.preheader

.lr.ph136.preheader:                              ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %xtraiter = and i64 %.069.lcssa185188, 1
  %i.ea = icmp eq i64 %.069.lcssa185188, 1
  br i1 %i.ea, label %.lr.ph136.epil.preheader, label %.lr.ph136.preheader.new

.lr.ph136.preheader.new:                          ; preds = %.lr.ph136.preheader
  %unroll_iter = and i64 %.069.lcssa185188, 576460752303423486
  br label %.lr.ph136

.preheader113:                                    ; preds = %.preheader113.preheader, %._crit_edge126
  %indvars.iv165 = phi i64 [ 0, %.preheader113.preheader ], [ %indvars.iv.next166, %._crit_edge126 ] ; 3 uses
  %.175128 = phi i64 [ %.074132, %.preheader113.preheader ], [ %.2.lcssa, %._crit_edge126 ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.ct, i64 %indvars.iv165 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !34 ; 2 uses
  %i.ee = load ptr, ptr %i.eb, align 8, !tbaa !31 ; 3 uses
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = ashr exact i64 %i.eh, 3
  %.not147 = icmp eq ptr %i.ed, %i.ee
  br i1 %.not147, label %._crit_edge126, label %.lr.ph125.preheader

.lr.ph125.preheader:                              ; preds = %.preheader113
  %i.ej = trunc nuw i64 %indvars.iv165 to i32
  br label %.lr.ph125

._crit_edge130:                                   ; preds = %._crit_edge126, %.preheader114
  %.175.lcssa = phi i64 [ %.074132, %.preheader114 ], [ %.2.lcssa, %._crit_edge126 ]
  %indvars.iv.next170 = add i64 %indvars.iv169, 1 ; 2 uses
  %i.ek = and i64 %indvars.iv.next170, 4294967295
  %i.el = icmp ugt i64 %i.cp, %i.ek
  br i1 %i.el, label %.preheader114, label %._crit_edge134, !llvm.loop !99

._crit_edge126:                                   ; preds = %.lr.ph125, %.preheader113
  %.2.lcssa = phi i64 [ %.175128, %.preheader113 ], [ %i.ev, %.lr.ph125 ] ; 2 uses
  %indvars.iv.next166 = add i64 %indvars.iv165, 1 ; 2 uses
  %i.em = and i64 %indvars.iv.next166, 4294967295
  %i.en = icmp ugt i64 %i.cx, %i.em
  br i1 %i.en, label %.preheader113, label %._crit_edge130, !llvm.loop !100

.lr.ph125:                                        ; preds = %.lr.ph125.preheader, %.lr.ph125
  %indvars.iv161 = phi i64 [ 0, %.lr.ph125.preheader ], [ %indvars.iv.next162, %.lr.ph125 ] ; 3 uses
  %.2123 = phi i64 [ %.175128, %.lr.ph125.preheader ], [ %i.ev, %.lr.ph125 ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv161
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !36
  %i.eq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %.2123 ; 4 uses
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !48
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = trunc nuw i64 %indvars.iv161 to i32
  store i32 %i.es, ptr %i.er, align 8, !tbaa !113
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  store i32 %i.ej, ptr %i.et, align 4, !tbaa !114
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store i32 %i.cy, ptr %i.eu, align 8, !tbaa !115
  %i.ev = add i64 %.2123, 1                       ; 2 uses
  %indvars.iv.next162 = add i64 %indvars.iv161, 1 ; 2 uses
  %i.ew = and i64 %indvars.iv.next162, 4294967295
  %i.ex = icmp ugt i64 %i.ei, %i.ew
  br i1 %i.ex, label %.lr.ph125, label %._crit_edge126, !llvm.loop !101

._crit_edge137.loopexit.unr-lcssa:                ; preds = %.lr.ph136
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge137, label %.lr.ph136.epil.preheader

.lr.ph136.epil.preheader:                         ; preds = %._crit_edge137.loopexit.unr-lcssa, %.lr.ph136.preheader
  %.068135.epil.init = phi i64 [ 0, %.lr.ph136.preheader ], [ %i.jg, %._crit_edge137.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod243 = trunc i64 %.069.lcssa185188 to i1
  tail call void @llvm.assume(i1 %lcmp.mod243)
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %.068135.epil.init ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !113
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.068135.epil.init
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !12
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !114
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.068135.epil.init
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !12
  br label %._crit_edge137

._crit_edge137:                                   ; preds = %.lr.ph136.epil.preheader, %._crit_edge137.loopexit.unr-lcssa, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %i.ff = load i32, ptr %0, align 8, !tbaa !21
  switch i32 %i.ff, label %.loopexit [
    i32 0, label %.preheader
    i32 1, label %.preheader108
    i32 2, label %.preheader110
    i32 3, label %bb.q
  ]

.preheader110:                                    ; preds = %._crit_edge137
  br i1 %.not.i.i.i.i189, label %.loopexit, label %.lr.ph139

.lr.ph139:                                        ; preds = %.preheader110
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 9 uses
  %min.iters.check208 = icmp ult i64 %.069.lcssa185188, 5
  br i1 %min.iters.check208, label %scalar.ph207.preheader, label %vector.memcheck

scalar.ph207.preheader:                           ; preds = %vector.body218, %vector.memcheck, %.lr.ph139
  %.0138.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph139 ], [ %n.vec217, %vector.body218 ] ; 7 uses
  %i.fh = sub i64 %.069.lcssa185188, %.0138.ph
  %.neg = add i64 %.0138.ph, 1
  %xtraiter244.a = and i64 %i.fh, 1
  %lcmp.mod245.not.a = icmp eq i64 %xtraiter244.a, 0
  br i1 %lcmp.mod245.not.a, label %scalar.ph207.prol.loopexit, label %scalar.ph207.prol

scalar.ph207.prol:                                ; preds = %scalar.ph207.preheader
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %.0138.ph
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !115 ; 2 uses
  %i.fl = load i32, ptr %i.fg, align 4, !tbaa !22
  %i.fm = srem i32 %i.fk, %i.fl
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0138.ph
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !12
  %i.fo = load i32, ptr %i.fg, align 4, !tbaa !22
  %i.fp = sdiv i32 %i.fk, %i.fo
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0138.ph
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !12
  %i.fr = add nuw nsw i64 %.0138.ph, 1
  br label %scalar.ph207.prol.loopexit

scalar.ph207.prol.loopexit:                       ; preds = %scalar.ph207.prol, %scalar.ph207.preheader
  %.0138.unr = phi i64 [ %.0138.ph, %scalar.ph207.preheader ], [ %i.fr, %scalar.ph207.prol ]
  %i.fs = icmp eq i64 %.069.lcssa185188, %.neg
  br i1 %i.fs, label %.loopexit.thread, label %scalar.ph207

vector.memcheck:                                  ; preds = %.lr.ph139
  %i.ft = shl nuw nsw i64 %.069.lcssa185188, 2    ; 2 uses
  %i.fu = getelementptr i8, ptr %3, i64 %i.ft     ; 2 uses
  %i.fv = getelementptr i8, ptr %4, i64 %i.ft     ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %bound0 = icmp ult ptr %3, %i.fv
  %bound1 = icmp ult ptr %4, %i.fu
  %found.conflict = and i1 %bound0, %bound1
  %bound0209 = icmp ult ptr %3, %i.fw
  %bound1210 = icmp ult ptr %i.fg, %i.fu
  %found.conflict211 = and i1 %bound0209, %bound1210
  %conflict.rdx = or i1 %found.conflict, %found.conflict211
  %bound0212 = icmp ult ptr %4, %i.fw
  %bound1213 = icmp ult ptr %i.fg, %i.fv
  %found.conflict214 = and i1 %bound0212, %bound1213
  %conflict.rdx215 = or i1 %conflict.rdx, %found.conflict214
  br i1 %conflict.rdx215, label %scalar.ph207.preheader, label %vector.ph216

vector.ph216:                                     ; preds = %vector.memcheck
  %i.fx = and i64 %.069.lcssa185188, 3            ; 2 uses
  %i.fy = icmp eq i64 %i.fx, 0
  %i.fz = select i1 %i.fy, i64 4, i64 %i.fx
  %n.vec217 = sub nsw i64 %.069.lcssa185188, %i.fz ; 2 uses
  %7 = load i32, ptr %i.fg, align 4, !tbaa !22, !alias.scope !116 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %7, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert220 = insertelement <4 x i32> poison, i32 %7, i64 0
  %broadcast.splat221 = shufflevector <4 x i32> %broadcast.splatinsert220, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph216
  %index219 = phi i64 [ 0, %vector.ph216 ], [ %index.next222, %vector.body218 ] ; 7 uses
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %index219
  %i.gb = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %index219
  %i.gc = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %index219
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %index219
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 40
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 88
  %i.gi = load i32, ptr %i.ge, align 8, !tbaa !115
  %i.gj = load i32, ptr %i.gf, align 8, !tbaa !115
  %i.gk = load i32, ptr %i.gg, align 8, !tbaa !115
  %i.gl = load i32, ptr %i.gh, align 8, !tbaa !115
  %i.gm = insertelement <4 x i32> poison, i32 %i.gi, i64 0
  %i.gn = insertelement <4 x i32> %i.gm, i32 %i.gj, i64 1
  %i.go = insertelement <4 x i32> %i.gn, i32 %i.gk, i64 2
  %i.gp = insertelement <4 x i32> %i.go, i32 %i.gl, i64 3 ; 2 uses
  %8 = srem <4 x i32> %i.gp, %broadcast.splat
  %9 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index219
  store <4 x i32> %8, ptr %9, align 4, !tbaa !12, !alias.scope !117, !noalias !118
  %10 = sdiv <4 x i32> %i.gp, %broadcast.splat221
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index219
  store <4 x i32> %10, ptr %i.gq, align 4, !tbaa !12, !alias.scope !119, !noalias !116
  %index.next222 = add nuw i64 %index219, 4       ; 2 uses
  %i.gr = icmp eq i64 %index.next222, %n.vec217
  br i1 %i.gr, label %scalar.ph207.preheader, label %vector.body218, !llvm.loop !106

.preheader108:                                    ; preds = %._crit_edge137
  br i1 %.not.i.i.i.i189, label %.loopexit, label %.lr.ph141.preheader

.lr.ph141.preheader:                              ; preds = %.preheader108
  %min.iters.check227 = icmp ult i64 %.069.lcssa185188, 9
  %i.gs = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.gs, -32
  %or.cond = or i1 %min.iters.check227, %diff.check
  br i1 %or.cond, label %.lr.ph141.preheader236, label %vector.ph229

.lr.ph141.preheader236:                           ; preds = %vector.body231, %.lr.ph141.preheader
  %.066140.ph = phi i64 [ 0, %.lr.ph141.preheader ], [ %n.vec230, %vector.body231 ] ; 7 uses
  %i.gt = sub i64 %.069.lcssa185188, %.066140.ph
  %.neg248 = add i64 %.066140.ph, 1
  %xtraiter246 = and i64 %i.gt, 1
  %lcmp.mod247.not = icmp eq i64 %xtraiter246, 0
  br i1 %lcmp.mod247.not, label %.lr.ph141.prol.loopexit, label %.lr.ph141.prol

.lr.ph141.prol:                                   ; preds = %.lr.ph141.preheader236
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %.066140.ph
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !115 ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.066140.ph
  store i32 %i.gw, ptr %i.gx, align 4, !tbaa !12
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.066140.ph
  store i32 %i.gw, ptr %i.gy, align 4, !tbaa !12
  %i.gz = add nuw nsw i64 %.066140.ph, 1
  br label %.lr.ph141.prol.loopexit

.lr.ph141.prol.loopexit:                          ; preds = %.lr.ph141.prol, %.lr.ph141.preheader236
  %.066140.unr = phi i64 [ %.066140.ph, %.lr.ph141.preheader236 ], [ %i.gz, %.lr.ph141.prol ]
  %i.ha = icmp eq i64 %.069.lcssa185188, %.neg248
  br i1 %i.ha, label %.loopexit.thread, label %.lr.ph141

vector.ph229:                                     ; preds = %.lr.ph141.preheader
  %i.hb = and i64 %.069.lcssa185188, 7            ; 2 uses
  %i.hc = icmp eq i64 %i.hb, 0
  %i.hd = select i1 %i.hc, i64 8, i64 %i.hb
  %n.vec230 = sub nsw i64 %.069.lcssa185188, %i.hd ; 2 uses
  br label %vector.body231

vector.body231:                                   ; preds = %vector.body231, %vector.ph229
  %index232 = phi i64 [ 0, %vector.ph229 ], [ %index.next233, %vector.body231 ] ; 11 uses
  %i.he = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %index232
  %i.hf = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %index232
  %i.hg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %index232
  %i.hh = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %index232
  %i.hi = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %index232
  %i.hj = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %index232
  %i.hk = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %index232
  %i.hl = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %index232
  %i.hm = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hg, i64 64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 88
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hi, i64 112
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 136
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hk, i64 160
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hl, i64 184
  %i.hu = load i32, ptr %i.hm, align 8, !tbaa !115
  %i.hv = load i32, ptr %i.hn, align 8, !tbaa !115
  %i.hw = load i32, ptr %i.ho, align 8, !tbaa !115
  %i.hx = load i32, ptr %i.hp, align 8, !tbaa !115
  %i.hy = insertelement <4 x i32> poison, i32 %i.hu, i64 0
  %i.hz = insertelement <4 x i32> %i.hy, i32 %i.hv, i64 1
  %i.ia = insertelement <4 x i32> %i.hz, i32 %i.hw, i64 2
  %i.ib = insertelement <4 x i32> %i.ia, i32 %i.hx, i64 3 ; 2 uses
  %i.ic = load i32, ptr %i.hq, align 8, !tbaa !115
  %i.id = load i32, ptr %i.hr, align 8, !tbaa !115
  %i.ie = load i32, ptr %i.hs, align 8, !tbaa !115
  %i.if = load i32, ptr %i.ht, align 8, !tbaa !115
  %i.ig = insertelement <4 x i32> poison, i32 %i.ic, i64 0
  %i.ih = insertelement <4 x i32> %i.ig, i32 %i.id, i64 1
  %i.ii = insertelement <4 x i32> %i.ih, i32 %i.ie, i64 2
  %i.ij = insertelement <4 x i32> %i.ii, i32 %i.if, i64 3 ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index232 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store <4 x i32> %i.ib, ptr %i.ik, align 4, !tbaa !12
  store <4 x i32> %i.ij, ptr %i.il, align 4, !tbaa !12
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index232 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store <4 x i32> %i.ib, ptr %i.im, align 4, !tbaa !12
  store <4 x i32> %i.ij, ptr %i.in, align 4, !tbaa !12
  %index.next233 = add nuw i64 %index232, 8       ; 2 uses
  %i.io = icmp eq i64 %index.next233, %n.vec230
  br i1 %i.io, label %.lr.ph141.preheader236, label %vector.body231, !llvm.loop !107

.preheader:                                       ; preds = %._crit_edge137
  br i1 %.not.i.i.i.i189, label %.loopexit, label %.lr.ph143.preheader

.lr.ph143.preheader:                              ; preds = %.preheader
  %i.ip = shl nuw nsw i64 %.069.lcssa185188, 2    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %i.ip, i1 false), !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 %i.ip, i1 false), !tbaa !12
  br label %.loopexit

bb.p:                                             ; preds = %bb.r
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.lr.ph136:                                        ; preds = %.lr.ph136, %.lr.ph136.preheader.new
  %.068135 = phi i64 [ 0, %.lr.ph136.preheader.new ], [ %i.jg, %.lr.ph136 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph136.preheader.new ], [ %niter.next.1, %.lr.ph136 ]
  %i.ir = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %.068135 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load i32, ptr %i.is, align 8, !tbaa !113
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.068135
  store i32 %i.it, ptr %i.iu, align 4, !tbaa !12
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 12
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !114
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.068135
  store i32 %i.iw, ptr %i.ix, align 4, !tbaa !12
  %i.iy = or disjoint i64 %.068135, 1             ; 3 uses
  %i.iz = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %i.iy ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !113
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.iy
  store i32 %i.jb, ptr %i.jc, align 4, !tbaa !12
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 12
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !114
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.iy
  store i32 %i.je, ptr %i.jf, align 4, !tbaa !12
  %i.jg = add nuw nsw i64 %.068135, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge137.loopexit.unr-lcssa, label %.lr.ph136, !llvm.loop !108

.lr.ph141:                                        ; preds = %.lr.ph141.prol.loopexit, %.lr.ph141
  %.066140 = phi i64 [ %i.js, %.lr.ph141 ], [ %.066140.unr, %.lr.ph141.prol.loopexit ] ; 5 uses
  %i.jh = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %.066140
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !115 ; 2 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.066140
  store i32 %i.jj, ptr %i.jk, align 4, !tbaa !12
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.066140
  store i32 %i.jj, ptr %i.jl, align 4, !tbaa !12
  %i.jm = add nuw nsw i64 %.066140, 1             ; 3 uses
  %i.jn = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !115 ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.jm
  store i32 %i.jp, ptr %i.jq, align 4, !tbaa !12
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.jm
  store i32 %i.jp, ptr %i.jr, align 4, !tbaa !12
  %i.js = add nuw nsw i64 %.066140, 2             ; 2 uses
  %exitcond174.not.1 = icmp eq i64 %i.js, %.069.lcssa185188
  br i1 %exitcond174.not.1, label %.loopexit.thread, label %.lr.ph141, !llvm.loop !109

scalar.ph207:                                     ; preds = %scalar.ph207.prol.loopexit, %scalar.ph207
  %.0138 = phi i64 [ %i.km, %scalar.ph207 ], [ %.0138.unr, %scalar.ph207.prol.loopexit ] ; 5 uses
  %i.jt = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %.0138
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !115 ; 2 uses
  %i.jw = load i32, ptr %i.fg, align 4, !tbaa !22
  %i.jx = srem i32 %i.jv, %i.jw
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0138
  store i32 %i.jx, ptr %i.jy, align 4, !tbaa !12
  %i.jz = load i32, ptr %i.fg, align 4, !tbaa !22
  %i.ka = sdiv i32 %i.jv, %i.jz
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0138
  store i32 %i.ka, ptr %i.kb, align 4, !tbaa !12
  %i.kc = add nuw nsw i64 %.0138, 1               ; 3 uses
  %i.kd = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kf = load i32, ptr %i.ke, align 8, !tbaa !115 ; 2 uses
  %i.kg = load i32, ptr %i.fg, align 4, !tbaa !22
  %i.kh = srem i32 %i.kf, %i.kg
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.kc
  store i32 %i.kh, ptr %i.ki, align 4, !tbaa !12
  %i.kj = load i32, ptr %i.fg, align 4, !tbaa !22
  %i.kk = sdiv i32 %i.kf, %i.kj
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.kc
  store i32 %i.kk, ptr %i.kl, align 4, !tbaa !12
  %i.km = add nuw nsw i64 %.0138, 2               ; 2 uses
  %exitcond173.not.1 = icmp eq i64 %i.km, %.069.lcssa185188
  br i1 %exitcond173.not.1, label %.loopexit.thread, label %scalar.ph207, !llvm.loop !110

bb.q:                                             ; preds = %._crit_edge137
  %i.kn = tail call ptr @__cxa_allocate_exception(i64 72) #20 ; 3 uses
  invoke void @_ZN7Iex_3_38LogicExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.kn, ptr noundef nonnull @.str.5)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_throw(ptr nonnull %i.kn, ptr nonnull @_ZTIN7Iex_3_38LogicExcE, ptr nonnull @_ZN7Iex_3_38LogicExcD1Ev) #19
          to label %bb.v unwind label %bb.p

bb.s:                                             ; preds = %bb.q
  %i.ko = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.kn) #20
  br label %bb.t

.loopexit:                                        ; preds = %.lr.ph143.preheader, %.preheader110, %.preheader108, %.preheader, %._crit_edge137
  %.not.i.i.i = icmp eq ptr %.sroa.0107.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EED2Ev.exit, label %.loopexit.thread
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_:bb.a
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i ], [ %i.by, %bb.t ] ; 9 uses
  %.val2.i.i15.i = load i64, ptr %.sroa.012.1.i.i, align 8, !tbaa !48
  %i.bx = icmp ult i64 %.val2.i.i15.i, %.val3.i.i14.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 24 ; 2 uses
  br i1 %i.bx, label %bb.t, label %.preheader.i.i, !llvm.loop !140

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 6 uses
  %.val3.i10.i.i = load i64, ptr %.sroa.0.1.i.i, align 8, !tbaa !48
  %i.bz = icmp ult i64 %.val3.i.i14.i, %.val3.i10.i.i
  br i1 %i.bz, label %.preheader.i.i, label %bb.u, !llvm.loop !141

bb.u:                                             ; preds = %.preheader.i.i
  %i.ca = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ca, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.1.i.i, i64 24, i1 false), !tbaa.struct !46
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.1.i.i, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i, !llvm.loop !142

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit: ; preds = %bb.u
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1836, i64 noundef %i.bo)
  %i.cb = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cc = sub i64 %i.cb, %i.a                     ; 3 uses
  %i.cd = icmp sgt i64 %i.cc, 384
  br i1 %i.cd, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit, !llvm.loop !135

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i22.i, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { builtin nounwind }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { noreturn }
attributes #20 = { nounwind }

!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !33}
!1 = distinct !{!1, !33}
!2 = distinct !{!2, !33}
!3 = distinct !{!3, !33}
!4 = distinct !{!4, !33}
!5 = distinct !{null, null, null}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_59LevelModeE", !10, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 _ZTSSt6vectorIS_ImSaImEESaIS1_EE", !14, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE12_Vector_implE", !16, i64 0}
!18 = !{!"_ZTSSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE", !17, i64 0}
!19 = !{!"_ZTSSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE", !18, i64 0}
!20 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_511TileOffsetsE", !13, i64 0, !11, i64 4, !11, i64 8, !19, i64 16}
!21 = !{!20, !13, i64 0}
!22 = !{!20, !11, i64 4}
!23 = !{!16, !15, i64 8}
!24 = !{!16, !15, i64 0}
!25 = !{!"p1 _ZTSSt6vectorImSaImEE", !14, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!26, !25, i64 8}
!28 = !{!26, !25, i64 0}
!29 = !{!"p1 long", !14, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!30, !29, i64 0}
!32 = !{!30, !29, i64 16}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!30, !29, i64 8}
!35 = !{!"long", !10, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!26, !25, i64 16}
!38 = !{!29, !29, i64 0}
!39 = !{!16, !15, i64 16}
!40 = !{!"vtable pointer", !9, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!"bool", !10, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{i64 0, i64 8, !36, i64 8, i64 4, !12, i64 12, i64 4, !12, i64 16, i64 4, !12}
!47 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposE", !35, i64 0, !11, i64 8, !11, i64 12, !11, i64 16}
!48 = !{!47, !35, i64 0}
!49 = distinct !{!49, !33}
!50 = distinct !{!50, !33}
!51 = distinct !{!51, !33, !58}
!52 = distinct !{!52, i1 true, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_"}
!53 = distinct !{!53, !52, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!54 = distinct !{!54, !52, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!55 = distinct !{!55, !33}
!56 = distinct !{!56, !33}
!57 = !{!20, !11, i64 8}
!58 = !{!"llvm.loop.unswitch.partial.disable"}
!59 = !{!53}
!60 = !{!54}
!61 = distinct !{!61, !33}
!62 = distinct !{null, null, null}
!63 = distinct !{null, null}
!64 = distinct !{!64, !33}
!65 = distinct !{!65, !33}
!66 = distinct !{!66, !33}
!67 = distinct !{!67, !33}
!68 = distinct !{!68, !33}
!69 = distinct !{!69, !33}
!70 = distinct !{!70, !33}
!71 = !{ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_511TileOffsets19reconstructFromFileERNS_7IStreamEbb}
!72 = distinct !{!72, !33, !44, !45}
!73 = distinct !{!73, !33}
!74 = distinct !{!74, !33, !44}
!75 = distinct !{!75, !33, !44, !45}
!76 = distinct !{!76, !80}
!77 = distinct !{!77, !33}
!78 = distinct !{!78, !33}
!79 = distinct !{!79, !33, !44}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = distinct !{!81, !33}
!82 = distinct !{!82, !33}
!83 = distinct !{null, null, null}
!84 = distinct !{!84, !33}
!85 = !{!"p1 omnipotent char", !14, i64 0}
!86 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !85, i64 0}
!87 = !{!86, !85, i64 0}
!88 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !86, i64 0, !35, i64 8, !10, i64 16}
!89 = !{!88, !85, i64 0}
!90 = !{!10, !10, i64 0}
!91 = !{!88, !35, i64 8}
!92 = distinct !{!92, !33, !44, !45}
!93 = distinct !{!93, !33}
!94 = distinct !{!94, !33}
!95 = distinct !{!95, !33, !44}
!96 = distinct !{!96, !33}
!97 = distinct !{!97, !33}
!98 = distinct !{!98, !33}
!99 = distinct !{!99, !33}
!100 = distinct !{!100, !33}
!101 = distinct !{!101, !33}
!102 = distinct !{!102, i1 false, !"LVerDomain"}
!103 = distinct !{!103, !102}
!104 = distinct !{!104, !102}
!105 = distinct !{!105, !102}
!106 = distinct !{!106, !33, !44, !45}
!107 = distinct !{!107, !33, !44, !45}
!108 = distinct !{!108, !33}
!109 = distinct !{!109, !33, !44}
!110 = distinct !{!110, !33, !44}
!111 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!112 = !{i64 0, i64 4, !12, i64 4, i64 4, !12, i64 8, i64 4, !12}
!113 = !{!47, !11, i64 8}
!114 = !{!47, !11, i64 12}
!115 = !{!47, !11, i64 16}
!116 = !{!103}
!117 = !{!104}
!118 = !{!105, !103}
!119 = !{!105}
!120 = distinct !{!120, !33}
!121 = distinct !{!121, !33}
!122 = distinct !{!122, !33}
!123 = distinct !{!123, i1 true, !"_ZSt19__relocate_object_aISt6vectorIS0_ImSaImEESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_"}
!124 = distinct !{!124, !123, !"_ZSt19__relocate_object_aISt6vectorIS0_ImSaImEESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!125 = distinct !{!125, !123, !"_ZSt19__relocate_object_aISt6vectorIS0_ImSaImEESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!126 = distinct !{!126, !33}
!127 = !{!124}
!128 = !{!125}
!129 = !{!25, !25, i64 0}
!130 = distinct !{!130, i1 true, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_"}
!131 = distinct !{!131, !130, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!132 = distinct !{!132, !130, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!133 = !{!131}
!134 = !{!132}
!135 = distinct !{!135, !33}
!136 = distinct !{!136, !33}
!137 = distinct !{!137, !33}
!138 = distinct !{!138, !33}
!139 = distinct !{!139, !33}
!140 = distinct !{!140, !33}
!141 = distinct !{!141, !33}
!142 = distinct !{!142, !33}
end_hunk_1
