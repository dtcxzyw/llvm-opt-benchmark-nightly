Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_opt_loop?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@cploop_opt:bb.a
bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.lm = load i16, ptr %i.ld, align 8, !tbaa !38 ; 2 uses
  %i.ln = icmp sgt i16 %i.lm, -1
  br i1 %i.ln, label %.loopexit173.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lo = load ptr, ptr %i.jw, align 8, !tbaa !47
  %i.lp = zext i16 %i.lm to i64
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4 ; 2 uses
  %i.ls = load i8, ptr %i.lr, align 4, !tbaa !38
  %i.lt = and i8 %i.ls, -33
  store i8 %i.lt, ptr %i.lr, align 4, !tbaa !38
  %i.lu = load i16, ptr %i.ld, align 8, !tbaa !38 ; 2 uses
  %i.lv = icmp ult i16 %i.lu, %i.ju
  br i1 %i.lv, label %bb.bb, label %.loopexit173.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ld, i64 5
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !38
  %i.ly = add i8 %i.lx, -95
  %or.cond163.i.i = icmp ult i8 %i.ly, 6
  br i1 %or.cond163.i.i, label %bb.bc, label %.loopexit173.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.lz = load ptr, ptr %i.jw, align 8, !tbaa !47
  %i.ma = zext i16 %i.lu to i64
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.ma ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 5
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !38
  %i.me = icmp eq i8 %i.md, 100
  br i1 %i.me, label %.lr.ph181.i.i, label %.loopexit173.i.i

.lr.ph181.i.i:                                    ; preds = %bb.bc, %bb.bf
  %.0133179.i.i = phi ptr [ %i.ms, %bb.bf ], [ %i.mb, %bb.bc ] ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.0133179.i.i, i64 2
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !38 ; 2 uses
  %i.mh = icmp sgt i16 %i.mg, -1
  br i1 %i.mh, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph181.i.i
  %i.mi = load ptr, ptr %i.jw, align 8, !tbaa !47
  %i.mj = zext i16 %i.mg to i64
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %i.mj
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 4 ; 2 uses
  %i.mm = load i8, ptr %i.ml, align 4, !tbaa !38
  %i.mn = and i8 %i.mm, -33
  store i8 %i.mn, ptr %i.ml, align 4, !tbaa !38
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph181.i.i
  %i.mo = load i16, ptr %.0133179.i.i, align 8, !tbaa !38 ; 2 uses
  %i.mp = icmp sgt i16 %i.mo, -1
  br i1 %i.mp, label %.loopexit173.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mq = load ptr, ptr %i.jw, align 8, !tbaa !47
  %i.mr = zext i16 %i.mo to i64
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %i.mr ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 4 ; 2 uses
  %i.mu = load i8, ptr %i.mt, align 4, !tbaa !38
  %i.mv = and i8 %i.mu, -33
  store i8 %i.mv, ptr %i.mt, align 4, !tbaa !38
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 5
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !38
  %i.my = icmp eq i8 %i.mx, 100
  br i1 %i.my, label %.lr.ph181.i.i, label %.loopexit173.i.i, !llvm.loop !71

.loopexit173.i.i:                                 ; preds = %bb.bf, %bb.be, %bb.bc, %bb.bb, %bb.ba, %bb.az
  %indvars.iv.next215.i.i = add nsw i64 %indvars.iv214.i.i, -1 ; 2 uses
  %indvars.i.i = trunc i64 %indvars.iv.next215.i.i to i32
  %i.mz = icmp ugt i32 %indvars.i.i, %i.jv
  br i1 %i.mz, label %bb.ax, label %._crit_edge187.i.i, !llvm.loop !72

._crit_edge187.i.i:                               ; preds = %.loopexit173.i.i, %._crit_edge.thread268.i.i
  %i.na = load i16, ptr %i.r, align 2, !tbaa !29
  %i.nb = zext i16 %i.na to i32
  %.0134191.i.i = add nsw i32 %i.nb, -1           ; 2 uses
  %.not156192.i.i = icmp ult i32 %.0134191.i.i, %i.t
  br i1 %.not156192.i.i, label %.loopexit172.i.i, label %.lr.ph195.i.i

