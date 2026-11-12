Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/smt_conflict_resolution?download=true
inline.NumInlined: 1151
inline.NumDeleted: 541
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN3smt19conflict_resolution13mk_unsat_coreENS_15b_justificationEN3sat7literalE:bb.a
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !104 ; 2 uses
  %i.ig = getelementptr inbounds i8, ptr %i.ic, i64 -8
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !104
  %i.ii = icmp eq i32 %i.if, %i.ih
  br i1 %i.ii, label %bb.ar, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i90 = load ptr, ptr %i.a, align 8, !tbaa !40 ; 2 uses
  %.phi.trans.insert.i91 = getelementptr inbounds i8, ptr %.pre.i90, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i91, align 4, !tbaa !104
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit: ; preds = %bb.aq, %bb.ar
  %i.ij = phi i32 [ %.pre2.i, %bb.ar ], [ %i.if, %bb.aq ] ; 2 uses
  %i.ik = phi ptr [ %.pre.i90, %bb.ar ], [ %i.ic, %bb.aq ] ; 2 uses
  %i.il = getelementptr inbounds i8, ptr %i.ik, i64 -4
  %i.im = zext i32 %i.ij to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.im
  store i32 %.sroa.093.1, ptr %i.in, align 4, !tbaa !104
  %i.io = add i32 %i.ij, 1
  store i32 %i.io, ptr %i.il, align 4, !tbaa !104
  br label %bb.as

bb.as:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit, %_ZN3smt19conflict_resolution33process_antecedent_for_unsat_coreEN3sat7literalE.exit89
  %i.ip = icmp sgt i32 %.0, -1
  br i1 %i.ip, label %.lr.ph159.preheader, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread

.lr.ph159.preheader:                              ; preds = %bb.as
  %i.iq = load ptr, ptr %i.l, align 8, !tbaa !696, !nonnull !134, !align !135
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !40
  %i.is = load ptr, ptr %i.g, align 8, !tbaa !202, !nonnull !134, !align !135
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8968
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !205
  br label %.lr.ph159

bb.at:                                            ; preds = %bb.au
  %i.iv = icmp sgt i32 %.1157, 0
  br i1 %i.iv, label %.lr.ph159, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread

.lr.ph159:                                        ; preds = %.lr.ph159.preheader, %bb.at
  %.1157 = phi i32 [ %i.ji, %bb.at ], [ %.0, %.lr.ph159.preheader ] ; 3 uses
  %i.iw = zext nneg i32 %.1157 to i64
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !104 ; 2 uses
  %i.iz = lshr i32 %i.iy, 1
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [16 x i8], ptr %i.iu, i64 %i.ja ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jd = load i64, ptr %i.jc, align 8            ; 2 uses
  %i.je = trunc i64 %i.jd to i32
  %i.jf = and i32 %i.je, 16777215
  %i.jg = icmp ult i32 %i.jf, %i.j
  br i1 %i.jg, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread, label %bb.au

