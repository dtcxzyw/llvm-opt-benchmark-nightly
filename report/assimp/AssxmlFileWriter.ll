inline.NumInlined: 169
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6Assimp17DumpSceneToAssxmlEPKcS1_PNS_8IOSystemEPK7aiSceneb:bb.a
.lr.ph667.i:                                      ; preds = %.preheader605.i
  %i.nf = getelementptr inbounds nuw i8, ptr %i.lk, i64 1032
  br label %bb.db

._crit_edge668.i:                                 ; preds = %bb.dc, %.preheader605.i
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.40)
          to label %bb.de unwind label %bb.da

bb.da:                                            ; preds = %bb.cw, %bb.cz, %._crit_edge668.i, %bb.df, %._crit_edge671.i, %bb.dk, %._crit_edge674.i, %bb.do
  %i.ng = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

bb.db:                                            ; preds = %bb.dc, %.lr.ph667.i
  %indvars.iv777.i = phi i64 [ 0, %.lr.ph667.i ], [ %indvars.iv.next778.i, %bb.dc ] ; 2 uses
  %i.nh = load ptr, ptr %i.nf, align 8
  %i.ni = getelementptr inbounds nuw [24 x i8], ptr %i.nh, i64 %indvars.iv777.i ; 4 uses
  %i.nj = load double, ptr %i.ni, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.nl = load float, ptr %i.nk, align 8
  %i.nm = fpext float %i.nl to double
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ni, i64 12
  %i.no = load float, ptr %i.nn, align 4
  %i.np = fpext float %i.no to double
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %i.nr = load float, ptr %i.nq, align 8
  %i.ns = fpext float %i.nr to double
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.39, double noundef %i.nj, double noundef %i.nm, double noundef %i.np, double noundef %i.ns)
          to label %bb.dc unwind label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %indvars.iv.next778.i = add nuw nsw i64 %indvars.iv777.i, 1 ; 2 uses
  %i.nt = load i32, ptr %i.nc, align 4
  %i.nu = zext i32 %i.nt to i64
  %i.nv = icmp samesign ult i64 %indvars.iv.next778.i, %i.nu
  br i1 %i.nv, label %bb.db, label %._crit_edge668.i, !llvm.loop !21

bb.dd:                                            ; preds = %bb.db
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

bb.de:                                            ; preds = %._crit_edge668.i, %bb.cy
  %i.nx = getelementptr inbounds nuw i8, ptr %i.lk, i64 1056 ; 3 uses
  %i.ny = load i32, ptr %i.nx, align 8            ; 2 uses
  %.not495.i = icmp eq i32 %i.ny, 0
  br i1 %.not495.i, label %bb.dj, label %bb.df

bb.df:                                            ; preds = %bb.de
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.41, i32 noundef %i.ny)
          to label %.preheader604.i unwind label %bb.da

.preheader604.i:                                  ; preds = %bb.df
  %i.nz = load i32, ptr %i.nx, align 8
  %.not725.i = icmp eq i32 %i.nz, 0
  br i1 %.not725.i, label %._crit_edge671.i, label %.lr.ph670.i

.lr.ph670.i:                                      ; preds = %.preheader604.i
  %i.oa = getelementptr inbounds nuw i8, ptr %i.lk, i64 1064
  br label %bb.dg

._crit_edge671.i:                                 ; preds = %bb.dh, %.preheader604.i
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.43)
          to label %bb.dj unwind label %bb.da

bb.dg:                                            ; preds = %bb.dh, %.lr.ph670.i
  %indvars.iv780.i = phi i64 [ 0, %.lr.ph670.i ], [ %indvars.iv.next781.i, %bb.dh ] ; 2 uses
  %i.ob = load ptr, ptr %i.oa, align 8
  %i.oc = getelementptr inbounds nuw [24 x i8], ptr %i.ob, i64 %indvars.iv780.i ; 4 uses
  %i.od = load double, ptr %i.oc, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %i.of = load float, ptr %i.oe, align 8
  %i.og = fpext float %i.of to double
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oc, i64 12
  %i.oi = load float, ptr %i.oh, align 4
  %i.oj = fpext float %i.oi to double
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %i.ol = load float, ptr %i.ok, align 8
  %i.om = fpext float %i.ol to double
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.42, double noundef %i.od, double noundef %i.og, double noundef %i.oj, double noundef %i.om)
          to label %bb.dh unwind label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %indvars.iv.next781.i = add nuw nsw i64 %indvars.iv780.i, 1 ; 2 uses
  %i.on = load i32, ptr %i.nx, align 8
  %i.oo = zext i32 %i.on to i64
  %i.op = icmp samesign ult i64 %indvars.iv.next781.i, %i.oo
  br i1 %i.op, label %bb.dg, label %._crit_edge671.i, !llvm.loop !22

