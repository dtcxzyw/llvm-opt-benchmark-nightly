Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/UfarMgr?download=true
inline.NumInlined: 7368
inline.NumDeleted: 2730
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 1
  store i8 %i.e, ptr %i.i, align 1, !tbaa !101
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  store i8 %i.f, ptr %0, align 1, !tbaa !101
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.j = load i8, ptr %.pn17.i, align 1, !tbaa !101 ; 2 uses
  %i.k = icmp slt i8 %i.f, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.l = phi i8 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.f ]
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn17.i, %bb.f ] ; 3 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.018.i.ptr, %bb.f ]
  store i8 %i.l, ptr %.sroa.04.08.i.i, align 1, !tbaa !101
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -1 ; 2 uses
  %i.m = load i8, ptr %.sroa.0.0.i.i, align 1, !tbaa !101 ; 2 uses
  %i.n = icmp slt i8 %i.f, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !1297

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.0.018.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store i8 %i.f, ptr %.sroa.04.0.lcssa.i.i, align 1, !tbaa !101
  %.pre.i = load i8, ptr %0, align 1, !tbaa !101
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i
  %i.o = phi i8 [ %i.f, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ]
  %.sroa.0.018.i.add = add nuw nsw i64 %.sroa.0.018.i.idx, 1 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.018.i.add, 16
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %bb.b, !llvm.loop !1298

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.not4.i = icmp eq ptr %i.p, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6.preheader

.lr.ph.i6.preheader:                              ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
  %i.q = sub i64 %i.a, %i.b
  %i.r = add i64 %i.a, -17
  %xtraiter = and i64 %i.q, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i6.prol.loopexit, label %.lr.ph.i6.prol

.lr.ph.i6.prol:                                   ; preds = %.lr.ph.i6.preheader
  %i.s = load i8, ptr %i.p, align 1, !tbaa !101   ; 3 uses
  %.sroa.0.07.i.i.prol = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.t = load i8, ptr %.sroa.0.07.i.i.prol, align 1, !tbaa !101 ; 2 uses
  %i.u = icmp slt i8 %i.s, %i.t
  br i1 %i.u, label %.lr.ph.i.i10.prol, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7.prol

.lr.ph.i.i10.prol:                                ; preds = %.lr.ph.i6.prol, %.lr.ph.i.i10.prol
  %i.v = phi i8 [ %i.w, %.lr.ph.i.i10.prol ], [ %i.t, %.lr.ph.i6.prol ]
  %.sroa.0.09.i.i11.prol = phi ptr [ %.sroa.0.0.i.i13.prol, %.lr.ph.i.i10.prol ], [ %.sroa.0.07.i.i.prol, %.lr.ph.i6.prol ] ; 3 uses
  %.sroa.04.08.i.i12.prol = phi ptr [ %.sroa.0.09.i.i11.prol, %.lr.ph.i.i10.prol ], [ %i.p, %.lr.ph.i6.prol ]
  store i8 %i.v, ptr %.sroa.04.08.i.i12.prol, align 1, !tbaa !101
  %.sroa.0.0.i.i13.prol = getelementptr inbounds i8, ptr %.sroa.0.09.i.i11.prol, i64 -1 ; 2 uses
  %i.w = load i8, ptr %.sroa.0.0.i.i13.prol, align 1, !tbaa !101 ; 2 uses
  %i.x = icmp slt i8 %i.s, %i.w
  br i1 %i.x, label %.lr.ph.i.i10.prol, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7.prol, !llvm.loop !1297

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7.prol: ; preds = %.lr.ph.i.i10.prol, %.lr.ph.i6.prol
  %.sroa.04.0.lcssa.i.i8.prol = phi ptr [ %i.p, %.lr.ph.i6.prol ], [ %.sroa.0.09.i.i11.prol, %.lr.ph.i.i10.prol ]
  store i8 %i.s, ptr %.sroa.04.0.lcssa.i.i8.prol, align 1, !tbaa !101
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 17
  br label %.lr.ph.i6.prol.loopexit

.lr.ph.i6.prol.loopexit:                          ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7.prol, %.lr.ph.i6.preheader
  %.sroa.0.05.i.unr = phi ptr [ %i.p, %.lr.ph.i6.preheader ], [ %i.y, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7.prol ]
  %i.z = icmp eq i64 %i.r, %i.b
  br i1 %i.z, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %.lr.ph.i6.prol.loopexit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7.1
  %.sroa.0.05.i = phi ptr [ %i.an, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7.1 ], [ %.sroa.0.05.i.unr, %.lr.ph.i6.prol.loopexit ] ; 8 uses
  %i.aa = load i8, ptr %.sroa.0.05.i, align 1, !tbaa !101 ; 3 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -1 ; 2 uses
  %i.ab = load i8, ptr %.sroa.0.07.i.i, align 1, !tbaa !101 ; 2 uses
  %i.ac = icmp slt i8 %i.aa, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i10, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7

.lr.ph.i.i10:                                     ; preds = %.lr.ph.i6, %.lr.ph.i.i10
  %i.ad = phi i8 [ %i.ae, %.lr.ph.i.i10 ], [ %i.ab, %.lr.ph.i6 ]
  %.sroa.0.09.i.i11 = phi ptr [ %.sroa.0.0.i.i13, %.lr.ph.i.i10 ], [ %.sroa.0.07.i.i, %.lr.ph.i6 ] ; 3 uses
  %.sroa.04.08.i.i12 = phi ptr [ %.sroa.0.09.i.i11, %.lr.ph.i.i10 ], [ %.sroa.0.05.i, %.lr.ph.i6 ]
  store i8 %i.ad, ptr %.sroa.04.08.i.i12, align 1, !tbaa !101
  %.sroa.0.0.i.i13 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i11, i64 -1 ; 2 uses
  %i.ae = load i8, ptr %.sroa.0.0.i.i13, align 1, !tbaa !101 ; 2 uses
  %i.af = icmp slt i8 %i.aa, %i.ae
  br i1 %i.af, label %.lr.ph.i.i10, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7, !llvm.loop !1297

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7: ; preds = %.lr.ph.i.i10, %.lr.ph.i6
  %.sroa.04.0.lcssa.i.i8 = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.09.i.i11, %.lr.ph.i.i10 ]
  store i8 %i.aa, ptr %.sroa.04.0.lcssa.i.i8, align 1, !tbaa !101
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 1 ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !101 ; 3 uses
  %i.ai = load i8, ptr %.sroa.0.05.i, align 1, !tbaa !101 ; 2 uses
  %i.aj = icmp slt i8 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph.i.i10.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7.1

