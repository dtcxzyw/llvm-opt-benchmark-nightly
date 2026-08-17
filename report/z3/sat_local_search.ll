inline.NumInlined: 887
inline.NumDeleted: 334
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN3sat12local_search11init_scoresEv:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %bb.i, %bb.e, %_ZN6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !73  ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %._crit_edge42, label %_ZN6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit36

_ZN6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit36: ; preds = %._crit_edge
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16 ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  %.not3339 = icmp eq i32 %i.ae, 0
  br i1 %.not3339, label %._crit_edge42, label %.lr.ph41

.lr.ph41:                                         ; preds = %_ZN6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit36
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 2 uses
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph, %bb.i
  %.03138 = phi ptr [ %i.s, %.lr.ph ], [ %i.av, %bb.i ] ; 2 uses
  %i.ak = load i32, ptr %.03138, align 4, !tbaa !76
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !79 ; 2 uses
  %i.ap = icmp slt i64 %i.ao, 1
  br i1 %i.ap, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aq = load i32, ptr %i.z, align 8, !tbaa !85
  %i.ar = add nsw i32 %i.aq, -1
  store i32 %i.ar, ptr %i.z, align 8, !tbaa !85
  %i.as = icmp eq i64 %i.ao, 0
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.at = load i32, ptr %i.aa, align 4, !tbaa !86
  %i.au = add nsw i32 %i.at, -1
  store i32 %i.au, ptr %i.aa, align 4, !tbaa !86
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %.03138, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.av, %i.y
  br i1 %.not, label %._crit_edge, label %bb.f

._crit_edge42:                                    ; preds = %bb.m, %._crit_edge, %_ZN6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.b, !llvm.loop !87

