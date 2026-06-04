inline.NumInlined: 767
inline.NumDeleted: 289
begin_hunk_0_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_:bb.a
  %i.h = load i32, ptr %0, align 4, !tbaa !133    ; 2 uses
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp slt i32 %i.h, %i.g
  br i1 %i.j, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !135
  %i.m = load i32, ptr %i.e, align 4, !tbaa !135
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i
  %i.o = load i64, ptr %.sroa.07.020.i.ptr, align 4
  %i.p = lshr exact i64 %.sroa.07.020.i.idx, 3    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 16 ; 2 uses
  %xtraiter.a = and i64 %i.f, 3                   ; 2 uses
  %lcmp.mod.not.a = icmp eq i64 %xtraiter.a, 0
  br i1 %lcmp.mod.not.a, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader.i ]
  %.069.i.i.i.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.q, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.078.i.i.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.07.020.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %prol.iter.a = phi i64 [ %prol.iter.next.a, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ]
  %i.r = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.t = load i32, ptr %i.r, align 4, !tbaa !4
  store i32 %i.t, ptr %i.s, align 4, !tbaa !133
  %i.u = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -4
  store i32 %i.v, ptr %i.w, align 4, !tbaa !135
  %i.x = add nsw i64 %.010.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter.next.a = add i64 %prol.iter.a, 1     ; 2 uses
  %prol.iter.cmp.not.a = icmp eq i64 %prol.iter.next.a, %xtraiter.a
  br i1 %prol.iter.cmp.not.a, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !216

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.sroa.07.020.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.y = icmp ult i64 %indvar, 3
  br i1 %i.y, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.aa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !4
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !133
  %i.ac = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -4
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !135
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !4
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !133
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -12
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !135
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.am = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  %i.an = load i32, ptr %i.al, align 4, !tbaa !4
  store i32 %i.an, ptr %i.am, align 4, !tbaa !133
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -20
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !135
  %i.ar = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32 ; 2 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !4
  store i32 %i.at, ptr %i.as, align 4, !tbaa !133
  %i.au = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4
  %i.aw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -28
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !135
  %i.ax = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.ay = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i, !llvm.loop !217

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  store i64 %i.o, ptr %0, align 4
  br label %bb.f

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %bb.c
  %i.az = load i64, ptr %.sroa.07.020.i.ptr, align 4 ; 3 uses
  %.sroa.03.0.extract.trunc.i.i = trunc i64 %i.az to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.az, 32
  %.sroa.5.0.extract.trunc.i.i = trunc nuw i64 %.sroa.5.0.extract.shift.i.i to i32
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i
  %.sroa.06.0.i.i = phi ptr [ %.sroa.07.020.i.ptr, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i ], [ %.sroa.0.0.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i ] ; 6 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.06.0.i.i, i64 -8 ; 2 uses
  %i.ba = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !133 ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, %.sroa.03.0.extract.trunc.i.i
  br i1 %i.bb, label %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i, label %bb.e

._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i: ; preds = %bb.d
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.sroa.06.0.i.i, i64 -4
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !4
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.bc = icmp slt i32 %i.ba, %.sroa.03.0.extract.trunc.i.i
  br i1 %i.bc, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i: ; preds = %bb.e
  %i.bd = getelementptr inbounds i8, ptr %.sroa.06.0.i.i, i64 -4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !135 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, %.sroa.5.0.extract.trunc.i.i
  br i1 %i.bf, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i
  %i.bg = phi i32 [ %.pre.i.i, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i ], [ %i.be, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i ]
  store i32 %i.ba, ptr %.sroa.06.0.i.i, align 4, !tbaa !133
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 4
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !135
  br label %bb.d, !llvm.loop !218

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i, %bb.e
  store i64 %i.az, ptr %.sroa.06.0.i.i, align 4
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i
  %.sroa.07.020.i.add = add nuw nsw i64 %.sroa.07.020.i.idx, 8 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.07.020.i.add, 128
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %bb.b, !llvm.loop !219

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit: ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not4.i = icmp eq ptr %i.bi, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13
  %.sroa.0.05.i = phi ptr [ %i.bs, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13 ], [ %i.bi, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit ] ; 3 uses
  %i.bj = load i64, ptr %.sroa.0.05.i, align 4    ; 3 uses
  %.sroa.03.0.extract.trunc.i.i7 = trunc i64 %i.bj to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i8 = lshr i64 %i.bj, 32
  %.sroa.5.0.extract.trunc.i.i9 = trunc nuw i64 %.sroa.5.0.extract.shift.i.i8 to i32
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15, %.lr.ph.i6
  %.sroa.06.0.i.i10 = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.0.i.i11, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15 ] ; 6 uses
  %.sroa.0.0.i.i11 = getelementptr inbounds i8, ptr %.sroa.06.0.i.i10, i64 -8 ; 2 uses
  %i.bk = load i32, ptr %.sroa.0.0.i.i11, align 4, !tbaa !133 ; 3 uses
  %i.bl = icmp sgt i32 %i.bk, %.sroa.03.0.extract.trunc.i.i7
  br i1 %i.bl, label %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i16, label %bb.h

