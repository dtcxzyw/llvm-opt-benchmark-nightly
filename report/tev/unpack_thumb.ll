Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/unpack_thumb?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6LibRaw12unpack_thumbEv:bb.a
  %i.nf = zext i32 %i.ne to i64
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ll, i64 88
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ll, i64 72
  br label %bb.cu

bb.cu:                                            ; preds = %.lr.ph305, %bb.dd
  %indvars.iv324 = phi i64 [ 0, %.lr.ph305 ], [ %indvars.iv.next325, %bb.dd ] ; 4 uses
  %.0165302 = phi i64 [ %i.nf, %.lr.ph305 ], [ %.1, %bb.dd ] ; 4 uses
  %.0166301 = phi ptr [ %i.mw, %.lr.ph305 ], [ %.1167, %bb.dd ] ; 4 uses
  %i.ni = load i32, ptr %i.lm, align 8, !tbaa !128
  %i.nj = sext i32 %i.ni to i64
  %i.nk = icmp slt i64 %indvars.iv324, %i.nj
  br i1 %i.nk, label %bb.cw, label %.critedge10

.critedge10:                                      ; preds = %bb.cu, %bb.dd, %bb.ct
  %i.nl = load ptr, ptr %i.f, align 8, !tbaa !93  ; 2 uses
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !98
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 32
  %i.no = load ptr, ptr %i.nn, align 8
  %i.np = invoke noundef i32 %i.no(ptr noundef nonnull align 8 dereferenceable(8) %i.nl, i64 noundef %i.nb, i32 noundef 0)
          to label %bb.de unwind label %bb.df     ; 0 uses

bb.cv:                                            ; preds = %bb.cs
  %i.nq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI17LibRaw_exceptions
  br label %bb.eh

bb.cw:                                            ; preds = %bb.cu
  %i.nr = load ptr, ptr %i.ng, align 8, !tbaa !130
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %indvars.iv324
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !131 ; 2 uses
  %i.nu = trunc i64 %i.nt to i32
  %i.nv = load ptr, ptr %i.nh, align 8, !tbaa !134
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %indvars.iv324
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !131 ; 3 uses
  %i.ny = icmp sgt i64 %i.nx, -1
  br i1 %i.ny, label %bb.cx, label %bb.dd

bb.cx:                                            ; preds = %bb.cw
  %sext = shl i64 %i.nt, 32
  %i.nz = ashr exact i64 %sext, 32                ; 5 uses
  %i.oa = load ptr, ptr %i.f, align 8, !tbaa !93  ; 2 uses
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !98
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 48
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = invoke noundef i64 %i.od(ptr noundef nonnull align 8 dereferenceable(8) %i.oa)
          to label %bb.cy unwind label %bb.dc

bb.cy:                                            ; preds = %bb.cx
  %i.of = add nsw i64 %i.nx, %i.nz
  %i.og = icmp sgt i64 %i.of, %i.oe
  %i.oh = icmp slt i32 %i.nu, 1
  %or.cond12.not291 = select i1 %i.og, i1 true, i1 %i.oh
  %.not244 = icmp sgt i64 %i.nz, %.0165302
  %or.cond275 = select i1 %or.cond12.not291, i1 true, i1 %.not244
  br i1 %or.cond275, label %bb.dd, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.oi = load ptr, ptr %i.f, align 8, !tbaa !93  ; 2 uses
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !98
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 32
  %i.ol = load ptr, ptr %i.ok, align 8
  %i.om = invoke noundef i32 %i.ol(ptr noundef nonnull align 8 dereferenceable(8) %i.oi, i64 noundef %i.nx, i32 noundef 0)
          to label %bb.da unwind label %bb.dc     ; 0 uses

bb.da:                                            ; preds = %bb.cz
  %i.on = load ptr, ptr %i.f, align 8, !tbaa !93  ; 2 uses
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !98
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 24
  %i.oq = load ptr, ptr %i.op, align 8
  %i.or = invoke noundef i32 %i.oq(ptr noundef nonnull align 8 dereferenceable(8) %i.on, ptr noundef %.0166301, i64 noundef %i.nz, i64 noundef 1)
          to label %bb.db unwind label %bb.dc     ; 0 uses