bb.j:                                             ; preds = %.lr.ph41, %bb.m
  %.03240 = phi ptr [ %i.ab, %.lr.ph41 ], [ %i.bh, %bb.m ] ; 2 uses
  %i.aw = load i32, ptr %.03240, align 4, !tbaa !76
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !79 ; 2 uses
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bc = load i32, ptr %i.ai, align 8, !tbaa !85
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.ai, align 8, !tbaa !85
  %i.be = icmp eq i64 %i.ba, -1
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bf = load i32, ptr %i.aj, align 4, !tbaa !86
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.aj, align 4, !tbaa !86
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %.03240, i64 8 ; 2 uses
  %.not33 = icmp eq ptr %i.bh, %i.ah
  br i1 %.not33, label %._crit_edge42, label %bb.j
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat12local_search13init_goodvarsEv(ptr noundef nonnull align 8 dereferenceable(232) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN6vectorIjLb0EjE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4
  store i32 0, ptr %i.c, align 4, !tbaa !16
  br label %_ZN6vectorIjLb0EjE5resetEv.exit

_ZN6vectorIjLb0EjE5resetEv.exit:                  ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %_ZN6vectorIjLb0EjE5resetEv.exit
  %i.e = phi ptr [ %i.ae, %bb.j ], [ %i.b, %_ZN6vectorIjLb0EjE5resetEv.exit ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %_ZN6vectorIjLb0EjE5resetEv.exit ] ; 4 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !51   ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZNK3sat12local_search8num_varsEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = add i32 %i.i, -1
  %i.k = zext i32 %i.j to i64
  br label %_ZNK3sat12local_search8num_varsEv.exit

_ZNK3sat12local_search8num_varsEv.exit:           ; preds = %bb.c, %bb.d
  %.0.i.i = phi i64 [ %i.k, %bb.d ], [ 4294967295, %bb.c ]
  %i.l = icmp samesign ult i64 %indvars.iv, %.0.i.i
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK3sat12local_search8num_varsEv.exit
  ret void

bb.f:                                             ; preds = %_ZNK3sat12local_search8num_varsEv.exit
  %i.m = getelementptr inbounds nuw [120 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !86
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 17
  store i8 1, ptr %i.q, align 1, !tbaa !62
  %i.r = icmp eq ptr %i.e, null
  br i1 %i.r, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !16   ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !16
  %i.w = icmp eq i32 %i.t, %i.v
  br i1 %i.w, label %bb.i, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !12 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !16
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ %.pre.i, %bb.i ], [ %i.e, %bb.h ] ; 3 uses
  %i.y = phi i32 [ %.pre2.i, %bb.i ], [ %i.t, %bb.h ] ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -4
  %i.aa = zext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.aa
  %i.ac = trunc nuw i64 %indvars.iv to i32
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !16
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.z, align 4, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %i.ae = phi ptr [ %i.e, %bb.f ], [ %i.x, %_ZN6vectorIjLb0EjE9push_backERKj.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.c, !llvm.loop !88
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat12local_search6reinitEv(ptr noundef nonnull align 8 dereferenceable(232) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !89 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load double, ptr %i.c, align 8, !tbaa !90
  %i.e = fcmp ogt double %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !91 ; 4 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = load double, ptr %i.h, align 8, !tbaa !92
  %i.j = fmul double %i.g, -2.000000e+00
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double %i.i, double %i.g)
  store double %i.k, ptr %i.f, align 8, !tbaa !91
  %i.l = fmul double %i.b, 1.000000e+03
  store double %i.l, ptr %i.a, align 8, !tbaa !89
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = fsub double 1.000000e+04, %i.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.o = load double, ptr %i.n, align 8, !tbaa !92
  %i.p = tail call double @llvm.fmuladd.f64(double %i.m, double %i.o, double %i.g)
  store double %i.p, ptr %i.f, align 8, !tbaa !91
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67   ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %._crit_edge, label %_ZN6vectorIN3sat12local_search10constraintELb1EjE3endEv.exit

_ZN6vectorIN3sat12local_search10constraintELb1EjE3endEv.exit: ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !16   ; 2 uses
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 5                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.w
  %.not37 = icmp eq i32 %i.u, 0
  br i1 %.not37, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6vectorIN3sat12local_search10constraintELb1EjE3endEv.exit
  %i.y = add nsw i64 %i.w, -32                    ; 2 uses
  %i.z = lshr exact i64 %i.y, 5
  %i.aa = add nuw nsw i64 %i.z, 1
  %xtraiter = and i64 %i.aa, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.038.prol = phi ptr [ %i.af, %.lr.ph.prol ], [ %i.r, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.038.prol, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !93
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %.038.prol, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !79
  %i.af = getelementptr inbounds nuw i8, ptr %.038.prol, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !94

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.038.unr = phi ptr [ %i.r, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %i.ag = icmp ult i64 %i.y, 224
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d, %_ZN6vectorIN3sat12local_search10constraintELb1EjE3endEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 93 ; 3 uses
  store i8 0, ptr %i.ah, align 1, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !12 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %_ZN6vectorIjLb0EjE5resetEv.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4
  store i32 0, ptr %i.ak, align 4, !tbaa !16
  br label %_ZN6vectorIjLb0EjE5resetEv.exit

_ZN6vectorIjLb0EjE5resetEv.exit:                  ; preds = %._crit_edge, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !51 ; 13 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN6vectorIjLb0EjE5resetEv.exit._ZN6vectorIN3sat12local_search8var_infoELb1EjE4backEv.exit29_crit_edge, label %_ZN6vectorIN3sat12local_search8var_infoELb1EjE3endEv.exit.i

_ZN6vectorIjLb0EjE5resetEv.exit._ZN6vectorIN3sat12local_search8var_infoELb1EjE4backEv.exit29_crit_edge: ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit
  %.pre = load i32, ptr inttoptr (i64 -4 to ptr), align 4, !tbaa !16 ; 2 uses
  %.pre52 = add i32 %.pre, -1
  %.pre53 = zext i32 %.pre52 to i64
  br label %_ZN6vectorIN3sat12local_search8var_infoELb1EjE4backEv.exit29

_ZN6vectorIN3sat12local_search8var_infoELb1EjE3endEv.exit.i: ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !16 ; 2 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = mul nuw nsw i64 %i.aq, 120              ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ar ; 2 uses
  %.not11.i = icmp eq i32 %i.ap, 0
  br i1 %.not11.i, label %_ZN3sat12local_search17init_cur_solutionEv.exit.thread35, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6vectorIN3sat12local_search8var_infoELb1EjE3endEv.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.av = load i8, ptr %i.at, align 4, !range !10
  %.fr44 = freeze i8 %i.av
  %i.aw = trunc i8 %.fr44 to i1
  %.promoted.i = load i32, ptr %i.au, align 8     ; 4 uses
  br i1 %i.aw, label %.lr.ph.i.split.us, label %.lr.ph.i.split.preheader

.lr.ph.i.split.preheader:                         ; preds = %.lr.ph.i
  %i.ax = add nsw i64 %i.ar, -120                 ; 2 uses
  %i.ay = udiv i64 %i.ax, 120
  %i.az = and i64 %i.ay, 1
  %lcmp.mod81.not.not = icmp eq i64 %i.az, 0
  br i1 %lcmp.mod81.not.not, label %.lr.ph.i.split.prol, label %.lr.ph.i.split.prol.loopexit

.lr.ph.i.split.prol:                              ; preds = %.lr.ph.i.split.preheader
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !52, !range !10, !noundef !11
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %.lr.ph.i.split.prol.loopexit.unr-lcssa, label %.sink.split.i.prol

.sink.split.i.prol:                               ; preds = %.lr.ph.i.split.prol
  %i.bd = mul i32 %.promoted.i, 214013
  %i.be = add i32 %i.bd, 2531011                  ; 3 uses
  store i32 %i.be, ptr %i.au, align 8, !tbaa !66
  %i.bf = lshr i32 %i.be, 16
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = and i8 %i.bg, 1
  %i.bi = xor i8 %i.bh, 1
  store i8 %i.bi, ptr %i.am, align 8, !tbaa !56
  br label %.lr.ph.i.split.prol.loopexit.unr-lcssa

.lr.ph.i.split.prol.loopexit.unr-lcssa:           ; preds = %.sink.split.i.prol, %.lr.ph.i.split.prol
  %i.bj = phi i32 [ %.promoted.i, %.lr.ph.i.split.prol ], [ %i.be, %.sink.split.i.prol ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 120
  br label %.lr.ph.i.split.prol.loopexit

.lr.ph.i.split.prol.loopexit:                     ; preds = %.lr.ph.i.split.prol.loopexit.unr-lcssa, %.lr.ph.i.split.preheader
  %.unr = phi i32 [ %.promoted.i, %.lr.ph.i.split.preheader ], [ %i.bj, %.lr.ph.i.split.prol.loopexit.unr-lcssa ]
  %.012.i.unr = phi ptr [ %i.am, %.lr.ph.i.split.preheader ], [ %i.bk, %.lr.ph.i.split.prol.loopexit.unr-lcssa ]
  %i.bl = icmp ult i64 %i.ax, 120
  br i1 %i.bl, label %_ZN3sat12local_search17init_cur_solutionEv.exit.thread35, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %bb.f
  %i.bm = phi i32 [ %i.bz, %bb.f ], [ %.promoted.i, %.lr.ph.i ] ; 2 uses
  %.012.i.us = phi ptr [ %i.ca, %bb.f ], [ %i.am, %.lr.ph.i ] ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.us, i64 8
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !52, !range !10, !noundef !11
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.f, label %.sink.split.i.us

.sink.split.i.us:                                 ; preds = %.lr.ph.i.split.us
  %i.bq = mul i32 %i.bm, 214013
  %i.br = add i32 %i.bq, 2531011                  ; 3 uses
  store i32 %i.br, ptr %i.au, align 8, !tbaa !66
  %i.bs = lshr i32 %i.br, 16
  %i.bt = trunc nuw i32 %i.bs to i16
  %.lhs.trunc.i.us = and i16 %i.bt, 32767
  %i.bu = urem i16 %.lhs.trunc.i.us, 100
  %.zext.i.us = zext nneg i16 %i.bu to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.us, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !57
  %i.bx = icmp ugt i32 %i.bw, %.zext.i.us
  %i.by = zext i1 %i.bx to i8
  store i8 %i.by, ptr %.012.i.us, align 8, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.i.us, %.lr.ph.i.split.us
  %i.bz = phi i32 [ %i.bm, %.lr.ph.i.split.us ], [ %i.br, %.sink.split.i.us ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.us, i64 120 ; 2 uses
  %.not.i22.us = icmp eq ptr %i.ca, %i.as
  br i1 %.not.i22.us, label %_ZN3sat12local_search17init_cur_solutionEv.exit.thread35, label %.lr.ph.i.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i.split.prol.loopexit, %bb.g
  %i.cb = phi i32 [ %i.cw, %bb.g ], [ %.unr, %.lr.ph.i.split.prol.loopexit ] ; 2 uses
  %.012.i = phi ptr [ %i.cx, %bb.g ], [ %.012.i.unr, %.lr.ph.i.split.prol.loopexit ] ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !52, !range !10, !noundef !11
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %.lr.ph.i.split.1, label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.i.split
  %i.cf = mul i32 %i.cb, 214013
  %i.cg = add i32 %i.cf, 2531011                  ; 3 uses
  store i32 %i.cg, ptr %i.au, align 8, !tbaa !66
  %i.ch = lshr i32 %i.cg, 16
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = and i8 %i.ci, 1
  %i.ck = xor i8 %i.cj, 1
  store i8 %i.ck, ptr %.012.i, align 8, !tbaa !56
  br label %.lr.ph.i.split.1

.lr.ph.i.split.1:                                 ; preds = %.sink.split.i, %.lr.ph.i.split
  %i.cl = phi i32 [ %i.cb, %.lr.ph.i.split ], [ %i.cg, %.sink.split.i ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i, i64 128
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !52, !range !10, !noundef !11
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.g, label %.sink.split.i.1

.sink.split.i.1:                                  ; preds = %.lr.ph.i.split.1
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i, i64 120
  %i.cq = mul i32 %i.cl, 214013
  %i.cr = add i32 %i.cq, 2531011                  ; 3 uses
  store i32 %i.cr, ptr %i.au, align 8, !tbaa !66
  %i.cs = lshr i32 %i.cr, 16
  %i.ct = trunc i32 %i.cs to i8
  %i.cu = and i8 %i.ct, 1
  %i.cv = xor i8 %i.cu, 1
  store i8 %i.cv, ptr %i.cp, align 8, !tbaa !56
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.1, %.lr.ph.i.split.1
  %i.cw = phi i32 [ %i.cl, %.lr.ph.i.split.1 ], [ %i.cr, %.sink.split.i.1 ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i, i64 240 ; 2 uses
  %.not.i22.1 = icmp eq ptr %i.cx, %i.as
  br i1 %.not.i22.1, label %_ZN3sat12local_search17init_cur_solutionEv.exit.thread35, label %.lr.ph.i.split

_ZN3sat12local_search17init_cur_solutionEv.exit.thread35: ; preds = %.lr.ph.i.split.prol.loopexit, %bb.g, %bb.f, %_ZN6vectorIN3sat12local_search8var_infoELb1EjE3endEv.exit.i
  %i.cy = load i32, ptr %i.ao, align 4, !tbaa !16 ; 2 uses
  %i.cz = add i32 %i.cy, -1
  %i.da = zext i32 %i.cz to i64                   ; 2 uses
  br label %_ZN6vectorIN3sat12local_search8var_infoELb1EjE4backEv.exit29

_ZN6vectorIN3sat12local_search8var_infoELb1EjE4backEv.exit29: ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit._ZN6vectorIN3sat12local_search8var_infoELb1EjE4backEv.exit29_crit_edge, %_ZN3sat12local_search17init_cur_solutionEv.exit.thread35
  %.pre-phi54 = phi i64 [ %.pre53, %_ZN6vectorIjLb0EjE5resetEv.exit._ZN6vectorIN3sat12local_search8var_infoELb1EjE4backEv.exit29_crit_edge ], [ %i.da, %_ZN3sat12local_search17init_cur_solutionEv.exit.thread35 ] ; 3 uses
  %i.db = phi i32 [ %.pre, %_ZN6vectorIjLb0EjE5resetEv.exit._ZN6vectorIN3sat12local_search8var_infoELb1EjE4backEv.exit29_crit_edge ], [ %i.cy, %_ZN3sat12local_search17init_cur_solutionEv.exit.thread35 ]
  %.0.i.i23 = phi i64 [ 4294967295, %_ZN6vectorIjLb0EjE5resetEv.exit._ZN6vectorIN3sat12local_search8var_infoELb1EjE4backEv.exit29_crit_edge ], [ %i.da, %_ZN3sat12local_search17init_cur_solutionEv.exit.thread35 ]
  %i.dc = getelementptr inbounds nuw [120 x i8], ptr %i.am, i64 %.0.i.i23
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 20
  store i32 -2147483648, ptr %i.dd, align 4, !tbaa !86
  %i.de = getelementptr inbounds nuw [120 x i8], ptr %i.am, i64 %.pre-phi54 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store i8 0, ptr %i.df, align 8, !tbaa !61
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store i32 -2147483648, ptr %i.dg, align 8, !tbaa !85
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !72
  %i.dj = add i32 %i.di, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 28
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !95
  %.not45 = icmp eq i32 %i.db, 1
  br i1 %.not45, label %_ZNK3sat12local_search8num_varsEv.exit._crit_edge, label %_ZNK3sat12local_search8num_varsEv.exit.preheader

_ZNK3sat12local_search8num_varsEv.exit.preheader: ; preds = %_ZN6vectorIN3sat12local_search8var_infoELb1EjE4backEv.exit29
  %umax = tail call i64 @llvm.umax.i64(i64 %.pre-phi54, i64 1) ; 3 uses
  %xtraiter83 = and i64 %umax, 1
  %i.dl = icmp samesign ult i64 %.pre-phi54, 2
  br i1 %i.dl, label %_ZNK3sat12local_search8num_varsEv.exit.epil.preheader, label %_ZNK3sat12local_search8num_varsEv.exit.preheader.new

_ZNK3sat12local_search8num_varsEv.exit.preheader.new: ; preds = %_ZNK3sat12local_search8num_varsEv.exit.preheader
  %unroll_iter = and i64 %umax, 4294967294
  br label %_ZNK3sat12local_search8num_varsEv.exit

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.038 = phi ptr [ %i.es, %.lr.ph ], [ %.038.unr, %.lr.ph.prol.loopexit ] ; 17 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.038, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !93
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %.038, i64 8
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !79
  %i.dq = getelementptr inbounds nuw i8, ptr %.038, i64 36
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !93
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %.038, i64 40
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !79
  %i.du = getelementptr inbounds nuw i8, ptr %.038, i64 68
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !93
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %.038, i64 72
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !79
  %i.dy = getelementptr inbounds nuw i8, ptr %.038, i64 100
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !93
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %.038, i64 104
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !79
  %i.ec = getelementptr inbounds nuw i8, ptr %.038, i64 132
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !93
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %.038, i64 136
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !79
  %i.eg = getelementptr inbounds nuw i8, ptr %.038, i64 164
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !93
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %.038, i64 168
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !79
  %i.ek = getelementptr inbounds nuw i8, ptr %.038, i64 196
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !93
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %.038, i64 200
  store i64 %i.em, ptr %i.en, align 8, !tbaa !79
  %i.eo = getelementptr inbounds nuw i8, ptr %.038, i64 228
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !93
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %.038, i64 232
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !79
  %i.es = getelementptr inbounds nuw i8, ptr %.038, i64 256 ; 2 uses
  %.not.7 = icmp eq ptr %i.es, %i.x
  br i1 %.not.7, label %._crit_edge, label %.lr.ph

_ZNK3sat12local_search8num_varsEv.exit._crit_edge.loopexit.unr-lcssa: ; preds = %_ZNK3sat12local_search8num_varsEv.exit
  %lcmp.mod84.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod84.not, label %_ZNK3sat12local_search8num_varsEv.exit._crit_edge, label %_ZNK3sat12local_search8num_varsEv.exit.epil.preheader

_ZNK3sat12local_search8num_varsEv.exit.epil.preheader: ; preds = %_ZNK3sat12local_search8num_varsEv.exit._crit_edge.loopexit.unr-lcssa, %_ZNK3sat12local_search8num_varsEv.exit.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %_ZNK3sat12local_search8num_varsEv.exit.preheader ], [ %indvars.iv.next.1, %_ZNK3sat12local_search8num_varsEv.exit._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod85 = trunc i64 %umax to i1
  tail call void @llvm.assume(i1 %lcmp.mod85)
  %i.et = getelementptr inbounds nuw [120 x i8], ptr %i.am, i64 %indvars.iv.epil.init ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 28
  store i32 0, ptr %i.eu, align 4, !tbaa !95
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i8 1, ptr %i.ev, align 8, !tbaa !61
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 17
  store i8 0, ptr %i.ew, align 1, !tbaa !62
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 20
  store i32 0, ptr %i.ex, align 4, !tbaa !86
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store i32 0, ptr %i.ey, align 8, !tbaa !85
  br label %_ZNK3sat12local_search8num_varsEv.exit._crit_edge

_ZNK3sat12local_search8num_varsEv.exit._crit_edge: ; preds = %_ZNK3sat12local_search8num_varsEv.exit.epil.preheader, %_ZNK3sat12local_search8num_varsEv.exit._crit_edge.loopexit.unr-lcssa, %_ZN6vectorIN3sat12local_search8var_infoELb1EjE4backEv.exit29
  tail call void @_ZN3sat12local_search10init_slackEv(ptr noundef nonnull align 8 dereferenceable(232) %0)
  %1 = load ptr, ptr %i.al, align 8, !tbaa !51    ; 5 uses
  %2 = icmp eq ptr %1, null
  %3 = getelementptr inbounds i8, ptr %1, i64 -4
  %4 = load ptr, ptr %i.q, align 8                ; 2 uses
  br label %5

5:                                                ; preds = %._crit_edge42.i, %_ZNK3sat12local_search8num_varsEv.exit._crit_edge
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge42.i ], [ 0, %_ZNK3sat12local_search8num_varsEv.exit._crit_edge ] ; 3 uses
  br i1 %2, label %_ZNK3sat12local_search8num_varsEv.exit.i, label %6

6:                                                ; preds = %5
  %7 = load i32, ptr %3, align 4, !tbaa !16
  %8 = add i32 %7, -1
  %9 = zext i32 %8 to i64
  br label %_ZNK3sat12local_search8num_varsEv.exit.i

_ZNK3sat12local_search8num_varsEv.exit.i:         ; preds = %6, %5
  %.0.i.i.i = phi i64 [ %9, %6 ], [ 4294967295, %5 ]
  %10 = icmp samesign ult i64 %indvars.iv.i, %.0.i.i.i
  br i1 %10, label %_ZNK3sat12local_search8num_varsEv.exit._crit_edge.a, label %_ZN3sat12local_search11init_scoresEv.exit

_ZNK3sat12local_search8num_varsEv.exit._crit_edge.a: ; preds = %_ZNK3sat12local_search8num_varsEv.exit.i
  %11 = getelementptr inbounds nuw [120 x i8], ptr %1, i64 %indvars.iv.i ; 6 uses
  %12 = load i8, ptr %11, align 8, !tbaa !56, !range !10, !noundef !11 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %13 = zext nneg i8 %12 to i64
  %14 = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %13
  %15 = xor i8 %12, 1
  %16 = zext nneg i8 %15 to i64
  %17 = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %16
  %i.fa = load ptr, ptr %17, align 8, !tbaa !73   ; 4 uses
  %.not.i.i.a = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.a, label %._crit_edge.i, label %_ZN6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit.i

_ZN6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit.i: ; preds = %_ZNK3sat12local_search8num_varsEv.exit._crit_edge.a
  %18 = getelementptr inbounds i8, ptr %i.fa, i64 -4
  %19 = load i32, ptr %18, align 4, !tbaa !16     ; 2 uses
  %20 = zext i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 3
  %22 = getelementptr inbounds nuw i8, ptr %i.fa, i64 %21
  %.not37.i = icmp eq i32 %19, 0
  br i1 %.not37.i, label %._crit_edge.i, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %_ZN6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit.i
  %23 = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %24 = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  br label %34

._crit_edge.i:                                    ; preds = %48, %_ZN6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit.i, %_ZNK3sat12local_search8num_varsEv.exit._crit_edge.a
  %25 = load ptr, ptr %14, align 8, !tbaa !73     ; 4 uses
  %26 = icmp eq ptr %25, null
  br i1 %26, label %._crit_edge42.i, label %_ZN6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit36.i

_ZN6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit36.i: ; preds = %._crit_edge.i
  %27 = getelementptr inbounds i8, ptr %25, i64 -4
  %28 = load i32, ptr %27, align 4, !tbaa !16     ; 2 uses
  %29 = zext i32 %28 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr inbounds nuw i8, ptr %25, i64 %30
  %.not3339.i = icmp eq i32 %28, 0
  br i1 %.not3339.i, label %._crit_edge42.i, label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %_ZN6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit36.i
  %32 = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %33 = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  br label %50

34:                                               ; preds = %48, %.lr.ph.i31
  %.03138.i = phi ptr [ %i.fa, %.lr.ph.i31 ], [ %49, %48 ] ; 2 uses
  %35 = load i32, ptr %.03138.i, align 4, !tbaa !76
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 8
  %39 = load i64, ptr %38, align 8, !tbaa !79     ; 2 uses
  %40 = icmp slt i64 %39, 1
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load i32, ptr %23, align 8, !tbaa !85
  %43 = add nsw i32 %42, -1
  store i32 %43, ptr %23, align 8, !tbaa !85
  %44 = icmp eq i64 %39, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, ptr %24, align 4, !tbaa !86
  %47 = add nsw i32 %46, -1
  store i32 %47, ptr %24, align 4, !tbaa !86
  br label %48

48:                                               ; preds = %45, %41, %34
  %49 = getelementptr inbounds nuw i8, ptr %.03138.i, i64 8 ; 2 uses
  %.not.i32 = icmp eq ptr %49, %22
  br i1 %.not.i32, label %._crit_edge.i, label %34

._crit_edge42.i:                                  ; preds = %64, %_ZN6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit36.i, %._crit_edge.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %5, !llvm.loop !87

50:                                               ; preds = %64, %.lr.ph41.i
  %.03240.i = phi ptr [ %25, %.lr.ph41.i ], [ %65, %64 ] ; 2 uses
  %51 = load i32, ptr %.03240.i, align 4, !tbaa !76
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %52
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 8
  %55 = load i64, ptr %54, align 8, !tbaa !79     ; 2 uses
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load i32, ptr %32, align 8, !tbaa !85
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %32, align 8, !tbaa !85
  %60 = icmp eq i64 %55, -1
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, ptr %33, align 4, !tbaa !86
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %33, align 4, !tbaa !86
  br label %64

64:                                               ; preds = %61, %57, %50
  %65 = getelementptr inbounds nuw i8, ptr %.03240.i, i64 8 ; 2 uses
  %.not33.i = icmp eq ptr %65, %31
  br i1 %.not33.i, label %._crit_edge42.i, label %50

_ZN3sat12local_search11init_scoresEv.exit:        ; preds = %_ZNK3sat12local_search8num_varsEv.exit.i
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %67 = load ptr, ptr %66, align 8, !tbaa !12     ; 3 uses
  %.not.i.i = icmp eq ptr %67, null
  br i1 %.not.i.i, label %_ZN6vectorIjLb0EjE5resetEv.exit.i.preheader, label %bb.h

bb.h:                                             ; preds = %_ZN3sat12local_search11init_scoresEv.exit
  %i.fb = getelementptr inbounds i8, ptr %67, i64 -4
  store i32 0, ptr %i.fb, align 4, !tbaa !16
  br label %_ZN6vectorIjLb0EjE5resetEv.exit.i.preheader

_ZN6vectorIjLb0EjE5resetEv.exit.i.preheader:      ; preds = %bb.h, %_ZN3sat12local_search11init_scoresEv.exit
  br label %_ZN6vectorIjLb0EjE5resetEv.exit.i

_ZN6vectorIjLb0EjE5resetEv.exit.i:                ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit.i.preheader, %bb.n
  %.pre59.pre62 = phi ptr [ %.pre59.pre63, %bb.n ], [ %1, %_ZN6vectorIjLb0EjE5resetEv.exit.i.preheader ] ; 2 uses
  %i.fc = phi ptr [ %.pre59, %bb.n ], [ %1, %_ZN6vectorIjLb0EjE5resetEv.exit.i.preheader ] ; 5 uses
  %68 = phi ptr [ %i.gb, %bb.n ], [ %67, %_ZN6vectorIjLb0EjE5resetEv.exit.i.preheader ] ; 5 uses
  %indvars.iv.i33 = phi i64 [ %indvars.iv.next.i.a, %bb.n ], [ 0, %_ZN6vectorIjLb0EjE5resetEv.exit.i.preheader ] ; 4 uses
  %i.fd = icmp eq ptr %i.fc, null                 ; 2 uses
  br i1 %i.fd, label %_ZNK3sat12local_search8num_varsEv.exit.i.a, label %bb.i

bb.i:                                             ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit.i
  %i.fe = getelementptr inbounds i8, ptr %i.fc, i64 -4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !16
  %i.fg = add i32 %i.ff, -1
  %i.fh = zext i32 %i.fg to i64
  br label %_ZNK3sat12local_search8num_varsEv.exit.i.a

_ZNK3sat12local_search8num_varsEv.exit.i.a:       ; preds = %bb.i, %_ZN6vectorIjLb0EjE5resetEv.exit.i
  %.0.i.i.i.a = phi i64 [ %i.fh, %bb.i ], [ 4294967295, %_ZN6vectorIjLb0EjE5resetEv.exit.i ]
  %i.fi = icmp samesign ult i64 %indvars.iv.i33, %.0.i.i.i.a
  br i1 %i.fi, label %bb.j, label %_ZN3sat12local_search13init_goodvarsEv.exit

bb.j:                                             ; preds = %_ZNK3sat12local_search8num_varsEv.exit.i.a
  %i.fj = getelementptr inbounds nuw [120 x i8], ptr %i.fc, i64 %indvars.iv.i33 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 20
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !86
  %i.fm = icmp sgt i32 %i.fl, 0
  br i1 %i.fm, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 17
  store i8 1, ptr %i.fn, align 1, !tbaa !62
  %i.fo = icmp eq ptr %68, null
  br i1 %i.fo, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fp = getelementptr inbounds i8, ptr %68, i64 -4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !16 ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %68, i64 -8
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !16
  %i.ft = icmp eq i32 %i.fq, %i.fs
  br i1 %i.ft, label %bb.m, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %66)
  %.pre.i.i = load ptr, ptr %66, align 8, !tbaa !12 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !16
  %.pre59.pre.pre = load ptr, ptr %i.al, align 8, !tbaa !51
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

_ZN6vectorIjLb0EjE9push_backERKj.exit.i:          ; preds = %bb.m, %bb.l
  %.pre59.pre = phi ptr [ %.pre59.pre.pre, %bb.m ], [ %.pre59.pre62, %bb.l ] ; 2 uses
  %i.fu = phi ptr [ %.pre.i.i, %bb.m ], [ %68, %bb.l ] ; 3 uses
  %i.fv = phi i32 [ %.pre2.i.i, %bb.m ], [ %i.fq, %bb.l ] ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %i.fu, i64 -4
  %i.fx = zext i32 %i.fv to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.fx
  %i.fz = trunc nuw i64 %indvars.iv.i33 to i32
  store i32 %i.fz, ptr %i.fy, align 4, !tbaa !16
  %i.ga = add i32 %i.fv, 1
  store i32 %i.ga, ptr %i.fw, align 4, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i, %bb.j
  %.pre59.pre63 = phi ptr [ %.pre59.pre62, %bb.j ], [ %.pre59.pre, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i ]
  %.pre59 = phi ptr [ %i.fc, %bb.j ], [ %.pre59.pre, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i ]
  %i.gb = phi ptr [ %68, %bb.j ], [ %i.fu, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i ]
  %indvars.iv.next.i.a = add nuw nsw i64 %indvars.iv.i33, 1
  br label %_ZN6vectorIjLb0EjE5resetEv.exit.i, !llvm.loop !88

_ZN3sat12local_search13init_goodvarsEv.exit:      ; preds = %_ZNK3sat12local_search8num_varsEv.exit.i.a
  %i.gc = load ptr, ptr %i.ai, align 8, !tbaa !12 ; 2 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN3sat12local_search13init_goodvarsEv.exit
  %i.ge = getelementptr inbounds i8, ptr %i.gc, i64 -4
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !16
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %bb.o, %_ZN3sat12local_search13init_goodvarsEv.exit
  %.0.i.i31 = phi i32 [ %i.gf, %bb.o ], [ 0, %_ZN3sat12local_search13init_goodvarsEv.exit ]
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %.0.i.i31, ptr %i.gg, align 4, !tbaa !96
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br i1 %i.fd, label %_ZN3sat12local_search14set_best_unsatEv.exit, label %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit.i

_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit.i: ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i
  %i.gi = getelementptr inbounds i8, ptr %i.fc, i64 -4
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !16 ; 6 uses
  %i.gk = load ptr, ptr %i.gh, align 8, !tbaa !97 ; 4 uses
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i, label %_ZNK6vectorIbLb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i:              ; preds = %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit.i
  %.not.i.i34 = icmp eq i32 %i.gj, 0
  br i1 %.not.i.i34, label %_ZN6vectorIbLb0EjE7reserveEj.exit.i, label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i.preheader

_ZNK6vectorIbLb0EjE4sizeEv.exit.thread.i.i:       ; preds = %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit.i
  %i.gm = getelementptr inbounds i8, ptr %i.gk, i64 -4
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !16 ; 2 uses
  %i.go = icmp ugt i32 %i.gj, %i.gn
  br i1 %i.go, label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i.preheader, label %_ZN6vectorIbLb0EjE7reserveEj.exit.i

_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i.preheader:  ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i, %_ZNK6vectorIbLb0EjE4sizeEv.exit.thread.i.i
  %.ph = phi ptr [ %i.gk, %_ZNK6vectorIbLb0EjE4sizeEv.exit.thread.i.i ], [ null, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i ]
  %.0.i16.i.i.i.ph = phi i32 [ %i.gn, %_ZNK6vectorIbLb0EjE4sizeEv.exit.thread.i.i ], [ 0, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i ] ; 2 uses
  br label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i:            ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i.preheader, %_ZNK6vectorIbLb0EjE8capacityEv.exit.thread.i.i.i
  %i.gp = phi ptr [ %.pr.pre.i.i.i, %_ZNK6vectorIbLb0EjE8capacityEv.exit.thread.i.i.i ], [ %.ph, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i.preheader ] ; 6 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %_ZNK6vectorIbLb0EjE8capacityEv.exit.thread.i.i.i, label %_ZNK6vectorIbLb0EjE8capacityEv.exit.i.i.i

_ZNK6vectorIbLb0EjE8capacityEv.exit.i.i.i:        ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i
  %i.gr = getelementptr inbounds i8, ptr %i.gp, i64 -8
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !16
  %i.gt = icmp ugt i32 %i.gj, %i.gs
  br i1 %i.gt, label %_ZNK6vectorIbLb0EjE8capacityEv.exit.thread.i.i.i, label %bb.p

_ZNK6vectorIbLb0EjE8capacityEv.exit.thread.i.i.i: ; preds = %_ZNK6vectorIbLb0EjE8capacityEv.exit.i.i.i, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i
  tail call void @_ZN6vectorIbLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gh)
  %.pr.pre.i.i.i = load ptr, ptr %i.gh, align 8, !tbaa !97
  br label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i, !llvm.loop !98

bb.p:                                             ; preds = %_ZNK6vectorIbLb0EjE8capacityEv.exit.i.i.i
  %i.gu = getelementptr inbounds i8, ptr %i.gp, i64 -4
  store i32 %i.gj, ptr %i.gu, align 4, !tbaa !16
  %.not1218.i.i.i = icmp eq i32 %.0.i16.i.i.i.ph, %i.gj
  br i1 %.not1218.i.i.i, label %_ZN6vectorIbLb0EjE7reserveEj.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.p
  %i.gv = zext i32 %i.gj to i64
  %i.gw = zext i32 %.0.i16.i.i.i.ph to i64        ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gp, i64 %i.gw
  %i.gy = sub nsw i64 %i.gv, %i.gw
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.gx, i8 0, i64 %i.gy, i1 false), !tbaa !8
  br label %_ZN6vectorIbLb0EjE7reserveEj.exit.i

_ZN6vectorIbLb0EjE7reserveEj.exit.i:              ; preds = %.lr.ph.preheader.i.i.i, %bb.p, %_ZNK6vectorIbLb0EjE4sizeEv.exit.thread.i.i, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i
  %i.gz = phi ptr [ %i.gp, %.lr.ph.preheader.i.i.i ], [ %i.gp, %bb.p ], [ %i.gk, %_ZNK6vectorIbLb0EjE4sizeEv.exit.thread.i.i ], [ null, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i ] ; 5 uses
  %.pr.i = load ptr, ptr %i.al, align 8, !tbaa !51 ; 7 uses
  %i.ha = icmp eq ptr %.pr.i, null
  br i1 %i.ha, label %_ZN3sat12local_search14set_best_unsatEv.exit, label %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit5.i

_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit5.i: ; preds = %_ZN6vectorIbLb0EjE7reserveEj.exit.i
  %i.hb = getelementptr inbounds i8, ptr %.pr.i, i64 -4
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !16 ; 3 uses
  %.not14.i = icmp eq i32 %i.hc, 0
  br i1 %.not14.i, label %_ZN3sat12local_search14set_best_unsatEv.exit, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit5.i
  %i.hd = zext i32 %i.hc to i64                   ; 3 uses
  %xtraiter86 = and i64 %i.hd, 3                  ; 2 uses
  %lcmp.mod87.not = icmp eq i64 %xtraiter86, 0
  br i1 %lcmp.mod87.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i32, %.prol.preheader
  %indvars.iv.i33.prol = phi i64 [ %i.he, %.prol.preheader ], [ %i.hd, %.lr.ph.i32 ]
  %prol.iter88 = phi i64 [ %prol.iter88.next, %.prol.preheader ], [ 0, %.lr.ph.i32 ]
  %i.he = add nsw i64 %indvars.iv.i33.prol, -1    ; 4 uses
  %i.hf = getelementptr inbounds nuw [120 x i8], ptr %.pr.i, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 8, !tbaa !56, !range !10, !noundef !11
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.he
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !8
  %prol.iter88.next = add i64 %prol.iter88, 1     ; 2 uses
  %prol.iter88.cmp.not = icmp eq i64 %prol.iter88.next, %xtraiter86
  br i1 %prol.iter88.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !99

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i32
  %indvars.iv.i33.unr = phi i64 [ %i.hd, %.lr.ph.i32 ], [ %i.he, %.prol.preheader ]
  %i.hi = icmp ult i32 %i.hc, 4
  br i1 %i.hi, label %_ZN3sat12local_search14set_best_unsatEv.exit, label %.lr.ph.i32.new

.lr.ph.i32.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i32.new
  %indvars.iv.i33.a = phi i64 [ %i.hv, %.lr.ph.i32.new ], [ %indvars.iv.i33.unr, %.prol.loopexit ] ; 4 uses
  %i.hj = add nsw i64 %indvars.iv.i33.a, -1       ; 2 uses
  %i.hk = getelementptr inbounds nuw [120 x i8], ptr %.pr.i, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 8, !tbaa !56, !range !10, !noundef !11
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.hj
  store i8 %i.hl, ptr %i.hm, align 1, !tbaa !8
  %i.hn = add nsw i64 %indvars.iv.i33.a, -2       ; 2 uses
  %i.ho = getelementptr inbounds nuw [120 x i8], ptr %.pr.i, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 8, !tbaa !56, !range !10, !noundef !11
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.hn
  store i8 %i.hp, ptr %i.hq, align 1, !tbaa !8
  %i.hr = add nsw i64 %indvars.iv.i33.a, -3       ; 2 uses
  %i.hs = getelementptr inbounds nuw [120 x i8], ptr %.pr.i, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 8, !tbaa !56, !range !10, !noundef !11
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.hr
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !8
  %i.hv = add nsw i64 %indvars.iv.i33.a, -4       ; 4 uses
  %i.hw = getelementptr inbounds nuw [120 x i8], ptr %.pr.i, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 8, !tbaa !56, !range !10, !noundef !11
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.hv
  store i8 %i.hx, ptr %i.hy, align 1, !tbaa !8
  %.not.wide.i.3 = icmp eq i64 %i.hv, 0
  br i1 %.not.wide.i.3, label %_ZN3sat12local_search14set_best_unsatEv.exit, label %.lr.ph.i32.new, !llvm.loop !100

_ZN3sat12local_search14set_best_unsatEv.exit:     ; preds = %.prol.loopexit, %.lr.ph.i32.new, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %_ZN6vectorIbLb0EjE7reserveEj.exit.i, %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit5.i
  %i.hz = load i8, ptr %i.ah, align 1, !tbaa !20, !range !10, !noundef !11
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %._crit_edge43, label %.lr.ph42

.lr.ph42:                                         ; preds = %_ZN3sat12local_search14set_best_unsatEv.exit
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.q

_ZNK3sat12local_search8num_varsEv.exit:           ; preds = %_ZNK3sat12local_search8num_varsEv.exit, %_ZNK3sat12local_search8num_varsEv.exit.preheader.new
  %indvars.iv = phi i64 [ 0, %_ZNK3sat12local_search8num_varsEv.exit.preheader.new ], [ %indvars.iv.next.1, %_ZNK3sat12local_search8num_varsEv.exit ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK3sat12local_search8num_varsEv.exit.preheader.new ], [ %niter.next.1, %_ZNK3sat12local_search8num_varsEv.exit ]
  %i.ic = getelementptr inbounds nuw [120 x i8], ptr %i.am, i64 %indvars.iv ; 5 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 28
  store i32 0, ptr %i.id, align 4, !tbaa !95
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store i8 1, ptr %i.ie, align 8, !tbaa !61
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 17
  store i8 0, ptr %i.if, align 1, !tbaa !62
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 20
  store i32 0, ptr %i.ig, align 4, !tbaa !86
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  store i32 0, ptr %i.ih, align 8, !tbaa !85
  %i.ii = getelementptr inbounds nuw [120 x i8], ptr %i.am, i64 %indvars.iv ; 5 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 148
  store i32 0, ptr %i.ij, align 4, !tbaa !95
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 136
  store i8 1, ptr %i.ik, align 8, !tbaa !61
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 137
  store i8 0, ptr %i.il, align 1, !tbaa !62
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 140
  store i32 0, ptr %i.im, align 4, !tbaa !86
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 144
  store i32 0, ptr %i.in, align 8, !tbaa !85
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZNK3sat12local_search8num_varsEv.exit._crit_edge.loopexit.unr-lcssa, label %_ZNK3sat12local_search8num_varsEv.exit, !llvm.loop !101

bb.q:                                             ; preds = %.lr.ph42, %bb.r
  %indvars.iv49 = phi i64 [ 0, %.lr.ph42 ], [ %indvars.iv.next50, %bb.r ] ; 3 uses
  %i.io = load ptr, ptr %i.ib, align 8, !tbaa !12 ; 3 uses
  %i.ip = icmp eq ptr %i.io, null
  br i1 %i.ip, label %.critedge, label %_ZNK6vectorIjLb0EjE4sizeEv.exit

_ZNK6vectorIjLb0EjE4sizeEv.exit:                  ; preds = %bb.q
  %i.iq = getelementptr inbounds i8, ptr %i.io, i64 -4
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !16
  %i.is = zext i32 %i.ir to i64
  %i.it = icmp samesign ult i64 %indvars.iv49, %i.is
  br i1 %i.it, label %bb.r, label %.critedge

bb.r:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv49
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !16 ; 2 uses
  %i.iw = load ptr, ptr %i.al, align 8, !tbaa !51
  %i.ix = zext i32 %i.iv to i64
  %i.iy = getelementptr inbounds nuw [120 x i8], ptr %i.iw, i64 %i.ix
  %i.iz = load i8, ptr %i.iy, align 8, !tbaa !56, !range !10, !noundef !11
  %i.ja = xor i8 %i.iz, 1
  %i.jb = zext nneg i8 %i.ja to i32
  %i.jc = shl i32 %i.iv, 1
  %i.jd = or disjoint i32 %i.jc, %i.jb
  %i.je = tail call noundef zeroext i1 @_ZN3sat12local_search9propagateENS_7literalE(ptr noundef nonnull align 8 dereferenceable(232) %0, i32 %i.jd) ; 0 uses
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %i.jf = load i8, ptr %i.ah, align 1, !tbaa !20, !range !10, !noundef !11
  %i.jg = trunc nuw i8 %i.jf to i1
  br i1 %i.jg, label %._crit_edge43, label %bb.q, !llvm.loop !102

._crit_edge43:                                    ; preds = %bb.r, %_ZN3sat12local_search14set_best_unsatEv.exit
  %i.jh = tail call noundef i32 @_Z19get_verbosity_levelv() ; 0 uses
  %i.ji = tail call noundef zeroext i1 @_Z11is_threadedv()
  br i1 %i.ji, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge43
  tail call void @_Z12verbose_lockv()
  %i.jj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
  %i.jk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jj, ptr noundef nonnull @.str, i64 noundef 20) ; 0 uses
  tail call void @_Z14verbose_unlockv()
  br label %.critedge

bb.t:                                             ; preds = %._crit_edge43
  %i.jl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
  %i.jm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jl, ptr noundef nonnull @.str, i64 noundef 20) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %_ZNK6vectorIjLb0EjE4sizeEv.exit, %bb.t, %bb.s
  ret void
}

end_hunk_0
