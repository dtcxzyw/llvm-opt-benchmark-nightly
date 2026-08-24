Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/fraClaus?download=true
inline.NumInlined: 241
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 47
begin_hunk_0_@Fra_ClausProcessClausesCut3:bb.a
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %i.oo = load ptr, ptr %i.on, align 16, !tbaa !52
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.dl
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !41
  %i.os = sub nsw i64 5, %indvars.iv109.6
  %i.ot = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.os
  store i32 %i.or, ptr %i.ot, align 4, !tbaa !41
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.6
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 24
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !52
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.dl
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 24
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !41
  %i.pa = sub nsw i64 4, %indvars.iv109.6
  %i.pb = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.pa
  store i32 %i.oz, ptr %i.pb, align 16, !tbaa !41
  %indvars.iv.next110.6.3 = add nuw nsw i64 %indvars.iv109.6, 4 ; 2 uses
  %niter196.next.3 = add i64 %niter196, 4         ; 2 uses
  %niter196.ncmp.3 = icmp eq i64 %niter196.next.3, %unroll_iter195
  br i1 %niter196.ncmp.3, label %._crit_edge79.us.6.preheader.unr-lcssa, label %._crit_edge79.us.5, !llvm.loop !76

._crit_edge79.us.6.preheader.unr-lcssa:           ; preds = %._crit_edge79.us.5
  br i1 %lcmp.mod193.not, label %._crit_edge79.us.6.preheader, label %._crit_edge79.us.5.epil.preheader

._crit_edge79.us.5.epil.preheader:                ; preds = %._crit_edge79.us.6.preheader.unr-lcssa, %._crit_edge79.us.5.preheader
  %indvars.iv109.6.epil.init = phi i64 [ 0, %._crit_edge79.us.5.preheader ], [ %indvars.iv.next110.6.3, %._crit_edge79.us.6.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod194)
  br label %._crit_edge79.us.5.epil

._crit_edge79.us.5.epil:                          ; preds = %._crit_edge79.us.5.epil, %._crit_edge79.us.5.epil.preheader
  %indvars.iv109.6.epil = phi i64 [ %indvars.iv.next110.6.epil, %._crit_edge79.us.5.epil ], [ %indvars.iv109.6.epil.init, %._crit_edge79.us.5.epil.preheader ] ; 3 uses
  %epil.iter192 = phi i64 [ %epil.iter192.next, %._crit_edge79.us.5.epil ], [ 0, %._crit_edge79.us.5.epil.preheader ]
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.6.epil
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !52
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.dl
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 24
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !41
  %i.ph = sub nsw i64 7, %indvars.iv109.6.epil
  %i.pi = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ph
  store i32 %i.pg, ptr %i.pi, align 4, !tbaa !41
  %indvars.iv.next110.6.epil = add nuw nsw i64 %indvars.iv109.6.epil, 1
  %epil.iter192.next = add i64 %epil.iter192, 1   ; 2 uses
  %epil.iter192.cmp.not = icmp eq i64 %epil.iter192.next, %xtraiter191
  br i1 %epil.iter192.cmp.not, label %._crit_edge79.us.6.preheader, label %._crit_edge79.us.5.epil, !llvm.loop !85

._crit_edge79.us.6.preheader:                     ; preds = %._crit_edge79.us.5.epil, %._crit_edge79.us.6.preheader.unr-lcssa
  br i1 %i.di, label %._crit_edge79.us.6.epil.preheader, label %._crit_edge79.us.6

