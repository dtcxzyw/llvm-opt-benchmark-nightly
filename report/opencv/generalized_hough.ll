Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/generalized_hough?download=true
inline.NumInlined: 1470
inline.NumDeleted: 691
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_120GeneralizedHoughBase13filterMinDistEv:bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store <2 x i64> %vec.ind, ptr %i.bs, align 8, !tbaa !100
  store <2 x i64> %step.add, ptr %i.bt, align 8, !tbaa !100
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !190

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader310

.lr.ph.preheader310:                              ; preds = %.lr.ph.preheader, %middle.block
  %.065218.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.not.i.i = icmp eq ptr %i.bm, %.0.i.i.i.i.i.ph
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEN12_GLOBAL__N_119Vec3iGreaterThanIdxEEvT_S9_T0_.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.bv = ptrtoint ptr %.0.i.i.i.i.i.ph to i64
  %i.bw = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = ashr exact i64 %i.bx, 3
  %i.bz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.by, i1 true)
  %i.ca = shl nuw nsw i64 %i.bz, 1
  %i.cb = xor i64 %i.ca, 126
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_T0_T1_(ptr nonnull %i.bm, ptr %.0.i.i.i.i.i.ph, i64 noundef %i.cb, ptr readonly %i.ba)
  %i.cc = icmp sgt i64 %i.bx, 128
  %scevgep.i.i.i = getelementptr i8, ptr %i.bm, i64 8 ; 3 uses
  br i1 %i.cc, label %.lr.ph.i.i.i.i, label %bb.s

.lr.ph.i.i.i.i:                                   ; preds = %bb.n, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i.i
  %.sroa.0.021.i.idx.i.i.i = phi i64 [ %.sroa.0.021.i.add.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 8, %bb.n ] ; 4 uses
  %.pn20.i.i.i.i = phi ptr [ %.sroa.0.021.i.ptr.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ %i.bm, %bb.n ] ; 3 uses
  %.sroa.0.021.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.0.021.i.idx.i.i.i ; 4 uses
  %i.cd = load i64, ptr %.sroa.0.021.i.ptr.i.i.i, align 8, !tbaa !100 ; 2 uses
  %i.ce = load i64, ptr %i.bm, align 8, !tbaa !100 ; 2 uses
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %i.cd
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !106 ; 3 uses
  %i.ch = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %i.ce
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !106
  %i.cj = icmp sgt i32 %i.cg, %i.ci
  br i1 %i.cj, label %bb.o, label %bb.r

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ck = icmp samesign ugt i64 %.sroa.0.021.i.idx.i.i.i, 8
  br i1 %i.ck, label %bb.p, label %bb.q, !prof !207

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.bm, i64 %.sroa.0.021.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i, i64 8
  store i64 %i.ce, ptr %i.cl, align 8, !tbaa !100
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cm = load i64, ptr %.pn20.i.i.i.i, align 8, !tbaa !100 ; 2 uses
  %i.cn = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !106
  %i.cp = icmp sgt i32 %i.cg, %i.co
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i109, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

.lr.ph.i.i.i.i.i109:                              ; preds = %bb.r, %.lr.ph.i.i.i.i.i109
  %i.cq = phi i64 [ %i.cr, %.lr.ph.i.i.i.i.i109 ], [ %i.cm, %bb.r ]
  %.sroa.0.011.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i109 ], [ %.pn20.i.i.i.i, %bb.r ] ; 3 uses
  %.sroa.06.010.i.i.i.i.i = phi ptr [ %.sroa.0.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i109 ], [ %.sroa.0.021.i.ptr.i.i.i, %bb.r ]
  store i64 %i.cq, ptr %.sroa.06.010.i.i.i.i.i, align 8, !tbaa !100
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i.i.i.i, i64 -8 ; 2 uses
  %i.cr = load i64, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !100 ; 2 uses
  %i.cs = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !106
  %i.cu = icmp sgt i32 %i.cg, %i.ct
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i109, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, !llvm.loop !191

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i109, %bb.r, %bb.q, %bb.p
  %.sink.i.i.i.i = phi ptr [ %i.bm, %bb.q ], [ %i.bm, %bb.p ], [ %.sroa.0.021.i.ptr.i.i.i, %bb.r ], [ %.sroa.0.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i109 ]
  store i64 %i.cd, ptr %.sink.i.i.i.i, align 8, !tbaa !100
  %.sroa.0.021.i.add.i.i.i = add nuw nsw i64 %.sroa.0.021.i.idx.i.i.i, 8 ; 2 uses
  %.not.i.i.i.i108 = icmp eq i64 %.sroa.0.021.i.add.i.i.i, 128
  br i1 %.not.i.i.i.i108, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_T0_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !192

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_T0_.exit.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bm, i64 128 ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.cv, %.0.i.i.i.i.i.ph
  br i1 %.not7.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEN12_GLOBAL__N_119Vec3iGreaterThanIdxEEvT_S9_T0_.exit, label %.lr.ph.i10.i.i.i

.lr.ph.i10.i.i.i:                                 ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_T0_.exit.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_T0_.exit.i.i.i.i
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.di, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_T0_.exit.i.i.i.i ], [ %i.cv, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_T0_.exit.i.i.i ] ; 5 uses
  %i.cw = load i64, ptr %.sroa.0.08.i.i.i.i, align 8, !tbaa !100 ; 2 uses
  %i.cx = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !106 ; 2 uses
  %.sroa.0.09.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.i.i, i64 -8 ; 2 uses
  %i.cz = load i64, ptr %.sroa.0.09.i.i.i.i.i, align 8, !tbaa !100 ; 2 uses
  %i.da = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !106
  %i.dc = icmp sgt i32 %i.cy, %i.db
  br i1 %i.dc, label %.lr.ph.i.i12.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_T0_.exit.i.i.i.i

