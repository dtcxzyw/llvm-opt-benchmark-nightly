Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpp-httplib/original/httplib?download=true
inline.NumInlined: 21623
inline.NumDeleted: 6597
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 103
begin_hunk_0_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_:bb.a
.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.0.015.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %.sroa.0.018.i.idx = phi i64 [ 1, %.lr.ph.i ], [ %.sroa.0.018.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn17.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.018.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.018.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.018.i.idx ; 4 uses
  %i.e = load i8, ptr %.sroa.0.018.i.ptr, align 1, !tbaa !177 ; 4 uses
  %i.f = load i8, ptr %0, align 1, !tbaa !177     ; 2 uses
  %i.g = icmp slt i8 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %.sroa.0.018.i.idx, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !378

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.015.i.ptr, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.sroa.0.018.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 1
  store i8 %i.f, ptr %i.i, align 1, !tbaa !177
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.j = load i8, ptr %.pn17.i, align 1, !tbaa !177 ; 2 uses
  %i.k = icmp slt i8 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.l = phi i8 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.f ]
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn17.i, %bb.f ] ; 3 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.018.i.ptr, %bb.f ]
  store i8 %i.l, ptr %.sroa.04.08.i.i, align 1, !tbaa !177
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -1 ; 2 uses
  %i.m = load i8, ptr %.sroa.0.0.i.i, align 1, !tbaa !177 ; 2 uses
  %i.n = icmp slt i8 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !2981

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.018.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store i8 %i.e, ptr %.sink.i, align 1, !tbaa !177
  %.sroa.0.018.i.add = add nuw nsw i64 %.sroa.0.018.i.idx, 1 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.018.i.add, 16
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %bb.b, !llvm.loop !2982

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.not4.i = icmp eq ptr %i.o, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6.preheader

.lr.ph.i6.preheader:                              ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
  %i.p = sub i64 %i.a, %i.b
  %i.q = add i64 %i.a, -17
  %xtraiter = and i64 %i.p, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i6.prol.loopexit, label %.lr.ph.i6.prol

.lr.ph.i6.prol:                                   ; preds = %.lr.ph.i6.preheader
  %i.r = load i8, ptr %i.o, align 1, !tbaa !177   ; 3 uses
  %.sroa.0.07.i.i.prol = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.s = load i8, ptr %.sroa.0.07.i.i.prol, align 1, !tbaa !177 ; 2 uses
  %i.t = icmp slt i8 %i.r, %i.s
  br i1 %i.t, label %.lr.ph.i.i8.prol, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol

.lr.ph.i.i8.prol:                                 ; preds = %.lr.ph.i6.prol, %.lr.ph.i.i8.prol
  %i.u = phi i8 [ %i.v, %.lr.ph.i.i8.prol ], [ %i.s, %.lr.ph.i6.prol ]
  %.sroa.0.09.i.i9.prol = phi ptr [ %.sroa.0.0.i.i11.prol, %.lr.ph.i.i8.prol ], [ %.sroa.0.07.i.i.prol, %.lr.ph.i6.prol ] ; 3 uses
  %.sroa.04.08.i.i10.prol = phi ptr [ %.sroa.0.09.i.i9.prol, %.lr.ph.i.i8.prol ], [ %i.o, %.lr.ph.i6.prol ]
  store i8 %i.u, ptr %.sroa.04.08.i.i10.prol, align 1, !tbaa !177
  %.sroa.0.0.i.i11.prol = getelementptr inbounds i8, ptr %.sroa.0.09.i.i9.prol, i64 -1 ; 2 uses
  %i.v = load i8, ptr %.sroa.0.0.i.i11.prol, align 1, !tbaa !177 ; 2 uses
  %i.w = icmp slt i8 %i.r, %i.v
  br i1 %i.w, label %.lr.ph.i.i8.prol, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol, !llvm.loop !2981

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol: ; preds = %.lr.ph.i.i8.prol, %.lr.ph.i6.prol
  %.sroa.04.0.lcssa.i.i.prol = phi ptr [ %i.o, %.lr.ph.i6.prol ], [ %.sroa.0.09.i.i9.prol, %.lr.ph.i.i8.prol ]
  store i8 %i.r, ptr %.sroa.04.0.lcssa.i.i.prol, align 1, !tbaa !177
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 17
  br label %.lr.ph.i6.prol.loopexit

