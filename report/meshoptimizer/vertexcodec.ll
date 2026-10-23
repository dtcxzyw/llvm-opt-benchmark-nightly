Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/vertexcodec?download=true
inline.NumInlined: 72
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN7meshoptL17decodeVertexBlockEPKhS1_PhmmS2_S1_i:bb.a
  store i8 %i.lu, ptr %i.lp, align 1, !tbaa !9
  %i.lw = zext i1 %i.lt to i64
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lw ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.02331.i, i64 4
  %i.lz = load i8, ptr %i.li, align 1, !tbaa !9   ; 2 uses
  %i.ma = lshr i8 %i.lz, 4                        ; 2 uses
  %i.mb = and i8 %i.lz, 15                        ; 2 uses
  %i.mc = load i8, ptr %i.lx, align 1, !tbaa !9
  %i.md = icmp eq i8 %i.ma, 15                    ; 2 uses
  %i.me = select i1 %i.md, i8 %i.mc, i8 %i.ma
  %i.mf = getelementptr inbounds nuw i8, ptr %i.bn, i64 7
  store i8 %i.me, ptr %i.lv, align 1, !tbaa !9
  %i.mg = zext i1 %i.md to i64
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.mg ; 2 uses
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !9
  %i.mj = icmp eq i8 %i.mb, 15                    ; 2 uses
  %i.mk = select i1 %i.mj, i8 %i.mi, i8 %i.mb
  %i.ml = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i8 %i.mk, ptr %i.mf, align 1, !tbaa !9
  %i.mm = zext i1 %i.mj to i64
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.mm ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.02331.i, i64 5
  %i.mp = load i8, ptr %i.ly, align 1, !tbaa !9   ; 2 uses
  %i.mq = lshr i8 %i.mp, 4                        ; 2 uses
  %i.mr = and i8 %i.mp, 15                        ; 2 uses
  %i.ms = load i8, ptr %i.mn, align 1, !tbaa !9
  %i.mt = icmp eq i8 %i.mq, 15                    ; 2 uses
  %i.mu = select i1 %i.mt, i8 %i.ms, i8 %i.mq
  %i.mv = getelementptr inbounds nuw i8, ptr %i.bn, i64 9
  store i8 %i.mu, ptr %i.ml, align 1, !tbaa !9
  %i.mw = zext i1 %i.mt to i64
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mw ; 2 uses
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !9
  %i.mz = icmp eq i8 %i.mr, 15                    ; 2 uses
  %i.na = select i1 %i.mz, i8 %i.my, i8 %i.mr
  %i.nb = getelementptr inbounds nuw i8, ptr %i.bn, i64 10
  store i8 %i.na, ptr %i.mv, align 1, !tbaa !9
  %i.nc = zext i1 %i.mz to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.nc ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.02331.i, i64 6
  %i.nf = load i8, ptr %i.mo, align 1, !tbaa !9   ; 2 uses
  %i.ng = lshr i8 %i.nf, 4                        ; 2 uses
  %i.nh = and i8 %i.nf, 15                        ; 2 uses
  %i.ni = load i8, ptr %i.nd, align 1, !tbaa !9
  %i.nj = icmp eq i8 %i.ng, 15                    ; 2 uses
  %i.nk = select i1 %i.nj, i8 %i.ni, i8 %i.ng
  %i.nl = getelementptr inbounds nuw i8, ptr %i.bn, i64 11
  store i8 %i.nk, ptr %i.nb, align 1, !tbaa !9
  %i.nm = zext i1 %i.nj to i64
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.nm ; 2 uses
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !9
  %i.np = icmp eq i8 %i.nh, 15                    ; 2 uses
  %i.nq = select i1 %i.np, i8 %i.no, i8 %i.nh
  %i.nr = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i8 %i.nq, ptr %i.nl, align 1, !tbaa !9
  %i.ns = zext i1 %i.np to i64
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.ns ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.02331.i, i64 7
  %i.nv = load i8, ptr %i.ne, align 1, !tbaa !9   ; 2 uses
  %i.nw = lshr i8 %i.nv, 4                        ; 2 uses
  %i.nx = and i8 %i.nv, 15                        ; 2 uses
  %i.ny = load i8, ptr %i.nt, align 1, !tbaa !9
  %i.nz = icmp eq i8 %i.nw, 15                    ; 2 uses
  %i.oa = select i1 %i.nz, i8 %i.ny, i8 %i.nw
  %i.ob = getelementptr inbounds nuw i8, ptr %i.bn, i64 13
  store i8 %i.oa, ptr %i.nr, align 1, !tbaa !9
  %i.oc = zext i1 %i.nz to i64
  %i.od = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.oc ; 2 uses
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !9
  %i.of = icmp eq i8 %i.nx, 15                    ; 2 uses
  %i.og = select i1 %i.of, i8 %i.oe, i8 %i.nx
  %i.oh = getelementptr inbounds nuw i8, ptr %i.bn, i64 14
  store i8 %i.og, ptr %i.ob, align 1, !tbaa !9
  %i.oi = zext i1 %i.of to i64
  %i.oj = getelementptr inbounds nuw i8, ptr %i.od, i64 %i.oi ; 2 uses
  %i.ok = load i8, ptr %i.nu, align 1, !tbaa !9   ; 2 uses
  %i.ol = lshr i8 %i.ok, 4                        ; 2 uses
  %i.om = and i8 %i.ok, 15                        ; 2 uses
  %i.on = load i8, ptr %i.oj, align 1, !tbaa !9
  %i.oo = icmp eq i8 %i.ol, 15                    ; 2 uses
  %i.op = select i1 %i.oo, i8 %i.on, i8 %i.ol
  %i.oq = getelementptr inbounds nuw i8, ptr %i.bn, i64 15
  store i8 %i.op, ptr %i.oh, align 1, !tbaa !9
  %i.or = zext i1 %i.oo to i64
  %i.os = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.or ; 2 uses
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !9
  %i.ou = icmp eq i8 %i.om, 15                    ; 2 uses
  %i.ov = select i1 %i.ou, i8 %i.ot, i8 %i.om
  store i8 %i.ov, ptr %i.oq, align 1, !tbaa !9
  %i.ow = zext i1 %i.ou to i64
  %i.ox = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.ow
  br label %_ZN7meshoptL16decodeBytesGroupEPKhPhi.exit.i