bb.di:                                            ; preds = %bb.dg
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

bb.dj:                                            ; preds = %._crit_edge671.i, %bb.de
  %i.or = getelementptr inbounds nuw i8, ptr %i.lk, i64 1040 ; 3 uses
  %i.os = load i32, ptr %i.or, align 8            ; 2 uses
  %.not496.i = icmp eq i32 %i.os, 0
  br i1 %.not496.i, label %bb.do, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.44, i32 noundef %i.os)
          to label %.preheader603.i unwind label %bb.da

.preheader603.i:                                  ; preds = %bb.dk
  %i.ot = load i32, ptr %i.or, align 8
  %.not726.i = icmp eq i32 %i.ot, 0
  br i1 %.not726.i, label %._crit_edge674.i, label %.lr.ph673.i

.lr.ph673.i:                                      ; preds = %.preheader603.i
  %i.ou = getelementptr inbounds nuw i8, ptr %i.lk, i64 1048
  br label %bb.dl

._crit_edge674.i:                                 ; preds = %bb.dm, %.preheader603.i
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.46)
          to label %bb.do unwind label %bb.da

bb.dl:                                            ; preds = %bb.dm, %.lr.ph673.i
  %indvars.iv783.i = phi i64 [ 0, %.lr.ph673.i ], [ %indvars.iv.next784.i, %bb.dm ] ; 2 uses
  %i.ov = load ptr, ptr %i.ou, align 8
  %i.ow = getelementptr inbounds nuw [32 x i8], ptr %i.ov, i64 %indvars.iv783.i ; 5 uses
  %i.ox = load double, ptr %i.ow, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 12
  %i.pa = load float, ptr %i.oz, align 4
  %i.pb = fpext float %i.pa to double
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %i.pd = load float, ptr %i.pc, align 8
  %i.pe = fpext float %i.pd to double
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ow, i64 20
  %i.pg = load float, ptr %i.pf, align 4
  %i.ph = fpext float %i.pg to double
  %i.pi = load float, ptr %i.oy, align 8
  %i.pj = fpext float %i.pi to double
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.45, double noundef %i.ox, double noundef %i.pb, double noundef %i.pe, double noundef %i.ph, double noundef %i.pj)
          to label %bb.dm unwind label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %indvars.iv.next784.i = add nuw nsw i64 %indvars.iv783.i, 1 ; 2 uses
  %i.pk = load i32, ptr %i.or, align 8
  %i.pl = zext i32 %i.pk to i64
  %i.pm = icmp samesign ult i64 %indvars.iv.next784.i, %i.pl
  br i1 %i.pm, label %bb.dl, label %._crit_edge674.i, !llvm.loop !23

bb.dn:                                            ; preds = %bb.dl
  %i.pn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

bb.do:                                            ; preds = %._crit_edge674.i, %bb.dj, %bb.cx
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.47)
          to label %bb.dp unwind label %bb.da

bb.dp:                                            ; preds = %bb.do
  %indvars.iv.next787.i = add nuw nsw i64 %indvars.iv786.i, 1 ; 2 uses
  %i.po = load i32, ptr %i.ld, align 8
  %i.pp = zext i32 %i.po to i64
  %i.pq = icmp samesign ult i64 %indvars.iv.next787.i, %i.pp
  br i1 %i.pq, label %bb.cj, label %._crit_edge677.i, !llvm.loop !24

bb.dq:                                            ; preds = %._crit_edge677.i, %bb.cg
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.49)
          to label %bb.dr unwind label %bb.ci

bb.dr:                                            ; preds = %bb.dq
  %indvars.iv.next790.i = add nuw nsw i64 %indvars.iv789.i, 1 ; 2 uses
  %i.pr = load i32, ptr %i.kr, align 8
  %i.ps = zext i32 %i.pr to i64
  %i.pt = icmp samesign ult i64 %indvars.iv.next790.i, %i.ps
  br i1 %i.pt, label %bb.cf, label %._crit_edge680.i, !llvm.loop !25

