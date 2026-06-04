inline.NumInlined: 1072
inline.NumDeleted: 640
begin_hunk_0_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_:bb.a
  %i.h = load i32, ptr %0, align 4, !tbaa !168    ; 2 uses
  %i.i = icmp ult i32 %i.g, %i.h
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ult i32 %i.h, %i.g
  br i1 %i.j, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !170
  %i.m = load i32, ptr %i.e, align 4, !tbaa !170
  %i.n = icmp ult i32 %i.l, %i.m
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i
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
  store i32 %i.t, ptr %i.s, align 4, !tbaa !168
  %i.u = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -4
  store i32 %i.v, ptr %i.w, align 4, !tbaa !170
  %i.x = add nsw i64 %.010.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter.next.a = add i64 %prol.iter.a, 1     ; 2 uses
  %prol.iter.cmp.not.a = icmp eq i64 %prol.iter.next.a, %xtraiter.a
  br i1 %prol.iter.cmp.not.a, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !225

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.sroa.07.020.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.y = icmp ult i64 %indvar, 3
  br i1 %i.y, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.aa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !4
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !168
  %i.ac = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -4
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !170
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !4
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !168
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -12
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !170
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.am = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  %i.an = load i32, ptr %i.al, align 4, !tbaa !4
  store i32 %i.an, ptr %i.am, align 4, !tbaa !168
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -20
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !170
  %i.ar = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32 ; 2 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !4
  store i32 %i.at, ptr %i.as, align 4, !tbaa !168
  %i.au = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4
  %i.aw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -28
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !170
  %i.ax = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.ay = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i, !llvm.loop !227

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  store i64 %i.o, ptr %0, align 4
  br label %bb.f

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %bb.c
  %i.az = load i64, ptr %.sroa.07.020.i.ptr, align 4 ; 3 uses
  %.sroa.03.0.extract.trunc.i.i = trunc i64 %i.az to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.az, 32
  %.sroa.5.0.extract.trunc.i.i = trunc nuw i64 %.sroa.5.0.extract.shift.i.i to i32
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i
  %.sroa.06.0.i.i = phi ptr [ %.sroa.07.020.i.ptr, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i ], [ %.sroa.0.0.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i ] ; 6 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.06.0.i.i, i64 -8 ; 2 uses
  %i.ba = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !168 ; 3 uses
  %i.bb = icmp ugt i32 %i.ba, %.sroa.03.0.extract.trunc.i.i
  br i1 %i.bb, label %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i, label %bb.e

._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i: ; preds = %bb.d
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.sroa.06.0.i.i, i64 -4
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !4
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.bc = icmp ult i32 %i.ba, %.sroa.03.0.extract.trunc.i.i
  br i1 %i.bc, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i: ; preds = %bb.e
  %i.bd = getelementptr inbounds i8, ptr %.sroa.06.0.i.i, i64 -4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !170 ; 2 uses
  %i.bf = icmp ugt i32 %i.be, %.sroa.5.0.extract.trunc.i.i
  br i1 %i.bf, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i
  %i.bg = phi i32 [ %.pre.i.i, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i ], [ %i.be, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i ]
  store i32 %i.ba, ptr %.sroa.06.0.i.i, align 4, !tbaa !168
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 4
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !170
  br label %bb.d, !llvm.loop !228

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i, %bb.e
  store i64 %i.az, ptr %.sroa.06.0.i.i, align 4
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i
  %.sroa.07.020.i.add = add nuw nsw i64 %.sroa.07.020.i.idx, 8 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.07.020.i.add, 128
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %bb.b, !llvm.loop !229

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit: ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not4.i = icmp eq ptr %i.bi, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13
  %.sroa.0.05.i = phi ptr [ %i.bs, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13 ], [ %i.bi, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit ] ; 3 uses
  %i.bj = load i64, ptr %.sroa.0.05.i, align 4    ; 3 uses
  %.sroa.03.0.extract.trunc.i.i7 = trunc i64 %i.bj to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i8 = lshr i64 %i.bj, 32
  %.sroa.5.0.extract.trunc.i.i9 = trunc nuw i64 %.sroa.5.0.extract.shift.i.i8 to i32
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15, %.lr.ph.i6
  %.sroa.06.0.i.i10 = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.0.i.i11, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15 ] ; 6 uses
  %.sroa.0.0.i.i11 = getelementptr inbounds i8, ptr %.sroa.06.0.i.i10, i64 -8 ; 2 uses
  %i.bk = load i32, ptr %.sroa.0.0.i.i11, align 4, !tbaa !168 ; 3 uses
  %i.bl = icmp ugt i32 %i.bk, %.sroa.03.0.extract.trunc.i.i7
  br i1 %i.bl, label %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i16, label %bb.h

._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i16: ; preds = %bb.g
  %.phi.trans.insert.i.i17 = getelementptr inbounds i8, ptr %.sroa.06.0.i.i10, i64 -4
  %.pre.i.i18 = load i32, ptr %.phi.trans.insert.i.i17, align 4, !tbaa !4
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15

bb.h:                                             ; preds = %bb.g
  %i.bm = icmp ult i32 %i.bk, %.sroa.03.0.extract.trunc.i.i7
  br i1 %i.bm, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i12

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i12: ; preds = %bb.h
  %i.bn = getelementptr inbounds i8, ptr %.sroa.06.0.i.i10, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !170 ; 2 uses
  %i.bp = icmp ugt i32 %i.bo, %.sroa.5.0.extract.trunc.i.i9
  br i1 %i.bp, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i12, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i16
  %i.bq = phi i32 [ %.pre.i.i18, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i16 ], [ %i.bo, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i12 ]
  store i32 %i.bk, ptr %.sroa.06.0.i.i10, align 4, !tbaa !168
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i10, i64 4
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !170
  br label %bb.g, !llvm.loop !228

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i12, %bb.h
  store i64 %i.bj, ptr %.sroa.06.0.i.i10, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 8 ; 2 uses
  %.not.i14 = icmp eq ptr %i.bs, %1
  br i1 %.not.i14, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.lr.ph.i6, !llvm.loop !230