bb.p:                                             ; preds = %.lr.ph.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bn, ptr noundef nonnull readonly align 1 dereferenceable(16) %.02331.i, i64 16, i1 false)
  %i.oy = getelementptr inbounds nuw i8, ptr %.02331.i, i64 16
  br label %_ZN7meshoptL16decodeBytesGroupEPKhPhi.exit.i

_ZN7meshoptL16decodeBytesGroupEPKhPhi.exit.i:     ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %.lr.ph.i
  %.0.i.i = phi ptr [ %i.oy, %bb.p ], [ %.02331.i, %bb.l ], [ %i.fd, %bb.m ], [ %i.ka, %bb.n ], [ %i.ox, %bb.o ], [ %.02331.i, %.lr.ph.i ] ; 4 uses
  %i.oz = add nuw i64 %.02430.i, 16               ; 2 uses
  %.not.i = icmp uge i64 %i.oz, %i.d              ; 2 uses
  %i.pa = ptrtoint ptr %.0.i.i to i64
  %i.pb = sub i64 %i.h, %i.pa
  %i.pc = icmp ult i64 %i.pb, 24
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.pc
  br i1 %or.cond.i, label %bb.q, label %.lr.ph.i, !llvm.loop !48

bb.q:                                             ; preds = %_ZN7meshoptL16decodeBytesGroupEPKhPhi.exit.i
  %.not.not167 = icmp ne ptr %.0.i.i, null
  %.not.not.not = select i1 %.not.i, i1 %.not.not167, i1 false
  br i1 %.not.not.not, label %.thread, label %.critedge

.thread126:                                       ; preds = %bb.k
  %.not130.not168 = icmp ne ptr %.189144, null
  %.not130.not.not = select i1 %.not28.i, i1 %.not130.not168, i1 false
  br i1 %.not130.not.not, label %.thread, label %.critedge

.thread:                                          ; preds = %bb.h, %bb.i, %.thread126, %bb.q
  %.391112 = phi ptr [ %i.ba, %.thread126 ], [ %.0.i.i, %bb.q ], [ %.189144, %bb.i ], [ %i.ap, %bb.h ] ; 3 uses
  %i.pd = add nuw nsw i64 %.0145, 1               ; 2 uses
  %exitcond = icmp eq i64 %i.pd, 4
  br i1 %exitcond, label %.thread123, label %bb.f, !llvm.loop !49

.thread123:                                       ; preds = %.thread
  br i1 %i.e, label %.thread134, label %bb.r

bb.r:                                             ; preds = %.thread123
  %i.pe = lshr exact i64 %.081148, 2
  %i.pf = getelementptr inbounds nuw i8, ptr %6, i64 %i.pe
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !9
  %i.ph = zext i8 %i.pg to i32                    ; 2 uses
  %i.pi = and i32 %i.ph, 3
  switch i32 %i.pi, label %default.unreachable161 [
    i32 0, label %.thread134
    i32 1, label %bb.s
    i32 2, label %bb.t
    i32 3, label %.critedge
  ]

.thread134:                                       ; preds = %.thread123, %bb.r
  %i.pj = getelementptr inbounds nuw i8, ptr %i.b, i64 %.081148 ; 12 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %5, i64 %.081148 ; 4 uses
  br i1 %.not.i107, label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.thread134
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !9   ; 2 uses
  br i1 %i.y, label %.epil.preheader186, label %.lr.ph.preheader.i.new

._crit_edge.i103.unr-lcssa:                       ; preds = %.lr.ph.preheader.i.new
  br i1 %lcmp.mod188.not, label %._crit_edge.i103, label %.epil.preheader186

.epil.preheader186:                               ; preds = %._crit_edge.i103.unr-lcssa, %.lr.ph.preheader.i
  %.03950.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.tr, %._crit_edge.i103.unr-lcssa ]
  %.149.i.epil.init = phi i8 [ %i.pl, %.lr.ph.preheader.i ], [ %i.to, %._crit_edge.i103.unr-lcssa ]
  %.04248.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.tq, %._crit_edge.i103.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod189)
  %i.pm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03950.i.epil.init
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !9   ; 2 uses
  %i.po = and i8 %i.pn, 1
  %i.pp = sub nsw i8 0, %i.po
  %i.pq = lshr i8 %i.pn, 1
  %i.pr = xor i8 %i.pq, %i.pp
  %i.ps = add i8 %i.pr, %.149.i.epil.init
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.04248.i.epil.init
  store i8 %i.ps, ptr %i.pt, align 1, !tbaa !9
  br label %._crit_edge.i103

._crit_edge.i103:                                 ; preds = %._crit_edge.i103.unr-lcssa, %.epil.preheader186
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pk, i64 1
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !9   ; 2 uses
  br i1 %i.z, label %.epil.preheader192, label %._crit_edge.i103.new

