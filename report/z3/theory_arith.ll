Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/theory_arith?download=true
inline.NumInlined: 21080
inline.NumDeleted: 3671
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 250
loop-unroll.NumUnrolled: 317
begin_hunk_0_@_ZN3smt12theory_arithINS_6mi_extEE3row8compressER6vectorINS2_6columnELb1EjE:bb.a
  %i.am = load i32, ptr %i.ak, align 8, !tbaa !13
  %i.an = load i32, ptr %i.al, align 8, !tbaa !13
  store i32 %i.an, ptr %i.ak, align 8, !tbaa !13
  store i32 %i.am, ptr %i.al, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !126
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !126
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !126
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !126
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 4 uses
  %i.at = load i8, ptr %i.as, align 4             ; 2 uses
  %i.au = and i8 %i.at, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 5 uses
  %i.aw = load i8, ptr %i.av, align 4
  %i.ax = and i8 %i.aw, 2
  %i.ay = and i8 %i.at, -3
  %i.az = or disjoint i8 %i.ax, %i.ay
  store i8 %i.az, ptr %i.as, align 4
  %i.ba = load i8, ptr %i.av, align 4             ; 2 uses
  %i.bb = and i8 %i.ba, -3
  %i.bc = or disjoint i8 %i.bb, %i.au
  store i8 %i.bc, ptr %i.av, align 4
  %i.bd = load i8, ptr %i.as, align 4             ; 2 uses
  %i.be = and i8 %i.bd, 1
  %i.bf = and i8 %i.ba, 1
  %i.bg = and i8 %i.bd, -2
  %i.bh = or disjoint i8 %i.bg, %i.bf
  store i8 %i.bh, ptr %i.as, align 4
  %i.bi = load i8, ptr %i.av, align 4
  %i.bj = and i8 %i.bi, -2
  %i.bk = or disjoint i8 %i.bj, %i.be
  store i8 %i.bk, ptr %i.av, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i32 %i.h, ptr %i.bl, align 8, !tbaa !101
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !103 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !103
  %i.bp = load ptr, ptr %1, align 8, !tbaa !127
  %i.bq = zext i32 %i.h to i64
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !111
  %i.bt = zext i32 %i.bn to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 %.02021, ptr %i.bv, align 4, !tbaa !103
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bw = add i32 %.02021, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.1 = phi i32 [ %.02021, %.lr.ph ], [ %i.bw, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !130

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr %0, align 8, !tbaa !116   ; 2 uses
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %_ZN6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE6shrinkEj.exit, label %_ZN6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE3endEv.exit.i

_ZN6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE3endEv.exit.i: ; preds = %_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE4sizeEv.exit, %._crit_edge
  %i.bx = phi ptr [ %.pre, %._crit_edge ], [ %i.a, %_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE4sizeEv.exit ] ; 4 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = load i32, ptr %.in, align 8, !tbaa !121 ; 3 uses
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 -4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !13 ; 2 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [40 x i8], ptr %i.bx, i64 %i.cb
  %.not78.i = icmp eq i32 %i.by, %i.ca
  br i1 %.not78.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE3endEv.exit.i
  %i.cd = zext i32 %i.by to i64
  %i.ce = getelementptr inbounds nuw [40 x i8], ptr %i.bx, i64 %i.cd
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN3smt12theory_arithINS_6mi_extEE9row_entryD2Ev.exit.i, %.lr.ph.preheader.i
  %.09.i = phi ptr [ %i.cj, %_ZN3smt12theory_arithINS_6mi_extEE9row_entryD2Ev.exit.i ], [ %i.ce, %.lr.ph.preheader.i ] ; 3 uses
  %i.cf = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cf, ptr noundef nonnull align 8 dereferenceable(40) %.09.i)
          to label %.noexc.i.i.i unwind label %bb.f

.noexc.i.i.i:                                     ; preds = %.lr.ph.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %i.cg)
          to label %_ZN3smt12theory_arithINS_6mi_extEE9row_entryD2Ev.exit.i unwind label %bb.f

bb.f:                                             ; preds = %.noexc.i.i.i, %.lr.ph.i
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  tail call void @__clang_call_terminate(ptr %i.ci) #25
  unreachable

_ZN3smt12theory_arithINS_6mi_extEE9row_entryD2Ev.exit.i: ; preds = %.noexc.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.09.i, i64 40 ; 2 uses
  %.not7.i = icmp eq ptr %i.cj, %i.cc
  br i1 %.not7.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !131

._crit_edge.loopexit.i:                           ; preds = %_ZN3smt12theory_arithINS_6mi_extEE9row_entryD2Ev.exit.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !116
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZN6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE3endEv.exit.i
  %i.ck = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.bx, %_ZN6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE3endEv.exit.i ]
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -4
  store i32 %i.by, ptr %i.cl, align 4, !tbaa !13
  br label %_ZN6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE6shrinkEj.exit

_ZN6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE6shrinkEj.exit: ; preds = %bb.a, %._crit_edge, %._crit_edge.i
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1, ptr %i.cm, align 8, !tbaa !124
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN3smt12theory_arithINS_6mi_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !116    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK3smt12theory_arithINS_6mi_extEE3row11num_entriesEv.exit.thread, label %_ZNK3smt12theory_arithINS_6mi_extEE3row11num_entriesEv.exit

_ZNK3smt12theory_arithINS_6mi_extEE3row11num_entriesEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !121
  %i.e = shl i32 %i.d, 1
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13
  %i.h = icmp ult i32 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %_ZNK3smt12theory_arithINS_6mi_extEE3row11num_entriesEv.exit.thread

bb.b:                                             ; preds = %_ZNK3smt12theory_arithINS_6mi_extEE3row11num_entriesEv.exit
  tail call void @_ZN3smt12theory_arithINS_6mi_extEE3row8compressER6vectorINS2_6columnELb1EjE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNK3smt12theory_arithINS_6mi_extEE3row11num_entriesEv.exit.thread

_ZNK3smt12theory_arithINS_6mi_extEE3row11num_entriesEv.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK3smt12theory_arithINS_6mi_extEE3row11num_entriesEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !116    ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %._crit_edge, label %_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE3endEv.exit

_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE3endEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13   ; 2 uses
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE3endEv.exit
  %i.e = zext i32 %i.d to i64
  %i.f = mul nuw nsw i64 %i.e, 40
  %i.g = load ptr, ptr %1, align 8                ; 3 uses
  %i.h = add nsw i64 %i.f, -40                    ; 2 uses
  %i.i = udiv i64 %i.h, 40                        ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %i.k = icmp ult i64 %i.h, 40
  br i1 %i.k, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.j, 1152921504606846974
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph.preheader.new
  %.011 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.x, %bb.d ] ; 3 uses
  %.0810 = phi ptr [ %i.a, %.lr.ph.preheader.new ], [ %i.w, %bb.d ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %.0810, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !101  ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %.lr.ph.1, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.o
  store i32 %.011, ptr %i.p, align 4, !tbaa !13
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0810, i64 72
  %i.r = load i32, ptr %i.q, align 8, !tbaa !101  ; 2 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.1
  %i.t = or disjoint i32 %.011, 1
  %i.u = zext i32 %i.r to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.u
  store i32 %i.t, ptr %i.v, align 4, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.1
  %i.w = getelementptr inbounds nuw i8, ptr %.0810, i64 80 ; 2 uses
  %i.x = add i32 %.011, 2                         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !132

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %i.y = and i64 %i.i, 1
  %lcmp.mod.not.not = icmp eq i64 %i.y, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %._crit_edge

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.011.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %.0810.epil.init = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod16 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod16)
  %i.z = getelementptr inbounds nuw i8, ptr %.0810.epil.init, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !101 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.lr.ph.epil.preheader
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  store i32 %.011.epil.init, ptr %i.ad, align 4, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.e, %.lr.ph.epil.preheader, %bb.a, %_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE3endEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZNK3smt12theory_arithINS_6mi_extEE3row13reset_var_posER7svectorIijE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !116    ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %._crit_edge, label %_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE3endEv.exit

_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE3endEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = mul nuw nsw i64 %i.e, 40                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  %.not7 = icmp eq i32 %i.d, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE3endEv.exit
  %i.h = load ptr, ptr %1, align 8                ; 5 uses
  %i.i = add nsw i64 %i.f, -40                    ; 2 uses
  %i.j = udiv i64 %i.i, 40
  %i.k = add nuw nsw i64 %i.j, 1
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %bb.c
  %.08.prol = phi ptr [ %i.q, %bb.c ], [ %i.a, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.preheader ]
  %i.l = getelementptr inbounds nuw i8, ptr %.08.prol, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !101  ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.prol
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.o
  store i32 -1, ptr %i.p, align 4, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.prol
  %i.q = getelementptr inbounds nuw i8, ptr %.08.prol, i64 40 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !133

.lr.ph.prol.loopexit:                             ; preds = %bb.c, %.lr.ph.preheader
  %.08.unr = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.q, %bb.c ]
  %i.r = icmp ult i64 %i.i, 120
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.h
  %.08 = phi ptr [ %i.am, %bb.h ], [ %.08.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.08, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !101  ; 2 uses
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %.lr.ph.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.v = zext i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.v
  store i32 -1, ptr %i.w, align 4, !tbaa !13
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.08, i64 72
  %i.y = load i32, ptr %i.x, align 8, !tbaa !101  ; 2 uses
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %.lr.ph.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.1
  %i.aa = zext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.aa
  store i32 -1, ptr %i.ab, align 4, !tbaa !13
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.e, %.lr.ph.1
  %i.ac = getelementptr inbounds nuw i8, ptr %.08, i64 112
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !101 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %.lr.ph.3, label %bb.f

bb.f:                                             ; preds = %.lr.ph.2
  %i.af = zext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.af
  store i32 -1, ptr %i.ag, align 4, !tbaa !13
  br label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.f, %.lr.ph.2
  %i.ah = getelementptr inbounds nuw i8, ptr %.08, i64 152
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !101 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.3
  %i.ak = zext i32 %i.ai to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ak
  store i32 -1, ptr %i.al, align 4, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.3
  %i.am = getelementptr inbounds nuw i8, ptr %.08, i64 160 ; 2 uses
  %.not.3 = icmp eq ptr %i.am, %i.g
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !135

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.h, %bb.a, %_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE3endEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK3smt12theory_arithINS_6mi_extEE3row12get_base_varEv(ptr noundef nonnull align 8 dereferenceable(20) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !123
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK3smt12theory_arithINS_6mi_extEE3row7displayERSo(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !123
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.c)
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.4, i64 noundef 2) ; 0 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !116    ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %._crit_edge, label %_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE3endEv.exit

_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE3endEv.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !13   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = mul nuw nsw i64 %i.j, 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  %.not10 = icmp eq i32 %i.i, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE3endEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.011 = phi ptr [ %i.f, %.lr.ph ], [ %i.ai, %bb.e ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.011, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !101
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.r = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14
  call void @_ZNK11mpq_managerILb1EE9to_stringB5cxx11ERK3mpq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(728) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %.011)
  %i.s = load ptr, ptr %2, align 8, !tbaa !136
  %i.t = load i64, ptr %i.m, align 8, !tbaa !139
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.s, i64 noundef %i.t)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.d ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %bb.c
  %i.v = load ptr, ptr %2, align 8, !tbaa !136    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.n
  br i1 %i.w, label %_ZlsRSoRK8rational.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.x = load i64, ptr %i.n, align 8, !tbaa !103
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #26
  br label %_ZlsRSoRK8rational.exit

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_ZN3smt12theory_arithINS_6mi_extEE8reset_ehEv:bb.a
  ret void
}

declare void @_ZN3smt16arith_eq_adapter8reset_ehEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5