._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i16: ; preds = %bb.g
  %.phi.trans.insert.i.i17 = getelementptr inbounds i8, ptr %.sroa.06.0.i.i10, i64 -4
  %.pre.i.i18 = load i32, ptr %.phi.trans.insert.i.i17, align 4, !tbaa !4
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15

bb.h:                                             ; preds = %bb.g
  %i.bm = icmp slt i32 %i.bk, %.sroa.03.0.extract.trunc.i.i7
  br i1 %i.bm, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i12

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i12: ; preds = %bb.h
  %i.bn = getelementptr inbounds i8, ptr %.sroa.06.0.i.i10, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !135 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, %.sroa.5.0.extract.trunc.i.i9
  br i1 %i.bp, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i12, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i16
  %i.bq = phi i32 [ %.pre.i.i18, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i16 ], [ %i.bo, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i12 ]
  store i32 %i.bk, ptr %.sroa.06.0.i.i10, align 4, !tbaa !133
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i10, i64 4
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !135
  br label %bb.g, !llvm.loop !218

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i12, %bb.h
  store i64 %i.bj, ptr %.sroa.06.0.i.i10, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 8 ; 2 uses
  %.not.i14 = icmp eq ptr %i.bs, %1
  br i1 %.not.i14, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.lr.ph.i6, !llvm.loop !220

bb.i:                                             ; preds = %bb.a
  %i.bt = icmp eq ptr %0, %1
  br i1 %i.bt, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.preheader.i19

.preheader.i19:                                   ; preds = %bb.i
  %.sroa.07.017.i20 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not18.i21 = icmp eq ptr %.sroa.07.017.i20, %1
  br i1 %.not18.i21, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.preheader.i19
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.lr.ph.i22
  %.sroa.07.020.i23 = phi ptr [ %.sroa.07.017.i20, %.lr.ph.i22 ], [ %.sroa.07.0.i34, %bb.n ] ; 9 uses
  %.pn19.i24 = phi ptr [ %0, %.lr.ph.i22 ], [ %.sroa.07.020.i23, %bb.n ] ; 2 uses
  %i.bv = load i32, ptr %.sroa.07.020.i23, align 4, !tbaa !133 ; 2 uses
  %i.bw = load i32, ptr %0, align 4, !tbaa !133   ; 2 uses
  %i.bx = icmp slt i32 %i.bv, %i.bw
  br i1 %i.bx, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i40, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = icmp slt i32 %i.bw, %i.bv
  br i1 %i.by, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i26, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i25

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i25: ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %.pn19.i24, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !135
  %i.cb = load i32, ptr %i.bu, align 4, !tbaa !135
  %i.cc = icmp slt i32 %i.ca, %i.cb
  br i1 %i.cc, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i40, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i26

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i40: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i25, %bb.j
  %i.cd = load i64, ptr %.sroa.07.020.i23, align 4
  %i.ce = ptrtoint ptr %.sroa.07.020.i23 to i64
  %i.cf = sub i64 %i.ce, %i.b
  %i.cg = ashr exact i64 %i.cf, 3                 ; 5 uses
  %i.ch = icmp sgt i64 %i.cg, 0
  br i1 %i.ch, label %vector.ph, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i41

vector.ph:                                        ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i40
  %2 = getelementptr inbounds nuw i8, ptr %.pn19.i24, i64 16 ; 2 uses
  %i.ci = and i64 %i.cg, 3                        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %i.ci, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i43.preheader, label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ %5, %vector.body ], [ %i.cg, %vector.ph ]
  %.069.i.i.i.i.i.i45.prol = phi ptr [ %next.gep69, %vector.body ], [ %2, %vector.ph ] ; 2 uses
  %.078.i.i.i.i.i.i46.prol = phi ptr [ %next.gep, %vector.body ], [ %.sroa.07.020.i23, %vector.ph ] ; 2 uses
  %prol.iter = phi i64 [ %index.next, %vector.body ], [ 0, %vector.ph ]
  %next.gep = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46.prol, i64 -8 ; 3 uses
  %next.gep69 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45.prol, i64 -8 ; 3 uses
  %3 = load i32, ptr %next.gep, align 4, !tbaa !4
  store i32 %3, ptr %next.gep69, align 4, !tbaa !133
  %i.cj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46.prol, i64 -4
  %4 = load i32, ptr %i.cj, align 4, !tbaa !4
  %i.ck = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45.prol, i64 -4
  store i32 %4, ptr %i.ck, align 4, !tbaa !135
  %5 = add nsw i64 %index, -1                     ; 2 uses
  %index.next = add i64 %prol.iter, 1             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %i.ci
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i.i43.preheader, label %vector.body, !llvm.loop !221

.lr.ph.i.i.i.i.i.i43.preheader:                   ; preds = %vector.body, %vector.ph
  %.010.i.i.i.i.i.i44.ph = phi i64 [ %i.cg, %vector.ph ], [ %5, %vector.body ]
  %.069.i.i.i.i.i.i45.ph = phi ptr [ %2, %vector.ph ], [ %next.gep69, %vector.body ]
  %.078.i.i.i.i.i.i46.ph = phi ptr [ %.sroa.07.020.i23, %vector.ph ], [ %next.gep, %vector.body ]
  %6 = icmp ult i64 %i.cg, 4
  br i1 %6, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i41, label %.lr.ph.i.i.i.i.i.i43