bb.ds:                                            ; preds = %._crit_edge680.i, %bb.cd
  %i.pu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.pv = load i32, ptr %i.pu, align 8            ; 2 uses
  %.not475.i = icmp eq i32 %i.pv, 0
  br i1 %.not475.i, label %bb.hq, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.51, i32 noundef %i.pv)
          to label %.preheader602.i unwind label %bb.z

.preheader602.i:                                  ; preds = %bb.dt
  %i.pw = load i32, ptr %i.pu, align 8
  %.not727.i = icmp eq i32 %i.pw, 0
  br i1 %.not727.i, label %._crit_edge711.i, label %.lr.ph710.i

.lr.ph710.i:                                      ; preds = %.preheader602.i
  %i.px = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.py = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 8 uses
  br label %bb.du

._crit_edge711.i:                                 ; preds = %bb.hp, %.preheader602.i
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.85)
          to label %bb.hq unwind label %bb.z

bb.du:                                            ; preds = %bb.hp, %.lr.ph710.i
  %indvars.iv855.i = phi i64 [ 0, %.lr.ph710.i ], [ %indvars.iv.next856.i, %bb.hp ] ; 2 uses
  %i.pz = load ptr, ptr %i.px, align 8
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.pz, i64 %indvars.iv855.i
  %i.qb = load ptr, ptr %i.qa, align 8            ; 22 uses
  %i.qc = load i32, ptr %i.qb, align 8            ; 4 uses
  %.not476.i = trunc nuw i32 %i.qc to i1
  %16 = select i1 %.not476.i, ptr @.str.53, ptr @.str.18
  %17 = and i32 %i.qc, 2
  %.not477.i = icmp eq i32 %17, 0
  %i.qd = select i1 %.not477.i, ptr @.str.18, ptr @.str.54
  %18 = and i32 %i.qc, 4
  %.not478.i = icmp eq i32 %18, 0
  %19 = select i1 %.not478.i, ptr @.str.18, ptr @.str.55
  %20 = and i32 %i.qc, 8
  %.not479.i = icmp eq i32 %20, 0
  %i.qe = select i1 %.not479.i, ptr @.str.18, ptr @.str.56
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qb, i64 232
  %i.qg = load i32, ptr %i.qf, align 8
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.52, ptr noundef nonnull %16, ptr noundef nonnull %i.qd, ptr noundef nonnull %19, ptr noundef nonnull %i.qe, i32 noundef %i.qg)
          to label %bb.dv unwind label %bb.dx

bb.dv:                                            ; preds = %bb.du
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qb, i64 216 ; 3 uses
  %i.qi = load i32, ptr %i.qh, align 8            ; 2 uses
  %.not480.i = icmp eq i32 %i.qi, 0
  br i1 %.not480.i, label %bb.ev, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.57, i32 noundef %i.qi)
          to label %.preheader601.i unwind label %bb.dx

.preheader601.i:                                  ; preds = %bb.dw
  %i.qj = load i32, ptr %i.qh, align 8
  %.not728.i = icmp eq i32 %i.qj, 0
  br i1 %.not728.i, label %._crit_edge686.i, label %.lr.ph685.i

.lr.ph685.i:                                      ; preds = %.preheader601.i
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qb, i64 224
  br label %bb.dy

._crit_edge686.i:                                 ; preds = %bb.eu, %.preheader601.i
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.63)
          to label %bb.ev unwind label %bb.dx

bb.dx:                                            ; preds = %bb.du, %bb.dw, %._crit_edge686.i, %bb.ex, %._crit_edge692.i, %bb.ff, %.loopexit599.i, %bb.fk, %.loopexit597.i, %bb.fp, %.loopexit595.i, %bb.ft, %.loopexit593.i, %bb.ho
  %i.ql = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

bb.dy:                                            ; preds = %bb.eu, %.lr.ph685.i
  %indvars.iv795.i = phi i64 [ 0, %.lr.ph685.i ], [ %indvars.iv.next796.i, %bb.eu ] ; 2 uses
  %i.qm = load ptr, ptr %i.qk, align 8
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %indvars.iv795.i
  %i.qo = load ptr, ptr %i.qn, align 8            ; 21 uses
  store i32 0, ptr %8, align 4
  %i.qp = load i32, ptr %i.qo, align 4
  %.not.i555.i = icmp eq i32 %i.qp, 0
  br i1 %.not.i555.i, label %bb.el, label %.lr.ph.i556.i