declare void @_ZN3smt6theory8reset_ehEv(ptr noundef nonnull align 8 dereferenceable(53)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3smt12theory_arithINS_6mi_extEE10erase_bv2aEj(ptr noundef nonnull align 8 dereferenceable(1640) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !839
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  store ptr null, ptr %i.d, align 8, !tbaa !932
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3smt12theory_arithINS_6mi_extEE7add_rowEjRK8rationaljb(ptr noundef nonnull align 8 dereferenceable(1640) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.smt::theory_arith<smt::mi_ext>::col_entry", align 8 ; 4 uses
  %6 = alloca %"struct.smt::theory_arith<smt::mi_ext>::col_entry", align 8 ; 4 uses
  %7 = alloca %"struct.smt::theory_arith<smt::mi_ext>::col_entry", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %8 = alloca %class.rational, align 8            ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1046
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !1046
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1020
  %i.h = load i32, ptr %i.g, align 4, !tbaa !866
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !829, !nonnull !36, !align !37 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 132
  %i.l = load i32, ptr %i.k, align 4, !tbaa !867
  %i.m = icmp ult i32 %i.h, %i.l
  br i1 %i.m, label %_ZNK3smt12theory_arithINS_6mi_extEE16propagation_modeEv.exit, label %_ZN3smt12theory_arithINS_6mi_extEE23mark_row_for_bound_propEj.exit

_ZNK3smt12theory_arithINS_6mi_extEE16propagation_modeEv.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !869
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %_ZN3smt12theory_arithINS_6mi_extEE23mark_row_for_bound_propEj.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK3smt12theory_arithINS_6mi_extEE16propagation_modeEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !841
  %i.s = zext i32 %1 to i64                       ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !13
  %i.v = load i32, ptr %i.p, align 8, !tbaa !877  ; 2 uses
  %i.w = icmp ugt i32 %i.u, %i.v
  br i1 %i.w, label %_ZN3smt12theory_arithINS_6mi_extEE23mark_row_for_bound_propEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !113
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.s
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !123
  %.not.i = icmp eq i32 %i.ab, -1
  br i1 %.not.i, label %_ZN3smt12theory_arithINS_6mi_extEE23mark_row_for_bound_propEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = add i32 %i.v, 1
  store i32 %i.ac, ptr %i.t, align 4, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !841 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !13 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !13
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.f, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %.pre.i.i = load ptr, ptr %i.ad, align 8, !tbaa !841 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !13
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

_ZN6vectorIjLb0EjE9push_backERKj.exit.i:          ; preds = %bb.f, %bb.e
  %i.al = phi i32 [ %.pre2.i.i, %bb.f ], [ %i.ah, %bb.e ] ; 2 uses
  %i.am = phi ptr [ %.pre.i.i, %bb.f ], [ %i.ae, %bb.e ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %1, ptr %i.ap, align 4, !tbaa !13
  %i.aq = add i32 %i.al, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !13
  br label %_ZN3smt12theory_arithINS_6mi_extEE23mark_row_for_bound_propEj.exit

_ZN3smt12theory_arithINS_6mi_extEE23mark_row_for_bound_propEj.exit: ; preds = %bb.a, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i, %bb.c, %bb.b, %_ZNK3smt12theory_arithINS_6mi_extEE16propagation_modeEv.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !113 ; 2 uses
  %i.at = zext i32 %1 to i64
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.at ; 22 uses
  %i.av = zext i32 %3 to i64
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.av ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 8 uses
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !116 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN3smt12theory_arithINS_6mi_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit, label %_ZNK3smt12theory_arithINS_6mi_extEE3row11num_entriesEv.exit.i

_ZNK3smt12theory_arithINS_6mi_extEE3row11num_entriesEv.exit.i: ; preds = %_ZN3smt12theory_arithINS_6mi_extEE23mark_row_for_bound_propEj.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !121
  %i.bc = shl i32 %i.bb, 1
  %i.bd = getelementptr inbounds i8, ptr %i.ay, i64 -4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !13
  %i.bf = icmp ult i32 %i.bc, %i.be
  br i1 %i.bf, label %bb.g, label %_ZN3smt12theory_arithINS_6mi_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit

bb.g:                                             ; preds = %_ZNK3smt12theory_arithINS_6mi_extEE3row11num_entriesEv.exit.i
  tail call void @_ZN3smt12theory_arithINS_6mi_extEE3row8compressER6vectorINS2_6columnELb1EjE(ptr noundef nonnull align 8 dereferenceable(20) %i.au, ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
  br label %_ZN3smt12theory_arithINS_6mi_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit

_ZN3smt12theory_arithINS_6mi_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit: ; preds = %_ZN3smt12theory_arithINS_6mi_extEE23mark_row_for_bound_propEj.exit, %_ZNK3smt12theory_arithINS_6mi_extEE3row11num_entriesEv.exit.i, %bb.g
  %i.bg = load ptr, ptr %i.aw, align 8, !tbaa !116 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN3smt12theory_arithINS_6mi_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit125, label %_ZNK3smt12theory_arithINS_6mi_extEE3row11num_entriesEv.exit.i124

_ZNK3smt12theory_arithINS_6mi_extEE3row11num_entriesEv.exit.i124: ; preds = %_ZN3smt12theory_arithINS_6mi_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !121
  %i.bk = shl i32 %i.bj, 1
  %i.bl = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !13
  %i.bn = icmp ult i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.h, label %_ZN3smt12theory_arithINS_6mi_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit125

bb.h:                                             ; preds = %_ZNK3smt12theory_arithINS_6mi_extEE3row11num_entriesEv.exit.i124
  tail call void @_ZN3smt12theory_arithINS_6mi_extEE3row8compressER6vectorINS2_6columnELb1EjE(ptr noundef nonnull align 8 dereferenceable(20) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
  br label %_ZN3smt12theory_arithINS_6mi_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit125

_ZN3smt12theory_arithINS_6mi_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit125: ; preds = %_ZN3smt12theory_arithINS_6mi_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit, %_ZNK3smt12theory_arithINS_6mi_extEE3row11num_entriesEv.exit.i124, %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 8 uses
  %i.bp = load ptr, ptr %i.au, align 8, !tbaa !116 ; 4 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit, label %_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE3endEv.exit.i

_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE3endEv.exit.i: ; preds = %_ZN3smt12theory_arithINS_6mi_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit125
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !13 ; 2 uses
  %.not9.i = icmp eq i32 %i.bs, 0
  br i1 %.not9.i, label %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE3endEv.exit.i
  %i.bt = zext i32 %i.bs to i64
  %i.bu = mul nuw nsw i64 %i.bt, 40
  %i.bv = load ptr, ptr %i.bo, align 8            ; 3 uses
  %i.bw = add nsw i64 %i.bu, -40                  ; 2 uses
  %i.bx = udiv i64 %i.bw, 40                      ; 2 uses
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %i.bz = icmp ult i64 %i.bw, 40
  br i1 %i.bz, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.by, 1152921504606846974
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i.new
  %.011.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.cm, %bb.k ] ; 3 uses
  %.0810.i = phi ptr [ %i.bp, %.lr.ph.preheader.i.new ], [ %i.cl, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.k ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.0810.i, i64 32
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !101 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, -1
  br i1 %i.cc, label %.lr.ph.i.1, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.cd = zext i32 %i.cb to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cd
  store i32 %.011.i, ptr %i.ce, align 4, !tbaa !13
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.i, %.lr.ph.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.0810.i, i64 72
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !101 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, -1
  br i1 %i.ch, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.1
  %i.ci = or disjoint i32 %.011.i, 1
  %i.cj = zext i32 %i.cg to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cj
  store i32 %i.ci, ptr %i.ck, align 4, !tbaa !13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.1
  %i.cl = getelementptr inbounds nuw i8, ptr %.0810.i, i64 80 ; 2 uses
  %i.cm = add nuw i32 %.011.i, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !132

_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa: ; preds = %bb.k
  %i.cn = and i64 %i.bx, 1
  %lcmp.mod.not.not = icmp eq i64 %i.cn, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit

.lr.ph.i.epil.preheader:                          ; preds = %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.011.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.cm, %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa ]
  %.0810.i.epil.init = phi ptr [ %i.bp, %.lr.ph.preheader.i ], [ %i.cl, %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa ]
  %lcmp.mod228 = trunc i64 %i.by to i1
  tail call void @llvm.assume(i1 %lcmp.mod228)
  %i.co = getelementptr inbounds nuw i8, ptr %.0810.i.epil.init, i64 32
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !101 ; 2 uses
  %i.cq = icmp eq i32 %i.cp, -1
  br i1 %i.cq, label %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.cr = zext i32 %i.cp to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cr
  store i32 %.011.i.epil.init, ptr %i.cs, align 4, !tbaa !13
  br label %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit

_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit: ; preds = %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa, %bb.l, %.lr.ph.i.epil.preheader, %_ZN3smt12theory_arithINS_6mi_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit125, %_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE3endEv.exit.i
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cu = load i8, ptr %i.ct, align 4
  %i.cv = and i8 %i.cu, 1
  %i.cw = icmp eq i8 %i.cv, 0                     ; 2 uses
  %i.cx = load i32, ptr %2, align 8               ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 1
  %i.cz = select i1 %i.cw, i1 %i.cy, i1 false
  br i1 %i.cz, label %_ZNK8rational6is_oneEv.exit, label %bb.ad

_ZNK8rational6is_oneEv.exit:                      ; preds = %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.dc = load i8, ptr %i.db, align 4
  %i.dd = and i8 %i.dc, 1
  %i.de = icmp eq i8 %i.dd, 0
  %i.df = load i32, ptr %i.da, align 8
  %i.dg = icmp eq i32 %i.df, 1
  %i.dh = select i1 %i.de, i1 %i.dg, i1 false
  %.pre179 = load ptr, ptr %i.aw, align 8, !tbaa !116 ; 5 uses
  br i1 %i.dh, label %bb.m, label %_ZNK8rational12is_minus_oneEv.exit.thread

bb.m:                                             ; preds = %_ZNK8rational6is_oneEv.exit
  %i.di = icmp eq ptr %.pre179, null
  br i1 %i.di, label %.loopexit, label %_ZN3smt12theory_arithINS_6mi_extEE3row11end_entriesEv.exit

_ZN3smt12theory_arithINS_6mi_extEE3row11end_entriesEv.exit: ; preds = %bb.m
  %i.dj = getelementptr inbounds i8, ptr %.pre179, i64 -4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !13 ; 2 uses
  %i.dl = zext i32 %i.dk to i64
  %i.dm = mul nuw nsw i64 %i.dl, 40
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre179, i64 %i.dm
  %.not123174 = icmp eq i32 %i.dk, 0
  br i1 %.not123174, label %.loopexit, label %.lr.ph176

.lr.ph176:                                        ; preds = %_ZN3smt12theory_arithINS_6mi_extEE3row11end_entriesEv.exit
  %i.do = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph176, %bb.ac
  %.0175 = phi ptr [ %.pre179, %.lr.ph176 ], [ %i.hi, %bb.ac ] ; 8 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0175, i64 32
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !101 ; 3 uses
  %i.ds = icmp eq i32 %i.dr, -1
  br i1 %i.ds, label %bb.ac, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dt = load ptr, ptr %i.bo, align 8, !tbaa !842
  %i.du = zext i32 %i.dr to i64                   ; 4 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !13 ; 2 uses
  %i.dx = icmp eq i32 %i.dw, -1
  br i1 %i.dx, label %bb.p, label %bb.z

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.dy = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN3smt12theory_arithINS_6mi_extEE3row13add_row_entryERi(ptr noundef nonnull align 8 dereferenceable(20) %i.au, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 7 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  store i32 %i.dr, ptr %i.dz, align 8, !tbaa !101
  %i.ea = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0175, i64 4
  %i.ec = load i8, ptr %i.eb, align 4
  %i.ed = and i8 %i.ec, 1
  %i.ee = icmp eq i8 %i.ed, 0
  br i1 %i.ee, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ef = load i32, ptr %.0175, align 8, !tbaa !20
  store i32 %i.ef, ptr %i.dy, align 8, !tbaa !20
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 4 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 4
  %i.ei = and i8 %i.eh, -2
  store i8 %i.ei, ptr %i.eg, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.r:                                             ; preds = %bb.p
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %i.dy, ptr noundef nonnull align 8 dereferenceable(32) %.0175)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.r, %bb.q
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0175, i64 16 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.0175, i64 20
  %i.em = load i8, ptr %i.el, align 4
  %i.en = and i8 %i.em, 1
  %i.eo = icmp eq i8 %i.en, 0
  br i1 %i.eo, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.ep = load i32, ptr %i.ek, align 8, !tbaa !20
  store i32 %i.ep, ptr %i.ej, align 8, !tbaa !20
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dy, i64 20 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 4
  %i.es = and i8 %i.er, -2
  store i8 %i.es, ptr %i.eq, align 4
  br label %_ZN8rationalaSERKS_.exit

bb.t:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %i.ej, ptr noundef nonnull align 8 dereferenceable(16) %i.ek)
  br label %_ZN8rationalaSERKS_.exit

_ZN8rationalaSERKS_.exit:                         ; preds = %bb.s, %bb.t
  %i.et = load ptr, ptr %i.ax, align 8, !tbaa !127
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %i.du ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !106
  %i.ex = add i32 %i.ew, 1
  store i32 %i.ex, ptr %i.ev, align 8, !tbaa !106
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 12 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !112 ; 3 uses
  %i.fa = icmp eq i32 %i.ez, -1
  %i.fb = load ptr, ptr %i.eu, align 8, !tbaa !111 ; 3 uses
  br i1 %i.fa, label %bb.u, label %bb.y

bb.u:                                             ; preds = %_ZN8rationalaSERKS_.exit
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9col_entryELb0EjE4sizeEv.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fd = getelementptr inbounds i8, ptr %i.fb, i64 -4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !13
  br label %_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9col_entryELb0EjE4sizeEv.exit.i

_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9col_entryELb0EjE4sizeEv.exit.i: ; preds = %bb.v, %bb.u
  %.0.i.i = phi i32 [ %i.fe, %bb.v ], [ 0, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN3smt12theory_arithINS_6mi_extEE9col_entryC1Ev(ptr noundef nonnull align 4 dereferenceable(8) %7)
  %i.ff = load ptr, ptr %i.eu, align 8, !tbaa !111 ; 4 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9col_entryELb0EjE4sizeEv.exit.i
  %i.fh = getelementptr inbounds i8, ptr %i.ff, i64 -4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !13 ; 2 uses
  %i.fj = getelementptr inbounds i8, ptr %i.ff, i64 -8
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !13
  %i.fl = icmp eq i32 %i.fi, %i.fk
  br i1 %i.fl, label %bb.x, label %_ZN6vectorIN3smt12theory_arithINS0_6mi_extEE9col_entryELb0EjE4backEv.exit.i

bb.x:                                             ; preds = %bb.w, %_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9col_entryELb0EjE4sizeEv.exit.i
  call void @_ZN6vectorIN3smt12theory_arithINS0_6mi_extEE9col_entryELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eu)
  %.pre.i.i127 = load ptr, ptr %i.eu, align 8, !tbaa !111 ; 2 uses
  %.phi.trans.insert.i.i128 = getelementptr inbounds i8, ptr %.pre.i.i127, i64 -4
  %.pre2.i.i129 = load i32, ptr %.phi.trans.insert.i.i128, align 4, !tbaa !13
  br label %_ZN6vectorIN3smt12theory_arithINS0_6mi_extEE9col_entryELb0EjE4backEv.exit.i

_ZN6vectorIN3smt12theory_arithINS0_6mi_extEE9col_entryELb0EjE4backEv.exit.i: ; preds = %bb.x, %bb.w
  %i.fm = phi i32 [ %.pre2.i.i129, %bb.x ], [ %i.fi, %bb.w ]
  %i.fn = phi ptr [ %.pre.i.i127, %bb.x ], [ %i.ff, %bb.w ]
  %i.fo = zext i32 %i.fm to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fo
  %i.fq = load i64, ptr %7, align 8
  store i64 %i.fq, ptr %i.fp, align 4
  %i.fr = load ptr, ptr %i.eu, align 8, !tbaa !111 ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -4 ; 3 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !13
  %i.fu = add i32 %i.ft, 1
  store i32 %i.fu, ptr %i.fs, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.fv = load i32, ptr %i.fs, align 4, !tbaa !13
  %i.fw = add i32 %i.fv, -1
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fx
  br label %_ZN3smt12theory_arithINS_6mi_extEE6column13add_col_entryERi.exit

bb.y:                                             ; preds = %_ZN8rationalaSERKS_.exit
  %i.fz = zext i32 %i.ez to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.fz ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !103
  store i32 %i.gc, ptr %i.ey, align 4, !tbaa !112
  br label %_ZN3smt12theory_arithINS_6mi_extEE6column13add_col_entryERi.exit

_ZN3smt12theory_arithINS_6mi_extEE6column13add_col_entryERi.exit: ; preds = %_ZN6vectorIN3smt12theory_arithINS0_6mi_extEE9col_entryELb0EjE4backEv.exit.i, %bb.y
end_hunk_1
begin_hunk_2_@_ZN3smt12theory_arithINS_6mi_extEE15try_to_imply_eqEii:bb.a
  %i.bg = load i8, ptr %i.bf, align 4
  %i.bh = and i8 %i.bg, -2
  store i8 %i.bh, ptr %i.bf, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.e:                                             ; preds = %.noexc
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i unwind label %bb.j

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.bj = load i8, ptr %i.ar, align 4
  %i.bk = and i8 %i.bj, 1
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.bm = load i32, ptr %i.aq, align 8, !tbaa !20
  store i32 %i.bm, ptr %i.bi, align 8, !tbaa !20
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 20 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 4
  %i.bp = and i8 %i.bo, -2
  store i8 %i.bp, ptr %i.bn, align 4
  br label %bb.h

bb.g:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %i.bq = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %bb.h
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %.noexc.i, %bb.h
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #25
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.loopexit99

bb.j:                                             ; preds = %bb.g, %bb.e, %bb.c
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.bl

_ZNK3smt12theory_arithINS_6mi_extEE11is_non_baseEi.exit.thread: ; preds = %_ZN3smt12theory_arithINS_6mi_extEE3row5resetEv.exit._ZNK3smt12theory_arithINS_6mi_extEE11is_non_baseEi.exit.thread_crit_edge, %_ZNK3smt12theory_arithINS_6mi_extEE11is_non_baseEi.exit
  %i.bu = phi i32 [ %.pre111, %_ZN3smt12theory_arithINS_6mi_extEE3row5resetEv.exit._ZNK3smt12theory_arithINS_6mi_extEE11is_non_baseEi.exit.thread_crit_edge ], [ %i.aj, %_ZNK3smt12theory_arithINS_6mi_extEE11is_non_baseEi.exit ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.bw = and i32 %i.bu, 268435455
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !113
  %i.by = zext nneg i32 %i.bw to i64
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !116 ; 4 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %.loopexit99, label %_ZN3smt12theory_arithINS_6mi_extEE3row11end_entriesEv.exit

_ZN3smt12theory_arithINS_6mi_extEE3row11end_entriesEv.exit: ; preds = %_ZNK3smt12theory_arithINS_6mi_extEE11is_non_baseEi.exit.thread
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 -4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !13 ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %i.cf = mul nuw nsw i64 %i.ce, 40
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cf
  %.not100 = icmp eq i32 %i.cd, 0
  br i1 %.not100, label %.loopexit99, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3smt12theory_arithINS_6mi_extEE3row11end_entriesEv.exit, %bb.p
  %.045101 = phi ptr [ %i.dg, %bb.p ], [ %i.ca, %_ZN3smt12theory_arithINS_6mi_extEE3row11end_entriesEv.exit ] ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.045101, i64 32
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !101 ; 3 uses
  %i.cj = icmp eq i32 %i.ci, -1
  %.not55 = icmp eq i32 %i.ci, %1
  %or.cond = or i1 %i.cj, %.not55
  br i1 %or.cond, label %bb.p, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.ck = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN3smt12theory_arithINS_6mi_extEE3row13add_row_entryERi(ptr noundef nonnull align 8 dereferenceable(20) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.c) ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store i32 %i.ci, ptr %i.cl, align 8, !tbaa !101
  %i.cm = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.045101, i64 4
  %i.co = load i8, ptr %i.cn, align 4
  %i.cp = and i8 %i.co, 1
  %i.cq = icmp eq i8 %i.cp, 0
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cr = load i32, ptr %.045101, align 8, !tbaa !20
  store i32 %i.cr, ptr %i.ck, align 8, !tbaa !20
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 4
  %i.cu = and i8 %i.ct, -2
  store i8 %i.cu, ptr %i.cs, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i68

bb.m:                                             ; preds = %bb.k
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %.045101)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i68

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i68: ; preds = %bb.m, %bb.l
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.045101, i64 16 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.045101, i64 20
  %i.cy = load i8, ptr %i.cx, align 4
  %i.cz = and i8 %i.cy, 1
  %i.da = icmp eq i8 %i.cz, 0
  br i1 %i.da, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i68
  %i.db = load i32, ptr %i.cw, align 8, !tbaa !20
  store i32 %i.db, ptr %i.cv, align 8, !tbaa !20
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ck, i64 20 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 4
  %i.de = and i8 %i.dd, -2
  store i8 %i.de, ptr %i.dc, align 4
  br label %_ZN3smt12theory_arithINS_6mi_extEE17add_tmp_row_entryILb1EEEvRNS2_3rowERK8rationali.exit

bb.o:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i68
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.cw)
  br label %_ZN3smt12theory_arithINS_6mi_extEE17add_tmp_row_entryILb1EEEvRNS2_3rowERK8rationali.exit

_ZN3smt12theory_arithINS_6mi_extEE17add_tmp_row_entryILb1EEEvRNS2_3rowERK8rationali.exit: ; preds = %bb.n, %bb.o
  %i.df = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14
  call void @_ZN11mpz_managerILb1EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.df, ptr noundef nonnull align 8 dereferenceable(32) %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %_ZN3smt12theory_arithINS_6mi_extEE17add_tmp_row_entryILb1EEEvRNS2_3rowERK8rationali.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %.045101, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.dg, %i.cg
  br i1 %.not, label %.loopexit99, label %.lr.ph, !llvm.loop !1113

.loopexit99:                                      ; preds = %bb.p, %_ZNK3smt12theory_arithINS_6mi_extEE11is_non_baseEi.exit.thread, %_ZN3smt12theory_arithINS_6mi_extEE3row11end_entriesEv.exit, %_ZN8rationalD2Ev.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 6 uses
  %i.di = load ptr, ptr %i.s, align 8, !tbaa !116 ; 5 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit, label %_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE3endEv.exit.i

_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE3endEv.exit.i: ; preds = %.loopexit99
  %i.dk = getelementptr inbounds i8, ptr %i.di, i64 -4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !13 ; 2 uses
  %.not9.i = icmp eq i32 %i.dl, 0
  br i1 %.not9.i, label %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE3endEv.exit.i
  %i.dm = zext i32 %i.dl to i64
  %i.dn = mul nuw nsw i64 %i.dm, 40
  %i.do = load ptr, ptr %i.dh, align 8            ; 3 uses
  %i.dp = add nsw i64 %i.dn, -40                  ; 2 uses
  %i.dq = udiv i64 %i.dp, 40                      ; 2 uses
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %i.ds = icmp ult i64 %i.dp, 40
  br i1 %i.ds, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.dr, 1152921504606846974
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.preheader.i.new
  %.011.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.ef, %bb.s ] ; 3 uses
  %.0810.i = phi ptr [ %i.di, %.lr.ph.preheader.i.new ], [ %i.ee, %bb.s ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.s ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.0810.i, i64 32
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !101 ; 2 uses
  %i.dv = icmp eq i32 %i.du, -1
  br i1 %i.dv, label %.lr.ph.i.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i
  %i.dw = zext i32 %i.du to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dw
  store i32 %.011.i, ptr %i.dx, align 4, !tbaa !13
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.q, %.lr.ph.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.0810.i, i64 72
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !101 ; 2 uses
  %i.ea = icmp eq i32 %i.dz, -1
  br i1 %i.ea, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.1
  %i.eb = or disjoint i32 %.011.i, 1
  %i.ec = zext i32 %i.dz to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ec
  store i32 %i.eb, ptr %i.ed, align 4, !tbaa !13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i.1
  %i.ee = getelementptr inbounds nuw i8, ptr %.0810.i, i64 80 ; 2 uses
  %i.ef = add nuw i32 %.011.i, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !132

_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa: ; preds = %bb.s
  %i.eg = and i64 %i.dq, 1
  %lcmp.mod.not.not = icmp eq i64 %i.eg, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit

.lr.ph.i.epil.preheader:                          ; preds = %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.011.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ef, %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa ]
  %.0810.i.epil.init = phi ptr [ %i.di, %.lr.ph.preheader.i ], [ %i.ee, %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa ]
  %lcmp.mod136 = trunc i64 %i.dr to i1
  call void @llvm.assume(i1 %lcmp.mod136)
  %i.eh = getelementptr inbounds nuw i8, ptr %.0810.i.epil.init, i64 32
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !101 ; 2 uses
  %i.ej = icmp eq i32 %i.ei, -1
  br i1 %i.ej, label %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ek = zext i32 %i.ei to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ek
  store i32 %.011.i.epil.init, ptr %i.el, align 4, !tbaa !13
  br label %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit

_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit: ; preds = %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa, %bb.t, %.lr.ph.i.epil.preheader, %.loopexit99, %_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE3endEv.exit.i
  %.phi.trans.insert106 = getelementptr inbounds nuw i8, ptr %0, i64 656
  %.pre107 = load ptr, ptr %.phi.trans.insert106, align 8, !tbaa !789 ; 2 uses
  br i1 %.not.i63, label %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit._ZNK3smt12theory_arithINS_6mi_extEE11is_non_baseEi.exit71.thread_crit_edge, label %_ZNK3smt12theory_arithINS_6mi_extEE11is_non_baseEi.exit71

_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit._ZNK3smt12theory_arithINS_6mi_extEE11is_non_baseEi.exit71.thread_crit_edge: ; preds = %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit
  %.phi.trans.insert112 = getelementptr inbounds nuw i8, ptr %.pre107, i64 17179869180
  %.pre113 = load i32, ptr %.phi.trans.insert112, align 4
  br label %_ZNK3smt12theory_arithINS_6mi_extEE11is_non_baseEi.exit71.thread

_ZNK3smt12theory_arithINS_6mi_extEE11is_non_baseEi.exit71: ; preds = %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit
  %i.em = zext i32 %2 to i64                      ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.pre107, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4            ; 2 uses
  %i.ep = and i32 %i.eo, 805306368
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.u, label %_ZNK3smt12theory_arithINS_6mi_extEE11is_non_baseEi.exit71.thread

bb.u:                                             ; preds = %_ZNK3smt12theory_arithINS_6mi_extEE11is_non_baseEi.exit71
  %i.er = load ptr, ptr %i.dh, align 8, !tbaa !842
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.em
  %i.et = load i32, ptr %i.es, align 4, !tbaa !13 ; 2 uses
  %i.eu = icmp eq i32 %i.et, -1
  br i1 %i.eu, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.ew = load i8, ptr %i.ev, align 4
  %i.ex = and i8 %i.ew, -4
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.ey, align 8, !tbaa !23
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store i32 1, ptr %i.ez, align 8, !tbaa !20
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 5 uses
  %i.fb = load i8, ptr %i.fa, align 4
  %i.fc = and i8 %i.fb, -4
  store i8 %i.fc, ptr %i.fa, align 4
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.fd, align 8, !tbaa !23
  %i.fe = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14
  store i32 -1, ptr %4, align 8, !tbaa !20
  store i8 %i.ex, ptr %i.ev, align 4
  call void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.fe, ptr noundef nonnull align 8 dereferenceable(16) %i.ez)
  store i32 1, ptr %i.ez, align 8, !tbaa !20
  %i.ff = load i8, ptr %i.fa, align 4
  %i.fg = and i8 %i.ff, -2
  store i8 %i.fg, ptr %i.fa, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.fh = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN3smt12theory_arithINS_6mi_extEE3row13add_row_entryERi(ptr noundef nonnull align 8 dereferenceable(20) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc73 unwind label %bb.ac  ; 6 uses

.noexc73:                                         ; preds = %bb.v
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  store i32 %2, ptr %i.fi, align 8, !tbaa !101
  %i.fj = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  %i.fk = load i8, ptr %i.ev, align 4
  %i.fl = and i8 %i.fk, 1
  %i.fm = icmp eq i8 %i.fl, 0
  br i1 %i.fm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.noexc73
  %i.fn = load i32, ptr %4, align 8, !tbaa !20
  store i32 %i.fn, ptr %i.fh, align 8, !tbaa !20
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 4 ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 4
  %i.fq = and i8 %i.fp, -2
  store i8 %i.fq, ptr %i.fo, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i72

bb.x:                                             ; preds = %.noexc73
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %i.fh, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i72 unwind label %bb.ac

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i72: ; preds = %bb.x, %bb.w
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %i.fs = load i8, ptr %i.fa, align 4
  %i.ft = and i8 %i.fs, 1
  %i.fu = icmp eq i8 %i.ft, 0
  br i1 %i.fu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i72
  %i.fv = load i32, ptr %i.ez, align 8, !tbaa !20
  store i32 %i.fv, ptr %i.fr, align 8, !tbaa !20
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fh, i64 20 ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 4
  %i.fy = and i8 %i.fx, -2
  store i8 %i.fy, ptr %i.fw, align 4
  br label %bb.aa

bb.z:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i72
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.fj, ptr noundef nonnull align 8 dereferenceable(16) %i.fr, ptr noundef nonnull align 8 dereferenceable(16) %i.ez)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.fz = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fz, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i77 unwind label %bb.ab

.noexc.i77:                                       ; preds = %bb.aa
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fz, ptr noundef nonnull align 8 dereferenceable(16) %i.ez)
          to label %_ZN8rationalD2Ev.exit78 unwind label %bb.ab

bb.ab:                                            ; preds = %.noexc.i77, %bb.aa
  %i.ga = landingpad { ptr, i32 }
          catch ptr null
  %i.gb = extractvalue { ptr, i32 } %i.ga, 0
  call void @__clang_call_terminate(ptr %i.gb) #25
  unreachable

_ZN8rationalD2Ev.exit78:                          ; preds = %.noexc.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.loopexit

bb.ac:                                            ; preds = %bb.z, %bb.x, %bb.v
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.bl

bb.ad:                                            ; preds = %bb.u
  %i.gd = zext i32 %i.et to i64                   ; 2 uses
  %i.ge = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %i.gd ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.gf = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 4
  %i.gh = and i8 %i.gg, -4
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.gi, align 8, !tbaa !23
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store i32 1, ptr %i.gj, align 8, !tbaa !20
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 4 uses
  %i.gl = load i8, ptr %i.gk, align 4
  %i.gm = and i8 %i.gl, -4
  store i8 %i.gm, ptr %i.gk, align 4
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr null, ptr %i.gn, align 8, !tbaa !23
  %i.go = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14
  store i32 -1, ptr %5, align 8, !tbaa !20
  store i8 %i.gh, ptr %i.gf, align 4
  call void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.go, ptr noundef nonnull align 8 dereferenceable(16) %i.gj)
  store i32 1, ptr %i.gj, align 8, !tbaa !20
  %i.gp = load i8, ptr %i.gk, align 4
  %i.gq = and i8 %i.gp, -2
  store i8 %i.gq, ptr %i.gk, align 4
  %i.gr = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14
  invoke void @_ZN11mpq_managerILb1EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.gr, ptr noundef nonnull align 8 dereferenceable(32) %i.ge, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ge)
          to label %_ZN8rationalpLERKS_.exit unwind label %bb.ag

_ZN8rationalpLERKS_.exit:                         ; preds = %bb.ad
  %i.gs = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gs, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc.i80 unwind label %bb.ae

.noexc.i80:                                       ; preds = %_ZN8rationalpLERKS_.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gs, ptr noundef nonnull align 8 dereferenceable(16) %i.gj)
          to label %_ZN8rationalD2Ev.exit81 unwind label %bb.ae

bb.ae:                                            ; preds = %.noexc.i80, %_ZN8rationalpLERKS_.exit
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #25
  unreachable

_ZN8rationalD2Ev.exit81:                          ; preds = %.noexc.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.gv = load i32, ptr %i.ge, align 8, !tbaa !20
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %_ZN8rationalD2Ev.exit81
  %i.gx = load ptr, ptr %i.s, align 8, !tbaa !116
end_hunk_2
begin_hunk_3_@_ZN3smt12theory_arithINS_6mi_extEE10mk_eq_atomEP4exprS4_:bb.a
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN10arith_util5mk_eqEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 65535
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZNK17arith_recognizers10is_numeralEPK4expr.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !845
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !823  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNK17arith_recognizers10is_numeralEPK4expr.exit.thread, label %_ZNK17arith_recognizers10is_numeralEPK4expr.exit

_ZNK17arith_recognizers10is_numeralEPK4expr.exit: ; preds = %bb.b
  %i.i = load i32, ptr %i.h, align 8, !tbaa !826
  %i.j = icmp eq i32 %i.i, 5
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 0
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.d, label %_ZNK17arith_recognizers10is_numeralEPK4expr.exit.thread

_ZNK17arith_recognizers10is_numeralEPK4expr.exit.thread: ; preds = %bb.b, %bb.a, %_ZNK17arith_recognizers10is_numeralEPK4expr.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 65535
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %_ZNK17arith_recognizers10is_numeralEPK4expr.exit4.thread

bb.c:                                             ; preds = %_ZNK17arith_recognizers10is_numeralEPK4expr.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !845
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !823  ; 3 uses
  %.not.i.i.i.i3 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i3, label %_ZNK17arith_recognizers10is_numeralEPK4expr.exit4.thread, label %_ZNK17arith_recognizers10is_numeralEPK4expr.exit4