.lr.ph.i.i.i.i.i.i43:                             ; preds = %.lr.ph.i.i.i.i.i.i43.preheader, %.lr.ph.i.i.i.i.i.i43
  %.010.i.i.i.i.i.i44 = phi i64 [ %i.cs, %.lr.ph.i.i.i.i.i.i43 ], [ %.010.i.i.i.i.i.i44.ph, %.lr.ph.i.i.i.i.i.i43.preheader ] ; 2 uses
  %.069.i.i.i.i.i.i45 = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i43 ], [ %.069.i.i.i.i.i.i45.ph, %.lr.ph.i.i.i.i.i.i43.preheader ] ; 8 uses
  %.078.i.i.i.i.i.i46 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i43 ], [ %.078.i.i.i.i.i.i46.ph, %.lr.ph.i.i.i.i.i.i43.preheader ] ; 8 uses
  %7 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46, i64 -8
  %8 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45, i64 -8
  %9 = load i32, ptr %7, align 4, !tbaa !4
  store i32 %9, ptr %8, align 4, !tbaa !133
  %10 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46, i64 -4
  %11 = load i32, ptr %10, align 4, !tbaa !4
  %12 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45, i64 -4
  store i32 %11, ptr %12, align 4, !tbaa !135
  %13 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46, i64 -16
  %14 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45, i64 -16
  %15 = load i32, ptr %13, align 4, !tbaa !4
  store i32 %15, ptr %14, align 4, !tbaa !133
  %16 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46, i64 -12
  %17 = load i32, ptr %16, align 4, !tbaa !4
  %18 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45, i64 -12
  store i32 %17, ptr %18, align 4, !tbaa !135
  %19 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46, i64 -24
  %20 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45, i64 -24
  %21 = load i32, ptr %19, align 4, !tbaa !4
  store i32 %21, ptr %20, align 4, !tbaa !133
  %22 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46, i64 -20
  %23 = load i32, ptr %22, align 4, !tbaa !4
  %24 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45, i64 -20
  store i32 %23, ptr %24, align 4, !tbaa !135
  %i.cm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46, i64 -32 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45, i64 -32 ; 2 uses
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !4
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !133
  %i.cp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46, i64 -28
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !4
  %i.cr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45, i64 -28
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !135
  %i.cs = add nsw i64 %.010.i.i.i.i.i.i44, -4
  %25 = icmp sgt i64 %.010.i.i.i.i.i.i44, 4
  br i1 %25, label %.lr.ph.i.i.i.i.i.i43, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i41, !llvm.loop !217

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i41: ; preds = %.lr.ph.i.i.i.i.i.i43.preheader, %.lr.ph.i.i.i.i.i.i43, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i40
  store i64 %i.cd, ptr %0, align 4
  br label %bb.n

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i26: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i25, %bb.k
  %i.ct = load i64, ptr %.sroa.07.020.i23, align 4 ; 3 uses
  %.sroa.03.0.extract.trunc.i.i27 = trunc i64 %i.ct to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i28 = lshr i64 %i.ct, 32
  %.sroa.5.0.extract.trunc.i.i29 = trunc nuw i64 %.sroa.5.0.extract.shift.i.i28 to i32
  br label %bb.l

bb.l:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i36, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i26
  %.sroa.06.0.i.i30 = phi ptr [ %.sroa.07.020.i23, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i26 ], [ %.sroa.0.0.i.i31, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i36 ] ; 6 uses
  %.sroa.0.0.i.i31 = getelementptr inbounds i8, ptr %.sroa.06.0.i.i30, i64 -8 ; 2 uses
  %i.cu = load i32, ptr %.sroa.0.0.i.i31, align 4, !tbaa !133 ; 3 uses
  %i.cv = icmp sgt i32 %i.cu, %.sroa.03.0.extract.trunc.i.i27
  br i1 %i.cv, label %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i37, label %bb.m

._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i37: ; preds = %bb.l
  %.phi.trans.insert.i.i38 = getelementptr inbounds i8, ptr %.sroa.06.0.i.i30, i64 -4
  %.pre.i.i39 = load i32, ptr %.phi.trans.insert.i.i38, align 4, !tbaa !4
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i36

