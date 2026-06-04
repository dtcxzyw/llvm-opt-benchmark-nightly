inline.NumInlined: 640
inline.NumDeleted: 331
begin_hunk_0_@_ZSt22__final_insertion_sortIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_:bb.a
  %i.h = load i32, ptr %0, align 4, !tbaa !177    ; 2 uses
  %i.i = icmp ult i32 %i.g, %i.h
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ult i32 %i.h, %i.g
  br i1 %i.j, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !168
  %i.m = load i32, ptr %i.e, align 4, !tbaa !168
  %i.n = icmp ult i32 %i.l, %i.m
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i
  %i.o = load i64, ptr %.020.i.ptr, align 4
  %i.p = lshr exact i64 %.020.i.idx, 3            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 16 ; 2 uses
  %xtraiter.a = and i64 %i.f, 3                   ; 2 uses
  %lcmp.mod.not.a = icmp eq i64 %xtraiter.a, 0
  br i1 %lcmp.mod.not.a, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader.i ]
  %.069.i.i.i.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.q, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.078.i.i.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ], [ %.020.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %prol.iter.a = phi i64 [ %prol.iter.next.a, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ]
  %i.r = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3
  store i32 %i.t, ptr %i.s, align 4, !tbaa !177
  %i.u = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -4
  store i32 %i.v, ptr %i.w, align 4, !tbaa !168
  %i.x = add nsw i64 %.010.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter.next.a = add i64 %prol.iter.a, 1     ; 2 uses
  %prol.iter.cmp.not.a = icmp eq i64 %prol.iter.next.a, %xtraiter.a
  br i1 %prol.iter.cmp.not.a, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !178

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.020.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.y = icmp ult i64 %indvar, 3
  br i1 %i.y, label %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.aa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !3
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !177
  %i.ac = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -4
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !168
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !3
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !177
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -12
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !168
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.am = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  %i.an = load i32, ptr %i.al, align 4, !tbaa !3
  store i32 %i.an, ptr %i.am, align 4, !tbaa !177
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -20
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !168
  %i.ar = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32 ; 2 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !3
  store i32 %i.at, ptr %i.as, align 4, !tbaa !177
  %i.au = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -28
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !168
  %i.ax = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.ay = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i, !llvm.loop !179

_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  store i64 %i.o, ptr %0, align 4
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i, %bb.d
  %i.az = load i64, ptr %.020.i.ptr, align 4      ; 3 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.az to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.az, 32
  %.sroa.5.0.extract.trunc.i.i = trunc nuw i64 %.sroa.5.0.extract.shift.i.i to i32
  br label %bb.e

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i
  %.09.i.i = phi ptr [ %.020.i.ptr, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i ], [ %.0.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i ] ; 6 uses
  %.0.i.i = getelementptr inbounds i8, ptr %.09.i.i, i64 -8 ; 2 uses
  %i.ba = load i32, ptr %.0.i.i, align 4, !tbaa !177 ; 3 uses
  %i.bb = icmp ugt i32 %i.ba, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.bb, label %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i, label %bb.f

._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i: ; preds = %bb.e
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.09.i.i, i64 -4
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !3
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i

bb.f:                                             ; preds = %bb.e
  %i.bc = icmp ult i32 %i.ba, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.bc, label %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i: ; preds = %bb.f
  %i.bd = getelementptr inbounds i8, ptr %.09.i.i, i64 -4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !168 ; 2 uses
  %i.bf = icmp ugt i32 %i.be, %.sroa.5.0.extract.trunc.i.i
  br i1 %i.bf, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i
  %i.bg = phi i32 [ %.pre.i.i, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i ], [ %i.be, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i ]
  store i32 %i.ba, ptr %.09.i.i, align 4, !tbaa !177
  %i.bh = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 4
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !168
  br label %bb.e, !llvm.loop !180

_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i, %bb.f
  store i64 %i.az, ptr %.09.i.i, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i
  %.020.i.add = add nuw nsw i64 %.020.i.idx, 8    ; 2 uses
  %.not.i = icmp eq i64 %.020.i.add, 128
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %_ZSt16__insertion_sortIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, label %bb.c, !llvm.loop !181

_ZSt16__insertion_sortIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit: ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not5.i = icmp eq ptr %i.bi, %1
  br i1 %.not5.i, label %_ZSt26__unguarded_insertion_sortIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt16__insertion_sortIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i14
  %.06.i = phi ptr [ %i.bs, %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i14 ], [ %i.bi, %_ZSt16__insertion_sortIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit ] ; 3 uses
  %i.bj = load i64, ptr %.06.i, align 4           ; 3 uses
  %.sroa.0.0.extract.trunc.i.i8 = trunc i64 %i.bj to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i9 = lshr i64 %i.bj, 32
  %.sroa.5.0.extract.trunc.i.i10 = trunc nuw i64 %.sroa.5.0.extract.shift.i.i9 to i32
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i16, %.lr.ph.i
  %.09.i.i11 = phi ptr [ %.06.i, %.lr.ph.i ], [ %.0.i.i12, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i16 ] ; 6 uses
  %.0.i.i12 = getelementptr inbounds i8, ptr %.09.i.i11, i64 -8 ; 2 uses
  %i.bk = load i32, ptr %.0.i.i12, align 4, !tbaa !177 ; 3 uses
  %i.bl = icmp ugt i32 %i.bk, %.sroa.0.0.extract.trunc.i.i8
  br i1 %i.bl, label %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i17, label %bb.i

._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i17: ; preds = %bb.h
  %.phi.trans.insert.i.i18 = getelementptr inbounds i8, ptr %.09.i.i11, i64 -4
  %.pre.i.i19 = load i32, ptr %.phi.trans.insert.i.i18, align 4, !tbaa !3
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i16

bb.i:                                             ; preds = %bb.h
  %i.bm = icmp ult i32 %i.bk, %.sroa.0.0.extract.trunc.i.i8
  br i1 %i.bm, label %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i14, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i13

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i13: ; preds = %bb.i
  %i.bn = getelementptr inbounds i8, ptr %.09.i.i11, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !168 ; 2 uses
  %i.bp = icmp ugt i32 %i.bo, %.sroa.5.0.extract.trunc.i.i10
  br i1 %i.bp, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i16, label %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i14

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i16: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i13, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i17
  %i.bq = phi i32 [ %.pre.i.i19, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i17 ], [ %i.bo, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i13 ]
  store i32 %i.bk, ptr %.09.i.i11, align 4, !tbaa !177
  %i.br = getelementptr inbounds nuw i8, ptr %.09.i.i11, i64 4
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !168
  br label %bb.h, !llvm.loop !180

_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i14: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i13, %bb.i
  store i64 %i.bj, ptr %.09.i.i11, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.06.i, i64 8 ; 2 uses
  %.not.i15 = icmp eq ptr %i.bs, %1
  br i1 %.not.i15, label %_ZSt26__unguarded_insertion_sortIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, label %.lr.ph.i, !llvm.loop !182

bb.j:                                             ; preds = %bb.a
  %i.bt = icmp eq ptr %0, %1
  br i1 %i.bt, label %_ZSt26__unguarded_insertion_sortIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.j
  %.017.i20 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not18.i = icmp eq ptr %.017.i20, %1
  br i1 %.not18.i, label %_ZSt26__unguarded_insertion_sortIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i21
  %.020.i22 = phi ptr [ %.017.i20, %.lr.ph.i21 ], [ %.0.i33, %bb.o ] ; 10 uses
  %.pn19.i23 = phi ptr [ %0, %.lr.ph.i21 ], [ %.020.i22, %bb.o ] ; 2 uses
  %i.bv = load i32, ptr %.020.i22, align 4, !tbaa !177 ; 2 uses
  %i.bw = load i32, ptr %0, align 4, !tbaa !177   ; 2 uses
  %i.bx = icmp ult i32 %i.bv, %i.bw
  br i1 %i.bx, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread.i39, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = icmp ult i32 %i.bw, %i.bv
  br i1 %i.by, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i24

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i24: ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %.pn19.i23, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !168
  %i.cb = load i32, ptr %i.bu, align 4, !tbaa !168
  %i.cc = icmp ult i32 %i.ca, %i.cb
  br i1 %i.cc, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread.i39, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread.i39: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i24, %bb.k
  %i.cd = load i64, ptr %.020.i22, align 4
  %i.ce = ptrtoint ptr %.020.i22 to i64
  %i.cf = sub i64 %i.ce, %i.b                     ; 2 uses
  %i.cg = ashr exact i64 %i.cf, 3                 ; 5 uses
  %i.ch = icmp sgt i64 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i.preheader.i41, label %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40

.lr.ph.i.i.i.i.i.preheader.i41:                   ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread.i39
  %2 = getelementptr inbounds nuw i8, ptr %.pn19.i23, i64 16 ; 3 uses
  %min.iters.check = icmp eq i64 %i.cf, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i42.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i41
  %n.vec = and i64 %i.cg, 9223372036854775806     ; 3 uses
  %i.ci = and i64 %i.cg, 1
  %3 = mul i64 %n.vec, -8                         ; 2 uses
  %4 = getelementptr i8, ptr %2, i64 %3
  %5 = getelementptr i8, ptr %.020.i22, i64 %3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %6 = mul i64 %index, -8                         ; 2 uses
  %next.gep = getelementptr i8, ptr %2, i64 %6
  %next.gep65 = getelementptr i8, ptr %.020.i22, i64 %6
  %i.cj = getelementptr inbounds i8, ptr %next.gep65, i64 -16
  %interleaved.vec = load <4 x i32>, ptr %i.cj, align 4, !tbaa !3
  %i.ck = getelementptr inbounds i8, ptr %next.gep, i64 -16
  store <4 x i32> %interleaved.vec, ptr %i.ck, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !183

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40, label %.lr.ph.i.i.i.i.i.i42.preheader

.lr.ph.i.i.i.i.i.i42.preheader:                   ; preds = %.lr.ph.i.i.i.i.i.preheader.i41, %middle.block
  %.010.i.i.i.i.i.i43.ph = phi i64 [ %i.cg, %.lr.ph.i.i.i.i.i.preheader.i41 ], [ %i.ci, %middle.block ]
  %.069.i.i.i.i.i.i44.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i.preheader.i41 ], [ %4, %middle.block ]
  %.078.i.i.i.i.i.i45.ph = phi ptr [ %.020.i22, %.lr.ph.i.i.i.i.i.preheader.i41 ], [ %5, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i42

.lr.ph.i.i.i.i.i.i42:                             ; preds = %.lr.ph.i.i.i.i.i.i42.preheader, %.lr.ph.i.i.i.i.i.i42
  %.010.i.i.i.i.i.i43 = phi i64 [ %i.cs, %.lr.ph.i.i.i.i.i.i42 ], [ %.010.i.i.i.i.i.i43.ph, %.lr.ph.i.i.i.i.i.i42.preheader ] ; 2 uses
  %.069.i.i.i.i.i.i44 = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i42 ], [ %.069.i.i.i.i.i.i44.ph, %.lr.ph.i.i.i.i.i.i42.preheader ] ; 2 uses
  %.078.i.i.i.i.i.i45 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i42 ], [ %.078.i.i.i.i.i.i45.ph, %.lr.ph.i.i.i.i.i.i42.preheader ] ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i45, i64 -8 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i44, i64 -8 ; 2 uses
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !3
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !177
  %i.cp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i45, i64 -4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i44, i64 -4
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !168
  %i.cs = add nsw i64 %.010.i.i.i.i.i.i43, -1
  %7 = icmp samesign ugt i64 %.010.i.i.i.i.i.i43, 1
  br i1 %7, label %.lr.ph.i.i.i.i.i.i42, label %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40, !llvm.loop !186