.lr.ph.i.i12.i.i.i:                               ; preds = %.lr.ph.i10.i.i.i, %.lr.ph.i.i12.i.i.i
  %i.dd = phi i64 [ %i.de, %.lr.ph.i.i12.i.i.i ], [ %i.cz, %.lr.ph.i10.i.i.i ]
  %.sroa.0.011.i.i13.i.i.i = phi ptr [ %.sroa.0.0.i.i15.i.i.i, %.lr.ph.i.i12.i.i.i ], [ %.sroa.0.09.i.i.i.i.i, %.lr.ph.i10.i.i.i ] ; 3 uses
  %.sroa.06.010.i.i14.i.i.i = phi ptr [ %.sroa.0.011.i.i13.i.i.i, %.lr.ph.i.i12.i.i.i ], [ %.sroa.0.08.i.i.i.i, %.lr.ph.i10.i.i.i ]
  store i64 %i.dd, ptr %.sroa.06.010.i.i14.i.i.i, align 8, !tbaa !100
  %.sroa.0.0.i.i15.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i13.i.i.i, i64 -8 ; 2 uses
  %i.de = load i64, ptr %.sroa.0.0.i.i15.i.i.i, align 8, !tbaa !100 ; 2 uses
  %i.df = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !106
  %i.dh = icmp sgt i32 %i.cy, %i.dg
  br i1 %i.dh, label %.lr.ph.i.i12.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_T0_.exit.i.i.i.i, !llvm.loop !191

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_T0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i12.i.i.i, %.lr.ph.i10.i.i.i
  %.sroa.06.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.08.i.i.i.i, %.lr.ph.i10.i.i.i ], [ %.sroa.0.011.i.i13.i.i.i, %.lr.ph.i.i12.i.i.i ]
  store i64 %i.cw, ptr %.sroa.06.0.lcssa.i.i.i.i.i, align 8, !tbaa !100
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 8 ; 2 uses
  %.not.i11.i.i.i = icmp eq ptr %i.di, %.0.i.i.i.i.i.ph
  br i1 %.not.i11.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEN12_GLOBAL__N_119Vec3iGreaterThanIdxEEvT_S9_T0_.exit, label %.lr.ph.i10.i.i.i, !llvm.loop !193

bb.s:                                             ; preds = %bb.n
  %.not19.i18.i.i.i = icmp eq ptr %scevgep.i.i.i, %.0.i.i.i.i.i.ph
  br i1 %.not19.i18.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEN12_GLOBAL__N_119Vec3iGreaterThanIdxEEvT_S9_T0_.exit, label %.lr.ph.i19.i.i.i

.lr.ph.i19.i.i.i:                                 ; preds = %bb.s, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22.i.i.i
  %.sroa.0.021.i20.i.i.i = phi ptr [ %.sroa.0.0.i24.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22.i.i.i ], [ %scevgep.i.i.i, %bb.s ] ; 6 uses
  %.pn20.i21.i.i.i = phi ptr [ %.sroa.0.021.i20.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22.i.i.i ], [ %i.bm, %bb.s ] ; 4 uses
  %i.dj = load i64, ptr %.sroa.0.021.i20.i.i.i, align 8, !tbaa !100 ; 2 uses
  %i.dk = load i64, ptr %i.bm, align 8, !tbaa !100 ; 2 uses
  %i.dl = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %i.dj
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !106 ; 3 uses
  %i.dn = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %i.dk
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !106
  %i.dp = icmp sgt i32 %i.dm, %i.do
  br i1 %i.dp, label %bb.t, label %bb.x

bb.t:                                             ; preds = %.lr.ph.i19.i.i.i
  %i.dq = ptrtoint ptr %.sroa.0.021.i20.i.i.i to i64
  %i.dr = sub i64 %i.dq, %i.bw                    ; 3 uses
  %i.ds = ashr exact i64 %i.dr, 3                 ; 2 uses
  %i.dt = icmp sgt i64 %i.ds, 1
  br i1 %i.dt, label %bb.u, label %bb.v, !prof !207

bb.u:                                             ; preds = %bb.t
  %i.du = getelementptr inbounds nuw i8, ptr %.pn20.i21.i.i.i, i64 16
  %i.dv = sub nsw i64 0, %i.ds
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.dv
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dw, ptr noundef nonnull align 8 dereferenceable(1) %i.bm, i64 %i.dr, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.dx = icmp eq i64 %i.dr, 8
  br i1 %i.dx, label %bb.w, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.dy = getelementptr inbounds nuw i8, ptr %.pn20.i21.i.i.i, i64 8
  store i64 %i.dk, ptr %i.dy, align 8, !tbaa !100
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22.i.i.i

bb.x:                                             ; preds = %.lr.ph.i19.i.i.i
  %i.dz = load i64, ptr %.pn20.i21.i.i.i, align 8, !tbaa !100 ; 2 uses
  %i.ea = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !106
  %i.ec = icmp sgt i32 %i.dm, %i.eb
  br i1 %i.ec, label %.lr.ph.i.i26.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22.i.i.i