.loopexit171.i.i.loopexit.unr-lcssa:              ; preds = %bb.bj
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit171.i.i, label %.lr.ph190.i.i.epil.preheader

.lr.ph190.i.i.epil.preheader:                     ; preds = %.loopexit171.i.i.loopexit.unr-lcssa, %.lr.ph190.preheader.i.i
  %indvars.iv217.i.i.epil.init = phi i64 [ 0, %.lr.ph190.preheader.i.i ], [ %indvars.iv.next218.i.i.1, %.loopexit171.i.i.loopexit.unr-lcssa ]
  %lcmp.mod72 = trunc i8 %i.nu to i1
  tail call void @llvm.assume(i1 %lcmp.mod72)
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %indvars.iv217.i.i.epil.init
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !44
  %i.ne = and i32 %i.nd, 65535                    ; 2 uses
  %i.nf = icmp samesign ult i32 %i.ne, 32768
  br i1 %i.nf, label %.loopexit171.i.i, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph190.i.i.epil.preheader
  %i.ng = load ptr, ptr %i.jw, align 8, !tbaa !47
  %i.nh = zext nneg i32 %i.ne to i64
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %i.nh
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 4 ; 2 uses
  %i.nk = load i8, ptr %i.nj, align 4, !tbaa !38
  %i.nl = and i8 %i.nk, -33
  store i8 %i.nl, ptr %i.nj, align 4, !tbaa !38
  br label %.loopexit171.i.i

.loopexit171.i.i:                                 ; preds = %.loopexit171.i.i.loopexit.unr-lcssa, %bb.bg, %.lr.ph190.i.i.epil.preheader, %.lr.ph195.i.i
  %.0134.i.i = add i32 %.0134193.i.i, -1          ; 2 uses
  %.not156.i.i = icmp ult i32 %.0134.i.i, %i.t
  br i1 %.not156.i.i, label %.loopexit172.i.i, label %.lr.ph195.i.i, !llvm.loop !73

.lr.ph195.i.i:                                    ; preds = %._crit_edge187.i.i, %.loopexit171.i.i
  %.0134193.i.i = phi i32 [ %.0134.i.i, %.loopexit171.i.i ], [ %.0134191.i.i, %._crit_edge187.i.i ] ; 2 uses
  %i.nm = load ptr, ptr %i.ad, align 8, !tbaa !39
  %i.nn = zext i32 %.0134193.i.i to i64
  %i.no = getelementptr inbounds nuw [12 x i8], ptr %i.nm, i64 %i.nn ; 2 uses
  %i.np = load ptr, ptr %i.at, align 8, !tbaa !42
  %i.nq = load i32, ptr %i.no, align 4, !tbaa !43
  %i.nr = zext i32 %i.nq to i64
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %i.nr ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.no, i64 10
  %i.nu = load i8, ptr %i.nt, align 2, !tbaa !41  ; 4 uses
  %.not210.i.i = icmp eq i8 %i.nu, 0
  br i1 %.not210.i.i, label %.loopexit171.i.i, label %.lr.ph190.preheader.i.i

.lr.ph190.preheader.i.i:                          ; preds = %.lr.ph195.i.i
  %wide.trip.count221.i.i = zext i8 %i.nu to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count221.i.i, 1
  %i.nv = icmp eq i8 %i.nu, 1
  br i1 %i.nv, label %.lr.ph190.i.i.epil.preheader, label %.lr.ph190.preheader.i.i.new

.lr.ph190.preheader.i.i.new:                      ; preds = %.lr.ph190.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count221.i.i, 254
  br label %.lr.ph190.i.i

