Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/unpack_thumb?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6LibRaw12unpack_thumbEv:bb.a
          to label %bb.cg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cg:                                            ; preds = %bb.cf
  store ptr %i.mn, ptr %i.mj, align 8, !tbaa !99
  %i.mo = load ptr, ptr %i.f, align 8, !tbaa !93  ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !98
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 40
  %i.mr = load ptr, ptr %i.mq, align 8
  %i.ms = invoke noundef i64 %i.mr(ptr noundef nonnull align 8 dereferenceable(8) %i.mo)
          to label %bb.ch unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ch:                                            ; preds = %bb.cg
  %i.mt = load i32, ptr %i.lh, align 8, !tbaa !129
  %i.mu = icmp sgt i32 %i.mt, 0
  br i1 %i.mu, label %.lr.ph306, label %.critedge10

.lr.ph306:                                        ; preds = %bb.ch
  %i.mv = load i32, ptr %i.al, align 8, !tbaa !71
  %i.mw = zext i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw i8, ptr %i.le, i64 88
  %i.my = getelementptr inbounds nuw i8, ptr %i.le, i64 72
  br label %bb.ci

bb.ci:                                            ; preds = %.lr.ph306, %bb.cp
  %indvars.iv326 = phi i64 [ 0, %.lr.ph306 ], [ %indvars.iv.next327, %bb.cp ] ; 4 uses
  %.0165303 = phi i64 [ %i.mw, %.lr.ph306 ], [ %.1, %bb.cp ] ; 4 uses
  %.0166302 = phi ptr [ %i.mn, %.lr.ph306 ], [ %.1167, %bb.cp ] ; 4 uses
  %i.mz = load i32, ptr %i.lf, align 8, !tbaa !128
  %i.na = sext i32 %i.mz to i64
  %i.nb = icmp slt i64 %indvars.iv326, %i.na
  br i1 %i.nb, label %bb.cj, label %.critedge10

.critedge10:                                      ; preds = %bb.ci, %bb.cp, %bb.ch
  %i.nc = load ptr, ptr %i.f, align 8, !tbaa !93  ; 2 uses
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !98
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 32
  %i.nf = load ptr, ptr %i.ne, align 8
  %i.ng = invoke noundef i32 %i.nf(ptr noundef nonnull align 8 dereferenceable(8) %i.nc, i64 noundef %i.ms, i32 noundef 0)
          to label %bb.cq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cj:                                            ; preds = %bb.ci
  %i.nh = load ptr, ptr %i.mx, align 8, !tbaa !130
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %indvars.iv326
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !131 ; 2 uses
  %i.nk = trunc i64 %i.nj to i32
  %i.nl = load ptr, ptr %i.my, align 8, !tbaa !134
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %indvars.iv326
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !131 ; 3 uses
  %i.no = icmp sgt i64 %i.nn, -1
  br i1 %i.no, label %bb.ck, label %bb.cp

bb.ck:                                            ; preds = %bb.cj
  %sext = shl i64 %i.nj, 32
  %i.np = ashr exact i64 %sext, 32                ; 5 uses
  %i.nq = load ptr, ptr %i.f, align 8, !tbaa !93  ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !98
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 48
  %i.nt = load ptr, ptr %i.ns, align 8
  %i.nu = invoke noundef i64 %i.nt(ptr noundef nonnull align 8 dereferenceable(8) %i.nq)
          to label %bb.cl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cl:                                            ; preds = %bb.ck
  %i.nv = add nsw i64 %i.nn, %i.np
  %i.nw = icmp sgt i64 %i.nv, %i.nu
  %i.nx = icmp slt i32 %i.nk, 1
  %or.cond12.not291 = select i1 %i.nw, i1 true, i1 %i.nx
  %.not244 = icmp sgt i64 %i.np, %.0165303
  %or.cond275 = select i1 %or.cond12.not291, i1 true, i1 %.not244
  br i1 %or.cond275, label %bb.cp, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ny = load ptr, ptr %i.f, align 8, !tbaa !93  ; 2 uses
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !98
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 32
  %i.ob = load ptr, ptr %i.oa, align 8
  %i.oc = invoke noundef i32 %i.ob(ptr noundef nonnull align 8 dereferenceable(8) %i.ny, i64 noundef %i.nn, i32 noundef 0)
          to label %bb.cn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cn:                                            ; preds = %bb.cm
  %i.od = load ptr, ptr %i.f, align 8, !tbaa !93  ; 2 uses
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !98
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 24
  %i.og = load ptr, ptr %i.of, align 8
  %i.oh = invoke noundef i32 %i.og(ptr noundef nonnull align 8 dereferenceable(8) %i.od, ptr noundef %.0166302, i64 noundef %i.np, i64 noundef 1)
          to label %bb.co unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.co:                                            ; preds = %bb.cn
  %i.oi = sub nsw i64 %.0165303, %i.np
  %i.oj = getelementptr inbounds nuw i8, ptr %.0166302, i64 %i.np
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cl, %bb.cj
  %.1167 = phi ptr [ %i.oj, %bb.co ], [ %.0166302, %bb.cj ], [ %.0166302, %bb.cl ]
  %.1 = phi i64 [ %i.oi, %bb.co ], [ %.0165303, %bb.cj ], [ %.0165303, %bb.cl ]
  %indvars.iv.next327 = add nuw nsw i64 %indvars.iv326, 1 ; 2 uses
  %i.ok = load i32, ptr %i.lh, align 8, !tbaa !129
  %i.ol = sext i32 %i.ok to i64
  %i.om = icmp slt i64 %indvars.iv.next327, %i.ol
  br i1 %i.om, label %bb.ci, label %.critedge10, !llvm.loop !90