bb.i:                                             ; preds = %bb.a
  %i.bt = icmp eq ptr %0, %1
  br i1 %i.bt, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.preheader.i19

.preheader.i19:                                   ; preds = %bb.i
  %.sroa.07.017.i20 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not18.i21 = icmp eq ptr %.sroa.07.017.i20, %1
  br i1 %.not18.i21, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.preheader.i19
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.lr.ph.i22
  %.sroa.07.020.i23 = phi ptr [ %.sroa.07.017.i20, %.lr.ph.i22 ], [ %.sroa.07.0.i34, %bb.n ] ; 9 uses
  %.pn19.i24 = phi ptr [ %0, %.lr.ph.i22 ], [ %.sroa.07.020.i23, %bb.n ] ; 2 uses
  %i.bv = load i32, ptr %.sroa.07.020.i23, align 4, !tbaa !168 ; 2 uses
  %i.bw = load i32, ptr %0, align 4, !tbaa !168   ; 2 uses
  %i.bx = icmp ult i32 %i.bv, %i.bw
  br i1 %i.bx, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i40, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = icmp ult i32 %i.bw, %i.bv
  br i1 %i.by, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i26, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i25

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i25: ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %.pn19.i24, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !170
  %i.cb = load i32, ptr %i.bu, align 4, !tbaa !170
  %i.cc = icmp ult i32 %i.ca, %i.cb
  br i1 %i.cc, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i40, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i26

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i40: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i25, %bb.j
  %i.cd = load i64, ptr %.sroa.07.020.i23, align 4
  %i.ce = ptrtoint ptr %.sroa.07.020.i23 to i64
  %i.cf = sub i64 %i.ce, %i.b
  %i.cg = ashr exact i64 %i.cf, 3                 ; 5 uses
  %i.ch = icmp sgt i64 %i.cg, 0
  br i1 %i.ch, label %vector.ph, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i41

vector.ph:                                        ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i40
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
  store i32 %3, ptr %next.gep69, align 4, !tbaa !168
  %i.cj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46.prol, i64 -4
  %4 = load i32, ptr %i.cj, align 4, !tbaa !4
  %i.ck = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45.prol, i64 -4
  store i32 %4, ptr %i.ck, align 4, !tbaa !170
  %5 = add nsw i64 %index, -1                     ; 2 uses
  %index.next = add i64 %prol.iter, 1             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %i.ci
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i.i43.preheader, label %vector.body, !llvm.loop !231

.lr.ph.i.i.i.i.i.i43.preheader:                   ; preds = %vector.body, %vector.ph
  %.010.i.i.i.i.i.i44.ph = phi i64 [ %i.cg, %vector.ph ], [ %5, %vector.body ]
  %.069.i.i.i.i.i.i45.ph = phi ptr [ %2, %vector.ph ], [ %next.gep69, %vector.body ]
  %.078.i.i.i.i.i.i46.ph = phi ptr [ %.sroa.07.020.i23, %vector.ph ], [ %next.gep, %vector.body ]
  %6 = icmp ult i64 %i.cg, 4
  br i1 %6, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i41, label %.lr.ph.i.i.i.i.i.i43

.lr.ph.i.i.i.i.i.i43:                             ; preds = %.lr.ph.i.i.i.i.i.i43.preheader, %.lr.ph.i.i.i.i.i.i43
  %.010.i.i.i.i.i.i44 = phi i64 [ %i.cs, %.lr.ph.i.i.i.i.i.i43 ], [ %.010.i.i.i.i.i.i44.ph, %.lr.ph.i.i.i.i.i.i43.preheader ] ; 2 uses
  %.069.i.i.i.i.i.i45 = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i43 ], [ %.069.i.i.i.i.i.i45.ph, %.lr.ph.i.i.i.i.i.i43.preheader ] ; 8 uses
  %.078.i.i.i.i.i.i46 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i43 ], [ %.078.i.i.i.i.i.i46.ph, %.lr.ph.i.i.i.i.i.i43.preheader ] ; 8 uses
  %7 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46, i64 -8
  %8 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45, i64 -8
  %9 = load i32, ptr %7, align 4, !tbaa !4
  store i32 %9, ptr %8, align 4, !tbaa !168
  %10 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46, i64 -4
  %11 = load i32, ptr %10, align 4, !tbaa !4
  %12 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45, i64 -4
  store i32 %11, ptr %12, align 4, !tbaa !170
  %13 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46, i64 -16
  %14 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45, i64 -16
  %15 = load i32, ptr %13, align 4, !tbaa !4
  store i32 %15, ptr %14, align 4, !tbaa !168
  %16 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46, i64 -12
  %17 = load i32, ptr %16, align 4, !tbaa !4
  %18 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45, i64 -12
  store i32 %17, ptr %18, align 4, !tbaa !170
  %19 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46, i64 -24
  %20 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45, i64 -24
  %21 = load i32, ptr %19, align 4, !tbaa !4
  store i32 %21, ptr %20, align 4, !tbaa !168
  %22 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46, i64 -20
  %23 = load i32, ptr %22, align 4, !tbaa !4
  %24 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45, i64 -20
  store i32 %23, ptr %24, align 4, !tbaa !170
  %i.cm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46, i64 -32 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45, i64 -32 ; 2 uses
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !4
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !168
  %i.cp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46, i64 -28
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !4
  %i.cr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45, i64 -28
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !170
  %i.cs = add nsw i64 %.010.i.i.i.i.i.i44, -4
  %25 = icmp sgt i64 %.010.i.i.i.i.i.i44, 4
  br i1 %25, label %.lr.ph.i.i.i.i.i.i43, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i41, !llvm.loop !227

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i41: ; preds = %.lr.ph.i.i.i.i.i.i43.preheader, %.lr.ph.i.i.i.i.i.i43, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i40
  store i64 %i.cd, ptr %0, align 4
  br label %bb.n

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i26: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i25, %bb.k
  %i.ct = load i64, ptr %.sroa.07.020.i23, align 4 ; 3 uses
  %.sroa.03.0.extract.trunc.i.i27 = trunc i64 %i.ct to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i28 = lshr i64 %i.ct, 32
  %.sroa.5.0.extract.trunc.i.i29 = trunc nuw i64 %.sroa.5.0.extract.shift.i.i28 to i32
  br label %bb.l