._crit_edge79.us.6:                               ; preds = %._crit_edge79.us.6.preheader, %._crit_edge79.us.6
  %indvars.iv109.7 = phi i64 [ %indvars.iv.next110.7.3, %._crit_edge79.us.6 ], [ 0, %._crit_edge79.us.6.preheader ] ; 9 uses
  %niter202 = phi i64 [ %niter202.next.3, %._crit_edge79.us.6 ], [ 0, %._crit_edge79.us.6.preheader ]
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.7
  %i.pk = load ptr, ptr %i.pj, align 16, !tbaa !52
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %i.dl
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 28
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !41
  %i.po = sub nsw i64 3, %indvars.iv109.7
  %i.pp = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.po
  store i32 %i.pn, ptr %i.pp, align 4, !tbaa !41
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.7
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !52
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %i.dl
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 28
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !41
  %i.pw = sub nsw i64 2, %indvars.iv109.7
  %i.px = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.pw
  store i32 %i.pv, ptr %i.px, align 8, !tbaa !41
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.7
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qa = load ptr, ptr %i.pz, align 16, !tbaa !52
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %i.dl
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 28
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !41
  %i.qe = sub nsw i64 1, %indvars.iv109.7
  %i.qf = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.qe
  store i32 %i.qd, ptr %i.qf, align 4, !tbaa !41
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.7
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 24
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !52
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %i.dl
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 28
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !41
  %i.qm = sub nsw i64 0, %indvars.iv109.7
  %i.qn = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.qm
  store i32 %i.ql, ptr %i.qn, align 16, !tbaa !41
  %indvars.iv.next110.7.3 = add nuw nsw i64 %indvars.iv109.7, 4 ; 2 uses
  %niter202.next.3 = add i64 %niter202, 4         ; 2 uses
  %niter202.ncmp.3 = icmp eq i64 %niter202.next.3, %unroll_iter201
  br i1 %niter202.ncmp.3, label %._crit_edge79.us.7.unr-lcssa, label %._crit_edge79.us.6, !llvm.loop !76

._crit_edge79.us.7.unr-lcssa:                     ; preds = %._crit_edge79.us.6
  br i1 %lcmp.mod199.not, label %._crit_edge79.us.7, label %._crit_edge79.us.6.epil.preheader

._crit_edge79.us.6.epil.preheader:                ; preds = %._crit_edge79.us.7.unr-lcssa, %._crit_edge79.us.6.preheader
  %indvars.iv109.7.epil.init = phi i64 [ 0, %._crit_edge79.us.6.preheader ], [ %indvars.iv.next110.7.3, %._crit_edge79.us.7.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod200)
  br label %._crit_edge79.us.6.epil

._crit_edge79.us.6.epil:                          ; preds = %._crit_edge79.us.6.epil, %._crit_edge79.us.6.epil.preheader
  %indvars.iv109.7.epil = phi i64 [ %indvars.iv.next110.7.epil, %._crit_edge79.us.6.epil ], [ %indvars.iv109.7.epil.init, %._crit_edge79.us.6.epil.preheader ] ; 3 uses
  %epil.iter198 = phi i64 [ %epil.iter198.next, %._crit_edge79.us.6.epil ], [ 0, %._crit_edge79.us.6.epil.preheader ]
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.7.epil
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !52
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %i.dl
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 28
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !41
  %i.qt = sub nsw i64 3, %indvars.iv109.7.epil
  %i.qu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.qt
  store i32 %i.qs, ptr %i.qu, align 4, !tbaa !41
  %indvars.iv.next110.7.epil = add nuw nsw i64 %indvars.iv109.7.epil, 1
  %epil.iter198.next = add i64 %epil.iter198, 1   ; 2 uses
  %epil.iter198.cmp.not = icmp eq i64 %epil.iter198.next, %xtraiter197
  br i1 %epil.iter198.cmp.not, label %._crit_edge79.us.7, label %._crit_edge79.us.6.epil, !llvm.loop !86

._crit_edge79.us.7:                               ; preds = %._crit_edge79.us.6.epil, %._crit_edge79.us.7.unr-lcssa
  call void @transpose32a(ptr noundef nonnull %i.a)
  br label %bb.f