bb.cq:                                            ; preds = %.critedge10
  store i32 2, ptr %i.ak, align 8, !tbaa !95
  %i.on = load i32, ptr %i.a, align 8, !tbaa !75
  %i.oo = or i32 %i.on, 268435456
  store i32 %i.oo, ptr %i.a, align 8, !tbaa !75
  br label %bb.ea

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ck, %bb.cm, %bb.cn, %.invoke, %bb.cg, %bb.ce, %bb.cf, %bb.m, %bb.o, %bb.t, %bb.u, %bb.v, %._crit_edge, %bb.do, %bb.dl, %bb.dj, %bb.dh, %bb.dg, %bb.aw, %bb.ax, %.loopexit.thread, %bb.bf, %bb.az, %bb.ay, %bb.bl, %bb.bk, %bb.bm, %bb.cv, %bb.cw, %bb.cz, %bb.bv, %.critedge10
  %lpad.loopexit.split-lp391 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI17LibRaw_exceptions
  br label %.loopexit.split-lp

.thread284:                                       ; preds = %bb.by, %bb.bx, %bb.bw
  %.pr = load i32, ptr %i.al, align 8, !tbaa !71
  br label %bb.cr

bb.cr:                                            ; preds = %.thread284, %bb.bu
  %.pr287 = phi i32 [ %.pr, %.thread284 ], [ %i.kx, %bb.bu ] ; 2 uses
  %.not249 = icmp eq i32 %.pr287, 0
  br i1 %.not249, label %bb.cs, label %thread-pre-split

bb.cs:                                            ; preds = %bb.cr
  store i32 %i.kw, ptr %i.al, align 8, !tbaa !71
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.cr, %bb.cs
  %i.op = phi i32 [ %i.kw, %bb.cs ], [ %.pr287, %bb.cr ] ; 3 uses
  %i.oq = icmp ugt i32 %i.op, 536870912
  br i1 %i.oq, label %bb.ea, label %bb.ct

bb.ct:                                            ; preds = %thread-pre-split
  %i.or = icmp samesign ult i32 %i.op, 64
  br i1 %i.or, label %bb.ea, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 193504 ; 2 uses
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !99 ; 2 uses
  %.not250 = icmp eq ptr %i.ot, null
  br i1 %.not250, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.ot)
          to label %._crit_edge345 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge345:                                   ; preds = %bb.cv
  %.pre346 = load i32, ptr %i.al, align 8, !tbaa !71
  br label %bb.cw