bb.l:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i36, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i26
  %.sroa.06.0.i.i30 = phi ptr [ %.sroa.07.020.i23, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i26 ], [ %.sroa.0.0.i.i31, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i36 ] ; 6 uses
  %.sroa.0.0.i.i31 = getelementptr inbounds i8, ptr %.sroa.06.0.i.i30, i64 -8 ; 2 uses
  %i.cu = load i32, ptr %.sroa.0.0.i.i31, align 4, !tbaa !168 ; 3 uses
  %i.cv = icmp ugt i32 %i.cu, %.sroa.03.0.extract.trunc.i.i27
  br i1 %i.cv, label %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i37, label %bb.m

._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i37: ; preds = %bb.l
  %.phi.trans.insert.i.i38 = getelementptr inbounds i8, ptr %.sroa.06.0.i.i30, i64 -4
  %.pre.i.i39 = load i32, ptr %.phi.trans.insert.i.i38, align 4, !tbaa !4
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i36

bb.m:                                             ; preds = %bb.l
  %i.cw = icmp ult i32 %i.cu, %.sroa.03.0.extract.trunc.i.i27
  br i1 %i.cw, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i32

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i32: ; preds = %bb.m
  %i.cx = getelementptr inbounds i8, ptr %.sroa.06.0.i.i30, i64 -4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !170 ; 2 uses
  %i.cz = icmp ugt i32 %i.cy, %.sroa.5.0.extract.trunc.i.i29
  br i1 %i.cz, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i36, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i36: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i32, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i37
  %i.da = phi i32 [ %.pre.i.i39, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i37 ], [ %i.cy, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i32 ]
  store i32 %i.cu, ptr %.sroa.06.0.i.i30, align 4, !tbaa !168
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i30, i64 4
  store i32 %i.da, ptr %i.db, align 4, !tbaa !170
  br label %bb.l, !llvm.loop !228

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i32, %bb.m
  store i64 %i.ct, ptr %.sroa.06.0.i.i30, align 4
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i41
  %.sroa.07.0.i34 = getelementptr inbounds nuw i8, ptr %.sroa.07.020.i23, i64 8 ; 2 uses
  %.not.i35 = icmp eq ptr %.sroa.07.0.i34, %1
  br i1 %.not.i35, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %bb.j, !llvm.loop !229

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13, %.preheader.i19, %bb.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_(ptr %0, ptr %1) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3
  %i.e = sdiv i64 %i.d, 2
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 -8 ; 6 uses
  %i.i = load i32, ptr %i.g, align 4, !tbaa !168  ; 9 uses
  %i.j = load i32, ptr %i.f, align 4, !tbaa !168  ; 9 uses
  %i.k = icmp ult i32 %i.i, %i.j
  br i1 %i.k, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ult i32 %i.j, %i.i
  br i1 %i.l, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !170
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !170
  %i.q = icmp ult i32 %i.n, %i.p
  br i1 %i.q, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %bb.a
  %i.r = load i32, ptr %i.h, align 4, !tbaa !168  ; 6 uses
  %i.s = icmp ult i32 %i.j, %i.r
  br i1 %i.s, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i
  %i.t = icmp ult i32 %i.r, %i.j
  br i1 %i.t, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !170
  %i.w = getelementptr inbounds i8, ptr %1, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !170
  %i.y = icmp ult i32 %i.v, %i.x
  br i1 %i.y, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i, %bb.c
  %i.z = icmp ult i32 %i.i, %i.r
  br i1 %i.z, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i
  %i.aa = icmp ult i32 %i.r, %i.i
  br i1 %i.aa, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i: ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !170
  %i.ad = getelementptr inbounds i8, ptr %1, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !170
  %i.af = icmp ult i32 %i.ac, %i.ae
  br i1 %i.af, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %bb.b
  %i.ag = load i32, ptr %i.h, align 4, !tbaa !168 ; 6 uses
  %i.ah = icmp ult i32 %i.i, %i.ag
  br i1 %i.ah, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i
  %i.ai = icmp ult i32 %i.ag, %i.i
  br i1 %i.ai, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !170
  %i.al = getelementptr inbounds i8, ptr %1, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !170
  %i.an = icmp ult i32 %i.ak, %i.am
  br i1 %i.an, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i, %bb.e
  %i.ao = icmp ult i32 %i.j, %i.ag
  br i1 %i.ao, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i
  %i.ap = icmp ult i32 %i.ag, %i.j
  br i1 %i.ap, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i: ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !170
  %i.as = getelementptr inbounds i8, ptr %1, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !170
  %i.au = icmp ult i32 %i.ar, %i.at
  br i1 %i.au, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i, %bb.f
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i
  %.sink46.i = phi i32 [ %i.r, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i ], [ %i.j, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i ], [ %i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i ], [ %i.j, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i ], [ %i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i ], [ %i.j, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i ], [ %i.r, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i ], [ %i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i ], [ %i.ag, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i ], [ %i.ag, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i ]
  %.sink45.i = phi ptr [ %i.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i ], [ %i.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i ], [ %i.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i ], [ %i.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i ], [ %i.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i ], [ %i.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i ], [ %i.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i ], [ %i.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i ], [ %i.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i ], [ %i.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i ] ; 2 uses
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