_ZNK17arith_recognizers10is_numeralEPK4expr.exit4: ; preds = %bb.c
  %i.w = load i32, ptr %i.v, align 8, !tbaa !826
  %i.x = icmp eq i32 %i.w, 5
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = select i1 %i.x, i1 %i.aa, i1 false
  br i1 %i.ab, label %bb.e, label %_ZNK17arith_recognizers10is_numeralEPK4expr.exit4.thread

_ZNK17arith_recognizers10is_numeralEPK4expr.exit4.thread: ; preds = %bb.c, %_ZNK17arith_recognizers10is_numeralEPK4expr.exit.thread, %_ZNK17arith_recognizers10is_numeralEPK4expr.exit4
  %i.ac = load i32, ptr %1, align 4, !tbaa !770
  %i.ad = load i32, ptr %2, align 4, !tbaa !770
  %i.ae = icmp ugt i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK17arith_recognizers10is_numeralEPK4expr.exit4.thread, %_ZNK17arith_recognizers10is_numeralEPK4expr.exit
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK17arith_recognizers10is_numeralEPK4expr.exit4.thread, %_ZNK17arith_recognizers10is_numeralEPK4expr.exit4
  %.019 = phi ptr [ %2, %bb.d ], [ %1, %_ZNK17arith_recognizers10is_numeralEPK4expr.exit4 ], [ %1, %_ZNK17arith_recognizers10is_numeralEPK4expr.exit4.thread ] ; 3 uses
  %.018 = phi ptr [ %1, %bb.d ], [ %2, %_ZNK17arith_recognizers10is_numeralEPK4expr.exit4 ], [ %2, %_ZNK17arith_recognizers10is_numeralEPK4expr.exit4.thread ] ; 3 uses
  %i.af = icmp eq ptr %2, %1
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %0, align 8, !tbaa !857, !nonnull !36, !align !37
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 832
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1346
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.019, i64 4
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = and i32 %i.ak, 65535
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.h, label %_ZNK17arith_recognizers10is_numeralEPK4expr.exit6.thread

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.019, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !845
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !823 ; 3 uses
  %.not.i.i.i.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i5, label %_ZNK17arith_recognizers10is_numeralEPK4expr.exit6.thread, label %_ZNK17arith_recognizers10is_numeralEPK4expr.exit6

_ZNK17arith_recognizers10is_numeralEPK4expr.exit6: ; preds = %bb.h
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !826
  %i.as = icmp eq i32 %i.ar, 5
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.au = load i32, ptr %i.at, align 4
  %i.av = icmp eq i32 %i.au, 0
  %i.aw = select i1 %i.as, i1 %i.av, i1 false
  br i1 %i.aw, label %bb.i, label %_ZNK17arith_recognizers10is_numeralEPK4expr.exit6.thread

bb.i:                                             ; preds = %_ZNK17arith_recognizers10is_numeralEPK4expr.exit6
  %i.ax = getelementptr inbounds nuw i8, ptr %.018, i64 4
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = and i32 %i.ay, 65535
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.j, label %_ZNK17arith_recognizers10is_numeralEPK4expr.exit6.thread

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.018, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !845
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !823 ; 3 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i7, label %_ZNK17arith_recognizers10is_numeralEPK4expr.exit6.thread, label %_ZNK17arith_recognizers10is_numeralEPK4expr.exit8

_ZNK17arith_recognizers10is_numeralEPK4expr.exit8: ; preds = %bb.j
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !826
  %i.bg = icmp eq i32 %i.bf, 5
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = icmp eq i32 %i.bi, 0
  %i.bk = select i1 %i.bg, i1 %i.bj, i1 false
  br i1 %i.bk, label %bb.k, label %_ZNK17arith_recognizers10is_numeralEPK4expr.exit6.thread

bb.k:                                             ; preds = %_ZNK17arith_recognizers10is_numeralEPK4expr.exit8
  %i.bl = load ptr, ptr %0, align 8, !tbaa !857, !nonnull !36, !align !37
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 840
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !918
  br label %bb.l

_ZNK17arith_recognizers10is_numeralEPK4expr.exit6.thread: ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %_ZNK17arith_recognizers10is_numeralEPK4expr.exit8, %_ZNK17arith_recognizers10is_numeralEPK4expr.exit6
  %i.bo = load ptr, ptr %0, align 8, !tbaa !857, !nonnull !36, !align !37
  %i.bp = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.bo, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %.019, ptr noundef nonnull %.018)
  br label %bb.l

bb.l:                                             ; preds = %_ZNK17arith_recognizers10is_numeralEPK4expr.exit6.thread, %bb.k, %bb.f
  %.0 = phi ptr [ %i.ai, %bb.f ], [ %i.bn, %bb.k ], [ %i.bp, %_ZNK17arith_recognizers10is_numeralEPK4expr.exit6.thread ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3smt12theory_arithINS_6mi_extEE11add_tmp_rowERNS2_3rowERK8rationalRKS3_(ptr noundef nonnull align 8 dereferenceable(1640) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(20) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %4 = alloca %class.rational, align 8            ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 8 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !116    ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit, label %_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE3endEv.exit.i

_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE3endEv.exit.i: ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !13   ; 2 uses
  %.not9.i = icmp eq i32 %i.h, 0
  br i1 %.not9.i, label %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE3endEv.exit.i
  %i.i = zext i32 %i.h to i64
  %i.j = mul nuw nsw i64 %i.i, 40
  %i.k = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.l = add nsw i64 %i.j, -40                    ; 2 uses
  %i.m = udiv i64 %i.l, 40                        ; 2 uses
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %i.o = icmp ult i64 %i.l, 40
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.n, 1152921504606846974
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i.new
  %.011.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.ab, %bb.d ] ; 3 uses
  %.0810.i = phi ptr [ %i.e, %.lr.ph.preheader.i.new ], [ %i.aa, %bb.d ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %.0810.i, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !101  ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %.lr.ph.i.1, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.s
  store i32 %.011.i, ptr %i.t, align 4, !tbaa !13
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.b, %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.0810.i, i64 72
  %i.v = load i32, ptr %i.u, align 8, !tbaa !101  ; 2 uses
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.1
  %i.x = or disjoint i32 %.011.i, 1
  %i.y = zext i32 %i.v to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.y
  store i32 %i.x, ptr %i.z, align 4, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.1
  %i.aa = getelementptr inbounds nuw i8, ptr %.0810.i, i64 80 ; 2 uses
  %i.ab = add nuw i32 %.011.i, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !132

_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa: ; preds = %bb.d
  %i.ac = and i64 %i.m, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ac, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit

.lr.ph.i.epil.preheader:                          ; preds = %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.011.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ab, %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa ]
  %.0810.i.epil.init = phi ptr [ %i.e, %.lr.ph.preheader.i ], [ %i.aa, %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa ]
  %lcmp.mod141 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod141)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0810.i.epil.init, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !101 ; 2 uses
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ag = zext i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ag
  store i32 %.011.i.epil.init, ptr %i.ah, align 4, !tbaa !13
  br label %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit

_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit: ; preds = %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa, %bb.e, %.lr.ph.i.epil.preheader, %bb.a, %_ZNK6vectorIN3smt12theory_arithINS0_6mi_extEE9row_entryELb1EjE3endEv.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aj = load i8, ptr %i.ai, align 4
  %i.ak = and i8 %i.aj, 1
  %i.al = icmp eq i8 %i.ak, 0                     ; 2 uses
  %i.am = load i32, ptr %2, align 8               ; 2 uses
  %i.an = icmp eq i32 %i.am, 1
  %i.ao = select i1 %i.al, i1 %i.an, i1 false
  br i1 %i.ao, label %_ZNK8rational6is_oneEv.exit, label %bb.r

_ZNK8rational6is_oneEv.exit:                      ; preds = %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ar = load i8, ptr %i.aq, align 4
  %i.as = and i8 %i.ar, 1
  %i.at = icmp eq i8 %i.as, 0
  %i.au = load i32, ptr %i.ap, align 8
  %i.av = icmp eq i32 %i.au, 1
  %i.aw = select i1 %i.at, i1 %i.av, i1 false
  br i1 %i.aw, label %bb.f, label %_ZNK8rational12is_minus_oneEv.exit.thread

bb.f:                                             ; preds = %_ZNK8rational6is_oneEv.exit
  %i.ax = load ptr, ptr %3, align 8, !tbaa !116   ; 4 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.loopexit, label %_ZNK3smt12theory_arithINS_6mi_extEE3row11end_entriesEv.exit

_ZNK3smt12theory_arithINS_6mi_extEE3row11end_entriesEv.exit: ; preds = %bb.f
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !13 ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = mul nuw nsw i64 %i.bb, 40
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bc
  %.not82106 = icmp eq i32 %i.ba, 0
  br i1 %.not82106, label %.loopexit, label %.lr.ph108

.lr.ph108:                                        ; preds = %_ZNK3smt12theory_arithINS_6mi_extEE3row11end_entriesEv.exit
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph108, %bb.q
  %.0107 = phi ptr [ %i.ax, %.lr.ph108 ], [ %i.cy, %bb.q ] ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0107, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !101 ; 3 uses
  %i.bi = icmp eq i32 %i.bh, -1
  br i1 %i.bi, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !842
  %i.bk = zext i32 %i.bh to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !13 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, -1
  br i1 %i.bn, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.bo = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN3smt12theory_arithINS_6mi_extEE3row13add_row_entryERi(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store i32 %i.bh, ptr %i.bp, align 8, !tbaa !101
  %i.bq = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0107, i64 4
  %i.bs = load i8, ptr %i.br, align 4
  %i.bt = and i8 %i.bs, 1
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bv = load i32, ptr %.0107, align 8, !tbaa !20
  store i32 %i.bv, ptr %i.bo, align 8, !tbaa !20
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 4
  %i.by = and i8 %i.bx, -2
  store i8 %i.by, ptr %i.bw, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.k:                                             ; preds = %bb.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %.0107)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.k, %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0107, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0107, i64 20
  %i.cc = load i8, ptr %i.cb, align 4
  %i.cd = and i8 %i.cc, 1
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.cf = load i32, ptr %i.ca, align 8, !tbaa !20
  store i32 %i.cf, ptr %i.bz, align 8, !tbaa !20
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 20 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 4
  %i.ci = and i8 %i.ch, -2
  store i8 %i.ci, ptr %i.cg, align 4
  br label %_ZN8rationalaSERKS_.exit

bb.m:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %i.ca)
  br label %_ZN8rationalaSERKS_.exit

_ZN8rationalaSERKS_.exit:                         ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.q

bb.n:                                             ; preds = %bb.h
  %i.cj = load ptr, ptr %1, align 8, !tbaa !116
  %i.ck = zext i32 %i.bm to i64                   ; 2 uses
  %i.cl = getelementptr inbounds nuw [40 x i8], ptr %i.cj, i64 %i.ck ; 3 uses
  %i.cm = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14
  call void @_ZN11mpq_managerILb1EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %.0107, ptr noundef nonnull align 8 dereferenceable(32) %i.cl)
  %i.cn = load i32, ptr %i.cl, align 8, !tbaa !20
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cp = load ptr, ptr %1, align 8, !tbaa !116
  %i.cq = getelementptr inbounds nuw [40 x i8], ptr %i.cp, i64 %i.ck ; 2 uses
  %i.cr = load i32, ptr %i.be, align 8, !tbaa !124
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 36
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !103
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  store i32 -1, ptr %i.ct, align 8, !tbaa !101
  %i.cu = load i32, ptr %i.bf, align 8, !tbaa !121
  %i.cv = add i32 %i.cu, -1
  store i32 %i.cv, ptr %i.bf, align 8, !tbaa !121
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cw = load ptr, ptr %i.d, align 8, !tbaa !842
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.bk
  store i32 -1, ptr %i.cx, align 4, !tbaa !13
  br label %bb.q

bb.q:                                             ; preds = %_ZN8rationalaSERKS_.exit, %bb.p, %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %.0107, i64 40 ; 2 uses
  %.not82 = icmp eq ptr %i.cy, %i.bd
  br i1 %.not82, label %.loopexit, label %bb.g, !llvm.loop !1347

bb.r:                                             ; preds = %_ZNK3smt12theory_arithINS_6mi_extEE3row12save_var_posER7svectorIijE.exit
  %i.cz = icmp eq i32 %i.am, -1
  %i.da = select i1 %i.al, i1 %i.cz, i1 false
  br i1 %i.da, label %_ZNK8rational12is_minus_oneEv.exit, label %_ZNK8rational12is_minus_oneEv.exit.thread

_ZNK8rational12is_minus_oneEv.exit:               ; preds = %bb.r
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.dd = load i8, ptr %i.dc, align 4
  %i.de = and i8 %i.dd, 1
  %i.df = icmp eq i8 %i.de, 0
  %i.dg = load i32, ptr %i.db, align 8
  %i.dh = icmp eq i32 %i.dg, 1
  %i.di = select i1 %i.df, i1 %i.dh, i1 false
  br i1 %i.di, label %bb.s, label %_ZNK8rational12is_minus_oneEv.exit.thread

bb.s:                                             ; preds = %_ZNK8rational12is_minus_oneEv.exit
  %i.dj = load ptr, ptr %3, align 8, !tbaa !116   ; 4 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %.loopexit, label %_ZNK3smt12theory_arithINS_6mi_extEE3row11end_entriesEv.exit86

_ZNK3smt12theory_arithINS_6mi_extEE3row11end_entriesEv.exit86: ; preds = %bb.s
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 -4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !13 ; 2 uses
  %i.dn = zext i32 %i.dm to i64
  %i.do = mul nuw nsw i64 %i.dn, 40
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.do
  %.not81100 = icmp eq i32 %i.dm, 0
  br i1 %.not81100, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3smt12theory_arithINS_6mi_extEE3row11end_entriesEv.exit86
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.t

end_hunk_3
begin_hunk_4_@_ZN3smt12theory_arithINS_5i_extEE3row8compressER6vectorINS2_6columnELb1EjE:bb.a
  %i.am = load i32, ptr %i.ak, align 8, !tbaa !13
  %i.an = load i32, ptr %i.al, align 8, !tbaa !13
  store i32 %i.an, ptr %i.ak, align 8, !tbaa !13
  store i32 %i.am, ptr %i.al, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !126
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !126
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !126
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !126
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 4 uses
  %i.at = load i8, ptr %i.as, align 4             ; 2 uses
  %i.au = and i8 %i.at, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 5 uses
  %i.aw = load i8, ptr %i.av, align 4
  %i.ax = and i8 %i.aw, 2
  %i.ay = and i8 %i.at, -3
  %i.az = or disjoint i8 %i.ax, %i.ay
  store i8 %i.az, ptr %i.as, align 4
  %i.ba = load i8, ptr %i.av, align 4             ; 2 uses
  %i.bb = and i8 %i.ba, -3
  %i.bc = or disjoint i8 %i.bb, %i.au
  store i8 %i.bc, ptr %i.av, align 4
  %i.bd = load i8, ptr %i.as, align 4             ; 2 uses
  %i.be = and i8 %i.bd, 1
  %i.bf = and i8 %i.ba, 1
  %i.bg = and i8 %i.bd, -2
  %i.bh = or disjoint i8 %i.bg, %i.bf
  store i8 %i.bh, ptr %i.as, align 4
  %i.bi = load i8, ptr %i.av, align 4
  %i.bj = and i8 %i.bi, -2
  %i.bk = or disjoint i8 %i.bj, %i.be
  store i8 %i.bk, ptr %i.av, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i32 %i.h, ptr %i.bl, align 8, !tbaa !1972
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !103 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !103
  %i.bp = load ptr, ptr %1, align 8, !tbaa !1996
  %i.bq = zext i32 %i.h to i64
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1981
  %i.bt = zext i32 %i.bn to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 %.02021, ptr %i.bv, align 4, !tbaa !103
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bw = add i32 %.02021, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.1 = phi i32 [ %.02021, %.lr.ph ], [ %i.bw, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1999

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr %0, align 8, !tbaa !1986  ; 2 uses
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %_ZN6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE6shrinkEj.exit, label %_ZN6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE3endEv.exit.i

_ZN6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE3endEv.exit.i: ; preds = %_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE4sizeEv.exit, %._crit_edge
  %i.bx = phi ptr [ %.pre, %._crit_edge ], [ %i.a, %_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE4sizeEv.exit ] ; 4 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = load i32, ptr %.in, align 8, !tbaa !1991 ; 3 uses
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 -4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !13 ; 2 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [40 x i8], ptr %i.bx, i64 %i.cb
  %.not78.i = icmp eq i32 %i.by, %i.ca
  br i1 %.not78.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE3endEv.exit.i
  %i.cd = zext i32 %i.by to i64
  %i.ce = getelementptr inbounds nuw [40 x i8], ptr %i.bx, i64 %i.cd
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN3smt12theory_arithINS_5i_extEE9row_entryD2Ev.exit.i, %.lr.ph.preheader.i
  %.09.i = phi ptr [ %i.cj, %_ZN3smt12theory_arithINS_5i_extEE9row_entryD2Ev.exit.i ], [ %i.ce, %.lr.ph.preheader.i ] ; 3 uses
  %i.cf = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cf, ptr noundef nonnull align 8 dereferenceable(40) %.09.i)
          to label %.noexc.i.i.i unwind label %bb.f

.noexc.i.i.i:                                     ; preds = %.lr.ph.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %i.cg)
          to label %_ZN3smt12theory_arithINS_5i_extEE9row_entryD2Ev.exit.i unwind label %bb.f

bb.f:                                             ; preds = %.noexc.i.i.i, %.lr.ph.i
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  tail call void @__clang_call_terminate(ptr %i.ci) #25
  unreachable

_ZN3smt12theory_arithINS_5i_extEE9row_entryD2Ev.exit.i: ; preds = %.noexc.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.09.i, i64 40 ; 2 uses
  %.not7.i = icmp eq ptr %i.cj, %i.cc
  br i1 %.not7.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !2000

._crit_edge.loopexit.i:                           ; preds = %_ZN3smt12theory_arithINS_5i_extEE9row_entryD2Ev.exit.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !1986
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZN6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE3endEv.exit.i
  %i.ck = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.bx, %_ZN6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE3endEv.exit.i ]
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -4
  store i32 %i.by, ptr %i.cl, align 4, !tbaa !13
  br label %_ZN6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE6shrinkEj.exit

_ZN6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE6shrinkEj.exit: ; preds = %bb.a, %._crit_edge, %._crit_edge.i
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1, ptr %i.cm, align 8, !tbaa !1994
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN3smt12theory_arithINS_5i_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1986   ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK3smt12theory_arithINS_5i_extEE3row11num_entriesEv.exit.thread, label %_ZNK3smt12theory_arithINS_5i_extEE3row11num_entriesEv.exit

_ZNK3smt12theory_arithINS_5i_extEE3row11num_entriesEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1991
  %i.e = shl i32 %i.d, 1
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13
  %i.h = icmp ult i32 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %_ZNK3smt12theory_arithINS_5i_extEE3row11num_entriesEv.exit.thread

bb.b:                                             ; preds = %_ZNK3smt12theory_arithINS_5i_extEE3row11num_entriesEv.exit
  tail call void @_ZN3smt12theory_arithINS_5i_extEE3row8compressER6vectorINS2_6columnELb1EjE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNK3smt12theory_arithINS_5i_extEE3row11num_entriesEv.exit.thread

_ZNK3smt12theory_arithINS_5i_extEE3row11num_entriesEv.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK3smt12theory_arithINS_5i_extEE3row11num_entriesEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1986   ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %._crit_edge, label %_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE3endEv.exit

_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE3endEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13   ; 2 uses
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE3endEv.exit
  %i.e = zext i32 %i.d to i64
  %i.f = mul nuw nsw i64 %i.e, 40
  %i.g = load ptr, ptr %1, align 8                ; 3 uses
  %i.h = add nsw i64 %i.f, -40                    ; 2 uses
  %i.i = udiv i64 %i.h, 40                        ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %i.k = icmp ult i64 %i.h, 40
  br i1 %i.k, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.j, 1152921504606846974
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph.preheader.new
  %.011 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.x, %bb.d ] ; 3 uses
  %.0810 = phi ptr [ %i.a, %.lr.ph.preheader.new ], [ %i.w, %bb.d ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %.0810, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1972 ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %.lr.ph.1, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.o
  store i32 %.011, ptr %i.p, align 4, !tbaa !13
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0810, i64 72
  %i.r = load i32, ptr %i.q, align 8, !tbaa !1972 ; 2 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.1
  %i.t = or disjoint i32 %.011, 1
  %i.u = zext i32 %i.r to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.u
  store i32 %i.t, ptr %i.v, align 4, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.1
  %i.w = getelementptr inbounds nuw i8, ptr %.0810, i64 80 ; 2 uses
  %i.x = add i32 %.011, 2                         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !2001

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %i.y = and i64 %i.i, 1
  %lcmp.mod.not.not = icmp eq i64 %i.y, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %._crit_edge

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.011.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %.0810.epil.init = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod16 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod16)
  %i.z = getelementptr inbounds nuw i8, ptr %.0810.epil.init, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !1972 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.lr.ph.epil.preheader
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  store i32 %.011.epil.init, ptr %i.ad, align 4, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.e, %.lr.ph.epil.preheader, %bb.a, %_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE3endEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZNK3smt12theory_arithINS_5i_extEE3row13reset_var_posER7svectorIijE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1986   ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %._crit_edge, label %_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE3endEv.exit

_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE3endEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = mul nuw nsw i64 %i.e, 40                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  %.not7 = icmp eq i32 %i.d, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE3endEv.exit
  %i.h = load ptr, ptr %1, align 8                ; 5 uses
  %i.i = add nsw i64 %i.f, -40                    ; 2 uses
  %i.j = udiv i64 %i.i, 40
  %i.k = add nuw nsw i64 %i.j, 1
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %bb.c
  %.08.prol = phi ptr [ %i.q, %bb.c ], [ %i.a, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.preheader ]
  %i.l = getelementptr inbounds nuw i8, ptr %.08.prol, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1972 ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.prol
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.o
  store i32 -1, ptr %i.p, align 4, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.prol
  %i.q = getelementptr inbounds nuw i8, ptr %.08.prol, i64 40 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !2002

