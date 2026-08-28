Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/block?download=true
inline.NumInlined: 438
inline.NumDeleted: 168
begin_hunk_0_@_ZN5Block12compute_dfdvEP8VariableS1_RP10Constraint:bb.a
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !41   ; 2 uses
  %.not46 = icmp eq ptr %i.o, %i.q
  br i1 %.not46, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread, %bb.a
  %.0.lcssa = phi double [ %i.m, %bb.a ], [ %.1, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !41   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !41   ; 2 uses
  %.not4549 = icmp eq ptr %i.s, %i.u
  br i1 %.not4549, label %._crit_edge54, label %.lr.ph53

.lr.ph:                                           ; preds = %bb.a, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread
  %.048 = phi double [ %.1, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread ], [ %i.m, %bb.a ] ; 3 uses
  %.sroa.042.047 = phi ptr [ %i.an, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread ], [ %i.o, %bb.a ] ; 2 uses
  %i.v = load ptr, ptr %.sroa.042.047, align 8, !tbaa !44 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !50   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !8
  %i.aa = icmp eq ptr %i.z, %0
  br i1 %i.aa, label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit, label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread

_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit: ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !53, !range !61, !noundef !62
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = icmp ne ptr %2, %i.x
  %spec.select.i = and i1 %i.ae, %i.ad
  br i1 %spec.select.i, label %bb.b, label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread

bb.b:                                             ; preds = %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit
  %i.af = tail call noundef double @_ZN5Block12compute_dfdvEP8VariableS1_RP10Constraint(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %i.x, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store double %i.af, ptr %i.ag, align 8, !tbaa !63
  %i.ah = fadd double %.048, %i.af                ; 2 uses
  %i.ai = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = load double, ptr %i.ak, align 8, !tbaa !63
  %i.am = fcmp olt double %i.af, %i.al
  br i1 %i.am, label %bb.d, label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %i.v, ptr %3, align 8, !tbaa !44
  br label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread

_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread: ; preds = %.lr.ph, %bb.c, %bb.d, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit
  %.1 = phi double [ %i.ah, %bb.d ], [ %i.ah, %bb.c ], [ %.048, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit ], [ %.048, %.lr.ph ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.042.047, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.an, %i.q
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge54:                                    ; preds = %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread, %._crit_edge
  %.2.lcssa = phi double [ %.0.lcssa, %._crit_edge ], [ %.3, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread ]
  ret double %.2.lcssa

.lr.ph53:                                         ; preds = %._crit_edge, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread
  %.251 = phi double [ %.3, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.038.050 = phi ptr [ %i.bg, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread ], [ %i.s, %._crit_edge ] ; 2 uses
  %i.ao = load ptr, ptr %.sroa.038.050, align 8, !tbaa !44 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !49 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !8
  %i.as = icmp eq ptr %i.ar, %0
  br i1 %i.as, label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit, label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread

_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit: ; preds = %.lr.ph53
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.au = load i8, ptr %i.at, align 8, !tbaa !53, !range !61, !noundef !62
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = icmp ne ptr %2, %i.ap
  %spec.select.i37 = and i1 %i.aw, %i.av
  br i1 %spec.select.i37, label %bb.e, label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread

bb.e:                                             ; preds = %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit
  %i.ax = tail call noundef double @_ZN5Block12compute_dfdvEP8VariableS1_RP10Constraint(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %i.ap, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  %i.ay = fneg double %i.ax                       ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store double %i.ay, ptr %i.az, align 8, !tbaa !63
  %i.ba = fadd double %.251, %i.ax                ; 2 uses
  %i.bb = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.be = load double, ptr %i.bd, align 8, !tbaa !63
  %i.bf = fcmp ogt double %i.be, %i.ay
  br i1 %i.bf, label %bb.g, label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.ao, ptr %3, align 8, !tbaa !44
  br label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread

_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread: ; preds = %.lr.ph53, %bb.f, %bb.g, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit
  %.3 = phi double [ %i.ba, %bb.g ], [ %i.ba, %bb.f ], [ %.251, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit ], [ %.251, %.lr.ph53 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.038.050, i64 8 ; 2 uses
  %.not45 = icmp eq ptr %i.bg, %i.u
  br i1 %.not45, label %._crit_edge54, label %.lr.ph53
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define { double, ptr } @_ZN5Block20compute_dfdv_betweenEP8VariableS1_S1_NS_9DirectionEb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(address) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = zext i1 %5 to i8                         ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load double, ptr %i.f, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load double, ptr %i.h, align 8, !tbaa !35
  %i.j = fadd double %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !34
  %i.m = fsub double %i.j, %i.l
  %i.n = fmul double %i.c, %i.m                   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !41   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41   ; 3 uses
  %.not81 = icmp eq ptr %i.p, %i.r
  br i1 %.not81, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.s = icmp eq i32 %4, 2
  br i1 %i.s, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread.us
  %.086.us = phi i8 [ %.2.us, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread.us ], [ %i.a, %.lr.ph ] ; 2 uses
  %.04685.us = phi ptr [ %.248.us, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread.us ], [ %1, %.lr.ph ] ; 4 uses
  %.sroa.060.084.us = phi ptr [ %i.al, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread.us ], [ %i.p, %.lr.ph ] ; 2 uses
  %.06783.us = phi ptr [ %.268.us, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread.us ], [ null, %.lr.ph ] ; 3 uses
  %.07182.us = phi double [ %.172.us, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread.us ], [ %i.n, %.lr.ph ] ; 3 uses
  %i.t = load ptr, ptr %.sroa.060.084.us, align 8, !tbaa !44 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !49   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.x = icmp eq ptr %i.w, %0
  br i1 %i.x, label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.us, label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread.us

_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.us: ; preds = %.lr.ph.split.us
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.z = load i8, ptr %i.y, align 8, !tbaa !53, !range !61, !noundef !62
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = icmp ne ptr %3, %i.u
  %spec.select.i.us = and i1 %i.ab, %i.aa
  br i1 %spec.select.i.us, label %bb.b, label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread.us

bb.b:                                             ; preds = %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.us
  %i.ac = icmp eq ptr %i.u, %.04685.us            ; 2 uses
  %spec.select75.us = select i1 %i.ac, ptr %i.t, ptr %.06783.us
  %spec.select76.us = select i1 %i.ac, ptr null, ptr %.04685.us ; 3 uses
  %i.ad = tail call { double, ptr } @_ZN5Block20compute_dfdv_betweenEP8VariableS1_S1_NS_9DirectionEb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %spec.select76.us, ptr noundef nonnull %i.u, ptr noundef nonnull %2, i32 noundef 1, i1 noundef zeroext true) ; 2 uses
  %i.ae = extractvalue { double, ptr } %i.ad, 0   ; 2 uses
  %i.af = extractvalue { double, ptr } %i.ad, 1   ; 2 uses
  %i.ag = fneg double %i.ae
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store double %i.ag, ptr %i.ah, align 8, !tbaa !63
  %i.ai = fadd double %.07182.us, %i.ae
  %i.aj = icmp ne ptr %spec.select76.us, null
  %i.ak = icmp ne ptr %i.af, null
  %or.cond.us = select i1 %i.aj, i1 %i.ak, i1 false
  %spec.select79.us = select i1 %or.cond.us, ptr %i.af, ptr %spec.select75.us
  br label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread.us

_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread.us: ; preds = %bb.b, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.us, %.lr.ph.split.us
  %.172.us = phi double [ %.07182.us, %.lr.ph.split.us ], [ %i.ai, %bb.b ], [ %.07182.us, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.us ] ; 2 uses
  %.268.us = phi ptr [ %.06783.us, %.lr.ph.split.us ], [ %spec.select79.us, %bb.b ], [ %.06783.us, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.us ] ; 2 uses
  %.248.us = phi ptr [ %.04685.us, %.lr.ph.split.us ], [ %spec.select76.us, %bb.b ], [ %.04685.us, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.us ] ; 2 uses
  %.2.us = phi i8 [ %.086.us, %.lr.ph.split.us ], [ 1, %bb.b ], [ %.086.us, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.us ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.060.084.us, i64 8 ; 2 uses
  %.not.us = icmp eq ptr %i.al, %i.r
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread.us, %bb.a
  %.071.lcssa = phi double [ %i.n, %bb.a ], [ %.172.us, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread.us ], [ %.172, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread ] ; 3 uses
  %.067.lcssa = phi ptr [ null, %bb.a ], [ %.268.us, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread.us ], [ %.268, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread ] ; 3 uses
  %.046.lcssa = phi ptr [ %1, %bb.a ], [ %.248.us, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread.us ], [ %.248, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread ] ; 2 uses
  %.0.lcssa = phi i8 [ %i.a, %bb.a ], [ %.2.us, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread.us ], [ %i.a, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread ]
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !41 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !41 ; 3 uses
  %.not8093 = icmp eq ptr %i.an, %i.ap
  br i1 %.not8093, label %._crit_edge101, label %.lr.ph100

.lr.ph100:                                        ; preds = %._crit_edge
  %i.aq = icmp eq i32 %4, 1
  br i1 %i.aq, label %.lr.ph100.split.us, label %.lr.ph100.split

.lr.ph100.split.us:                               ; preds = %.lr.ph100, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread.us
  %.34997.us = phi ptr [ %.551.us, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread.us ], [ %.046.lcssa, %.lr.ph100 ] ; 6 uses
  %.sroa.056.096.us = phi ptr [ %i.bm, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread.us ], [ %i.an, %.lr.ph100 ] ; 2 uses
  %.36995.us = phi ptr [ %.570.us, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread.us ], [ %.067.lcssa, %.lr.ph100 ] ; 3 uses
  %.27394.us = phi double [ %.374.us, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread.us ], [ %.071.lcssa, %.lr.ph100 ] ; 3 uses
  %i.ar = load ptr, ptr %.sroa.056.096.us, align 8, !tbaa !44 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !50 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !8
  %i.aw = icmp eq ptr %i.av, %0
  br i1 %i.aw, label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.us, label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread.us

_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.us: ; preds = %.lr.ph100.split.us
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !53, !range !61, !noundef !62
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = icmp ne ptr %3, %i.at
  %spec.select.i55.us = and i1 %i.ba, %i.az
  br i1 %spec.select.i55.us, label %bb.c, label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread.us

bb.c:                                             ; preds = %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.us
  %i.bb = icmp eq ptr %i.at, %.34997.us           ; 2 uses
  %spec.select77.us = select i1 %i.bb, ptr %i.ar, ptr %.36995.us
  %spec.select78.us = select i1 %i.bb, ptr null, ptr %.34997.us ; 3 uses
  %i.bc = tail call { double, ptr } @_ZN5Block20compute_dfdv_betweenEP8VariableS1_S1_NS_9DirectionEb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %spec.select78.us, ptr noundef nonnull %i.at, ptr noundef nonnull %2, i32 noundef 2, i1 noundef zeroext true) ; 2 uses
  %i.bd = extractvalue { double, ptr } %i.bc, 0   ; 3 uses
  %i.be = extractvalue { double, ptr } %i.bc, 1   ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store double %i.bd, ptr %i.bf, align 8, !tbaa !63
  %i.bg = fadd double %.27394.us, %i.bd           ; 3 uses
  %i.bh = icmp ne ptr %spec.select78.us, null
  %i.bi = icmp ne ptr %i.be, null
  %or.cond5.us = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond5.us, label %bb.d, label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread.us

bb.d:                                             ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !63
  %i.bl = fcmp olt double %i.bd, %i.bk
  br i1 %i.bl, label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread.us, label %6

6:                                                ; preds = %bb.d
  br label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread.us

_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread.us: ; preds = %bb.c, %6, %bb.d, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.us, %.lr.ph100.split.us
  %.374.us = phi double [ %i.bg, %6 ], [ %i.bg, %bb.c ], [ %.27394.us, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.us ], [ %i.bg, %bb.d ], [ %.27394.us, %.lr.ph100.split.us ] ; 2 uses
  %.570.us = phi ptr [ %i.be, %6 ], [ %spec.select77.us, %bb.c ], [ %.36995.us, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.us ], [ %i.ar, %bb.d ], [ %.36995.us, %.lr.ph100.split.us ] ; 2 uses
  %.551.us = phi ptr [ %.34997.us, %6 ], [ %spec.select78.us, %bb.c ], [ %.34997.us, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.us ], [ %.34997.us, %bb.d ], [ %.34997.us, %.lr.ph100.split.us ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.056.096.us, i64 8 ; 2 uses
  %.not80.us = icmp eq ptr %i.bm, %i.ap
  br i1 %.not80.us, label %._crit_edge101, label %.lr.ph100.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread
  %.04685 = phi ptr [ %.248, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread ], [ %1, %.lr.ph ] ; 4 uses
  %.sroa.060.084 = phi ptr [ %i.cf, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread ], [ %i.p, %.lr.ph ] ; 2 uses
  %.06783 = phi ptr [ %.268, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread ], [ null, %.lr.ph ] ; 3 uses
  %.07182 = phi double [ %.172, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread ], [ %i.n, %.lr.ph ] ; 3 uses
  %i.bn = load ptr, ptr %.sroa.060.084, align 8, !tbaa !44 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !49 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.br = icmp eq ptr %i.bq, %0
  br i1 %i.br, label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit, label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread

_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit: ; preds = %.lr.ph.split
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !53, !range !61, !noundef !62
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = icmp ne ptr %3, %i.bo
  %spec.select.i = and i1 %i.bv, %i.bu
  br i1 %spec.select.i, label %bb.e, label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread

bb.e:                                             ; preds = %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit
  %i.bw = icmp eq ptr %i.bo, %.04685              ; 2 uses
  %spec.select75 = select i1 %i.bw, ptr %i.bn, ptr %.06783
  %spec.select76 = select i1 %i.bw, ptr null, ptr %.04685 ; 3 uses
  %i.bx = tail call { double, ptr } @_ZN5Block20compute_dfdv_betweenEP8VariableS1_S1_NS_9DirectionEb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %spec.select76, ptr noundef nonnull %i.bo, ptr noundef nonnull %2, i32 noundef 1, i1 noundef zeroext %5) ; 2 uses
  %i.by = extractvalue { double, ptr } %i.bx, 0   ; 2 uses
  %i.bz = extractvalue { double, ptr } %i.bx, 1   ; 2 uses
  %i.ca = fneg double %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store double %i.ca, ptr %i.cb, align 8, !tbaa !63
  %i.cc = fadd double %.07182, %i.by
  %i.cd = icmp ne ptr %spec.select76, null
  %i.ce = icmp ne ptr %i.bz, null
  %or.cond = select i1 %i.cd, i1 %i.ce, i1 false
  %spec.select79 = select i1 %or.cond, ptr %i.bz, ptr %spec.select75
  br label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread

_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread: ; preds = %bb.e, %.lr.ph.split, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit
  %.172 = phi double [ %.07182, %.lr.ph.split ], [ %i.cc, %bb.e ], [ %.07182, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit ] ; 2 uses
  %.268 = phi ptr [ %.06783, %.lr.ph.split ], [ %spec.select79, %bb.e ], [ %.06783, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit ] ; 2 uses
  %.248 = phi ptr [ %.04685, %.lr.ph.split ], [ %spec.select76, %bb.e ], [ %.04685, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.060.084, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cf, %i.r
  br i1 %.not, label %._crit_edge, label %.lr.ph.split

._crit_edge101:                                   ; preds = %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread.us, %._crit_edge
  %.273.lcssa = phi double [ %.071.lcssa, %._crit_edge ], [ %.374.us, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread.us ], [ %.374, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread ]
  %.369.lcssa = phi ptr [ %.067.lcssa, %._crit_edge ], [ %.570.us, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread.us ], [ %.570, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread ]
  %.fca.0.insert = insertvalue { double, ptr } poison, double %.273.lcssa, 0
  %.fca.1.insert = insertvalue { double, ptr } %.fca.0.insert, ptr %.369.lcssa, 1
  ret { double, ptr } %.fca.1.insert

.lr.ph100.split:                                  ; preds = %.lr.ph100, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread
  %.398 = phi i8 [ %.5, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread ], [ %.0.lcssa, %.lr.ph100 ] ; 5 uses
  %.34997 = phi ptr [ %.551, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread ], [ %.046.lcssa, %.lr.ph100 ] ; 6 uses
  %.sroa.056.096 = phi ptr [ %i.dc, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread ], [ %i.an, %.lr.ph100 ] ; 2 uses
  %.36995 = phi ptr [ %.570, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread ], [ %.067.lcssa, %.lr.ph100 ] ; 3 uses
  %.27394 = phi double [ %.374, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread ], [ %.071.lcssa, %.lr.ph100 ] ; 3 uses
  %i.cg = load ptr, ptr %.sroa.056.096, align 8, !tbaa !44 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !50 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !8
  %i.cl = icmp eq ptr %i.ck, %0
  br i1 %i.cl, label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit, label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread

_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit: ; preds = %.lr.ph100.split
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !53, !range !61, !noundef !62
  %i.co = trunc nuw i8 %i.cn to i1
  %i.cp = icmp ne ptr %3, %i.ci
  %spec.select.i55 = and i1 %i.cp, %i.co
  br i1 %spec.select.i55, label %bb.f, label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread

bb.f:                                             ; preds = %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit
  %i.cq = icmp eq ptr %i.ci, %.34997              ; 2 uses
  %spec.select77 = select i1 %i.cq, ptr %i.cg, ptr %.36995
  %spec.select78 = select i1 %i.cq, ptr null, ptr %.34997 ; 3 uses
  %i.cr = trunc nuw i8 %.398 to i1                ; 2 uses
  %i.cs = tail call { double, ptr } @_ZN5Block20compute_dfdv_betweenEP8VariableS1_S1_NS_9DirectionEb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %spec.select78, ptr noundef nonnull %i.ci, ptr noundef nonnull %2, i32 noundef 2, i1 noundef zeroext %i.cr) ; 2 uses
  %i.ct = extractvalue { double, ptr } %i.cs, 0   ; 3 uses
  %i.cu = extractvalue { double, ptr } %i.cs, 1   ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store double %i.ct, ptr %i.cv, align 8, !tbaa !63
  %i.cw = fadd double %.27394, %i.ct              ; 3 uses
  %i.cx = icmp ne ptr %spec.select78, null
  %i.cy = icmp ne ptr %i.cu, null
  %or.cond5 = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %or.cond5, label %bb.g, label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread

bb.g:                                             ; preds = %bb.f
  br i1 %i.cr, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.da = load double, ptr %i.cz, align 8, !tbaa !63
  %i.db = fcmp olt double %i.ct, %i.da
  br i1 %i.db, label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread

_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread: ; preds = %.lr.ph100.split, %bb.i, %bb.h, %bb.f, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit
  %.374 = phi double [ %i.cw, %bb.i ], [ %i.cw, %bb.f ], [ %.27394, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit ], [ %i.cw, %bb.h ], [ %.27394, %.lr.ph100.split ] ; 2 uses
  %.570 = phi ptr [ %i.cu, %bb.i ], [ %spec.select77, %bb.f ], [ %.36995, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit ], [ %i.cg, %bb.h ], [ %.36995, %.lr.ph100.split ] ; 2 uses
  %.551 = phi ptr [ %.34997, %bb.i ], [ %spec.select78, %bb.f ], [ %.34997, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit ], [ %.34997, %bb.h ], [ %.34997, %.lr.ph100.split ]
  %.5 = phi i8 [ %.398, %bb.i ], [ %.398, %bb.f ], [ %.398, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit ], [ 1, %bb.h ], [ %.398, %.lr.ph100.split ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.056.096, i64 8 ; 2 uses
  %.not80 = icmp eq ptr %i.dc, %i.ap
  br i1 %.not80, label %._crit_edge101, label %.lr.ph100.split
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5Block15reset_active_lmEP8VariableS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  %.not26 = icmp eq ptr %i.b, %i.d
  br i1 %.not26, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41   ; 2 uses
  %.not2528 = icmp eq ptr %i.f, %i.h
  br i1 %.not2528, label %._crit_edge32, label %.lr.ph31

.lr.ph:                                           ; preds = %bb.a, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread
  %.sroa.022.027 = phi ptr [ %i.t, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread ], [ %i.b, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.022.027, align 8, !tbaa !44 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.n = icmp eq ptr %i.m, %0
  br i1 %i.n, label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit, label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread

_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit: ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.p = load i8, ptr %i.o, align 8, !tbaa !53, !range !61, !noundef !62
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = icmp ne ptr %2, %i.k
  %spec.select.i = and i1 %i.r, %i.q
  br i1 %spec.select.i, label %bb.b, label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread

bb.b:                                             ; preds = %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store double 0.000000e+00, ptr %i.s, align 8, !tbaa !63
  tail call void @_ZN5Block15reset_active_lmEP8VariableS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %i.k, ptr noundef %1)
  br label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread

_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread: ; preds = %.lr.ph, %bb.b, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.022.027, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.t, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge32:                                    ; preds = %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread, %._crit_edge
  ret void

.lr.ph31:                                         ; preds = %._crit_edge, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread
  %.sroa.018.029 = phi ptr [ %i.ae, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread ], [ %i.f, %._crit_edge ] ; 2 uses
  %i.u = load ptr, ptr %.sroa.018.029, align 8, !tbaa !44 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !49   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.y = icmp eq ptr %i.x, %0
  br i1 %i.y, label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit, label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread

_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit: ; preds = %.lr.ph31
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !53, !range !61, !noundef !62
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = icmp ne ptr %2, %i.v
  %spec.select.i17 = and i1 %i.ac, %i.ab
  br i1 %spec.select.i17, label %bb.c, label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread

bb.c:                                             ; preds = %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store double 0.000000e+00, ptr %i.ad, align 8, !tbaa !63
  tail call void @_ZN5Block15reset_active_lmEP8VariableS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %i.v, ptr noundef %1)
  br label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread

_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread: ; preds = %.lr.ph31, %bb.c, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.018.029, i64 8 ; 2 uses
  %.not25 = icmp eq ptr %i.ae, %i.h
  br i1 %.not25, label %._crit_edge32, label %.lr.ph31
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN5Block9findMinLMEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
end_hunk_0