bb.cw:                                            ; preds = %._crit_edge345, %bb.cu
  %i.ou = phi i32 [ %.pre346, %._crit_edge345 ], [ %i.op, %bb.cu ]
  %i.ov = zext i32 %i.ou to i64
  %i.ow = invoke noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.ov)
          to label %bb.cx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cx:                                            ; preds = %bb.cw
  store ptr %i.ow, ptr %i.os, align 8, !tbaa !99
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 193500 ; 2 uses
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !96
  %.not251 = icmp eq i32 %i.oy, 0
  br i1 %.not251, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store i32 %i.l, ptr %i.ox, align 4, !tbaa !96
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.oz = load ptr, ptr %i.f, align 8, !tbaa !93  ; 2 uses
  %i.pa = load i32, ptr %i.al, align 8, !tbaa !71
  %i.pb = zext i32 %i.pa to i64
  %i.pc = load ptr, ptr %i.oz, align 8, !tbaa !98
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 24
  %i.pe = load ptr, ptr %i.pd, align 8
  %i.pf = invoke noundef i32 %i.pe(ptr noundef nonnull align 8 dereferenceable(8) %i.oz, ptr noundef %i.ow, i64 noundef 1, i64 noundef %i.pb)
          to label %bb.da unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.da:                                            ; preds = %bb.cz
  store i32 2, ptr %i.ak, align 8, !tbaa !95
  %i.pg = load i32, ptr %i.a, align 8, !tbaa !75
  %i.ph = or i32 %i.pg, 268435456
  store i32 %i.ph, ptr %i.a, align 8, !tbaa !75
  br label %bb.ea

bb.db:                                            ; preds = %bb.p
  %i.pi = icmp eq i32 %i.n, 3
  br i1 %i.pi, label %bb.ea, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 5552 ; 2 uses
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !135
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 193492
  %i.pm = load i16, ptr %i.pl, align 4, !tbaa !123
  %i.pn = zext i16 %i.pm to i32
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 193494
  %i.pp = load i16, ptr %i.po, align 2, !tbaa !124
  %i.pq = zext i16 %i.pp to i32
  %i.pr = mul nuw nsw i32 %i.l, %i.pn
  %i.ps = mul i32 %i.pr, %i.pq                    ; 4 uses
  %i.pt = lshr i32 %i.pk, 5
  %.lobit = and i32 %i.pt, 1
  %i.pu = shl nuw i32 %i.ps, %.lobit              ; 5 uses
  %i.pv = shl nuw nsw i32 %i.ps, 1                ; 3 uses
  %i.pw = zext nneg i32 %i.pu to i64
  %i.px = icmp ugt i32 %i.pu, 536870912
  br i1 %i.px, label %bb.ea, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.py = icmp samesign ult i32 %i.pu, 64
  br i1 %i.py, label %bb.ea, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.pz = zext nneg i32 %i.pv to i64              ; 2 uses
  %i.qa = icmp samesign ugt i32 %i.ps, 268435456
  br i1 %i.qa, label %bb.ea, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.qb = icmp samesign ult i32 %i.ps, 32
  br i1 %i.qb, label %bb.ea, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.qc = invoke noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.pz, i64 noundef 1)
          to label %bb.dh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

bb.dh:                                            ; preds = %bb.dg
  %i.qd = load ptr, ptr %i.f, align 8, !tbaa !93  ; 2 uses
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !98
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 24
  %i.qg = load ptr, ptr %i.qf, align 8
  %i.qh = invoke noundef i32 %i.qg(ptr noundef nonnull align 8 dereferenceable(8) %i.qd, ptr noundef %i.qc, i64 noundef 1, i64 noundef %i.pz)
          to label %bb.di unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.di:                                            ; preds = %bb.dh
  %i.qi = load i16, ptr %i.h, align 8, !tbaa !136
  %.not235 = icmp eq i16 %i.qi, 18761
  br i1 %.not235, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZN6LibRaw11libraw_swabEPvi(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.qc, i32 noundef %i.pv)
          to label %bb.dk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 193504 ; 8 uses
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !99 ; 2 uses
  %.not236 = icmp eq ptr %i.qk, null
  br i1 %.not236, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.qk)
          to label %bb.dm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.ql = load i32, ptr %i.pj, align 8, !tbaa !135
  %i.qm = and i32 %i.ql, 32
  %.not237 = icmp eq i32 %i.qm, 0
  br i1 %.not237, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  store ptr %i.qc, ptr %i.qj, align 8, !tbaa !99
  br label %bb.dp