_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40: ; preds = %.lr.ph.i.i.i.i.i.i42, %middle.block, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread.i39
  store i64 %i.cd, ptr %0, align 4
  br label %bb.o

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i24, %bb.l
  %i.ct = load i64, ptr %.020.i22, align 4        ; 3 uses
  %.sroa.0.0.extract.trunc.i.i26 = trunc i64 %i.ct to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i27 = lshr i64 %i.ct, 32
  %.sroa.5.0.extract.trunc.i.i28 = trunc nuw i64 %.sroa.5.0.extract.shift.i.i27 to i32
  br label %bb.m

bb.m:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25
  %.09.i.i29 = phi ptr [ %.020.i22, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25 ], [ %.0.i.i30, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35 ] ; 6 uses
  %.0.i.i30 = getelementptr inbounds i8, ptr %.09.i.i29, i64 -8 ; 2 uses
  %i.cu = load i32, ptr %.0.i.i30, align 4, !tbaa !177 ; 3 uses
  %i.cv = icmp ugt i32 %i.cu, %.sroa.0.0.extract.trunc.i.i26
  br i1 %i.cv, label %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36, label %bb.n

._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36: ; preds = %bb.m
  %.phi.trans.insert.i.i37 = getelementptr inbounds i8, ptr %.09.i.i29, i64 -4
  %.pre.i.i38 = load i32, ptr %.phi.trans.insert.i.i37, align 4, !tbaa !3
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35

bb.n:                                             ; preds = %bb.m
  %i.cw = icmp ult i32 %i.cu, %.sroa.0.0.extract.trunc.i.i26
  br i1 %i.cw, label %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31: ; preds = %bb.n
  %i.cx = getelementptr inbounds i8, ptr %.09.i.i29, i64 -4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !168 ; 2 uses
  %i.cz = icmp ugt i32 %i.cy, %.sroa.5.0.extract.trunc.i.i28
  br i1 %i.cz, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35, label %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36
  %i.da = phi i32 [ %.pre.i.i38, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36 ], [ %i.cy, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31 ]
  store i32 %i.cu, ptr %.09.i.i29, align 4, !tbaa !177
  %i.db = getelementptr inbounds nuw i8, ptr %.09.i.i29, i64 4
  store i32 %i.da, ptr %i.db, align 4, !tbaa !168
  br label %bb.m, !llvm.loop !180

_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31, %bb.n
  store i64 %i.ct, ptr %.09.i.i29, align 4
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32, %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40
  %.0.i33 = getelementptr inbounds nuw i8, ptr %.020.i22, i64 8 ; 2 uses
  %.not.i34 = icmp eq ptr %.0.i33, %1
  br i1 %.not.i34, label %_ZSt26__unguarded_insertion_sortIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, label %bb.k, !llvm.loop !181

_ZSt26__unguarded_insertion_sortIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i14, %.preheader.i, %bb.j, %_ZSt16__insertion_sortIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZSt27__unguarded_partition_pivotIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEET_S6_S6_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3
  %i.e = sdiv i64 %i.d, 2
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 -8 ; 6 uses
  %i.i = load i32, ptr %i.g, align 4, !tbaa !177  ; 9 uses
  %i.j = load i32, ptr %i.f, align 4, !tbaa !177  ; 9 uses
  %i.k = icmp ult i32 %i.i, %i.j
  br i1 %i.k, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ult i32 %i.j, %i.i
  br i1 %i.l, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread26.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !168
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !168
  %i.q = icmp ult i32 %i.n, %i.p
  br i1 %i.q, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread26.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i, %bb.a
  %i.r = load i32, ptr %i.h, align 4, !tbaa !177  ; 6 uses
  %i.s = icmp ult i32 %i.j, %i.r
  br i1 %i.s, label %_ZSt22__move_median_to_firstIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_S6_T0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread.i
  %i.t = icmp ult i32 %i.r, %i.j
  br i1 %i.t, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit22.thread27.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit22.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit22.i: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !168
  %i.w = getelementptr inbounds i8, ptr %1, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !168
  %i.y = icmp ult i32 %i.v, %i.x
  br i1 %i.y, label %_ZSt22__move_median_to_firstIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_S6_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit22.thread27.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit22.thread27.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit22.i, %bb.c
  %i.z = icmp ult i32 %i.i, %i.r
  br i1 %i.z, label %_ZSt22__move_median_to_firstIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_S6_T0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit22.thread27.i
  %i.aa = icmp ult i32 %i.r, %i.i
  br i1 %i.aa, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit23.thread28.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit23.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit23.i: ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !168
  %i.ad = getelementptr inbounds i8, ptr %1, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !168
  %i.af = icmp ult i32 %i.ac, %i.ae
  br i1 %i.af, label %_ZSt22__move_median_to_firstIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_S6_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit23.thread28.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit23.thread28.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit23.i, %bb.d
  br label %_ZSt22__move_median_to_firstIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_S6_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread26.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i, %bb.b
  %i.ag = load i32, ptr %i.h, align 4, !tbaa !177 ; 6 uses
  %i.ah = icmp ult i32 %i.i, %i.ag
  br i1 %i.ah, label %_ZSt22__move_median_to_firstIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_S6_T0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread26.i
  %i.ai = icmp ult i32 %i.ag, %i.i
  br i1 %i.ai, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit24.thread29.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit24.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit24.i: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !168
  %i.al = getelementptr inbounds i8, ptr %1, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !168
  %i.an = icmp ult i32 %i.ak, %i.am
  br i1 %i.an, label %_ZSt22__move_median_to_firstIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_S6_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit24.thread29.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit24.thread29.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit24.i, %bb.e
  %i.ao = icmp ult i32 %i.j, %i.ag
  br i1 %i.ao, label %_ZSt22__move_median_to_firstIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_S6_T0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit24.thread29.i
  %i.ap = icmp ult i32 %i.ag, %i.j
  br i1 %i.ap, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit25.thread30.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit25.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit25.i: ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !168
  %i.as = getelementptr inbounds i8, ptr %1, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !168
  %i.au = icmp ult i32 %i.ar, %i.at
  br i1 %i.au, label %_ZSt22__move_median_to_firstIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_S6_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit25.thread30.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit25.thread30.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit25.i, %bb.f
  br label %_ZSt22__move_median_to_firstIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_S6_T0_.exit

_ZSt22__move_median_to_firstIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_S6_T0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit22.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit22.thread27.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit23.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit23.thread28.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread26.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit24.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit24.thread29.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit25.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit25.thread30.i
  %.sink42.i = phi i32 [ %i.r, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit23.i ], [ %i.j, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit25.thread30.i ], [ %i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit24.i ], [ %i.j, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit22.i ], [ %i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit23.thread28.i ], [ %i.j, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread.i ], [ %i.r, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit22.thread27.i ], [ %i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread26.i ], [ %i.ag, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit24.thread29.i ], [ %i.ag, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit25.i ]
  %.sink41.i = phi ptr [ %i.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit23.i ], [ %i.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit25.thread30.i ], [ %i.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit24.i ], [ %i.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit22.i ], [ %i.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit23.thread28.i ], [ %i.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread.i ], [ %i.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit22.thread27.i ], [ %i.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread26.i ], [ %i.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit24.thread29.i ], [ %i.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit25.i ] ; 2 uses
  %i.av = load i32, ptr %0, align 4, !tbaa !3
  store i32 %.sink42.i, ptr %0, align 4, !tbaa !3
  store i32 %i.av, ptr %.sink41.i, align 4, !tbaa !3
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink41.i, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !3
  store i32 %i.az, ptr %i.aw, align 4, !tbaa !3
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_S6_T0_.exit
  %.013.i = phi ptr [ %1, %_ZSt22__move_median_to_firstIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_S6_T0_.exit ], [ %.114.i, %bb.m ]
  %.0.i = phi ptr [ %i.g, %_ZSt22__move_median_to_firstIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_S6_T0_.exit ], [ %i.bv, %bb.m ]
  %i.ba = load i32, ptr %0, align 4, !tbaa !177   ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread.i11, %bb.g
  %.1.i = phi ptr [ %.0.i, %bb.g ], [ %i.bi, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread.i11 ] ; 8 uses
  %i.bb = load i32, ptr %.1.i, align 4, !tbaa !177 ; 3 uses
  %i.bc = icmp ult i32 %i.bb, %i.ba
  br i1 %i.bc, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread.i11, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = icmp ult i32 %i.ba, %i.bb
  br i1 %i.bd, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i10.preheader, label %bb.j

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i10.preheader: ; preds = %bb.j, %bb.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i10

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %.1.i, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !168
  %i.bg = load i32, ptr %i.aw, align 4, !tbaa !168
  %i.bh = icmp ult i32 %i.bf, %i.bg
  br i1 %i.bh, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread.i11, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i10.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread.i11: ; preds = %bb.j, %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  br label %bb.h, !llvm.loop !187

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i10: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i10.backedge, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i10.preheader
  %.013.pn.i = phi ptr [ %.013.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i10.preheader ], [ %.114.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i10.backedge ] ; 3 uses
  %.114.i = getelementptr inbounds i8, ptr %.013.pn.i, i64 -8 ; 5 uses
  %i.bj = load i32, ptr %.114.i, align 4, !tbaa !177 ; 3 uses
  %i.bk = icmp ult i32 %i.ba, %i.bj
  br i1 %i.bk, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i10.backedge, label %bb.k