.lr.ph.i.i26.i.i.i:                               ; preds = %bb.x, %.lr.ph.i.i26.i.i.i
  %i.ed = phi i64 [ %i.ee, %.lr.ph.i.i26.i.i.i ], [ %i.dz, %bb.x ]
  %.sroa.0.011.i.i27.i.i.i = phi ptr [ %.sroa.0.0.i.i29.i.i.i, %.lr.ph.i.i26.i.i.i ], [ %.pn20.i21.i.i.i, %bb.x ] ; 3 uses
  %.sroa.06.010.i.i28.i.i.i = phi ptr [ %.sroa.0.011.i.i27.i.i.i, %.lr.ph.i.i26.i.i.i ], [ %.sroa.0.021.i20.i.i.i, %bb.x ]
  store i64 %i.ed, ptr %.sroa.06.010.i.i28.i.i.i, align 8, !tbaa !100
  %.sroa.0.0.i.i29.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i27.i.i.i, i64 -8 ; 2 uses
  %i.ee = load i64, ptr %.sroa.0.0.i.i29.i.i.i, align 8, !tbaa !100 ; 2 uses
  %i.ef = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !106
  %i.eh = icmp sgt i32 %i.dm, %i.eg
  br i1 %i.eh, label %.lr.ph.i.i26.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22.i.i.i, !llvm.loop !191

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22.i.i.i: ; preds = %.lr.ph.i.i26.i.i.i, %bb.x, %bb.w, %bb.v, %bb.u
  %.sink.i23.i.i.i = phi ptr [ %i.bm, %bb.w ], [ %i.bm, %bb.u ], [ %i.bm, %bb.v ], [ %.sroa.0.021.i20.i.i.i, %bb.x ], [ %.sroa.0.011.i.i27.i.i.i, %.lr.ph.i.i26.i.i.i ]
  store i64 %i.dj, ptr %.sink.i23.i.i.i, align 8, !tbaa !100
  %.sroa.0.0.i24.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i20.i.i.i, i64 8 ; 2 uses
  %.not.i25.i.i.i = icmp eq ptr %.sroa.0.0.i24.i.i.i, %.0.i.i.i.i.i.ph
  br i1 %.not.i25.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEN12_GLOBAL__N_119Vec3iGreaterThanIdxEEvT_S9_T0_.exit, label %.lr.ph.i19.i.i.i, !llvm.loop !192

bb.y:                                             ; preds = %_ZNSt15__new_allocatorIN2cv3VecIiLi3EEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i103
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EED2Ev.exit146

bb.z:                                             ; preds = %bb.m, %bb.l
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit144

.lr.ph:                                           ; preds = %.lr.ph.preheader310, %.lr.ph
  %.065218 = phi i64 [ %i.el, %.lr.ph ], [ %.065218.ph, %.lr.ph.preheader310 ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.065218
  store i64 %.065218, ptr %i.ek, align 8, !tbaa !100
  %i.el = add nuw i64 %.065218, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.el, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !194

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEN12_GLOBAL__N_119Vec3iGreaterThanIdxEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_T0_.exit.i.i.i.i, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i, %bb.s, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_T0_.exit.i.i.i, %._crit_edge
  %.sroa.13.0296306 = phi ptr [ %i.bn, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_T0_.exit.i.i.i.i ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bn, %._crit_edge ], [ %i.bn, %bb.s ], [ %i.bn, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_T0_.exit.i.i.i ], [ %i.bn, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22.i.i.i ] ; 2 uses
  %.sroa.0193.0298305 = phi ptr [ %i.bm, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_T0_.exit.i.i.i.i ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bm, %._crit_edge ], [ %i.bm, %bb.s ], [ %i.bm, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_T0_.exit.i.i.i ], [ %i.bm, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22.i.i.i ] ; 7 uses
  %i.em = load ptr, ptr %i.a, align 8, !tbaa !116 ; 2 uses
  %i.en = load ptr, ptr %i.b, align 8, !tbaa !111
  %.not.i.i110 = icmp eq ptr %i.en, %i.em
  br i1 %.not.i.i110, label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv3VecIfLi4EEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv3VecIfLi4EEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEN12_GLOBAL__N_119Vec3iGreaterThanIdxEEvT_S9_T0_.exit
  store ptr %i.em, ptr %i.b, align 8, !tbaa !111
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE5clearEv.exit

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE5clearEv.exit: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEN12_GLOBAL__N_119Vec3iGreaterThanIdxEEvT_S9_T0_.exit, %_ZSt8_DestroyIPN2cv3VecIfLi4EEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.eo = load ptr, ptr %i.i, align 8, !tbaa !115 ; 2 uses
  %i.ep = load ptr, ptr %i.k, align 8, !tbaa !113
  %.not.i.i111 = icmp eq ptr %i.ep, %i.eo
  br i1 %.not.i.i111, label %bb.aa, label %_ZSt8_DestroyIPN2cv3VecIiLi3EEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv3VecIiLi3EEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE5clearEv.exit
  store ptr %i.eo, ptr %i.k, align 8, !tbaa !113
  br label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPN2cv3VecIiLi3EEES2_EvT_S4_RSaIT0_E.exit.i.i, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE5clearEv.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.er = load double, ptr %i.eq, align 8, !tbaa !90 ; 2 uses
  %i.es = insertelement <2 x double> poison, double %i.er, i64 0
  %i.et = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.es) ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.ev = add i32 %i.et, -1
  %i.ew = load <2 x i32>, ptr %i.eu, align 8, !tbaa !106
  %i.ex = insertelement <2 x i32> poison, i32 %i.ev, i64 0
  %i.ey = shufflevector <2 x i32> %i.ex, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ez = add <2 x i32> %i.ey, %i.ew
  %i.fa = insertelement <2 x i32> poison, i32 %i.et, i64 0
  %i.fb = shufflevector <2 x i32> %i.fa, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.fc = sdiv <2 x i32> %i.ez, %i.fb             ; 3 uses
  %i.fd = extractelement <2 x i32> %i.fc, i64 0   ; 3 uses
  %i.fe = extractelement <2 x i32> %i.fc, i64 1
  %i.ff = mul nsw i32 %i.fe, %i.fd                ; 3 uses
  %i.fg = sext i32 %i.ff to i64                   ; 2 uses
  %i.fh = icmp slt i32 %i.ff, 0
  br i1 %i.fh, label %bb.ab, label %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #33
          to label %.noexc114 unwind label %bb.ah