bb.au:                                            ; preds = %.lr.ph159
  %i.jh = and i64 %i.jd, 16777216
  %.not117 = icmp eq i64 %i.jh, 0
  %i.ji = add nsw i32 %.1157, -1                  ; 2 uses
  br i1 %.not117, label %bb.at, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.jb, align 8, !tbaa !196
  br label %.preheader, !llvm.loop !766

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread: ; preds = %bb.as, %bb.at, %.lr.ph159, %_ZN3smt19conflict_resolution33process_antecedent_for_unsat_coreEN3sat7literalE.exit, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit
  %i.jj = load ptr, ptr %i.d, align 8, !tbaa !720 ; 3 uses
  %i.jk = icmp eq ptr %i.jj, null
  br i1 %i.jk, label %_ZN3smt19conflict_resolution31reset_unmark_and_justificationsEjj.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i:              ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread
  %i.jl = getelementptr inbounds i8, ptr %i.jj, i64 -4
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !104 ; 4 uses
  %.not118 = icmp eq i32 %i.jm, 0
  br i1 %.not118, label %._crit_edge.thread12.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i
  %wide.trip.count.i.i = zext i32 %i.jm to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.jn = icmp eq i32 %i.jm, 1
  br i1 %i.jn, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 4294967294
  br label %bb.aw

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.aw
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod168 = trunc i32 %i.jm to i1
  tail call void @llvm.assume(i1 %lcmp.mod168)
  %i.jo = load ptr, ptr %i.g, align 8, !tbaa !202, !nonnull !134, !align !135
  %i.jp = load ptr, ptr %i.d, align 8, !tbaa !720
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv.i.i.epil.init
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !104
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 8968
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !205
  %i.ju = zext i32 %i.jr to i64
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %i.jt, i64 %i.ju
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8
  %i.jy = and i64 %i.jx, -16777217
  store i64 %i.jy, ptr %i.jw, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.pre.i.i92 = load ptr, ptr %i.d, align 8, !tbaa !720 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i.i92, null
  br i1 %.not.i.i.i, label %_ZN3smt19conflict_resolution31reset_unmark_and_justificationsEjj.exit, label %._crit_edge.thread12.i.i

._crit_edge.thread12.i.i:                         ; preds = %._crit_edge.i.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i
  %i.jz = phi ptr [ %.pre.i.i92, %._crit_edge.i.i ], [ %i.jj, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i ]
  %i.ka = getelementptr inbounds i8, ptr %i.jz, i64 -4
  store i32 0, ptr %i.ka, align 4, !tbaa !104
  br label %_ZN3smt19conflict_resolution31reset_unmark_and_justificationsEjj.exit

bb.aw:                                            ; preds = %bb.aw, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.aw ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.aw ]
  %i.kb = load ptr, ptr %i.g, align 8, !tbaa !202, !nonnull !134, !align !135
  %i.kc = load ptr, ptr %i.d, align 8, !tbaa !720
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %indvars.iv.i.i
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !104
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kb, i64 8968
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !205
  %i.kh = zext i32 %i.ke to i64
  %i.ki = getelementptr inbounds nuw [16 x i8], ptr %i.kg, i64 %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8 ; 2 uses
  %i.kk = load i64, ptr %i.kj, align 8
  %i.kl = and i64 %i.kk, -16777217
  store i64 %i.kl, ptr %i.kj, align 8
  %i.km = load ptr, ptr %i.g, align 8, !tbaa !202, !nonnull !134, !align !135
  %i.kn = load ptr, ptr %i.d, align 8, !tbaa !720
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv.i.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !104
  %i.kr = getelementptr inbounds nuw i8, ptr %i.km, i64 8968
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !205
  %i.kt = zext i32 %i.kq to i64
  %i.ku = getelementptr inbounds nuw [16 x i8], ptr %i.ks, i64 %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8 ; 2 uses
  %i.kw = load i64, ptr %i.kv, align 8
  %i.kx = and i64 %i.kw, -16777217
  store i64 %i.kx, ptr %i.kv, align 8
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.aw, !llvm.loop !13