bb.k:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i10
  %i.bl = icmp ult i32 %i.bj, %i.ba
  br i1 %i.bl, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit15.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = load i32, ptr %i.aw, align 4, !tbaa !168
  %i.bn = getelementptr inbounds i8, ptr %.013.pn.i, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !168
  %i.bp = icmp ult i32 %i.bm, %i.bo
  br i1 %i.bp, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i10.backedge, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit15.thread.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i10.backedge: ; preds = %bb.l, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i10
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i10, !llvm.loop !188

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit15.thread.i: ; preds = %bb.l, %bb.k
  %i.bq = icmp ult ptr %.1.i, %.114.i
  br i1 %i.bq, label %bb.m, label %_ZSt21__unguarded_partitionIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEET_S6_S6_S6_T0_.exit

bb.m:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit15.thread.i
  store i32 %i.bj, ptr %.1.i, align 4, !tbaa !3
  store i32 %i.bb, ptr %.114.i, align 4, !tbaa !3
  %i.br = getelementptr inbounds nuw i8, ptr %.1.i, i64 4 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %.013.pn.i, i64 -4 ; 2 uses
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !3
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !3
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !3
  %i.bv = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  br label %bb.g, !llvm.loop !189

_ZSt21__unguarded_partitionIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEET_S6_S6_S6_T0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit15.thread.i
  ret ptr %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt11__sort_heapIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 8
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit
  %.07 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.07, i64 -8 ; 4 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.f, align 4 ; 3 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %i.f, align 4, !tbaa !177
  %i.h = load i32, ptr %i.e, align 4, !tbaa !3
  %i.i = getelementptr inbounds i8, ptr %.07, i64 -4
  store i32 %i.h, ptr %i.i, align 4, !tbaa !168
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.j, %i.a                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = add nsw i64 %i.l, -1
  %i.n = sdiv i64 %i.m, 2
  %i.o = icmp sgt i64 %i.l, 2
  br i1 %i.o, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread30.i.i
  %.032.i.i = phi i64 [ %i.af, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread30.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.p = shl i64 %.032.i.i, 1                     ; 4 uses
  %i.q = add i64 %i.p, 2                          ; 3 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.r, align 4, !tbaa !177  ; 2 uses
  %i.v = load i32, ptr %i.t, align 4, !tbaa !177  ; 2 uses
  %i.w = icmp ult i32 %i.u, %i.v
  br i1 %i.w, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread.i.i, label %bb.c

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread.i.i: ; preds = %.lr.ph.i.i
  %i.x = or disjoint i64 %i.p, 1
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread30.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.y = icmp ult i32 %i.v, %i.u
  br i1 %i.y, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread30.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i.i: ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !168
  %i.ab = getelementptr i8, ptr %i.s, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !168
  %i.ad = icmp ult i32 %i.aa, %i.ac
  %i.ae = or disjoint i64 %i.p, 1
  %cond.fr.i.i = freeze i1 %i.ad
  %spec.select.i.i = select i1 %cond.fr.i.i, i64 %i.ae, i64 %i.q
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread30.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread30.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i.i, %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread.i.i
  %i.af = phi i64 [ %i.q, %bb.c ], [ %spec.select.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i.i ], [ %i.x, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread.i.i ] ; 4 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %i.af
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %.032.i.i
  %i.ai = load <2 x i32>, ptr %i.ag, align 4, !tbaa !3
  store <2 x i32> %i.ai, ptr %i.ah, align 4, !tbaa !3
  %i.aj = icmp slt i64 %i.af, %i.n
  br i1 %i.aj, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !190

._crit_edge.i.i:                                  ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread30.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.af, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread30.i.i ] ; 5 uses
  %i.ak = and i64 %i.k, 8
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.am = add nsw i64 %i.l, -2
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = icmp eq i64 %.0.lcssa.i.i, %i.an
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ap = shl nsw i64 %.0.lcssa.i.i, 1
  %i.aq = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aq
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i
  %i.at = load <2 x i32>, ptr %i.ar, align 4, !tbaa !3
  store <2 x i32> %i.at, ptr %i.as, align 4, !tbaa !3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.aq, %bb.e ], [ %.0.lcssa.i.i, %bb.d ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.sroa.01.0.copyload.i to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i.i.i = lshr i64 %.sroa.01.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i to i32
  %i.au = icmp sgt i64 %.1.i.i, 0
  br i1 %i.au, label %.lr.ph.i.i.i, label %_ZSt10__pop_heapIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.thread.i.i.i
  %.01319.i.i.i = phi i64 [ %.020.i.i78.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.thread.i.i.i ], [ %.1.i.i, %bb.f ] ; 4 uses
  %.020.in.i.i.i = add nsw i64 %.01319.i.i.i, -1
  %.020.i.i78.i = lshr i64 %.020.in.i.i.i, 1      ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.020.i.i78.i ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !177 ; 3 uses
  %i.ax = icmp ult i32 %i.aw, %.sroa.0.0.extract.trunc.i.i.i
  br i1 %i.ax, label %.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.thread_crit_edge.i.i.i, label %bb.g

.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.thread_crit_edge.i.i.i: ; preds = %.lr.ph.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !3
  br label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.thread.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ay = icmp ugt i32 %i.aw, %.sroa.0.0.extract.trunc.i.i.i
  br i1 %i.ay, label %_ZSt10__pop_heapIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.i.i.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.i.i.i: ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !168 ; 2 uses
  %i.bb = icmp ult i32 %i.ba, %.sroa.3.0.extract.trunc.i.i.i
  br i1 %i.bb, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.thread.i.i.i, label %_ZSt10__pop_heapIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.thread.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.i.i.i, %.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.thread_crit_edge.i.i.i
  %i.bc = phi i32 [ %.pre.i.i.i, %.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.thread_crit_edge.i.i.i ], [ %i.ba, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.i.i.i ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01319.i.i.i ; 2 uses
  store i32 %i.aw, ptr %i.bd, align 4, !tbaa !177
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 %i.bc, ptr %i.be, align 4, !tbaa !168
  %.not.i = icmp eq i64 %.020.i.i78.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !191

_ZSt10__pop_heapIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit: ; preds = %bb.g, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.thread.i.i.i, %bb.f
  %.013.lcssa.i.i.i = phi i64 [ %.1.i.i, %bb.f ], [ %.01319.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.i.i.i ], [ 0, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.thread.i.i.i ], [ %.01319.i.i.i, %bb.g ]
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i
  store i64 %.sroa.01.0.copyload.i, ptr %i.bf, align 4
  %i.bg = icmp sgt i64 %i.k, 8
  br i1 %i.bg, label %bb.b, label %._crit_edge, !llvm.loop !192

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
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

bb.c:                                             ; preds = %_ZSt13__adjust_heapIPSt4pairIjjElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit, %bb.b
  %.013 = phi i64 [ %i.g, %bb.b ], [ %i.bb, %_ZSt13__adjust_heapIPSt4pairIjjElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013
  %.sroa.01.0.copyload = load i64, ptr %i.p, align 4 ; 3 uses
  %i.q = icmp slt i64 %.013, %i.i
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread30.i
  %.032.i = phi i64 [ %i.ah, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread30.i ], [ %.013, %bb.c ] ; 2 uses
  %i.r = shl i64 %.032.i, 1                       ; 4 uses
  %i.s = add i64 %i.r, 2                          ; 3 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.t, align 4, !tbaa !177  ; 2 uses
  %i.x = load i32, ptr %i.v, align 4, !tbaa !177  ; 2 uses
  %i.y = icmp ult i32 %i.w, %i.x
  br i1 %i.y, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread.i, label %bb.d

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread.i: ; preds = %.lr.ph.i
  %i.z = or disjoint i64 %i.r, 1
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread30.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.aa = icmp ult i32 %i.x, %i.w
  br i1 %i.aa, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread30.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i: ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !168
  %i.ad = getelementptr i8, ptr %i.u, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !168
  %i.af = icmp ult i32 %i.ac, %i.ae
  %i.ag = or disjoint i64 %i.r, 1
  %cond.fr.i = freeze i1 %i.af
  %spec.select.i = select i1 %cond.fr.i, i64 %i.ag, i64 %i.s
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread30.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread30.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i, %bb.d, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread.i
  %i.ah = phi i64 [ %i.s, %bb.d ], [ %spec.select.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i ], [ %i.z, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread.i ] ; 4 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ah
  %i.aj = getelementptr inbounds [8 x i8], ptr %0, i64 %.032.i
  %i.ak = load <2 x i32>, ptr %i.ai, align 4, !tbaa !3
  store <2 x i32> %i.ak, ptr %i.aj, align 4, !tbaa !3
  %i.al = icmp slt i64 %i.ah, %i.i
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !190

._crit_edge.i:                                    ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread30.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.013, %bb.c ], [ %i.ah, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread30.i ] ; 2 uses
  %i.am = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.am, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.an = load <2 x i32>, ptr %i.n, align 4, !tbaa !3
  store <2 x i32> %i.an, ptr %i.o, align 4, !tbaa !3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.e ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.01.0.copyload to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i.i = lshr i64 %.sroa.01.0.copyload, 32
  %.sroa.3.0.extract.trunc.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i to i32
  %i.ao = icmp sgt i64 %.1.i, %.013
  br i1 %i.ao, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPSt4pairIjjElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.thread.i.i
  %.01319.i.i = phi i64 [ %.020.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.thread.i.i ], [ %.1.i, %bb.f ] ; 4 uses
  %.020.in.i.i = add nsw i64 %.01319.i.i, -1
  %.020.i.i = sdiv i64 %.020.in.i.i, 2            ; 4 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.020.i.i ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !177 ; 3 uses
  %i.ar = icmp ult i32 %i.aq, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.ar, label %.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.thread_crit_edge.i.i, label %bb.g

.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.thread_crit_edge.i.i: ; preds = %.lr.ph.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !3
  br label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.thread.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.as = icmp ugt i32 %i.aq, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.as, label %_ZSt13__adjust_heapIPSt4pairIjjElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.i.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.i.i: ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !168 ; 2 uses
  %i.av = icmp ult i32 %i.au, %.sroa.3.0.extract.trunc.i.i
  br i1 %i.av, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.thread.i.i, label %_ZSt13__adjust_heapIPSt4pairIjjElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.i.i, %.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.thread_crit_edge.i.i
  %i.aw = phi i32 [ %.pre.i.i, %.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.thread_crit_edge.i.i ], [ %i.au, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.i.i ]
  %i.ax = getelementptr inbounds [8 x i8], ptr %0, i64 %.01319.i.i ; 2 uses
  store i32 %i.aq, ptr %i.ax, align 4, !tbaa !177
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 %i.aw, ptr %i.ay, align 4, !tbaa !168
  %i.az = icmp sgt i64 %.020.i.i, %.013
  br i1 %i.az, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPSt4pairIjjElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit, !llvm.loop !191

_ZSt13__adjust_heapIPSt4pairIjjElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit: ; preds = %bb.g, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.thread.i.i, %bb.f
  %.013.lcssa.i.i = phi i64 [ %.1.i, %bb.f ], [ %.01319.i.i, %bb.g ], [ %.020.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.thread.i.i ], [ %.01319.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPSt4pairIjjES4_EEbT_RT0_.exit.i.i ]
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i64 %.sroa.01.0.copyload, ptr %i.ba, align 4
  %.not = icmp eq i64 %.013, 0
  %i.bb = add nsw i64 %.013, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !193

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPSt4pairIjjElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPN6hermes20ExceptionHandlerInfoElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph25

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEET_S6_S6_T0_.exit
  %i.h = icmp eq i64 %i.ae, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph25, !llvm.loop !194

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.015.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_RT0_(ptr noundef %0, ptr noundef %.015.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_RT0_(ptr noundef %0, ptr noundef %.015.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph25:                                         ; preds = %.lr.ph, %bb.b
  %.0121424 = phi i64 [ %i.ae, %bb.b ], [ %2, %.lr.ph ]
  %.01523 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.i = phi i64 [ %i.ag, %bb.b ], [ %i.c, %.lr.ph ]
  %i.j = lshr i64 %i.i, 5
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %.01523, i64 -16
  tail call void @_ZSt22__move_median_to_firstIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_S6_T0_(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.k, ptr noundef nonnull %i.l)
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %.lr.ph25
  %.013.i.i = phi ptr [ %.01523, %.lr.ph25 ], [ %.114.i.i, %bb.i ]
  %.0.i.i = phi ptr [ %i.e, %.lr.ph25 ], [ %i.ad, %bb.i ]
  %i.m = load i32, ptr %i.f, align 4, !tbaa !195  ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i.i, %bb.c
  %.1.i.i = phi ptr [ %.0.i.i, %bb.c ], [ %i.u, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i.i ] ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !195  ; 2 uses
  %i.p = icmp ugt i32 %i.o, %i.m
  br i1 %i.p, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp eq i32 %i.o, %i.m
  br i1 %i.q, label %bb.f, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i.i.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i.i.preheader: ; preds = %bb.f, %bb.e
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %.1.i.i, align 4, !tbaa !197
  %i.s = load i32, ptr %0, align 4, !tbaa !197
  %i.t = icmp ult i32 %i.r, %i.s
  br i1 %i.t, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i.i.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i.i: ; preds = %bb.f, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  br label %bb.d, !llvm.loop !198

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i.i.backedge, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i.i.preheader
  %.013.pn.i.i = phi ptr [ %.013.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i.i.preheader ], [ %.114.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i.i.backedge ] ; 2 uses
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -16 ; 6 uses
  %i.v = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !195  ; 2 uses
  %i.x = icmp ugt i32 %i.m, %i.w
  br i1 %i.x, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i.i.backedge, label %bb.g

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i.i
  %i.y = icmp eq i32 %i.m, %i.w
  br i1 %i.y, label %bb.h, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit15.thread.i.i

bb.h:                                             ; preds = %bb.g
  %i.z = load i32, ptr %0, align 4, !tbaa !197
  %i.aa = load i32, ptr %.114.i.i, align 4, !tbaa !197
  %i.ab = icmp ult i32 %i.z, %i.aa
  br i1 %i.ab, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i.i.backedge, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit15.thread.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i.i.backedge: ; preds = %bb.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i.i, !llvm.loop !199

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit15.thread.i.i: ; preds = %bb.h, %bb.g
  %i.ac = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ac, label %bb.i, label %_ZSt27__unguarded_partition_pivotIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEET_S6_S6_T0_.exit

bb.i:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit15.thread.i.i
  %.sroa.0.0.copyload = load <4 x i32>, ptr %.1.i.i, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.114.i.i, i64 16, i1 false), !tbaa.struct !200
  store <4 x i32> %.sroa.0.0.copyload, ptr %.114.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  br label %bb.c, !llvm.loop !201

_ZSt27__unguarded_partition_pivotIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEET_S6_S6_T0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit15.thread.i.i
  %i.ae = add nsw i64 %.0121424, -1               ; 3 uses
  tail call void @_ZSt16__introsort_loopIPN6hermes20ExceptionHandlerInfoElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef %.1.i.i, ptr noundef %.01523, i64 noundef %i.ae)
  %i.af = ptrtoint ptr %.1.i.i to i64
  %i.ag = sub i64 %i.af, %i.a                     ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 256
  br i1 %i.ah, label %bb.b, label %.loopexit, !llvm.loop !194

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEET_S6_S6_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %scevgep = getelementptr i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  %.020.i.idx = phi i64 [ 16, %bb.b ], [ %.020.i.add, %bb.i ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %bb.b ], [ %.020.i.ptr, %bb.i ] ; 3 uses
  %.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.020.i.idx ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !195  ; 5 uses
  %i.h = load i32, ptr %i.e, align 4, !tbaa !195  ; 2 uses
  %i.i = icmp ugt i32 %i.g, %i.h
  br i1 %i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i32 %i.g, %i.h
  %.sroa.0.0.copyload.i.pre.i = load i32, ptr %.020.i.ptr, align 4, !tbaa !3 ; 3 uses
  br i1 %i.j, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread16.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i: ; preds = %bb.d
  %i.k = load i32, ptr %0, align 4, !tbaa !197
  %i.l = icmp ult i32 %.sroa.0.0.copyload.i.pre.i, %i.k
  br i1 %i.l, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread16.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i, %bb.c
  %.sroa.0.0.copyload = load <4 x i32>, ptr %.020.i.ptr, align 4
  %i.m = icmp samesign ugt i64 %.020.i.idx, 16
  br i1 %i.m, label %bb.e, label %bb.f, !prof !102

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.020.i.idx, i1 false)
  br label %_ZSt13move_backwardIPN6hermes20ExceptionHandlerInfoES2_ET0_T_S4_S3_.exit.i

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i
  %i.n = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !200
  br label %_ZSt13move_backwardIPN6hermes20ExceptionHandlerInfoES2_ET0_T_S4_S3_.exit.i

_ZSt13move_backwardIPN6hermes20ExceptionHandlerInfoES2_ET0_T_S4_S3_.exit.i: ; preds = %bb.f, %bb.e
  store <4 x i32> %.sroa.0.0.copyload, ptr %0, align 4
  br label %bb.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread16.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i, %bb.d
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 20
  %i.o = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.thread.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread16.i
  %.09.i.i = phi ptr [ %.020.i.ptr, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread16.i ], [ %.0.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.thread.i.i ] ; 6 uses
  %.0.i.i = getelementptr inbounds i8, ptr %.09.i.i, i64 -16 ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %.09.i.i, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !195  ; 2 uses
  %i.r = icmp ugt i32 %i.g, %i.q
  br i1 %i.r, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = icmp eq i32 %i.g, %i.q
  br i1 %i.s, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.i.i, label %_ZSt25__unguarded_linear_insertIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.i.i: ; preds = %bb.h
  %i.t = load i32, ptr %.0.i.i, align 4, !tbaa !197
  %i.u = icmp ult i32 %.sroa.0.0.copyload.i.pre.i, %i.t
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.i.i, %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.09.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0.i.i, i64 16, i1 false), !tbaa.struct !200
  br label %bb.g, !llvm.loop !202