.lr.ph190.i.i:                                    ; preds = %bb.bj, %.lr.ph190.preheader.i.i.new
  %indvars.iv217.i.i = phi i64 [ 0, %.lr.ph190.preheader.i.i.new ], [ %indvars.iv.next218.i.i.1, %bb.bj ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph190.preheader.i.i.new ], [ %niter.next.1, %bb.bj ]
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %indvars.iv217.i.i
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !44
  %i.ny = and i32 %i.nx, 65535                    ; 2 uses
  %i.nz = icmp samesign ult i32 %i.ny, 32768
  br i1 %i.nz, label %.lr.ph190.i.i.1, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph190.i.i
  %i.oa = load ptr, ptr %i.jw, align 8, !tbaa !47
  %i.ob = zext nneg i32 %i.ny to i64
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %i.ob
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 4 ; 2 uses
  %i.oe = load i8, ptr %i.od, align 4, !tbaa !38
  %i.of = and i8 %i.oe, -33
  store i8 %i.of, ptr %i.od, align 4, !tbaa !38
  br label %.lr.ph190.i.i.1

.lr.ph190.i.i.1:                                  ; preds = %bb.bh, %.lr.ph190.i.i
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %indvars.iv217.i.i
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 4
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !44
  %i.oj = and i32 %i.oi, 65535                    ; 2 uses
  %i.ok = icmp samesign ult i32 %i.oj, 32768
  br i1 %i.ok, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph190.i.i.1
  %i.ol = load ptr, ptr %i.jw, align 8, !tbaa !47
  %i.om = zext nneg i32 %i.oj to i64
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 4 ; 2 uses
  %i.op = load i8, ptr %i.oo, align 4, !tbaa !38
  %i.oq = and i8 %i.op, -33
  store i8 %i.oq, ptr %i.oo, align 4, !tbaa !38
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.lr.ph190.i.i.1
  %indvars.iv.next218.i.i.1 = add nuw nsw i64 %indvars.iv217.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit171.i.i.loopexit.unr-lcssa, label %.lr.ph190.i.i, !llvm.loop !74

.loopexit172.i.i:                                 ; preds = %.loopexit171.i.i, %._crit_edge187.i.i, %._crit_edge.i165.i, %bb.ar
  %.0135.lcssa261.i.i = phi i32 [ 0, %bb.ar ], [ %.1136.i.i, %._crit_edge.i165.i ], [ %.1136267271.i.i, %._crit_edge187.i.i ], [ %.1136267271.i.i, %.loopexit171.i.i ] ; 2 uses
  %.0139.lcssa260.i.i = phi i1 [ true, %bb.ar ], [ true, %._crit_edge.i165.i ], [ false, %._crit_edge187.i.i ], [ false, %.loopexit171.i.i ]
  %i.or = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.os = load i32, ptr %i.or, align 8, !tbaa !91
  %i.ot = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !92
  %i.ov = add i32 %i.ou, %i.os                    ; 2 uses
  %i.ow = icmp ugt i32 %i.ov, 1
  br i1 %i.ow, label %.lr.ph199.i.i, label %.preheader170.i.i

.lr.ph199.i.i:                                    ; preds = %.loopexit172.i.i
  %i.ox = getelementptr inbounds nuw i8, ptr %i.b, i64 604
  %i.oy = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %wide.trip.count232.i.i = zext i32 %i.ov to i64
  br label %bb.bn

.preheader170.i.i:                                ; preds = %.critedge.i.i, %.loopexit172.i.i
  %.0144.lcssa.i.i = phi i32 [ %.0135.lcssa261.i.i, %.loopexit172.i.i ], [ %.3147.i.i, %.critedge.i.i ] ; 4 uses
  br i1 %.0139.lcssa260.i.i, label %.preheader.i164.i, label %.preheader169.lr.ph.i.i

.preheader169.lr.ph.i.i:                          ; preds = %.preheader170.i.i
  %.not211.i.i = icmp eq i32 %.0144.lcssa.i.i, 0
  %i.oz = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br i1 %.not211.i.i, label %loop_unroll.exit, label %.preheader169.us.preheader.i.i

.preheader169.us.preheader.i.i:                   ; preds = %.preheader169.lr.ph.i.i
  %wide.trip.count238.i.i = zext i32 %.0144.lcssa.i.i to i64
  br label %.preheader169.us.i.i