._crit_edge.i103.new:                             ; preds = %._crit_edge.i103, %._crit_edge.i103.new
  %.03950.1.i = phi i64 [ %i.qp, %._crit_edge.i103.new ], [ 0, %._crit_edge.i103 ] ; 3 uses
  %.149.1.i = phi i8 [ %i.qm, %._crit_edge.i103.new ], [ %i.pv, %._crit_edge.i103 ]
  %.04248.1.i = phi i64 [ %i.qo, %._crit_edge.i103.new ], [ 1, %._crit_edge.i103 ] ; 2 uses
  %niter197 = phi i64 [ %niter197.next.1, %._crit_edge.i103.new ], [ 0, %._crit_edge.i103 ]
  %i.pw = getelementptr inbounds nuw i8, ptr %i.s, i64 %.03950.1.i
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !9   ; 2 uses
  %i.py = and i8 %i.px, 1
  %i.pz = sub nsw i8 0, %i.py
  %i.qa = lshr i8 %i.px, 1
  %i.qb = xor i8 %i.qa, %i.pz
  %i.qc = add i8 %i.qb, %.149.1.i                 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.04248.1.i
  store i8 %i.qc, ptr %i.qd, align 1, !tbaa !9
  %i.qe = add i64 %.04248.1.i, %4                 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.s, i64 %.03950.1.i
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 1
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !9   ; 2 uses
  %i.qi = and i8 %i.qh, 1
  %i.qj = sub nsw i8 0, %i.qi
  %i.qk = lshr i8 %i.qh, 1
  %i.ql = xor i8 %i.qk, %i.qj
  %i.qm = add i8 %i.ql, %i.qc                     ; 3 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.qe
  store i8 %i.qm, ptr %i.qn, align 1, !tbaa !9
  %i.qo = add i64 %i.qe, %4                       ; 2 uses
  %i.qp = add nuw nsw i64 %.03950.1.i, 2          ; 2 uses
  %niter197.next.1 = add i64 %niter197, 2         ; 2 uses
  %niter197.ncmp.1 = icmp eq i64 %niter197.next.1, %unroll_iter196
  br i1 %niter197.ncmp.1, label %._crit_edge.1.i.unr-lcssa, label %._crit_edge.i103.new, !llvm.loop !50

._crit_edge.1.i.unr-lcssa:                        ; preds = %._crit_edge.i103.new
  br i1 %lcmp.mod194.not, label %._crit_edge.1.i, label %.epil.preheader192

.epil.preheader192:                               ; preds = %._crit_edge.1.i.unr-lcssa, %._crit_edge.i103
  %.03950.1.i.epil.init = phi i64 [ 0, %._crit_edge.i103 ], [ %i.qp, %._crit_edge.1.i.unr-lcssa ]
  %.149.1.i.epil.init = phi i8 [ %i.pv, %._crit_edge.i103 ], [ %i.qm, %._crit_edge.1.i.unr-lcssa ]
  %.04248.1.i.epil.init = phi i64 [ 1, %._crit_edge.i103 ], [ %i.qo, %._crit_edge.1.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod195)
  %i.qq = getelementptr inbounds nuw i8, ptr %i.s, i64 %.03950.1.i.epil.init
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !9   ; 2 uses
  %i.qs = and i8 %i.qr, 1
  %i.qt = sub nsw i8 0, %i.qs
  %i.qu = lshr i8 %i.qr, 1
  %i.qv = xor i8 %i.qu, %i.qt
  %i.qw = add i8 %i.qv, %.149.1.i.epil.init
  %i.qx = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.04248.1.i.epil.init
  store i8 %i.qw, ptr %i.qx, align 1, !tbaa !9
  br label %._crit_edge.1.i

._crit_edge.1.i:                                  ; preds = %._crit_edge.1.i.unr-lcssa, %.epil.preheader192
  %i.qy = getelementptr inbounds nuw i8, ptr %i.pk, i64 2
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !9   ; 2 uses
  br i1 %i.aa, label %.epil.preheader198, label %._crit_edge.1.i.new

._crit_edge.1.i.new:                              ; preds = %._crit_edge.1.i, %._crit_edge.1.i.new
  %.03950.2.i = phi i64 [ %i.rt, %._crit_edge.1.i.new ], [ 0, %._crit_edge.1.i ] ; 3 uses
  %.149.2.i = phi i8 [ %i.rq, %._crit_edge.1.i.new ], [ %i.qz, %._crit_edge.1.i ]
  %.04248.2.i = phi i64 [ %i.rs, %._crit_edge.1.i.new ], [ 2, %._crit_edge.1.i ] ; 2 uses
  %niter203 = phi i64 [ %niter203.next.1, %._crit_edge.1.i.new ], [ 0, %._crit_edge.1.i ]
  %i.ra = getelementptr inbounds nuw i8, ptr %i.t, i64 %.03950.2.i
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !9   ; 2 uses
  %i.rc = and i8 %i.rb, 1
  %i.rd = sub nsw i8 0, %i.rc
  %i.re = lshr i8 %i.rb, 1
  %i.rf = xor i8 %i.re, %i.rd
  %i.rg = add i8 %i.rf, %.149.2.i                 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.04248.2.i
  store i8 %i.rg, ptr %i.rh, align 1, !tbaa !9
  %i.ri = add i64 %.04248.2.i, %4                 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.t, i64 %.03950.2.i
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 1
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !9   ; 2 uses
  %i.rm = and i8 %i.rl, 1
  %i.rn = sub nsw i8 0, %i.rm
  %i.ro = lshr i8 %i.rl, 1
  %i.rp = xor i8 %i.ro, %i.rn
  %i.rq = add i8 %i.rp, %i.rg                     ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.ri
  store i8 %i.rq, ptr %i.rr, align 1, !tbaa !9
  %i.rs = add i64 %i.ri, %4                       ; 2 uses
  %i.rt = add nuw nsw i64 %.03950.2.i, 2          ; 2 uses
  %niter203.next.1 = add i64 %niter203, 2         ; 2 uses
  %niter203.ncmp.1 = icmp eq i64 %niter203.next.1, %unroll_iter202
  br i1 %niter203.ncmp.1, label %._crit_edge.2.i.unr-lcssa, label %._crit_edge.1.i.new, !llvm.loop !50