_ZSt25__unguarded_linear_insertIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.i.i, %bb.h
  store i32 %.sroa.0.0.copyload.i.pre.i, ptr %.09.i.i, align 4, !tbaa !3
  %.sroa.5.0..09.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 4
  store i64 %i.o, ptr %.sroa.5.0..09.sroa_idx.i.i, align 4
  %.sroa.511.0..09.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 12
  store i32 %i.g, ptr %.sroa.511.0..09.sroa_idx.i.i, align 4, !tbaa !3
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIPN6hermes20ExceptionHandlerInfoES2_ET0_T_S4_S3_.exit.i
  %.020.i.add = add nuw nsw i64 %.020.i.idx, 16   ; 2 uses
  %.not.i = icmp eq i64 %.020.i.add, 256
  br i1 %.not.i, label %_ZSt16__insertion_sortIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, label %bb.c, !llvm.loop !203

_ZSt16__insertion_sortIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit: ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not5.i = icmp eq ptr %i.v, %1
  br i1 %.not5.i, label %_ZSt26__unguarded_insertion_sortIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt16__insertion_sortIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, %_ZSt25__unguarded_linear_insertIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i11
  %.06.i = phi ptr [ %i.ad, %_ZSt25__unguarded_linear_insertIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i11 ], [ %i.v, %_ZSt16__insertion_sortIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit ] ; 5 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %.06.i, align 4, !tbaa !3 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i8 = getelementptr inbounds nuw i8, ptr %.06.i, i64 4
  %i.w = load i64, ptr %.sroa.5.0..sroa_idx.i.i8, align 4
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.06.i, i64 12
  %.sroa.511.0.copyload.i.i = load i32, ptr %.sroa.511.0..sroa_idx.i.i, align 4, !tbaa !3 ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.thread.i.i16, %.lr.ph.i
  %.09.i.i9 = phi ptr [ %.06.i, %.lr.ph.i ], [ %.0.i.i10, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.thread.i.i16 ] ; 6 uses
  %.0.i.i10 = getelementptr inbounds i8, ptr %.09.i.i9, i64 -16 ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %.09.i.i9, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !195  ; 2 uses
  %i.z = icmp ugt i32 %.sroa.511.0.copyload.i.i, %i.y
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.thread.i.i16, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = icmp eq i32 %.sroa.511.0.copyload.i.i, %i.y
  br i1 %i.aa, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.i.i15, label %_ZSt25__unguarded_linear_insertIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i11

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.i.i15: ; preds = %bb.k
  %i.ab = load i32, ptr %.0.i.i10, align 4, !tbaa !197
  %i.ac = icmp ult i32 %.sroa.0.0.copyload.i.i, %i.ab
  br i1 %i.ac, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.thread.i.i16, label %_ZSt25__unguarded_linear_insertIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i11

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.thread.i.i16: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.i.i15, %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.09.i.i9, ptr noundef nonnull align 4 dereferenceable(16) %.0.i.i10, i64 16, i1 false), !tbaa.struct !200
  br label %bb.j, !llvm.loop !202