.preheader169.us.i.i:                             ; preds = %.preheader169.us.i.i.backedge, %.preheader169.us.preheader.i.i
  %indvars.iv234.i.i = phi i64 [ 0, %.preheader169.us.preheader.i.i ], [ %indvars.iv234.i.i.be, %.preheader169.us.i.i.backedge ] ; 2 uses
  %.3142201.us.i.i = phi i32 [ 0, %.preheader169.us.preheader.i.i ], [ %.3142201.us.i.i.be, %.preheader169.us.i.i.backedge ] ; 2 uses
  %i.pa = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv234.i.i
  %i.pb = load i16, ptr %i.pa, align 2, !tbaa !78
  %3 = load ptr, ptr %i.oz, align 8, !tbaa !47    ; 2 uses
  %i.pc = zext i16 %i.pb to i64                   ; 2 uses
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.pc
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 4
  %i.pf = load i8, ptr %i.pe, align 4, !tbaa !38
  %i.pg = and i8 %i.pf, 32
  %.not159.us.i.i = icmp eq i8 %i.pg, 0
  br i1 %.not159.us.i.i, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %.preheader169.us.i.i
  %i.ph = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.pc
  %i.pi = load i16, ptr %i.ph, align 2, !tbaa !78
  %i.pj = zext i16 %i.pi to i64
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.pj
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 4 ; 2 uses
  %i.pm = load i8, ptr %i.pl, align 4, !tbaa !38  ; 2 uses
  %i.pn = and i8 %i.pm, 32
  %.not160.us.i.i = icmp eq i8 %i.pn, 0
  br i1 %.not160.us.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.po = and i8 %i.pm, -33
  store i8 %i.po, ptr %i.pl, align 4, !tbaa !38
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %.preheader169.us.i.i
  %.5.us.i.i = phi i32 [ %.3142201.us.i.i, %.preheader169.us.i.i ], [ 1, %bb.bl ], [ %.3142201.us.i.i, %bb.bk ] ; 2 uses
  %indvars.iv.next235.i.i = add nuw nsw i64 %indvars.iv234.i.i, 1 ; 2 uses
  %exitcond239.not.i.i = icmp eq i64 %indvars.iv.next235.i.i, %wide.trip.count238.i.i
  br i1 %exitcond239.not.i.i, label %..loopexit_crit_edge.us.i.i, label %.preheader169.us.i.i.backedge

.preheader169.us.i.i.backedge:                    ; preds = %bb.bm, %..loopexit_crit_edge.us.i.i
  %indvars.iv234.i.i.be = phi i64 [ %indvars.iv.next235.i.i, %bb.bm ], [ 0, %..loopexit_crit_edge.us.i.i ]
  %.3142201.us.i.i.be = phi i32 [ %.5.us.i.i, %bb.bm ], [ 0, %..loopexit_crit_edge.us.i.i ]
  br label %.preheader169.us.i.i, !llvm.loop !75

..loopexit_crit_edge.us.i.i:                      ; preds = %bb.bm
  %.not157.us.i.i = icmp eq i32 %.5.us.i.i, 0
  br i1 %.not157.us.i.i, label %.preheader.i164.i, label %.preheader169.us.i.i.backedge