.lr.ph.i556.i:                                    ; preds = %bb.dy
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qo, i64 4
  br label %bb.dz

._crit_edge.loopexit.i560.i:                      ; preds = %_ZN8aiString6AppendEPKc.exit.i558.i
  %i.qr = zext i32 %i.rw to i64
  br label %bb.el

bb.dz:                                            ; preds = %_ZN8aiString6AppendEPKc.exit.i558.i, %.lr.ph.i556.i
  %i.qs = phi i32 [ 0, %.lr.ph.i556.i ], [ %i.rw, %_ZN8aiString6AppendEPKc.exit.i558.i ] ; 13 uses
  %i.qt = phi i32 [ 0, %.lr.ph.i556.i ], [ %i.rx, %_ZN8aiString6AppendEPKc.exit.i558.i ] ; 9 uses
  %i.qu = phi i32 [ 0, %.lr.ph.i556.i ], [ %i.ry, %_ZN8aiString6AppendEPKc.exit.i558.i ] ; 7 uses
  %i.qv = phi i32 [ 0, %.lr.ph.i556.i ], [ %i.rz, %_ZN8aiString6AppendEPKc.exit.i558.i ] ; 5 uses
  %i.qw = phi i32 [ 0, %.lr.ph.i556.i ], [ %i.sa, %_ZN8aiString6AppendEPKc.exit.i558.i ] ; 3 uses
  %indvars.iv.i557.i = phi i64 [ 0, %.lr.ph.i556.i ], [ %indvars.iv.next.i559.i, %_ZN8aiString6AppendEPKc.exit.i558.i ] ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qq, i64 %indvars.iv.i557.i
  %i.qy = load i8, ptr %i.qx, align 1             ; 2 uses
  switch i8 %i.qy, label %bb.ek [
    i8 60, label %bb.ea
    i8 62, label %bb.ec
    i8 38, label %bb.ee
    i8 34, label %bb.eg
    i8 39, label %bb.ei
  ]

bb.ea:                                            ; preds = %bb.dz
  %i.qz = add i32 %i.qs, 4                        ; 7 uses
  %i.ra = icmp ugt i32 %i.qz, 1023
  br i1 %i.ra, label %_ZN8aiString6AppendEPKc.exit.i558.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.rb = zext i32 %i.qs to i64
  %i.rc = getelementptr inbounds nuw i8, ptr %i.py, i64 %i.rb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.rc, ptr noundef nonnull align 1 dereferenceable(5) @.str.96, i64 5, i1 false)
  store i32 %i.qz, ptr %8, align 4
  br label %_ZN8aiString6AppendEPKc.exit.i558.i

bb.ec:                                            ; preds = %bb.dz
  %i.rd = add i32 %i.qt, 4                        ; 7 uses
  %i.re = icmp ugt i32 %i.rd, 1023
  br i1 %i.re, label %_ZN8aiString6AppendEPKc.exit.i558.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.rf = zext i32 %i.qt to i64
  %i.rg = getelementptr inbounds nuw i8, ptr %i.py, i64 %i.rf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.rg, ptr noundef nonnull align 1 dereferenceable(5) @.str.97, i64 5, i1 false)
  store i32 %i.rd, ptr %8, align 4
  br label %_ZN8aiString6AppendEPKc.exit.i558.i

bb.ee:                                            ; preds = %bb.dz
  %i.rh = add i32 %i.qu, 5                        ; 7 uses
  %i.ri = icmp ugt i32 %i.rh, 1023
  br i1 %i.ri, label %_ZN8aiString6AppendEPKc.exit.i558.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.rj = zext i32 %i.qu to i64
  %i.rk = getelementptr inbounds nuw i8, ptr %i.py, i64 %i.rj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.rk, ptr noundef nonnull align 1 dereferenceable(6) @.str.93, i64 6, i1 false)
  store i32 %i.rh, ptr %8, align 4
  br label %_ZN8aiString6AppendEPKc.exit.i558.i