_ZSt25__unguarded_linear_insertIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i11: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.i.i15, %bb.k
  store i32 %.sroa.0.0.copyload.i.i, ptr %.09.i.i9, align 4, !tbaa !3
  %.sroa.5.0..09.sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %.09.i.i9, i64 4
  store i64 %i.w, ptr %.sroa.5.0..09.sroa_idx.i.i12, align 4
  %.sroa.511.0..09.sroa_idx.i.i13 = getelementptr inbounds nuw i8, ptr %.09.i.i9, i64 12
  store i32 %.sroa.511.0.copyload.i.i, ptr %.sroa.511.0..09.sroa_idx.i.i13, align 4, !tbaa !3
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i, i64 16 ; 2 uses
  %.not.i14 = icmp eq ptr %i.ad, %1
  br i1 %.not.i14, label %_ZSt26__unguarded_insertion_sortIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, label %.lr.ph.i, !llvm.loop !204

bb.l:                                             ; preds = %bb.a
  %i.ae = icmp eq ptr %0, %1
  br i1 %i.ae, label %_ZSt26__unguarded_insertion_sortIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.l
  %.017.i17 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not18.i = icmp eq ptr %.017.i17, %1
  br i1 %.not18.i, label %_ZSt26__unguarded_insertion_sortIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %.preheader.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.m

bb.m:                                             ; preds = %bb.t, %.lr.ph.i18
  %.020.i19 = phi ptr [ %.017.i17, %.lr.ph.i18 ], [ %.0.i29, %bb.t ] ; 6 uses
  %.pn19.i20 = phi ptr [ %0, %.lr.ph.i18 ], [ %.020.i19, %bb.t ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.pn19.i20, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !195 ; 5 uses
  %i.ai = load i32, ptr %i.af, align 4, !tbaa !195 ; 2 uses
  %i.aj = icmp ugt i32 %i.ah, %i.ai
  br i1 %i.aj, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i34, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = icmp eq i32 %i.ah, %i.ai
  %.sroa.0.0.copyload.i.pre.i21 = load i32, ptr %.020.i19, align 4, !tbaa !3 ; 3 uses
  br i1 %i.ak, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i33, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread16.i22

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i33: ; preds = %bb.n
  %i.al = load i32, ptr %0, align 4, !tbaa !197
  %i.am = icmp ult i32 %.sroa.0.0.copyload.i.pre.i21, %i.al
  br i1 %i.am, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i34, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread16.i22

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i34: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i33, %bb.m
  %.sroa.054.0.copyload = load <4 x i32>, ptr %.020.i19, align 4
  %i.an = ptrtoint ptr %.020.i19 to i64
  %i.ao = sub i64 %i.an, %i.b                     ; 3 uses
  %i.ap = ashr exact i64 %i.ao, 4                 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 1
  br i1 %i.aq, label %bb.o, label %bb.p, !prof !102

bb.o:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i34
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn19.i20, i64 32
  %i.as = sub nsw i64 0, %i.ap
  %i.at = getelementptr inbounds [16 x i8], ptr %i.ar, i64 %i.as
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.at, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ao, i1 false)
  br label %_ZSt13move_backwardIPN6hermes20ExceptionHandlerInfoES2_ET0_T_S4_S3_.exit.i35

bb.p:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i34
  %i.au = icmp eq i64 %i.ao, 16
  br i1 %i.au, label %bb.q, label %_ZSt13move_backwardIPN6hermes20ExceptionHandlerInfoES2_ET0_T_S4_S3_.exit.i35

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %.pn19.i20, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.av, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !200
  br label %_ZSt13move_backwardIPN6hermes20ExceptionHandlerInfoES2_ET0_T_S4_S3_.exit.i35

_ZSt13move_backwardIPN6hermes20ExceptionHandlerInfoES2_ET0_T_S4_S3_.exit.i35: ; preds = %bb.q, %bb.p, %bb.o
  store <4 x i32> %.sroa.054.0.copyload, ptr %0, align 4
  br label %bb.t

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread16.i22: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i33, %bb.n
  %.sroa.5.0..sroa_idx.i.i23 = getelementptr inbounds nuw i8, ptr %.pn19.i20, i64 20
  %i.aw = load i64, ptr %.sroa.5.0..sroa_idx.i.i23, align 4
  br label %bb.r

bb.r:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.thread.i.i32, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread16.i22
  %.09.i.i24 = phi ptr [ %.020.i19, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread16.i22 ], [ %.0.i.i25, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.thread.i.i32 ] ; 6 uses
  %.0.i.i25 = getelementptr inbounds i8, ptr %.09.i.i24, i64 -16 ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %.09.i.i24, i64 -4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !195 ; 2 uses
  %i.az = icmp ugt i32 %i.ah, %i.ay
  br i1 %i.az, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.thread.i.i32, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = icmp eq i32 %i.ah, %i.ay
  br i1 %i.ba, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.i.i31, label %_ZSt25__unguarded_linear_insertIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i26

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.i.i31: ; preds = %bb.s
  %i.bb = load i32, ptr %.0.i.i25, align 4, !tbaa !197
  %i.bc = icmp ult i32 %.sroa.0.0.copyload.i.pre.i21, %i.bb
  br i1 %i.bc, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.thread.i.i32, label %_ZSt25__unguarded_linear_insertIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i26

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.thread.i.i32: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.i.i31, %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.09.i.i24, ptr noundef nonnull align 4 dereferenceable(16) %.0.i.i25, i64 16, i1 false), !tbaa.struct !200
  br label %bb.r, !llvm.loop !202

_ZSt25__unguarded_linear_insertIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i26: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.i.i31, %bb.s
  store i32 %.sroa.0.0.copyload.i.pre.i21, ptr %.09.i.i24, align 4, !tbaa !3
  %.sroa.5.0..09.sroa_idx.i.i27 = getelementptr inbounds nuw i8, ptr %.09.i.i24, i64 4
  store i64 %i.aw, ptr %.sroa.5.0..09.sroa_idx.i.i27, align 4
  %.sroa.511.0..09.sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %.09.i.i24, i64 12
  store i32 %i.ah, ptr %.sroa.511.0..09.sroa_idx.i.i28, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i26, %_ZSt13move_backwardIPN6hermes20ExceptionHandlerInfoES2_ET0_T_S4_S3_.exit.i35
  %.0.i29 = getelementptr inbounds nuw i8, ptr %.020.i19, i64 16 ; 2 uses
  %.not.i30 = icmp eq ptr %.0.i29, %1
  br i1 %.not.i30, label %_ZSt26__unguarded_insertion_sortIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, label %bb.m, !llvm.loop !203