.lr.ph.i6.prol.loopexit:                          ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol, %.lr.ph.i6.preheader
  %.sroa.0.05.i.unr = phi ptr [ %i.o, %.lr.ph.i6.preheader ], [ %i.x, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol ]
  %i.y = icmp eq i64 %i.q, %i.b
  br i1 %i.y, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %.lr.ph.i6.prol.loopexit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1
  %.sroa.0.05.i = phi ptr [ %i.am, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1 ], [ %.sroa.0.05.i.unr, %.lr.ph.i6.prol.loopexit ] ; 8 uses
  %i.z = load i8, ptr %.sroa.0.05.i, align 1, !tbaa !177 ; 3 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -1 ; 2 uses
  %i.aa = load i8, ptr %.sroa.0.07.i.i, align 1, !tbaa !177 ; 2 uses
  %i.ab = icmp slt i8 %i.z, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i8, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i8:                                      ; preds = %.lr.ph.i6, %.lr.ph.i.i8
  %i.ac = phi i8 [ %i.ad, %.lr.ph.i.i8 ], [ %i.aa, %.lr.ph.i6 ]
  %.sroa.0.09.i.i9 = phi ptr [ %.sroa.0.0.i.i11, %.lr.ph.i.i8 ], [ %.sroa.0.07.i.i, %.lr.ph.i6 ] ; 3 uses
  %.sroa.04.08.i.i10 = phi ptr [ %.sroa.0.09.i.i9, %.lr.ph.i.i8 ], [ %.sroa.0.05.i, %.lr.ph.i6 ]
  store i8 %i.ac, ptr %.sroa.04.08.i.i10, align 1, !tbaa !177
  %.sroa.0.0.i.i11 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i9, i64 -1 ; 2 uses
  %i.ad = load i8, ptr %.sroa.0.0.i.i11, align 1, !tbaa !177 ; 2 uses
  %i.ae = icmp slt i8 %i.z, %i.ad
  br i1 %i.ae, label %.lr.ph.i.i8, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !2981

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i8, %.lr.ph.i6
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.09.i.i9, %.lr.ph.i.i8 ]
  store i8 %i.z, ptr %.sroa.04.0.lcssa.i.i, align 1, !tbaa !177
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 1 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !177 ; 3 uses
  %i.ah = load i8, ptr %.sroa.0.05.i, align 1, !tbaa !177 ; 2 uses
  %i.ai = icmp slt i8 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i8.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1

.lr.ph.i.i8.1:                                    ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %.lr.ph.i.i8.1
  %i.aj = phi i8 [ %i.ak, %.lr.ph.i.i8.1 ], [ %i.ah, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ]
  %.sroa.0.09.i.i9.1 = phi ptr [ %.sroa.0.0.i.i11.1, %.lr.ph.i.i8.1 ], [ %.sroa.0.05.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ] ; 3 uses
  %.sroa.04.08.i.i10.1 = phi ptr [ %.sroa.0.09.i.i9.1, %.lr.ph.i.i8.1 ], [ %i.af, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ]
  store i8 %i.aj, ptr %.sroa.04.08.i.i10.1, align 1, !tbaa !177
  %.sroa.0.0.i.i11.1 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i9.1, i64 -1 ; 2 uses
  %i.ak = load i8, ptr %.sroa.0.0.i.i11.1, align 1, !tbaa !177 ; 2 uses
  %i.al = icmp slt i8 %i.ag, %i.ak
  br i1 %i.al, label %.lr.ph.i.i8.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1, !llvm.loop !2981

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1: ; preds = %.lr.ph.i.i8.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i
  %.sroa.04.0.lcssa.i.i.1 = phi ptr [ %i.af, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ], [ %.sroa.0.09.i.i9.1, %.lr.ph.i.i8.1 ]
  store i8 %i.ag, ptr %.sroa.04.0.lcssa.i.i.1, align 1, !tbaa !177
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 2 ; 2 uses
  %.not.i7.1 = icmp eq ptr %i.am, %1
  br i1 %.not.i7.1, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6, !llvm.loop !2983

bb.g:                                             ; preds = %bb.a
  %i.an = icmp eq ptr %0, %1
  br i1 %i.an, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.preheader.i12

.preheader.i12:                                   ; preds = %bb.g
  %.sroa.0.015.i13 = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %.not16.i14 = icmp eq ptr %.sroa.0.015.i13, %1
  br i1 %.not16.i14, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %.preheader.i12, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18
  %.sroa.0.018.i16 = phi ptr [ %.sroa.0.0.i20, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18 ], [ %.sroa.0.015.i13, %.preheader.i12 ] ; 6 uses
  %.pn17.i17 = phi ptr [ %.sroa.0.018.i16, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18 ], [ %0, %.preheader.i12 ] ; 3 uses
  %i.ao = load i8, ptr %.sroa.0.018.i16, align 1, !tbaa !177 ; 4 uses
  %i.ap = load i8, ptr %0, align 1, !tbaa !177    ; 2 uses
  %i.aq = icmp slt i8 %i.ao, %i.ap
  br i1 %i.aq, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i15
  %i.ar = ptrtoint ptr %.sroa.0.018.i16 to i64
  %i.as = sub i64 %i.ar, %i.b                     ; 3 uses
  %i.at = icmp sgt i64 %i.as, 1
  br i1 %i.at, label %bb.i, label %bb.j, !prof !378

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.015.i13, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.as, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18