bb.g:                                             ; preds = %bb.k, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit
  %.sroa.011.0.i = phi ptr [ %i.g, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit ], [ %i.bv, %bb.k ]
  %.sroa.0.0.i = phi ptr [ %1, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit ], [ %.sroa.0.1.i, %bb.k ]
  %i.ba = load i32, ptr %0, align 4, !tbaa !168   ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10, %bb.g
  %.sroa.011.1.i = phi ptr [ %.sroa.011.0.i, %bb.g ], [ %i.bi, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10 ] ; 8 uses
  %i.bb = load i32, ptr %.sroa.011.1.i, align 4, !tbaa !168 ; 3 uses
  %i.bc = icmp ult i32 %i.bb, %i.ba
  br i1 %i.bc, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = icmp ult i32 %i.ba, %i.bb
  br i1 %i.bd, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i9

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i9, %bb.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i9: ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !170
  %i.bg = load i32, ptr %i.aw, align 4, !tbaa !170
  %i.bh = icmp ult i32 %i.bf, %i.bg
  br i1 %i.bh, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i9, %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i, i64 8
  br label %bb.h, !llvm.loop !232

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader
  %.sroa.0.0.pn.i = phi ptr [ %.sroa.0.0.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader ], [ %.sroa.0.1.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge ] ; 3 uses
  %.sroa.0.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -8 ; 5 uses
  %i.bj = load i32, ptr %.sroa.0.1.i, align 4, !tbaa !168 ; 3 uses
  %i.bk = icmp ult i32 %i.ba, %i.bj
  br i1 %i.bk, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge, label %bb.j

bb.j:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i
  %i.bl = icmp ult i32 %i.bj, %i.ba
  br i1 %i.bl, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.i: ; preds = %bb.j
  %i.bm = load i32, ptr %i.aw, align 4, !tbaa !170
  %i.bn = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !170
  %i.bp = icmp ult i32 %i.bm, %i.bo
  br i1 %i.bp, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i, !llvm.loop !233

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.i, %bb.j
  %i.bq = icmp ult ptr %.sroa.011.1.i, %.sroa.0.1.i
  br i1 %i.bq, label %bb.k, label %_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_SB_T0_.exit

bb.k:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i
  store i32 %i.bj, ptr %.sroa.011.1.i, align 4, !tbaa !4
  store i32 %i.bb, ptr %.sroa.0.1.i, align 4, !tbaa !4
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i, i64 4 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -4 ; 2 uses
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !4
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !4
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !4
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i, i64 8
  br label %bb.g, !llvm.loop !234

_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_SB_T0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i
  ret ptr %.sroa.011.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 8
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 4 uses
  %.sroa.02.0.copyload.i = load i64, ptr %i.f, align 4 ; 3 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !4
  store i32 %i.g, ptr %i.f, align 4, !tbaa !168
  %i.h = load i32, ptr %i.e, align 4, !tbaa !4
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4
  store i32 %i.h, ptr %i.i, align 4, !tbaa !170
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.j, %i.a                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = add nsw i64 %i.l, -1
  %i.n = sdiv i64 %i.m, 2
  %i.o = icmp sgt i64 %i.l, 2
  br i1 %i.o, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i
  %.039.i.i = phi i64 [ %i.ae, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.p = shl i64 %.039.i.i, 1                     ; 2 uses
  %i.q = add i64 %i.p, 2                          ; 3 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.s = or disjoint i64 %i.p, 1                  ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.r, align 4, !tbaa !168  ; 4 uses
  %i.v = load i32, ptr %i.t, align 4, !tbaa !168  ; 3 uses
  %i.w = icmp ult i32 %i.u, %i.v
  br i1 %i.w, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.x = icmp ult i32 %i.v, %i.u
  br i1 %i.x, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i: ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !170
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !170
  %i.ac = icmp ult i32 %i.z, %i.ab
  %cond.fr.i.i = freeze i1 %i.ac
  br i1 %cond.fr.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i, %.lr.ph.i.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i, %bb.c
  %i.ad = phi i32 [ %i.v, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i ], [ %i.u, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i ], [ %i.u, %bb.c ]
  %i.ae = phi i64 [ %i.s, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i ], [ %i.q, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i ], [ %i.q, %bb.c ] ; 4 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ae
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.039.i.i ; 2 uses
  store i32 %i.ad, ptr %i.ag, align 4, !tbaa !168
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !170
  %i.ak = icmp slt i64 %i.ae, %i.n
  br i1 %i.ak, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !235

._crit_edge.i.i:                                  ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.ae, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i ] ; 5 uses
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
  br i1 %i.av, label %.lr.ph.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i
  %.022.i.i.i = phi i64 [ %.0923.i.i78.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i ], [ %.1.i.i, %bb.f ] ; 4 uses
  %.0923.in.i.i.i = add nsw i64 %.022.i.i.i, -1
  %.0923.i.i78.i = lshr i64 %.0923.in.i.i.i, 1    ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0923.i.i78.i ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !168 ; 3 uses
  %i.ay = icmp ult i32 %i.ax, %.sroa.012.0.extract.trunc.i.i.i
  br i1 %i.ay, label %.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i.i.i, label %bb.g