.split82:                                         ; preds = %.lr.ph88, %bb.i
  %.15486 = phi i32 [ %i.sr, %bb.i ], [ 0, %.lr.ph88 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  call void @transpose32a(ptr noundef nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %.split82, %bb.h
  %indvars.iv104 = phi i64 [ 0, %.split82 ], [ %indvars.iv.next105, %bb.h ] ; 2 uses
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv104
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !41 ; 8 uses
  %i.qx = and i32 %i.qw, 15
  %i.qy = zext nneg i32 %i.qx to i64
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.qy ; 2 uses
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !41
  %i.rb = add nsw i32 %i.ra, 1
  store i32 %i.rb, ptr %i.qz, align 4, !tbaa !41
  %i.rc = lshr i32 %i.qw, 4
  %i.rd = and i32 %i.rc, 15
  %i.re = zext nneg i32 %i.rd to i64
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.re ; 2 uses
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !41
  %i.rh = add nsw i32 %i.rg, 1
  store i32 %i.rh, ptr %i.rf, align 4, !tbaa !41
  %i.ri = lshr i32 %i.qw, 8
  %i.rj = and i32 %i.ri, 15
  %i.rk = zext nneg i32 %i.rj to i64
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.rk ; 2 uses
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !41
  %i.rn = add nsw i32 %i.rm, 1
  store i32 %i.rn, ptr %i.rl, align 4, !tbaa !41
  %i.ro = lshr i32 %i.qw, 12
  %i.rp = and i32 %i.ro, 15
  %i.rq = zext nneg i32 %i.rp to i64
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.rq ; 2 uses
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !41
  %i.rt = add nsw i32 %i.rs, 1
  store i32 %i.rt, ptr %i.rr, align 4, !tbaa !41
  %i.ru = lshr i32 %i.qw, 16
  %i.rv = and i32 %i.ru, 15
  %i.rw = zext nneg i32 %i.rv to i64
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.rw ; 2 uses
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !41
  %i.rz = add nsw i32 %i.ry, 1
  store i32 %i.rz, ptr %i.rx, align 4, !tbaa !41
  %i.sa = lshr i32 %i.qw, 20
  %i.sb = and i32 %i.sa, 15
  %i.sc = zext nneg i32 %i.sb to i64
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.sc ; 2 uses
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !41
  %i.sf = add nsw i32 %i.se, 1
  store i32 %i.sf, ptr %i.sd, align 4, !tbaa !41
  %i.sg = lshr i32 %i.qw, 24
  %i.sh = and i32 %i.sg, 15
  %i.si = zext nneg i32 %i.sh to i64
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.si ; 2 uses
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !41
  %i.sl = add nsw i32 %i.sk, 1
  store i32 %i.sl, ptr %i.sj, align 4, !tbaa !41
  %i.sm = lshr i32 %i.qw, 28
  %i.sn = zext nneg i32 %i.sm to i64
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.sn ; 2 uses
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !41
  %i.sq = add nsw i32 %i.sp, 1
  store i32 %i.sq, ptr %i.so, align 4, !tbaa !41
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next105, 32
  br i1 %exitcond107.not, label %bb.i, label %bb.h, !llvm.loop !78

bb.i:                                             ; preds = %bb.h
  %i.sr = add nuw nsw i32 %.15486, 1              ; 2 uses
  %exitcond108.not = icmp eq i32 %i.sr, %i.ci
  br i1 %exitcond108.not, label %.loopexit, label %.split82, !llvm.loop !79

.loopexit:                                        ; preds = %.split.us.us, %bb.i, %bb.g, %.preheader63, %.preheader62.lr.ph.split, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Fra_ClausSelectClauses(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !87   ; 2 uses
  %i.c = shl nsw i32 %i.b, 5                      ; 3 uses
  %i.d = or disjoint i32 %i.c, 1                  ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 2
  %calloc = tail call ptr @calloc(i64 1, i64 %i.f) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !88   ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4        ; 2 uses
  %.val50 = load i32, ptr %i.i, align 4, !tbaa !89 ; 5 uses
  %i.j = icmp sgt i32 %.val50, 0                  ; 2 uses
  br i1 %i.j, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %.val52 = load ptr, ptr %i.k, align 8, !tbaa !91 ; 3 uses
  %wide.trip.count = zext nneg i32 %.val50 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.l = icmp eq i32 %.val50, 1
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

.critedge.preheader.loopexit.unr-lcssa:           ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.critedge.preheader.loopexit.unr-lcssa ]
  %lcmp.mod76 = trunc i32 %.val50 to i1
  tail call void @llvm.assume(i1 %lcmp.mod76)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.val52, i64 %indvars.iv.epil.init
  %i.n = load i32, ptr %i.m, align 4, !tbaa !41   ; 2 uses
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %.critedge.preheader, label %bb.b

bb.b:                                             ; preds = %.epil.preheader
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !41
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !41
  br label %.critedge.preheader

.critedge.preheader:                              ; preds = %.critedge.preheader.loopexit.unr-lcssa, %bb.b, %.epil.preheader, %bb.a
  %i.t = icmp sgt i32 %i.b, 0
  br i1 %i.t, label %.lr.ph60, label %._crit_edge

.lr.ph60:                                         ; preds = %.critedge.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !92
  %1 = zext nneg i32 %i.c to i64
  br label %bb.h

bb.c:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.g ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.val52, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !41   ; 2 uses
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !41
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val52, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !41 ; 2 uses
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = sext i32 %i.af to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !41
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !41
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.preheader.loopexit.unr-lcssa, label %bb.c, !llvm.loop !93

bb.h:                                             ; preds = %.lr.ph60, %.critedge
  %indvars.iv70 = phi i64 [ %1, %.lr.ph60 ], [ %indvars.iv.next71, %.critedge ] ; 3 uses
  %.04358 = phi i32 [ 0, %.lr.ph60 ], [ %i.an, %.critedge ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %indvars.iv70
  %i.am = load i32, ptr %i.al, align 4, !tbaa !41
  %i.an = add nsw i32 %i.am, %.04358              ; 2 uses
  %.not = icmp slt i32 %i.an, %i.v
  %2 = trunc nuw i64 %indvars.iv70 to i32         ; 2 uses
  br i1 %.not, label %.critedge, label %._crit_edge

.critedge:                                        ; preds = %bb.h
  %indvars.iv.next71 = add nsw i64 %indvars.iv70, -1
  %i.ao = icmp sgt i32 %2, 1
  br i1 %i.ao, label %bb.h, label %._crit_edge, !llvm.loop !94

._crit_edge:                                      ; preds = %.critedge, %bb.h, %.critedge.preheader
  %.0.lcssa = phi i32 [ %i.c, %.critedge.preheader ], [ %2, %bb.h ], [ 0, %.critedge ] ; 3 uses
  br i1 %i.j, label %.lr.ph67, label %.critedge2

.lr.ph67:                                         ; preds = %._crit_edge
  %i.ap = getelementptr i8, ptr %i.h, i64 8
  %.val51 = load ptr, ptr %i.ap, align 8, !tbaa !91
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph67, %bb.m
  %.val73 = phi i32 [ %.val50, %.lr.ph67 ], [ %.val, %bb.m ]
  %indvars.iv70.a = phi i64 [ 0, %.lr.ph67 ], [ %indvars.iv.next71.a, %bb.m ] ; 2 uses
  %.14464 = phi i32 [ 0, %.lr.ph67 ], [ %.2, %bb.m ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.val51, i64 %indvars.iv70.a ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !41
  %.not49 = icmp slt i32 %i.as, %.0.lcssa
  br i1 %.not49, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = load i32, ptr %i.aq, align 8, !tbaa !92
  %i.au = icmp slt i32 %.14464, %i.at
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = add nsw i32 %.14464, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.i
  store i32 -1, ptr %i.ar, align 4, !tbaa !41
  %.val.pre = load i32, ptr %i.i, align 4, !tbaa !89
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.val = phi i32 [ %.val73, %bb.k ], [ %.val.pre, %bb.l ] ; 2 uses
  %.2 = phi i32 [ %i.av, %bb.k ], [ %.14464, %bb.l ] ; 2 uses
  %indvars.iv.next71.a = add nuw nsw i64 %indvars.iv70.a, 1 ; 2 uses
  %i.aw = sext i32 %.val to i64
  %i.ax = icmp slt i64 %indvars.iv.next71.a, %i.aw
  br i1 %i.ax, label %bb.i, label %.critedge2, !llvm.loop !95

.critedge2:                                       ; preds = %bb.m, %._crit_edge
  %.144.lcssa = phi i32 [ 0, %._crit_edge ], [ %.2, %bb.m ] ; 2 uses
  tail call void @free(ptr noundef %calloc) #25
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.144.lcssa, ptr %i.ay, align 8, !tbaa !96
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !97
  %.not48 = icmp eq i32 %i.ba, 0
  br i1 %.not48, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge2
  %i.bb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.144.lcssa, i32 noundef 1, i32 noundef %.0.lcssa, i32 noundef %i.d) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge2
  ret i32 %.0.lcssa
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Fra_ClausRecordClause(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp ult i32 %i.b, 536870912
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !98   ; 6 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !41
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !41
  %i.o = shl nsw i32 %i.n, 1
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  %i.q = lshr i32 %2, %i.p
  %i.r = and i32 %i.q, 1
  %i.s = or disjoint i32 %i.o, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !89   ; 7 uses
  %i.v = load i32, ptr %i.f, align 8, !tbaa !99
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %i.x = icmp slt i32 %i.u, 16
  br i1 %i.x, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !91   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.z, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.z, i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ab = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.ac = phi ptr [ %i.aa, %bb.e ], [ %i.ab, %bb.f ]
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !91
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.ad = icmp samesign ult i32 %i.u, 1073741823
  %i.ae = shl nuw nsw i32 %i.u, 1
  %spec.select.i = select i1 %i.ad, i32 %i.ae, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.u, %spec.select.i
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !91 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ag, null
  %i.ah = zext nneg i32 %spec.select.i to i64
  %i.ai = shl nuw nsw i64 %i.ah, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = tail call ptr @realloc(ptr noundef nonnull %i.ag, i64 noundef %i.ai) #27
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ak = tail call noalias ptr @malloc(i64 noundef %i.ai) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.al = phi ptr [ %i.aj, %bb.i ], [ %i.ak, %bb.j ]
  store ptr %i.al, ptr %i.af, align 8, !tbaa !91
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.k, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.k ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.f, align 8, !tbaa !99
  %.pre = load i32, ptr %i.t, align 4, !tbaa !89
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.b, %bb.g, %Vec_IntGrow.exit11.sink.split.i
  %i.am = phi i32 [ %i.u, %bb.b ], [ %i.u, %bb.g ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !91
  %i.ap = add nsw i32 %i.am, 1
  store i32 %i.ap, ptr %i.t, align 4, !tbaa !89
  %i.aq = sext i32 %i.am to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.aq
  store i32 %i.s, ptr %i.ar, align 4, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = load i32, ptr %i.a, align 4
  %i.at = lshr i32 %i.as, 29
  %i.au = zext nneg i32 %i.at to i64
  %i.av = icmp samesign ult i64 %indvars.iv.next, %i.au
  br i1 %i.av, label %bb.b, label %._crit_edge, !llvm.loop !100

._crit_edge:                                      ; preds = %Vec_IntPush.exit, %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !101 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !98
  %i.ba = getelementptr i8, ptr %i.az, i64 4
  %.val = load i32, ptr %i.ba, align 4, !tbaa !89
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !89 ; 7 uses
  %i.bd = load i32, ptr %i.ax, align 8, !tbaa !99
  %i.be = icmp eq i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.l, label %Vec_IntPush.exit19

bb.l:                                             ; preds = %._crit_edge
  %i.bf = icmp slt i32 %i.bc, 16
  br i1 %i.bf, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !91 ; 2 uses
  %.not9.i.i17 = icmp eq ptr %i.bh, null
  br i1 %.not9.i.i17, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bh, i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i18

bb.o:                                             ; preds = %bb.m
  %i.bj = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i18

end_hunk_0