bb.db:                                            ; preds = %bb.da
  %i.os = sub nsw i64 %.0165302, %i.nz
  %i.ot = getelementptr inbounds nuw i8, ptr %.0166301, i64 %i.nz
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da, %bb.cz, %bb.cx
  %i.ou = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI17LibRaw_exceptions
  br label %bb.eh

bb.dd:                                            ; preds = %bb.db, %bb.cy, %bb.cw
  %.1167 = phi ptr [ %i.ot, %bb.db ], [ %.0166301, %bb.cw ], [ %.0166301, %bb.cy ]
  %.1 = phi i64 [ %i.os, %bb.db ], [ %.0165302, %bb.cw ], [ %.0165302, %bb.cy ]
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 2 uses
  %i.ov = load i32, ptr %i.lo, align 8, !tbaa !129
  %i.ow = sext i32 %i.ov to i64
  %i.ox = icmp slt i64 %indvars.iv.next325, %i.ow
  br i1 %i.ox, label %bb.cu, label %.critedge10, !llvm.loop !90

bb.de:                                            ; preds = %.critedge10
  store i32 2, ptr %i.am, align 8, !tbaa !95
  %i.oy = load i32, ptr %i.a, align 8, !tbaa !75
  %i.oz = or i32 %i.oy, 268435456
  store i32 %i.oz, ptr %i.a, align 8, !tbaa !75
  br label %bb.es

bb.df:                                            ; preds = %.critedge10
  %i.pa = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI17LibRaw_exceptions
  br label %bb.eh

.thread284:                                       ; preds = %bb.ci, %bb.ch, %bb.cg
  %.pr = load i32, ptr %i.an, align 8, !tbaa !71
  br label %bb.dg

bb.dg:                                            ; preds = %.thread284, %bb.ce
  %.pr287 = phi i32 [ %.pr, %.thread284 ], [ %i.le, %bb.ce ] ; 2 uses
  %.not249 = icmp eq i32 %.pr287, 0
  br i1 %.not249, label %bb.dh, label %thread-pre-split

bb.dh:                                            ; preds = %bb.dg
  store i32 %i.ld, ptr %i.an, align 8, !tbaa !71
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.dg, %bb.dh
  %i.pb = phi i32 [ %i.ld, %bb.dh ], [ %.pr287, %bb.dg ] ; 3 uses
  %i.pc = icmp ugt i32 %i.pb, 536870912
  br i1 %i.pc, label %bb.es, label %bb.di

bb.di:                                            ; preds = %thread-pre-split
  %i.pd = icmp samesign ult i32 %i.pb, 64
  br i1 %i.pd, label %bb.es, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 193504 ; 2 uses
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !99 ; 2 uses
  %.not250 = icmp eq ptr %i.pf, null
  br i1 %.not250, label %bb.dm, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.pf)
          to label %._crit_edge343 unwind label %bb.dl

._crit_edge343:                                   ; preds = %bb.dk
  %.pre344 = load i32, ptr %i.an, align 8, !tbaa !71
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dp, %bb.dm, %bb.dk
  %i.pg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI17LibRaw_exceptions
  br label %bb.eh

bb.dm:                                            ; preds = %._crit_edge343, %bb.dj
  %i.ph = phi i32 [ %.pre344, %._crit_edge343 ], [ %i.pb, %bb.dj ]
  %i.pi = zext i32 %i.ph to i64
  %i.pj = invoke noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.pi)
          to label %bb.dn unwind label %bb.dl     ; 2 uses

bb.dn:                                            ; preds = %bb.dm
  store ptr %i.pj, ptr %i.pe, align 8, !tbaa !99
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 193500 ; 2 uses
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !96
  %.not251 = icmp eq i32 %i.pl, 0
  br i1 %.not251, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  store i32 %i.l, ptr %i.pk, align 4, !tbaa !96
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.pm = load ptr, ptr %i.f, align 8, !tbaa !93  ; 2 uses
  %i.pn = load i32, ptr %i.an, align 8, !tbaa !71
  %i.po = zext i32 %i.pn to i64
  %i.pp = load ptr, ptr %i.pm, align 8, !tbaa !98
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 24
  %i.pr = load ptr, ptr %i.pq, align 8
  %i.ps = invoke noundef i32 %i.pr(ptr noundef nonnull align 8 dereferenceable(8) %i.pm, ptr noundef %i.pj, i64 noundef 1, i64 noundef %i.po)
          to label %bb.dq unwind label %bb.dl     ; 0 uses