bb.do:                                            ; preds = %bb.dm
  %i.qn = invoke noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.pw)
          to label %.lr.ph.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.preheader:                                 ; preds = %bb.do
  store ptr %i.qn, ptr %i.qj, align 8, !tbaa !99
  %wide.trip.count = zext nneg i32 %i.pu to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %unroll_iter = and i64 %wide.trip.count, 1073741820
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa
  %lcmp.mod394 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod394)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.3, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.qo = getelementptr inbounds nuw [2 x i8], ptr %i.qc, i64 %indvars.iv.epil
  %i.qp = load i16, ptr %i.qo, align 2, !tbaa !73
  %i.qq = lshr i16 %i.qp, 8
  %i.qr = trunc nuw i16 %i.qq to i8
  %i.qs = load ptr, ptr %i.qj, align 8, !tbaa !99
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 %indvars.iv.epil
  store i8 %i.qr, ptr %i.qt, align 1, !tbaa !100
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !91

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.qc)
          to label %bb.dp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader ], [ %niter.next.3, %.lr.ph ]
  %i.qu = getelementptr inbounds nuw [2 x i8], ptr %i.qc, i64 %indvars.iv
  %i.qv = load i16, ptr %i.qu, align 2, !tbaa !73
  %i.qw = lshr i16 %i.qv, 8
  %i.qx = trunc nuw i16 %i.qw to i8
  %i.qy = load ptr, ptr %i.qj, align 8, !tbaa !99
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 %indvars.iv
  store i8 %i.qx, ptr %i.qz, align 1, !tbaa !100
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %i.qc, i64 %indvars.iv.next
  %i.rb = load i16, ptr %i.ra, align 2, !tbaa !73
  %i.rc = lshr i16 %i.rb, 8
  %i.rd = trunc nuw i16 %i.rc to i8
  %i.re = load ptr, ptr %i.qj, align 8, !tbaa !99
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 %indvars.iv.next
  store i8 %i.rd, ptr %i.rf, align 1, !tbaa !100
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.rg = getelementptr inbounds nuw [2 x i8], ptr %i.qc, i64 %indvars.iv.next.1
  %i.rh = load i16, ptr %i.rg, align 2, !tbaa !73
  %i.ri = lshr i16 %i.rh, 8
  %i.rj = trunc nuw i16 %i.ri to i8
  %i.rk = load ptr, ptr %i.qj, align 8, !tbaa !99
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 %indvars.iv.next.1
  store i8 %i.rj, ptr %i.rl, align 1, !tbaa !100
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.rm = getelementptr inbounds nuw [2 x i8], ptr %i.qc, i64 %indvars.iv.next.2
  %i.rn = load i16, ptr %i.rm, align 2, !tbaa !73
  %i.ro = lshr i16 %i.rn, 8
  %i.rp = trunc nuw i16 %i.ro to i8
  %i.rq = load ptr, ptr %i.qj, align 8, !tbaa !99
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 %indvars.iv.next.2
  store i8 %i.rp, ptr %i.rr, align 1, !tbaa !100
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !92

bb.dp:                                            ; preds = %._crit_edge, %bb.dn
  %storemerge238 = phi i32 [ 3, %bb.dn ], [ 2, %._crit_edge ]
  %storemerge = phi i32 [ %i.pv, %bb.dn ], [ %i.pu, %._crit_edge ]
  store i32 %storemerge238, ptr %i.ak, align 8, !tbaa !95
  store i32 %storemerge, ptr %i.al, align 8, !tbaa !71
  %i.rs = load i32, ptr %i.a, align 8, !tbaa !75
  %i.rt = or i32 %i.rs, 268435456
  store i32 %i.rt, ptr %i.a, align 8, !tbaa !75
  br label %bb.ea

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bq, %bb.ao
  %.pn271 = phi { ptr, i32 } [ %i.ki, %bb.bq ], [ %i.do, %bb.ao ], [ %lpad.loopexit.split-lp391, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.9 = extractvalue { ptr, i32 } %.pn271, 1
  %i.ru = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI17LibRaw_exceptions) #11
  %i.rv = icmp eq i32 %.9, %i.ru
  br i1 %i.rv, label %bb.dq, label %bb.eb

bb.dq:                                            ; preds = %.loopexit.split-lp
  %.9185 = extractvalue { ptr, i32 } %.pn271, 0
  %i.rw = call ptr @__cxa_begin_catch(ptr %.9185) #11
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !139
  switch i32 %i.rx, label %bb.dz [
    i32 11, label %bb.dr
    i32 1, label %bb.dt
    i32 10, label %bb.du
    i32 2, label %.invoke384
    i32 3, label %.invoke384
    i32 9, label %.invoke384
    i32 4, label %bb.dv
    i32 5, label %bb.dv
    i32 6, label %bb.dw
    i32 7, label %bb.dx
    i32 12, label %bb.dy
  ]

bb.dr:                                            ; preds = %bb.dq
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.dz unwind label %bb.ds

bb.ds:                                            ; preds = %.invoke384, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.dr
  %i.ry = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #11
  br label %bb.eb

bb.dt:                                            ; preds = %bb.dq
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.dz unwind label %bb.ds