.lr.ph.i.i10.1:                                   ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7, %.lr.ph.i.i10.1
  %i.ak = phi i8 [ %i.al, %.lr.ph.i.i10.1 ], [ %i.ai, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7 ]
  %.sroa.0.09.i.i11.1 = phi ptr [ %.sroa.0.0.i.i13.1, %.lr.ph.i.i10.1 ], [ %.sroa.0.05.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7 ] ; 3 uses
  %.sroa.04.08.i.i12.1 = phi ptr [ %.sroa.0.09.i.i11.1, %.lr.ph.i.i10.1 ], [ %i.ag, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7 ]
  store i8 %i.ak, ptr %.sroa.04.08.i.i12.1, align 1, !tbaa !101
  %.sroa.0.0.i.i13.1 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i11.1, i64 -1 ; 2 uses
  %i.al = load i8, ptr %.sroa.0.0.i.i13.1, align 1, !tbaa !101 ; 2 uses
  %i.am = icmp slt i8 %i.ah, %i.al
  br i1 %i.am, label %.lr.ph.i.i10.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7.1, !llvm.loop !1297

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7.1: ; preds = %.lr.ph.i.i10.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7
  %.sroa.04.0.lcssa.i.i8.1 = phi ptr [ %i.ag, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7 ], [ %.sroa.0.09.i.i11.1, %.lr.ph.i.i10.1 ]
  store i8 %i.ah, ptr %.sroa.04.0.lcssa.i.i8.1, align 1, !tbaa !101
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 2 ; 2 uses
  %.not.i9.1 = icmp eq ptr %i.an, %1
  br i1 %.not.i9.1, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6, !llvm.loop !1299

bb.h:                                             ; preds = %bb.a
  %i.ao = icmp eq ptr %0, %1
  br i1 %i.ao, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.preheader.i14

.preheader.i14:                                   ; preds = %bb.h
  %.sroa.0.015.i15 = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %.not16.i16 = icmp eq ptr %.sroa.0.015.i15, %1
  br i1 %.not16.i16, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %.preheader.i14
  %.pre20.i18 = load i8, ptr %0, align 1, !tbaa !101
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i17
  %i.ap = phi i8 [ %.pre20.i18, %.lr.ph.i17 ], [ %i.bc, %bb.o ] ; 2 uses
  %.sroa.0.018.i19 = phi ptr [ %.sroa.0.015.i15, %.lr.ph.i17 ], [ %.sroa.0.0.i24, %bb.o ] ; 6 uses
  %.pn17.i20 = phi ptr [ %0, %.lr.ph.i17 ], [ %.sroa.0.018.i19, %bb.o ] ; 3 uses
  %i.aq = load i8, ptr %.sroa.0.018.i19, align 1, !tbaa !101 ; 6 uses
  %i.ar = icmp slt i8 %i.aq, %i.ap
  br i1 %i.ar, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.as = ptrtoint ptr %.sroa.0.018.i19 to i64
  %i.at = sub i64 %i.as, %i.b                     ; 3 uses
  %i.au = icmp sgt i64 %i.at, 1
  br i1 %i.au, label %bb.k, label %bb.l, !prof !133

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.015.i15, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.at, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i30

bb.l:                                             ; preds = %bb.j
  %i.av = icmp eq i64 %i.at, 1
  br i1 %i.av, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i30

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn17.i20, i64 1
  store i8 %i.ap, ptr %i.aw, align 1, !tbaa !101
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i30

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i30: ; preds = %bb.m, %bb.l, %bb.k
  store i8 %i.aq, ptr %0, align 1, !tbaa !101
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.ax = load i8, ptr %.pn17.i20, align 1, !tbaa !101 ; 2 uses
  %i.ay = icmp slt i8 %i.aq, %i.ax
  br i1 %i.ay, label %.lr.ph.i.i26, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i21