bb.dq:                                            ; preds = %bb.dp
  store i32 2, ptr %i.am, align 8, !tbaa !95
  %i.pt = load i32, ptr %i.a, align 8, !tbaa !75
  %i.pu = or i32 %i.pt, 268435456
  store i32 %i.pu, ptr %i.a, align 8, !tbaa !75
  br label %bb.es

bb.dr:                                            ; preds = %bb.s
  %i.pv = icmp eq i32 %i.n, 3
  br i1 %i.pv, label %bb.es, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 5552 ; 2 uses
  %i.px = load i32, ptr %i.pw, align 8, !tbaa !135
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 193492
  %i.pz = load i16, ptr %i.py, align 4, !tbaa !123
  %i.qa = zext i16 %i.pz to i32
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 193494
  %i.qc = load i16, ptr %i.qb, align 2, !tbaa !124
  %i.qd = zext i16 %i.qc to i32
  %i.qe = mul nuw nsw i32 %i.l, %i.qa
  %i.qf = mul i32 %i.qe, %i.qd                    ; 4 uses
  %i.qg = lshr i32 %i.px, 5
  %.lobit = and i32 %i.qg, 1
  %i.qh = shl nuw i32 %i.qf, %.lobit              ; 5 uses
  %i.qi = shl nuw nsw i32 %i.qf, 1                ; 3 uses
  %i.qj = zext nneg i32 %i.qh to i64
  %i.qk = icmp ugt i32 %i.qh, 536870912
  br i1 %i.qk, label %bb.es, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ql = icmp samesign ult i32 %i.qh, 64
  br i1 %i.ql, label %bb.es, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.qm = zext nneg i32 %i.qi to i64              ; 2 uses
  %i.qn = icmp samesign ugt i32 %i.qf, 268435456
  br i1 %i.qn, label %bb.es, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.qo = icmp samesign ult i32 %i.qf, 32
  br i1 %i.qo, label %bb.es, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.qp = invoke noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.qm, i64 noundef 1)
          to label %bb.dx unwind label %bb.ea     ; 9 uses

bb.dx:                                            ; preds = %bb.dw
  %i.qq = load ptr, ptr %i.f, align 8, !tbaa !93  ; 2 uses
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !98
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 24
  %i.qt = load ptr, ptr %i.qs, align 8
  %i.qu = invoke noundef i32 %i.qt(ptr noundef nonnull align 8 dereferenceable(8) %i.qq, ptr noundef %i.qp, i64 noundef 1, i64 noundef %i.qm)
          to label %bb.dy unwind label %bb.ea     ; 0 uses

bb.dy:                                            ; preds = %bb.dx
  %i.qv = load i16, ptr %i.h, align 8, !tbaa !136
  %.not235 = icmp eq i16 %i.qv, 18761
  br i1 %.not235, label %bb.eb, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  invoke void @_ZN6LibRaw11libraw_swabEPvi(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.qp, i32 noundef %i.qi)
          to label %bb.eb unwind label %bb.ea

bb.ea:                                            ; preds = %._crit_edge, %bb.ef, %bb.ec, %bb.dz, %bb.dx, %bb.dw
  %i.qw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI17LibRaw_exceptions
  br label %bb.eh

bb.eb:                                            ; preds = %bb.dz, %bb.dy
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 193504 ; 8 uses
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !99 ; 2 uses
  %.not236 = icmp eq ptr %i.qy, null
  br i1 %.not236, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.qy)
          to label %bb.ed unwind label %bb.ea

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.qz = load i32, ptr %i.pw, align 8, !tbaa !135
  %i.ra = and i32 %i.qz, 32
  %.not237 = icmp eq i32 %i.ra, 0
  br i1 %.not237, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  store ptr %i.qp, ptr %i.qx, align 8, !tbaa !99
  br label %bb.eg

bb.ef:                                            ; preds = %bb.ed
  %i.rb = invoke noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.qj)
          to label %.lr.ph.preheader unwind label %bb.ea