.noexc114:                                        ; preds = %bb.ab
  unreachable

_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i: ; preds = %bb.aa
  %.not.i.i.i.i112 = icmp eq i32 %i.ff, 0
  br i1 %.not.i.i.i.i112, label %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EEC2EmRKS5_.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.fi = mul nuw nsw i64 %i.fg, 24               ; 3 uses
  %i.fj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fi) #29
          to label %.noexc115 unwind label %bb.ah ; 4 uses

.noexc115:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.fk = getelementptr inbounds nuw [24 x i8], ptr %i.fj, i64 %i.fg
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fj, i8 0, i64 %i.fi, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.fj, i64 %i.fi
  %i.fl = ptrtoint ptr %i.fk to i64
  %.pre250 = load double, ptr %i.eq, align 8, !tbaa !90
  br label %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EEC2EmRKS5_.exit

_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EEC2EmRKS5_.exit: ; preds = %.noexc115, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.fm = phi double [ %.pre250, %.noexc115 ], [ %i.er, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ] ; 2 uses
  %.sroa.0185.0 = phi ptr [ %i.fj, %.noexc115 ], [ null, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ] ; 12 uses
  %.sink.i = phi i64 [ %i.fl, %.noexc115 ], [ 0, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i113 = phi ptr [ %scevgep.i.i.i.i.i, %.noexc115 ], [ null, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ] ; 4 uses
  %i.fn = fmul double %i.fm, %i.fm
  br i1 %.not.i.i.i.i, label %._crit_edge231, label %.lr.ph230

.lr.ph230:                                        ; preds = %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EEC2EmRKS5_.exit
  %i.fo = sitofp i32 %i.et to float
  %i.fp = add <2 x i32> %i.fc, splat (i32 -1)
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.fs = sext i32 %i.fd to i64
  %i.ft = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.ai

._crit_edge231:                                   ; preds = %_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EE9push_backERKS2_.exit, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EEC2EmRKS5_.exit
  %.not4.i.i.i = icmp eq ptr %.sroa.0185.0, %.0.lcssa.i.i.i.i.i113
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IfEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge231, %_ZSt8_DestroyISt6vectorIN2cv6Point_IfEESaIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gb, %_ZSt8_DestroyISt6vectorIN2cv6Point_IfEESaIS3_EEEvPT_.exit.i.i.i ], [ %.sroa.0185.0, %._crit_edge231 ] ; 3 uses
  %i.fv = load ptr, ptr %.05.i.i.i, align 8, !tbaa !210 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv6Point_IfEESaIS3_EEEvPT_.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !211
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = ptrtoint ptr %i.fv to i64
  %i.ga = sub i64 %i.fy, %i.fz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef %i.ga) #30
  br label %_ZSt8_DestroyISt6vectorIN2cv6Point_IfEESaIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN2cv6Point_IfEESaIS3_EEEvPT_.exit.i.i.i: ; preds = %bb.ac, %.lr.ph.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gb, %.0.lcssa.i.i.i.i.i113
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IfEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !195

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IfEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIN2cv6Point_IfEESaIS3_EEEvPT_.exit.i.i.i, %._crit_edge231
  %.not.i.i1.i = icmp eq ptr %.sroa.0185.0, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IfEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.gc = ptrtoint ptr %.sroa.0185.0 to i64
  %i.gd = sub i64 %.sink.i, %i.gc
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0185.0, i64 noundef %i.gd) #30
  br label %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EED2Ev.exit

_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IfEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.ad
  %.not.i.i.i116 = icmp eq ptr %.sroa.0193.0298305, null
  br i1 %.not.i.i.i116, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EED2Ev.exit
  %i.ge = ptrtoint ptr %.sroa.13.0296306 to i64
  %i.gf = ptrtoint ptr %.sroa.0193.0298305 to i64
  %i.gg = sub i64 %i.ge, %i.gf
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0193.0298305, i64 noundef %i.gg) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EED2Ev.exit, %bb.ae
  %.not.i.i.i117 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i117, label %_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.au) #30
  br label %_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EED2Ev.exit:   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.af
  %.not.i.i.i118 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i118, label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.g) #30
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit:   ; preds = %_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EED2Ev.exit, %bb.ag
  ret void

bb.ah:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.ab
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EED2Ev.exit142