bb.du:                                            ; preds = %bb.dq
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.dz unwind label %bb.ds

.invoke384:                                       ; preds = %bb.dq, %bb.dq, %bb.dq
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.dz unwind label %bb.ds

bb.dv:                                            ; preds = %bb.dq, %bb.dq
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.dz unwind label %bb.ds

bb.dw:                                            ; preds = %bb.dq
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.dz unwind label %bb.ds

bb.dx:                                            ; preds = %bb.dq
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.dz unwind label %bb.ds

bb.dy:                                            ; preds = %bb.dq
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.dz unwind label %bb.ds

bb.dz:                                            ; preds = %.invoke384, %bb.dq, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.dr
  %.10201 = phi i32 [ -2, %bb.dy ], [ -100011, %bb.dx ], [ -100013, %bb.dr ], [ -100007, %bb.dt ], [ -100012, %bb.du ], [ -1, %bb.dq ], [ -100008, %.invoke384 ], [ -100009, %bb.dv ], [ -100010, %bb.dw ]
  call void @__cxa_end_catch() #11
  br label %bb.ea

bb.ea:                                            ; preds = %.invoke, %bb.cc, %bb.cb, %bb.cq, %bb.aq, %bb.h, %bb.k, %bb.e, %bb.d, %bb.l, %bb.n, %bb.q, %bb.r, %bb.ar, %bb.ae, %bb.x, %bb.au, %bb.at, %bb.as, %bb.bg, %bb.bp, %bb.bi, %bb.bh, %bb.br, %bb.bs, %bb.bt, %bb.ct, %thread-pre-split, %bb.da, %bb.db, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.dp, %bb.p, %bb.b, %bb.a, %bb.dz
  %.11 = phi i32 [ -6, %bb.p ], [ -4, %bb.a ], [ -7, %bb.b ], [ %.10201, %bb.dz ], [ 0, %bb.h ], [ -5, %.invoke ], [ 0, %bb.k ], [ -6, %bb.cb ], [ -5, %bb.d ], [ -5, %bb.l ], [ -5, %bb.n ], [ -6, %bb.q ], [ -5, %bb.r ], [ 0, %bb.x ], [ -5, %bb.au ], [ 0, %bb.cq ], [ -5, %bb.br ], [ -6, %bb.bs ], [ -5, %bb.bt ], [ -5, %bb.ct ], [ -5, %bb.db ], [ -5, %bb.df ], [ -5, %bb.e ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 0, %bb.ae ], [ 0, %bb.bg ], [ -6, %bb.as ], [ -6, %bb.at ], [ -5, %bb.bi ], [ -6, %bb.bh ], [ 0, %bb.bp ], [ -6, %bb.de ], [ -6, %thread-pre-split ], [ 0, %bb.da ], [ 0, %bb.dp ], [ -6, %bb.dc ], [ -5, %bb.dd ], [ -5, %bb.cc ]
  ret i32 %.11

bb.eb:                                            ; preds = %bb.ds, %.loopexit.split-lp
  %.merged = phi { ptr, i32 } [ %i.ry, %bb.ds ], [ %.pn271, %.loopexit.split-lp ]
  resume { ptr, i32 } %.merged

bb.ec:                                            ; preds = %bb.bq
  %i.rz = landingpad { ptr, i32 }
          catch ptr null
  %i.sa = extractvalue { ptr, i32 } %i.rz, 0
  call void @__clang_call_terminate(ptr %i.sa) #13
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN6LibRaw17broadcom_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #2

declare void @_ZN6LibRaw22dng_ycbcr_thumb_loaderEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_ZN6LibRaw18kodak_thumb_loaderEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #2

declare void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #2

declare void @_ZN6LibRaw10crxLoadRawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #2

declare ptr @jpeg_std_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal void @_ZL13jpegErrorExitP18jpeg_common_struct(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !141
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  tail call void @longjmp(ptr noundef nonnull %i.b, i32 noundef 1) #13
  unreachable
}

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #4

declare void @jpeg_destroy_decompress(ptr noundef) local_unnamed_addr #2

declare void @jpeg_CreateDecompress(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @jpeg_mem_src(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @jpeg_read_header(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #11 ; 0 uses
  tail call void @_ZSt9terminatev() #13
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

declare noundef i32 @_ZN6LibRaw18find_ifd_by_offsetEx(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #2

declare void @_ZN6LibRaw11libraw_swabEPvi(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #7

declare void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @longjmp(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nounwind memory(none) }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind returns_twice }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
end_hunk_0