.lr.ph.preheader:                                 ; preds = %bb.ef
  store ptr %i.rb, ptr %i.qx, align 8, !tbaa !99
  %wide.trip.count = zext nneg i32 %i.qh to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %unroll_iter = and i64 %wide.trip.count, 1073741820
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa
  %lcmp.mod390 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod390)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.3, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.rc = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %indvars.iv.epil
  %i.rd = load i16, ptr %i.rc, align 2, !tbaa !73
  %i.re = lshr i16 %i.rd, 8
  %i.rf = trunc nuw i16 %i.re to i8
  %i.rg = load ptr, ptr %i.qx, align 8, !tbaa !99
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 %indvars.iv.epil
  store i8 %i.rf, ptr %i.rh, align 1, !tbaa !100
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !91

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.qp)
          to label %bb.eg unwind label %bb.ea

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader ], [ %niter.next.3, %.lr.ph ]
  %i.ri = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %indvars.iv
  %i.rj = load i16, ptr %i.ri, align 2, !tbaa !73
  %i.rk = lshr i16 %i.rj, 8
  %i.rl = trunc nuw i16 %i.rk to i8
  %i.rm = load ptr, ptr %i.qx, align 8, !tbaa !99
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 %indvars.iv
  store i8 %i.rl, ptr %i.rn, align 1, !tbaa !100
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ro = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %indvars.iv.next
  %i.rp = load i16, ptr %i.ro, align 2, !tbaa !73
  %i.rq = lshr i16 %i.rp, 8
  %i.rr = trunc nuw i16 %i.rq to i8
  %i.rs = load ptr, ptr %i.qx, align 8, !tbaa !99
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 %indvars.iv.next
  store i8 %i.rr, ptr %i.rt, align 1, !tbaa !100
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ru = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %indvars.iv.next.1
  %i.rv = load i16, ptr %i.ru, align 2, !tbaa !73
  %i.rw = lshr i16 %i.rv, 8
  %i.rx = trunc nuw i16 %i.rw to i8
  %i.ry = load ptr, ptr %i.qx, align 8, !tbaa !99
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 %indvars.iv.next.1
  store i8 %i.rx, ptr %i.rz, align 1, !tbaa !100
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %indvars.iv.next.2
  %i.sb = load i16, ptr %i.sa, align 2, !tbaa !73
  %i.sc = lshr i16 %i.sb, 8
  %i.sd = trunc nuw i16 %i.sc to i8
  %i.se = load ptr, ptr %i.qx, align 8, !tbaa !99
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 %indvars.iv.next.2
  store i8 %i.sd, ptr %i.sf, align 1, !tbaa !100
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !92

bb.eg:                                            ; preds = %._crit_edge, %bb.ee
  %storemerge238 = phi i32 [ 3, %bb.ee ], [ 2, %._crit_edge ]
  %storemerge = phi i32 [ %i.qi, %bb.ee ], [ %i.qh, %._crit_edge ]
  store i32 %storemerge238, ptr %i.am, align 8, !tbaa !95
  store i32 %storemerge, ptr %i.an, align 8, !tbaa !71
  %i.sg = load i32, ptr %i.a, align 8, !tbaa !75
  %i.sh = or i32 %i.sg, 268435456
  store i32 %i.sh, ptr %i.a, align 8, !tbaa !75
  br label %bb.es

bb.eh:                                            ; preds = %bb.dl, %bb.cq, %bb.dc, %bb.df, %bb.cv, %bb.cj, %bb.bs, %bb.ca, %bb.bw, %bb.bc, %bb.bh, %bb.ea, %bb.aw, %bb.j
  %.pn271 = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %.pn269, %bb.aw ], [ %i.qw, %bb.ea ], [ %i.et, %bb.bc ], [ %i.kp, %bb.ca ], [ %i.fj, %bb.bh ], [ %i.jh, %bb.bs ], [ %i.kh, %bb.bw ], [ %i.pg, %bb.dl ], [ %i.lz, %bb.cj ], [ %i.mt, %bb.cq ], [ %i.nq, %bb.cv ], [ %i.ou, %bb.dc ], [ %i.pa, %bb.df ] ; 3 uses
  %.9 = extractvalue { ptr, i32 } %.pn271, 1
  %i.si = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI17LibRaw_exceptions) #11
  %i.sj = icmp eq i32 %.9, %i.si
  br i1 %i.sj, label %bb.ei, label %bb.et