bb.m:                                             ; preds = %bb.l
  %i.cw = icmp slt i32 %i.cu, %.sroa.03.0.extract.trunc.i.i27
  br i1 %i.cw, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i32

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i32: ; preds = %bb.m
  %i.cx = getelementptr inbounds i8, ptr %.sroa.06.0.i.i30, i64 -4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !135 ; 2 uses
  %i.cz = icmp sgt i32 %i.cy, %.sroa.5.0.extract.trunc.i.i29
  br i1 %i.cz, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i36, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i36: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i32, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i37
  %i.da = phi i32 [ %.pre.i.i39, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i37 ], [ %i.cy, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i32 ]
  store i32 %i.cu, ptr %.sroa.06.0.i.i30, align 4, !tbaa !133
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i30, i64 4
  store i32 %i.da, ptr %i.db, align 4, !tbaa !135
  br label %bb.l, !llvm.loop !218

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i32, %bb.m
  store i64 %i.ct, ptr %.sroa.06.0.i.i30, align 4
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i41
  %.sroa.07.0.i34 = getelementptr inbounds nuw i8, ptr %.sroa.07.020.i23, i64 8 ; 2 uses
  %.not.i35 = icmp eq ptr %.sroa.07.0.i34, %1
  br i1 %.not.i35, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %bb.j, !llvm.loop !219

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13, %.preheader.i19, %bb.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_(ptr %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3
  %i.e = sdiv i64 %i.d, 2
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 -8 ; 6 uses
  %i.i = load i32, ptr %i.g, align 4, !tbaa !133  ; 9 uses
  %i.j = load i32, ptr %i.f, align 4, !tbaa !133  ; 9 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp slt i32 %i.j, %i.i
  br i1 %i.l, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !135
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !135
  %i.q = icmp slt i32 %i.n, %i.p
  br i1 %i.q, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %bb.a
  %i.r = load i32, ptr %i.h, align 4, !tbaa !133  ; 6 uses
  %i.s = icmp slt i32 %i.j, %i.r
  br i1 %i.s, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i
  %i.t = icmp slt i32 %i.r, %i.j
  br i1 %i.t, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !135
  %i.w = getelementptr inbounds i8, ptr %1, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !135
  %i.y = icmp slt i32 %i.v, %i.x
  br i1 %i.y, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i, %bb.c
  %i.z = icmp slt i32 %i.i, %i.r
  br i1 %i.z, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i
  %i.aa = icmp slt i32 %i.r, %i.i
  br i1 %i.aa, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i: ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !135
  %i.ad = getelementptr inbounds i8, ptr %1, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !135
  %i.af = icmp slt i32 %i.ac, %i.ae
  br i1 %i.af, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %bb.b
  %i.ag = load i32, ptr %i.h, align 4, !tbaa !133 ; 6 uses
  %i.ah = icmp slt i32 %i.i, %i.ag
  br i1 %i.ah, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i
  %i.ai = icmp slt i32 %i.ag, %i.i
  br i1 %i.ai, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !135
  %i.al = getelementptr inbounds i8, ptr %1, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !135
  %i.an = icmp slt i32 %i.ak, %i.am
  br i1 %i.an, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i, %bb.e
  %i.ao = icmp slt i32 %i.j, %i.ag
  br i1 %i.ao, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i
  %i.ap = icmp slt i32 %i.ag, %i.j
  br i1 %i.ap, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i: ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !135
  %i.as = getelementptr inbounds i8, ptr %1, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !135
  %i.au = icmp slt i32 %i.ar, %i.at
  br i1 %i.au, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i, %bb.f
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i
  %.sink46.i = phi i32 [ %i.r, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i ], [ %i.j, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i ], [ %i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i ], [ %i.j, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i ], [ %i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i ], [ %i.j, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i ], [ %i.r, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i ], [ %i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i ], [ %i.ag, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i ], [ %i.ag, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i ]
  %.sink45.i = phi ptr [ %i.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i ], [ %i.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i ], [ %i.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i ], [ %i.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i ], [ %i.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i ], [ %i.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i ], [ %i.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i ], [ %i.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i ], [ %i.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i ], [ %i.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i ] ; 2 uses
  %i.av = load i32, ptr %0, align 4, !tbaa !4
  store i32 %.sink46.i, ptr %0, align 4, !tbaa !4
  store i32 %i.av, ptr %.sink45.i, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink45.i, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !4
  store i32 %i.az, ptr %i.aw, align 4, !tbaa !4
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit
  %.sroa.011.0.i = phi ptr [ %i.g, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit ], [ %i.bv, %bb.k ]
  %.sroa.0.0.i = phi ptr [ %1, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit ], [ %.sroa.0.1.i, %bb.k ]
  %i.ba = load i32, ptr %0, align 4, !tbaa !133   ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10, %bb.g
  %.sroa.011.1.i = phi ptr [ %.sroa.011.0.i, %bb.g ], [ %i.bi, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10 ] ; 8 uses
  %i.bb = load i32, ptr %.sroa.011.1.i, align 4, !tbaa !133 ; 3 uses
  %i.bc = icmp slt i32 %i.bb, %i.ba
  br i1 %i.bc, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = icmp slt i32 %i.ba, %i.bb
  br i1 %i.bd, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i9

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i9, %bb.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i9: ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !135
  %i.bg = load i32, ptr %i.aw, align 4, !tbaa !135
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i9, %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i, i64 8
  br label %bb.h, !llvm.loop !222

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader
  %.sroa.0.0.pn.i = phi ptr [ %.sroa.0.0.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader ], [ %.sroa.0.1.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge ] ; 3 uses
  %.sroa.0.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -8 ; 5 uses
  %i.bj = load i32, ptr %.sroa.0.1.i, align 4, !tbaa !133 ; 3 uses
  %i.bk = icmp slt i32 %i.ba, %i.bj
  br i1 %i.bk, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge, label %bb.j

bb.j:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i
  %i.bl = icmp slt i32 %i.bj, %i.ba
  br i1 %i.bl, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.i: ; preds = %bb.j
  %i.bm = load i32, ptr %i.aw, align 4, !tbaa !135
  %i.bn = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !135
  %i.bp = icmp slt i32 %i.bm, %i.bo
  br i1 %i.bp, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i, !llvm.loop !223

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.i, %bb.j
  %i.bq = icmp ult ptr %.sroa.011.1.i, %.sroa.0.1.i
  br i1 %i.bq, label %bb.k, label %_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_SB_T0_.exit

bb.k:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i
  store i32 %i.bj, ptr %.sroa.011.1.i, align 4, !tbaa !4
  store i32 %i.bb, ptr %.sroa.0.1.i, align 4, !tbaa !4
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i, i64 4 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -4 ; 2 uses
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !4
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !4
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !4
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i, i64 8
  br label %bb.g, !llvm.loop !224

_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_SB_T0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i
  ret ptr %.sroa.011.1.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 8
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 4 uses
  %.sroa.02.0.copyload.i = load i64, ptr %i.f, align 4 ; 3 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !4
  store i32 %i.g, ptr %i.f, align 4, !tbaa !133
  %i.h = load i32, ptr %i.e, align 4, !tbaa !4
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4
  store i32 %i.h, ptr %i.i, align 4, !tbaa !135
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.j, %i.a                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = add nsw i64 %i.l, -1
  %i.n = sdiv i64 %i.m, 2
  %i.o = icmp sgt i64 %i.l, 2
  br i1 %i.o, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i
  %.039.i.i = phi i64 [ %i.ae, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.p = shl i64 %.039.i.i, 1                     ; 2 uses
  %i.q = add i64 %i.p, 2                          ; 3 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.s = or disjoint i64 %i.p, 1                  ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.r, align 4, !tbaa !133  ; 4 uses
  %i.v = load i32, ptr %i.t, align 4, !tbaa !133  ; 3 uses
  %i.w = icmp slt i32 %i.u, %i.v
  br i1 %i.w, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.x = icmp slt i32 %i.v, %i.u
  br i1 %i.x, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i: ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !135
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !135
  %i.ac = icmp slt i32 %i.z, %i.ab
  %cond.fr.i.i = freeze i1 %i.ac
  br i1 %cond.fr.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i, %.lr.ph.i.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i, %bb.c
  %i.ad = phi i32 [ %i.v, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i ], [ %i.u, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i ], [ %i.u, %bb.c ]
  %i.ae = phi i64 [ %i.s, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i ], [ %i.q, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i ], [ %i.q, %bb.c ] ; 4 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ae
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.039.i.i ; 2 uses
  store i32 %i.ad, ptr %i.ag, align 4, !tbaa !133
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !135
  %i.ak = icmp slt i64 %i.ae, %i.n
  br i1 %i.ak, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !225

._crit_edge.i.i:                                  ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.ae, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i ] ; 5 uses
  %i.al = and i64 %i.k, 8
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.an = add nsw i64 %i.l, -2
  %i.ao = ashr exact i64 %i.an, 1
  %i.ap = icmp eq i64 %.0.lcssa.i.i, %i.ao
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aq = shl nsw i64 %.0.lcssa.i.i, 1
  %i.ar = or disjoint i64 %i.aq, 1                ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ar
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i
  %i.au = load <2 x i32>, ptr %i.as, align 4, !tbaa !4
  store <2 x i32> %i.au, ptr %i.at, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.ar, %bb.e ], [ %.0.lcssa.i.i, %bb.d ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.sroa.012.0.extract.trunc.i.i.i = trunc i64 %.sroa.02.0.copyload.i to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i.i.i = lshr i64 %.sroa.02.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i to i32
  %i.av = icmp sgt i64 %.1.i.i, 0
  br i1 %i.av, label %.lr.ph.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i
  %.022.i.i.i = phi i64 [ %.0923.i.i78.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i ], [ %.1.i.i, %bb.f ] ; 4 uses
  %.0923.in.i.i.i = add nsw i64 %.022.i.i.i, -1
  %.0923.i.i78.i = lshr i64 %.0923.in.i.i.i, 1    ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0923.i.i78.i ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !133 ; 3 uses
  %i.ay = icmp slt i32 %i.ax, %.sroa.012.0.extract.trunc.i.i.i
  br i1 %i.ay, label %.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i.i.i, label %bb.g

.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i.i.i: ; preds = %.lr.ph.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !4
  br label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.az = icmp sgt i32 %i.ax, %.sroa.012.0.extract.trunc.i.i.i
  br i1 %i.az, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i: ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !135 ; 2 uses
  %i.bc = icmp slt i32 %i.bb, %.sroa.3.0.extract.trunc.i.i.i
  br i1 %i.bc, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i, %.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i.i.i
  %i.bd = phi i32 [ %.pre.i.i.i, %.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i.i.i ], [ %i.bb, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.022.i.i.i ; 2 uses
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !133
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 %i.bd, ptr %i.bf, align 4, !tbaa !135
  %.not.i = icmp eq i64 %.0923.i.i78.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !226

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit: ; preds = %bb.g, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi i64 [ %.1.i.i, %bb.f ], [ %.022.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i ], [ 0, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i ], [ %.022.i.i.i, %bb.g ]
  %i.bg = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i64 %.sroa.02.0.copyload.i, ptr %i.bg, align 4
  %i.bh = icmp sgt i64 %i.k, 8
  br i1 %i.bh, label %bb.b, label %._crit_edge, !llvm.loop !227

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit, %bb.b
  %.09 = phi i64 [ %i.g, %bb.b ], [ %i.bc, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %.09
  %.sroa.02.0.copyload = load i64, ptr %i.p, align 4 ; 3 uses
  %i.q = icmp slt i64 %.09, %i.i
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i
  %.039.i = phi i64 [ %i.ag, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i ], [ %.09, %bb.c ] ; 2 uses
  %i.r = shl i64 %.039.i, 1                       ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 3 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.t, align 4, !tbaa !133  ; 4 uses
  %i.x = load i32, ptr %i.v, align 4, !tbaa !133  ; 3 uses
  %i.y = icmp slt i32 %i.w, %i.x
  br i1 %i.y, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = icmp slt i32 %i.x, %i.w
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i: ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !135
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !135
  %i.ae = icmp slt i32 %i.ab, %i.ad
  %cond.fr.i = freeze i1 %i.ae
  br i1 %cond.fr.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %.lr.ph.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %bb.d
  %i.af = phi i32 [ %i.x, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i ], [ %i.w, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i ], [ %i.w, %bb.d ]
  %i.ag = phi i64 [ %i.u, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i ], [ %i.s, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i ], [ %i.s, %bb.d ] ; 4 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ag
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %.039.i ; 2 uses
  store i32 %i.af, ptr %i.ai, align 4, !tbaa !133
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !135
  %i.am = icmp slt i64 %i.ag, %i.i
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !225

._crit_edge.i:                                    ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.09, %bb.c ], [ %i.ag, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i ] ; 2 uses
  %i.an = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.an, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.ao = load <2 x i32>, ptr %i.n, align 4, !tbaa !4
  store <2 x i32> %i.ao, ptr %i.o, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.e ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.012.0.extract.trunc.i.i = trunc i64 %.sroa.02.0.copyload to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i.i = lshr i64 %.sroa.02.0.copyload, 32
  %.sroa.3.0.extract.trunc.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i to i32
  %i.ap = icmp sgt i64 %.1.i, %.09
  br i1 %i.ap, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i
  %.022.i.i = phi i64 [ %.0923.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i ], [ %.1.i, %bb.f ] ; 4 uses
  %.0923.in.i.i = add nsw i64 %.022.i.i, -1
  %.0923.i.i = sdiv i64 %.0923.in.i.i, 2          ; 4 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.0923.i.i ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !133 ; 3 uses
  %i.as = icmp slt i32 %i.ar, %.sroa.012.0.extract.trunc.i.i
  br i1 %i.as, label %.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i.i, label %bb.g

.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i.i: ; preds = %.lr.ph.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !4
  br label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.at = icmp sgt i32 %i.ar, %.sroa.012.0.extract.trunc.i.i
  br i1 %i.at, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i: ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !135 ; 2 uses
  %i.aw = icmp slt i32 %i.av, %.sroa.3.0.extract.trunc.i.i
  br i1 %i.aw, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i, %.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i.i
  %i.ax = phi i32 [ %.pre.i.i, %.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i.i ], [ %i.av, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i ]
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %.022.i.i ; 2 uses
  store i32 %i.ar, ptr %i.ay, align 4, !tbaa !133
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 %i.ax, ptr %i.az, align 4, !tbaa !135
  %i.ba = icmp sgt i64 %.0923.i.i, %.09
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit, !llvm.loop !226

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit: ; preds = %bb.g, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i, %bb.f
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.f ], [ %.022.i.i, %bb.g ], [ %.0923.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i ], [ %.022.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i ]
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i64 %.sroa.02.0.copyload, ptr %i.bb, align 4
  %.not = icmp eq i64 %.09, 0
  %i.bc = add nsw i64 %.09, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !228

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !14, i64 8}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0, !14, i64 8, !6, i64 16}
!14 = !{!"long", !6, i64 0}
!15 = !{!6, !6, i64 0}
!16 = !{!17, !5, i64 24}
!17 = !{!"_ZTS4Mesh", !18, i64 0, !19, i64 8, !20, i64 16, !5, i64 24, !21, i64 32, !26, i64 56, !26, i64 57, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !27, i64 88, !27, i64 96, !27, i64 104, !27, i64 112, !27, i64 120, !27, i64 128, !27, i64 136, !27, i64 144, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !27, i64 168, !27, i64 176, !27, i64 184, !27, i64 192, !27, i64 200, !27, i64 208, !27, i64 216, !27, i64 224, !27, i64 232, !28, i64 240, !28, i64 248, !28, i64 256, !28, i64 264, !28, i64 272, !28, i64 280, !28, i64 288, !25, i64 296, !25, i64 304, !25, i64 312, !25, i64 320, !25, i64 328, !25, i64 336, !25, i64 344, !25, i64 352, !25, i64 360, !28, i64 368, !25, i64 376, !25, i64 384, !25, i64 392, !5, i64 400, !29, i64 408, !29, i64 432, !29, i64 456, !29, i64 480, !5, i64 504, !29, i64 512, !29, i64 536, !5, i64 560, !29, i64 568, !29, i64 592}
!18 = !{!"p1 _ZTS7GenMesh", !11, i64 0}
!19 = !{!"p1 _ZTS7WriteXY", !11, i64 0}
!20 = !{!"p1 _ZTS10ExportGold", !11, i64 0}
!21 = !{!"_ZTSSt6vectorIdSaIdEE", !22, i64 0}
!22 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !23, i64 0}
!23 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !24, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!25 = !{!"p1 double", !11, i64 0}
!26 = !{!"bool", !6, i64 0}
!27 = !{!"p1 int", !11, i64 0}
!28 = !{!"p1 _ZTS7double2", !11, i64 0}
!29 = !{!"_ZTSSt6vectorIiSaIiEE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!33 = !{!13, !10, i64 0}
!34 = distinct !{null}
!35 = !{!24, !25, i64 0}
!36 = !{!24, !25, i64 16}
!37 = !{!25, !25, i64 0}
!38 = !{!24, !25, i64 8}
!39 = !{!17, !26, i64 56}
!40 = !{!17, !26, i64 57}
!41 = !{!17, !18, i64 0}
!42 = !{!17, !19, i64 8}
!43 = !{!17, !20, i64 16}
!44 = !{!32, !27, i64 0}
!45 = !{!32, !27, i64 16}
!46 = !{!47, !28, i64 8}
!47 = !{!"_ZTSNSt12_Vector_baseI7double2SaIS0_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!48 = !{!47, !28, i64 0}
!49 = !{!17, !5, i64 60}
!50 = !{!32, !27, i64 8}
!51 = !{!17, !5, i64 68}
!52 = !{!17, !5, i64 72}
!53 = !{!17, !5, i64 76}
!54 = !{!17, !27, i64 232}
!55 = !{!27, !27, i64 0}
!56 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!57 = !{!17, !28, i64 240}
!58 = !{!17, !5, i64 64}
!59 = !{!17, !28, i64 248}
!60 = !{!17, !28, i64 256}
!61 = !{!17, !28, i64 288}
!62 = !{!17, !28, i64 264}
!63 = !{!17, !28, i64 272}
!64 = !{!17, !28, i64 280}
!65 = !{!17, !25, i64 296}
!66 = !{!17, !25, i64 304}
!67 = !{!17, !25, i64 312}
!68 = !{!17, !25, i64 320}
!69 = !{!17, !25, i64 328}
!70 = !{!17, !25, i64 336}
!71 = !{!17, !25, i64 344}
!72 = !{!17, !25, i64 352}
!73 = !{!17, !25, i64 360}
!74 = !{!17, !28, i64 368}
!75 = !{!17, !25, i64 376}
!76 = !{!17, !25, i64 392}
!77 = !{!17, !25, i64 384}
!78 = !{!17, !5, i64 504}
!79 = !{!17, !5, i64 80}
!80 = !{!17, !5, i64 400}
!81 = distinct !{!81, !82, !83, !84}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"llvm.loop.isvectorized", i32 1}
!84 = !{!"llvm.loop.unroll.runtime.disable"}
!85 = !{!86, !86, i64 0}
!86 = !{!"double", !6, i64 0}
!87 = distinct !{!87, !88}
!88 = !{!"llvm.loop.unroll.disable"}
!89 = distinct !{!89, !82}
!90 = distinct !{!90, !82, !83}
!91 = !{!17, !27, i64 104}
!92 = !{!17, !27, i64 88}
!93 = !{!17, !27, i64 96}
!94 = !{!95, !86, i64 0}
!95 = !{!"_ZTS7double2", !86, i64 0, !86, i64 8}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZmiRK7double2S1_: argument 0"}
!98 = distinct !{!98, !"_ZmiRK7double2S1_"}
!99 = !{!95, !86, i64 8}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZmiRK7double2S1_: argument 0"}
!102 = distinct !{!102, !"_ZmiRK7double2S1_"}
!103 = distinct !{!103, !82}
!104 = distinct !{!104, !82}
!105 = distinct !{!105, !82}
!106 = !{!47, !28, i64 16}
!107 = !{!17, !27, i64 120}
!108 = !{!17, !27, i64 128}
!109 = distinct !{!109, !82}
!110 = distinct !{!110, !82, !111}
!111 = !{!"llvm.loop.peeled.count", i32 2}
!112 = !{!113, !114, i64 0}
!113 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataE", !114, i64 0, !114, i64 8, !114, i64 16}
!114 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !11, i64 0}
!115 = !{!113, !114, i64 16}
!116 = !{!113, !114, i64 8}
!117 = !{!17, !27, i64 112}
!118 = distinct !{!118, !82}
!119 = distinct !{!119, !82}
!120 = distinct !{!120, !82}
!121 = distinct !{!121, !82}
!122 = distinct !{!122, !82}
!123 = distinct !{!123, !82}
!124 = !{!17, !5, i64 560}
!125 = !{!17, !27, i64 136}
!126 = !{!17, !27, i64 144}
!127 = !{!128}
!128 = distinct !{!128, !129}
!129 = distinct !{!129, !"LVerDomain"}
!130 = !{!131}
!131 = distinct !{!131, !129}
!132 = distinct !{!132, !82, !83, !84}
!133 = !{!134, !5, i64 0}
!134 = !{!"_ZTSSt4pairIiiE", !5, i64 0, !5, i64 4}
!135 = !{!134, !5, i64 4}
!136 = distinct !{!136, !88}
!137 = distinct !{!137, !82, !83}
!138 = distinct !{!138, !82, !139}
!139 = !{!"llvm.loop.peeled.count", i32 1}
!140 = !{!17, !5, i64 152}
!141 = !{!17, !27, i64 200}
!142 = !{!17, !27, i64 208}
!143 = !{!17, !27, i64 216}
!144 = distinct !{!144, !88}
!145 = !{!17, !5, i64 164}
!146 = !{!17, !27, i64 224}
!147 = !{!17, !5, i64 156}
!148 = !{!17, !27, i64 168}
!149 = !{!17, !27, i64 192}
!150 = !{!17, !27, i64 176}
!151 = distinct !{!151, !82}
!152 = distinct !{!152, !88}
!153 = !{!17, !5, i64 160}
!154 = !{!17, !27, i64 184}
!155 = distinct !{!155, !82}
!156 = !{!14, !14, i64 0}
!157 = !{!158, !158, i64 0}
!158 = !{!"vtable pointer", !7, i64 0}
!159 = !{!160, !171, i64 240}
!160 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !161, i64 0, !169, i64 216, !6, i64 224, !26, i64 225, !170, i64 232, !171, i64 240, !172, i64 248, !173, i64 256}
!161 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !162, i64 24, !163, i64 28, !163, i64 32, !164, i64 40, !165, i64 48, !6, i64 64, !5, i64 192, !166, i64 200, !167, i64 208}
!162 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!163 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!164 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!165 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !14, i64 8}
!166 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!167 = !{!"_ZTSSt6locale", !168, i64 0}
!168 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!169 = !{!"p1 _ZTSSo", !11, i64 0}
!170 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 0}
!171 = !{!"p1 _ZTSSt5ctypeIcE", !11, i64 0}
!172 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!173 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!174 = !{!175, !6, i64 56}
!175 = !{!"_ZTSSt5ctypeIcE", !176, i64 0, !177, i64 16, !26, i64 24, !27, i64 32, !27, i64 40, !178, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!176 = !{!"_ZTSNSt6locale5facetE", !5, i64 8}
!177 = !{!"p1 _ZTS15__locale_struct", !11, i64 0}
!178 = !{!"p1 short", !11, i64 0}
!179 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!180 = distinct !{!180, !82, !83, !84}
!181 = !{!182}
!182 = distinct !{!182, !183, !"_ZplRK7double2S1_: argument 0"}
!183 = distinct !{!183, !"_ZplRK7double2S1_"}
!184 = distinct !{!184, !82}
!185 = distinct !{!185, !82, !84, !83}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZmiRK7double2S1_: argument 0"}
!188 = distinct !{!188, !"_ZmiRK7double2S1_"}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_ZmiRK7double2S1_: argument 0"}
!191 = distinct !{!191, !"_ZmiRK7double2S1_"}
!192 = !{i8 0, i8 2}
!193 = !{}
!194 = distinct !{!194, !82}
!195 = distinct !{!195, !82}
!196 = distinct !{!196, !82}
!197 = distinct !{!197, !82}
!198 = !{!199}
!199 = distinct !{!199, !200, !"_ZmiRK7double2S1_: argument 0"}
!200 = distinct !{!200, !"_ZmiRK7double2S1_"}
!201 = distinct !{!201, !82}
!202 = !{!203}
!203 = distinct !{!203, !204, !"_ZmiRK7double2S1_: argument 0"}
!204 = distinct !{!204, !"_ZmiRK7double2S1_"}
!205 = distinct !{!205, !82}
!206 = distinct !{!206, !82, !83, !84}
!207 = distinct !{!207, !82, !84, !83}
!208 = distinct !{!208, !82}
!209 = distinct !{!209, !82}
!210 = distinct !{!210, !82}
!211 = distinct !{!211, !82}
!212 = distinct !{!212, !82}
!213 = distinct !{!213, !82}
!214 = distinct !{!214, !82}
!215 = distinct !{!215, !82}
!216 = distinct !{!216, !88}
!217 = distinct !{!217, !82}
!218 = distinct !{!218, !82}
!219 = distinct !{!219, !82}
!220 = distinct !{!220, !82}
!221 = distinct !{!221, !88}
!222 = distinct !{!222, !82}
!223 = distinct !{!223, !82}
!224 = distinct !{!224, !82}
!225 = distinct !{!225, !82}
!226 = distinct !{!226, !82}
!227 = distinct !{!227, !82}
!228 = distinct !{!228, !82}
end_hunk_0