.lr.ph.i.i26:                                     ; preds = %bb.n, %.lr.ph.i.i26
  %i.az = phi i8 [ %i.ba, %.lr.ph.i.i26 ], [ %i.ax, %bb.n ]
  %.sroa.0.09.i.i27 = phi ptr [ %.sroa.0.0.i.i29, %.lr.ph.i.i26 ], [ %.pn17.i20, %bb.n ] ; 3 uses
  %.sroa.04.08.i.i28 = phi ptr [ %.sroa.0.09.i.i27, %.lr.ph.i.i26 ], [ %.sroa.0.018.i19, %bb.n ]
  store i8 %i.az, ptr %.sroa.04.08.i.i28, align 1, !tbaa !101
  %.sroa.0.0.i.i29 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i27, i64 -1 ; 2 uses
  %i.ba = load i8, ptr %.sroa.0.0.i.i29, align 1, !tbaa !101 ; 2 uses
  %i.bb = icmp slt i8 %i.aq, %i.ba
  br i1 %i.bb, label %.lr.ph.i.i26, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i21, !llvm.loop !1297

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i21: ; preds = %.lr.ph.i.i26, %bb.n
  %.sroa.04.0.lcssa.i.i22 = phi ptr [ %.sroa.0.018.i19, %bb.n ], [ %.sroa.0.09.i.i27, %.lr.ph.i.i26 ]
  store i8 %i.aq, ptr %.sroa.04.0.lcssa.i.i22, align 1, !tbaa !101
  %.pre.i23 = load i8, ptr %0, align 1, !tbaa !101
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i21, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i30
  %i.bc = phi i8 [ %i.aq, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i30 ], [ %.pre.i23, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i21 ]
  %.sroa.0.0.i24 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i19, i64 1 ; 2 uses
  %.not.i25 = icmp eq ptr %.sroa.0.0.i24, %1
  br i1 %.not.i25, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %bb.i, !llvm.loop !1298

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %bb.o, %.lr.ph.i6.prol.loopexit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7.1, %.preheader.i14, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 5 uses
  %i.d = icmp slt i64 %.fr, 2
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i64 %.fr, -2                     ; 2 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = add nsw i64 %.fr, -1
  %i.h = lshr i64 %i.g, 1                         ; 4 uses
  %i.i = and i64 %.fr, 1
  %i.j = icmp eq i64 %i.i, 0
  %i.k = lshr exact i64 %i.e, 1                   ; 2 uses
  br i1 %i.j, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = add nsw i64 %.fr, -1                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us
  %.08.us = phi i64 [ %i.aj, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us ], [ %i.f, %bb.b ] ; 8 uses
  %i.n = getelementptr inbounds i8, ptr %0, i64 %.08.us
  %i.o = load i8, ptr %i.n, align 1, !tbaa !101   ; 2 uses
  %i.p = icmp slt i64 %.08.us, %i.h
  br i1 %i.p, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.035.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.08.us, %.split.us ] ; 2 uses
  %i.q = shl i64 %.035.i.us, 1                    ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t
  %i.v = load i8, ptr %i.s, align 1, !tbaa !101
  %i.w = load i8, ptr %i.u, align 1, !tbaa !101
  %i.x = icmp slt i8 %i.v, %i.w
  %spec.select.i.us = select i1 %i.x, i64 %i.t, i64 %i.r ; 6 uses
  %i.y = getelementptr inbounds i8, ptr %0, i64 %spec.select.i.us
  %i.z = load i8, ptr %i.y, align 1, !tbaa !101
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %.035.i.us
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !101
  %i.ab = icmp slt i64 %spec.select.i.us, %i.h
  br i1 %i.ab, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !29

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ac = icmp sgt i64 %spec.select.i.us, %.08.us
  br i1 %i.ac, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.0920.i.i.us
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !101 ; 2 uses
  %i.af = icmp slt i8 %i.ae, %i.o
  br i1 %i.af, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.i.us
  store i8 %i.ae, ptr %i.ag, align 1, !tbaa !101
  %i.ah = icmp sgt i64 %.0920.i.i.us, %.08.us
  br i1 %i.ah, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, !llvm.loop !30

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.08.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i.i.us
  store i8 %i.o, ptr %i.ai, align 1, !tbaa !101
  %.not.us = icmp eq i64 %.08.us, 0
  %i.aj = add nsw i64 %.08.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !1300

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit
  %.08 = phi i64 [ %i.bi, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit ], [ %i.f, %.split.preheader ] ; 8 uses
  %i.ak = getelementptr inbounds i8, ptr %0, i64 %.08
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !101 ; 2 uses
  %i.am = icmp slt i64 %.08, %i.h
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.035.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %.split ] ; 2 uses
  %i.an = shl i64 %.035.i, 1                      ; 2 uses
  %i.ao = add i64 %i.an, 2                        ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %0, i64 %i.ao
  %i.aq = or disjoint i64 %i.an, 1                ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.aq
  %i.as = load i8, ptr %i.ap, align 1, !tbaa !101
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !101
  %i.au = icmp slt i8 %i.as, %i.at
  %spec.select.i = select i1 %i.au, i64 %i.aq, i64 %i.ao ; 4 uses
  %i.av = getelementptr inbounds i8, ptr %0, i64 %spec.select.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !101
  %i.ax = getelementptr inbounds i8, ptr %0, i64 %.035.i
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !101
  %i.ay = icmp slt i64 %spec.select.i, %i.h
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !29

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.08, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.az = icmp eq i64 %.0.lcssa.i, %i.k
  br i1 %i.az, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.ba = load i8, ptr %i.l, align 1, !tbaa !101
  store i8 %i.ba, ptr %i.m, align 1, !tbaa !101
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bb = icmp sgt i64 %.1.i, %.08
  br i1 %i.bb, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %.0920.i.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !101 ; 2 uses
  %i.be = icmp slt i8 %i.bd, %i.al
  br i1 %i.be, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.i
  store i8 %i.bd, ptr %i.bf, align 1, !tbaa !101
  %i.bg = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, !llvm.loop !30

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i.i
  store i8 %i.al, ptr %i.bh, align 1, !tbaa !101
  %.not = icmp eq i64 %.08, 0
  %i.bi = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !1300

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #31

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZZNKSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE8_M_applyEcSt17integral_constantIbLb0EEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !561    ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !562   ; 6 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.a, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.k = lshr i64 %.016.i.i, 1                    ; 3 uses
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i.i, i64 %i.k ; 2 uses
  %i.l = load i8, ptr %.sink.i.i.i, align 1, !tbaa !101
  %i.m = icmp slt i8 %i.l, %i.f                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 1
  %i.o = xor i64 %i.k, -1
  %i.p = add nsw i64 %.016.i.i, %i.o
  %.sroa.011.1.i.i = select i1 %i.m, ptr %i.n, ptr %.sroa.011.015.i.i ; 2 uses
  %.1.i.i = select i1 %i.m, i64 %i.p, i64 %i.k    ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i, !llvm.loop !31

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.a
  %.sroa.011.0.lcssa.i.i = phi ptr [ %i.b, %bb.a ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.011.0.lcssa.i.i, %i.d
  br i1 %.not.i, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit

_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i
  %i.r = load i8, ptr %.sroa.011.0.lcssa.i.i, align 1, !tbaa !101
  %.not = icmp slt i8 %i.f, %i.r
  br i1 %.not, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread

_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !563  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !563  ; 2 uses
  %.not4953 = icmp eq ptr %i.t, %i.v
  br i1 %.not4953, label %.critedge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.043.054, i64 2 ; 2 uses
  %.not49 = icmp eq ptr %i.w, %i.v
  br i1 %.not49, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread, %bb.b
  %.sroa.043.054 = phi ptr [ %i.w, %bb.b ], [ %i.t, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread ] ; 3 uses
  %i.x = load i8, ptr %.sroa.043.054, align 1, !tbaa !472
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.043.054, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !473
  %i.aa = icmp sle i8 %i.x, %i.f
  %i.ab = icmp sle i8 %i.f, %i.z
  %i.ac = and i1 %i.aa, %i.ab
  br i1 %i.ac, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread, label %bb.b

.critedge:                                        ; preds = %bb.b, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !556, !nonnull !62, !align !388
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.08.0.copyload = load i32, ptr %i.af, align 8 ; 2 uses
  %i.ag = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #37
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !419
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !423
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ag
end_hunk_0
begin_hunk_1_@_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_:bb.a
bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #43 ; 4 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !345
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !142
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !342
  %i.aq = load i32, ptr %1, align 4, !tbaa !52
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !52
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !339
  store ptr %i.am, ptr %i.o, align 8, !tbaa !340
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !341
  store ptr %i.am, ptr %i.a, align 8, !tbaa !342
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !345  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !344  ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !337  ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !338
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !133

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !142
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !142
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !133

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !142
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !142
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit, !prof !102

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #39
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #39
  unreachable

_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #43 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !344 ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !345
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.o, label %bb.p, !prof !133

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.q, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24

bb.q:                                             ; preds = %bb.p
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !142
  store ptr %i.be, ptr %i.av, align 8, !tbaa !142
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24

_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24:              ; preds = %bb.o, %bb.p, %bb.q
  %i.bf = load ptr, ptr %0, align 8, !tbaa !338
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !337
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #40
  store ptr %i.aq, ptr %0, align 8, !tbaa !338
  store i64 %i.am, ptr %i.k, align 8, !tbaa !337
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit:                ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !339
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !142  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !340
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 512
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !341
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !339
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !142 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !340
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !341
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN4UFAR11UfarManager10InitializeEP10Wlc_Ntk_t_RKSt3setIjSt4lessIjESaIjEEE3$_2EEEvT_SO_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #33 {
bb.a:
  %.fr30 = freeze ptr %1                          ; 3 uses
  %.fr29 = freeze ptr %0                          ; 36 uses
  %i.a = ptrtoint ptr %.fr29 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr30 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN4UFAR11UfarManager10InitializeEP10Wlc_Ntk_t_RKSt3setIjSt4lessIjESaIjEEE3$_2EEEvT_SO_SO_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr29, i64 8 ; 4 uses
  %i.g = getelementptr i8, ptr %.fr29, i64 12     ; 2 uses
  %i.h = getelementptr i8, ptr %.fr29, i64 4      ; 12 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph48

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN4UFAR11UfarManager10InitializeEP10Wlc_Ntk_t_RKSt3setIjSt4lessIjESaIjEEE3$_2EEET_SO_SO_T0_.exit"
  %i.j = icmp eq i64 %i.cp, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph48, !llvm.loop !1545

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i28.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.ej, %bb.b ] ; 3 uses
  %storemerge26.lcssa = phi ptr [ %.fr30, %.lr.ph ], [ %.sroa.015.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i.i28.lcssa, 3             ; 2 uses
  %i.l = add nsw i64 %i.k, -2
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1                     ; 3 uses
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i.i28.lcssa, 8
  %i.q = icmp eq i64 %i.p, 0
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.n
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN4UFAR11UfarManager10InitializeEP10Wlc_Ntk_t_RKSt3setIjSt4lessIjESaIjEEE3$_2EEEvT_T0_SP_T1_T2_.exit.i.i.i", %._crit_edge
  %.010.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.av, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN4UFAR11UfarManager10InitializeEP10Wlc_Ntk_t_RKSt3setIjSt4lessIjESaIjEEE3$_2EEEvT_T0_SP_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.010.i.i.i
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.t, align 4 ; 3 uses
  %i.u = icmp slt i64 %.010.i.i.i, %i.o
  br i1 %i.u, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.036.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.036.i.i.i.i, 1                 ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.w ; 2 uses
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.y ; 2 uses
  %.val.i.i.i.i.i = load i32, ptr %i.x, align 4, !tbaa !347 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.x, i64 4
  %.val1.i.i.i.i.i = load i32, ptr %i.aa, align 4
  %.val2.i.i.i.i.i = load i32, ptr %i.z, align 4, !tbaa !347 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 4
  %.val3.i.i.i.i.i = load i32, ptr %i.ab, align 4
  %.not.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i, %.val2.i.i.i.i.i
  %i.ac = icmp slt i32 %.val.i.i.i.i.i, %.val2.i.i.i.i.i
  %i.ad = icmp slt i32 %.val1.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.ae = select i1 %.not.i.i.i.i.i.i, i1 %i.ad, i1 %i.ac
  %spec.select.i.i.i.i = select i1 %i.ae, i64 %i.y, i64 %i.w ; 4 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i.i
  %i.ag = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.036.i.i.i.i
  %i.ah = load <2 x i32>, ptr %i.af, align 4, !tbaa !52
  store <2 x i32> %i.ah, ptr %i.ag, align 4, !tbaa !52
  %i.ai = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ai, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1546

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.aj = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  %or.cond.i.i.i = select i1 %i.q, i1 %i.aj, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ak = load <2 x i32>, ptr %i.r, align 4, !tbaa !52
  store <2 x i32> %i.ak, ptr %i.s, align 4, !tbaa !52
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.n, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.sroa.03.0.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.03.0.copyload.i.i.i to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.03.0.copyload.i.i.i, 32
  %.sroa.3.0.extract.trunc.i.i.i.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i.i.i to i32
  %i.al = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.al, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN4UFAR11UfarManager10InitializeEP10Wlc_Ntk_t_RKSt3setIjSt4lessIjESaIjEEE3$_2EEEvT_T0_SP_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i = load i32, ptr %i.am, align 4, !tbaa !347 ; 3 uses
  %i.an = getelementptr i8, ptr %i.am, i64 4
  %.val2.i.i.i.i.i.i = load i32, ptr %i.an, align 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i, %.sroa.03.0.extract.trunc.i.i.i.i.i
  %i.ao = icmp slt i32 %.val.i.i.i.i.i.i, %.sroa.03.0.extract.trunc.i.i.i.i.i
  %i.ap = icmp slt i32 %.val2.i.i.i.i.i.i, %.sroa.3.0.extract.trunc.i.i.i.i.i
  %i.aq = select i1 %.not.i.i.i.i.i.i.i, i1 %i.ap, i1 %i.ao
  br i1 %i.aq, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN4UFAR11UfarManager10InitializeEP10Wlc_Ntk_t_RKSt3setIjSt4lessIjESaIjEEE3$_2EEEvT_T0_SP_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i.i ; 2 uses
  store i32 %.val.i.i.i.i.i.i, ptr %i.ar, align 4, !tbaa !347
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 %.val2.i.i.i.i.i.i, ptr %i.as, align 4, !tbaa !348
  %i.at = icmp sgt i64 %.0911.i.i.i.i.i, %.010.i.i.i
  br i1 %i.at, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN4UFAR11UfarManager10InitializeEP10Wlc_Ntk_t_RKSt3setIjSt4lessIjESaIjEEE3$_2EEEvT_T0_SP_T1_T2_.exit.i.i.i", !llvm.loop !1547

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN4UFAR11UfarManager10InitializeEP10Wlc_Ntk_t_RKSt3setIjSt4lessIjESaIjEEE3$_2EEEvT_T0_SP_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i.i
  store i64 %.sroa.03.0.copyload.i.i.i, ptr %i.au, align 4
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.av = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN4UFAR11UfarManager10InitializeEP10Wlc_Ntk_t_RKSt3setIjSt4lessIjESaIjEEE3$_2EEEvT_SO_RT0_.exit.i.i", label %bb.c, !llvm.loop !1548

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN4UFAR11UfarManager10InitializeEP10Wlc_Ntk_t_RKSt3setIjSt4lessIjESaIjEEE3$_2EEEvT_SO_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN4UFAR11UfarManager10InitializeEP10Wlc_Ntk_t_RKSt3setIjSt4lessIjESaIjEEE3$_2EEEvT_T0_SP_T1_T2_.exit.i.i.i"
  %i.aw = icmp sgt i64 %.fr.i.i28.lcssa, 8
  br i1 %i.aw, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN4UFAR11UfarManager10InitializeEP10Wlc_Ntk_t_RKSt3setIjSt4lessIjESaIjEEE3$_2EEEvT_SO_SO_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN4UFAR11UfarManager10InitializeEP10Wlc_Ntk_t_RKSt3setIjSt4lessIjESaIjEEE3$_2EEEvT_SO_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN4UFAR11UfarManager10InitializeEP10Wlc_Ntk_t_RKSt3setIjSt4lessIjESaIjEEE3$_2EEEvT_SO_SO_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.ax, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN4UFAR11UfarManager10InitializeEP10Wlc_Ntk_t_RKSt3setIjSt4lessIjESaIjEEE3$_2EEEvT_SO_SO_RT0_.exit.i.i" ], [ %storemerge26.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN4UFAR11UfarManager10InitializeEP10Wlc_Ntk_t_RKSt3setIjSt4lessIjESaIjEEE3$_2EEEvT_SO_RT0_.exit.i.i" ] ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load i64, ptr %i.ax, align 4 ; 3 uses
  %i.ay = load i32, ptr %.fr29, align 4, !tbaa !52
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !347
  %i.az = load i32, ptr %i.h, align 4, !tbaa !52
  %i.ba = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -4
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !348
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.bb, %i.a                     ; 3 uses
  %i.bd = ashr exact i64 %i.bc, 3                 ; 3 uses
  %i.be = add nsw i64 %i.bd, -1
  %i.bf = lshr i64 %i.be, 1
  %i.bg = icmp sgt i64 %i.bd, 2
  br i1 %i.bg, label %.lr.ph.i.i.i21.i, label %._crit_edge.i.i.i11.i