._crit_edge.2.i.unr-lcssa:                        ; preds = %._crit_edge.1.i.new
  br i1 %lcmp.mod200.not, label %._crit_edge.2.i, label %.epil.preheader198

.epil.preheader198:                               ; preds = %._crit_edge.2.i.unr-lcssa, %._crit_edge.1.i
  %.03950.2.i.epil.init = phi i64 [ 0, %._crit_edge.1.i ], [ %i.rt, %._crit_edge.2.i.unr-lcssa ]
  %.149.2.i.epil.init = phi i8 [ %i.qz, %._crit_edge.1.i ], [ %i.rq, %._crit_edge.2.i.unr-lcssa ]
  %.04248.2.i.epil.init = phi i64 [ 2, %._crit_edge.1.i ], [ %i.rs, %._crit_edge.2.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod201)
  %i.ru = getelementptr inbounds nuw i8, ptr %i.t, i64 %.03950.2.i.epil.init
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !9   ; 2 uses
  %i.rw = and i8 %i.rv, 1
  %i.rx = sub nsw i8 0, %i.rw
  %i.ry = lshr i8 %i.rv, 1
  %i.rz = xor i8 %i.ry, %i.rx
  %i.sa = add i8 %i.rz, %.149.2.i.epil.init
  %i.sb = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.04248.2.i.epil.init
  store i8 %i.sa, ptr %i.sb, align 1, !tbaa !9
  br label %._crit_edge.2.i

._crit_edge.2.i:                                  ; preds = %._crit_edge.2.i.unr-lcssa, %.epil.preheader198
  %i.sc = getelementptr inbounds nuw i8, ptr %i.pk, i64 3
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !9   ; 2 uses
  br i1 %i.ab, label %.epil.preheader204, label %._crit_edge.2.i.new