.lr.ph.prol.loopexit:                             ; preds = %bb.c, %.lr.ph.preheader
  %.08.unr = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.q, %bb.c ]
  %i.r = icmp ult i64 %i.i, 120
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.h
  %.08 = phi ptr [ %i.am, %bb.h ], [ %.08.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.08, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !1972 ; 2 uses
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %.lr.ph.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.v = zext i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.v
  store i32 -1, ptr %i.w, align 4, !tbaa !13
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.08, i64 72
  %i.y = load i32, ptr %i.x, align 8, !tbaa !1972 ; 2 uses
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %.lr.ph.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.1
  %i.aa = zext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.aa
  store i32 -1, ptr %i.ab, align 4, !tbaa !13
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.e, %.lr.ph.1
  %i.ac = getelementptr inbounds nuw i8, ptr %.08, i64 112
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !1972 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %.lr.ph.3, label %bb.f

bb.f:                                             ; preds = %.lr.ph.2
  %i.af = zext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.af
  store i32 -1, ptr %i.ag, align 4, !tbaa !13
  br label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.f, %.lr.ph.2
  %i.ah = getelementptr inbounds nuw i8, ptr %.08, i64 152
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !1972 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.3
  %i.ak = zext i32 %i.ai to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ak
  store i32 -1, ptr %i.al, align 4, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.3
  %i.am = getelementptr inbounds nuw i8, ptr %.08, i64 160 ; 2 uses
  %.not.3 = icmp eq ptr %i.am, %i.g
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !2003

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.h, %bb.a, %_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE3endEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK3smt12theory_arithINS_5i_extEE3row12get_base_varEv(ptr noundef nonnull align 8 dereferenceable(20) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1993
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK3smt12theory_arithINS_5i_extEE3row7displayERSo(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1993
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.c)
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.4, i64 noundef 2) ; 0 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !1986   ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %._crit_edge, label %_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE3endEv.exit

_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE3endEv.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !13   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = mul nuw nsw i64 %i.j, 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  %.not10 = icmp eq i32 %i.i, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE3endEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.011 = phi ptr [ %i.f, %.lr.ph ], [ %i.ai, %bb.e ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.011, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !1972
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.r = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14
  call void @_ZNK11mpq_managerILb1EE9to_stringB5cxx11ERK3mpq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(728) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %.011)
  %i.s = load ptr, ptr %2, align 8, !tbaa !136
  %i.t = load i64, ptr %i.m, align 8, !tbaa !139
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.s, i64 noundef %i.t)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.d ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %bb.c
  %i.v = load ptr, ptr %2, align 8, !tbaa !136    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.n
  br i1 %i.w, label %_ZlsRSoRK8rational.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.x = load i64, ptr %i.n, align 8, !tbaa !103
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #26
  br label %_ZlsRSoRK8rational.exit

bb.d:                                             ; preds = %bb.c
end_hunk_4
begin_hunk_5_@_ZN3smt12theory_arithINS_5i_extEE8reset_ehEv:bb.a
  store i8 0, ptr %i.gg, align 8, !tbaa !2174
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 1356
  store i32 0, ptr %i.gh, align 4, !tbaa !2175
  tail call void @_ZN3smt6theory8reset_ehEv(ptr noundef nonnull align 8 dereferenceable(53) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3smt12theory_arithINS_5i_extEE10erase_bv2aEj(ptr noundef nonnull align 8 dereferenceable(1544) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2089
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  store ptr null, ptr %i.d, align 8, !tbaa !2116
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3smt12theory_arithINS_5i_extEE7add_rowEjRK8rationaljb(ptr noundef nonnull align 8 dereferenceable(1544) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.smt::theory_arith<smt::i_ext>::col_entry", align 8 ; 4 uses
  %6 = alloca %"struct.smt::theory_arith<smt::i_ext>::col_entry", align 8 ; 4 uses
  %7 = alloca %"struct.smt::theory_arith<smt::i_ext>::col_entry", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %8 = alloca %class.rational, align 8            ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2209
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !2209
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 924
  %i.h = load i32, ptr %i.g, align 4, !tbaa !2091
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2088, !nonnull !36, !align !37 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 132
  %i.l = load i32, ptr %i.k, align 4, !tbaa !867
  %i.m = icmp ult i32 %i.h, %i.l
  br i1 %i.m, label %_ZNK3smt12theory_arithINS_5i_extEE16propagation_modeEv.exit, label %_ZN3smt12theory_arithINS_5i_extEE23mark_row_for_bound_propEj.exit

_ZNK3smt12theory_arithINS_5i_extEE16propagation_modeEv.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !869
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %_ZN3smt12theory_arithINS_5i_extEE23mark_row_for_bound_propEj.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK3smt12theory_arithINS_5i_extEE16propagation_modeEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !841
  %i.s = zext i32 %1 to i64                       ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !13
  %i.v = load i32, ptr %i.p, align 8, !tbaa !877  ; 2 uses
  %i.w = icmp ugt i32 %i.u, %i.v
  br i1 %i.w, label %_ZN3smt12theory_arithINS_5i_extEE23mark_row_for_bound_propEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1983
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.s
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !1993
  %.not.i = icmp eq i32 %i.ab, -1
  br i1 %.not.i, label %_ZN3smt12theory_arithINS_5i_extEE23mark_row_for_bound_propEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = add i32 %i.v, 1
  store i32 %i.ac, ptr %i.t, align 4, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !841 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !13 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !13
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.f, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %.pre.i.i = load ptr, ptr %i.ad, align 8, !tbaa !841 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !13
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

_ZN6vectorIjLb0EjE9push_backERKj.exit.i:          ; preds = %bb.f, %bb.e
  %i.al = phi i32 [ %.pre2.i.i, %bb.f ], [ %i.ah, %bb.e ] ; 2 uses
  %i.am = phi ptr [ %.pre.i.i, %bb.f ], [ %i.ae, %bb.e ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %1, ptr %i.ap, align 4, !tbaa !13
  %i.aq = add i32 %i.al, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !13
  br label %_ZN3smt12theory_arithINS_5i_extEE23mark_row_for_bound_propEj.exit

_ZN3smt12theory_arithINS_5i_extEE23mark_row_for_bound_propEj.exit: ; preds = %bb.a, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i, %bb.c, %bb.b, %_ZNK3smt12theory_arithINS_5i_extEE16propagation_modeEv.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1983 ; 2 uses
  %i.at = zext i32 %1 to i64
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.at ; 22 uses
  %i.av = zext i32 %3 to i64
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.av ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 8 uses
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !1986 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN3smt12theory_arithINS_5i_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit, label %_ZNK3smt12theory_arithINS_5i_extEE3row11num_entriesEv.exit.i

_ZNK3smt12theory_arithINS_5i_extEE3row11num_entriesEv.exit.i: ; preds = %_ZN3smt12theory_arithINS_5i_extEE23mark_row_for_bound_propEj.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !1991
  %i.bc = shl i32 %i.bb, 1
  %i.bd = getelementptr inbounds i8, ptr %i.ay, i64 -4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !13
  %i.bf = icmp ult i32 %i.bc, %i.be
  br i1 %i.bf, label %bb.g, label %_ZN3smt12theory_arithINS_5i_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit

bb.g:                                             ; preds = %_ZNK3smt12theory_arithINS_5i_extEE3row11num_entriesEv.exit.i
  tail call void @_ZN3smt12theory_arithINS_5i_extEE3row8compressER6vectorINS2_6columnELb1EjE(ptr noundef nonnull align 8 dereferenceable(20) %i.au, ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
  br label %_ZN3smt12theory_arithINS_5i_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit

_ZN3smt12theory_arithINS_5i_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit: ; preds = %_ZN3smt12theory_arithINS_5i_extEE23mark_row_for_bound_propEj.exit, %_ZNK3smt12theory_arithINS_5i_extEE3row11num_entriesEv.exit.i, %bb.g
  %i.bg = load ptr, ptr %i.aw, align 8, !tbaa !1986 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN3smt12theory_arithINS_5i_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit125, label %_ZNK3smt12theory_arithINS_5i_extEE3row11num_entriesEv.exit.i124

_ZNK3smt12theory_arithINS_5i_extEE3row11num_entriesEv.exit.i124: ; preds = %_ZN3smt12theory_arithINS_5i_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !1991
  %i.bk = shl i32 %i.bj, 1
  %i.bl = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !13
  %i.bn = icmp ult i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.h, label %_ZN3smt12theory_arithINS_5i_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit125

bb.h:                                             ; preds = %_ZNK3smt12theory_arithINS_5i_extEE3row11num_entriesEv.exit.i124
  tail call void @_ZN3smt12theory_arithINS_5i_extEE3row8compressER6vectorINS2_6columnELb1EjE(ptr noundef nonnull align 8 dereferenceable(20) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
  br label %_ZN3smt12theory_arithINS_5i_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit125

_ZN3smt12theory_arithINS_5i_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit125: ; preds = %_ZN3smt12theory_arithINS_5i_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit, %_ZNK3smt12theory_arithINS_5i_extEE3row11num_entriesEv.exit.i124, %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 8 uses
  %i.bp = load ptr, ptr %i.au, align 8, !tbaa !1986 ; 4 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit, label %_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE3endEv.exit.i

_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE3endEv.exit.i: ; preds = %_ZN3smt12theory_arithINS_5i_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit125
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !13 ; 2 uses
  %.not9.i = icmp eq i32 %i.bs, 0
  br i1 %.not9.i, label %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE3endEv.exit.i
  %i.bt = zext i32 %i.bs to i64
  %i.bu = mul nuw nsw i64 %i.bt, 40
  %i.bv = load ptr, ptr %i.bo, align 8            ; 3 uses
  %i.bw = add nsw i64 %i.bu, -40                  ; 2 uses
  %i.bx = udiv i64 %i.bw, 40                      ; 2 uses
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %i.bz = icmp ult i64 %i.bw, 40
  br i1 %i.bz, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.by, 1152921504606846974
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i.new
  %.011.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.cm, %bb.k ] ; 3 uses
  %.0810.i = phi ptr [ %i.bp, %.lr.ph.preheader.i.new ], [ %i.cl, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.k ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.0810.i, i64 32
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !1972 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, -1
  br i1 %i.cc, label %.lr.ph.i.1, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.cd = zext i32 %i.cb to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cd
  store i32 %.011.i, ptr %i.ce, align 4, !tbaa !13
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.i, %.lr.ph.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.0810.i, i64 72
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !1972 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, -1
  br i1 %i.ch, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.1
  %i.ci = or disjoint i32 %.011.i, 1
  %i.cj = zext i32 %i.cg to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cj
  store i32 %i.ci, ptr %i.ck, align 4, !tbaa !13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.1
  %i.cl = getelementptr inbounds nuw i8, ptr %.0810.i, i64 80 ; 2 uses
  %i.cm = add nuw i32 %.011.i, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2001

_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa: ; preds = %bb.k
  %i.cn = and i64 %i.bx, 1
  %lcmp.mod.not.not = icmp eq i64 %i.cn, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit

.lr.ph.i.epil.preheader:                          ; preds = %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.011.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.cm, %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa ]
  %.0810.i.epil.init = phi ptr [ %i.bp, %.lr.ph.preheader.i ], [ %i.cl, %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa ]
  %lcmp.mod228 = trunc i64 %i.by to i1
  tail call void @llvm.assume(i1 %lcmp.mod228)
  %i.co = getelementptr inbounds nuw i8, ptr %.0810.i.epil.init, i64 32
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !1972 ; 2 uses
  %i.cq = icmp eq i32 %i.cp, -1
  br i1 %i.cq, label %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.cr = zext i32 %i.cp to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cr
  store i32 %.011.i.epil.init, ptr %i.cs, align 4, !tbaa !13
  br label %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit

_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit: ; preds = %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa, %bb.l, %.lr.ph.i.epil.preheader, %_ZN3smt12theory_arithINS_5i_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit125, %_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE3endEv.exit.i
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cu = load i8, ptr %i.ct, align 4
  %i.cv = and i8 %i.cu, 1
  %i.cw = icmp eq i8 %i.cv, 0                     ; 2 uses
  %i.cx = load i32, ptr %2, align 8               ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 1
  %i.cz = select i1 %i.cw, i1 %i.cy, i1 false
  br i1 %i.cz, label %_ZNK8rational6is_oneEv.exit, label %bb.ad

_ZNK8rational6is_oneEv.exit:                      ; preds = %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.dc = load i8, ptr %i.db, align 4
  %i.dd = and i8 %i.dc, 1
  %i.de = icmp eq i8 %i.dd, 0
  %i.df = load i32, ptr %i.da, align 8
  %i.dg = icmp eq i32 %i.df, 1
  %i.dh = select i1 %i.de, i1 %i.dg, i1 false
  %.pre179 = load ptr, ptr %i.aw, align 8, !tbaa !1986 ; 5 uses
  br i1 %i.dh, label %bb.m, label %_ZNK8rational12is_minus_oneEv.exit.thread

bb.m:                                             ; preds = %_ZNK8rational6is_oneEv.exit
  %i.di = icmp eq ptr %.pre179, null
  br i1 %i.di, label %.loopexit, label %_ZN3smt12theory_arithINS_5i_extEE3row11end_entriesEv.exit

_ZN3smt12theory_arithINS_5i_extEE3row11end_entriesEv.exit: ; preds = %bb.m
  %i.dj = getelementptr inbounds i8, ptr %.pre179, i64 -4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !13 ; 2 uses
  %i.dl = zext i32 %i.dk to i64
  %i.dm = mul nuw nsw i64 %i.dl, 40
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre179, i64 %i.dm
  %.not123174 = icmp eq i32 %i.dk, 0
  br i1 %.not123174, label %.loopexit, label %.lr.ph176

.lr.ph176:                                        ; preds = %_ZN3smt12theory_arithINS_5i_extEE3row11end_entriesEv.exit
  %i.do = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph176, %bb.ac
  %.0175 = phi ptr [ %.pre179, %.lr.ph176 ], [ %i.hi, %bb.ac ] ; 8 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0175, i64 32
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !1972 ; 3 uses
  %i.ds = icmp eq i32 %i.dr, -1
  br i1 %i.ds, label %bb.ac, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dt = load ptr, ptr %i.bo, align 8, !tbaa !842
  %i.du = zext i32 %i.dr to i64                   ; 4 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !13 ; 2 uses
  %i.dx = icmp eq i32 %i.dw, -1
  br i1 %i.dx, label %bb.p, label %bb.z

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.dy = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN3smt12theory_arithINS_5i_extEE3row13add_row_entryERi(ptr noundef nonnull align 8 dereferenceable(20) %i.au, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 7 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  store i32 %i.dr, ptr %i.dz, align 8, !tbaa !1972
  %i.ea = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0175, i64 4
  %i.ec = load i8, ptr %i.eb, align 4
  %i.ed = and i8 %i.ec, 1
  %i.ee = icmp eq i8 %i.ed, 0
  br i1 %i.ee, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ef = load i32, ptr %.0175, align 8, !tbaa !20
  store i32 %i.ef, ptr %i.dy, align 8, !tbaa !20
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 4 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 4
  %i.ei = and i8 %i.eh, -2
  store i8 %i.ei, ptr %i.eg, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.r:                                             ; preds = %bb.p
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %i.dy, ptr noundef nonnull align 8 dereferenceable(32) %.0175)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.r, %bb.q
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0175, i64 16 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.0175, i64 20
  %i.em = load i8, ptr %i.el, align 4
  %i.en = and i8 %i.em, 1
  %i.eo = icmp eq i8 %i.en, 0
  br i1 %i.eo, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.ep = load i32, ptr %i.ek, align 8, !tbaa !20
  store i32 %i.ep, ptr %i.ej, align 8, !tbaa !20
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dy, i64 20 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 4
  %i.es = and i8 %i.er, -2
  store i8 %i.es, ptr %i.eq, align 4
  br label %_ZN8rationalaSERKS_.exit

bb.t:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %i.ej, ptr noundef nonnull align 8 dereferenceable(16) %i.ek)
  br label %_ZN8rationalaSERKS_.exit

_ZN8rationalaSERKS_.exit:                         ; preds = %bb.s, %bb.t
  %i.et = load ptr, ptr %i.ax, align 8, !tbaa !1996
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %i.du ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !1976
  %i.ex = add i32 %i.ew, 1
  store i32 %i.ex, ptr %i.ev, align 8, !tbaa !1976
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 12 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !1982 ; 3 uses
  %i.fa = icmp eq i32 %i.ez, -1
  %i.fb = load ptr, ptr %i.eu, align 8, !tbaa !1981 ; 3 uses
  br i1 %i.fa, label %bb.u, label %bb.y

bb.u:                                             ; preds = %_ZN8rationalaSERKS_.exit
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9col_entryELb0EjE4sizeEv.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fd = getelementptr inbounds i8, ptr %i.fb, i64 -4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !13
  br label %_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9col_entryELb0EjE4sizeEv.exit.i

_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9col_entryELb0EjE4sizeEv.exit.i: ; preds = %bb.v, %bb.u
  %.0.i.i = phi i32 [ %i.fe, %bb.v ], [ 0, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN3smt12theory_arithINS_5i_extEE9col_entryC1Ev(ptr noundef nonnull align 4 dereferenceable(8) %7)
  %i.ff = load ptr, ptr %i.eu, align 8, !tbaa !1981 ; 4 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9col_entryELb0EjE4sizeEv.exit.i
  %i.fh = getelementptr inbounds i8, ptr %i.ff, i64 -4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !13 ; 2 uses
  %i.fj = getelementptr inbounds i8, ptr %i.ff, i64 -8
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !13
  %i.fl = icmp eq i32 %i.fi, %i.fk
  br i1 %i.fl, label %bb.x, label %_ZN6vectorIN3smt12theory_arithINS0_5i_extEE9col_entryELb0EjE4backEv.exit.i

bb.x:                                             ; preds = %bb.w, %_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9col_entryELb0EjE4sizeEv.exit.i
  call void @_ZN6vectorIN3smt12theory_arithINS0_5i_extEE9col_entryELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eu)
  %.pre.i.i127 = load ptr, ptr %i.eu, align 8, !tbaa !1981 ; 2 uses
  %.phi.trans.insert.i.i128 = getelementptr inbounds i8, ptr %.pre.i.i127, i64 -4
  %.pre2.i.i129 = load i32, ptr %.phi.trans.insert.i.i128, align 4, !tbaa !13
  br label %_ZN6vectorIN3smt12theory_arithINS0_5i_extEE9col_entryELb0EjE4backEv.exit.i

_ZN6vectorIN3smt12theory_arithINS0_5i_extEE9col_entryELb0EjE4backEv.exit.i: ; preds = %bb.x, %bb.w
  %i.fm = phi i32 [ %.pre2.i.i129, %bb.x ], [ %i.fi, %bb.w ]
  %i.fn = phi ptr [ %.pre.i.i127, %bb.x ], [ %i.ff, %bb.w ]
  %i.fo = zext i32 %i.fm to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fo
  %i.fq = load i64, ptr %7, align 8
  store i64 %i.fq, ptr %i.fp, align 4
  %i.fr = load ptr, ptr %i.eu, align 8, !tbaa !1981 ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -4 ; 3 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !13
  %i.fu = add i32 %i.ft, 1
  store i32 %i.fu, ptr %i.fs, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.fv = load i32, ptr %i.fs, align 4, !tbaa !13
  %i.fw = add i32 %i.fv, -1
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fx
  br label %_ZN3smt12theory_arithINS_5i_extEE6column13add_col_entryERi.exit

bb.y:                                             ; preds = %_ZN8rationalaSERKS_.exit
  %i.fz = zext i32 %i.ez to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.fz ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !103
  store i32 %i.gc, ptr %i.ey, align 4, !tbaa !1982
  br label %_ZN3smt12theory_arithINS_5i_extEE6column13add_col_entryERi.exit

_ZN3smt12theory_arithINS_5i_extEE6column13add_col_entryERi.exit: ; preds = %_ZN6vectorIN3smt12theory_arithINS0_5i_extEE9col_entryELb0EjE4backEv.exit.i, %bb.y
end_hunk_5
begin_hunk_6_@_ZN3smt12theory_arithINS_5i_extEE15try_to_imply_eqEii:bb.a
  %i.bg = load i8, ptr %i.bf, align 4
  %i.bh = and i8 %i.bg, -2
  store i8 %i.bh, ptr %i.bf, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.e:                                             ; preds = %.noexc
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i unwind label %bb.j

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.bj = load i8, ptr %i.ar, align 4
  %i.bk = and i8 %i.bj, 1
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.bm = load i32, ptr %i.aq, align 8, !tbaa !20
  store i32 %i.bm, ptr %i.bi, align 8, !tbaa !20
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 20 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 4
  %i.bp = and i8 %i.bo, -2
  store i8 %i.bp, ptr %i.bn, align 4
  br label %bb.h

bb.g:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %i.bq = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %bb.h
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %.noexc.i, %bb.h
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #25
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.loopexit99

bb.j:                                             ; preds = %bb.g, %bb.e, %bb.c
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.bl

_ZNK3smt12theory_arithINS_5i_extEE11is_non_baseEi.exit.thread: ; preds = %_ZN3smt12theory_arithINS_5i_extEE3row5resetEv.exit._ZNK3smt12theory_arithINS_5i_extEE11is_non_baseEi.exit.thread_crit_edge, %_ZNK3smt12theory_arithINS_5i_extEE11is_non_baseEi.exit
  %i.bu = phi i32 [ %.pre111, %_ZN3smt12theory_arithINS_5i_extEE3row5resetEv.exit._ZNK3smt12theory_arithINS_5i_extEE11is_non_baseEi.exit.thread_crit_edge ], [ %i.aj, %_ZNK3smt12theory_arithINS_5i_extEE11is_non_baseEi.exit ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bw = and i32 %i.bu, 268435455
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !1983
  %i.by = zext nneg i32 %i.bw to i64
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1986 ; 4 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %.loopexit99, label %_ZN3smt12theory_arithINS_5i_extEE3row11end_entriesEv.exit

_ZN3smt12theory_arithINS_5i_extEE3row11end_entriesEv.exit: ; preds = %_ZNK3smt12theory_arithINS_5i_extEE11is_non_baseEi.exit.thread
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 -4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !13 ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %i.cf = mul nuw nsw i64 %i.ce, 40
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cf
  %.not100 = icmp eq i32 %i.cd, 0
  br i1 %.not100, label %.loopexit99, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3smt12theory_arithINS_5i_extEE3row11end_entriesEv.exit, %bb.p
  %.045101 = phi ptr [ %i.dg, %bb.p ], [ %i.ca, %_ZN3smt12theory_arithINS_5i_extEE3row11end_entriesEv.exit ] ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.045101, i64 32
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !1972 ; 3 uses
  %i.cj = icmp eq i32 %i.ci, -1
  %.not55 = icmp eq i32 %i.ci, %1
  %or.cond = or i1 %i.cj, %.not55
  br i1 %or.cond, label %bb.p, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.ck = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN3smt12theory_arithINS_5i_extEE3row13add_row_entryERi(ptr noundef nonnull align 8 dereferenceable(20) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.c) ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store i32 %i.ci, ptr %i.cl, align 8, !tbaa !1972
  %i.cm = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.045101, i64 4
  %i.co = load i8, ptr %i.cn, align 4
  %i.cp = and i8 %i.co, 1
  %i.cq = icmp eq i8 %i.cp, 0
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cr = load i32, ptr %.045101, align 8, !tbaa !20
  store i32 %i.cr, ptr %i.ck, align 8, !tbaa !20
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 4
  %i.cu = and i8 %i.ct, -2
  store i8 %i.cu, ptr %i.cs, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i68

bb.m:                                             ; preds = %bb.k
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %.045101)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i68

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i68: ; preds = %bb.m, %bb.l
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.045101, i64 16 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.045101, i64 20
  %i.cy = load i8, ptr %i.cx, align 4
  %i.cz = and i8 %i.cy, 1
  %i.da = icmp eq i8 %i.cz, 0
  br i1 %i.da, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i68
  %i.db = load i32, ptr %i.cw, align 8, !tbaa !20
  store i32 %i.db, ptr %i.cv, align 8, !tbaa !20
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ck, i64 20 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 4
  %i.de = and i8 %i.dd, -2
  store i8 %i.de, ptr %i.dc, align 4
  br label %_ZN3smt12theory_arithINS_5i_extEE17add_tmp_row_entryILb1EEEvRNS2_3rowERK8rationali.exit

bb.o:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i68
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.cw)
  br label %_ZN3smt12theory_arithINS_5i_extEE17add_tmp_row_entryILb1EEEvRNS2_3rowERK8rationali.exit

_ZN3smt12theory_arithINS_5i_extEE17add_tmp_row_entryILb1EEEvRNS2_3rowERK8rationali.exit: ; preds = %bb.n, %bb.o
  %i.df = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14
  call void @_ZN11mpz_managerILb1EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.df, ptr noundef nonnull align 8 dereferenceable(32) %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %_ZN3smt12theory_arithINS_5i_extEE17add_tmp_row_entryILb1EEEvRNS2_3rowERK8rationali.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %.045101, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.dg, %i.cg
  br i1 %.not, label %.loopexit99, label %.lr.ph, !llvm.loop !2246

.loopexit99:                                      ; preds = %bb.p, %_ZNK3smt12theory_arithINS_5i_extEE11is_non_baseEi.exit.thread, %_ZN3smt12theory_arithINS_5i_extEE3row11end_entriesEv.exit, %_ZN8rationalD2Ev.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 6 uses
  %i.di = load ptr, ptr %i.s, align 8, !tbaa !1986 ; 5 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit, label %_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE3endEv.exit.i

_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE3endEv.exit.i: ; preds = %.loopexit99
  %i.dk = getelementptr inbounds i8, ptr %i.di, i64 -4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !13 ; 2 uses
  %.not9.i = icmp eq i32 %i.dl, 0
  br i1 %.not9.i, label %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE3endEv.exit.i
  %i.dm = zext i32 %i.dl to i64
  %i.dn = mul nuw nsw i64 %i.dm, 40
  %i.do = load ptr, ptr %i.dh, align 8            ; 3 uses
  %i.dp = add nsw i64 %i.dn, -40                  ; 2 uses
  %i.dq = udiv i64 %i.dp, 40                      ; 2 uses
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %i.ds = icmp ult i64 %i.dp, 40
  br i1 %i.ds, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.dr, 1152921504606846974
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.preheader.i.new
  %.011.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.ef, %bb.s ] ; 3 uses
  %.0810.i = phi ptr [ %i.di, %.lr.ph.preheader.i.new ], [ %i.ee, %bb.s ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.s ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.0810.i, i64 32
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !1972 ; 2 uses
  %i.dv = icmp eq i32 %i.du, -1
  br i1 %i.dv, label %.lr.ph.i.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i
  %i.dw = zext i32 %i.du to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dw
  store i32 %.011.i, ptr %i.dx, align 4, !tbaa !13
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.q, %.lr.ph.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.0810.i, i64 72
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !1972 ; 2 uses
  %i.ea = icmp eq i32 %i.dz, -1
  br i1 %i.ea, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.1
  %i.eb = or disjoint i32 %.011.i, 1
  %i.ec = zext i32 %i.dz to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ec
  store i32 %i.eb, ptr %i.ed, align 4, !tbaa !13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i.1
  %i.ee = getelementptr inbounds nuw i8, ptr %.0810.i, i64 80 ; 2 uses
  %i.ef = add nuw i32 %.011.i, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2001

_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa: ; preds = %bb.s
  %i.eg = and i64 %i.dq, 1
  %lcmp.mod.not.not = icmp eq i64 %i.eg, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit

.lr.ph.i.epil.preheader:                          ; preds = %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.011.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ef, %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa ]
  %.0810.i.epil.init = phi ptr [ %i.di, %.lr.ph.preheader.i ], [ %i.ee, %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa ]
  %lcmp.mod136 = trunc i64 %i.dr to i1
  call void @llvm.assume(i1 %lcmp.mod136)
  %i.eh = getelementptr inbounds nuw i8, ptr %.0810.i.epil.init, i64 32
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !1972 ; 2 uses
  %i.ej = icmp eq i32 %i.ei, -1
  br i1 %i.ej, label %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ek = zext i32 %i.ei to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ek
  store i32 %.011.i.epil.init, ptr %i.el, align 4, !tbaa !13
  br label %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit

_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit: ; preds = %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa, %bb.t, %.lr.ph.i.epil.preheader, %.loopexit99, %_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE3endEv.exit.i
  %.phi.trans.insert106 = getelementptr inbounds nuw i8, ptr %0, i64 592
  %.pre107 = load ptr, ptr %.phi.trans.insert106, align 8, !tbaa !2066 ; 2 uses
  br i1 %.not.i63, label %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit._ZNK3smt12theory_arithINS_5i_extEE11is_non_baseEi.exit71.thread_crit_edge, label %_ZNK3smt12theory_arithINS_5i_extEE11is_non_baseEi.exit71

_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit._ZNK3smt12theory_arithINS_5i_extEE11is_non_baseEi.exit71.thread_crit_edge: ; preds = %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit
  %.phi.trans.insert112 = getelementptr inbounds nuw i8, ptr %.pre107, i64 17179869180
  %.pre113 = load i32, ptr %.phi.trans.insert112, align 4
  br label %_ZNK3smt12theory_arithINS_5i_extEE11is_non_baseEi.exit71.thread

_ZNK3smt12theory_arithINS_5i_extEE11is_non_baseEi.exit71: ; preds = %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit
  %i.em = zext i32 %2 to i64                      ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.pre107, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4            ; 2 uses
  %i.ep = and i32 %i.eo, 805306368
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.u, label %_ZNK3smt12theory_arithINS_5i_extEE11is_non_baseEi.exit71.thread

bb.u:                                             ; preds = %_ZNK3smt12theory_arithINS_5i_extEE11is_non_baseEi.exit71
  %i.er = load ptr, ptr %i.dh, align 8, !tbaa !842
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.em
  %i.et = load i32, ptr %i.es, align 4, !tbaa !13 ; 2 uses
  %i.eu = icmp eq i32 %i.et, -1
  br i1 %i.eu, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.ew = load i8, ptr %i.ev, align 4
  %i.ex = and i8 %i.ew, -4
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.ey, align 8, !tbaa !23
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store i32 1, ptr %i.ez, align 8, !tbaa !20
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 5 uses
  %i.fb = load i8, ptr %i.fa, align 4
  %i.fc = and i8 %i.fb, -4
  store i8 %i.fc, ptr %i.fa, align 4
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.fd, align 8, !tbaa !23
  %i.fe = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14
  store i32 -1, ptr %4, align 8, !tbaa !20
  store i8 %i.ex, ptr %i.ev, align 4
  call void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.fe, ptr noundef nonnull align 8 dereferenceable(16) %i.ez)
  store i32 1, ptr %i.ez, align 8, !tbaa !20
  %i.ff = load i8, ptr %i.fa, align 4
  %i.fg = and i8 %i.ff, -2
  store i8 %i.fg, ptr %i.fa, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.fh = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN3smt12theory_arithINS_5i_extEE3row13add_row_entryERi(ptr noundef nonnull align 8 dereferenceable(20) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc73 unwind label %bb.ac  ; 6 uses

.noexc73:                                         ; preds = %bb.v
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  store i32 %2, ptr %i.fi, align 8, !tbaa !1972
  %i.fj = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  %i.fk = load i8, ptr %i.ev, align 4
  %i.fl = and i8 %i.fk, 1
  %i.fm = icmp eq i8 %i.fl, 0
  br i1 %i.fm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.noexc73
  %i.fn = load i32, ptr %4, align 8, !tbaa !20
  store i32 %i.fn, ptr %i.fh, align 8, !tbaa !20
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 4 ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 4
  %i.fq = and i8 %i.fp, -2
  store i8 %i.fq, ptr %i.fo, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i72

bb.x:                                             ; preds = %.noexc73
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %i.fh, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i72 unwind label %bb.ac

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i72: ; preds = %bb.x, %bb.w
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %i.fs = load i8, ptr %i.fa, align 4
  %i.ft = and i8 %i.fs, 1
  %i.fu = icmp eq i8 %i.ft, 0
  br i1 %i.fu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i72
  %i.fv = load i32, ptr %i.ez, align 8, !tbaa !20
  store i32 %i.fv, ptr %i.fr, align 8, !tbaa !20
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fh, i64 20 ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 4
  %i.fy = and i8 %i.fx, -2
  store i8 %i.fy, ptr %i.fw, align 4
  br label %bb.aa

bb.z:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i72
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.fj, ptr noundef nonnull align 8 dereferenceable(16) %i.fr, ptr noundef nonnull align 8 dereferenceable(16) %i.ez)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.fz = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fz, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i77 unwind label %bb.ab

.noexc.i77:                                       ; preds = %bb.aa
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fz, ptr noundef nonnull align 8 dereferenceable(16) %i.ez)
          to label %_ZN8rationalD2Ev.exit78 unwind label %bb.ab