.lr.ph.i.i.i21.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i21.i
  %.036.i.i.i22.i = phi i64 [ %spec.select.i.i.i28.i, %.lr.ph.i.i.i21.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bh = shl i64 %.036.i.i.i22.i, 1              ; 2 uses
  %i.bi = add i64 %i.bh, 2                        ; 2 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.bi ; 2 uses
  %i.bk = or disjoint i64 %i.bh, 1                ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.bk ; 2 uses
  %.val.i.i.i.i23.i = load i32, ptr %i.bj, align 4, !tbaa !347 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bj, i64 4
  %.val1.i.i.i.i24.i = load i32, ptr %i.bm, align 4
  %.val2.i.i.i.i25.i = load i32, ptr %i.bl, align 4, !tbaa !347 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bl, i64 4
  %.val3.i.i.i.i26.i = load i32, ptr %i.bn, align 4
  %.not.i.i.i.i.i27.i = icmp eq i32 %.val.i.i.i.i23.i, %.val2.i.i.i.i25.i
  %i.bo = icmp slt i32 %.val.i.i.i.i23.i, %.val2.i.i.i.i25.i
  %i.bp = icmp slt i32 %.val1.i.i.i.i24.i, %.val3.i.i.i.i26.i
  %i.bq = select i1 %.not.i.i.i.i.i27.i, i1 %i.bp, i1 %i.bo
  %spec.select.i.i.i28.i = select i1 %i.bq, i64 %i.bk, i64 %i.bi ; 4 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i28.i
  %i.bs = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.036.i.i.i22.i
  %i.bt = load <2 x i32>, ptr %i.br, align 4, !tbaa !52
  store <2 x i32> %i.bt, ptr %i.bs, align 4, !tbaa !52
  %i.bu = icmp slt i64 %spec.select.i.i.i28.i, %i.bf
  br i1 %i.bu, label %.lr.ph.i.i.i21.i, label %._crit_edge.i.i.i11.i, !llvm.loop !1546

._crit_edge.i.i.i11.i:                            ; preds = %.lr.ph.i.i.i21.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i12.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i28.i, %.lr.ph.i.i.i21.i ] ; 5 uses
  %i.bv = and i64 %i.bc, 8
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i11.i
  %i.bx = add nsw i64 %i.bd, -2
  %i.by = ashr exact i64 %i.bx, 1
  %i.bz = icmp eq i64 %.0.lcssa.i.i.i12.i, %i.by
  br i1 %i.bz, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.ca = shl nuw nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.cb = or disjoint i64 %i.ca, 1                ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.cb
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i12.i
  %i.ce = load <2 x i32>, ptr %i.cc, align 4, !tbaa !52
  store <2 x i32> %i.ce, ptr %i.cd, align 4, !tbaa !52
  br label %.lr.ph.i.i.preheader.i.i.i

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i11.i
  %.not.i.i13.i = icmp eq i64 %.0.lcssa.i.i.i12.i, 0
  br i1 %.not.i.i13.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN4UFAR11UfarManager10InitializeEP10Wlc_Ntk_t_RKSt3setIjSt4lessIjESaIjEEE3$_2EEEvT_SO_SO_RT0_.exit.i.i", label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.h, %.thread.i.i.i
  %.1.i13.i.i.i = phi i64 [ %i.cb, %.thread.i.i.i ], [ %.0.lcssa.i.i.i12.i, %bb.h ]
  %.sroa.03.0.extract.trunc.i.i14.i.i.i = trunc i64 %.sroa.03.0.copyload.i.i10.i to i32 ; 2 uses
  %.sroa.3.0.extract.trunc.i.i15.in.i.i.i = lshr i64 %.sroa.03.0.copyload.i.i10.i, 32
  %.sroa.3.0.extract.trunc.i.i15.i.i.i = trunc nuw i64 %.sroa.3.0.extract.trunc.i.i15.in.i.i.i to i32
  br label %.lr.ph.i.i.i.i14.i