bb.eg:                                            ; preds = %bb.dz
  %i.rl = add i32 %i.qv, 6                        ; 7 uses
  %i.rm = icmp ugt i32 %i.rl, 1023
  br i1 %i.rm, label %_ZN8aiString6AppendEPKc.exit.i558.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.rn = zext i32 %i.qv to i64
  %i.ro = getelementptr inbounds nuw i8, ptr %i.py, i64 %i.rn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ro, ptr noundef nonnull align 1 dereferenceable(7) @.str.94, i64 7, i1 false)
  store i32 %i.rl, ptr %8, align 4
  br label %_ZN8aiString6AppendEPKc.exit.i558.i

bb.ei:                                            ; preds = %bb.dz
  %i.rp = add i32 %i.qw, 6                        ; 7 uses
  %i.rq = icmp ugt i32 %i.rp, 1023
  br i1 %i.rq, label %_ZN8aiString6AppendEPKc.exit.i558.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.rr = zext i32 %i.qw to i64
  %i.rs = getelementptr inbounds nuw i8, ptr %i.py, i64 %i.rr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.rs, ptr noundef nonnull align 1 dereferenceable(7) @.str.95, i64 7, i1 false)
  store i32 %i.rp, ptr %8, align 4
  br label %_ZN8aiString6AppendEPKc.exit.i558.i

bb.ek:                                            ; preds = %bb.dz
  %i.rt = add i32 %i.qs, 1                        ; 6 uses
  store i32 %i.rt, ptr %8, align 4
  %i.ru = zext i32 %i.qs to i64
  %i.rv = getelementptr inbounds nuw i8, ptr %i.py, i64 %i.ru
  store i8 %i.qy, ptr %i.rv, align 1
  br label %_ZN8aiString6AppendEPKc.exit.i558.i

_ZN8aiString6AppendEPKc.exit.i558.i:              ; preds = %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea
  %i.rw = phi i32 [ %i.rp, %bb.ej ], [ %i.qs, %bb.ei ], [ %i.rl, %bb.eh ], [ %i.qs, %bb.eg ], [ %i.rh, %bb.ef ], [ %i.qs, %bb.ee ], [ %i.rd, %bb.ed ], [ %i.qs, %bb.ec ], [ %i.qz, %bb.eb ], [ %i.qs, %bb.ea ], [ %i.rt, %bb.ek ] ; 2 uses
  %i.rx = phi i32 [ %i.rp, %bb.ej ], [ %i.qt, %bb.ei ], [ %i.rl, %bb.eh ], [ %i.qt, %bb.eg ], [ %i.rh, %bb.ef ], [ %i.qt, %bb.ee ], [ %i.rd, %bb.ed ], [ %i.qt, %bb.ec ], [ %i.qz, %bb.eb ], [ %i.qs, %bb.ea ], [ %i.rt, %bb.ek ]
  %i.ry = phi i32 [ %i.rp, %bb.ej ], [ %i.qu, %bb.ei ], [ %i.rl, %bb.eh ], [ %i.qu, %bb.eg ], [ %i.rh, %bb.ef ], [ %i.qu, %bb.ee ], [ %i.rd, %bb.ed ], [ %i.qt, %bb.ec ], [ %i.qz, %bb.eb ], [ %i.qs, %bb.ea ], [ %i.rt, %bb.ek ]
  %i.rz = phi i32 [ %i.rp, %bb.ej ], [ %i.qv, %bb.ei ], [ %i.rl, %bb.eh ], [ %i.qv, %bb.eg ], [ %i.rh, %bb.ef ], [ %i.qu, %bb.ee ], [ %i.rd, %bb.ed ], [ %i.qt, %bb.ec ], [ %i.qz, %bb.eb ], [ %i.qs, %bb.ea ], [ %i.rt, %bb.ek ]
  %i.sa = phi i32 [ %i.rp, %bb.ej ], [ %i.qw, %bb.ei ], [ %i.rl, %bb.eh ], [ %i.qv, %bb.eg ], [ %i.rh, %bb.ef ], [ %i.qu, %bb.ee ], [ %i.rd, %bb.ed ], [ %i.qt, %bb.ec ], [ %i.qz, %bb.eb ], [ %i.qs, %bb.ea ], [ %i.rt, %bb.ek ]
  %indvars.iv.next.i559.i = add nuw nsw i64 %indvars.iv.i557.i, 1 ; 2 uses
  %i.sb = load i32, ptr %i.qo, align 4
  %i.sc = zext i32 %i.sb to i64
  %i.sd = icmp samesign ult i64 %indvars.iv.next.i559.i, %i.sc
  br i1 %i.sd, label %bb.dz, label %._crit_edge.loopexit.i560.i, !llvm.loop !20