bb.j:                                             ; preds = %bb.h
  %i.au = icmp eq i64 %i.as, 1
  br i1 %i.au, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %.pn17.i17, i64 1
  store i8 %i.ap, ptr %i.av, align 1, !tbaa !177
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18

bb.l:                                             ; preds = %.lr.ph.i15
  %i.aw = load i8, ptr %.pn17.i17, align 1, !tbaa !177 ; 2 uses
  %i.ax = icmp slt i8 %i.ao, %i.aw
  br i1 %i.ax, label %.lr.ph.i.i22, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18

.lr.ph.i.i22:                                     ; preds = %bb.l, %.lr.ph.i.i22
  %i.ay = phi i8 [ %i.az, %.lr.ph.i.i22 ], [ %i.aw, %bb.l ]
  %.sroa.0.09.i.i23 = phi ptr [ %.sroa.0.0.i.i25, %.lr.ph.i.i22 ], [ %.pn17.i17, %bb.l ] ; 3 uses
  %.sroa.04.08.i.i24 = phi ptr [ %.sroa.0.09.i.i23, %.lr.ph.i.i22 ], [ %.sroa.0.018.i16, %bb.l ]
  store i8 %i.ay, ptr %.sroa.04.08.i.i24, align 1, !tbaa !177
  %.sroa.0.0.i.i25 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i23, i64 -1 ; 2 uses
  %i.az = load i8, ptr %.sroa.0.0.i.i25, align 1, !tbaa !177 ; 2 uses
  %i.ba = icmp slt i8 %i.ao, %i.az
  br i1 %i.ba, label %.lr.ph.i.i22, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18, !llvm.loop !2981

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18: ; preds = %.lr.ph.i.i22, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i19 = phi ptr [ %0, %bb.k ], [ %0, %bb.i ], [ %0, %bb.j ], [ %.sroa.0.018.i16, %bb.l ], [ %.sroa.0.09.i.i23, %.lr.ph.i.i22 ]
  store i8 %i.ao, ptr %.sink.i19, align 1, !tbaa !177
  %.sroa.0.0.i20 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i16, i64 1 ; 2 uses
  %.not.i21 = icmp eq ptr %.sroa.0.0.i20, %1
  br i1 %.not.i21, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i15, !llvm.loop !2982

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18, %.lr.ph.i6.prol.loopexit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1, %.preheader.i12, %bb.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 4 uses
  %i.d = icmp slt i64 %.fr, 2
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i64 %.fr, -2                     ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = add nsw i64 %.fr, -1
  %i.h = lshr i64 %i.g, 1                         ; 4 uses
  %i.i = and i64 %.fr, 1
  %i.j = icmp eq i64 %i.i, 0
  %i.k = lshr exact i64 %i.e, 1                   ; 2 uses
  br i1 %i.j, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = or disjoint i64 %i.e, 1                    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us
  %.08.us = phi i64 [ %i.aj, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us ], [ %i.f, %bb.b ] ; 8 uses
  %i.n = getelementptr inbounds i8, ptr %0, i64 %.08.us
  %i.o = load i8, ptr %i.n, align 1, !tbaa !177   ; 2 uses
  %i.p = icmp slt i64 %.08.us, %i.h
  br i1 %i.p, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.035.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.08.us, %.split.us ] ; 2 uses
  %i.q = shl i64 %.035.i.us, 1                    ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t
  %i.v = load i8, ptr %i.s, align 1, !tbaa !177
  %i.w = load i8, ptr %i.u, align 1, !tbaa !177
  %i.x = icmp slt i8 %i.v, %i.w
  %spec.select.i.us = select i1 %i.x, i64 %i.t, i64 %i.r ; 6 uses
  %i.y = getelementptr inbounds i8, ptr %0, i64 %spec.select.i.us
  %i.z = load i8, ptr %i.y, align 1, !tbaa !177
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %.035.i.us
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !177
  %i.ab = icmp slt i64 %spec.select.i.us, %i.h
  br i1 %i.ab, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !96

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ac = icmp sgt i64 %spec.select.i.us, %.08.us
  br i1 %i.ac, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.0920.i.i.us
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !177 ; 2 uses
  %i.af = icmp slt i8 %i.ae, %i.o
  br i1 %i.af, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.i.us
  store i8 %i.ae, ptr %i.ag, align 1, !tbaa !177
  %i.ah = icmp sgt i64 %.0920.i.i.us, %.08.us
  br i1 %i.ah, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, !llvm.loop !97

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.08.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i.i.us
  store i8 %i.o, ptr %i.ai, align 1, !tbaa !177
  %.not.us = icmp eq i64 %.08.us, 0
  %i.aj = add nsw i64 %.08.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !2984

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit
  %.08 = phi i64 [ %i.bi, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit ], [ %i.f, %.split.preheader ] ; 8 uses
  %i.ak = getelementptr inbounds i8, ptr %0, i64 %.08
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !177 ; 2 uses
  %i.am = icmp slt i64 %.08, %i.h
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.035.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %.split ] ; 2 uses
  %i.an = shl i64 %.035.i, 1                      ; 2 uses
  %i.ao = add i64 %i.an, 2                        ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %0, i64 %i.ao
  %i.aq = or disjoint i64 %i.an, 1                ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.aq
  %i.as = load i8, ptr %i.ap, align 1, !tbaa !177
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !177
  %i.au = icmp slt i8 %i.as, %i.at
  %spec.select.i = select i1 %i.au, i64 %i.aq, i64 %i.ao ; 4 uses
  %i.av = getelementptr inbounds i8, ptr %0, i64 %spec.select.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !177
  %i.ax = getelementptr inbounds i8, ptr %0, i64 %.035.i
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !177
  %i.ay = icmp slt i64 %spec.select.i, %i.h
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !96

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.08, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.az = icmp eq i64 %.0.lcssa.i, %i.k
  br i1 %i.az, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.ba = load i8, ptr %i.l, align 1, !tbaa !177
  store i8 %i.ba, ptr %i.m, align 1, !tbaa !177
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
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !177 ; 2 uses
  %i.be = icmp slt i8 %i.bd, %i.al
  br i1 %i.be, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.i
  store i8 %i.bd, ptr %i.bf, align 1, !tbaa !177
  %i.bg = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, !llvm.loop !97

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i.i
  store i8 %i.al, ptr %i.bh, align 1, !tbaa !177
  %.not = icmp eq i64 %.08, 0
  %i.bi = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !2984

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZNKSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE8_M_applyEcSt17integral_constantIbLb0EEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1138   ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !310  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !310  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !1139  ; 6 uses
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
  %i.l = load i8, ptr %.sink.i.i.i, align 1, !tbaa !177
  %i.m = icmp slt i8 %i.l, %i.f                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 1
  %i.o = xor i64 %i.k, -1
  %i.p = add nsw i64 %.016.i.i, %i.o
  %.sroa.011.1.i.i = select i1 %i.m, ptr %i.n, ptr %.sroa.011.015.i.i ; 2 uses
  %.1.i.i = select i1 %i.m, i64 %i.p, i64 %i.k    ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i, !llvm.loop !98

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.a
  %.sroa.011.0.lcssa.i.i = phi ptr [ %i.b, %bb.a ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.011.0.lcssa.i.i, %i.d
  br i1 %.not.i, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit

_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i
  %i.r = load i8, ptr %.sroa.011.0.lcssa.i.i, align 1, !tbaa !177
  %.not = icmp slt i8 %i.f, %i.r
  br i1 %.not, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread

_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1140 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1140 ; 2 uses
  %.not5256 = icmp eq ptr %i.t, %i.v
  br i1 %.not5256, label %.critedge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.046.057, i64 2 ; 2 uses
  %.not52 = icmp eq ptr %i.w, %i.v
  br i1 %.not52, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread, %bb.b
  %.sroa.046.057 = phi ptr [ %i.w, %bb.b ], [ %i.t, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread ] ; 3 uses
  %i.x = load i8, ptr %.sroa.046.057, align 1, !tbaa !1061
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.046.057, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !1062
  %i.aa = icmp sle i8 %i.x, %i.f
  %i.ab = icmp sle i8 %i.f, %i.z
  %i.ac = and i1 %i.aa, %i.ab
  br i1 %i.ac, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread, label %bb.b

.critedge:                                        ; preds = %bb.b, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1135, !nonnull !192, !align !253
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.09.0.copyload = load i32, ptr %i.af, align 8 ; 2 uses
  %i.ag = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #23
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !975
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !978
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ag
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFbmmRN7httplib8DataSinkEEZNS0_6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS6_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E9_M_invokeERKSt9_Any_dataOmSO_S2_":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.az, label %select.unfold.backedge.i.i.i, label %"_ZSt10__invoke_rIbRZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JmmRNS0_8DataSinkEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

select.unfold.backedge.i.i.i:                     ; preds = %_ZNKSt8functionIFbPKcmEEclES1_m.exit.i.i.i, %.lr.ph116.i.i.i
  %.155.be.i.i.i = phi i64 [ %i.ar, %.lr.ph116.i.i.i ], [ 0, %_ZNKSt8functionIFbPKcmEEclES1_m.exit.i.i.i ] ; 2 uses
  %.not66.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not66.i.i.i, label %select.unfold._crit_edge.loopexit.i.i.i, label %.lr.ph116.i.i.i, !llvm.loop !3353

select.unfold._crit_edge.loopexit.i.i.i:          ; preds = %select.unfold.backedge.i.i.i
  %.val69.pre.i.i.i = load ptr, ptr %.val, align 8, !tbaa !498
  br label %select.unfold._crit_edge.i.i.i

select.unfold._crit_edge.i.i.i:                   ; preds = %select.unfold._crit_edge.loopexit.i.i.i, %bb.c
  %.val69.i.i.i = phi ptr [ %.val69132.i.i.i, %bb.c ], [ %.val69.pre.i.i.i, %select.unfold._crit_edge.loopexit.i.i.i ] ; 3 uses
  %.1.lcssa.i.i.i = phi i64 [ %.090120.i.i.i, %bb.c ], [ %i.au, %select.unfold._crit_edge.loopexit.i.i.i ] ; 2 uses
  %.155.lcssa.i.i.i = phi i64 [ %.054121.i.i.i, %bb.c ], [ %.155.be.i.i.i, %select.unfold._crit_edge.loopexit.i.i.i ] ; 3 uses
  %i.ba = add nuw i64 %.150122.i.i.i, 1           ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val69.i.i.i, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %.val69.i.i.i, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !495
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !493 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 4
  %i.bj = icmp ult i64 %i.ba, %i.bi
  %i.bk = icmp ne i64 %.1.lcssa.i.i.i, 0
  %i.bl = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %i.bl, label %bb.c, label %._crit_edge126.i.i.i, !llvm.loop !3354

._crit_edge126.i.i.i:                             ; preds = %select.unfold._crit_edge.i.i.i
  %.not65.i.i.i = icmp eq i64 %.155.lcssa.i.i.i, 0
  br i1 %.not65.i.i.i, label %"_ZSt10__invoke_rIbRZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JmmRNS0_8DataSinkEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit", label %bb.f

bb.f:                                             ; preds = %._crit_edge126.i.i.i
  %i.bm = load ptr, ptr %i.e, align 8, !tbaa !488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bm, ptr %i.a, align 8, !tbaa !310
  store i64 %.155.lcssa.i.i.i, ptr %i.b, align 8, !tbaa !190
  %i.bn = load ptr, ptr %i.af, align 8, !tbaa !256
  %.not.i.i75.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i75.i.i.i, label %bb.g, label %_ZNKSt8functionIFbPKcmEEclES1_m.exit76.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt25__throw_bad_function_callv() #47
  unreachable

_ZNKSt8functionIFbPKcmEEclES1_m.exit76.i.i.i:     ; preds = %bb.f
  %i.bo = load ptr, ptr %i.ag, align 8, !tbaa !403
  %i.bp = call noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(472) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !3352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %"_ZSt10__invoke_rIbRZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JmmRNS0_8DataSinkEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

"_ZSt10__invoke_rIbRZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JmmRNS0_8DataSinkEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit": ; preds = %bb.b, %_ZNKSt8functionIFbPKcmEEclES1_m.exit.i.i.i, %._crit_edge.i.i.i, %._crit_edge126.i.i.i, %_ZNKSt8functionIFbPKcmEEclES1_m.exit76.i.i.i
  %.461.i.i.i = phi i1 [ true, %._crit_edge126.i.i.i ], [ %i.bp, %_ZNKSt8functionIFbPKcmEEclES1_m.exit76.i.i.i ], [ false, %_ZNKSt8functionIFbPKcmEEclES1_m.exit.i.i.i ], [ true, %._crit_edge.i.i.i ], [ true, %bb.b ]
  ret i1 %.461.i.i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbmmRN7httplib8DataSinkEEZNS0_6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS6_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.h
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0", ptr %0, align 8, !tbaa !1132
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !183
  store ptr %.val, ptr %0, align 8, !tbaa !183
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8              ; 2 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #50 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %.val2.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !316 ; 2 uses
  %i.c = load <2 x ptr>, ptr %.val6, align 8, !tbaa !183
  store <2 x ptr> %i.c, ptr %i.a, align 8, !tbaa !183
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val2.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E15_M_init_functorIRKSH_EEvRSt9_Any_dataOT_.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 8 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !177
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = load i32, ptr %i.d, align 4, !tbaa !266
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !266
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E15_M_init_functorIRKSH_EEvRSt9_Any_dataOT_.exit.i"

bb.g:                                             ; preds = %bb.e
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E15_M_init_functorIRKSH_EEvRSt9_Any_dataOT_.exit.i"

"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E15_M_init_functorIRKSH_EEvRSt9_Any_dataOT_.exit.i": ; preds = %bb.g, %bb.f, %bb.d
  store ptr %i.a, ptr %0, align 8, !tbaa !183
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

bb.h:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !183 ; 3 uses
  %i.i = icmp eq ptr %.val7.i, null
  br i1 %i.i, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = getelementptr i8, ptr %.val7.i, i64 8
  %.val.i.i = load ptr, ptr %i.j, align 8, !tbaa !316 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i.i.i, label %"_ZZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.k, align 8, !tbaa !318
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !319
  %i.p = load ptr, ptr %.val.i.i, align 8, !tbaa !194
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #23, !inline_history !3358
  %i.s = load ptr, ptr %.val.i.i, align 8, !tbaa !194
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #23, !inline_history !3358
  br label %"_ZZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit.i.i"

bb.l:                                             ; preds = %bb.j
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !177
  %.not.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !266
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.n, %bb.m ], [ %i.x, %bb.n ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.o, label %"_ZZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit.i.i", !prof !195

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #23
  br label %"_ZZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit.i.i"

"_ZZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit.i.i": ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.k, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 16) #46
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit": ; preds = %bb.a, %"_ZZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit.i.i", %bb.h, %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E15_M_init_functorIRKSH_EEvRSt9_Any_dataOT_.exit.i", %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #41 {
bb.a:
  %.fr27 = freeze ptr %1                          ; 3 uses
  %.fr26 = freeze ptr %0                          ; 36 uses
  %i.a = ptrtoint ptr %.fr26 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr27 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr26, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.fr26, i64 8 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.fr26, i64 24 ; 3 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph42

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEET_SG_SG_T0_.exit"
  %i.j = icmp eq i64 %i.cg, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph42, !llvm.loop !3359

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i25.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.dq, %bb.b ] ; 3 uses
  %storemerge23.lcssa = phi ptr [ %.fr27, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i.i25.lcssa, 4             ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i.i25.lcssa, 16
  %i.q = icmp eq i64 %i.p, 0
  %3 = or disjoint i64 %i.l, 1                    ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %3
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i", %._crit_edge
  %.010.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.ar, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.t = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.010.i.i.i ; 2 uses
  %i.u = load <2 x i64>, ptr %i.t, align 8
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.t, align 8
  %i.v = icmp slt i64 %.010.i.i.i, %i.o
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %bb.c ] ; 2 uses
  %i.w = shl i64 %.037.i.i.i.i, 1                 ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %i.x
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %i.z
  %.val.i.i.i.i.i = load i64, ptr %i.y, align 8, !tbaa !504
  %.val1.i.i.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !504
  %i.ab = icmp slt i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ab, i64 %i.z, i64 %i.x ; 4 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %spec.select.i.i.i.i
  %i.ad = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.037.i.i.i.i
  %i.ae = load <2 x i64>, ptr %i.ac, align 8, !tbaa !190
  store <2 x i64> %i.ae, ptr %i.ad, align 8, !tbaa !190
  %i.af = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !3360

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  %or.cond.i.i.i = select i1 %i.q, i1 %i.ag, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ah = load <2 x i64>, ptr %i.r, align 8, !tbaa !190
  store <2 x i64> %i.ah, ptr %i.s, align 8, !tbaa !190
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ai = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.011.i.i.i.i.i = phi i64 [ %.0912.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0912.in.i.i.i.i.i = add nsw i64 %.011.i.i.i.i.i, -1
  %.0912.i.i.i.i.i = sdiv i64 %.0912.in.i.i.i.i.i, 2 ; 4 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.0912.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i = load i64, ptr %i.aj, align 8, !tbaa !504 ; 2 uses
  %i.ak = icmp slt i64 %.val.i.i.i.i.i.i, %.sroa.03.0.copyload.i.i.i
  br i1 %i.ak, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.011.i.i.i.i.i ; 2 uses
  store i64 %.val.i.i.i.i.i.i, ptr %i.al, align 8, !tbaa !504
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !190
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !505
  %i.ap = icmp sgt i64 %.0912.i.i.i.i.i, %.010.i.i.i
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i", !llvm.loop !3361

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0912.i.i.i.i.i, %bb.f ]
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i.i.i
  store <2 x i64> %i.u, ptr %i.aq, align 8, !tbaa !190
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.ar = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_RT0_.exit.i.i", label %bb.c, !llvm.loop !3362

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i"
  %i.as = icmp sgt i64 %.fr.i.i25.lcssa, 16
  br i1 %i.as, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.at, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_RT0_.exit.i.i" ], [ %storemerge23.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_RT0_.exit.i.i" ] ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i11.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8
  %i.au = load <2 x i64>, ptr %i.at, align 8
  %.sroa.03.0.copyload.i.i10.i = load i64, ptr %i.at, align 8
  %i.av = load i64, ptr %.fr26, align 8, !tbaa !190
  store i64 %i.av, ptr %i.at, align 8, !tbaa !504
  %i.aw = load i64, ptr %i.g, align 8, !tbaa !190
  store i64 %i.aw, ptr %.sroa.4.0..sroa_idx.i.i11.i, align 8, !tbaa !505
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.ax, %i.a                     ; 3 uses
  %i.az = ashr exact i64 %i.ay, 4                 ; 3 uses
  %i.ba = add nsw i64 %i.az, -1
  %i.bb = lshr i64 %i.ba, 1
  %i.bc = icmp sgt i64 %i.az, 2
  br i1 %i.bc, label %.lr.ph.i.i.i21.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i21.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i21.i
  %.037.i.i.i22.i = phi i64 [ %spec.select.i.i.i25.i, %.lr.ph.i.i.i21.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bd = shl i64 %.037.i.i.i22.i, 1              ; 2 uses
  %i.be = add i64 %i.bd, 2                        ; 2 uses
  %i.bf = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %i.be
  %i.bg = or disjoint i64 %i.bd, 1                ; 2 uses
  %i.bh = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %i.bg
  %.val.i.i.i.i23.i = load i64, ptr %i.bf, align 8, !tbaa !504
  %.val1.i.i.i.i24.i = load i64, ptr %i.bh, align 8, !tbaa !504
  %i.bi = icmp slt i64 %.val.i.i.i.i23.i, %.val1.i.i.i.i24.i
  %spec.select.i.i.i25.i = select i1 %i.bi, i64 %i.bg, i64 %i.be ; 4 uses
  %i.bj = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %spec.select.i.i.i25.i
  %i.bk = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.037.i.i.i22.i
  %i.bl = load <2 x i64>, ptr %i.bj, align 8, !tbaa !190
  store <2 x i64> %i.bl, ptr %i.bk, align 8, !tbaa !190
  %i.bm = icmp slt i64 %spec.select.i.i.i25.i, %i.bb
  br i1 %i.bm, label %.lr.ph.i.i.i21.i, label %._crit_edge.i.i.i13.i, !llvm.loop !3360

._crit_edge.i.i.i13.i:                            ; preds = %.lr.ph.i.i.i21.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i25.i, %.lr.ph.i.i.i21.i ] ; 5 uses
  %i.bn = and i64 %i.ay, 16
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.bp = add nsw i64 %i.az, -2
  %i.bq = ashr exact i64 %i.bp, 1
  %i.br = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.bq
  br i1 %i.br, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bs = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.bt = or disjoint i64 %i.bs, 1                ; 2 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %i.bt
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i14.i
  %i.bw = load <2 x i64>, ptr %i.bu, align 8, !tbaa !190
  store <2 x i64> %i.bw, ptr %i.bv, align 8, !tbaa !190
  br label %.lr.ph.i.i.i.i16.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.011.i.i.i.i17.i.ph = phi i64 [ %.0.lcssa.i.i.i14.i, %bb.h ], [ %i.bt, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i.preheader, %bb.i
  %.011.i.i.i.i17.i = phi i64 [ %.0912.i.i56.i.i.i, %bb.i ], [ %.011.i.i.i.i17.i.ph, %.lr.ph.i.i.i.i16.i.preheader ] ; 3 uses
  %.0912.in.i.i.i.i18.i = add nsw i64 %.011.i.i.i.i17.i, -1
  %.0912.i.i56.i.i.i = lshr i64 %.0912.in.i.i.i.i18.i, 1 ; 3 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.0912.i.i56.i.i.i ; 2 uses
  %.val.i.i.i.i.i19.i = load i64, ptr %i.bx, align 8, !tbaa !504 ; 2 uses
  %i.by = icmp slt i64 %.val.i.i.i.i.i19.i, %.sroa.03.0.copyload.i.i10.i
  br i1 %i.by, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i16.i
  %i.bz = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.011.i.i.i.i17.i ; 2 uses
  store i64 %.val.i.i.i.i.i19.i, ptr %i.bz, align 8, !tbaa !504
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !190
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !505
  %.not7.i.i.i = icmp eq i64 %.0912.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i, !llvm.loop !3361

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i16.i, %bb.h
  %.0.lcssa.i.i.i.i20.i = phi i64 [ 0, %bb.h ], [ %.011.i.i.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ 0, %bb.i ]
  %i.cd = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i.i20.i
  store <2 x i64> %i.au, ptr %i.cd, align 8, !tbaa !190
  %i.ce = icmp sgt i64 %i.ay, 16
  br i1 %i.ce, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !3363

.lr.ph42:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2341 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr27, %.lr.ph ] ; 5 uses
  %.02440 = phi i64 [ %i.cg, %bb.b ], [ %2, %.lr.ph ]
  %i.cf = phi i64 [ %i.dr, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cg = add nsw i64 %.02440, -1                 ; 3 uses
  %i.ch = lshr i64 %i.cf, 1
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %i.ch ; 5 uses
  %i.cj = getelementptr inbounds i8, ptr %storemerge2341, i64 -16 ; 3 uses
  %.val.i.i.i = load i64, ptr %i.f, align 8, !tbaa !504 ; 5 uses
  %.val1.i.i.i = load i64, ptr %i.ci, align 8, !tbaa !504 ; 5 uses
  %i.ck = icmp slt i64 %.val.i.i.i, %.val1.i.i.i
  %.val1.i27.i.i = load i64, ptr %i.cj, align 8, !tbaa !504 ; 6 uses
  br i1 %i.ck, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph42
  %i.cl = icmp slt i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.cl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !190
  %i.co = load <2 x i64>, ptr %.fr26, align 8, !tbaa !190
  store i64 %.val1.i.i.i, ptr %.fr26, align 8, !tbaa !190
  store i64 %i.cn, ptr %i.g, align 8, !tbaa !190
  store <2 x i64> %i.co, ptr %i.ci, align 8, !tbaa !190
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.cp = icmp slt i64 %.val.i.i.i, %.val1.i27.i.i
  %i.cq = load i64, ptr %.fr26, align 8, !tbaa !190 ; 2 uses
  br i1 %i.cp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 %.val1.i27.i.i, ptr %.fr26, align 8, !tbaa !190
  store i64 %i.cq, ptr %i.cj, align 8, !tbaa !190
  %i.cr = getelementptr inbounds i8, ptr %storemerge2341, i64 -8 ; 2 uses
  %i.cs = load i64, ptr %i.g, align 8, !tbaa !190
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !190
  store i64 %i.ct, ptr %i.g, align 8, !tbaa !190
  store i64 %i.cs, ptr %i.cr, align 8, !tbaa !190
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  store i64 %.val.i.i.i, ptr %.fr26, align 8, !tbaa !190
  store i64 %i.cq, ptr %i.f, align 8, !tbaa !190
  %i.cu = load i64, ptr %i.g, align 8, !tbaa !190
  %i.cv = load i64, ptr %i.h, align 8, !tbaa !190
  store i64 %i.cv, ptr %i.g, align 8, !tbaa !190
  store i64 %i.cu, ptr %i.h, align 8, !tbaa !190
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph42
  %i.cw = icmp slt i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.cw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cx = load i64, ptr %i.h, align 8, !tbaa !190
  %i.cy = load <2 x i64>, ptr %.fr26, align 8, !tbaa !190
  store i64 %.val.i.i.i, ptr %.fr26, align 8, !tbaa !190
  store i64 %i.cx, ptr %i.g, align 8, !tbaa !190
  store <2 x i64> %i.cy, ptr %i.f, align 8, !tbaa !190
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp slt i64 %.val1.i.i.i, %.val1.i27.i.i
  %i.da = load i64, ptr %.fr26, align 8, !tbaa !190 ; 2 uses
  br i1 %i.cz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i64 %.val1.i27.i.i, ptr %.fr26, align 8, !tbaa !190
  store i64 %i.da, ptr %i.cj, align 8, !tbaa !190
  %i.db = getelementptr inbounds i8, ptr %storemerge2341, i64 -8 ; 2 uses
  %i.dc = load i64, ptr %i.g, align 8, !tbaa !190
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !190
  store i64 %i.dd, ptr %i.g, align 8, !tbaa !190
end_hunk_1