.lr.ph.i.i.i.i14.i:                               ; preds = %bb.i, %.lr.ph.i.i.preheader.i.i.i
  %.010.i.i.i.i15.i = phi i64 [ %.0911.i.i56.i.i.i, %bb.i ], [ %.1.i13.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 3 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i56.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i56.i.i.i ; 2 uses
  %.val.i.i.i.i.i17.i = load i32, ptr %i.cf, align 4, !tbaa !347 ; 3 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 4
  %.val2.i.i.i.i.i18.i = load i32, ptr %i.cg, align 4 ; 2 uses
  %.not.i.i.i.i.i.i19.i = icmp eq i32 %.val.i.i.i.i.i17.i, %.sroa.03.0.extract.trunc.i.i14.i.i.i
  %i.ch = icmp slt i32 %.val.i.i.i.i.i17.i, %.sroa.03.0.extract.trunc.i.i14.i.i.i
  %i.ci = icmp slt i32 %.val2.i.i.i.i.i18.i, %.sroa.3.0.extract.trunc.i.i15.i.i.i
  %i.cj = select i1 %.not.i.i.i.i.i.i19.i, i1 %i.ci, i1 %i.ch
  br i1 %i.cj, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN4UFAR11UfarManager10InitializeEP10Wlc_Ntk_t_RKSt3setIjSt4lessIjESaIjEEE3$_2EEEvT_SO_SO_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i14.i
  %i.ck = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i15.i ; 2 uses
  store i32 %.val.i.i.i.i.i17.i, ptr %i.ck, align 4, !tbaa !347
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i32 %.val2.i.i.i.i.i18.i, ptr %i.cl, align 4, !tbaa !348
  %.not7.i.i.i = icmp eq i64 %.0911.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN4UFAR11UfarManager10InitializeEP10Wlc_Ntk_t_RKSt3setIjSt4lessIjESaIjEEE3$_2EEEvT_SO_SO_RT0_.exit.i.i", label %.lr.ph.i.i.i.i14.i, !llvm.loop !1547

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN4UFAR11UfarManager10InitializeEP10Wlc_Ntk_t_RKSt3setIjSt4lessIjESaIjEEE3$_2EEEvT_SO_SO_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i14.i, %bb.h
  %.0.lcssa.i.i.i.i20.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i15.i, %.lr.ph.i.i.i.i14.i ], [ 0, %bb.i ]
  %i.cm = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i20.i
  store i64 %.sroa.03.0.copyload.i.i10.i, ptr %i.cm, align 4
  %i.cn = icmp sgt i64 %i.bc, 8
  br i1 %i.cn, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN4UFAR11UfarManager10InitializeEP10Wlc_Ntk_t_RKSt3setIjSt4lessIjESaIjEEE3$_2EEEvT_SO_SO_T0_.exit", !llvm.loop !1549