bb.ai:                                            ; preds = %.lr.ph230, %_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EE9push_backERKS2_.exit
  %.064229 = phi i64 [ 0, %.lr.ph230 ], [ %i.kc, %_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0193.0298305, i64 %.064229
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !100 ; 2 uses
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.gj ; 6 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.gm = load <2 x float>, ptr %i.gk, align 4, !tbaa !103 ; 4 uses
  %i.gn = fdiv <2 x float> %i.gm, %i.fu
  %i.go = fptosi <2 x float> %i.gn to <2 x i32>   ; 4 uses
  %i.gp = add <2 x i32> %i.go, splat (i32 1)
  %i.gq = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.go, <2 x i32> splat (i32 1)) ; 3 uses
  %i.gr = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.gp, <2 x i32> %i.fp) ; 2 uses
  %i.gs = add nsw <2 x i32> %i.gq, splat (i32 -1)
  %i.gt = icmp sgt <2 x i32> %i.gs, %i.gr         ; 2 uses
  %i.gu = extractelement <2 x i1> %i.gt, i64 0
  %i.gv = extractelement <2 x i1> %i.gt, i64 1
  %or.cond = select i1 %i.gv, i1 true, i1 %i.gu
  br i1 %or.cond, label %.critedge.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.ai
  %i.gw = extractelement <2 x i32> %i.gq, i64 0
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = add nsw i64 %i.gx, -1
  %i.gz = extractelement <2 x i32> %i.gq, i64 1
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = add nsw i64 %i.ha, -1
  %i.hc = add nuw <2 x i32> %i.gr, splat (i32 1)  ; 2 uses
  %i.hd = extractelement <2 x i32> %i.hc, i64 1
  %wide.trip.count243 = zext nneg i32 %i.hd to i64
  %i.he = extractelement <2 x i32> %i.hc, i64 0
  %wide.trip.count = zext i32 %i.he to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %..thread213_crit_edge
  %indvars.iv240 = phi i64 [ %i.hb, %.preheader.preheader ], [ %indvars.iv.next241, %..thread213_crit_edge ] ; 2 uses
  %i.hf = mul nsw i64 %indvars.iv240, %i.fs
  %invariant.gep = getelementptr [24 x i8], ptr %.sroa.0185.0, i64 %i.hf
  br label %bb.aj

bb.aj:                                            ; preds = %.preheader, %._crit_edge223
  %indvars.iv = phi i64 [ %i.gy, %.preheader ], [ %indvars.iv.next, %._crit_edge223 ] ; 2 uses
  %gep = getelementptr [24 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %gep, i64 8
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_120GeneralizedHoughBase9convertToERKN2cv12_OutputArrayES4_:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.u, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.ag

bb.h:                                             ; preds = %bb.a, %bb.b
  tail call void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1, i32 noundef %i.i, i32 noundef 101, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.aa = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !219
  %i.ab = icmp eq i32 %i.aa, 65536
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !109, !noalias !219
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %i.ad)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.j:                                             ; preds = %bb.h
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !116
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef 1, i32 noundef %i.i, i32 noundef 101, ptr noundef nonnull %i.ae, i64 noundef 0)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.ag, align 8
  store i32 33619968, ptr %7, align 8, !tbaa !108
  store ptr %5, ptr %i.af, align 8, !tbaa !109
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.ah = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  br i1 %i.ah, label %bb.n, label %bb.ae

bb.n:                                             ; preds = %bb.m
  br i1 %i.n, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  invoke void @_ZNK2cv12_OutputArray7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ae unwind label %bb.s

bb.p:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #31
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn23.pn = phi { ptr, i32 } [ %i.aj, %bb.q ], [ %i.ai, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.af

bb.s:                                             ; preds = %bb.t, %bb.o, %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.t:                                             ; preds = %bb.n
  invoke void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1, i32 noundef %i.i, i32 noundef 68, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.u unwind label %bb.s

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.al = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.u
  %i.am = icmp eq i32 %i.al, 65536
  br i1 %i.am, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.noexc
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !109, !noalias !220
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %i.ao)
          to label %_ZNK2cv11_InputArray6getMatEi.exit34 unwind label %bb.z

bb.w:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit34 unwind label %bb.z

_ZNK2cv11_InputArray6getMatEi.exit34:             ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !115
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %9, i32 noundef 1, i32 noundef %i.i, i32 noundef 68, ptr noundef nonnull %i.ap, i64 noundef 0)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit34
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.ar, align 8
  store i32 33619968, ptr %10, align 8, !tbaa !108
  store ptr %8, ptr %i.aq, align 8, !tbaa !109
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.ae

bb.z:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.aa:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit34
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #31
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn26.pn = phi { ptr, i32 } [ %i.au, %bb.ab ], [ %i.at, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #31
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %bb.ac ], [ %i.as, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.af

bb.ae:                                            ; preds = %bb.y, %bb.o, %bb.m
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret void

bb.af:                                            ; preds = %bb.ad, %bb.s, %bb.r
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn, %bb.ad ], [ %i.ak, %bb.s ], [ %.pn23.pn, %bb.r ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn26.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn.pn, %bb.af ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn26.pn.pn.pn.pn
}

declare void @_ZNK2cv12_OutputArray7releaseEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #11