bb.ab:                                            ; preds = %.noexc.i77, %bb.aa
  %i.ga = landingpad { ptr, i32 }
          catch ptr null
  %i.gb = extractvalue { ptr, i32 } %i.ga, 0
  call void @__clang_call_terminate(ptr %i.gb) #25
  unreachable

_ZN8rationalD2Ev.exit78:                          ; preds = %.noexc.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.loopexit

bb.ac:                                            ; preds = %bb.z, %bb.x, %bb.v
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.bl

bb.ad:                                            ; preds = %bb.u
  %i.gd = zext i32 %i.et to i64                   ; 2 uses
  %i.ge = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %i.gd ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.gf = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 4
  %i.gh = and i8 %i.gg, -4
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.gi, align 8, !tbaa !23
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store i32 1, ptr %i.gj, align 8, !tbaa !20
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 4 uses
  %i.gl = load i8, ptr %i.gk, align 4
  %i.gm = and i8 %i.gl, -4
  store i8 %i.gm, ptr %i.gk, align 4
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr null, ptr %i.gn, align 8, !tbaa !23
  %i.go = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14
  store i32 -1, ptr %5, align 8, !tbaa !20
  store i8 %i.gh, ptr %i.gf, align 4
  call void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.go, ptr noundef nonnull align 8 dereferenceable(16) %i.gj)
  store i32 1, ptr %i.gj, align 8, !tbaa !20
  %i.gp = load i8, ptr %i.gk, align 4
  %i.gq = and i8 %i.gp, -2
  store i8 %i.gq, ptr %i.gk, align 4
  %i.gr = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14
  invoke void @_ZN11mpq_managerILb1EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.gr, ptr noundef nonnull align 8 dereferenceable(32) %i.ge, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ge)
          to label %_ZN8rationalpLERKS_.exit unwind label %bb.ag

_ZN8rationalpLERKS_.exit:                         ; preds = %bb.ad
  %i.gs = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gs, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc.i80 unwind label %bb.ae

.noexc.i80:                                       ; preds = %_ZN8rationalpLERKS_.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gs, ptr noundef nonnull align 8 dereferenceable(16) %i.gj)
          to label %_ZN8rationalD2Ev.exit81 unwind label %bb.ae

bb.ae:                                            ; preds = %.noexc.i80, %_ZN8rationalpLERKS_.exit
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #25
  unreachable

_ZN8rationalD2Ev.exit81:                          ; preds = %.noexc.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.gv = load i32, ptr %i.ge, align 8, !tbaa !20
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %_ZN8rationalD2Ev.exit81
  %i.gx = load ptr, ptr %i.s, align 8, !tbaa !1986
end_hunk_6
begin_hunk_7_@_ZN3smt12theory_arithINS_5i_extEE31try_to_minimize_rational_coeffsEv:bb.a
.thread:                                          ; preds = %_ZNK3smt12theory_arithINS_5i_extEE10is_boundedEi.exit, %.split282, %_ZNK3smt12theory_arithINS_5i_extEE7is_freeEi.exit195, %_ZNK3smt12theory_arithINS_5i_extEE7is_freeEi.exit.thread, %_ZN8rationalaSERKS_.exit194, %.split.i.i.i174, %.noexc175, %.critedge127, %bb.bz
  %.194 = phi i1 [ false, %_ZN8rationalaSERKS_.exit194 ], [ false, %bb.bz ], [ false, %.critedge127 ], [ false, %.split.i.i.i174 ], [ false, %_ZNK3smt12theory_arithINS_5i_extEE7is_freeEi.exit.thread ], [ %i.ry, %_ZNK3smt12theory_arithINS_5i_extEE7is_freeEi.exit195 ], [ false, %.noexc175 ], [ false, %.split282 ], [ false, %_ZNK3smt12theory_arithINS_5i_extEE10is_boundedEi.exit ]
  %.2 = phi i32 [ %i.rc, %_ZN8rationalaSERKS_.exit194 ], [ %.067248, %bb.bz ], [ %.067248, %.critedge127 ], [ %.067248, %.split.i.i.i174 ], [ %.067248, %_ZNK3smt12theory_arithINS_5i_extEE7is_freeEi.exit.thread ], [ %i.rc, %_ZNK3smt12theory_arithINS_5i_extEE7is_freeEi.exit195 ], [ %.067248, %.noexc175 ], [ %.067248, %.split282 ], [ %.067248, %_ZNK3smt12theory_arithINS_5i_extEE10is_boundedEi.exit ]
  %i.sc = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.sc, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc.i196 unwind label %bb.cx

.noexc.i196:                                      ; preds = %.thread
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.sc, ptr noundef nonnull align 8 dereferenceable(16) %i.ax)
          to label %_ZN8rationalD2Ev.exit197 unwind label %bb.cx

bb.cx:                                            ; preds = %.noexc.i196, %.thread
  %i.sd = landingpad { ptr, i32 }
          catch ptr null
  %i.se = extractvalue { ptr, i32 } %i.sd, 0
  call void @__clang_call_terminate(ptr %i.se) #25
  unreachable

_ZN8rationalD2Ev.exit197:                         ; preds = %.noexc.i196
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %_ZNK8rational12is_minus_oneEv.exit168

_ZNK8rational12is_minus_oneEv.exit168:            ; preds = %bb.br, %_ZN8rationalD2Ev.exit197
  %.295 = phi i1 [ %.194, %_ZN8rationalD2Ev.exit197 ], [ false, %bb.br ]
  %.3 = phi i32 [ %.2, %_ZN8rationalD2Ev.exit197 ], [ %.067248, %bb.br ] ; 2 uses
  %i.sf = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.sf, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc.i198 unwind label %bb.cy

.noexc.i198:                                      ; preds = %_ZNK8rational12is_minus_oneEv.exit168
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.sf, ptr noundef nonnull align 8 dereferenceable(16) %i.as)
          to label %_ZN8rationalD2Ev.exit199 unwind label %bb.cy

bb.cy:                                            ; preds = %.noexc.i198, %_ZNK8rational12is_minus_oneEv.exit168
  %i.sg = landingpad { ptr, i32 }
          catch ptr null
  %i.sh = extractvalue { ptr, i32 } %i.sg, 0
  call void @__clang_call_terminate(ptr %i.sh) #25
  unreachable

_ZN8rationalD2Ev.exit199:                         ; preds = %.noexc.i198
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br i1 %.295, label %_ZN8rationalD2Ev.exit199._crit_edge, label %bb.cz

bb.cz:                                            ; preds = %.split209, %_ZN8rationalD2Ev.exit199, %_ZNK3smt12theory_arithINS_5i_extEE8is_fixedEi.exit162, %.lr.ph249
  %.4 = phi i32 [ %.067248, %.lr.ph249 ], [ %.067248, %.split209 ], [ %.067248, %_ZNK3smt12theory_arithINS_5i_extEE8is_fixedEi.exit162 ], [ %.3, %_ZN8rationalD2Ev.exit199 ] ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.270244, i64 40 ; 2 uses
  %.not105 = icmp eq ptr %i.si, %i.go
  br i1 %.not105, label %_ZN8rationalD2Ev.exit199._crit_edge, label %.lr.ph249, !llvm.loop !2433

.body170:                                         ; preds = %bb.ca, %bb.cw, %bb.bu
  %.pn109.pn = phi { ptr, i32 } [ %i.nq, %bb.bu ], [ %i.op, %bb.ca ], [ %.pn106.pn, %bb.cw ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.body164

.body164:                                         ; preds = %bb.bq, %.body170
  %.pn109.pn.pn.pn = phi { ptr, i32 } [ %.pn109.pn, %.body170 ], [ %i.mv, %bb.bq ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.de

_ZN8rationalD2Ev.exit199._crit_edge:              ; preds = %bb.cz, %_ZN8rationalD2Ev.exit199
  %.5 = phi i32 [ %.3, %_ZN8rationalD2Ev.exit199 ], [ %.4, %bb.cz ] ; 2 uses
  %.not114 = icmp eq i32 %.5, -1
  br i1 %.not114, label %_ZN8rationalD2Ev.exit199._crit_edge.thread, label %bb.da

bb.da:                                            ; preds = %_ZN8rationalD2Ev.exit199._crit_edge
  %i.sj = trunc nuw nsw i64 %indvars.iv to i32
  invoke void @_ZN3smt12theory_arithINS_5i_extEE5pivotILb1EEEviiRK8rationalb(ptr noundef nonnull align 8 dereferenceable(1544) %0, i32 noundef %i.sj, i32 noundef %.5, ptr noundef nonnull align 8 dereferenceable(32) %7, i1 noundef zeroext false)
          to label %_ZN8rationalD2Ev.exit199._crit_edge.thread unwind label %.loopexit.split-lp

_ZN8rationalD2Ev.exit199._crit_edge.thread:       ; preds = %.critedge, %bb.da, %_ZN8rationalD2Ev.exit199._crit_edge
  %i.sk = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.sk, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc.i200 unwind label %bb.db

.noexc.i200:                                      ; preds = %_ZN8rationalD2Ev.exit199._crit_edge.thread
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.sk, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
          to label %_ZN8rationalD2Ev.exit201 unwind label %bb.db

bb.db:                                            ; preds = %.noexc.i200, %_ZN8rationalD2Ev.exit199._crit_edge.thread
  %i.sl = landingpad { ptr, i32 }
          catch ptr null
  %i.sm = extractvalue { ptr, i32 } %i.sl, 0
  call void @__clang_call_terminate(ptr %i.sm) #25
  unreachable

_ZN8rationalD2Ev.exit201:                         ; preds = %.noexc.i200
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.loopexit235

.loopexit235:                                     ; preds = %_ZN8rationalD2Ev.exit156, %_ZN8rationalD2Ev.exit142, %_ZN8rationalD2Ev.exit201
  %i.sn = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.sn, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc.i202 unwind label %bb.dc

.noexc.i202:                                      ; preds = %.loopexit235
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.sn, ptr noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_ZN8rationalD2Ev.exit203 unwind label %bb.dc

bb.dc:                                            ; preds = %.noexc.i202, %.loopexit235
  %i.so = landingpad { ptr, i32 }
          catch ptr null
  %i.sp = extractvalue { ptr, i32 } %i.so, 0
  call void @__clang_call_terminate(ptr %i.sp) #25
  unreachable

_ZN8rationalD2Ev.exit203:                         ; preds = %.noexc.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.dd

bb.dd:                                            ; preds = %_ZN8rationalD2Ev.exit203, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge256, label %bb.b, !llvm.loop !2434

bb.de:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.body164
  %.pn115 = phi { ptr, i32 } [ %.pn109.pn.pn.pn, %.body164 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.df

bb.df:                                            ; preds = %.loopexit230, %.loopexit.split-lp231, %bb.de, %.body150, %bb.ap, %.body
  %.pn117.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ap ], [ %.pn102.pn, %.body150 ], [ %.pn117.pn.pn, %.body ], [ %.pn115, %bb.de ], [ %lpad.loopexit232, %.loopexit230 ], [ %lpad.loopexit.split-lp233, %.loopexit.split-lp231 ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %.pn117.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN3smt12theory_arithINS_5i_extEE10mk_eq_atomEP4exprS4_(ptr noundef nonnull align 8 dereferenceable(1544) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = tail call noundef ptr @_ZN10arith_util5mk_eqEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %1, ptr noundef %2)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3smt12theory_arithINS_5i_extEE11add_tmp_rowERNS2_3rowERK8rationalRKS3_(ptr noundef nonnull align 8 dereferenceable(1544) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(20) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %4 = alloca %class.rational, align 8            ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 8 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !1986   ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit, label %_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE3endEv.exit.i

_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE3endEv.exit.i: ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !13   ; 2 uses
  %.not9.i = icmp eq i32 %i.h, 0
  br i1 %.not9.i, label %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE3endEv.exit.i
  %i.i = zext i32 %i.h to i64
  %i.j = mul nuw nsw i64 %i.i, 40
  %i.k = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.l = add nsw i64 %i.j, -40                    ; 2 uses
  %i.m = udiv i64 %i.l, 40                        ; 2 uses
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %i.o = icmp ult i64 %i.l, 40
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.n, 1152921504606846974
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i.new
  %.011.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.ab, %bb.d ] ; 3 uses
  %.0810.i = phi ptr [ %i.e, %.lr.ph.preheader.i.new ], [ %i.aa, %bb.d ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %.0810.i, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !1972 ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %.lr.ph.i.1, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.s
  store i32 %.011.i, ptr %i.t, align 4, !tbaa !13
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.b, %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.0810.i, i64 72
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1972 ; 2 uses
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.1
  %i.x = or disjoint i32 %.011.i, 1
  %i.y = zext i32 %i.v to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.y
  store i32 %i.x, ptr %i.z, align 4, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.1
  %i.aa = getelementptr inbounds nuw i8, ptr %.0810.i, i64 80 ; 2 uses
  %i.ab = add nuw i32 %.011.i, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2001

_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa: ; preds = %bb.d
  %i.ac = and i64 %i.m, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ac, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit

.lr.ph.i.epil.preheader:                          ; preds = %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.011.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ab, %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa ]
  %.0810.i.epil.init = phi ptr [ %i.e, %.lr.ph.preheader.i ], [ %i.aa, %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa ]
  %lcmp.mod141 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod141)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0810.i.epil.init, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1972 ; 2 uses
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ag = zext i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ag
  store i32 %.011.i.epil.init, ptr %i.ah, align 4, !tbaa !13
  br label %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit

_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit: ; preds = %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa, %bb.e, %.lr.ph.i.epil.preheader, %bb.a, %_ZNK6vectorIN3smt12theory_arithINS0_5i_extEE9row_entryELb1EjE3endEv.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aj = load i8, ptr %i.ai, align 4
  %i.ak = and i8 %i.aj, 1
  %i.al = icmp eq i8 %i.ak, 0                     ; 2 uses
  %i.am = load i32, ptr %2, align 8               ; 2 uses
  %i.an = icmp eq i32 %i.am, 1
  %i.ao = select i1 %i.al, i1 %i.an, i1 false
  br i1 %i.ao, label %_ZNK8rational6is_oneEv.exit, label %bb.r

_ZNK8rational6is_oneEv.exit:                      ; preds = %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ar = load i8, ptr %i.aq, align 4
  %i.as = and i8 %i.ar, 1
  %i.at = icmp eq i8 %i.as, 0
  %i.au = load i32, ptr %i.ap, align 8
  %i.av = icmp eq i32 %i.au, 1
  %i.aw = select i1 %i.at, i1 %i.av, i1 false
  br i1 %i.aw, label %bb.f, label %_ZNK8rational12is_minus_oneEv.exit.thread

bb.f:                                             ; preds = %_ZNK8rational6is_oneEv.exit
  %i.ax = load ptr, ptr %3, align 8, !tbaa !1986  ; 4 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.loopexit, label %_ZNK3smt12theory_arithINS_5i_extEE3row11end_entriesEv.exit

_ZNK3smt12theory_arithINS_5i_extEE3row11end_entriesEv.exit: ; preds = %bb.f
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !13 ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = mul nuw nsw i64 %i.bb, 40
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bc
  %.not82106 = icmp eq i32 %i.ba, 0
  br i1 %.not82106, label %.loopexit, label %.lr.ph108

.lr.ph108:                                        ; preds = %_ZNK3smt12theory_arithINS_5i_extEE3row11end_entriesEv.exit
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph108, %bb.q
  %.0107 = phi ptr [ %i.ax, %.lr.ph108 ], [ %i.cy, %bb.q ] ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0107, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !1972 ; 3 uses
  %i.bi = icmp eq i32 %i.bh, -1
  br i1 %i.bi, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !842
  %i.bk = zext i32 %i.bh to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !13 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, -1
  br i1 %i.bn, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.bo = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN3smt12theory_arithINS_5i_extEE3row13add_row_entryERi(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store i32 %i.bh, ptr %i.bp, align 8, !tbaa !1972
  %i.bq = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0107, i64 4
  %i.bs = load i8, ptr %i.br, align 4
  %i.bt = and i8 %i.bs, 1
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bv = load i32, ptr %.0107, align 8, !tbaa !20
  store i32 %i.bv, ptr %i.bo, align 8, !tbaa !20
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 4
  %i.by = and i8 %i.bx, -2
  store i8 %i.by, ptr %i.bw, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.k:                                             ; preds = %bb.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %.0107)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.k, %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0107, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0107, i64 20
  %i.cc = load i8, ptr %i.cb, align 4
  %i.cd = and i8 %i.cc, 1
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.cf = load i32, ptr %i.ca, align 8, !tbaa !20
  store i32 %i.cf, ptr %i.bz, align 8, !tbaa !20
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 20 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 4
  %i.ci = and i8 %i.ch, -2
  store i8 %i.ci, ptr %i.cg, align 4
  br label %_ZN8rationalaSERKS_.exit

bb.m:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %i.ca)
  br label %_ZN8rationalaSERKS_.exit

_ZN8rationalaSERKS_.exit:                         ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.q

bb.n:                                             ; preds = %bb.h
  %i.cj = load ptr, ptr %1, align 8, !tbaa !1986
  %i.ck = zext i32 %i.bm to i64                   ; 2 uses
  %i.cl = getelementptr inbounds nuw [40 x i8], ptr %i.cj, i64 %i.ck ; 3 uses
  %i.cm = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14
  call void @_ZN11mpq_managerILb1EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %.0107, ptr noundef nonnull align 8 dereferenceable(32) %i.cl)
  %i.cn = load i32, ptr %i.cl, align 8, !tbaa !20
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cp = load ptr, ptr %1, align 8, !tbaa !1986
  %i.cq = getelementptr inbounds nuw [40 x i8], ptr %i.cp, i64 %i.ck ; 2 uses
  %i.cr = load i32, ptr %i.be, align 8, !tbaa !1994
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 36
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !103
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  store i32 -1, ptr %i.ct, align 8, !tbaa !1972
  %i.cu = load i32, ptr %i.bf, align 8, !tbaa !1991
  %i.cv = add i32 %i.cu, -1
  store i32 %i.cv, ptr %i.bf, align 8, !tbaa !1991
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cw = load ptr, ptr %i.d, align 8, !tbaa !842
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.bk
  store i32 -1, ptr %i.cx, align 4, !tbaa !13
  br label %bb.q