.lr.ph48:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2647 = phi ptr [ %.sroa.015.1.i.i, %bb.b ], [ %.fr30, %.lr.ph ] ; 4 uses
  %.02746 = phi i64 [ %i.cp, %bb.b ], [ %2, %.lr.ph ]
  %i.co = phi i64 [ %i.ek, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cp = add nsw i64 %.02746, -1                 ; 3 uses
  %i.cq = lshr i64 %i.co, 1
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.cq ; 4 uses
  %i.cs = getelementptr inbounds i8, ptr %storemerge2647, i64 -8 ; 3 uses
  %.val.i.i.i = load i32, ptr %i.f, align 4, !tbaa !347 ; 8 uses
  %.val1.i.i.i = load i32, ptr %i.g, align 4      ; 5 uses
  %.val2.i.i.i = load i32, ptr %i.cr, align 4, !tbaa !347 ; 8 uses
  %i.ct = getelementptr i8, ptr %i.cr, i64 4      ; 2 uses
  %.val3.i.i.i = load i32, ptr %i.ct, align 4     ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i, %.val2.i.i.i
  %i.cu = icmp slt i32 %.val.i.i.i, %.val2.i.i.i
  %i.cv = icmp slt i32 %.val1.i.i.i, %.val3.i.i.i
  %i.cw = select i1 %.not.i.i.i.i, i1 %i.cv, i1 %i.cu
  %.val2.i28.i.i = load i32, ptr %i.cs, align 4, !tbaa !347 ; 10 uses
  %i.cx = getelementptr i8, ptr %storemerge2647, i64 -4 ; 5 uses
  %.val3.i29.i.i = load i32, ptr %i.cx, align 4   ; 4 uses
  br i1 %i.cw, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph48
  %.not.i.i30.i.i = icmp eq i32 %.val2.i.i.i, %.val2.i28.i.i
  %i.cy = icmp slt i32 %.val2.i.i.i, %.val2.i28.i.i
  %i.cz = icmp slt i32 %.val3.i.i.i, %.val3.i29.i.i
  %i.da = select i1 %.not.i.i30.i.i, i1 %i.cz, i1 %i.cy
  br i1 %i.da, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.db = load <2 x i32>, ptr %.fr29, align 4, !tbaa !52
  store i32 %.val2.i.i.i, ptr %.fr29, align 4, !tbaa !52
  store i32 %.val3.i.i.i, ptr %i.h, align 4, !tbaa !52
  store <2 x i32> %i.db, ptr %i.cr, align 4, !tbaa !52
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN4UFAR11UfarManager10InitializeEP10Wlc_Ntk_t_RKSt3setIjSt4lessIjESaIjEEE3$_2EEEvT_SO_SO_SO_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %.not.i.i35.i.i = icmp eq i32 %.val.i.i.i, %.val2.i28.i.i
  %i.dc = icmp slt i32 %.val.i.i.i, %.val2.i28.i.i
  %i.dd = icmp slt i32 %.val1.i.i.i, %.val3.i29.i.i
  %i.de = select i1 %.not.i.i35.i.i, i1 %i.dd, i1 %i.dc
  %i.df = load i32, ptr %.fr29, align 4, !tbaa !52 ; 2 uses
  br i1 %i.de, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %.val2.i28.i.i, ptr %.fr29, align 4, !tbaa !52
  store i32 %i.df, ptr %i.cs, align 4, !tbaa !52
  %i.dg = load i32, ptr %i.h, align 4, !tbaa !52
  %i.dh = load i32, ptr %i.cx, align 4, !tbaa !52
  store i32 %i.dh, ptr %i.h, align 4, !tbaa !52
  store i32 %i.dg, ptr %i.cx, align 4, !tbaa !52
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN4UFAR11UfarManager10InitializeEP10Wlc_Ntk_t_RKSt3setIjSt4lessIjESaIjEEE3$_2EEEvT_SO_SO_SO_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  store i32 %.val.i.i.i, ptr %.fr29, align 4, !tbaa !52
  store i32 %i.df, ptr %i.f, align 4, !tbaa !52
  %i.di = load i32, ptr %i.h, align 4, !tbaa !52
end_hunk_1
begin_hunk_2_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_:bb.a
bb.r:                                             ; preds = %bb.q
  store i32 %i.bo, ptr %.sroa.010.1.i.i, align 4, !tbaa !52
  store i32 %i.bl, ptr %.sroa.0.1.i.i, align 4, !tbaa !52
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i, !llvm.loop !1557

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1742, i64 noundef %i.au)
  %i.br = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.bs = sub i64 %i.br, %i.a
  %i.bt = ashr exact i64 %i.bs, 2                 ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 16
  br i1 %i.bu, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !1553

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre20.i = load i32, ptr %0, align 4, !tbaa !52
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %i.e = phi i32 [ %.pre20.i, %.lr.ph.i ], [ %i.o, %bb.g ] ; 2 uses
  %.sroa.0.018.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.018.i.add, %bb.g ] ; 4 uses
  %.pn17.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.018.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.018.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.018.i.idx ; 4 uses
  %i.f = load i32, ptr %.sroa.0.018.i.ptr, align 4, !tbaa !52 ; 6 uses
  %i.g = icmp slt i32 %i.f, %i.e
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %.sroa.0.018.i.idx, 4
  br i1 %i.h, label %bb.d, label %bb.e, !prof !133

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.018.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 4
  store i32 %i.e, ptr %i.i, align 4, !tbaa !52
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  store i32 %i.f, ptr %0, align 4, !tbaa !52
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.j = load i32, ptr %.pn17.i, align 4, !tbaa !52 ; 2 uses
  %i.k = icmp slt i32 %i.f, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.l = phi i32 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.f ]
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn17.i, %bb.f ] ; 3 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.018.i.ptr, %bb.f ]
  store i32 %i.l, ptr %.sroa.04.08.i.i, align 4, !tbaa !52
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -4 ; 2 uses
  %i.m = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !52 ; 2 uses
  %i.n = icmp slt i32 %i.f, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !1558

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.0.018.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store i32 %i.f, ptr %.sroa.04.0.lcssa.i.i, align 4, !tbaa !52
  %.pre.i = load i32, ptr %0, align 4, !tbaa !52
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.o = phi i32 [ %i.f, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ]
  %.sroa.0.018.i.add = add nuw nsw i64 %.sroa.0.018.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.018.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %bb.b, !llvm.loop !1559

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not4.i = icmp eq ptr %i.p, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7
  %.sroa.0.05.i = phi ptr [ %i.w, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7 ], [ %i.p, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit ] ; 5 uses
  %i.q = load i32, ptr %.sroa.0.05.i, align 4, !tbaa !52 ; 3 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -4 ; 2 uses
  %i.r = load i32, ptr %.sroa.0.07.i.i, align 4, !tbaa !52 ; 2 uses
  %i.s = icmp slt i32 %i.q, %i.r
  br i1 %i.s, label %.lr.ph.i.i10, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7