declare noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3) unnamed_addr #21 {
bb.a:
  %.fr28 = freeze ptr %1                          ; 3 uses
  %.fr27 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr27 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr28 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_SC_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr27, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph59

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEET_SC_SC_T0_.exit
  %i.h = icmp eq i64 %i.dx, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph59, !llvm.loop !221

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i26.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.fh, %bb.b ] ; 2 uses
  %storemerge24.lcssa = phi ptr [ %.fr28, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i26.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i26.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_T0_SD_T1_T2_.exit.us.i.i.i
  %.09.us.i.i.i = phi i64 [ %i.av, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_T0_SD_T1_T2_.exit.us.i.i.i ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.09.us.i.i.i
  %i.t = load i64, ptr %i.s, align 8, !tbaa !100  ; 2 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_T0_SD_T1_T2_.exit.us.i.i.i

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.038.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.09.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.038.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.y
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !100
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !100
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.aa
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !106
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.ab
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !106
  %i.ag = icmp sgt i32 %i.ad, %i.af
  %spec.select.i.us.i.i.i = select i1 %i.ag, i64 %i.y, i64 %i.w ; 4 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.us.i.i.i
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !100
  %i.aj = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.038.i.us.i.i.i
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !100
  %i.ak = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ak, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !222

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.t
  %i.am = load i32, ptr %i.al, align 4, !tbaa !106
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i.us.i.i.i
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !100 ; 2 uses
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !106
  %i.ar = icmp sgt i32 %i.aq, %i.am
  br i1 %i.ar, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_T0_SD_T1_T2_.exit.us.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.us.i.i.i
  store i64 %i.ao, ptr %i.as, align 8, !tbaa !100
  %i.at = icmp sgt i64 %.0911.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.at, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_T0_SD_T1_T2_.exit.us.i.i.i, !llvm.loop !223

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_T0_SD_T1_T2_.exit.us.i.i.i: ; preds = %bb.d, %bb.c, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ], [ %.010.i.i.us.i.i.i, %bb.c ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.us.i.i.i
  store i64 %i.t, ptr %i.au, align 8, !tbaa !100
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.av = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_RT0_.exit.i.i, label %.split.us.i.i.i, !llvm.loop !224

.split.i.i.i:                                     ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_T0_SD_T1_T2_.exit.i.i.i, %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.cc, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_T0_SD_T1_T2_.exit.i.i.i ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.09.i.i.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !100 ; 2 uses
  %i.ay = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.ay, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.az = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.ba = add i64 %i.az, 2                        ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.ba
  %i.bc = or disjoint i64 %i.az, 1                ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.bc
  %i.be = load i64, ptr %i.bb, align 8, !tbaa !100
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !100
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.be
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !106
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.bf
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !106
  %i.bk = icmp sgt i32 %i.bh, %i.bj
  %spec.select.i.i.i.i = select i1 %i.bk, i64 %i.bc, i64 %i.ba ; 4 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.i.i.i
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !100
  %i.bn = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.038.i.i.i.i
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !100
  %i.bo = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bo, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !222

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bp = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bq = load i64, ptr %i.q, align 8, !tbaa !100
  store i64 %i.bq, ptr %i.r, align 8, !tbaa !100
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.br = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.br, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_T0_SD_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.ax
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !106
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.h ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i.i.i.i
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !100 ; 2 uses
  %i.bw = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !106
  %i.by = icmp sgt i32 %i.bx, %i.bt
  br i1 %i.by, label %bb.h, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_T0_SD_T1_T2_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i.i
  store i64 %i.bv, ptr %i.bz, align 8, !tbaa !100
  %i.ca = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.ca, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_T0_SD_T1_T2_.exit.i.i.i, !llvm.loop !223

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_T0_SD_T1_T2_.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ %.010.i.i.i.i.i, %bb.g ], [ %.0911.i.i.i.i.i, %bb.h ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i.i
  store i64 %i.ax, ptr %i.cb, align 8, !tbaa !100
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.cc = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_RT0_.exit.i.i, label %.split.i.i.i, !llvm.loop !224

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_RT0_.exit.i.i: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_T0_SD_T1_T2_.exit.us.i.i.i, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_T0_SD_T1_T2_.exit.i.i.i
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_RT0_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_SC_RT0_.exit.i.i
  %.sroa.0.03.i.i = phi ptr [ %i.cd, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_SC_RT0_.exit.i.i ], [ %storemerge24.lcssa, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_RT0_.exit.i.i ]
  %i.cd = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !100 ; 2 uses
  %i.cf = load i64, ptr %.fr27, align 8, !tbaa !100
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !100
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = sub i64 %i.cg, %i.a                     ; 3 uses
  %i.ci = ashr exact i64 %i.ch, 3                 ; 3 uses
  %i.cj = add nsw i64 %i.ci, -1
  %i.ck = lshr i64 %i.cj, 1
  %i.cl = icmp sgt i64 %i.ci, 2
  br i1 %i.cl, label %.lr.ph.i.i.i17.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i17.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i17.i
  %.038.i.i.i18.i = phi i64 [ %spec.select.i.i.i19.i, %.lr.ph.i.i.i17.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.cm = shl i64 %.038.i.i.i18.i, 1              ; 2 uses
  %i.cn = add i64 %i.cm, 2                        ; 2 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.cn
  %i.cp = or disjoint i64 %i.cm, 1                ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.cp
  %i.cr = load i64, ptr %i.co, align 8, !tbaa !100
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !100
  %i.ct = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.cr
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !106
  %i.cv = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.cs
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !106
  %i.cx = icmp sgt i32 %i.cu, %i.cw
  %spec.select.i.i.i19.i = select i1 %i.cx, i64 %i.cp, i64 %i.cn ; 4 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.i.i19.i
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !100
  %i.da = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.038.i.i.i18.i
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !100
  %i.db = icmp slt i64 %spec.select.i.i.i19.i, %i.ck
  br i1 %i.db, label %.lr.ph.i.i.i17.i, label %._crit_edge.i.i.i10.i, !llvm.loop !222

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i17.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i19.i, %.lr.ph.i.i.i17.i ] ; 5 uses
  %i.dc = and i64 %i.ch, 8
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.de = add nsw i64 %i.ci, -2
  %i.df = ashr exact i64 %i.de, 1
  %i.dg = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.df
  br i1 %i.dg, label %.thread.i.i.i, label %bb.j

.thread.i.i.i:                                    ; preds = %bb.i
  %i.dh = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.di = or disjoint i64 %i.dh, 1                ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !100
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i11.i
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !100
  br label %.lr.ph.i.i.i.i13.i

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_SC_RT0_.exit.i.i, label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %bb.j, %.thread.i.i.i
  %.1.i6.i.i.i = phi i64 [ %i.di, %.thread.i.i.i ], [ %.0.lcssa.i.i.i11.i, %bb.j ]
  %i.dm = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.ce
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !106
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i13.i
  %.010.i.i.i.i14.i = phi i64 [ %.1.i6.i.i.i, %.lr.ph.i.i.i.i13.i ], [ %.0911.i.i78.i.i.i, %bb.l ] ; 3 uses
  %.0911.in.i.i.i.i15.i = add nsw i64 %.010.i.i.i.i14.i, -1
  %.0911.i.i78.i.i.i = lshr i64 %.0911.in.i.i.i.i15.i, 1 ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i78.i.i.i
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !100 ; 2 uses
  %i.dq = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !106
  %i.ds = icmp sgt i32 %i.dr, %i.dn
  br i1 %i.ds, label %bb.l, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_SC_RT0_.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.dt = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i14.i
  store i64 %i.dp, ptr %i.dt, align 8, !tbaa !100
  %.not9.i.i.i = icmp eq i64 %.0911.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_SC_RT0_.exit.i.i, label %bb.k, !llvm.loop !223

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_SC_RT0_.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %.0.lcssa.i.i.i.i16.i = phi i64 [ 0, %bb.j ], [ %.010.i.i.i.i14.i, %bb.k ], [ 0, %bb.l ]
  %i.du = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i16.i
  store i64 %i.ce, ptr %i.du, align 8, !tbaa !100
  %i.dv = icmp sgt i64 %i.ch, 8
  br i1 %i.dv, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_SC_T0_.exit, !llvm.loop !225

.lr.ph59:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2458 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr28, %.lr.ph ] ; 3 uses
  %.02557 = phi i64 [ %i.dx, %bb.b ], [ %2, %.lr.ph ]
  %i.dw = phi i64 [ %i.fi, %bb.b ], [ %i.d, %.lr.ph ]
  %i.dx = add nsw i64 %.02557, -1                 ; 3 uses
  %i.dy = lshr i64 %i.dw, 1
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.dy ; 3 uses
  %i.ea = getelementptr inbounds i8, ptr %storemerge2458, i64 -8 ; 3 uses
  %i.eb = load i64, ptr %i.f, align 8, !tbaa !100 ; 3 uses
  %i.ec = load i64, ptr %i.dz, align 8, !tbaa !100 ; 3 uses
  %i.ed = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.eb
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !106 ; 3 uses
  %i.ef = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.ec
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !106 ; 3 uses
  %i.eh = icmp sgt i32 %i.ee, %i.eg
  %i.ei = load i64, ptr %i.ea, align 8, !tbaa !100 ; 3 uses
  %i.ej = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !106 ; 4 uses
  br i1 %i.eh, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph59
  %i.el = icmp sgt i32 %i.eg, %i.ek
  br i1 %i.el, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.em = load i64, ptr %.fr27, align 8, !tbaa !100
  store i64 %i.ec, ptr %.fr27, align 8, !tbaa !100
  store i64 %i.em, ptr %i.dz, align 8, !tbaa !100
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.en = icmp sgt i32 %i.ee, %i.ek
  %i.eo = load i64, ptr %.fr27, align 8, !tbaa !100 ; 2 uses
  br i1 %i.en, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 %i.ei, ptr %.fr27, align 8, !tbaa !100
  store i64 %i.eo, ptr %i.ea, align 8, !tbaa !100
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i64 %i.eb, ptr %.fr27, align 8, !tbaa !100
  store i64 %i.eo, ptr %i.f, align 8, !tbaa !100
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.r:                                             ; preds = %.lr.ph59
  %i.ep = icmp sgt i32 %i.ee, %i.ek
  br i1 %i.ep, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.eq = load i64, ptr %.fr27, align 8, !tbaa !100
  store i64 %i.eb, ptr %.fr27, align 8, !tbaa !100
  store i64 %i.eq, ptr %i.f, align 8, !tbaa !100
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.t:                                             ; preds = %bb.r
  %i.er = icmp sgt i32 %i.eg, %i.ek
  %i.es = load i64, ptr %.fr27, align 8, !tbaa !100 ; 2 uses
  br i1 %i.er, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i64 %i.ei, ptr %.fr27, align 8, !tbaa !100
  store i64 %i.es, ptr %i.ea, align 8, !tbaa !100
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.v:                                             ; preds = %bb.t
  store i64 %i.ec, ptr %.fr27, align 8, !tbaa !100
  store i64 %i.es, ptr %i.dz, align 8, !tbaa !100
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_SC_SC_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_SC_SC_T0_.exit.i.preheader: ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_SC_SC_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_SC_SC_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_SC_SC_T0_.exit.i.preheader, %bb.y
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.y ], [ %storemerge2458, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.fa, %bb.y ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %i.et = load i64, ptr %.fr27, align 8, !tbaa !100
  %i.eu = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !106 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_SC_SC_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_SC_SC_T0_.exit.i ], [ %i.fa, %bb.w ] ; 8 uses
  %i.ew = load i64, ptr %.sroa.012.1.i.i, align 8, !tbaa !100 ; 2 uses
  %i.ex = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !106
  %i.ez = icmp sgt i32 %i.ey, %i.ev
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.ez, label %bb.w, label %.preheader.i.i, !llvm.loop !226

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.w ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -8 ; 5 uses
  %i.fb = load i64, ptr %.sroa.09.1.i.i, align 8, !tbaa !100 ; 2 uses
  %i.fc = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !106
  %i.fe = icmp sgt i32 %i.ev, %i.fd
  br i1 %i.fe, label %.preheader.i.i, label %bb.x, !llvm.loop !227