bb.q:                                             ; preds = %_ZN8rationalaSERKS_.exit, %bb.p, %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %.0107, i64 40 ; 2 uses
  %.not82 = icmp eq ptr %i.cy, %i.bd
  br i1 %.not82, label %.loopexit, label %bb.g, !llvm.loop !2435

bb.r:                                             ; preds = %_ZNK3smt12theory_arithINS_5i_extEE3row12save_var_posER7svectorIijE.exit
  %i.cz = icmp eq i32 %i.am, -1
  %i.da = select i1 %i.al, i1 %i.cz, i1 false
  br i1 %i.da, label %_ZNK8rational12is_minus_oneEv.exit, label %_ZNK8rational12is_minus_oneEv.exit.thread

_ZNK8rational12is_minus_oneEv.exit:               ; preds = %bb.r
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.dd = load i8, ptr %i.dc, align 4
  %i.de = and i8 %i.dd, 1
  %i.df = icmp eq i8 %i.de, 0
  %i.dg = load i32, ptr %i.db, align 8
  %i.dh = icmp eq i32 %i.dg, 1
  %i.di = select i1 %i.df, i1 %i.dh, i1 false
  br i1 %i.di, label %bb.s, label %_ZNK8rational12is_minus_oneEv.exit.thread

bb.s:                                             ; preds = %_ZNK8rational12is_minus_oneEv.exit
  %i.dj = load ptr, ptr %3, align 8, !tbaa !1986  ; 4 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %.loopexit, label %_ZNK3smt12theory_arithINS_5i_extEE3row11end_entriesEv.exit86

_ZNK3smt12theory_arithINS_5i_extEE3row11end_entriesEv.exit86: ; preds = %bb.s
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 -4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !13 ; 2 uses
  %i.dn = zext i32 %i.dm to i64
  %i.do = mul nuw nsw i64 %i.dn, 40
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.do
  %.not81100 = icmp eq i32 %i.dm, 0
  br i1 %.not81100, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3smt12theory_arithINS_5i_extEE3row11end_entriesEv.exit86
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.t

end_hunk_7
begin_hunk_8_@_ZN3smt12theory_arithINS_7inf_extEE3row8compressER6vectorINS2_6columnELb1EjE:bb.a
  %i.am = load i32, ptr %i.ak, align 8, !tbaa !13
  %i.an = load i32, ptr %i.al, align 8, !tbaa !13
  store i32 %i.an, ptr %i.ak, align 8, !tbaa !13
  store i32 %i.am, ptr %i.al, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !126
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !126
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !126
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !126
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 4 uses
  %i.at = load i8, ptr %i.as, align 4             ; 2 uses
  %i.au = and i8 %i.at, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 5 uses
  %i.aw = load i8, ptr %i.av, align 4
  %i.ax = and i8 %i.aw, 2
  %i.ay = and i8 %i.at, -3
  %i.az = or disjoint i8 %i.ax, %i.ay
  store i8 %i.az, ptr %i.as, align 4
  %i.ba = load i8, ptr %i.av, align 4             ; 2 uses
  %i.bb = and i8 %i.ba, -3
  %i.bc = or disjoint i8 %i.bb, %i.au
  store i8 %i.bc, ptr %i.av, align 4
  %i.bd = load i8, ptr %i.as, align 4             ; 2 uses
  %i.be = and i8 %i.bd, 1
  %i.bf = and i8 %i.ba, 1
  %i.bg = and i8 %i.bd, -2
  %i.bh = or disjoint i8 %i.bg, %i.bf
  store i8 %i.bh, ptr %i.as, align 4
  %i.bi = load i8, ptr %i.av, align 4
  %i.bj = and i8 %i.bi, -2
  %i.bk = or disjoint i8 %i.bj, %i.be
  store i8 %i.bk, ptr %i.av, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i32 %i.h, ptr %i.bl, align 8, !tbaa !2801
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !103 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !103
  %i.bp = load ptr, ptr %1, align 8, !tbaa !2825
  %i.bq = zext i32 %i.h to i64
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !2810
  %i.bt = zext i32 %i.bn to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 %.02021, ptr %i.bv, align 4, !tbaa !103
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bw = add i32 %.02021, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.1 = phi i32 [ %.02021, %.lr.ph ], [ %i.bw, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2828

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr %0, align 8, !tbaa !2815  ; 2 uses
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %_ZN6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE6shrinkEj.exit, label %_ZN6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE3endEv.exit.i

_ZN6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE3endEv.exit.i: ; preds = %_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE4sizeEv.exit, %._crit_edge
  %i.bx = phi ptr [ %.pre, %._crit_edge ], [ %i.a, %_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE4sizeEv.exit ] ; 4 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = load i32, ptr %.in, align 8, !tbaa !2820 ; 3 uses
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 -4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !13 ; 2 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [40 x i8], ptr %i.bx, i64 %i.cb
  %.not78.i = icmp eq i32 %i.by, %i.ca
  br i1 %.not78.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE3endEv.exit.i
  %i.cd = zext i32 %i.by to i64
  %i.ce = getelementptr inbounds nuw [40 x i8], ptr %i.bx, i64 %i.cd
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN3smt12theory_arithINS_7inf_extEE9row_entryD2Ev.exit.i, %.lr.ph.preheader.i
  %.09.i = phi ptr [ %i.cj, %_ZN3smt12theory_arithINS_7inf_extEE9row_entryD2Ev.exit.i ], [ %i.ce, %.lr.ph.preheader.i ] ; 3 uses
  %i.cf = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cf, ptr noundef nonnull align 8 dereferenceable(40) %.09.i)
          to label %.noexc.i.i.i unwind label %bb.f

.noexc.i.i.i:                                     ; preds = %.lr.ph.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %i.cg)
          to label %_ZN3smt12theory_arithINS_7inf_extEE9row_entryD2Ev.exit.i unwind label %bb.f

bb.f:                                             ; preds = %.noexc.i.i.i, %.lr.ph.i
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  tail call void @__clang_call_terminate(ptr %i.ci) #25
  unreachable

_ZN3smt12theory_arithINS_7inf_extEE9row_entryD2Ev.exit.i: ; preds = %.noexc.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.09.i, i64 40 ; 2 uses
  %.not7.i = icmp eq ptr %i.cj, %i.cc
  br i1 %.not7.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !2829

._crit_edge.loopexit.i:                           ; preds = %_ZN3smt12theory_arithINS_7inf_extEE9row_entryD2Ev.exit.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !2815
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZN6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE3endEv.exit.i
  %i.ck = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.bx, %_ZN6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE3endEv.exit.i ]
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -4
  store i32 %i.by, ptr %i.cl, align 4, !tbaa !13
  br label %_ZN6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE6shrinkEj.exit

_ZN6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE6shrinkEj.exit: ; preds = %bb.a, %._crit_edge, %._crit_edge.i
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1, ptr %i.cm, align 8, !tbaa !2823
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN3smt12theory_arithINS_7inf_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2815   ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK3smt12theory_arithINS_7inf_extEE3row11num_entriesEv.exit.thread, label %_ZNK3smt12theory_arithINS_7inf_extEE3row11num_entriesEv.exit

_ZNK3smt12theory_arithINS_7inf_extEE3row11num_entriesEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !2820
  %i.e = shl i32 %i.d, 1
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13
  %i.h = icmp ult i32 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %_ZNK3smt12theory_arithINS_7inf_extEE3row11num_entriesEv.exit.thread

bb.b:                                             ; preds = %_ZNK3smt12theory_arithINS_7inf_extEE3row11num_entriesEv.exit
  tail call void @_ZN3smt12theory_arithINS_7inf_extEE3row8compressER6vectorINS2_6columnELb1EjE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNK3smt12theory_arithINS_7inf_extEE3row11num_entriesEv.exit.thread

_ZNK3smt12theory_arithINS_7inf_extEE3row11num_entriesEv.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK3smt12theory_arithINS_7inf_extEE3row11num_entriesEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2815   ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %._crit_edge, label %_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE3endEv.exit

_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE3endEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13   ; 2 uses
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE3endEv.exit
  %i.e = zext i32 %i.d to i64
  %i.f = mul nuw nsw i64 %i.e, 40
  %i.g = load ptr, ptr %1, align 8                ; 3 uses
  %i.h = add nsw i64 %i.f, -40                    ; 2 uses
  %i.i = udiv i64 %i.h, 40                        ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %i.k = icmp ult i64 %i.h, 40
  br i1 %i.k, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.j, 1152921504606846974
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph.preheader.new
  %.011 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.x, %bb.d ] ; 3 uses
  %.0810 = phi ptr [ %i.a, %.lr.ph.preheader.new ], [ %i.w, %bb.d ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %.0810, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !2801 ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %.lr.ph.1, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.o
  store i32 %.011, ptr %i.p, align 4, !tbaa !13
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0810, i64 72
  %i.r = load i32, ptr %i.q, align 8, !tbaa !2801 ; 2 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.1
  %i.t = or disjoint i32 %.011, 1
  %i.u = zext i32 %i.r to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.u
  store i32 %i.t, ptr %i.v, align 4, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.1
  %i.w = getelementptr inbounds nuw i8, ptr %.0810, i64 80 ; 2 uses
  %i.x = add i32 %.011, 2                         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !2830

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %i.y = and i64 %i.i, 1
  %lcmp.mod.not.not = icmp eq i64 %i.y, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %._crit_edge

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.011.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %.0810.epil.init = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod16 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod16)
  %i.z = getelementptr inbounds nuw i8, ptr %.0810.epil.init, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !2801 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.lr.ph.epil.preheader
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  store i32 %.011.epil.init, ptr %i.ad, align 4, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.e, %.lr.ph.epil.preheader, %bb.a, %_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE3endEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZNK3smt12theory_arithINS_7inf_extEE3row13reset_var_posER7svectorIijE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2815   ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %._crit_edge, label %_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE3endEv.exit

_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE3endEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = mul nuw nsw i64 %i.e, 40                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  %.not7 = icmp eq i32 %i.d, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE3endEv.exit
  %i.h = load ptr, ptr %1, align 8                ; 5 uses
  %i.i = add nsw i64 %i.f, -40                    ; 2 uses
  %i.j = udiv i64 %i.i, 40
  %i.k = add nuw nsw i64 %i.j, 1
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %bb.c
  %.08.prol = phi ptr [ %i.q, %bb.c ], [ %i.a, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.preheader ]
  %i.l = getelementptr inbounds nuw i8, ptr %.08.prol, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !2801 ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.prol
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.o
  store i32 -1, ptr %i.p, align 4, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.prol
  %i.q = getelementptr inbounds nuw i8, ptr %.08.prol, i64 40 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !2831

.lr.ph.prol.loopexit:                             ; preds = %bb.c, %.lr.ph.preheader
  %.08.unr = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.q, %bb.c ]
  %i.r = icmp ult i64 %i.i, 120
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.h
  %.08 = phi ptr [ %i.am, %bb.h ], [ %.08.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.08, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !2801 ; 2 uses
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %.lr.ph.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.v = zext i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.v
  store i32 -1, ptr %i.w, align 4, !tbaa !13
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.08, i64 72
  %i.y = load i32, ptr %i.x, align 8, !tbaa !2801 ; 2 uses
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %.lr.ph.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.1
  %i.aa = zext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.aa
  store i32 -1, ptr %i.ab, align 4, !tbaa !13
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.e, %.lr.ph.1
  %i.ac = getelementptr inbounds nuw i8, ptr %.08, i64 112
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !2801 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %.lr.ph.3, label %bb.f

bb.f:                                             ; preds = %.lr.ph.2
  %i.af = zext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.af
  store i32 -1, ptr %i.ag, align 4, !tbaa !13
  br label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.f, %.lr.ph.2
  %i.ah = getelementptr inbounds nuw i8, ptr %.08, i64 152
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !2801 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.3
  %i.ak = zext i32 %i.ai to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ak
  store i32 -1, ptr %i.al, align 4, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.3
  %i.am = getelementptr inbounds nuw i8, ptr %.08, i64 160 ; 2 uses
  %.not.3 = icmp eq ptr %i.am, %i.g
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !2832

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.h, %bb.a, %_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE3endEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK3smt12theory_arithINS_7inf_extEE3row12get_base_varEv(ptr noundef nonnull align 8 dereferenceable(20) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !2822
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK3smt12theory_arithINS_7inf_extEE3row7displayERSo(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !2822
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.c)
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.4, i64 noundef 2) ; 0 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !2815   ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %._crit_edge, label %_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE3endEv.exit

_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE3endEv.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !13   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = mul nuw nsw i64 %i.j, 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  %.not10 = icmp eq i32 %i.i, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE3endEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.011 = phi ptr [ %i.f, %.lr.ph ], [ %i.ai, %bb.e ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.011, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !2801
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.r = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14
  call void @_ZNK11mpq_managerILb1EE9to_stringB5cxx11ERK3mpq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(728) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %.011)
  %i.s = load ptr, ptr %2, align 8, !tbaa !136
  %i.t = load i64, ptr %i.m, align 8, !tbaa !139
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.s, i64 noundef %i.t)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.d ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %bb.c
  %i.v = load ptr, ptr %2, align 8, !tbaa !136    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.n
  br i1 %i.w, label %_ZlsRSoRK8rational.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.x = load i64, ptr %i.n, align 8, !tbaa !103
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #26
  br label %_ZlsRSoRK8rational.exit