.lr.ph.i.i10:                                     ; preds = %.lr.ph.i6, %.lr.ph.i.i10
  %i.t = phi i32 [ %i.u, %.lr.ph.i.i10 ], [ %i.r, %.lr.ph.i6 ]
  %.sroa.0.09.i.i11 = phi ptr [ %.sroa.0.0.i.i13, %.lr.ph.i.i10 ], [ %.sroa.0.07.i.i, %.lr.ph.i6 ] ; 3 uses
  %.sroa.04.08.i.i12 = phi ptr [ %.sroa.0.09.i.i11, %.lr.ph.i.i10 ], [ %.sroa.0.05.i, %.lr.ph.i6 ]
  store i32 %i.t, ptr %.sroa.04.08.i.i12, align 4, !tbaa !52
  %.sroa.0.0.i.i13 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i11, i64 -4 ; 2 uses
  %i.u = load i32, ptr %.sroa.0.0.i.i13, align 4, !tbaa !52 ; 2 uses
  %i.v = icmp slt i32 %i.q, %i.u
  br i1 %i.v, label %.lr.ph.i.i10, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7, !llvm.loop !1558

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7: ; preds = %.lr.ph.i.i10, %.lr.ph.i6
  %.sroa.04.0.lcssa.i.i8 = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.09.i.i11, %.lr.ph.i.i10 ]
  store i32 %i.q, ptr %.sroa.04.0.lcssa.i.i8, align 4, !tbaa !52
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 4 ; 2 uses
  %.not.i9 = icmp eq ptr %i.w, %1
  br i1 %.not.i9, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6, !llvm.loop !1560

bb.h:                                             ; preds = %bb.a
  %i.x = icmp eq ptr %0, %1
  br i1 %i.x, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.preheader.i14

.preheader.i14:                                   ; preds = %bb.h
  %.sroa.0.015.i15 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not16.i16 = icmp eq ptr %.sroa.0.015.i15, %1
  br i1 %.not16.i16, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %.preheader.i14
  %.pre20.i18 = load i32, ptr %0, align 4, !tbaa !52
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i17
  %i.y = phi i32 [ %.pre20.i18, %.lr.ph.i17 ], [ %i.ap, %bb.o ] ; 2 uses
  %.sroa.0.018.i19 = phi ptr [ %.sroa.0.015.i15, %.lr.ph.i17 ], [ %.sroa.0.0.i24, %bb.o ] ; 6 uses
  %.pn17.i20 = phi ptr [ %0, %.lr.ph.i17 ], [ %.sroa.0.018.i19, %bb.o ] ; 4 uses
  %i.z = load i32, ptr %.sroa.0.018.i19, align 4, !tbaa !52 ; 6 uses
  %i.aa = icmp slt i32 %i.z, %i.y
  br i1 %i.aa, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ab = ptrtoint ptr %.sroa.0.018.i19 to i64
  %i.ac = sub i64 %i.ab, %i.b                     ; 3 uses
  %i.ad = ashr exact i64 %i.ac, 2                 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 1
  br i1 %i.ae, label %bb.k, label %bb.l, !prof !133

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %.pn17.i20, i64 8
  %i.ag = sub nsw i64 0, %i.ad
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ah, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ac, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i30

bb.l:                                             ; preds = %bb.j
  %i.ai = icmp eq i64 %i.ac, 4
  br i1 %i.ai, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i30

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn17.i20, i64 4
  store i32 %i.y, ptr %i.aj, align 4, !tbaa !52
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i30

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i30: ; preds = %bb.m, %bb.l, %bb.k
  store i32 %i.z, ptr %0, align 4, !tbaa !52
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.ak = load i32, ptr %.pn17.i20, align 4, !tbaa !52 ; 2 uses
  %i.al = icmp slt i32 %i.z, %i.ak
  br i1 %i.al, label %.lr.ph.i.i26, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i21