bb.x:                                             ; preds = %.preheader.i.i
  %i.ff = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.ff, label %bb.y, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEET_SC_SC_T0_.exit

bb.y:                                             ; preds = %bb.x
  store i64 %i.fb, ptr %.sroa.012.1.i.i, align 8, !tbaa !100
  store i64 %i.ew, ptr %.sroa.09.1.i.i, align 8, !tbaa !100
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_SC_SC_T0_.exit.i, !llvm.loop !228

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEET_SC_SC_T0_.exit: ; preds = %bb.x
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2458, i64 noundef %i.dx, ptr nonnull %3)
  %i.fg = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.fh = sub i64 %i.fg, %i.a                     ; 2 uses
  %i.fi = ashr exact i64 %i.fh, 3                 ; 2 uses
  %i.fj = icmp sgt i64 %i.fi, 16
  br i1 %i.fj, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_SC_T0_.exit, !llvm.loop !221

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_SC_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEET_SC_SC_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_119Vec3iGreaterThanIdxEEEEvT_SC_SC_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse2.cvtsd2si(<2 x double>) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #25

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !116    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #33
  unreachable

_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load <4 x float>, ptr %2, align 4, !tbaa !103
  store <4 x float> %i.r, ptr %i.q, align 4, !tbaa !103
  %.not13.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.s = load float, ptr %.01214.i.i.i.i.i, align 4, !tbaa !103
  store float %i.s, ptr %.015.i.i.i.i.i, align 4, !tbaa !103
  %i.t = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !103
  %i.v = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 4
  store float %i.u, ptr %i.v, align 4, !tbaa !103
  %i.w = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 8
  %i.x = load float, ptr %i.w, align 4, !tbaa !103
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 8
  store float %i.x, ptr %i.y, align 4, !tbaa !103
  %i.z = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 12
  %i.aa = load float, ptr %i.z, align 4, !tbaa !103
  %i.ab = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 12
  store float %i.aa, ptr %i.ab, align 4, !tbaa !103
  %i.ac = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ad, %.lr.ph.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not13.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %.lr.ph.i.i.i.i.i29
  %.015.i.i.i.i.i30 = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i29 ], [ %i.ae, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %.01214.i.i.i.i.i31 = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i29 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %i.af = load <4 x float>, ptr %.01214.i.i.i.i.i31, align 4, !tbaa !103
  store <4 x float> %i.af, ptr %.015.i.i.i.i.i30, align 4, !tbaa !103
  %i.ag = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i31, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i30, i64 16 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, label %.lr.ph.i.i.i.i.i29, !llvm.loop !1

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34: ; preds = %.lr.ph.i.i.i.i.i29, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i33 = phi ptr [ %i.ae, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.ah, %.lr.ph.i.i.i.i.i29 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN2cv3VecIfLi4EEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !112
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #30
  br label %_ZNSt12_Vector_baseIN2cv3VecIfLi4EEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN2cv3VecIfLi4EEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !116
  store ptr %.0.lcssa.i.i.i.i.i33, ptr %i.a, align 8, !tbaa !111
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !112
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !115    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2cv3VecIiLi3EEESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #33
  unreachable

_ZNKSt6vectorIN2cv3VecIiLi3EEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 12                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 768614336404564650)
  %i.l = select i1 %i.j, i64 768614336404564650, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 12
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load <2 x i32>, ptr %2, align 4, !tbaa !106
  store <2 x i32> %i.r, ptr %i.q, align 4, !tbaa !106
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !106
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %i.t, ptr %i.u, align 4, !tbaa !106
  %.not13.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN2cv3VecIiLi3EEESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN2cv3VecIiLi3EEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN2cv3VecIiLi3EEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %i.v = load i32, ptr %.01214.i.i.i.i.i, align 4, !tbaa !106
  store i32 %i.v, ptr %.015.i.i.i.i.i, align 4, !tbaa !106
  %i.w = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !106
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 4
  store i32 %i.x, ptr %i.y, align 4, !tbaa !106
  %i.z = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !106
  %i.ab = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 8
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !106
  %i.ac = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 12 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN2cv3VecIiLi3EEESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN2cv3VecIiLi3EEESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ad, %.lr.ph.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 12 ; 2 uses
  %.not13.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %.lr.ph.i.i.i.i.i29
  %.015.i.i.i.i.i30 = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i29 ], [ %i.ae, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 3 uses
  %.01214.i.i.i.i.i31 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i29 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 3 uses
  %i.af = load <2 x i32>, ptr %.01214.i.i.i.i.i31, align 4, !tbaa !106
  store <2 x i32> %i.af, ptr %.015.i.i.i.i.i30, align 4, !tbaa !106
  %i.ag = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i31, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !106
  %i.ai = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i30, i64 8
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !106
  %i.aj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i31, i64 12 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i30, i64 12 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i.i.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, label %.lr.ph.i.i.i.i.i29, !llvm.loop !2

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34: ; preds = %.lr.ph.i.i.i.i.i29, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i33 = phi ptr [ %i.ae, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.ak, %.lr.ph.i.i.i.i.i29 ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN2cv3VecIiLi3EEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !114
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ao) #30
end_hunk_1