bb.d:                                             ; preds = %bb.c
end_hunk_8
begin_hunk_9_@_ZN3smt12theory_arithINS_7inf_extEE8reset_ehEv:bb.a
  store i8 0, ptr %i.fy, align 8, !tbaa !3011
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 1548
  store i32 0, ptr %i.fz, align 4, !tbaa !3012
  tail call void @_ZN3smt6theory8reset_ehEv(ptr noundef nonnull align 8 dereferenceable(53) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3smt12theory_arithINS_7inf_extEE10erase_bv2aEj(ptr noundef nonnull align 8 dereferenceable(1736) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2919
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  store ptr null, ptr %i.d, align 8, !tbaa !2946
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3smt12theory_arithINS_7inf_extEE7add_rowEjRK8rationaljb(ptr noundef nonnull align 8 dereferenceable(1736) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.smt::theory_arith<smt::inf_ext>::col_entry", align 8 ; 4 uses
  %6 = alloca %"struct.smt::theory_arith<smt::inf_ext>::col_entry", align 8 ; 4 uses
  %7 = alloca %"struct.smt::theory_arith<smt::inf_ext>::col_entry", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %8 = alloca %class.rational, align 8            ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3047
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !3047
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1116
  %i.h = load i32, ptr %i.g, align 4, !tbaa !2921
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2918, !nonnull !36, !align !37 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 132
  %i.l = load i32, ptr %i.k, align 4, !tbaa !867
  %i.m = icmp ult i32 %i.h, %i.l
  br i1 %i.m, label %_ZNK3smt12theory_arithINS_7inf_extEE16propagation_modeEv.exit, label %_ZN3smt12theory_arithINS_7inf_extEE23mark_row_for_bound_propEj.exit

_ZNK3smt12theory_arithINS_7inf_extEE16propagation_modeEv.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !869
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %_ZN3smt12theory_arithINS_7inf_extEE23mark_row_for_bound_propEj.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK3smt12theory_arithINS_7inf_extEE16propagation_modeEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !841
  %i.s = zext i32 %1 to i64                       ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !13
  %i.v = load i32, ptr %i.p, align 8, !tbaa !877  ; 2 uses
  %i.w = icmp ugt i32 %i.u, %i.v
  br i1 %i.w, label %_ZN3smt12theory_arithINS_7inf_extEE23mark_row_for_bound_propEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2812
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.s
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !2822
  %.not.i = icmp eq i32 %i.ab, -1
  br i1 %.not.i, label %_ZN3smt12theory_arithINS_7inf_extEE23mark_row_for_bound_propEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = add i32 %i.v, 1
  store i32 %i.ac, ptr %i.t, align 4, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !841 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !13 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !13
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.f, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %.pre.i.i = load ptr, ptr %i.ad, align 8, !tbaa !841 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !13
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

_ZN6vectorIjLb0EjE9push_backERKj.exit.i:          ; preds = %bb.f, %bb.e
  %i.al = phi i32 [ %.pre2.i.i, %bb.f ], [ %i.ah, %bb.e ] ; 2 uses
  %i.am = phi ptr [ %.pre.i.i, %bb.f ], [ %i.ae, %bb.e ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %1, ptr %i.ap, align 4, !tbaa !13
  %i.aq = add i32 %i.al, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !13
  br label %_ZN3smt12theory_arithINS_7inf_extEE23mark_row_for_bound_propEj.exit

_ZN3smt12theory_arithINS_7inf_extEE23mark_row_for_bound_propEj.exit: ; preds = %bb.a, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i, %bb.c, %bb.b, %_ZNK3smt12theory_arithINS_7inf_extEE16propagation_modeEv.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2812 ; 2 uses
  %i.at = zext i32 %1 to i64
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.at ; 22 uses
  %i.av = zext i32 %3 to i64
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.av ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 8 uses
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !2815 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN3smt12theory_arithINS_7inf_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit, label %_ZNK3smt12theory_arithINS_7inf_extEE3row11num_entriesEv.exit.i

_ZNK3smt12theory_arithINS_7inf_extEE3row11num_entriesEv.exit.i: ; preds = %_ZN3smt12theory_arithINS_7inf_extEE23mark_row_for_bound_propEj.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !2820
  %i.bc = shl i32 %i.bb, 1
  %i.bd = getelementptr inbounds i8, ptr %i.ay, i64 -4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !13
  %i.bf = icmp ult i32 %i.bc, %i.be
  br i1 %i.bf, label %bb.g, label %_ZN3smt12theory_arithINS_7inf_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit

bb.g:                                             ; preds = %_ZNK3smt12theory_arithINS_7inf_extEE3row11num_entriesEv.exit.i
  tail call void @_ZN3smt12theory_arithINS_7inf_extEE3row8compressER6vectorINS2_6columnELb1EjE(ptr noundef nonnull align 8 dereferenceable(20) %i.au, ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
  br label %_ZN3smt12theory_arithINS_7inf_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit

_ZN3smt12theory_arithINS_7inf_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit: ; preds = %_ZN3smt12theory_arithINS_7inf_extEE23mark_row_for_bound_propEj.exit, %_ZNK3smt12theory_arithINS_7inf_extEE3row11num_entriesEv.exit.i, %bb.g
  %i.bg = load ptr, ptr %i.aw, align 8, !tbaa !2815 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN3smt12theory_arithINS_7inf_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit125, label %_ZNK3smt12theory_arithINS_7inf_extEE3row11num_entriesEv.exit.i124

_ZNK3smt12theory_arithINS_7inf_extEE3row11num_entriesEv.exit.i124: ; preds = %_ZN3smt12theory_arithINS_7inf_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !2820
  %i.bk = shl i32 %i.bj, 1
  %i.bl = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !13
  %i.bn = icmp ult i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.h, label %_ZN3smt12theory_arithINS_7inf_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit125

bb.h:                                             ; preds = %_ZNK3smt12theory_arithINS_7inf_extEE3row11num_entriesEv.exit.i124
  tail call void @_ZN3smt12theory_arithINS_7inf_extEE3row8compressER6vectorINS2_6columnELb1EjE(ptr noundef nonnull align 8 dereferenceable(20) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
  br label %_ZN3smt12theory_arithINS_7inf_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit125

_ZN3smt12theory_arithINS_7inf_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit125: ; preds = %_ZN3smt12theory_arithINS_7inf_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit, %_ZNK3smt12theory_arithINS_7inf_extEE3row11num_entriesEv.exit.i124, %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 8 uses
  %i.bp = load ptr, ptr %i.au, align 8, !tbaa !2815 ; 4 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit, label %_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE3endEv.exit.i

_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE3endEv.exit.i: ; preds = %_ZN3smt12theory_arithINS_7inf_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit125
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !13 ; 2 uses
  %.not9.i = icmp eq i32 %i.bs, 0
  br i1 %.not9.i, label %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE3endEv.exit.i
  %i.bt = zext i32 %i.bs to i64
  %i.bu = mul nuw nsw i64 %i.bt, 40
  %i.bv = load ptr, ptr %i.bo, align 8            ; 3 uses
  %i.bw = add nsw i64 %i.bu, -40                  ; 2 uses
  %i.bx = udiv i64 %i.bw, 40                      ; 2 uses
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %i.bz = icmp ult i64 %i.bw, 40
  br i1 %i.bz, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.by, 1152921504606846974
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i.new
  %.011.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.cm, %bb.k ] ; 3 uses
  %.0810.i = phi ptr [ %i.bp, %.lr.ph.preheader.i.new ], [ %i.cl, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.k ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.0810.i, i64 32
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !2801 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, -1
  br i1 %i.cc, label %.lr.ph.i.1, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.cd = zext i32 %i.cb to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cd
  store i32 %.011.i, ptr %i.ce, align 4, !tbaa !13
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.i, %.lr.ph.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.0810.i, i64 72
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !2801 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, -1
  br i1 %i.ch, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.1
  %i.ci = or disjoint i32 %.011.i, 1
  %i.cj = zext i32 %i.cg to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cj
  store i32 %i.ci, ptr %i.ck, align 4, !tbaa !13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.1
  %i.cl = getelementptr inbounds nuw i8, ptr %.0810.i, i64 80 ; 2 uses
  %i.cm = add nuw i32 %.011.i, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2830

_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa: ; preds = %bb.k
  %i.cn = and i64 %i.bx, 1
  %lcmp.mod.not.not = icmp eq i64 %i.cn, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit

.lr.ph.i.epil.preheader:                          ; preds = %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.011.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.cm, %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa ]
  %.0810.i.epil.init = phi ptr [ %i.bp, %.lr.ph.preheader.i ], [ %i.cl, %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa ]
  %lcmp.mod228 = trunc i64 %i.by to i1
  tail call void @llvm.assume(i1 %lcmp.mod228)
  %i.co = getelementptr inbounds nuw i8, ptr %.0810.i.epil.init, i64 32
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !2801 ; 2 uses
  %i.cq = icmp eq i32 %i.cp, -1
  br i1 %i.cq, label %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.cr = zext i32 %i.cp to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cr
  store i32 %.011.i.epil.init, ptr %i.cs, align 4, !tbaa !13
  br label %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit

_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit: ; preds = %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa, %bb.l, %.lr.ph.i.epil.preheader, %_ZN3smt12theory_arithINS_7inf_extEE3row18compress_if_neededER6vectorINS2_6columnELb1EjE.exit125, %_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE3endEv.exit.i
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cu = load i8, ptr %i.ct, align 4
  %i.cv = and i8 %i.cu, 1
  %i.cw = icmp eq i8 %i.cv, 0                     ; 2 uses
  %i.cx = load i32, ptr %2, align 8               ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 1
  %i.cz = select i1 %i.cw, i1 %i.cy, i1 false
  br i1 %i.cz, label %_ZNK8rational6is_oneEv.exit, label %bb.ad

_ZNK8rational6is_oneEv.exit:                      ; preds = %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.dc = load i8, ptr %i.db, align 4
  %i.dd = and i8 %i.dc, 1
  %i.de = icmp eq i8 %i.dd, 0
  %i.df = load i32, ptr %i.da, align 8
  %i.dg = icmp eq i32 %i.df, 1
  %i.dh = select i1 %i.de, i1 %i.dg, i1 false
  %.pre179 = load ptr, ptr %i.aw, align 8, !tbaa !2815 ; 5 uses
  br i1 %i.dh, label %bb.m, label %_ZNK8rational12is_minus_oneEv.exit.thread

bb.m:                                             ; preds = %_ZNK8rational6is_oneEv.exit
  %i.di = icmp eq ptr %.pre179, null
  br i1 %i.di, label %.loopexit, label %_ZN3smt12theory_arithINS_7inf_extEE3row11end_entriesEv.exit

_ZN3smt12theory_arithINS_7inf_extEE3row11end_entriesEv.exit: ; preds = %bb.m
  %i.dj = getelementptr inbounds i8, ptr %.pre179, i64 -4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !13 ; 2 uses
  %i.dl = zext i32 %i.dk to i64
  %i.dm = mul nuw nsw i64 %i.dl, 40
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre179, i64 %i.dm
  %.not123174 = icmp eq i32 %i.dk, 0
  br i1 %.not123174, label %.loopexit, label %.lr.ph176

.lr.ph176:                                        ; preds = %_ZN3smt12theory_arithINS_7inf_extEE3row11end_entriesEv.exit
  %i.do = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph176, %bb.ac
  %.0175 = phi ptr [ %.pre179, %.lr.ph176 ], [ %i.hi, %bb.ac ] ; 8 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0175, i64 32
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !2801 ; 3 uses
  %i.ds = icmp eq i32 %i.dr, -1
  br i1 %i.ds, label %bb.ac, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dt = load ptr, ptr %i.bo, align 8, !tbaa !842
  %i.du = zext i32 %i.dr to i64                   ; 4 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !13 ; 2 uses
  %i.dx = icmp eq i32 %i.dw, -1
  br i1 %i.dx, label %bb.p, label %bb.z

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.dy = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN3smt12theory_arithINS_7inf_extEE3row13add_row_entryERi(ptr noundef nonnull align 8 dereferenceable(20) %i.au, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 7 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  store i32 %i.dr, ptr %i.dz, align 8, !tbaa !2801
  %i.ea = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0175, i64 4
  %i.ec = load i8, ptr %i.eb, align 4
  %i.ed = and i8 %i.ec, 1
  %i.ee = icmp eq i8 %i.ed, 0
  br i1 %i.ee, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ef = load i32, ptr %.0175, align 8, !tbaa !20
  store i32 %i.ef, ptr %i.dy, align 8, !tbaa !20
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 4 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 4
  %i.ei = and i8 %i.eh, -2
  store i8 %i.ei, ptr %i.eg, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.r:                                             ; preds = %bb.p
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %i.dy, ptr noundef nonnull align 8 dereferenceable(32) %.0175)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.r, %bb.q
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0175, i64 16 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.0175, i64 20
  %i.em = load i8, ptr %i.el, align 4
  %i.en = and i8 %i.em, 1
  %i.eo = icmp eq i8 %i.en, 0
  br i1 %i.eo, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.ep = load i32, ptr %i.ek, align 8, !tbaa !20
  store i32 %i.ep, ptr %i.ej, align 8, !tbaa !20
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dy, i64 20 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 4
  %i.es = and i8 %i.er, -2
  store i8 %i.es, ptr %i.eq, align 4
  br label %_ZN8rationalaSERKS_.exit

bb.t:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %i.ej, ptr noundef nonnull align 8 dereferenceable(16) %i.ek)
  br label %_ZN8rationalaSERKS_.exit

_ZN8rationalaSERKS_.exit:                         ; preds = %bb.s, %bb.t
  %i.et = load ptr, ptr %i.ax, align 8, !tbaa !2825
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %i.du ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !2805
  %i.ex = add i32 %i.ew, 1
  store i32 %i.ex, ptr %i.ev, align 8, !tbaa !2805
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 12 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !2811 ; 3 uses
  %i.fa = icmp eq i32 %i.ez, -1
  %i.fb = load ptr, ptr %i.eu, align 8, !tbaa !2810 ; 3 uses
  br i1 %i.fa, label %bb.u, label %bb.y

bb.u:                                             ; preds = %_ZN8rationalaSERKS_.exit
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9col_entryELb0EjE4sizeEv.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fd = getelementptr inbounds i8, ptr %i.fb, i64 -4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !13
  br label %_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9col_entryELb0EjE4sizeEv.exit.i

_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9col_entryELb0EjE4sizeEv.exit.i: ; preds = %bb.v, %bb.u
  %.0.i.i = phi i32 [ %i.fe, %bb.v ], [ 0, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN3smt12theory_arithINS_7inf_extEE9col_entryC1Ev(ptr noundef nonnull align 4 dereferenceable(8) %7)
  %i.ff = load ptr, ptr %i.eu, align 8, !tbaa !2810 ; 4 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9col_entryELb0EjE4sizeEv.exit.i
  %i.fh = getelementptr inbounds i8, ptr %i.ff, i64 -4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !13 ; 2 uses
  %i.fj = getelementptr inbounds i8, ptr %i.ff, i64 -8
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !13
  %i.fl = icmp eq i32 %i.fi, %i.fk
  br i1 %i.fl, label %bb.x, label %_ZN6vectorIN3smt12theory_arithINS0_7inf_extEE9col_entryELb0EjE4backEv.exit.i

bb.x:                                             ; preds = %bb.w, %_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9col_entryELb0EjE4sizeEv.exit.i
  call void @_ZN6vectorIN3smt12theory_arithINS0_7inf_extEE9col_entryELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eu)
  %.pre.i.i127 = load ptr, ptr %i.eu, align 8, !tbaa !2810 ; 2 uses
  %.phi.trans.insert.i.i128 = getelementptr inbounds i8, ptr %.pre.i.i127, i64 -4
  %.pre2.i.i129 = load i32, ptr %.phi.trans.insert.i.i128, align 4, !tbaa !13
  br label %_ZN6vectorIN3smt12theory_arithINS0_7inf_extEE9col_entryELb0EjE4backEv.exit.i

_ZN6vectorIN3smt12theory_arithINS0_7inf_extEE9col_entryELb0EjE4backEv.exit.i: ; preds = %bb.x, %bb.w
  %i.fm = phi i32 [ %.pre2.i.i129, %bb.x ], [ %i.fi, %bb.w ]
  %i.fn = phi ptr [ %.pre.i.i127, %bb.x ], [ %i.ff, %bb.w ]
  %i.fo = zext i32 %i.fm to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fo
  %i.fq = load i64, ptr %7, align 8
  store i64 %i.fq, ptr %i.fp, align 4
  %i.fr = load ptr, ptr %i.eu, align 8, !tbaa !2810 ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -4 ; 3 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !13
  %i.fu = add i32 %i.ft, 1
  store i32 %i.fu, ptr %i.fs, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.fv = load i32, ptr %i.fs, align 4, !tbaa !13
  %i.fw = add i32 %i.fv, -1
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fx
  br label %_ZN3smt12theory_arithINS_7inf_extEE6column13add_col_entryERi.exit

bb.y:                                             ; preds = %_ZN8rationalaSERKS_.exit
  %i.fz = zext i32 %i.ez to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.fz ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !103
  store i32 %i.gc, ptr %i.ey, align 4, !tbaa !2811
  br label %_ZN3smt12theory_arithINS_7inf_extEE6column13add_col_entryERi.exit

_ZN3smt12theory_arithINS_7inf_extEE6column13add_col_entryERi.exit: ; preds = %_ZN6vectorIN3smt12theory_arithINS0_7inf_extEE9col_entryELb0EjE4backEv.exit.i, %bb.y
end_hunk_9
begin_hunk_10_@_ZN3smt12theory_arithINS_7inf_extEE15try_to_imply_eqEii:bb.a
  %i.bg = load i8, ptr %i.bf, align 4
  %i.bh = and i8 %i.bg, -2
  store i8 %i.bh, ptr %i.bf, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.e:                                             ; preds = %.noexc
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i unwind label %bb.j

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.bj = load i8, ptr %i.ar, align 4
  %i.bk = and i8 %i.bj, 1
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.bm = load i32, ptr %i.aq, align 8, !tbaa !20
  store i32 %i.bm, ptr %i.bi, align 8, !tbaa !20
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 20 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 4
  %i.bp = and i8 %i.bo, -2
  store i8 %i.bp, ptr %i.bn, align 4
  br label %bb.h

bb.g:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %i.bq = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %bb.h
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %.noexc.i, %bb.h
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #25
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.loopexit99

bb.j:                                             ; preds = %bb.g, %bb.e, %bb.c
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.bl

_ZNK3smt12theory_arithINS_7inf_extEE11is_non_baseEi.exit.thread: ; preds = %_ZN3smt12theory_arithINS_7inf_extEE3row5resetEv.exit._ZNK3smt12theory_arithINS_7inf_extEE11is_non_baseEi.exit.thread_crit_edge, %_ZNK3smt12theory_arithINS_7inf_extEE11is_non_baseEi.exit
  %i.bu = phi i32 [ %.pre111, %_ZN3smt12theory_arithINS_7inf_extEE3row5resetEv.exit._ZNK3smt12theory_arithINS_7inf_extEE11is_non_baseEi.exit.thread_crit_edge ], [ %i.aj, %_ZNK3smt12theory_arithINS_7inf_extEE11is_non_baseEi.exit ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.bw = and i32 %i.bu, 268435455
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !2812
  %i.by = zext nneg i32 %i.bw to i64
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !2815 ; 4 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %.loopexit99, label %_ZN3smt12theory_arithINS_7inf_extEE3row11end_entriesEv.exit

_ZN3smt12theory_arithINS_7inf_extEE3row11end_entriesEv.exit: ; preds = %_ZNK3smt12theory_arithINS_7inf_extEE11is_non_baseEi.exit.thread
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 -4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !13 ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %i.cf = mul nuw nsw i64 %i.ce, 40
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cf
  %.not100 = icmp eq i32 %i.cd, 0
  br i1 %.not100, label %.loopexit99, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3smt12theory_arithINS_7inf_extEE3row11end_entriesEv.exit, %bb.p
  %.045101 = phi ptr [ %i.dg, %bb.p ], [ %i.ca, %_ZN3smt12theory_arithINS_7inf_extEE3row11end_entriesEv.exit ] ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.045101, i64 32
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !2801 ; 3 uses
  %i.cj = icmp eq i32 %i.ci, -1
  %.not55 = icmp eq i32 %i.ci, %1
  %or.cond = or i1 %i.cj, %.not55
  br i1 %or.cond, label %bb.p, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.ck = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN3smt12theory_arithINS_7inf_extEE3row13add_row_entryERi(ptr noundef nonnull align 8 dereferenceable(20) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.c) ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store i32 %i.ci, ptr %i.cl, align 8, !tbaa !2801
  %i.cm = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.045101, i64 4
  %i.co = load i8, ptr %i.cn, align 4
  %i.cp = and i8 %i.co, 1
  %i.cq = icmp eq i8 %i.cp, 0
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cr = load i32, ptr %.045101, align 8, !tbaa !20
  store i32 %i.cr, ptr %i.ck, align 8, !tbaa !20
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 4
  %i.cu = and i8 %i.ct, -2
  store i8 %i.cu, ptr %i.cs, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i68

bb.m:                                             ; preds = %bb.k
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %.045101)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i68

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i68: ; preds = %bb.m, %bb.l
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.045101, i64 16 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.045101, i64 20
  %i.cy = load i8, ptr %i.cx, align 4
  %i.cz = and i8 %i.cy, 1
  %i.da = icmp eq i8 %i.cz, 0
  br i1 %i.da, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i68
  %i.db = load i32, ptr %i.cw, align 8, !tbaa !20
  store i32 %i.db, ptr %i.cv, align 8, !tbaa !20
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ck, i64 20 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 4
  %i.de = and i8 %i.dd, -2
  store i8 %i.de, ptr %i.dc, align 4
  br label %_ZN3smt12theory_arithINS_7inf_extEE17add_tmp_row_entryILb1EEEvRNS2_3rowERK8rationali.exit

bb.o:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i68
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.cw)
  br label %_ZN3smt12theory_arithINS_7inf_extEE17add_tmp_row_entryILb1EEEvRNS2_3rowERK8rationali.exit

_ZN3smt12theory_arithINS_7inf_extEE17add_tmp_row_entryILb1EEEvRNS2_3rowERK8rationali.exit: ; preds = %bb.n, %bb.o
  %i.df = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14
  call void @_ZN11mpz_managerILb1EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.df, ptr noundef nonnull align 8 dereferenceable(32) %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %_ZN3smt12theory_arithINS_7inf_extEE17add_tmp_row_entryILb1EEEvRNS2_3rowERK8rationali.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %.045101, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.dg, %i.cg
  br i1 %.not, label %.loopexit99, label %.lr.ph, !llvm.loop !3085

.loopexit99:                                      ; preds = %bb.p, %_ZNK3smt12theory_arithINS_7inf_extEE11is_non_baseEi.exit.thread, %_ZN3smt12theory_arithINS_7inf_extEE3row11end_entriesEv.exit, %_ZN8rationalD2Ev.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 6 uses
  %i.di = load ptr, ptr %i.s, align 8, !tbaa !2815 ; 5 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit, label %_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE3endEv.exit.i

_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE3endEv.exit.i: ; preds = %.loopexit99
  %i.dk = getelementptr inbounds i8, ptr %i.di, i64 -4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !13 ; 2 uses
  %.not9.i = icmp eq i32 %i.dl, 0
  br i1 %.not9.i, label %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE3endEv.exit.i
  %i.dm = zext i32 %i.dl to i64
  %i.dn = mul nuw nsw i64 %i.dm, 40
  %i.do = load ptr, ptr %i.dh, align 8            ; 3 uses
  %i.dp = add nsw i64 %i.dn, -40                  ; 2 uses
  %i.dq = udiv i64 %i.dp, 40                      ; 2 uses
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %i.ds = icmp ult i64 %i.dp, 40
  br i1 %i.ds, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.dr, 1152921504606846974
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.preheader.i.new
  %.011.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.ef, %bb.s ] ; 3 uses
  %.0810.i = phi ptr [ %i.di, %.lr.ph.preheader.i.new ], [ %i.ee, %bb.s ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.s ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.0810.i, i64 32
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !2801 ; 2 uses
  %i.dv = icmp eq i32 %i.du, -1
  br i1 %i.dv, label %.lr.ph.i.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i
  %i.dw = zext i32 %i.du to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dw
  store i32 %.011.i, ptr %i.dx, align 4, !tbaa !13
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.q, %.lr.ph.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.0810.i, i64 72
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !2801 ; 2 uses
  %i.ea = icmp eq i32 %i.dz, -1
  br i1 %i.ea, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.1
  %i.eb = or disjoint i32 %.011.i, 1
  %i.ec = zext i32 %i.dz to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ec
  store i32 %i.eb, ptr %i.ed, align 4, !tbaa !13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i.1
  %i.ee = getelementptr inbounds nuw i8, ptr %.0810.i, i64 80 ; 2 uses
  %i.ef = add nuw i32 %.011.i, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2830

_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa: ; preds = %bb.s
  %i.eg = and i64 %i.dq, 1
  %lcmp.mod.not.not = icmp eq i64 %i.eg, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit

.lr.ph.i.epil.preheader:                          ; preds = %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.011.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ef, %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa ]
  %.0810.i.epil.init = phi ptr [ %i.di, %.lr.ph.preheader.i ], [ %i.ee, %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa ]
  %lcmp.mod136 = trunc i64 %i.dr to i1
  call void @llvm.assume(i1 %lcmp.mod136)
  %i.eh = getelementptr inbounds nuw i8, ptr %.0810.i.epil.init, i64 32
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !2801 ; 2 uses
  %i.ej = icmp eq i32 %i.ei, -1
  br i1 %i.ej, label %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ek = zext i32 %i.ei to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ek
  store i32 %.011.i.epil.init, ptr %i.el, align 4, !tbaa !13
  br label %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit

_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit: ; preds = %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa, %bb.t, %.lr.ph.i.epil.preheader, %.loopexit99, %_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE3endEv.exit.i
  %.phi.trans.insert106 = getelementptr inbounds nuw i8, ptr %0, i64 720
  %.pre107 = load ptr, ptr %.phi.trans.insert106, align 8, !tbaa !2901 ; 2 uses
  br i1 %.not.i63, label %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit._ZNK3smt12theory_arithINS_7inf_extEE11is_non_baseEi.exit71.thread_crit_edge, label %_ZNK3smt12theory_arithINS_7inf_extEE11is_non_baseEi.exit71

_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit._ZNK3smt12theory_arithINS_7inf_extEE11is_non_baseEi.exit71.thread_crit_edge: ; preds = %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit
  %.phi.trans.insert112 = getelementptr inbounds nuw i8, ptr %.pre107, i64 17179869180
  %.pre113 = load i32, ptr %.phi.trans.insert112, align 4
  br label %_ZNK3smt12theory_arithINS_7inf_extEE11is_non_baseEi.exit71.thread

_ZNK3smt12theory_arithINS_7inf_extEE11is_non_baseEi.exit71: ; preds = %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit
  %i.em = zext i32 %2 to i64                      ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.pre107, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4            ; 2 uses
  %i.ep = and i32 %i.eo, 805306368
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.u, label %_ZNK3smt12theory_arithINS_7inf_extEE11is_non_baseEi.exit71.thread

bb.u:                                             ; preds = %_ZNK3smt12theory_arithINS_7inf_extEE11is_non_baseEi.exit71
  %i.er = load ptr, ptr %i.dh, align 8, !tbaa !842
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.em
  %i.et = load i32, ptr %i.es, align 4, !tbaa !13 ; 2 uses
  %i.eu = icmp eq i32 %i.et, -1
  br i1 %i.eu, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.ew = load i8, ptr %i.ev, align 4
  %i.ex = and i8 %i.ew, -4
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.ey, align 8, !tbaa !23
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store i32 1, ptr %i.ez, align 8, !tbaa !20
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 5 uses
  %i.fb = load i8, ptr %i.fa, align 4
  %i.fc = and i8 %i.fb, -4
  store i8 %i.fc, ptr %i.fa, align 4
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.fd, align 8, !tbaa !23
  %i.fe = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14
  store i32 -1, ptr %4, align 8, !tbaa !20
  store i8 %i.ex, ptr %i.ev, align 4
  call void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.fe, ptr noundef nonnull align 8 dereferenceable(16) %i.ez)
  store i32 1, ptr %i.ez, align 8, !tbaa !20
  %i.ff = load i8, ptr %i.fa, align 4
  %i.fg = and i8 %i.ff, -2
  store i8 %i.fg, ptr %i.fa, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.fh = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN3smt12theory_arithINS_7inf_extEE3row13add_row_entryERi(ptr noundef nonnull align 8 dereferenceable(20) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc73 unwind label %bb.ac  ; 6 uses

.noexc73:                                         ; preds = %bb.v
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  store i32 %2, ptr %i.fi, align 8, !tbaa !2801
  %i.fj = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  %i.fk = load i8, ptr %i.ev, align 4
  %i.fl = and i8 %i.fk, 1
  %i.fm = icmp eq i8 %i.fl, 0
  br i1 %i.fm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.noexc73
  %i.fn = load i32, ptr %4, align 8, !tbaa !20
  store i32 %i.fn, ptr %i.fh, align 8, !tbaa !20
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 4 ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 4
  %i.fq = and i8 %i.fp, -2
  store i8 %i.fq, ptr %i.fo, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i72

bb.x:                                             ; preds = %.noexc73
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %i.fh, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i72 unwind label %bb.ac

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i72: ; preds = %bb.x, %bb.w
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %i.fs = load i8, ptr %i.fa, align 4
  %i.ft = and i8 %i.fs, 1
  %i.fu = icmp eq i8 %i.ft, 0
  br i1 %i.fu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i72
  %i.fv = load i32, ptr %i.ez, align 8, !tbaa !20
  store i32 %i.fv, ptr %i.fr, align 8, !tbaa !20
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fh, i64 20 ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 4
  %i.fy = and i8 %i.fx, -2
  store i8 %i.fy, ptr %i.fw, align 4
  br label %bb.aa

bb.z:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i72
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.fj, ptr noundef nonnull align 8 dereferenceable(16) %i.fr, ptr noundef nonnull align 8 dereferenceable(16) %i.ez)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.fz = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fz, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i77 unwind label %bb.ab

.noexc.i77:                                       ; preds = %bb.aa
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fz, ptr noundef nonnull align 8 dereferenceable(16) %i.ez)
          to label %_ZN8rationalD2Ev.exit78 unwind label %bb.ab