bb.bn:                                            ; preds = %.critedge.i.i, %.lr.ph199.i.i
  %indvars.iv228.i.i = phi i64 [ 1, %.lr.ph199.i.i ], [ %indvars.iv.next229.i.i, %.critedge.i.i ] ; 2 uses
  %.0144196.i.i = phi i32 [ %.0135.lcssa261.i.i, %.lr.ph199.i.i ], [ %.3147.i.i, %.critedge.i.i ]
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %indvars.iv228.i.i
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !44
  %i.pr = and i32 %i.pq, 65535
  %i.ps = zext i32 %.0144196.i.i to i64           ; 2 uses
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.ps, i64 64)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bt, %bb.bn
  %indvars.iv223.i.i = phi i64 [ %indvars.iv.next224.i.i, %bb.bt ], [ %i.ps, %bb.bn ] ; 6 uses
  %.0131.i.i = phi i32 [ %i.ql, %bb.bt ], [ %i.pr, %bb.bn ] ; 4 uses
  %i.pt = icmp samesign ult i32 %.0131.i.i, 32768
  br i1 %i.pt, label %.critedge.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.pu = zext nneg i32 %.0131.i.i to i64         ; 2 uses
  %i.pv = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.pu ; 2 uses
  %i.pw = load i16, ptr %i.pv, align 2, !tbaa !78
  %i.px = zext i16 %i.pw to i32
  %.not161.i.i = icmp eq i32 %.0131.i.i, %i.px
  br i1 %.not161.i.i, label %.critedge.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.py = load ptr, ptr %i.oy, align 8, !tbaa !47
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.py, i64 %i.pu
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 4 ; 3 uses
  %i.qb = load i8, ptr %i.qa, align 4, !tbaa !38
  %i.qc = and i8 %i.qb, -33                       ; 3 uses
  store i8 %i.qc, ptr %i.qa, align 4, !tbaa !38
  %i.qd = zext i8 %i.qc to i32                    ; 2 uses
  %i.qe = and i32 %i.qd, 64
  %.not162.i.i = icmp ne i32 %i.qe, 0
  %i.qf = and i32 %i.qd, 31
  %i.qg = icmp samesign ult i32 %i.qf, 3
  %or.cond165.i.i = select i1 %.not162.i.i, i1 true, i1 %i.qg
  br i1 %or.cond165.i.i, label %.critedge.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.qh = or i8 %i.qc, 64
  store i8 %i.qh, ptr %i.qa, align 4, !tbaa !38
  %exitcond227.i.i = icmp eq i64 %indvars.iv223.i.i, %umax.i.i
  br i1 %exitcond227.i.i, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  tail call void @lj_trace_err(ptr noundef nonnull %i.b, i32 noundef 25) #7
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.qi = trunc nuw i32 %.0131.i.i to i16
  %indvars.iv.next224.i.i = add nuw nsw i64 %indvars.iv223.i.i, 1 ; 2 uses
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv223.i.i
  store i16 %i.qi, ptr %i.qj, align 2, !tbaa !78
  %i.qk = load i16, ptr %i.pv, align 2, !tbaa !78 ; 2 uses
  %i.ql = zext i16 %i.qk to i32
  %i.qm = icmp ugt i16 %i.qk, %i.ju
  br i1 %i.qm, label %.critedge.i.i, label %bb.bo

.critedge.i.i:                                    ; preds = %bb.bt, %bb.bq, %bb.bp, %bb.bo
  %.3147.in.i.i = phi i64 [ %indvars.iv223.i.i, %bb.bo ], [ %indvars.iv223.i.i, %bb.bp ], [ %indvars.iv223.i.i, %bb.bq ], [ %indvars.iv.next224.i.i, %bb.bt ]
  %.3147.i.i = trunc i64 %.3147.in.i.i to i32     ; 2 uses
  %indvars.iv.next229.i.i = add nuw nsw i64 %indvars.iv228.i.i, 1 ; 2 uses
  %exitcond233.not.i.i = icmp eq i64 %indvars.iv.next229.i.i, %wide.trip.count232.i.i
  br i1 %exitcond233.not.i.i, label %.preheader170.i.i, label %bb.bn, !llvm.loop !76

.preheader.i164.i:                                ; preds = %..loopexit_crit_edge.us.i.i, %.preheader170.i.i
  %.not212.i.i = icmp eq i32 %.0144.lcssa.i.i, 0
  br i1 %.not212.i.i, label %loop_unroll.exit, label %.lr.ph207.i.i