.lr.ph.i.i26:                                     ; preds = %bb.n, %.lr.ph.i.i26
  %i.am = phi i32 [ %i.an, %.lr.ph.i.i26 ], [ %i.ak, %bb.n ]
  %.sroa.0.09.i.i27 = phi ptr [ %.sroa.0.0.i.i29, %.lr.ph.i.i26 ], [ %.pn17.i20, %bb.n ] ; 3 uses
  %.sroa.04.08.i.i28 = phi ptr [ %.sroa.0.09.i.i27, %.lr.ph.i.i26 ], [ %.sroa.0.018.i19, %bb.n ]
  store i32 %i.am, ptr %.sroa.04.08.i.i28, align 4, !tbaa !52
  %.sroa.0.0.i.i29 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i27, i64 -4 ; 2 uses
  %i.an = load i32, ptr %.sroa.0.0.i.i29, align 4, !tbaa !52 ; 2 uses
  %i.ao = icmp slt i32 %i.z, %i.an
  br i1 %i.ao, label %.lr.ph.i.i26, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i21, !llvm.loop !1558

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i21: ; preds = %.lr.ph.i.i26, %bb.n
  %.sroa.04.0.lcssa.i.i22 = phi ptr [ %.sroa.0.018.i19, %bb.n ], [ %.sroa.0.09.i.i27, %.lr.ph.i.i26 ]
  store i32 %i.z, ptr %.sroa.04.0.lcssa.i.i22, align 4, !tbaa !52
  %.pre.i23 = load i32, ptr %0, align 4, !tbaa !52
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i21, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i30
  %i.ap = phi i32 [ %i.z, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i30 ], [ %.pre.i23, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i21 ]
  %.sroa.0.0.i24 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i19, i64 4 ; 2 uses
  %.not.i25 = icmp eq ptr %.sroa.0.0.i24, %1
  br i1 %.not.i25, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %bb.i, !llvm.loop !1559

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7, %.preheader.i14, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 2                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us
  %.08.us = phi i64 [ %i.ak, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %.08.us
  %i.p = load i32, ptr %i.o, align 4, !tbaa !52   ; 2 uses
  %i.q = icmp slt i64 %.08.us, %i.i
  br i1 %i.q, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.035.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.08.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.035.i.us, 1                    ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.t, align 4, !tbaa !52
  %i.x = load i32, ptr %i.v, align 4, !tbaa !52
  %i.y = icmp slt i32 %i.w, %i.x
  %spec.select.i.us = select i1 %i.y, i64 %i.u, i64 %i.s ; 6 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !52
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i.us
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !52
  %i.ac = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ac, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !42

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ad = icmp sgt i64 %spec.select.i.us, %.08.us
  br i1 %i.ad, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !52 ; 2 uses
  %i.ag = icmp slt i32 %i.af, %i.p
  br i1 %i.ag, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i.us
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !52
  %i.ai = icmp sgt i64 %.0920.i.i.us, %.08.us
  br i1 %i.ai, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, !llvm.loop !43

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.08.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store i32 %i.p, ptr %i.aj, align 4, !tbaa !52
  %.not.us = icmp eq i64 %.08.us, 0
  %i.ak = add nsw i64 %.08.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !1561

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit
  %.08 = phi i64 [ %i.bj, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.am = load i32, ptr %i.al, align 4, !tbaa !52 ; 2 uses
  %i.an = icmp slt i64 %.08, %i.i
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.035.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %.split ] ; 2 uses
  %i.ao = shl i64 %.035.i, 1                      ; 2 uses
  %i.ap = add i64 %i.ao, 2                        ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ap
  %i.ar = or disjoint i64 %i.ao, 1                ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ar
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !52
  %i.au = load i32, ptr %i.as, align 4, !tbaa !52
  %i.av = icmp slt i32 %i.at, %i.au
  %spec.select.i = select i1 %i.av, i64 %i.ar, i64 %i.ap ; 4 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !52
  %i.ay = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !52
  %i.az = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !42

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.08, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ba = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bb = load i32, ptr %i.m, align 4, !tbaa !52
  store i32 %i.bb, ptr %i.n, align 4, !tbaa !52
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bc = icmp sgt i64 %.1.i, %.08
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !52 ; 2 uses
  %i.bf = icmp slt i32 %i.be, %i.am
  br i1 %i.bf, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.be, ptr %i.bg, align 4, !tbaa !52
  %i.bh = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.bh, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, !llvm.loop !43

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.am, ptr %i.bi, align 4, !tbaa !52
  %.not = icmp eq i64 %.08, 0
  %i.bj = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !1561

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE4findERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(17) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !157  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.not12.i = icmp eq ptr %i.b, null
  br i1 %.not12.i, label %_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !56     ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 4              ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4              ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i8, ptr %i.k, align 4, !range !61
  %.fr15.i = freeze i8 %i.l                       ; 2 uses
  %i.m = trunc i8 %.fr15.i to i1
  br i1 %i.m, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i
  %.014.us.i = phi ptr [ %.1.us.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i ], [ %i.b, %.lr.ph.i ] ; 9 uses
  %.0813.us.i = phi ptr [ %.19.us.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i ], [ %i.c, %.lr.ph.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %.014.us.i, i64 32
  %i.o = load i32, ptr %i.n, align 4, !tbaa !56   ; 2 uses
  %.not.i.i.i.us.i = icmp ne i32 %i.o, %i.d
  %i.p = getelementptr inbounds nuw i8, ptr %.014.us.i, i64 36
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %i.r = icmp ne i32 %i.q, %i.f                   ; 2 uses
  %i.s = select i1 %.not.i.i.i.us.i, i1 true, i1 %i.r
  br i1 %i.s, label %.split.us.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.i
  %i.t = getelementptr inbounds nuw i8, ptr %.014.us.i, i64 40
  %i.u = load i32, ptr %i.t, align 4, !tbaa !56   ; 2 uses
  %.not.i8.i.i.us.i = icmp ne i32 %i.u, %i.h
  %i.v = getelementptr inbounds nuw i8, ptr %.014.us.i, i64 44
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = icmp ne i32 %i.w, %i.j                   ; 2 uses
  %i.y = select i1 %.not.i8.i.i.us.i, i1 true, i1 %i.x
  br i1 %i.y, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %.014.us.i, i64 48
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !60, !range !61, !noundef !62
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i, label %.split11.us.i

_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i: ; preds = %bb.b
  %i.ac = icmp slt i32 %i.w, %i.j
  %i.ad = icmp slt i32 %i.u, %i.h
  %.0.i10.i.i.us.i = select i1 %i.x, i1 %i.ac, i1 %i.ad
  br i1 %.0.i10.i.i.us.i, label %.split11.us.i, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i

.split.us.i:                                      ; preds = %.lr.ph.split.us.i
  %i.ae = icmp slt i32 %i.q, %i.f
  %i.af = icmp slt i32 %i.o, %i.d
  %.0.i.i.i.us.i = select i1 %i.r, i1 %i.ae, i1 %i.af
  br i1 %.0.i.i.i.us.i, label %.split11.us.i, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i

.split11.us.i:                                    ; preds = %.split.us.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i, %bb.c
  br label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i

_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i: ; preds = %.split11.us.i, %.split.us.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i, %bb.c
  %.sink.i = phi i64 [ 24, %.split11.us.i ], [ 16, %.split.us.i ], [ 16, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i ], [ 16, %bb.c ]
  %.19.us.i = phi ptr [ %.0813.us.i, %.split11.us.i ], [ %.014.us.i, %.split.us.i ], [ %.014.us.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i ], [ %.014.us.i, %bb.c ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.014.us.i, i64 %.sink.i
  %.1.us.i = load ptr, ptr %i.ag, align 8, !tbaa !161 ; 2 uses
  %.not.us.i = icmp eq ptr %.1.us.i, null
end_hunk_2