bb.ab:                                            ; preds = %.noexc.i77, %bb.aa
  %i.ga = landingpad { ptr, i32 }
          catch ptr null
  %i.gb = extractvalue { ptr, i32 } %i.ga, 0
  call void @__clang_call_terminate(ptr %i.gb) #25
  unreachable

_ZN8rationalD2Ev.exit78:                          ; preds = %.noexc.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.loopexit

bb.ac:                                            ; preds = %bb.z, %bb.x, %bb.v
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.bl

bb.ad:                                            ; preds = %bb.u
  %i.gd = zext i32 %i.et to i64                   ; 2 uses
  %i.ge = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %i.gd ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.gf = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 4
  %i.gh = and i8 %i.gg, -4
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.gi, align 8, !tbaa !23
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store i32 1, ptr %i.gj, align 8, !tbaa !20
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 4 uses
  %i.gl = load i8, ptr %i.gk, align 4
  %i.gm = and i8 %i.gl, -4
  store i8 %i.gm, ptr %i.gk, align 4
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr null, ptr %i.gn, align 8, !tbaa !23
  %i.go = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14
  store i32 -1, ptr %5, align 8, !tbaa !20
  store i8 %i.gh, ptr %i.gf, align 4
  call void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.go, ptr noundef nonnull align 8 dereferenceable(16) %i.gj)
  store i32 1, ptr %i.gj, align 8, !tbaa !20
  %i.gp = load i8, ptr %i.gk, align 4
  %i.gq = and i8 %i.gp, -2
  store i8 %i.gq, ptr %i.gk, align 4
  %i.gr = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14
  invoke void @_ZN11mpq_managerILb1EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.gr, ptr noundef nonnull align 8 dereferenceable(32) %i.ge, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ge)
          to label %_ZN8rationalpLERKS_.exit unwind label %bb.ag

_ZN8rationalpLERKS_.exit:                         ; preds = %bb.ad
  %i.gs = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gs, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc.i80 unwind label %bb.ae

.noexc.i80:                                       ; preds = %_ZN8rationalpLERKS_.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gs, ptr noundef nonnull align 8 dereferenceable(16) %i.gj)
          to label %_ZN8rationalD2Ev.exit81 unwind label %bb.ae

bb.ae:                                            ; preds = %.noexc.i80, %_ZN8rationalpLERKS_.exit
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #25
  unreachable

_ZN8rationalD2Ev.exit81:                          ; preds = %.noexc.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.gv = load i32, ptr %i.ge, align 8, !tbaa !20
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %_ZN8rationalD2Ev.exit81
  %i.gx = load ptr, ptr %i.s, align 8, !tbaa !2815
end_hunk_10
begin_hunk_11_@_ZN3smt12theory_arithINS_7inf_extEE31try_to_minimize_rational_coeffsEv:bb.a
.thread:                                          ; preds = %_ZNK3smt12theory_arithINS_7inf_extEE10is_boundedEi.exit, %.split253, %_ZNK3smt12theory_arithINS_7inf_extEE7is_freeEi.exit175, %_ZNK3smt12theory_arithINS_7inf_extEE7is_freeEi.exit.thread, %_ZN8rationalaSERKS_.exit174, %.split.i.i.i, %.noexc162, %.critedge127, %bb.br
  %.194 = phi i1 [ false, %_ZN8rationalaSERKS_.exit174 ], [ false, %bb.br ], [ false, %.critedge127 ], [ false, %.split.i.i.i ], [ false, %_ZNK3smt12theory_arithINS_7inf_extEE7is_freeEi.exit.thread ], [ %i.nr, %_ZNK3smt12theory_arithINS_7inf_extEE7is_freeEi.exit175 ], [ false, %.noexc162 ], [ false, %.split253 ], [ false, %_ZNK3smt12theory_arithINS_7inf_extEE10is_boundedEi.exit ]
  %.2 = phi i32 [ %i.mv, %_ZN8rationalaSERKS_.exit174 ], [ %.067223, %bb.br ], [ %.067223, %.critedge127 ], [ %.067223, %.split.i.i.i ], [ %.067223, %_ZNK3smt12theory_arithINS_7inf_extEE7is_freeEi.exit.thread ], [ %i.mv, %_ZNK3smt12theory_arithINS_7inf_extEE7is_freeEi.exit175 ], [ %.067223, %.noexc162 ], [ %.067223, %.split253 ], [ %.067223, %_ZNK3smt12theory_arithINS_7inf_extEE10is_boundedEi.exit ]
  %i.nv = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.nv, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc.i176 unwind label %bb.ch

.noexc.i176:                                      ; preds = %.thread
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.nv, ptr noundef nonnull align 8 dereferenceable(16) %i.ax)
          to label %_ZN8rationalD2Ev.exit177 unwind label %bb.ch

bb.ch:                                            ; preds = %.noexc.i176, %.thread
  %i.nw = landingpad { ptr, i32 }
          catch ptr null
  %i.nx = extractvalue { ptr, i32 } %i.nw, 0
  call void @__clang_call_terminate(ptr %i.nx) #25
  unreachable

_ZN8rationalD2Ev.exit177:                         ; preds = %.noexc.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %_ZNK8rational12is_minus_oneEv.exit157

_ZNK8rational12is_minus_oneEv.exit157:            ; preds = %bb.bj, %_ZN8rationalD2Ev.exit177
  %.295 = phi i1 [ %.194, %_ZN8rationalD2Ev.exit177 ], [ false, %bb.bj ]
  %.3 = phi i32 [ %.2, %_ZN8rationalD2Ev.exit177 ], [ %.067223, %bb.bj ] ; 2 uses
  %i.ny = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ny, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc.i178 unwind label %bb.ci

.noexc.i178:                                      ; preds = %_ZNK8rational12is_minus_oneEv.exit157
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ny, ptr noundef nonnull align 8 dereferenceable(16) %i.as)
          to label %_ZN8rationalD2Ev.exit179 unwind label %bb.ci

bb.ci:                                            ; preds = %.noexc.i178, %_ZNK8rational12is_minus_oneEv.exit157
  %i.nz = landingpad { ptr, i32 }
          catch ptr null
  %i.oa = extractvalue { ptr, i32 } %i.nz, 0
  call void @__clang_call_terminate(ptr %i.oa) #25
  unreachable

_ZN8rationalD2Ev.exit179:                         ; preds = %.noexc.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br i1 %.295, label %_ZN8rationalD2Ev.exit179._crit_edge, label %bb.cj

bb.cj:                                            ; preds = %_ZN8rationalD2Ev.exit179, %bb.be, %.lr.ph224
  %.4 = phi i32 [ %.067223, %.lr.ph224 ], [ %.3, %_ZN8rationalD2Ev.exit179 ], [ %.067223, %bb.be ] ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.270219, i64 40 ; 2 uses
  %.not105 = icmp eq ptr %i.ob, %i.gl
  br i1 %.not105, label %_ZN8rationalD2Ev.exit179._crit_edge, label %.lr.ph224, !llvm.loop !3245

.body159:                                         ; preds = %bb.bs, %bb.cg, %bb.bm
  %.pn109.pn = phi { ptr, i32 } [ %i.ko, %bb.bm ], [ %i.ln, %bb.bs ], [ %.pn106.pn, %bb.cg ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.body153

.body153:                                         ; preds = %bb.bi, %.body159
  %.pn109.pn.pn.pn = phi { ptr, i32 } [ %.pn109.pn, %.body159 ], [ %i.jt, %bb.bi ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.co

_ZN8rationalD2Ev.exit179._crit_edge:              ; preds = %bb.cj, %_ZN8rationalD2Ev.exit179
  %.5 = phi i32 [ %.3, %_ZN8rationalD2Ev.exit179 ], [ %.4, %bb.cj ] ; 2 uses
  %.not114 = icmp eq i32 %.5, -1
  br i1 %.not114, label %_ZN8rationalD2Ev.exit179._crit_edge.thread, label %bb.ck

bb.ck:                                            ; preds = %_ZN8rationalD2Ev.exit179._crit_edge
  %i.oc = trunc nuw nsw i64 %indvars.iv to i32
  invoke void @_ZN3smt12theory_arithINS_7inf_extEE5pivotILb1EEEviiRK8rationalb(ptr noundef nonnull align 8 dereferenceable(1736) %0, i32 noundef %i.oc, i32 noundef %.5, ptr noundef nonnull align 8 dereferenceable(32) %7, i1 noundef zeroext false)
          to label %_ZN8rationalD2Ev.exit179._crit_edge.thread unwind label %.loopexit.split-lp

_ZN8rationalD2Ev.exit179._crit_edge.thread:       ; preds = %.critedge, %bb.ck, %_ZN8rationalD2Ev.exit179._crit_edge
  %i.od = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.od, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc.i180 unwind label %bb.cl

.noexc.i180:                                      ; preds = %_ZN8rationalD2Ev.exit179._crit_edge.thread
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.od, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
          to label %_ZN8rationalD2Ev.exit181 unwind label %bb.cl

bb.cl:                                            ; preds = %.noexc.i180, %_ZN8rationalD2Ev.exit179._crit_edge.thread
  %i.oe = landingpad { ptr, i32 }
          catch ptr null
  %i.of = extractvalue { ptr, i32 } %i.oe, 0
  call void @__clang_call_terminate(ptr %i.of) #25
  unreachable

_ZN8rationalD2Ev.exit181:                         ; preds = %.noexc.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.loopexit210

.loopexit210:                                     ; preds = %_ZN8rationalD2Ev.exit151, %_ZN8rationalD2Ev.exit143, %_ZN8rationalD2Ev.exit181
  %i.og = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.og, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc.i182 unwind label %bb.cm

.noexc.i182:                                      ; preds = %.loopexit210
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.og, ptr noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_ZN8rationalD2Ev.exit183 unwind label %bb.cm

bb.cm:                                            ; preds = %.noexc.i182, %.loopexit210
  %i.oh = landingpad { ptr, i32 }
          catch ptr null
  %i.oi = extractvalue { ptr, i32 } %i.oh, 0
  call void @__clang_call_terminate(ptr %i.oi) #25
  unreachable

_ZN8rationalD2Ev.exit183:                         ; preds = %.noexc.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.cn

bb.cn:                                            ; preds = %_ZN8rationalD2Ev.exit183, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge231, label %bb.b, !llvm.loop !3246

bb.co:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.body153
  %.pn115 = phi { ptr, i32 } [ %.pn109.pn.pn.pn, %.body153 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.cp

bb.cp:                                            ; preds = %.loopexit205, %.loopexit.split-lp206, %bb.co, %.body145, %bb.ap, %.body
  %.pn117.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ap ], [ %.pn102.pn, %.body145 ], [ %.pn117.pn.pn, %.body ], [ %.pn115, %bb.co ], [ %lpad.loopexit207, %.loopexit205 ], [ %lpad.loopexit.split-lp208, %.loopexit.split-lp206 ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %.pn117.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN3smt12theory_arithINS_7inf_extEE10mk_eq_atomEP4exprS4_(ptr noundef nonnull align 8 dereferenceable(1736) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.b = tail call noundef ptr @_ZN10arith_util5mk_eqEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %1, ptr noundef %2)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3smt12theory_arithINS_7inf_extEE11add_tmp_rowERNS2_3rowERK8rationalRKS3_(ptr noundef nonnull align 8 dereferenceable(1736) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(20) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %4 = alloca %class.rational, align 8            ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 8 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !2815   ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit, label %_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE3endEv.exit.i

_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE3endEv.exit.i: ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !13   ; 2 uses
  %.not9.i = icmp eq i32 %i.h, 0
  br i1 %.not9.i, label %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE3endEv.exit.i
  %i.i = zext i32 %i.h to i64
  %i.j = mul nuw nsw i64 %i.i, 40
  %i.k = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.l = add nsw i64 %i.j, -40                    ; 2 uses
  %i.m = udiv i64 %i.l, 40                        ; 2 uses
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %i.o = icmp ult i64 %i.l, 40
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.n, 1152921504606846974
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i.new
  %.011.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.ab, %bb.d ] ; 3 uses
  %.0810.i = phi ptr [ %i.e, %.lr.ph.preheader.i.new ], [ %i.aa, %bb.d ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %.0810.i, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !2801 ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %.lr.ph.i.1, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.s
  store i32 %.011.i, ptr %i.t, align 4, !tbaa !13
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.b, %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.0810.i, i64 72
  %i.v = load i32, ptr %i.u, align 8, !tbaa !2801 ; 2 uses
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.1
  %i.x = or disjoint i32 %.011.i, 1
  %i.y = zext i32 %i.v to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.y
  store i32 %i.x, ptr %i.z, align 4, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.1
  %i.aa = getelementptr inbounds nuw i8, ptr %.0810.i, i64 80 ; 2 uses
  %i.ab = add nuw i32 %.011.i, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2830

_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa: ; preds = %bb.d
  %i.ac = and i64 %i.m, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ac, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit

.lr.ph.i.epil.preheader:                          ; preds = %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.011.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ab, %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa ]
  %.0810.i.epil.init = phi ptr [ %i.e, %.lr.ph.preheader.i ], [ %i.aa, %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa ]
  %lcmp.mod141 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod141)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0810.i.epil.init, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !2801 ; 2 uses
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ag = zext i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ag
  store i32 %.011.i.epil.init, ptr %i.ah, align 4, !tbaa !13
  br label %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit

_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit: ; preds = %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit.loopexit.unr-lcssa, %bb.e, %.lr.ph.i.epil.preheader, %bb.a, %_ZNK6vectorIN3smt12theory_arithINS0_7inf_extEE9row_entryELb1EjE3endEv.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aj = load i8, ptr %i.ai, align 4
  %i.ak = and i8 %i.aj, 1
  %i.al = icmp eq i8 %i.ak, 0                     ; 2 uses
  %i.am = load i32, ptr %2, align 8               ; 2 uses
  %i.an = icmp eq i32 %i.am, 1
  %i.ao = select i1 %i.al, i1 %i.an, i1 false
  br i1 %i.ao, label %_ZNK8rational6is_oneEv.exit, label %bb.r

_ZNK8rational6is_oneEv.exit:                      ; preds = %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ar = load i8, ptr %i.aq, align 4
  %i.as = and i8 %i.ar, 1
  %i.at = icmp eq i8 %i.as, 0
  %i.au = load i32, ptr %i.ap, align 8
  %i.av = icmp eq i32 %i.au, 1
  %i.aw = select i1 %i.at, i1 %i.av, i1 false
  br i1 %i.aw, label %bb.f, label %_ZNK8rational12is_minus_oneEv.exit.thread

bb.f:                                             ; preds = %_ZNK8rational6is_oneEv.exit
  %i.ax = load ptr, ptr %3, align 8, !tbaa !2815  ; 4 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.loopexit, label %_ZNK3smt12theory_arithINS_7inf_extEE3row11end_entriesEv.exit

_ZNK3smt12theory_arithINS_7inf_extEE3row11end_entriesEv.exit: ; preds = %bb.f
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !13 ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = mul nuw nsw i64 %i.bb, 40
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bc
  %.not82106 = icmp eq i32 %i.ba, 0
  br i1 %.not82106, label %.loopexit, label %.lr.ph108

.lr.ph108:                                        ; preds = %_ZNK3smt12theory_arithINS_7inf_extEE3row11end_entriesEv.exit
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph108, %bb.q
  %.0107 = phi ptr [ %i.ax, %.lr.ph108 ], [ %i.cy, %bb.q ] ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0107, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !2801 ; 3 uses
  %i.bi = icmp eq i32 %i.bh, -1
  br i1 %i.bi, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !842
  %i.bk = zext i32 %i.bh to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !13 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, -1
  br i1 %i.bn, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.bo = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN3smt12theory_arithINS_7inf_extEE3row13add_row_entryERi(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store i32 %i.bh, ptr %i.bp, align 8, !tbaa !2801
  %i.bq = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0107, i64 4
  %i.bs = load i8, ptr %i.br, align 4
  %i.bt = and i8 %i.bs, 1
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bv = load i32, ptr %.0107, align 8, !tbaa !20
  store i32 %i.bv, ptr %i.bo, align 8, !tbaa !20
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 4
  %i.by = and i8 %i.bx, -2
  store i8 %i.by, ptr %i.bw, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.k:                                             ; preds = %bb.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %.0107)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.k, %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0107, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0107, i64 20
  %i.cc = load i8, ptr %i.cb, align 4
  %i.cd = and i8 %i.cc, 1
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.cf = load i32, ptr %i.ca, align 8, !tbaa !20
  store i32 %i.cf, ptr %i.bz, align 8, !tbaa !20
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 20 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 4
  %i.ci = and i8 %i.ch, -2
  store i8 %i.ci, ptr %i.cg, align 4
  br label %_ZN8rationalaSERKS_.exit

bb.m:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %i.ca)
  br label %_ZN8rationalaSERKS_.exit

_ZN8rationalaSERKS_.exit:                         ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.q

bb.n:                                             ; preds = %bb.h
  %i.cj = load ptr, ptr %1, align 8, !tbaa !2815
  %i.ck = zext i32 %i.bm to i64                   ; 2 uses
  %i.cl = getelementptr inbounds nuw [40 x i8], ptr %i.cj, i64 %i.ck ; 3 uses
  %i.cm = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !14
  call void @_ZN11mpq_managerILb1EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %.0107, ptr noundef nonnull align 8 dereferenceable(32) %i.cl)
  %i.cn = load i32, ptr %i.cl, align 8, !tbaa !20
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cp = load ptr, ptr %1, align 8, !tbaa !2815
  %i.cq = getelementptr inbounds nuw [40 x i8], ptr %i.cp, i64 %i.ck ; 2 uses
  %i.cr = load i32, ptr %i.be, align 8, !tbaa !2823
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 36
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !103
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  store i32 -1, ptr %i.ct, align 8, !tbaa !2801
  %i.cu = load i32, ptr %i.bf, align 8, !tbaa !2820
  %i.cv = add i32 %i.cu, -1
  store i32 %i.cv, ptr %i.bf, align 8, !tbaa !2820
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cw = load ptr, ptr %i.d, align 8, !tbaa !842
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.bk
  store i32 -1, ptr %i.cx, align 4, !tbaa !13
  br label %bb.q

bb.q:                                             ; preds = %_ZN8rationalaSERKS_.exit, %bb.p, %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %.0107, i64 40 ; 2 uses
  %.not82 = icmp eq ptr %i.cy, %i.bd
  br i1 %.not82, label %.loopexit, label %bb.g, !llvm.loop !3247

bb.r:                                             ; preds = %_ZNK3smt12theory_arithINS_7inf_extEE3row12save_var_posER7svectorIijE.exit
  %i.cz = icmp eq i32 %i.am, -1
  %i.da = select i1 %i.al, i1 %i.cz, i1 false
  br i1 %i.da, label %_ZNK8rational12is_minus_oneEv.exit, label %_ZNK8rational12is_minus_oneEv.exit.thread

_ZNK8rational12is_minus_oneEv.exit:               ; preds = %bb.r
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.dd = load i8, ptr %i.dc, align 4
  %i.de = and i8 %i.dd, 1
  %i.df = icmp eq i8 %i.de, 0
  %i.dg = load i32, ptr %i.db, align 8
  %i.dh = icmp eq i32 %i.dg, 1
  %i.di = select i1 %i.df, i1 %i.dh, i1 false
  br i1 %i.di, label %bb.s, label %_ZNK8rational12is_minus_oneEv.exit.thread

bb.s:                                             ; preds = %_ZNK8rational12is_minus_oneEv.exit
  %i.dj = load ptr, ptr %3, align 8, !tbaa !2815  ; 4 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %.loopexit, label %_ZNK3smt12theory_arithINS_7inf_extEE3row11end_entriesEv.exit86

_ZNK3smt12theory_arithINS_7inf_extEE3row11end_entriesEv.exit86: ; preds = %bb.s
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 -4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !13 ; 2 uses
  %i.dn = zext i32 %i.dm to i64
  %i.do = mul nuw nsw i64 %i.dn, 40
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.do
  %.not81100 = icmp eq i32 %i.dm, 0
  br i1 %.not81100, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3smt12theory_arithINS_7inf_extEE3row11end_entriesEv.exit86
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.t

end_hunk_11