.lr.ph207.i.i:                                    ; preds = %.preheader.i164.i
  %i.qn = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %wide.trip.count244.i.i = zext i32 %.0144.lcssa.i.i to i64
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bz, %.lr.ph207.i.i
  %indvars.iv240.i.i = phi i64 [ 0, %.lr.ph207.i.i ], [ %indvars.iv.next241.i.i, %bb.bz ] ; 2 uses
  %i.qo = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv240.i.i
  %i.qp = load i16, ptr %i.qo, align 2, !tbaa !78 ; 2 uses
  %i.qq = load ptr, ptr %i.qn, align 8, !tbaa !47 ; 2 uses
  %i.qr = zext i16 %i.qp to i64                   ; 2 uses
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %i.qr
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 4 ; 3 uses
  %i.qu = load i8, ptr %i.qt, align 4, !tbaa !38  ; 3 uses
  %i.qv = and i8 %i.qu, 32
  %.not158.i.i = icmp eq i8 %i.qv, 0
  br i1 %.not158.i.i, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.qr
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !78 ; 3 uses
  %i.qy = icmp ugt i16 %i.qx, %i.ju
  br i1 %i.qy, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.qz = zext i16 %i.qx to i64
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %i.qz
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 4 ; 2 uses
  %i.rc = load i8, ptr %i.rb, align 4, !tbaa !38
  %i.rd = or i8 %i.rc, 64
  store i8 %i.rd, ptr %i.rb, align 4, !tbaa !38
  %.pre.i.i.a = load i8, ptr %i.qt, align 4, !tbaa !38
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.re = phi i8 [ %.pre.i.i.a, %bb.bw ], [ %i.qu, %bb.bv ]
  %i.rf = and i8 %i.re, 31
  %i.rg = zext nneg i8 %i.rf to i16
  %i.rh = or disjoint i16 %i.rg, 4864
  store i16 %i.rh, ptr %i.o, align 4, !tbaa !38
  store i16 %i.qp, ptr %i.n, align 8, !tbaa !38
  store i16 %i.qx, ptr %i.p, align 2, !tbaa !38
  %i.ri = tail call i32 @lj_ir_emit(ptr noundef nonnull %i.b) #6 ; 0 uses
  br label %bb.bz

bb.by:                                            ; preds = %bb.bu
  %i.rj = and i8 %i.qu, -97
  store i8 %i.rj, ptr %i.qt, align 4, !tbaa !38
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %indvars.iv.next241.i.i = add nuw nsw i64 %indvars.iv240.i.i, 1 ; 2 uses
  %exitcond245.not.i.i = icmp eq i64 %indvars.iv.next241.i.i, %wide.trip.count244.i.i
  br i1 %exitcond245.not.i.i, label %loop_unroll.exit, label %bb.bu, !llvm.loop !77

loop_unroll.exit:                                 ; preds = %bb.bz, %.preheader169.lr.ph.i.i, %.preheader.i164.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal fastcc void @loop_undo(ptr noundef initializes((10, 12), (44, 48), (182, 183)) %0, i32 noundef %1, i32 noundef range(i32 0, 65536) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.c = add nsw i32 %2, -1
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.i = load i8, ptr %i.h, align 2, !tbaa !41
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !44
  %i.m = load i32, ptr %i.e, align 4, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.o = load i8, ptr %i.n, align 2, !tbaa !41
  %i.p = zext i8 %i.o to i32
  %i.q = add i32 %i.m, %i.p
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.r
  store i32 %i.l, ptr %i.s, align 4, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %3, ptr %i.t, align 4, !tbaa !30
  %i.u = trunc nuw i32 %2 to i16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.u, ptr %i.v, align 2, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 182
  store i8 0, ptr %i.w, align 2, !tbaa !45
  tail call void @lj_ir_rollback(ptr noundef %0, i32 noundef %1) #6
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2854
  %i.y = load i16, ptr %i.x, align 2, !tbaa !96
  %i.z = zext i16 %i.y to i32
  %.not = icmp ugt i32 %1, %i.z
  br i1 %.not, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ab = zext i32 %.030 to i64                   ; 2 uses
  %i.ac = add i32 %1, 3
  %i.ad = add i32 %1, -32770
  %xtraiter = and i32 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.ab, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !47
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.prol
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !38
  %i.ai = and i8 %i.ah, -97
  store i8 %i.ai, ptr %i.ag, align 4, !tbaa !38
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !93

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.ab, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.preheader ]
end_hunk_0