bb.el:                                            ; preds = %._crit_edge.loopexit.i560.i, %bb.dy
  %i.se = phi i64 [ %i.qr, %._crit_edge.loopexit.i560.i ], [ 0, %bb.dy ]
  %i.sf = getelementptr inbounds nuw i8, ptr %i.py, i64 %i.se
  store i8 0, ptr %i.sf, align 1
  %i.sg = getelementptr inbounds nuw i8, ptr %i.qo, i64 1056
  %i.sh = load float, ptr %i.sg, align 8
  %i.si = fpext float %i.sh to double
  %i.sj = getelementptr inbounds nuw i8, ptr %i.qo, i64 1060
  %i.sk = load float, ptr %i.sj, align 4
  %i.sl = fpext float %i.sk to double
  %i.sm = getelementptr inbounds nuw i8, ptr %i.qo, i64 1064
  %i.sn = load float, ptr %i.sm, align 8
  %i.so = fpext float %i.sn to double
  %i.sp = getelementptr inbounds nuw i8, ptr %i.qo, i64 1068
  %i.sq = load float, ptr %i.sp, align 4
  %i.sr = fpext float %i.sq to double
  %i.ss = getelementptr inbounds nuw i8, ptr %i.qo, i64 1072
  %i.st = load float, ptr %i.ss, align 8
  %i.su = fpext float %i.st to double
  %i.sv = getelementptr inbounds nuw i8, ptr %i.qo, i64 1076
  %i.sw = load float, ptr %i.sv, align 4
  %i.sx = fpext float %i.sw to double
  %i.sy = getelementptr inbounds nuw i8, ptr %i.qo, i64 1080
  %i.sz = load float, ptr %i.sy, align 8
  %i.ta = fpext float %i.sz to double
  %i.tb = getelementptr inbounds nuw i8, ptr %i.qo, i64 1084
  %i.tc = load float, ptr %i.tb, align 4
  %i.td = fpext float %i.tc to double
  %i.te = getelementptr inbounds nuw i8, ptr %i.qo, i64 1088
  %i.tf = load float, ptr %i.te, align 8
  %i.tg = fpext float %i.tf to double
  %i.th = getelementptr inbounds nuw i8, ptr %i.qo, i64 1092
  %i.ti = load float, ptr %i.th, align 4
  %i.tj = fpext float %i.ti to double
  %i.tk = getelementptr inbounds nuw i8, ptr %i.qo, i64 1096
  %i.tl = load float, ptr %i.tk, align 8
  %i.tm = fpext float %i.tl to double
  %i.tn = getelementptr inbounds nuw i8, ptr %i.qo, i64 1100
  %i.to = load float, ptr %i.tn, align 4
  %i.tp = fpext float %i.to to double
  %i.tq = getelementptr inbounds nuw i8, ptr %i.qo, i64 1104
  %i.tr = load float, ptr %i.tq, align 8
  %i.ts = fpext float %i.tr to double
  %i.tt = getelementptr inbounds nuw i8, ptr %i.qo, i64 1108
  %i.tu = load float, ptr %i.tt, align 4
  %i.tv = fpext float %i.tu to double
  %i.tw = getelementptr inbounds nuw i8, ptr %i.qo, i64 1112
  %i.tx = load float, ptr %i.tw, align 8
  %i.ty = fpext float %i.tx to double
  %i.tz = getelementptr inbounds nuw i8, ptr %i.qo, i64 1116
  %i.ua = load float, ptr %i.tz, align 4
  %i.ub = fpext float %i.ua to double
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.58, ptr noundef nonnull %i.py, double noundef %i.si, double noundef %i.sl, double noundef %i.so, double noundef %i.sr, double noundef %i.su, double noundef %i.sx, double noundef %i.ta, double noundef %i.td, double noundef %i.tg, double noundef %i.tj, double noundef %i.tm, double noundef %i.tp, double noundef %i.ts, double noundef %i.tv, double noundef %i.ty, double noundef %i.ub)
          to label %bb.em unwind label %bb.ep

end_hunk_0