.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i.i.i: ; preds = %.lr.ph.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !4
  br label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.az = icmp ugt i32 %i.ax, %.sroa.012.0.extract.trunc.i.i.i
  br i1 %i.az, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i: ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !170 ; 2 uses
  %i.bc = icmp ult i32 %i.bb, %.sroa.3.0.extract.trunc.i.i.i
  br i1 %i.bc, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i, %.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i.i.i
  %i.bd = phi i32 [ %.pre.i.i.i, %.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i.i.i ], [ %i.bb, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.022.i.i.i ; 2 uses
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !168
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 %i.bd, ptr %i.bf, align 4, !tbaa !170
  %.not.i = icmp eq i64 %.0923.i.i78.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !236

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit: ; preds = %bb.g, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi i64 [ %.1.i.i, %bb.f ], [ %.022.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i ], [ 0, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i ], [ %.022.i.i.i, %bb.g ]
  %i.bg = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i64 %.sroa.02.0.copyload.i, ptr %i.bg, align 4
  %i.bh = icmp sgt i64 %i.k, 8
  br i1 %i.bh, label %bb.b, label %._crit_edge, !llvm.loop !237

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat {
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

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit, %bb.b
  %.09 = phi i64 [ %i.g, %bb.b ], [ %i.bc, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %.09
  %.sroa.02.0.copyload = load i64, ptr %i.p, align 4 ; 3 uses
  %i.q = icmp slt i64 %.09, %i.i
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i
  %.039.i = phi i64 [ %i.ag, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i ], [ %.09, %bb.c ] ; 2 uses
  %i.r = shl i64 %.039.i, 1                       ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 3 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.t, align 4, !tbaa !168  ; 4 uses
  %i.x = load i32, ptr %i.v, align 4, !tbaa !168  ; 3 uses
  %i.y = icmp ult i32 %i.w, %i.x
  br i1 %i.y, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = icmp ult i32 %i.x, %i.w
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i: ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !170
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !170
  %i.ae = icmp ult i32 %i.ab, %i.ad
  %cond.fr.i = freeze i1 %i.ae
  br i1 %cond.fr.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %.lr.ph.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %bb.d
  %i.af = phi i32 [ %i.x, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i ], [ %i.w, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i ], [ %i.w, %bb.d ]
  %i.ag = phi i64 [ %i.u, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i ], [ %i.s, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i ], [ %i.s, %bb.d ] ; 4 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ag
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %.039.i ; 2 uses
  store i32 %i.af, ptr %i.ai, align 4, !tbaa !168
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !170
  %i.am = icmp slt i64 %i.ag, %i.i
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !235

._crit_edge.i:                                    ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.09, %bb.c ], [ %i.ag, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i ] ; 2 uses
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
  br i1 %i.ap, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i
  %.022.i.i = phi i64 [ %.0923.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i ], [ %.1.i, %bb.f ] ; 4 uses
  %.0923.in.i.i = add nsw i64 %.022.i.i, -1
  %.0923.i.i = sdiv i64 %.0923.in.i.i, 2          ; 4 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.0923.i.i ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !168 ; 3 uses
  %i.as = icmp ult i32 %i.ar, %.sroa.012.0.extract.trunc.i.i
  br i1 %i.as, label %.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i.i, label %bb.g

.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i.i: ; preds = %.lr.ph.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !4
  br label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.at = icmp ugt i32 %i.ar, %.sroa.012.0.extract.trunc.i.i
  br i1 %i.at, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i: ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !170 ; 2 uses
  %i.aw = icmp ult i32 %i.av, %.sroa.3.0.extract.trunc.i.i
  br i1 %i.aw, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i, %.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i.i
  %i.ax = phi i32 [ %.pre.i.i, %.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i.i ], [ %i.av, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i ]
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %.022.i.i ; 2 uses
  store i32 %i.ar, ptr %i.ay, align 4, !tbaa !168
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 %i.ax, ptr %i.az, align 4, !tbaa !170
  %i.ba = icmp sgt i64 %.0923.i.i, %.09
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit, !llvm.loop !236

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit: ; preds = %bb.g, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i, %bb.f
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.f ], [ %.022.i.i, %bb.g ], [ %.0923.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i ], [ %.022.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i ]
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i64 %.sroa.02.0.copyload, ptr %i.bb, align 4
  %.not = icmp eq i64 %.09, 0
  %i.bc = add nsw i64 %.09, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !238

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !164    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #25
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !15
  %i.t = load ptr, ptr %2, align 8, !tbaa !19     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !22   ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  store ptr %i.t, ptr %i.r, align 8, !tbaa !19
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !21
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ab = phi i64 [ %i.x, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !22
  store ptr %i.u, ptr %2, align 8, !tbaa !19
  store i64 0, ptr %i.ac, align 8, !tbaa !22
  store i8 0, ptr %i.u, align 8, !tbaa !21
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !15, !alias.scope !239, !noalias !242
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !19, !alias.scope !242, !noalias !239 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !22, !alias.scope !242, !noalias !239 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !244
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !19, !alias.scope !239, !noalias !242
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !21, !alias.scope !242, !noalias !239
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !21, !alias.scope !239, !noalias !242
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !22, !alias.scope !242, !noalias !239
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.e
  %i.an = phi i64 [ %i.aj, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !22, !alias.scope !239, !noalias !242
  store ptr %i.ag, ptr %.0911.i.i.i, align 8, !tbaa !19, !alias.scope !242, !noalias !239
  store i64 0, ptr %i.ao, align 8, !tbaa !22, !alias.scope !242, !noalias !239
  store i8 0, ptr %i.ag, align 8, !tbaa !21, !alias.scope !242, !noalias !239
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !245

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !15, !alias.scope !246, !noalias !249
  %i.au = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !19, !alias.scope !249, !noalias !246 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.f:                                             ; preds = %.lr.ph.i.i.i17
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !22, !alias.scope !249, !noalias !246 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false), !alias.scope !251
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.au, ptr %.012.i.i.i18, align 8, !tbaa !19, !alias.scope !246, !noalias !249
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !21, !alias.scope !249, !noalias !246
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !21, !alias.scope !246, !noalias !249
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !22, !alias.scope !249, !noalias !246
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.f
  %i.bc = phi i64 [ %i.ay, %bb.f ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !22, !alias.scope !246, !noalias !249
  store ptr %i.av, ptr %.0911.i.i.i19, align 8, !tbaa !19, !alias.scope !249, !noalias !246
  store i64 0, ptr %i.bd, align 8, !tbaa !22, !alias.scope !249, !noalias !246
  store i8 0, ptr %i.av, align 8, !tbaa !21, !alias.scope !249, !noalias !246
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bf, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !245

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !26
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bk) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.g
  store ptr %i.q, ptr %0, align 8, !tbaa !164
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !23
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.l
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

declare double @exp2(double) local_unnamed_addr

attributes #0 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { noreturn nounwind }
attributes #26 = { builtin nounwind allocsize(0) }
attributes #27 = { cold noreturn nounwind }

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
!8 = !{!9, !10, i64 16}
!9 = !{!"_ZTSN4llvh11raw_ostreamE", !10, i64 8, !10, i64 16, !10, i64 24, !12, i64 32}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"_ZTSN4llvh11raw_ostream10BufferKindE", !6, i64 0}
!13 = !{!9, !10, i64 24}
!14 = !{!10, !10, i64 0}
!15 = !{!16, !10, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"long", !6, i64 0}
!19 = !{!20, !10, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0, !18, i64 8, !6, i64 16}
!21 = !{!6, !6, i64 0}
!22 = !{!20, !18, i64 8}
!23 = !{!24, !25, i64 8}
!24 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!25 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!26 = !{!24, !25, i64 16}
!27 = !{!28, !29, i64 16}
!28 = !{!"_ZTSN4llvh5TwineE", !6, i64 0, !6, i64 8, !29, i64 16, !29, i64 17}
!29 = !{!"_ZTSN4llvh5Twine8NodeKindE", !6, i64 0}
!30 = !{!28, !29, i64 17}
!31 = !{!32, !32, i64 0}
!32 = !{!"p1 _ZTSN4llvh12MemoryBufferE", !11, i64 0}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!35 = distinct !{!35, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!36 = !{!37}
!37 = distinct !{!37, !35, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!38 = !{!37, !39}
!39 = distinct !{!39, !40}
!40 = distinct !{!40, !"LVerDomain"}
!41 = !{!34, !42}
!42 = distinct !{!42, !40}
!43 = distinct !{!43, !44, !45, !46}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = distinct !{!47, !44, !45}
!48 = !{!49, !49, i64 0}
!49 = !{!"vtable pointer", !7, i64 0}
!50 = distinct !{null, null, null}
!51 = distinct !{!51, !44}
!52 = !{!53, !54, i64 0}
!53 = !{!"_ZTSSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !54, i64 0, !18, i64 8, !56, i64 16, !18, i64 24, !58, i64 32, !57, i64 48}
!54 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !55, i64 0}
!55 = !{!"any p2 pointer", !11, i64 0}
!56 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !57, i64 0}
!57 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !11, i64 0}
!58 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !59, i64 0, !18, i64 8}
!59 = !{!"float", !6, i64 0}
!60 = !{!53, !18, i64 8}
!61 = !{!58, !59, i64 0}
!62 = distinct !{!62, !44}
!63 = distinct !{!63, !44}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZSt11make_uniqueIN6hermes12MemoryBufferEJPN4llvh12MemoryBufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!66 = distinct !{!66, !"_ZSt11make_uniqueIN6hermes12MemoryBufferEJPN4llvh12MemoryBufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!67 = !{!68, !32, i64 24}
!68 = !{!"_ZTSN6hermes12MemoryBufferE", !69, i64 0, !32, i64 24}
!69 = !{!"_ZTSN6hermes6BufferE", !10, i64 8, !18, i64 16}
!70 = !{!71, !10, i64 8}
!71 = !{!"_ZTSN4llvh12MemoryBufferE", !10, i64 8, !10, i64 16}
!72 = !{!69, !10, i64 8}
!73 = !{!71, !10, i64 16}
!74 = !{!69, !18, i64 16}
!75 = !{!76, !77, i64 0}
!76 = !{!"_ZTSSt10_Head_baseILm0EPKN6hermes6BufferELb0EE", !77, i64 0}
!77 = !{!"p1 _ZTSN6hermes6BufferE", !11, i64 0}
!78 = !{!77, !77, i64 0}
!79 = distinct !{null, null, null}
!80 = !{!81, !81, i64 0}
!81 = !{!"p1 _ZTSN6hermes3hbc20BCProviderFromBufferE", !11, i64 0}
!82 = !{!83, !5, i64 32}
!83 = !{!"_ZTSN6hermes3hbc18BytecodeFileHeaderE", !18, i64 0, !5, i64 8, !6, i64 12, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !6, i64 108, !6, i64 109}
!84 = !{!85, !86, i64 8}
!85 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !86, i64 0, !86, i64 8, !86, i64 16}
!86 = !{!"p1 long", !11, i64 0}
!87 = !{!85, !86, i64 16}
!88 = !{!85, !86, i64 0}
!89 = !{!90, !5, i64 12}
!90 = !{!"_ZTSN6hermes3hbc14BCProviderBaseE", !6, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !91, i64 24, !93, i64 40, !95, i64 56, !95, i64 72, !95, i64 88, !95, i64 104, !96, i64 120, !95, i64 136, !98, i64 152, !95, i64 168, !5, i64 184, !100, i64 192, !100, i64 208, !100, i64 224, !102, i64 240, !20, i64 248}
!91 = !{!"_ZTSN4llvh8ArrayRefIN6hermes10StringKind5EntryEEE", !92, i64 0, !18, i64 8}
!92 = !{!"p1 _ZTSN6hermes10StringKind5EntryE", !11, i64 0}
!93 = !{!"_ZTSN4llvh8ArrayRefIjEE", !94, i64 0, !18, i64 8}
!94 = !{!"p1 int", !11, i64 0}
!95 = !{!"_ZTSN4llvh8ArrayRefIhEE", !10, i64 0, !18, i64 8}
!96 = !{!"_ZTSN4llvh8ArrayRefIN6hermes6bigint16BigIntTableEntryEEE", !97, i64 0, !18, i64 8}
!97 = !{!"p1 _ZTSN6hermes6bigint16BigIntTableEntryE", !11, i64 0}
!98 = !{!"_ZTSN4llvh8ArrayRefIN6hermes16RegExpTableEntryEEE", !99, i64 0, !18, i64 8}
!99 = !{!"p1 _ZTSN6hermes16RegExpTableEntryE", !11, i64 0}
!100 = !{!"_ZTSN4llvh8ArrayRefISt4pairIjjEEE", !101, i64 0, !18, i64 8}
!101 = !{!"p1 _ZTSSt4pairIjjE", !11, i64 0}
!102 = !{!"p1 _ZTSN6hermes3hbc9DebugInfoE", !11, i64 0}
!103 = !{!90, !5, i64 20}
!104 = !{!105, !10, i64 288}
!105 = !{!"_ZTSN6hermes3hbc20BCProviderFromBufferE", !90, i64 0, !106, i64 280, !10, i64 288, !111, i64 296, !112, i64 304, !113, i64 312, !5, i64 328, !115, i64 336, !120, i64 352, !122, i64 360, !10, i64 368}
!106 = !{!"_ZTSSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EE", !107, i64 0}
!107 = !{!"_ZTSSt15__uniq_ptr_dataIKN6hermes6BufferESt14default_deleteIS2_ELb1ELb1EE", !108, i64 0}
!108 = !{!"_ZTSSt15__uniq_ptr_implIKN6hermes6BufferESt14default_deleteIS2_EE", !109, i64 0}
!109 = !{!"_ZTSSt5tupleIJPKN6hermes6BufferESt14default_deleteIS2_EEE", !110, i64 0}
!110 = !{!"_ZTSSt11_Tuple_implILm0EJPKN6hermes6BufferESt14default_deleteIS2_EEE", !76, i64 0}
!111 = !{!"p1 _ZTSN6hermes3hbc15SmallFuncHeaderE", !11, i64 0}
!112 = !{!"p1 _ZTSN6hermes3hbc21SmallStringTableEntryE", !11, i64 0}
!113 = !{!"_ZTSN4llvh8ArrayRefIN6hermes3hbc24OverflowStringTableEntryEEE", !114, i64 0, !18, i64 8}
!114 = !{!"p1 _ZTSN6hermes3hbc24OverflowStringTableEntryE", !11, i64 0}
!115 = !{!"_ZTSN4llvh8OptionalISt6threadEE", !116, i64 0}
!116 = !{!"_ZTSN4llvh15optional_detail15OptionalStorageISt6threadLb0EEE", !117, i64 0, !119, i64 8}
!117 = !{!"_ZTSN4llvh21AlignedCharArrayUnionISt6threadcccccccccEE", !118, i64 0}
!118 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm8EEE", !6, i64 0}
!119 = !{!"bool", !6, i64 0}
!120 = !{!"_ZTSSt6atomicIbE", !121, i64 0}
!121 = !{!"_ZTSSt13__atomic_baseIbE", !119, i64 0}
!122 = !{!"_ZTSSt10unique_ptrIVN6hermes17PageAccessTrackerESt14default_deleteIS2_EE", !123, i64 0}
!123 = !{!"_ZTSSt15__uniq_ptr_dataIVN6hermes17PageAccessTrackerESt14default_deleteIS2_ELb1ELb1EE", !124, i64 0}
!124 = !{!"_ZTSSt15__uniq_ptr_implIVN6hermes17PageAccessTrackerESt14default_deleteIS2_EE", !125, i64 0}
!125 = !{!"_ZTSSt5tupleIJPVN6hermes17PageAccessTrackerESt14default_deleteIS2_EEE", !126, i64 0}
!126 = !{!"_ZTSSt11_Tuple_implILm0EJPVN6hermes17PageAccessTrackerESt14default_deleteIS2_EEE", !127, i64 0}
!127 = !{!"_ZTSSt10_Head_baseILm0EPVN6hermes17PageAccessTrackerELb0EE", !128, i64 0}
!128 = !{!"p1 _ZTSN6hermes17PageAccessTrackerE", !11, i64 0}
!129 = !{!105, !111, i64 296}
!130 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!131 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!132 = !{!133, !5, i64 0}
!133 = !{!"_ZTSN6hermes3hbc14FunctionHeaderE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !6, i64 28, !6, i64 29, !6, i64 30}
!134 = !{!133, !5, i64 8}
!135 = !{!133, !5, i64 16}
!136 = !{!83, !5, i64 104}
!137 = distinct !{!137, !44}
!138 = !{!139, !140, i64 0}
!139 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !140, i64 0}
!140 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!141 = !{!11, !11, i64 0}
!142 = !{!143, !147, i64 16}
!143 = !{!"_ZTSN6hermes3hbc20BytecodeDisassemblerE", !144, i64 0, !147, i64 16}
!144 = !{!"_ZTSSt10shared_ptrIN6hermes3hbc14BCProviderBaseEE", !145, i64 0}
!145 = !{!"_ZTSSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EE", !146, i64 0, !139, i64 8}
!146 = !{!"p1 _ZTSN6hermes3hbc14BCProviderBaseE", !11, i64 0}
!147 = !{!"_ZTSN6hermes3hbc18DisassemblyOptionsE", !6, i64 0}
!148 = !{!149, !5, i64 8}
!149 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!150 = !{!149, !5, i64 12}
!151 = distinct !{null, null, null, null}
!152 = distinct !{null, null, null, null, null}
!153 = distinct !{null}
!154 = !{!56, !57, i64 0}
!155 = !{!156, !5, i64 0}
!156 = !{!"_ZTSSt4pairIKjjE", !5, i64 0, !5, i64 4}
!157 = !{!156, !5, i64 4}
!158 = !{!53, !18, i64 24}
!159 = !{!57, !57, i64 0}
!160 = distinct !{!160, !44}
!161 = distinct !{!161, !44}
!162 = !{!53, !57, i64 16}
!163 = distinct !{!163, !44}
!164 = !{!24, !25, i64 0}
!165 = distinct !{!165, !44}
!166 = distinct !{!166, !44}
!167 = distinct !{!167, !44}
!168 = !{!169, !5, i64 0}
!169 = !{!"_ZTSSt4pairIjjE", !5, i64 0, !5, i64 4}
!170 = !{!169, !5, i64 4}
!171 = !{!172}
!172 = distinct !{!172, !173, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!173 = distinct !{!173, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_"}
!174 = !{!175}
!175 = distinct !{!175, !173, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!176 = distinct !{!176, !44, !45, !46}
!177 = distinct !{!177, !44, !45}
!178 = distinct !{!178, !44}
!179 = distinct !{!179, !44}
!180 = distinct !{!180, !44}
!181 = distinct !{!181, !44}
!182 = distinct !{null, null, null, null, null, null}
!183 = distinct !{!183, !44}
!184 = distinct !{null, null}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_ZNK6hermes3hbc14BCProviderBase11getErrorStrB5cxx11Ev: argument 0"}
!187 = distinct !{!187, !"_ZNK6hermes3hbc14BCProviderBase11getErrorStrB5cxx11Ev"}
!188 = !{!189, !10, i64 8}
!189 = !{!"_ZTSN4llvh18format_object_baseE", !10, i64 8}
!190 = !{!191}
!191 = distinct !{!191, !192, !"_ZN4llvh6formatIJdcEEENS_13format_objectIJDpT_EEEPKcDpRKS2_: argument 0"}
!192 = distinct !{!192, !"_ZN4llvh6formatIJdcEEENS_13format_objectIJDpT_EEEPKcDpRKS2_"}
!193 = !{!194, !6, i64 0}
!194 = !{!"_ZTSSt10_Head_baseILm1EcLb0EE", !6, i64 0}
!195 = !{!196, !197, i64 0}
!196 = !{!"_ZTSSt10_Head_baseILm0EdLb0EE", !197, i64 0}
!197 = !{!"double", !6, i64 0}
!198 = !{!145, !146, i64 0}
!199 = !{!200, !81, i64 0}
!200 = !{!"_ZTSNSt19_Sp_counted_deleterIPN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE5_ImplE", !81, i64 0}
!201 = distinct !{null, null}
!202 = distinct !{null, null}
!203 = !{!204, !81, i64 16}
!204 = !{!"_ZTSSt19_Sp_counted_deleterIPN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE", !149, i64 0, !200, i64 16}
!205 = !{!90, !102, i64 240}
!206 = !{!207, !10, i64 0}
!207 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!208 = !{!207, !10, i64 16}
!209 = !{!210, !11, i64 0}
!210 = !{!"_ZTSN4llvh15SmallVectorBaseE", !11, i64 0, !5, i64 8, !5, i64 12}
!211 = !{!212, !213, i64 0}
!212 = !{!"_ZTSNSt12_Vector_baseIN6hermes16StringTableEntryESaIS1_EE17_Vector_impl_dataE", !213, i64 0, !213, i64 8, !213, i64 16}
!213 = !{!"p1 _ZTSN6hermes16StringTableEntryE", !11, i64 0}
!214 = !{!212, !213, i64 16}
!215 = !{!128, !128, i64 0}
!216 = !{!116, !119, i64 8}
!217 = !{i8 0, i8 2}
!218 = !{}
!219 = !{ptr @_ZN6hermes3hbc14BCProviderBaseD2Ev}
!220 = distinct !{null}
!221 = !{!53, !57, i64 48}
!222 = distinct !{!222, !44}
!223 = !{!197, !197, i64 0}
!224 = distinct !{!224, !44}
!225 = distinct !{!225, !226}
!226 = !{!"llvm.loop.unroll.disable"}
!227 = distinct !{!227, !44}
!228 = distinct !{!228, !44}
!229 = distinct !{!229, !44}
!230 = distinct !{!230, !44}
!231 = distinct !{!231, !226}
!232 = distinct !{!232, !44}
!233 = distinct !{!233, !44}
!234 = distinct !{!234, !44}
!235 = distinct !{!235, !44}
!236 = distinct !{!236, !44}
!237 = distinct !{!237, !44}
!238 = distinct !{!238, !44}
!239 = !{!240}
!240 = distinct !{!240, !241, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!241 = distinct !{!241, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!242 = !{!243}
!243 = distinct !{!243, !241, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!244 = !{!240, !243}
!245 = distinct !{!245, !44}
!246 = !{!247}
!247 = distinct !{!247, !248, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!248 = distinct !{!248, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!249 = !{!250}
!250 = distinct !{!250, !248, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!251 = !{!247, !250}
end_hunk_0