_ZSt26__unguarded_insertion_sortIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit: ; preds = %bb.t, %_ZSt25__unguarded_linear_insertIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i11, %.preheader.i, %bb.l, %_ZSt16__insertion_sortIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt11__sort_heapIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit
  %.07 = phi ptr [ %i.e, %_ZSt10__pop_heapIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.07, i64 -16 ; 4 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.e, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %.07, i64 -8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !200
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.a                       ; 3 uses
  %i.h = ashr exact i64 %i.g, 4                   ; 3 uses
  %i.i = add nsw i64 %i.h, -1
  %i.j = sdiv i64 %i.i, 2
  %i.k = icmp sgt i64 %i.h, 2
  br i1 %i.k, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread31.i.i
  %.033.i.i = phi i64 [ %i.ab, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread31.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.l = shl i64 %.033.i.i, 1                     ; 4 uses
  %i.m = add i64 %i.l, 2                          ; 3 uses
  %i.n = getelementptr inbounds [16 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.o = getelementptr [16 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !195  ; 2 uses
  %i.s = getelementptr i8, ptr %i.o, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !195  ; 2 uses
  %i.u = icmp ugt i32 %i.r, %i.t
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i.i, label %bb.b

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i.i: ; preds = %.lr.ph.i.i
  %i.v = or disjoint i64 %i.l, 1
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread31.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.w = icmp eq i32 %i.r, %i.t
  br i1 %i.w, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread31.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i.i: ; preds = %bb.b
  %i.x = load i32, ptr %i.n, align 4, !tbaa !197
  %i.y = load i32, ptr %i.p, align 4, !tbaa !197
  %i.z = icmp ult i32 %i.x, %i.y
  %i.aa = or disjoint i64 %i.l, 1
  %cond.fr.i.i = freeze i1 %i.z
  %spec.select.i.i = select i1 %cond.fr.i.i, i64 %i.aa, i64 %i.m
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread31.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread31.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i.i, %bb.b, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i.i
  %i.ab = phi i64 [ %i.m, %bb.b ], [ %spec.select.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i.i ], [ %i.v, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i.i ] ; 4 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ab
  %i.ad = getelementptr inbounds [16 x i8], ptr %0, i64 %.033.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ad, ptr noundef nonnull align 4 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !200
  %i.ae = icmp slt i64 %i.ab, %i.j
  br i1 %i.ae, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !205

._crit_edge.i.i:                                  ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread31.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %i.ab, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread31.i.i ] ; 5 uses
  %i.af = and i64 %i.g, 16
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ah = add nsw i64 %i.h, -2
  %i.ai = ashr exact i64 %i.ah, 1
  %i.aj = icmp eq i64 %.0.lcssa.i.i, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ak = shl nsw i64 %.0.lcssa.i.i, 1
  %i.al = or disjoint i64 %i.ak, 1                ; 2 uses
  %i.am = getelementptr inbounds [16 x i8], ptr %0, i64 %i.al
  %i.an = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.an, ptr noundef nonnull align 4 dereferenceable(16) %i.am, i64 16, i1 false), !tbaa.struct !200
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.al, %bb.d ], [ %.0.lcssa.i.i, %bb.c ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.sroa.0.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.sroa.01.0.copyload.i to i32
  %i.ao = icmp sgt i64 %.1.i.i, 0
  br i1 %i.ao, label %.lr.ph.i.i.i, label %_ZSt10__pop_heapIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %.sroa.3.12.extract.shift.i.i.i = lshr i64 %.sroa.4.0.copyload.i, 32
  %.sroa.3.12.extract.trunc.i.i.i = trunc nuw i64 %.sroa.3.12.extract.shift.i.i.i to i32 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN6hermes20ExceptionHandlerInfoES4_EEbT_RT0_.exit.thread.i.i.i, %.lr.ph.i.i.i
  %.01317.i.i.i = phi i64 [ %.1.i.i, %.lr.ph.i.i.i ], [ %.018.i.i78.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN6hermes20ExceptionHandlerInfoES4_EEbT_RT0_.exit.thread.i.i.i ] ; 4 uses
  %.018.in.i.i.i = add nsw i64 %.01317.i.i.i, -1
  %.018.i.i78.i = lshr i64 %.018.in.i.i.i, 1      ; 3 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.018.i.i78.i ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !195 ; 2 uses
  %i.as = icmp ugt i32 %i.ar, %.sroa.3.12.extract.trunc.i.i.i
  br i1 %i.as, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN6hermes20ExceptionHandlerInfoES4_EEbT_RT0_.exit.thread.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = icmp eq i32 %i.ar, %.sroa.3.12.extract.trunc.i.i.i
  br i1 %i.at, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN6hermes20ExceptionHandlerInfoES4_EEbT_RT0_.exit.i.i.i, label %_ZSt10__pop_heapIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN6hermes20ExceptionHandlerInfoES4_EEbT_RT0_.exit.i.i.i: ; preds = %bb.g
  %i.au = load i32, ptr %i.ap, align 4, !tbaa !197
  %i.av = icmp ult i32 %i.au, %.sroa.0.sroa.0.0.extract.trunc.i.i.i
  br i1 %i.av, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN6hermes20ExceptionHandlerInfoES4_EEbT_RT0_.exit.thread.i.i.i, label %_ZSt10__pop_heapIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN6hermes20ExceptionHandlerInfoES4_EEbT_RT0_.exit.thread.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN6hermes20ExceptionHandlerInfoES4_EEbT_RT0_.exit.i.i.i, %bb.f
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.01317.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aw, ptr noundef nonnull align 4 dereferenceable(16) %i.ap, i64 16, i1 false), !tbaa.struct !200
  %.not.i = icmp eq i64 %.018.i.i78.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit, label %bb.f, !llvm.loop !206

_ZSt10__pop_heapIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit: ; preds = %bb.g, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN6hermes20ExceptionHandlerInfoES4_EEbT_RT0_.exit.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN6hermes20ExceptionHandlerInfoES4_EEbT_RT0_.exit.thread.i.i.i, %bb.e
  %.013.lcssa.i.i.i = phi i64 [ %.1.i.i, %bb.e ], [ %.01317.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN6hermes20ExceptionHandlerInfoES4_EEbT_RT0_.exit.i.i.i ], [ 0, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN6hermes20ExceptionHandlerInfoES4_EEbT_RT0_.exit.thread.i.i.i ], [ %.01317.i.i.i, %bb.g ]
  %i.ax = getelementptr inbounds [16 x i8], ptr %0, i64 %.013.lcssa.i.i.i ; 2 uses
  store i64 %.sroa.01.0.copyload.i, ptr %i.ax, align 4
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.3.0..sroa_idx.i.i.i, align 4
  %i.ay = icmp sgt i64 %i.g, 16
  br i1 %i.ay, label %.lr.ph, label %._crit_edge, !llvm.loop !207

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 16
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIPN6hermes20ExceptionHandlerInfoElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit, %bb.b
  %.013 = phi i64 [ %i.g, %bb.b ], [ %i.ax, %_ZSt13__adjust_heapIPN6hermes20ExceptionHandlerInfoElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.013 ; 2 uses
  %.sroa.01.0.copyload = load i64, ptr %i.p, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %i.q = icmp slt i64 %.013, %i.i
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread31.i
  %.033.i = phi i64 [ %i.ah, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread31.i ], [ %.013, %bb.c ] ; 2 uses
  %i.r = shl i64 %.033.i, 1                       ; 4 uses
  %i.s = add i64 %i.r, 2                          ; 3 uses
  %i.t = getelementptr inbounds [16 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = getelementptr [16 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !195  ; 2 uses
  %i.y = getelementptr i8, ptr %i.u, i64 28
  %i.z = load i32, ptr %i.y, align 4, !tbaa !195  ; 2 uses
  %i.aa = icmp ugt i32 %i.x, %i.z
  br i1 %i.aa, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i, label %bb.d

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i: ; preds = %.lr.ph.i
  %i.ab = or disjoint i64 %i.r, 1
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread31.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.ac = icmp eq i32 %i.x, %i.z
  br i1 %i.ac, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread31.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i: ; preds = %bb.d
  %i.ad = load i32, ptr %i.t, align 4, !tbaa !197
  %i.ae = load i32, ptr %i.v, align 4, !tbaa !197
  %i.af = icmp ult i32 %i.ad, %i.ae
  %i.ag = or disjoint i64 %i.r, 1
  %cond.fr.i = freeze i1 %i.af
  %spec.select.i = select i1 %cond.fr.i, i64 %i.ag, i64 %i.s
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread31.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread31.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i, %bb.d, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i
  %i.ah = phi i64 [ %i.s, %bb.d ], [ %spec.select.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i ], [ %i.ab, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i ] ; 4 uses
  %i.ai = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ah
  %i.aj = getelementptr inbounds [16 x i8], ptr %0, i64 %.033.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aj, ptr noundef nonnull align 4 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !200
  %i.ak = icmp slt i64 %i.ah, %i.i
  br i1 %i.ak, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !205

._crit_edge.i:                                    ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread31.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.013, %bb.c ], [ %i.ah, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread31.i ] ; 2 uses
  %i.al = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !200
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.e ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.0.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.01.0.copyload to i32
  %i.am = icmp sgt i64 %.1.i, %.013
  br i1 %i.am, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN6hermes20ExceptionHandlerInfoElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.f
  %.sroa.3.12.extract.shift.i.i = lshr i64 %.sroa.4.0.copyload, 32
  %.sroa.3.12.extract.trunc.i.i = trunc nuw i64 %.sroa.3.12.extract.shift.i.i to i32 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN6hermes20ExceptionHandlerInfoES4_EEbT_RT0_.exit.thread.i.i, %.lr.ph.i.i
  %.01317.i.i = phi i64 [ %.1.i, %.lr.ph.i.i ], [ %.018.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN6hermes20ExceptionHandlerInfoES4_EEbT_RT0_.exit.thread.i.i ] ; 4 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.an = getelementptr inbounds [16 x i8], ptr %0, i64 %.018.i.i ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !195 ; 2 uses
  %i.aq = icmp ugt i32 %i.ap, %.sroa.3.12.extract.trunc.i.i
  br i1 %i.aq, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN6hermes20ExceptionHandlerInfoES4_EEbT_RT0_.exit.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = icmp eq i32 %i.ap, %.sroa.3.12.extract.trunc.i.i
  br i1 %i.ar, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN6hermes20ExceptionHandlerInfoES4_EEbT_RT0_.exit.i.i, label %_ZSt13__adjust_heapIPN6hermes20ExceptionHandlerInfoElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN6hermes20ExceptionHandlerInfoES4_EEbT_RT0_.exit.i.i: ; preds = %bb.h
  %i.as = load i32, ptr %i.an, align 4, !tbaa !197
  %i.at = icmp ult i32 %i.as, %.sroa.0.sroa.0.0.extract.trunc.i.i
  br i1 %i.at, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN6hermes20ExceptionHandlerInfoES4_EEbT_RT0_.exit.thread.i.i, label %_ZSt13__adjust_heapIPN6hermes20ExceptionHandlerInfoElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN6hermes20ExceptionHandlerInfoES4_EEbT_RT0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN6hermes20ExceptionHandlerInfoES4_EEbT_RT0_.exit.i.i, %bb.g
  %i.au = getelementptr inbounds [16 x i8], ptr %0, i64 %.01317.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.au, ptr noundef nonnull align 4 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !200
  %i.av = icmp sgt i64 %.018.i.i, %.013
  br i1 %i.av, label %bb.g, label %_ZSt13__adjust_heapIPN6hermes20ExceptionHandlerInfoElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit, !llvm.loop !206

_ZSt13__adjust_heapIPN6hermes20ExceptionHandlerInfoElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit: ; preds = %bb.h, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN6hermes20ExceptionHandlerInfoES4_EEbT_RT0_.exit.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN6hermes20ExceptionHandlerInfoES4_EEbT_RT0_.exit.thread.i.i, %bb.f
  %.013.lcssa.i.i = phi i64 [ %.1.i, %bb.f ], [ %.01317.i.i, %bb.h ], [ %.018.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN6hermes20ExceptionHandlerInfoES4_EEbT_RT0_.exit.thread.i.i ], [ %.01317.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN6hermes20ExceptionHandlerInfoES4_EEbT_RT0_.exit.i.i ]
  %i.aw = getelementptr inbounds [16 x i8], ptr %0, i64 %.013.lcssa.i.i ; 2 uses
  store i64 %.sroa.01.0.copyload, ptr %i.aw, align 4
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %.sroa.4.0.copyload, ptr %.sroa.3.0..sroa_idx.i.i, align 4
  %.not = icmp eq i64 %.013, 0
  %i.ax = add nsw i64 %.013, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !208

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPN6hermes20ExceptionHandlerInfoElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !195  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !195  ; 6 uses
  %i.e = icmp ugt i32 %i.b, %i.d
  br i1 %i.e, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.b, %i.d
  br i1 %i.f, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread26

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit: ; preds = %bb.b
  %i.g = load i32, ptr %1, align 4, !tbaa !197
  %i.h = load i32, ptr %2, align 4, !tbaa !197
  %i.i = icmp ult i32 %i.g, %i.h
  br i1 %i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread26

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread: ; preds = %bb.a, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !195  ; 4 uses
  %i.l = icmp ugt i32 %i.d, %i.k
  br i1 %i.l, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit22.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread
  %i.m = icmp eq i32 %i.d, %i.k
  br i1 %i.m, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit22, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit22.thread27

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit22: ; preds = %bb.c
  %i.n = load i32, ptr %2, align 4, !tbaa !197
  %i.o = load i32, ptr %3, align 4, !tbaa !197
  %i.p = icmp ult i32 %i.n, %i.o
  br i1 %i.p, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit22.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit22.thread27

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit22.thread: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit22
  %.sroa.0.0.copyload = load <4 x i32>, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !200
  store <4 x i32> %.sroa.0.0.copyload, ptr %2, align 4
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit22.thread27: ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit22
  %i.q = icmp ugt i32 %i.b, %i.k
  br i1 %i.q, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit23.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit22.thread27
  %i.r = icmp eq i32 %i.b, %i.k
  br i1 %i.r, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit23, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit23.thread28

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit23: ; preds = %bb.d
  %i.s = load i32, ptr %1, align 4, !tbaa !197
  %i.t = load i32, ptr %3, align 4, !tbaa !197
  %i.u = icmp ult i32 %i.s, %i.t
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit23.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit23.thread28

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit23.thread: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit22.thread27, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit23
  %.sroa.036.0.copyload = load <4 x i32>, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !200
  store <4 x i32> %.sroa.036.0.copyload, ptr %3, align 4
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit23.thread28: ; preds = %bb.d, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit23
  %.sroa.038.0.copyload = load <4 x i32>, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !200
  store <4 x i32> %.sroa.038.0.copyload, ptr %1, align 4
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread26: ; preds = %bb.b, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !195  ; 4 uses
  %i.x = icmp ugt i32 %i.b, %i.w
  br i1 %i.x, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit24.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread26
  %i.y = icmp eq i32 %i.b, %i.w
  br i1 %i.y, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit24, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit24.thread29

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit24: ; preds = %bb.e
  %i.z = load i32, ptr %1, align 4, !tbaa !197
  %i.aa = load i32, ptr %3, align 4, !tbaa !197
  %i.ab = icmp ult i32 %i.z, %i.aa
  br i1 %i.ab, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit24.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit24.thread29

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit24.thread: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread26, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit24
  %.sroa.040.0.copyload = load <4 x i32>, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !200
  store <4 x i32> %.sroa.040.0.copyload, ptr %1, align 4
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit24.thread29: ; preds = %bb.e, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit24
  %i.ac = icmp ugt i32 %i.d, %i.w
  br i1 %i.ac, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit25.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit24.thread29
  %i.ad = icmp eq i32 %i.d, %i.w
  br i1 %i.ad, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit25, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit25.thread30

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit25: ; preds = %bb.f
  %i.ae = load i32, ptr %2, align 4, !tbaa !197
  %i.af = load i32, ptr %3, align 4, !tbaa !197
  %i.ag = icmp ult i32 %i.ae, %i.af
  br i1 %i.ag, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit25.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit25.thread30

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit25.thread: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit24.thread29, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit25
  %.sroa.042.0.copyload = load <4 x i32>, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !200
  store <4 x i32> %.sroa.042.0.copyload, ptr %3, align 4
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit25.thread30: ; preds = %bb.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit25
  %.sroa.044.0.copyload = load <4 x i32>, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !200
  store <4 x i32> %.sroa.044.0.copyload, ptr %2, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit24.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit25.thread30, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit25.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit22.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit23.thread28, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit23.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !44, i64 160}
!8 = !{!"_ZTSN6hermes7ContextE", !9, i64 0, !9, i64 32, !17, i64 64, !24, i64 72, !28, i64 104, !38, i64 152, !44, i64 160, !45, i64 168, !45, i64 169, !45, i64 170, !4, i64 172, !4, i64 176, !45, i64 180, !45, i64 181, !45, i64 182, !45, i64 183, !45, i64 184, !45, i64 185, !46, i64 188, !45, i64 192, !45, i64 193, !47, i64 200, !54, i64 208, !59, i64 232, !45, i64 236, !60, i64 240, !67, i64 632, !68, i64 640}
!9 = !{!"_ZTSN6hermes28BacktrackingBumpPtrAllocatorE", !10, i64 0, !16, i64 24}
!10 = !{!"_ZTSSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE", !11, i64 0}
!11 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE", !12, i64 0}
!12 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !13, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!14 = !{!"p1 _ZTSSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS2_EE", !15, i64 0}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!"p1 _ZTSN6hermes28BacktrackingBumpPtrAllocator5StateE", !15, i64 0}
!17 = !{!"_ZTSSt10unique_ptrIN6hermes6parser13PreParsedDataESt14default_deleteIS2_EE", !18, i64 0}
!18 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes6parser13PreParsedDataESt14default_deleteIS2_ELb1ELb1EE", !19, i64 0}
!19 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes6parser13PreParsedDataESt14default_deleteIS2_EE", !20, i64 0}
!20 = !{!"_ZTSSt5tupleIJPN6hermes6parser13PreParsedDataESt14default_deleteIS2_EEE", !21, i64 0}
!21 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes6parser13PreParsedDataESt14default_deleteIS2_EEE", !22, i64 0}
!22 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes6parser13PreParsedDataELb0EE", !23, i64 0}
!23 = !{!"p1 _ZTSN6hermes6parser13PreParsedDataE", !15, i64 0}
!24 = !{!"_ZTSN6hermes11StringTableE", !25, i64 0, !26, i64 8}
!25 = !{!"p1 _ZTSN6hermes28BacktrackingBumpPtrAllocatorE", !15, i64 0}
!26 = !{!"_ZTSN4llvh8DenseMapINS_9StringRefEPN6hermes12UniqueStringENS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_S4_EEEE", !27, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!27 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairINS_9StringRefEPN6hermes12UniqueStringEEE", !15, i64 0}
!28 = !{!"_ZTSSt3mapISt4pairIPN6hermes12UniqueStringES3_ENS1_14CompiledRegExpESt4lessIS4_ESaIS0_IKS4_S5_EEE", !29, i64 0}
!29 = !{!"_ZTSSt8_Rb_treeISt4pairIPN6hermes12UniqueStringES3_ES0_IKS4_NS1_14CompiledRegExpEESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE", !30, i64 0}
!30 = !{!"_ZTSNSt8_Rb_treeISt4pairIPN6hermes12UniqueStringES3_ES0_IKS4_NS1_14CompiledRegExpEESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE13_Rb_tree_implISB_Lb1EEE", !31, i64 0, !33, i64 8}
!31 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessISt4pairIPN6hermes12UniqueStringES4_EEE", !32, i64 0}
!32 = !{!"_ZTSSt4lessISt4pairIPN6hermes12UniqueStringES3_EE"}
!33 = !{!"_ZTSSt15_Rb_tree_header", !34, i64 0, !37, i64 32}
!34 = !{!"_ZTSSt18_Rb_tree_node_base", !35, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!35 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!36 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !15, i64 0}
!37 = !{!"long", !5, i64 0}
!38 = !{!"_ZTSSt10unique_ptrIN6hermes18SourceErrorManagerESt14default_deleteIS1_EE", !39, i64 0}
!39 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes18SourceErrorManagerESt14default_deleteIS1_ELb1ELb1EE", !40, i64 0}
!40 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes18SourceErrorManagerESt14default_deleteIS1_EE", !41, i64 0}
!41 = !{!"_ZTSSt5tupleIJPN6hermes18SourceErrorManagerESt14default_deleteIS1_EEE", !42, i64 0}
!42 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes18SourceErrorManagerESt14default_deleteIS1_EEE", !43, i64 0}
!43 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes18SourceErrorManagerELb0EE", !44, i64 0}
!44 = !{!"p1 _ZTSN6hermes18SourceErrorManagerE", !15, i64 0}
!45 = !{!"bool", !5, i64 0}
!46 = !{!"_ZTSN6hermes16ParseFlowSettingE", !5, i64 0}
!47 = !{!"_ZTSSt10unique_ptrIN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EE", !48, i64 0}
!48 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_ELb1ELb1EE", !49, i64 0}
!49 = !{!"_ZTSSt15__uniq_ptr_implIN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EE", !50, i64 0}
!50 = !{!"_ZTSSt5tupleIJPN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EEE", !51, i64 0}
!51 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EEE", !52, i64 0}
!52 = !{!"_ZTSSt10_Head_baseILm0EPN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEELb0EE", !53, i64 0}
!53 = !{!"p1 _ZTSN4llvh8DenseMapINS_9StringRefENS0_IS1_S1_NS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_S1_EEEES3_NS5_IS1_S7_EEEE", !15, i64 0}
!54 = !{!"_ZTSSt6vectorIjSaIjEE", !55, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !56, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !57, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!58 = !{!"p1 int", !15, i64 0}
!59 = !{!"_ZTSN6hermes16DebugInfoSettingE", !5, i64 0}
!60 = !{!"_ZTSN6hermes22CodeGenerationSettingsE", !45, i64 0, !45, i64 1, !45, i64 2, !45, i64 3, !45, i64 4, !45, i64 5, !45, i64 6, !45, i64 7, !45, i64 8, !45, i64 9, !61, i64 16, !61, i64 168, !62, i64 320}
!61 = !{!"_ZTSN6hermes35CodeGenerationSettings_DumpSettingsE", !45, i64 0, !62, i64 8, !62, i64 80}
!62 = !{!"_ZTSN4llvh13SmallDenseSetINS_9StringRefELj4ENS_12DenseMapInfoIS1_EEEE", !63, i64 0}
!63 = !{!"_ZTSN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_EE", !64, i64 0}
!64 = !{!"_ZTSN4llvh13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_EENS2_12DenseSetPairIS1_EEEE", !4, i64 0, !4, i64 0, !4, i64 4, !65, i64 8}
!65 = !{!"_ZTSN4llvh21AlignedCharArrayUnionIA4_NS_6detail12DenseSetPairINS_9StringRefEEENS_13SmallDenseMapIS3_NS1_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_EES4_E8LargeRepEccccccccEE", !66, i64 0}
!66 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm64EEE", !5, i64 0}
!67 = !{!"_ZTSN6hermes20OptimizationSettingsE", !45, i64 0, !45, i64 1, !45, i64 2, !45, i64 3, !45, i64 4, !45, i64 5}
!68 = !{!"_ZTSSt10shared_ptrIN6hermes3hbc14BackendContextEE", !69, i64 0}
!69 = !{!"_ZTSSt12__shared_ptrIN6hermes3hbc14BackendContextELN9__gnu_cxx12_Lock_policyE2EE", !70, i64 0, !71, i64 8}
!70 = !{!"p1 _ZTSN6hermes3hbc14BackendContextE", !15, i64 0}
!71 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !72, i64 0}
!72 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!73 = !{}
!74 = !{i64 8}
!75 = !{!76, !76, i64 0}
!76 = !{!"p1 omnipotent char", !15, i64 0}
!77 = !{!78, !79, i64 17}
!78 = !{!"_ZTSN4llvh5TwineE", !5, i64 0, !5, i64 8, !79, i64 16, !79, i64 17}
!79 = !{!"_ZTSN4llvh5Twine8NodeKindE", !5, i64 0}
!80 = !{!5, !5, i64 0}
!81 = !{!78, !79, i64 16}
!82 = !{!83, !45, i64 64}
!83 = !{!"_ZTSN4llvh15optional_detail15OptionalStorageINS_11SmallPtrSetIPN6hermes10BasicBlockELj4EEELb0EEE", !84, i64 0, !45, i64 64}
!84 = !{!"_ZTSN4llvh21AlignedCharArrayUnionINS_11SmallPtrSetIPN6hermes10BasicBlockELj4EEEcccccccccEE", !66, i64 0}
!85 = !{!86, !15, i64 0}
!86 = !{!"_ZTSN4llvh15SmallVectorBaseE", !15, i64 0, !4, i64 8, !4, i64 12}
!87 = !{!86, !4, i64 8}
!88 = !{!86, !4, i64 12}
!89 = !{!90, !91, i64 0}
!90 = !{!"_ZTSN4llvh19SmallPtrSetImplBaseE", !91, i64 0, !91, i64 8, !4, i64 16, !4, i64 20, !4, i64 24}
!91 = !{!"any p2 pointer", !15, i64 0}
!92 = !{!90, !91, i64 8}
!93 = !{!90, !4, i64 16}
!94 = !{!90, !4, i64 20}
!95 = !{!90, !4, i64 24}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_: argument 0"}
!98 = distinct !{!98, !"_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_"}
!99 = !{!15, !15, i64 0}
!100 = distinct !{!100, !101}
!101 = !{!"llvm.loop.mustprogress"}
!102 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!103 = distinct !{!103, !101}
!104 = !{!105, !105, i64 0}
!105 = !{!"p1 _ZTSN6hermes10BasicBlockE", !15, i64 0}
!106 = !{!107, !108, i64 0}
!107 = !{!"_ZTSN6hermes5ValueE", !108, i64 0, !109, i64 2, !111, i64 8}
!108 = !{!"_ZTSN6hermes9ValueKindE", !5, i64 0}
!109 = !{!"_ZTSN6hermes4TypeE", !110, i64 0, !110, i64 2}
!110 = !{!"short", !5, i64 0}
!111 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes11InstructionELj2EEE", !112, i64 0, !115, i64 16}
!112 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes11InstructionEEE", !113, i64 0}
!113 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes11InstructionELb1EEE", !114, i64 0}
!114 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes11InstructionEvEE", !86, i64 0}
!115 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes11InstructionELj2EEE", !5, i64 0}
!116 = !{!117, !118, i64 0}
!117 = !{!"_ZTSN4llvh8DenseMapIPN6hermes9CatchInstENS1_17CatchCoverageInfoENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S4_EEEE", !118, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!118 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPN6hermes9CatchInstENS2_17CatchCoverageInfoEEE", !15, i64 0}
!119 = !{!117, !4, i64 16}
!120 = !{!121, !121, i64 0}
!121 = !{!"p1 _ZTSN6hermes9CatchInstE", !15, i64 0}
!122 = !{!"branch_weights", i32 1999, i32 1}
!123 = !{!"branch_weights", i32 1, i32 0}
!124 = distinct !{!124, !101}
!125 = !{!117, !4, i64 8}
!126 = !{!117, !4, i64 12}
!127 = distinct !{!127, !128}
!128 = !{!"llvm.loop.unroll.disable"}
!129 = distinct !{!129, !101}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZN6hermes10successorsEPNS_10BasicBlockE: argument 0"}
!132 = distinct !{!132, !"_ZN6hermes10successorsEPNS_10BasicBlockE"}
!133 = !{!134, !135, i64 8}
!134 = !{!"_ZTSN4llvh15ilist_node_baseILb0EEE", !135, i64 0, !135, i64 8}
!135 = !{!"p1 _ZTSN4llvh15ilist_node_baseILb0EEE", !15, i64 0}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_: argument 0"}
!138 = distinct !{!138, !"_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_: argument 0"}
!141 = distinct !{!141, !"_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_"}
!142 = !{!143, !4, i64 88}
!143 = !{!"_ZTSN6hermes17CatchCoverageInfoE", !4, i64 0, !144, i64 8, !4, i64 88}
!144 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EEE", !145, i64 0, !148, i64 16}
!145 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes10BasicBlockEEE", !146, i64 0}
!146 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EEE", !147, i64 0}
!147 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes10BasicBlockEvEE", !86, i64 0}
!148 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes10BasicBlockELj8EEE", !5, i64 0}
!149 = !{!150, !45, i64 64}
!150 = !{!"_ZTSN4llvh8OptionalINS_11SmallPtrSetIPN6hermes10BasicBlockELj4EEEEE", !83, i64 0}
!151 = !{i8 0, i8 2}
!152 = distinct !{!152, !101}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_: argument 0"}
!155 = distinct !{!155, !"_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_: argument 0"}
!158 = distinct !{!158, !"_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_"}
!159 = distinct !{!159, !101}
!160 = !{!161, !121, i64 0}
!161 = !{!"_ZTSSt4pairIPN6hermes9CatchInstENS0_17CatchCoverageInfoEE", !121, i64 0, !143, i64 8}
!162 = !{!143, !4, i64 0}
!163 = !{!164, !165, i64 0}
!164 = !{!"_ZTSN4llvh8DenseMapIPN6hermes10BasicBlockESt4pairIjjENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EEEE", !165, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!165 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPN6hermes10BasicBlockESt4pairIjjEEE", !15, i64 0}
!166 = !{!164, !4, i64 16}
!167 = distinct !{!167, !101}
!168 = !{!169, !4, i64 4}
!169 = !{!"_ZTSSt4pairIjjE", !4, i64 0, !4, i64 4}
!170 = !{!118, !118, i64 0}
!171 = distinct !{!171, !128}
!172 = distinct !{!172, !128}
!173 = distinct !{!173, !101}
!174 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!175 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!176 = distinct !{!176, !101}
!177 = !{!169, !4, i64 0}
!178 = distinct !{!178, !128}
!179 = distinct !{!179, !101}
!180 = distinct !{!180, !101}
!181 = distinct !{!181, !101}
!182 = distinct !{!182, !101}
!183 = distinct !{!183, !101, !184, !185}
!184 = !{!"llvm.loop.isvectorized", i32 1}
!185 = !{!"llvm.loop.unroll.runtime.disable"}
!186 = distinct !{!186, !101, !185, !184}
!187 = distinct !{!187, !101}
!188 = distinct !{!188, !101}
!189 = distinct !{!189, !101}
!190 = distinct !{!190, !101}
!191 = distinct !{!191, !101}
!192 = distinct !{!192, !101}
!193 = distinct !{!193, !101}
!194 = distinct !{!194, !101}
!195 = !{!196, !4, i64 12}
!196 = !{!"_ZTSN6hermes20ExceptionHandlerInfoE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12}
!197 = !{!196, !4, i64 0}
!198 = distinct !{!198, !101}
!199 = distinct !{!199, !101}
!200 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3, i64 12, i64 4, !3}
!201 = distinct !{!201, !101}
!202 = distinct !{!202, !101}
!203 = distinct !{!203, !101}
!204 = distinct !{!204, !101}
!205 = distinct !{!205, !101}
!206 = distinct !{!206, !101}
!207 = distinct !{!207, !101}
!208 = distinct !{!208, !101}
end_hunk_0