_ZN3smt19conflict_resolution31reset_unmark_and_justificationsEjj.exit: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread, %._crit_edge.i.i, %._crit_edge.thread12.i.i
  tail call void @_ZN3smt19conflict_resolution21unmark_justificationsEj(ptr noundef nonnull align 8 dereferenceable(356) %0, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt19conflict_resolution16finalize_resolveENS_15b_justificationEN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(356) %0, ptr %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN3smt19conflict_resolution21unmark_justificationsEj(ptr noundef nonnull align 8 dereferenceable(356) %0, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !768, !nonnull !134, !align !135
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 572
  %i.d = load i8, ptr %i.c, align 4, !tbaa !794, !range !198, !noundef !134
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3smt19conflict_resolution14minimize_lemmaEv(ptr noundef nonnull align 8 dereferenceable(356) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40   ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !104
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 2
  br label %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit

_ZN6vectorIN3sat7literalELb0EjE3endEv.exit:       ; preds = %bb.c, %bb.d
  %.0.i.i = phi i64 [ %i.l, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !202, !nonnull !134, !align !135 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 9616
  %i.q = load i32, ptr %i.p, align 8, !tbaa !697
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store i32 %i.q, ptr %i.r, align 8, !tbaa !795
  %i.s = load i32, ptr %i.g, align 4, !tbaa !128
  %i.t = lshr i32 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8968
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !205
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %3 = load i64, ptr %i.y, align 8
  %4 = lshr i64 %3, 32
  %5 = trunc nuw i64 %4 to i32
  %i.z = and i32 %5, 8388607
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !796
  %.not23 = icmp samesign eq i64 %.0.i.i, 4
  br i1 %.not23, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit
  %.022 = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %i.ab = phi ptr [ %i.ay, %bb.i ], [ %i.o, %.lr.ph.preheader ] ; 2 uses
  %.024 = phi ptr [ %.0, %bb.i ], [ %.022, %.lr.ph.preheader ] ; 2 uses
  %i.ac = load i32, ptr %.024, align 4, !tbaa !128
  %i.ad = lshr i32 %i.ac, 1                       ; 2 uses
  %.not20 = icmp eq i32 %i.ad, 2147483647
  br i1 %.not20, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8968
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !205
  %i.ag = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = and i64 %i.aj, -16777217
  store i64 %i.ak, ptr %i.ai, align 8
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !202, !nonnull !134, !align !135 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8968
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !205
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ag
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i32 %i.ar, 16777215                 ; 2 uses
  %i.at = load i32, ptr %i.r, align 8, !tbaa !795
  %i.au = icmp ugt i32 %i.as, %i.at
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.as, ptr %i.r, align 8, !tbaa !795
  %.pre = load i64, ptr %i.ap, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %6 = phi i64 [ %.pre, %bb.f ], [ %i.aq, %bb.e ]
  %7 = lshr i64 %6, 32
  %8 = trunc nuw i64 %7 to i32
  %i.av = and i32 %8, 8388607                     ; 2 uses
  %i.aw = load i32, ptr %i.aa, align 4, !tbaa !796
  %i.ax = icmp ugt i32 %i.av, %i.aw
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.av, ptr %i.aa, align 4, !tbaa !796
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %.lr.ph
  %i.ay = phi ptr [ %i.al, %bb.g ], [ %i.al, %bb.h ], [ %i.ab, %.lr.ph ]
  %.0 = getelementptr inbounds nuw i8, ptr %.024, i64 4 ; 2 uses
  %.not = icmp eq ptr %.0, %i.m
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !767

._crit_edge:                                      ; preds = %bb.i, %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !653, !nonnull !134, !align !135
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 712
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !698
  %.not21 = icmp eq i32 %i.bc, 0
  br i1 %.not21, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  tail call void @_ZN3smt19conflict_resolution17mk_conflict_proofENS_15b_justificationEN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(356) %0, ptr %1, i32 %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt19conflict_resolution14minimize_lemmaEv(ptr noundef nonnull align 8 dereferenceable(356) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !720  ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN6vectorIjLb0EjE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4
  store i32 0, ptr %i.c, align 4, !tbaa !104
  br label %_ZN6vectorIjLb0EjE5resetEv.exit

_ZN6vectorIjLb0EjE5resetEv.exit:                  ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40   ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread, label %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit.i

_ZN6vectorIN3sat7literalELb0EjE3endEv.exit.i:     ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !104  ; 2 uses
  %.not9.i = icmp eq i32 %i.h, 0
  br i1 %.not9.i, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit.i
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !202, !nonnull !134, !align !135
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8968
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !205  ; 3 uses
  %i.n = add nuw nsw i64 %i.i, 4611686018427387903 ; 2 uses
  %i.o = and i64 %i.n, 4611686018427387903        ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.p, 9223372036854775806
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %.011.i = phi ptr [ %i.e, %.lr.ph.i.new ], [ %i.ak, %bb.c ] ; 3 uses
  %.sroa.0.010.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.aj, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.c ]
  %.sroa.01.0.copyload.i = load i32, ptr %.011.i, align 4, !tbaa !104
  %i.r = lshr i32 %.sroa.01.0.copyload.i, 1
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = trunc i64 %i.v to i32
  %i.x = and i32 %i.w, 31
  %i.y = shl nuw i32 1, %i.x
  %i.z = or i32 %i.y, %.sroa.0.010.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.011.i, i64 4
  %.sroa.01.0.copyload.i.1 = load i32, ptr %i.aa, align 4, !tbaa !104
  %i.ab = lshr i32 %.sroa.01.0.copyload.i.1, 1
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = trunc i64 %i.af to i32
  %i.ah = and i32 %i.ag, 31
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = or i32 %i.ai, %i.z                      ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.loopexit.unr-lcssa, label %bb.c

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread: ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 0, ptr %i.al, align 8
  br label %._crit_edge

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.am = and i64 %i.n, 1
  %lcmp.mod.not.not = icmp eq i64 %i.am, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

.epil.preheader:                                  ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.011.i.epil.init = phi ptr [ %i.e, %.lr.ph.i ], [ %i.ak, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.loopexit.unr-lcssa ]
  %.sroa.0.010.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.aj, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod44 = trunc i64 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod44)
  %.sroa.01.0.copyload.i.epil = load i32, ptr %.011.i.epil.init, align 4, !tbaa !104
  %i.an = lshr i32 %.sroa.01.0.copyload.i.epil, 1
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = or i32 %i.au, %.sroa.0.010.i.epil.init
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %.epil.preheader, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.loopexit.unr-lcssa, %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit.i
  %.sroa.0.0.lcssa.i.ph = phi i32 [ 0, %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit.i ], [ %i.aj, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.loopexit.unr-lcssa ], [ %i.av, %.epil.preheader ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 %.sroa.0.0.lcssa.i.ph, ptr %i.aw, align 8
  %i.ax = load i32, ptr %i.g, align 4, !tbaa !104 ; 4 uses
  %i.ay = icmp ugt i32 %i.ax, 1
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %wide.trip.count = zext i32 %i.ax to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 4 uses
  %.027 = phi i32 [ 1, %.lr.ph ], [ %.1, %bb.n ]  ; 3 uses
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !104 ; 3 uses
  %i.be = tail call noundef zeroext i1 @_ZN3smt19conflict_resolution17implied_by_markedEN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(356) %0, i32 %i.bd)
  br i1 %i.be, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.bf = lshr i32 %i.bd, 1
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !720 ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !104 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !104
  %i.bm = icmp eq i32 %i.bj, %i.bl
  br i1 %i.bm, label %bb.g, label %_ZN6vectorIjLb0EjE9push_backEOj.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !720 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !104
  br label %_ZN6vectorIjLb0EjE9push_backEOj.exit

_ZN6vectorIjLb0EjE9push_backEOj.exit:             ; preds = %bb.f, %bb.g
  %i.bn = phi i32 [ %.pre2.i, %bb.g ], [ %i.bj, %bb.f ] ; 2 uses
  %i.bo = phi ptr [ %.pre.i, %bb.g ], [ %i.bg, %bb.f ] ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.bq = zext i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bq
  store i32 %i.bf, ptr %i.br, align 4, !tbaa !104
  %i.bs = add i32 %i.bn, 1
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !104
  br label %bb.n

bb.h:                                             ; preds = %bb.d
  %i.bt = zext i32 %.027 to i64                   ; 4 uses
  %.not = icmp eq i64 %indvars.iv, %i.bt
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bu = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bt
  store i32 %i.bd, ptr %i.bv, align 4, !tbaa !104
  %i.bw = load ptr, ptr %i.ba, align 8, !tbaa !44 ; 4 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !132 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
end_hunk_0