._crit_edge.2.i.new:                              ; preds = %._crit_edge.2.i, %._crit_edge.2.i.new
  %.03950.3.i = phi i64 [ %i.sx, %._crit_edge.2.i.new ], [ 0, %._crit_edge.2.i ] ; 3 uses
  %.149.3.i = phi i8 [ %i.su, %._crit_edge.2.i.new ], [ %i.sd, %._crit_edge.2.i ]
  %.04248.3.i = phi i64 [ %i.sw, %._crit_edge.2.i.new ], [ 3, %._crit_edge.2.i ] ; 2 uses
  %niter209 = phi i64 [ %niter209.next.1, %._crit_edge.2.i.new ], [ 0, %._crit_edge.2.i ]
  %i.se = getelementptr inbounds nuw i8, ptr %i.u, i64 %.03950.3.i
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !9   ; 2 uses
  %i.sg = and i8 %i.sf, 1
  %i.sh = sub nsw i8 0, %i.sg
  %i.si = lshr i8 %i.sf, 1
  %i.sj = xor i8 %i.si, %i.sh
  %i.sk = add i8 %i.sj, %.149.3.i                 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.04248.3.i
  store i8 %i.sk, ptr %i.sl, align 1, !tbaa !9
  %i.sm = add i64 %.04248.3.i, %4                 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.u, i64 %.03950.3.i
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 1
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !9   ; 2 uses
  %i.sq = and i8 %i.sp, 1
  %i.sr = sub nsw i8 0, %i.sq
  %i.ss = lshr i8 %i.sp, 1
  %i.st = xor i8 %i.ss, %i.sr
  %i.su = add i8 %i.st, %i.sk                     ; 3 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.sm
  store i8 %i.su, ptr %i.sv, align 1, !tbaa !9
  %i.sw = add i64 %i.sm, %4                       ; 2 uses
  %i.sx = add nuw nsw i64 %.03950.3.i, 2          ; 2 uses
  %niter209.next.1 = add i64 %niter209, 2         ; 2 uses
  %niter209.ncmp.1 = icmp eq i64 %niter209.next.1, %unroll_iter208
  br i1 %niter209.ncmp.1, label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit.unr-lcssa, label %._crit_edge.2.i.new, !llvm.loop !50

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i, %.lr.ph.preheader.i.new
  %.03950.i = phi i64 [ %i.tr, %.lr.ph.preheader.i.new ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.149.i = phi i8 [ %i.to, %.lr.ph.preheader.i.new ], [ %i.pl, %.lr.ph.preheader.i ]
  %.04248.i = phi i64 [ %i.tq, %.lr.ph.preheader.i.new ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %niter191 = phi i64 [ %niter191.next.1, %.lr.ph.preheader.i.new ], [ 0, %.lr.ph.preheader.i ]
  %i.sy = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03950.i
  %i.sz = load i8, ptr %i.sy, align 2, !tbaa !9   ; 2 uses
  %i.ta = and i8 %i.sz, 1
  %i.tb = sub nsw i8 0, %i.ta
  %i.tc = lshr i8 %i.sz, 1
  %i.td = xor i8 %i.tc, %i.tb
  %i.te = add i8 %i.td, %.149.i                   ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.04248.i
  store i8 %i.te, ptr %i.tf, align 1, !tbaa !9
  %i.tg = add i64 %.04248.i, %4                   ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03950.i
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 1
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !9   ; 2 uses
  %i.tk = and i8 %i.tj, 1
  %i.tl = sub nsw i8 0, %i.tk
  %i.tm = lshr i8 %i.tj, 1
  %i.tn = xor i8 %i.tm, %i.tl
  %i.to = add i8 %i.tn, %i.te                     ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.tg
  store i8 %i.to, ptr %i.tp, align 1, !tbaa !9
  %i.tq = add i64 %i.tg, %4                       ; 2 uses
  %i.tr = add nuw nsw i64 %.03950.i, 2            ; 2 uses
  %niter191.next.1 = add nuw i64 %niter191, 2     ; 2 uses
  %niter191.ncmp.1 = icmp eq i64 %niter191.next.1, %unroll_iter190
  br i1 %niter191.ncmp.1, label %._crit_edge.i103.unr-lcssa, label %.lr.ph.preheader.i.new, !llvm.loop !50

bb.s:                                             ; preds = %bb.r
  %i.ts = getelementptr inbounds nuw i8, ptr %i.b, i64 %.081148 ; 6 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %5, i64 %.081148 ; 2 uses
  br i1 %.not.i107, label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit, label %.split.us.preheader.i

.split.us.preheader.i:                            ; preds = %bb.s
  %i.tu = load i16, ptr %i.tt, align 1            ; 2 uses
  br i1 %i.w, label %.epil.preheader, label %.split.us.preheader.i.new

.split.us.preheader.i.new:                        ; preds = %.split.us.preheader.i, %.split.us.preheader.i.new
  %.03953.us.i = phi i64 [ %i.va, %.split.us.preheader.i.new ], [ 0, %.split.us.preheader.i ] ; 3 uses
  %.152.us.i = phi i16 [ %i.ux, %.split.us.preheader.i.new ], [ %i.tu, %.split.us.preheader.i ]
  %.04251.us.i = phi i64 [ %i.uz, %.split.us.preheader.i.new ], [ 0, %.split.us.preheader.i ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.split.us.preheader.i.new ], [ 0, %.split.us.preheader.i ]
  %i.tv = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03953.us.i ; 2 uses
  %i.tw = load i8, ptr %i.tv, align 2, !tbaa !9
  %i.tx = zext i8 %i.tw to i16                    ; 2 uses
  %i.ty = getelementptr i8, ptr %i.tv, i64 %3
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !9
  %i.ua = zext i8 %i.tz to i16
  %i.ub = shl nuw i16 %i.ua, 8
  %i.uc = or disjoint i16 %i.ub, %i.tx
  %i.ud = and i16 %i.tx, 1
  %i.ue = sub nsw i16 0, %i.ud
  %i.uf = lshr i16 %i.uc, 1
  %i.ug = xor i16 %i.uf, %i.ue
  %i.uh = add i16 %i.ug, %.152.us.i               ; 2 uses
  %i.ui = getelementptr i8, ptr %i.ts, i64 %.04251.us.i
  store i16 %i.uh, ptr %i.ui, align 1
  %i.uj = add i64 %.04251.us.i, %4                ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03953.us.i
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 1 ; 2 uses
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !9
  %i.un = zext i8 %i.um to i16                    ; 2 uses
  %i.uo = getelementptr i8, ptr %i.ul, i64 %3
  %i.up = load i8, ptr %i.uo, align 1, !tbaa !9
  %i.uq = zext i8 %i.up to i16
  %i.ur = shl nuw i16 %i.uq, 8
  %i.us = or disjoint i16 %i.ur, %i.un
  %i.ut = and i16 %i.un, 1
  %i.uu = sub nsw i16 0, %i.ut
  %i.uv = lshr i16 %i.us, 1
  %i.uw = xor i16 %i.uv, %i.uu
  %i.ux = add i16 %i.uw, %i.uh                    ; 3 uses
  %i.uy = getelementptr i8, ptr %i.ts, i64 %i.uj
  store i16 %i.ux, ptr %i.uy, align 1
  %i.uz = add i64 %i.uj, %4                       ; 2 uses
  %i.va = add nuw nsw i64 %.03953.us.i, 2         ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.split.us.preheader.i.new, !llvm.loop !51

._crit_edge.us.i.unr-lcssa:                       ; preds = %.split.us.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.split.us.preheader.i
  %.03953.us.i.epil.init = phi i64 [ 0, %.split.us.preheader.i ], [ %i.va, %._crit_edge.us.i.unr-lcssa ]
  %.152.us.i.epil.init = phi i16 [ %i.tu, %.split.us.preheader.i ], [ %i.ux, %._crit_edge.us.i.unr-lcssa ]
  %.04251.us.i.epil.init = phi i64 [ 0, %.split.us.preheader.i ], [ %i.uz, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod179)
  %i.vb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03953.us.i.epil.init ; 2 uses
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !9
  %i.vd = zext i8 %i.vc to i16                    ; 2 uses
  %i.ve = getelementptr i8, ptr %i.vb, i64 %3
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !9
  %i.vg = zext i8 %i.vf to i16
  %i.vh = shl nuw i16 %i.vg, 8
  %i.vi = or disjoint i16 %i.vh, %i.vd
  %i.vj = and i16 %i.vd, 1
  %i.vk = sub nsw i16 0, %i.vj
  %i.vl = lshr i16 %i.vi, 1
  %i.vm = xor i16 %i.vl, %i.vk
  %i.vn = add i16 %i.vm, %.152.us.i.epil.init
  %i.vo = getelementptr i8, ptr %i.ts, i64 %.04251.us.i.epil.init
  store i16 %i.vn, ptr %i.vo, align 1
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %i.vp = getelementptr inbounds nuw i8, ptr %i.tt, i64 2
  %i.vq = load i16, ptr %i.vp, align 1            ; 2 uses
  br i1 %i.x, label %.epil.preheader180, label %._crit_edge.us.i.new

._crit_edge.us.i.new:                             ; preds = %._crit_edge.us.i, %._crit_edge.us.i.new
  %.03953.us.1.i = phi i64 [ %i.ww, %._crit_edge.us.i.new ], [ 0, %._crit_edge.us.i ] ; 3 uses
  %.152.us.1.i = phi i16 [ %i.wt, %._crit_edge.us.i.new ], [ %i.vq, %._crit_edge.us.i ]
  %.04251.us.1.i = phi i64 [ %i.wv, %._crit_edge.us.i.new ], [ 2, %._crit_edge.us.i ] ; 2 uses
  %niter185 = phi i64 [ %niter185.next.1, %._crit_edge.us.i.new ], [ 0, %._crit_edge.us.i ]
  %i.vr = getelementptr inbounds nuw i8, ptr %i.r, i64 %.03953.us.1.i ; 2 uses
  %i.vs = load i8, ptr %i.vr, align 2, !tbaa !9
  %i.vt = zext i8 %i.vs to i16                    ; 2 uses
  %i.vu = getelementptr i8, ptr %i.vr, i64 %3
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !9
  %i.vw = zext i8 %i.vv to i16
  %i.vx = shl nuw i16 %i.vw, 8
  %i.vy = or disjoint i16 %i.vx, %i.vt
  %i.vz = and i16 %i.vt, 1
  %i.wa = sub nsw i16 0, %i.vz
  %i.wb = lshr i16 %i.vy, 1
  %i.wc = xor i16 %i.wb, %i.wa
  %i.wd = add i16 %i.wc, %.152.us.1.i             ; 2 uses
  %i.we = getelementptr i8, ptr %i.ts, i64 %.04251.us.1.i
  store i16 %i.wd, ptr %i.we, align 1
  %i.wf = add i64 %.04251.us.1.i, %4              ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.r, i64 %.03953.us.1.i
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 1 ; 2 uses
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !9
  %i.wj = zext i8 %i.wi to i16                    ; 2 uses
  %i.wk = getelementptr i8, ptr %i.wh, i64 %3
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !9
  %i.wm = zext i8 %i.wl to i16
  %i.wn = shl nuw i16 %i.wm, 8
  %i.wo = or disjoint i16 %i.wn, %i.wj
  %i.wp = and i16 %i.wj, 1
  %i.wq = sub nsw i16 0, %i.wp
  %i.wr = lshr i16 %i.wo, 1
  %i.ws = xor i16 %i.wr, %i.wq
  %i.wt = add i16 %i.ws, %i.wd                    ; 3 uses
  %i.wu = getelementptr i8, ptr %i.ts, i64 %i.wf
  store i16 %i.wt, ptr %i.wu, align 1
  %i.wv = add i64 %i.wf, %4                       ; 2 uses
  %i.ww = add nuw nsw i64 %.03953.us.1.i, 2       ; 2 uses
  %niter185.next.1 = add i64 %niter185, 2         ; 2 uses
  %niter185.ncmp.1 = icmp eq i64 %niter185.next.1, %unroll_iter184
  br i1 %niter185.ncmp.1, label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit174.unr-lcssa, label %._crit_edge.us.i.new, !llvm.loop !51

bb.t:                                             ; preds = %bb.r
  %i.wx = getelementptr inbounds nuw i8, ptr %i.b, i64 %.081148
  %i.wy = lshr i32 %i.ph, 4
  br i1 %.not.i107, label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit, label %.split.us.i

.split.us.i:                                      ; preds = %bb.t
  %i.wz = getelementptr inbounds nuw i8, ptr %5, i64 %.081148
  %i.xa = load i32, ptr %i.wz, align 1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i, %.split.us.i
  %.04056.us.i = phi i64 [ %i.xx, %.preheader.us.i ], [ 0, %.split.us.i ] ; 2 uses
  %.155.us.i = phi i32 [ %i.xu, %.preheader.us.i ], [ %i.xa, %.split.us.i ]
  %.04354.us.i = phi i64 [ %i.xw, %.preheader.us.i ], [ 0, %.split.us.i ] ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.04056.us.i ; 4 uses
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !9
  %i.xd = zext i8 %i.xc to i32
  %i.xe = getelementptr i8, ptr %i.xb, i64 %3
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !9
  %i.xg = zext i8 %i.xf to i32
  %i.xh = shl nuw nsw i32 %i.xg, 8
  %i.xi = or disjoint i32 %i.xh, %i.xd
  %i.xj = getelementptr i8, ptr %i.xb, i64 %i.p
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !9
  %i.xl = zext i8 %i.xk to i32
  %i.xm = shl nuw nsw i32 %i.xl, 16
  %i.xn = or disjoint i32 %i.xi, %i.xm
  %i.xo = getelementptr i8, ptr %i.xb, i64 %i.q
  %i.xp = load i8, ptr %i.xo, align 1, !tbaa !9
  %i.xq = zext i8 %i.xp to i32
  %i.xr = shl nuw i32 %i.xq, 24
  %i.xs = or disjoint i32 %i.xn, %i.xr            ; 2 uses
  %i.xt = tail call i32 @llvm.fshr.i32(i32 %i.xs, i32 %i.xs, i32 %i.wy)
  %i.xu = xor i32 %i.xt, %.155.us.i               ; 2 uses
  %i.xv = getelementptr i8, ptr %i.wx, i64 %.04354.us.i
  store i32 %i.xu, ptr %i.xv, align 1
  %i.xw = add i64 %.04354.us.i, %4
  %i.xx = add nuw nsw i64 %.04056.us.i, 1         ; 2 uses
  %exitcond.not.i108 = icmp eq i64 %i.xx, %3
  br i1 %exitcond.not.i108, label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit, label %.preheader.us.i, !llvm.loop !52

default.unreachable161:                           ; preds = %bb.r
  unreachable

_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit.unr-lcssa: ; preds = %._crit_edge.2.i.new
  br i1 %lcmp.mod206.not, label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit, label %.epil.preheader204

.epil.preheader204:                               ; preds = %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit.unr-lcssa, %._crit_edge.2.i
  %.03950.3.i.epil.init = phi i64 [ 0, %._crit_edge.2.i ], [ %i.sx, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit.unr-lcssa ]
  %.149.3.i.epil.init = phi i8 [ %i.sd, %._crit_edge.2.i ], [ %i.su, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit.unr-lcssa ]
  %.04248.3.i.epil.init = phi i64 [ 3, %._crit_edge.2.i ], [ %i.sw, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod207)
  %i.xy = getelementptr inbounds nuw i8, ptr %i.u, i64 %.03950.3.i.epil.init
  %i.xz = load i8, ptr %i.xy, align 1, !tbaa !9   ; 2 uses
  %i.ya = and i8 %i.xz, 1
  %i.yb = sub nsw i8 0, %i.ya
  %i.yc = lshr i8 %i.xz, 1
  %i.yd = xor i8 %i.yc, %i.yb
  %i.ye = add i8 %i.yd, %.149.3.i.epil.init
  %i.yf = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.04248.3.i.epil.init
  store i8 %i.ye, ptr %i.yf, align 1, !tbaa !9
  br label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit

_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit174.unr-lcssa: ; preds = %._crit_edge.us.i.new
  br i1 %lcmp.mod182.not, label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit, label %.epil.preheader180

.epil.preheader180:                               ; preds = %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit174.unr-lcssa, %._crit_edge.us.i
  %.03953.us.1.i.epil.init = phi i64 [ 0, %._crit_edge.us.i ], [ %i.ww, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit174.unr-lcssa ]
  %.152.us.1.i.epil.init = phi i16 [ %i.vq, %._crit_edge.us.i ], [ %i.wt, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit174.unr-lcssa ]
  %.04251.us.1.i.epil.init = phi i64 [ 2, %._crit_edge.us.i ], [ %i.wv, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit174.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod183)
  %i.yg = getelementptr inbounds nuw i8, ptr %i.r, i64 %.03953.us.1.i.epil.init ; 2 uses
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !9
  %i.yi = zext i8 %i.yh to i16                    ; 2 uses
  %i.yj = getelementptr i8, ptr %i.yg, i64 %3
  %i.yk = load i8, ptr %i.yj, align 1, !tbaa !9
  %i.yl = zext i8 %i.yk to i16
  %i.ym = shl nuw i16 %i.yl, 8
  %i.yn = or disjoint i16 %i.ym, %i.yi
  %i.yo = and i16 %i.yi, 1
  %i.yp = sub nsw i16 0, %i.yo
  %i.yq = lshr i16 %i.yn, 1
  %i.yr = xor i16 %i.yq, %i.yp
  %i.ys = add i16 %i.yr, %.152.us.1.i.epil.init
  %i.yt = getelementptr i8, ptr %i.ts, i64 %.04251.us.1.i.epil.init
  store i16 %i.ys, ptr %i.yt, align 1
  br label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit

_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit: ; preds = %.preheader.us.i, %.epil.preheader180, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit174.unr-lcssa, %.epil.preheader204, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit.unr-lcssa, %bb.t, %bb.s, %.thread134
  %i.yu = add i64 %.081148, 4                     ; 2 uses
  %.not100 = icmp ult i64 %i.yu, %4
  br i1 %.not100, label %bb.c, label %.critedge.thread, !llvm.loop !53

.critedge.thread:                                 ; preds = %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit, %bb.b
  %.088.lcssa = phi ptr [ %i.l, %bb.b ], [ %.391112, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit ]
  %i.yv = mul i64 %4, %3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull align 16 %i.b, i64 %i.yv, i1 false)
  %i.yw = add i64 %3, -1
  %i.yx = mul i64 %4, %i.yw
  %i.yy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.yx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr nonnull align 1 %i.yy, i64 %4, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %.thread126, %bb.g, %bb.j, %bb.q, %.critedge.thread, %bb.a
  %.8 = phi ptr [ null, %bb.a ], [ %.088.lcssa, %.critedge.thread ], [ null, %.thread126 ], [ null, %bb.q ], [ null, %bb.j ], [ null, %bb.g ], [ null, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.8
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8>, <16 x i8>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8>, <16 x i8>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32>, i32) #9

; Function Attrs: nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_vertexcodec.cpp() #10 section ".text.startup" {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind1 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next2, %vector.body ] ; 9 uses
  %i.a = and <2 x i32> %vec.ind1, splat (i32 1)   ; 2 uses
  %i.b = icmp eq <2 x i32> %i.a, zeroinitializer
  %i.c = lshr <2 x i32> %vec.ind1, splat (i32 1)
  %i.d = and <2 x i32> %i.c, splat (i32 1)        ; 2 uses
  %i.e = icmp eq <2 x i32> %i.d, zeroinitializer
  %i.f = add nuw nsw <2 x i32> %i.d, %i.a         ; 2 uses
  %i.g = lshr <2 x i32> %vec.ind1, splat (i32 2)
  %i.h = and <2 x i32> %i.g, splat (i32 1)        ; 2 uses
  %i.i = icmp eq <2 x i32> %i.h, zeroinitializer
  %i.j = add nuw nsw <2 x i32> %i.f, %i.h         ; 2 uses
  %i.k = lshr <2 x i32> %vec.ind1, splat (i32 3)
  %i.l = and <2 x i32> %i.k, splat (i32 1)        ; 2 uses
  %i.m = icmp eq <2 x i32> %i.l, zeroinitializer
  %i.n = add nuw nsw <2 x i32> %i.j, %i.l         ; 2 uses
  %i.o = lshr <2 x i32> %vec.ind1, splat (i32 4)
  %i.p = and <2 x i32> %i.o, splat (i32 1)        ; 2 uses
  %i.q = icmp eq <2 x i32> %i.p, zeroinitializer
  %i.r = add nuw nsw <2 x i32> %i.n, %i.p         ; 2 uses
  %i.s = lshr <2 x i32> %vec.ind1, splat (i32 5)
  %i.t = and <2 x i32> %i.s, splat (i32 1)        ; 2 uses
  %i.u = icmp eq <2 x i32> %i.t, zeroinitializer
  %i.v = add nuw nsw <2 x i32> %i.r, %i.t         ; 2 uses
  %i.w = lshr <2 x i32> %vec.ind1, splat (i32 6)
  %i.x = and <2 x i32> %i.w, splat (i32 1)        ; 2 uses
  %i.y = icmp eq <2 x i32> %i.x, zeroinitializer
  %i.z = add nuw nsw <2 x i32> %i.v, %i.x
  %i.aa = and <2 x i32> %vec.ind1, splat (i32 128)
  %i.ab = icmp eq <2 x i32> %i.aa, zeroinitializer
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @_ZN7meshoptL24kDecodeBytesGroupShuffleE, i64 %index
  %i.ad = select <2 x i1> %i.ab, <2 x i32> splat (i32 128), <2 x i32> %i.z
  %i.ae = zext nneg <2 x i32> %i.ad to <2 x i64>
  %i.af = shl nuw <2 x i64> %i.ae, splat (i64 56)
  %i.ag = select <2 x i1> %i.y, <2 x i32> splat (i32 128), <2 x i32> %i.v
  %i.ah = zext nneg <2 x i32> %i.ag to <2 x i64>
  %i.ai = shl nuw nsw <2 x i64> %i.ah, splat (i64 48)
  %i.aj = add nuw nsw <2 x i64> %i.af, %i.ai
  %i.ak = select <2 x i1> %i.u, <2 x i32> splat (i32 128), <2 x i32> %i.r
  %i.al = zext nneg <2 x i32> %i.ak to <2 x i64>
  %i.am = shl nuw nsw <2 x i64> %i.al, splat (i64 40)
  %i.an = select <2 x i1> %i.q, <2 x i32> splat (i32 128), <2 x i32> %i.n
  %i.ao = zext nneg <2 x i32> %i.an to <2 x i64>
  %i.ap = shl nuw nsw <2 x i64> %i.ao, splat (i64 32)
  %i.aq = shl nuw nsw <2 x i32> %i.j, splat (i32 24)
  %i.ar = select <2 x i1> %i.m, <2 x i32> splat (i32 -2147483648), <2 x i32> %i.aq
  %i.as = zext <2 x i32> %i.ar to <2 x i64>
  %i.at = shl nuw nsw <2 x i32> %i.f, splat (i32 16)
  %i.au = select <2 x i1> %i.i, <2 x i32> splat (i32 8388608), <2 x i32> %i.at
  %i.av = zext nneg <2 x i32> %i.au to <2 x i64>
  %i.aw = shl nuw nsw <2 x i64> %vec.ind, splat (i64 8)
  %i.ax = and <2 x i64> %i.aw, splat (i64 256)
  %i.ay = select <2 x i1> %i.e, <2 x i64> splat (i64 32768), <2 x i64> %i.ax
  %i.az = select <2 x i1> %i.b, <2 x i64> splat (i64 128), <2 x i64> zeroinitializer
  %i.ba = or disjoint <2 x i64> %i.ay, %i.az
  %i.bb = or disjoint <2 x i64> %i.ba, %i.av
  %i.bc = or disjoint <2 x i64> %i.bb, %i.as
  %i.bd = or disjoint <2 x i64> %i.bc, %i.ap
  %i.be = or <2 x i64> %i.bd, %i.am
  %i.bf = or <2 x i64> %i.be, %i.aj
  store <2 x i64> %i.bf, ptr %i.ac, align 16
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %vec.ind.next2 = add <2 x i32> %vec.ind1, splat (i32 2)
  %i.bg = icmp eq i64 %index.next, 256
  br i1 %i.bg, label %__cxx_global_var_init.exit, label %vector.body, !llvm.loop !54

__cxx_global_var_init.exit:                       ; preds = %vector.body
end_hunk_0