bb.ei:                                            ; preds = %bb.eh
  %.9185 = extractvalue { ptr, i32 } %.pn271, 0
  %i.sk = call ptr @__cxa_begin_catch(ptr %.9185) #11
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !139
  switch i32 %i.sl, label %bb.er [
    i32 11, label %bb.ej
    i32 1, label %bb.el
    i32 10, label %bb.em
    i32 2, label %.invoke383
    i32 3, label %.invoke383
    i32 9, label %.invoke383
    i32 4, label %bb.en
    i32 5, label %bb.en
    i32 6, label %bb.eo
    i32 7, label %bb.ep
    i32 12, label %bb.eq
  ]

bb.ej:                                            ; preds = %bb.ei
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.er unwind label %bb.ek

bb.ek:                                            ; preds = %.invoke383, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ej
  %i.sm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #11
  br label %bb.et

bb.el:                                            ; preds = %bb.ei
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.er unwind label %bb.ek

bb.em:                                            ; preds = %bb.ei
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.er unwind label %bb.ek

.invoke383:                                       ; preds = %bb.ei, %bb.ei, %bb.ei
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.er unwind label %bb.ek

bb.en:                                            ; preds = %bb.ei, %bb.ei
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.er unwind label %bb.ek

bb.eo:                                            ; preds = %bb.ei
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.er unwind label %bb.ek

bb.ep:                                            ; preds = %bb.ei
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.er unwind label %bb.ek

bb.eq:                                            ; preds = %bb.ei
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.er unwind label %bb.ek

bb.er:                                            ; preds = %.invoke383, %bb.ei, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ej
  %.10201 = phi i32 [ -2, %bb.eq ], [ -100011, %bb.ep ], [ -100013, %bb.ej ], [ -100007, %bb.el ], [ -100012, %bb.em ], [ -1, %bb.ei ], [ -100008, %.invoke383 ], [ -100009, %bb.en ], [ -100010, %bb.eo ]
  call void @__cxa_end_catch() #11
  br label %bb.es

bb.es:                                            ; preds = %.invoke, %bb.cn, %bb.cm, %bb.de, %bb.au, %bb.h, %bb.m, %bb.e, %bb.d, %bb.o, %bb.q, %bb.t, %bb.u, %bb.av, %bb.ah, %bb.aa, %bb.az, %bb.ay, %bb.ax, %bb.bn, %bb.bz, %bb.by, %bb.bp, %bb.bo, %bb.cb, %bb.cc, %bb.cd, %bb.di, %thread-pre-split, %bb.dq, %bb.dr, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.eg, %bb.s, %bb.b, %bb.a, %bb.er
  %.11 = phi i32 [ -6, %bb.s ], [ -4, %bb.a ], [ -7, %bb.b ], [ %.10201, %bb.er ], [ 0, %bb.h ], [ -6, %bb.cm ], [ 0, %bb.m ], [ -5, %.invoke ], [ -5, %bb.d ], [ -5, %bb.o ], [ -5, %bb.q ], [ -6, %bb.t ], [ -5, %bb.u ], [ 0, %bb.aa ], [ -5, %bb.az ], [ -5, %bb.by ], [ -5, %bb.cb ], [ -6, %bb.cc ], [ -5, %bb.cd ], [ -5, %bb.di ], [ -5, %bb.dr ], [ -5, %bb.dv ], [ -5, %bb.e ], [ 0, %bb.au ], [ 0, %bb.av ], [ 0, %bb.ah ], [ 0, %bb.bn ], [ -6, %bb.ax ], [ -6, %bb.ay ], [ -5, %bb.bp ], [ -6, %bb.bo ], [ 0, %bb.bz ], [ -6, %bb.du ], [ -6, %thread-pre-split ], [ 0, %bb.dq ], [ 0, %bb.eg ], [ -6, %bb.ds ], [ -5, %bb.dt ], [ -5, %bb.cn ], [ 0, %bb.de ]
  ret i32 %.11

bb.et:                                            ; preds = %bb.ek, %bb.eh
  %.merged = phi { ptr, i32 } [ %i.sm, %bb.ek ], [ %.pn271, %bb.eh ]
  resume { ptr, i32 } %.merged

bb.eu:                                            ; preds = %bb.ca
  %i.sn = landingpad { ptr, i32 }
          catch ptr null
  %i.so = extractvalue { ptr, i32 } %i.sn, 0
  call void @__clang_call_terminate(ptr %i.so) #13
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
