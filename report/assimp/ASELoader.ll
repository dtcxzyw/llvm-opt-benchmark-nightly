inline.NumInlined: 2170
inline.NumDeleted: 1074
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN6Assimp11ASEImporter13ConvertMeshesERNS_3ASE4MeshERSt6vectorIP6aiMeshSaIS6_EE:bb.a
  %i.mn = ashr exact i64 %i.fy, 2
  br label %bb.at

bb.as:                                            ; preds = %bb.ax
  %i.mo = load ptr, ptr %i.br, align 8
  %i.mp = load ptr, ptr %i.bs, align 8
  %i.mq = icmp eq ptr %i.mo, %i.mp
  br i1 %i.mq, label %.loopexit443, label %bb.ay

bb.at:                                            ; preds = %.loopexit445, %bb.ax
  %i.mr = phi ptr [ %i.ed, %.loopexit445 ], [ %i.oz, %bb.ax ] ; 2 uses
  %indvars.iv548 = phi i64 [ 0, %.loopexit445 ], [ %indvars.iv.next549, %bb.ax ] ; 5 uses
  %i.ms = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %indvars.iv548 ; 5 uses
  %i.mt = load ptr, ptr %i.ms, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8
  %i.mw = icmp eq ptr %i.mt, %i.mv
  br i1 %i.mw, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.mx = load i32, ptr %i.eg, align 4            ; 2 uses
  %i.my = zext i32 %i.mx to i64
  %i.mz = mul nuw nsw i64 %i.my, 12               ; 2 uses
  %i.na = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mz) #25
          to label %bb.av unwind label %bb.aw     ; 2 uses

bb.av:                                            ; preds = %bb.au
  %i.nb = icmp eq i32 %i.mx, 0
  br i1 %i.nb, label %.loopexit440, label %.loopexit440.loopexit

.loopexit440.loopexit:                            ; preds = %bb.av
  %i.nc = add nsw i64 %i.mz, -12                  ; 2 uses
  %i.nd = urem i64 %i.nc, 12
  %i.ne = sub nuw nsw i64 %i.nc, %i.nd
  %i.nf = add nsw i64 %i.ne, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.na, i8 0, i64 %i.nf, i1 false)
  br label %.loopexit440

.loopexit440:                                     ; preds = %.loopexit440.loopexit, %bb.av
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %indvars.iv548 ; 4 uses
  store ptr %i.na, ptr %i.ng, align 8
  %.not532 = icmp eq ptr %i.mr, %i.eb
  br i1 %.not532, label %._crit_edge, label %.lr.ph481

._crit_edge:                                      ; preds = %.lr.ph481, %.loopexit440
  %i.nh = phi ptr [ %i.eb, %.loopexit440 ], [ %i.ed, %.lr.ph481 ]
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv548
  %i.nj = load i32, ptr %i.ni, align 4
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %indvars.iv548
  store i32 %i.nj, ptr %i.nk, align 4
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.lr.ph481:                                        ; preds = %.loopexit440, %.lr.ph481
  %i.nm = phi i64 [ %i.ox, %.lr.ph481 ], [ 0, %.loopexit440 ]
  %.0224480 = phi i32 [ %i.ow, %.lr.ph481 ], [ 0, %.loopexit440 ]
  %.2479 = phi i32 [ %i.ot, %.lr.ph481 ], [ 0, %.loopexit440 ] ; 4 uses
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.nm
  %i.no = load i32, ptr %i.nn, align 4
  %i.np = zext i32 %i.no to i64                   ; 3 uses
  %i.nq = load ptr, ptr %i.ba, align 8
  %i.nr = getelementptr inbounds nuw [132 x i8], ptr %i.nq, i64 %i.np
  %i.ns = load i32, ptr %i.nr, align 4
  %i.nt = zext i32 %i.ns to i64
  %i.nu = load ptr, ptr %i.ms, align 8
  %i.nv = getelementptr inbounds nuw [12 x i8], ptr %i.nu, i64 %i.nt
  %i.nw = load ptr, ptr %i.ng, align 8
  %i.nx = add i32 %.2479, 1
  %i.ny = zext i32 %.2479 to i64
  %i.nz = getelementptr inbounds nuw [12 x i8], ptr %i.nw, i64 %i.ny
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.nz, ptr noundef nonnull align 4 dereferenceable(12) %i.nv, i64 12, i1 false)
  %i.oa = load ptr, ptr %i.ba, align 8
  %i.ob = getelementptr inbounds nuw [132 x i8], ptr %i.oa, i64 %i.np
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 4
  %i.od = load i32, ptr %i.oc, align 4
  %i.oe = zext i32 %i.od to i64
  %i.of = load ptr, ptr %i.ms, align 8
  %i.og = getelementptr inbounds nuw [12 x i8], ptr %i.of, i64 %i.oe
  %i.oh = load ptr, ptr %i.ng, align 8
  %i.oi = add i32 %.2479, 2
  %i.oj = zext i32 %i.nx to i64
  %i.ok = getelementptr inbounds nuw [12 x i8], ptr %i.oh, i64 %i.oj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ok, ptr noundef nonnull align 4 dereferenceable(12) %i.og, i64 12, i1 false)
  %i.ol = load ptr, ptr %i.ba, align 8
  %i.om = getelementptr inbounds nuw [132 x i8], ptr %i.ol, i64 %i.np
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.oo = load i32, ptr %i.on, align 4
  %i.op = zext i32 %i.oo to i64
  %i.oq = load ptr, ptr %i.ms, align 8
  %i.or = getelementptr inbounds nuw [12 x i8], ptr %i.oq, i64 %i.op
  %i.os = load ptr, ptr %i.ng, align 8
  %i.ot = add i32 %.2479, 3
  %i.ou = zext i32 %i.oi to i64
  %i.ov = getelementptr inbounds nuw [12 x i8], ptr %i.os, i64 %i.ou
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ov, ptr noundef nonnull align 4 dereferenceable(12) %i.or, i64 12, i1 false)
  %i.ow = add i32 %.0224480, 1                    ; 2 uses
  %i.ox = zext i32 %i.ow to i64                   ; 2 uses
  %i.oy = icmp ugt i64 %i.mn, %i.ox
  br i1 %i.oy, label %.lr.ph481, label %._crit_edge, !llvm.loop !59

bb.ax:                                            ; preds = %bb.at, %._crit_edge
  %i.oz = phi ptr [ %i.mr, %bb.at ], [ %i.nh, %._crit_edge ]
  %indvars.iv.next549 = add nuw nsw i64 %indvars.iv548, 1 ; 2 uses
  %exitcond551.not = icmp eq i64 %indvars.iv.next549, 8
  br i1 %exitcond551.not, label %bb.as, label %bb.at, !llvm.loop !60

bb.ay:                                            ; preds = %bb.as
  %i.pa = load i32, ptr %i.eg, align 4            ; 2 uses
  %i.pb = zext i32 %i.pa to i64
  %i.pc = shl nuw nsw i64 %i.pb, 4                ; 2 uses
  %i.pd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.pc) #25
          to label %bb.az unwind label %bb.ah     ; 2 uses

bb.az:                                            ; preds = %bb.ay
  %i.pe = icmp eq i32 %i.pa, 0
  br i1 %i.pe, label %.lr.ph488.preheader, label %.loopexit444.loopexit

.loopexit444.loopexit:                            ; preds = %bb.az
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.pd, i8 0, i64 %i.pc, i1 false)
  br label %.lr.ph488.preheader

.lr.ph488.preheader:                              ; preds = %bb.az, %.loopexit444.loopexit
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ef, i64 48 ; 4 uses
  store ptr %i.pd, ptr %i.pf, align 8
  %i.pg = ashr exact i64 %i.fy, 2
  br label %.lr.ph488

.lr.ph488:                                        ; preds = %.lr.ph488.preheader, %.lr.ph488
  %i.ph = phi i64 [ %i.qs, %.lr.ph488 ], [ 0, %.lr.ph488.preheader ]
  %.0222486 = phi i32 [ %i.qr, %.lr.ph488 ], [ 0, %.lr.ph488.preheader ]
  %.4485 = phi i32 [ %i.qo, %.lr.ph488 ], [ 0, %.lr.ph488.preheader ] ; 4 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ph
  %i.pj = load i32, ptr %i.pi, align 4
  %i.pk = zext i32 %i.pj to i64                   ; 3 uses
  %i.pl = load ptr, ptr %i.ba, align 8
  %i.pm = getelementptr inbounds nuw [132 x i8], ptr %i.pl, i64 %i.pk
  %i.pn = load i32, ptr %i.pm, align 4
  %i.po = zext i32 %i.pn to i64
  %i.pp = load ptr, ptr %i.br, align 8
  %i.pq = getelementptr inbounds nuw [16 x i8], ptr %i.pp, i64 %i.po
  %i.pr = load ptr, ptr %i.pf, align 8
  %i.ps = add i32 %.4485, 1
  %i.pt = zext i32 %.4485 to i64
  %i.pu = getelementptr inbounds nuw [16 x i8], ptr %i.pr, i64 %i.pt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.pu, ptr noundef nonnull align 4 dereferenceable(16) %i.pq, i64 16, i1 false)
  %i.pv = load ptr, ptr %i.ba, align 8
  %i.pw = getelementptr inbounds nuw [132 x i8], ptr %i.pv, i64 %i.pk
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 4
  %i.py = load i32, ptr %i.px, align 4
  %i.pz = zext i32 %i.py to i64
  %i.qa = load ptr, ptr %i.br, align 8
  %i.qb = getelementptr inbounds nuw [16 x i8], ptr %i.qa, i64 %i.pz
  %i.qc = load ptr, ptr %i.pf, align 8
  %i.qd = add i32 %.4485, 2
  %i.qe = zext i32 %i.ps to i64
  %i.qf = getelementptr inbounds nuw [16 x i8], ptr %i.qc, i64 %i.qe
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qf, ptr noundef nonnull align 4 dereferenceable(16) %i.qb, i64 16, i1 false)
  %i.qg = load ptr, ptr %i.ba, align 8
  %i.qh = getelementptr inbounds nuw [132 x i8], ptr %i.qg, i64 %i.pk
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  %i.qj = load i32, ptr %i.qi, align 4
  %i.qk = zext i32 %i.qj to i64
  %i.ql = load ptr, ptr %i.br, align 8
  %i.qm = getelementptr inbounds nuw [16 x i8], ptr %i.ql, i64 %i.qk
  %i.qn = load ptr, ptr %i.pf, align 8
  %i.qo = add i32 %.4485, 3
  %i.qp = zext i32 %i.qd to i64
  %i.qq = getelementptr inbounds nuw [16 x i8], ptr %i.qn, i64 %i.qp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qq, ptr noundef nonnull align 4 dereferenceable(16) %i.qm, i64 16, i1 false)
  %i.qr = add i32 %.0222486, 1                    ; 2 uses
  %i.qs = zext i32 %i.qr to i64                   ; 2 uses
  %i.qt = icmp ugt i64 %i.pg, %i.qs
  br i1 %i.qt, label %.lr.ph488, label %.loopexit443, !llvm.loop !61

.loopexit443:                                     ; preds = %.lr.ph488, %bb.as
  %i.qu = load ptr, ptr %i.bk, align 8            ; 3 uses
  %i.qv = load ptr, ptr %i.bl, align 8            ; 3 uses
  %i.qw = icmp eq ptr %i.qu, %i.qv
  br i1 %i.qw, label %bb.bj, label %.lr.ph491.preheader

.lr.ph491.preheader:                              ; preds = %.loopexit443
  %i.qx = getelementptr inbounds nuw i8, ptr %i.ef, i64 216 ; 2 uses
  store i32 0, ptr %i.qx, align 8
  %i.qy = ptrtoint ptr %i.qv to i64
  %i.qz = ptrtoint ptr %i.qu to i64
  %i.ra = sub i64 %i.qy, %i.qz
  %i.rb = ashr exact i64 %i.ra, 5
  br label %.lr.ph491

._crit_edge492:                                   ; preds = %bb.bb
  %i.rc = zext i32 %i.rn to i64
  %i.rd = shl nuw nsw i64 %i.rc, 3
  %i.re = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.rd) #25
          to label %.lr.ph500.preheader unwind label %bb.ah ; 2 uses

.lr.ph491:                                        ; preds = %.lr.ph491.preheader, %bb.bb
  %i.rf = phi i32 [ %i.rn, %bb.bb ], [ 0, %.lr.ph491.preheader ] ; 2 uses
  %i.rg = phi i64 [ %5, %bb.bb ], [ 0, %.lr.ph491.preheader ]
  %.0220489 = phi i32 [ %4, %bb.bb ], [ 0, %.lr.ph491.preheader ]
  %i.rh = getelementptr inbounds nuw [24 x i8], ptr %.0228, i64 %i.rg ; 2 uses
  %i.ri = load ptr, ptr %i.rh, align 8
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %i.rk = load ptr, ptr %i.rj, align 8
  %i.rl = icmp eq ptr %i.ri, %i.rk
  br i1 %i.rl, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph491
  %i.rm = add i32 %i.rf, 1                        ; 2 uses
  store i32 %i.rm, ptr %i.qx, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph491, %bb.ba
  %i.rn = phi i32 [ %i.rf, %.lr.ph491 ], [ %i.rm, %bb.ba ] ; 2 uses
  %4 = add i32 %.0220489, 1                       ; 2 uses
  %5 = zext i32 %4 to i64                         ; 2 uses
  %i.ro = icmp ugt i64 %i.rb, %5
  br i1 %i.ro, label %.lr.ph491, label %._crit_edge492, !llvm.loop !62

.lr.ph500.preheader:                              ; preds = %._crit_edge492
  store ptr %i.re, ptr %i.ej, align 8
  br label %.lr.ph500

.lr.ph500:                                        ; preds = %.lr.ph500.preheader, %bb.bh
  %i.rp = phi ptr [ %i.tq, %bb.bh ], [ %i.qu, %.lr.ph500.preheader ]
  %i.rq = phi ptr [ %i.tr, %bb.bh ], [ %i.qv, %.lr.ph500.preheader ]
  %i.rr = phi i64 [ %i.tt, %bb.bh ], [ 0, %.lr.ph500.preheader ] ; 2 uses
  %.0217498 = phi i32 [ %i.ts, %bb.bh ], [ 0, %.lr.ph500.preheader ]
  %.0218497 = phi ptr [ %.1219, %bb.bh ], [ %i.re, %.lr.ph500.preheader ] ; 3 uses
  %i.rs = getelementptr inbounds nuw [24 x i8], ptr %.0228, i64 %i.rr ; 4 uses
  %i.rt = load ptr, ptr %i.rs, align 8
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rs, i64 8 ; 2 uses
  %i.rv = load ptr, ptr %i.ru, align 8
  %i.rw = icmp eq ptr %i.rt, %i.rv
  br i1 %i.rw, label %bb.bh, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph500
  %i.rx = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #25
          to label %bb.bd unwind label %bb.bg     ; 13 uses

bb.bd:                                            ; preds = %bb.bc
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 1056
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.rx, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.ry, align 4
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 1060
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rx, i64 1076
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.rz, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.sa, align 4
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rx, i64 1080
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rx, i64 1096
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sb, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.sc, align 4
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rx, i64 1100
  %i.se = getelementptr inbounds nuw i8, ptr %i.rx, i64 1116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.sd, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.se, align 4
  store ptr %i.rx, ptr %.0218497, align 8
  %i.sf = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.sg = getelementptr inbounds nuw [32 x i8], ptr %i.sf, i64 %i.rr ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 8
  %i.si = load i64, ptr %i.sh, align 8            ; 4 uses
  %i.sj = icmp ugt i64 %i.si, 1023
  br i1 %i.sj, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.sk = trunc nuw nsw i64 %i.si to i32
  store i32 %i.sk, ptr %i.rx, align 4
  %i.sl = getelementptr inbounds nuw i8, ptr %i.rx, i64 4 ; 2 uses
  %i.sm = load ptr, ptr %i.sg, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.sl, ptr align 1 %i.sm, i64 %i.si, i1 false)
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sl, i64 %i.si
  store i8 0, ptr %i.sn, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.bd, %bb.be
  %i.so = load ptr, ptr %i.ru, align 8
  %i.sp = load ptr, ptr %i.rs, align 8
  %i.sq = ptrtoint ptr %i.so to i64
  %i.sr = ptrtoint ptr %i.sp to i64
  %i.ss = sub i64 %i.sq, %i.sr
  %i.st = ashr exact i64 %i.ss, 3                 ; 2 uses
  %i.su = trunc i64 %i.st to i32                  ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.rx, i64 1028 ; 2 uses
  store i32 %i.su, ptr %i.sv, align 4
  %i.sw = and i64 %i.st, 4294967295               ; 2 uses
  %i.sx = shl nuw nsw i64 %i.sw, 3                ; 2 uses
  %i.sy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.sx) #25
          to label %bb.bf unwind label %bb.bg     ; 2 uses

bb.bf:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.sz = icmp eq i64 %i.sw, 0
  br i1 %i.sz, label %.loopexit439, label %.loopexit439.loopexit

.loopexit439.loopexit:                            ; preds = %bb.bf
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.sy, i8 0, i64 %i.sx, i1 false)
  br label %.loopexit439

.loopexit439:                                     ; preds = %.loopexit439.loopexit, %bb.bf
  %i.ta = getelementptr inbounds nuw i8, ptr %i.rx, i64 1048 ; 3 uses
  store ptr %i.sy, ptr %i.ta, align 8
  %.not535 = icmp eq i32 %i.su, 0
  br i1 %.not535, label %._crit_edge496, label %.lr.ph495

._crit_edge496.loopexit:                          ; preds = %.lr.ph495
  %.pre569.pre = load ptr, ptr %i.bk, align 8
  br label %._crit_edge496

._crit_edge496:                                   ; preds = %._crit_edge496.loopexit, %.loopexit439
  %.pre569 = phi ptr [ %.pre569.pre, %._crit_edge496.loopexit ], [ %i.sf, %.loopexit439 ]
  %i.tb = getelementptr inbounds nuw i8, ptr %.0218497, i64 8
  %.pre568 = load ptr, ptr %i.bl, align 8
  br label %bb.bh

bb.bg:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.bc
  %i.tc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.lr.ph495:                                        ; preds = %.loopexit439, %.lr.ph495
  %indvars.iv556 = phi i64 [ %indvars.iv.next557.a, %.lr.ph495 ], [ 0, %.loopexit439 ] ; 4 uses
  %i.td = load ptr, ptr %i.rs, align 8
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.td, i64 %indvars.iv556 ; 2 uses
  %i.tf = load i32, ptr %i.te, align 4
  %i.tg = load ptr, ptr %i.ta, align 8
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv556
  store i32 %i.tf, ptr %i.th, align 4
  %i.ti = getelementptr inbounds nuw i8, ptr %i.te, i64 4
  %i.tj = load float, ptr %i.ti, align 4
  %i.tk = load ptr, ptr %i.ta, align 8
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %indvars.iv556
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 4
  store float %i.tj, ptr %i.tm, align 4
  %indvars.iv.next557.a = add nuw nsw i64 %indvars.iv556, 1 ; 2 uses
  %i.tn = load i32, ptr %i.sv, align 4
  %i.to = zext i32 %i.tn to i64
  %i.tp = icmp samesign ult i64 %indvars.iv.next557.a, %i.to
  br i1 %i.tp, label %.lr.ph495, label %._crit_edge496.loopexit, !llvm.loop !63

bb.bh:                                            ; preds = %.lr.ph500, %._crit_edge496
  %i.tq = phi ptr [ %i.rp, %.lr.ph500 ], [ %.pre569, %._crit_edge496 ] ; 2 uses
  %i.tr = phi ptr [ %i.rq, %.lr.ph500 ], [ %.pre568, %._crit_edge496 ] ; 2 uses
  %.1219 = phi ptr [ %.0218497, %.lr.ph500 ], [ %i.tb, %._crit_edge496 ]
  %i.ts = add i32 %.0217498, 1                    ; 2 uses
  %i.tt = zext i32 %i.ts to i64                   ; 2 uses
  %i.tu = ptrtoint ptr %i.tr to i64
  %i.tv = ptrtoint ptr %i.tq to i64
  %i.tw = sub i64 %i.tu, %i.tv
  %i.tx = ashr exact i64 %i.tw, 5
  %i.ty = icmp ugt i64 %i.tx, %i.tt
  br i1 %i.ty, label %.lr.ph500, label %._crit_edge501, !llvm.loop !64

._crit_edge501:                                   ; preds = %bb.bh
  %i.tz = getelementptr inbounds i8, ptr %.0228, i64 -8 ; 2 uses
  %i.ua = load i64, ptr %i.tz, align 8            ; 2 uses
  %.idx260 = mul i64 %i.ua, 24                    ; 2 uses
  %i.ub = icmp eq i64 %i.ua, 0
  br i1 %i.ub, label %.loopexit442, label %.preheader441.preheader

.preheader441.preheader:                          ; preds = %._crit_edge501
  %i.uc = getelementptr inbounds i8, ptr %.0228, i64 %.idx260
  br label %.preheader441

.preheader441:                                    ; preds = %.preheader441.preheader, %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit
  %i.ud = phi ptr [ %i.ue, %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit ], [ %i.uc, %.preheader441.preheader ] ; 2 uses
  %i.ue = getelementptr inbounds i8, ptr %i.ud, i64 -24 ; 3 uses
  %i.uf = load ptr, ptr %i.ue, align 8            ; 3 uses
  %.not.i.i.i295 = icmp eq ptr %i.uf, null
  br i1 %.not.i.i.i295, label %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %.preheader441
  %i.ug = getelementptr inbounds i8, ptr %i.ud, i64 -8
  %i.uh = load ptr, ptr %i.ug, align 8
  %i.ui = ptrtoint ptr %i.uh to i64
  %i.uj = ptrtoint ptr %i.uf to i64
  %i.uk = sub i64 %i.ui, %i.uj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.uf, i64 noundef %i.uk) #23
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit:        ; preds = %.preheader441, %bb.bi
  %i.ul = icmp eq ptr %i.ue, %.0228
  br i1 %i.ul, label %.loopexit442, label %.preheader441

.loopexit442:                                     ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit, %._crit_edge501
  %i.um = add i64 %.idx260, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.tz, i64 noundef %i.um) #23
  br label %bb.bj

bb.bj:                                            ; preds = %.loopexit443, %.loopexit442, %bb.u
  %i.un = add i32 %.0216502, 1                    ; 2 uses
  %i.uo = zext i32 %i.un to i64                   ; 2 uses
  %i.up = icmp ugt i64 %i.al, %i.uo
  br i1 %i.up, label %bb.u, label %._crit_edge504, !llvm.loop !65

._crit_edge504:                                   ; preds = %bb.bj, %.preheader448
  %i.uq = load i64, ptr %i.au, align 16           ; 2 uses
  %.idx = mul i64 %i.uq, 24
  %.add255 = add i64 %.idx, 8                     ; 2 uses
  %i.ur = icmp eq i64 %i.uq, 0
  br i1 %i.ur, label %.loopexit432, label %.preheader

.preheader:                                       ; preds = %._crit_edge504, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.idx254 = phi i64 [ %.add, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %.add255, %._crit_edge504 ]
  %.add = add nsw i64 %.idx254, -24               ; 3 uses
  %.ptr256 = getelementptr inbounds i8, ptr %i.au, i64 %.add ; 2 uses
  %i.us = load ptr, ptr %.ptr256, align 8         ; 3 uses
  %.not.i.i.i296 = icmp eq ptr %i.us, null
  br i1 %.not.i.i.i296, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %.preheader
  %i.ut = getelementptr inbounds nuw i8, ptr %.ptr256, i64 16
  %i.uu = load ptr, ptr %i.ut, align 8
  %i.uv = ptrtoint ptr %i.uu to i64
  %i.uw = ptrtoint ptr %i.us to i64
  %i.ux = sub i64 %i.uv, %i.uw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.us, i64 noundef %i.ux) #23
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

end_hunk_0
begin_hunk_1_@_ZN6Assimp11ASEImporter13ConvertMeshesERNS_3ASE4MeshERSt6vectorIP6aiMeshSaIS6_EE:bb.a

._crit_edge519:                                   ; preds = %._crit_edge514
  %.pre571 = load ptr, ptr %i.ahm, align 8        ; 3 uses
  %.pre572 = load ptr, ptr %i.ahk, align 8        ; 3 uses
  %.pre577 = ptrtoint ptr %.pre571 to i64
  %.pre579 = ptrtoint ptr %.pre572 to i64
  %.pre581 = sub i64 %.pre577, %.pre579
  %.pre583.a = ashr exact i64 %.pre581, 5
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ve, i64 216 ; 2 uses
  store i32 0, ptr %i.ajm, align 8
  %.not537 = icmp eq ptr %.pre571, %.pre572       ; 2 uses
  br i1 %.not537, label %._crit_edge523, label %.lr.ph522

bb.cs:                                            ; preds = %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %bb.cr
  %i.ajn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

.lr.ph518:                                        ; preds = %.lr.ph518.preheader, %._crit_edge514
  %i.ajo = phi ptr [ %i.ajs, %._crit_edge514 ], [ %i.aja, %.lr.ph518.preheader ]
  %.0204517 = phi i32 [ %i.aju, %._crit_edge514 ], [ 0, %.lr.ph518.preheader ] ; 3 uses
  %.sroa.0340.0516 = phi ptr [ %i.ajt, %._crit_edge514 ], [ %i.aiy, %.lr.ph518.preheader ] ; 3 uses
  %i.ajp = load ptr, ptr %.sroa.0340.0516, align 8 ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %.sroa.0340.0516, i64 8 ; 2 uses
  %i.ajr = load ptr, ptr %i.ajq, align 8
  %.not428510 = icmp eq ptr %i.ajp, %i.ajr
  br i1 %.not428510, label %._crit_edge514, label %.lr.ph513

._crit_edge514.loopexit:                          ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit
  %.pre570 = load ptr, ptr %i.aiz, align 8
  br label %._crit_edge514

._crit_edge514:                                   ; preds = %._crit_edge514.loopexit, %.lr.ph518
  %i.ajs = phi ptr [ %.pre570, %._crit_edge514.loopexit ], [ %i.ajo, %.lr.ph518 ] ; 2 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %.sroa.0340.0516, i64 24 ; 2 uses
  %i.aju = add i32 %.0204517, 1
  %.not427 = icmp eq ptr %i.ajt, %i.ajs
  br i1 %.not427, label %._crit_edge519, label %.lr.ph518, !llvm.loop !69

.lr.ph513:                                        ; preds = %.lr.ph518, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit
  %.sroa.0334.0511 = phi ptr [ %i.all, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit ], [ %i.ajp, %.lr.ph518 ] ; 3 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %.sroa.0334.0511, i64 4
  %i.ajw = load float, ptr %i.ajv, align 4        ; 2 uses
  %i.ajx = load i32, ptr %.sroa.0334.0511, align 4
  %i.ajy = sext i32 %i.ajx to i64
  %i.ajz = getelementptr inbounds nuw [24 x i8], ptr %i.aji, i64 %i.ajy ; 4 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 8 ; 4 uses
  %i.akb = load ptr, ptr %i.aka, align 8          ; 6 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajz, i64 16 ; 2 uses
  %i.akd = load ptr, ptr %i.akc, align 8
  %.not.i315 = icmp eq ptr %i.akb, %i.akd
  br i1 %.not.i315, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph513
  store i32 %.0204517, ptr %i.akb, align 4
  %.sroa_idx328 = getelementptr inbounds nuw i8, ptr %i.akb, i64 4
  store float %i.ajw, ptr %.sroa_idx328, align 4
  %i.ake = load ptr, ptr %i.aka, align 8
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 8
  store ptr %i.akf, ptr %i.aka, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit

bb.cu:                                            ; preds = %.lr.ph513
  %i.akg = load ptr, ptr %i.ajz, align 8          ; 7 uses
  %i.akh = ptrtoint ptr %i.akb to i64             ; 2 uses
  %i.aki = ptrtoint ptr %i.akg to i64             ; 3 uses
  %i.akj = sub i64 %i.akh, %i.aki                 ; 4 uses
  %i.akk = icmp eq i64 %i.akj, 9223372036854775800
  br i1 %i.akk, label %bb.cv, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #24
          to label %.noexc324 unwind label %.loopexit.split-lp

.noexc324:                                        ; preds = %bb.cv
  unreachable

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.cu
  %i.akl = ashr exact i64 %i.akj, 3               ; 3 uses
  %.sroa.speculated.i.i.i316 = tail call i64 @llvm.umax.i64(i64 %i.akl, i64 1)
  %i.akm = add nsw i64 %.sroa.speculated.i.i.i316, %i.akl ; 2 uses
  %i.akn = icmp ult i64 %i.akm, %i.akl
  %i.ako = tail call i64 @llvm.umin.i64(i64 %i.akm, i64 1152921504606846975)
  %i.akp = select i1 %i.akn, i64 1152921504606846975, i64 %i.ako ; 3 uses
  %.not.i.i.i317 = icmp ne i64 %i.akp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i317)
  %i.akq = shl nuw nsw i64 %i.akp, 3
  %i.akr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.akq) #25
          to label %.noexc325 unwind label %.loopexit429 ; 8 uses

.noexc325:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 %i.akj ; 2 uses
  store i32 %.0204517, ptr %i.aks, align 4
  %.sroa_idx330 = getelementptr inbounds nuw i8, ptr %i.aks, i64 4
  store float %i.ajw, ptr %.sroa_idx330, align 4
  %.not10.i.i.i.i.i318 = icmp eq ptr %i.akg, %i.akb
  br i1 %.not10.i.i.i.i.i318, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i319.preheader

.lr.ph.i.i.i.i.i319.preheader:                    ; preds = %.noexc325
  %i.akt = ptrtoaddr ptr %i.akr to i64
  %i.aku = sub i64 %i.akh, %i.aki
  %i.akv = add i64 %i.aku, -8                     ; 2 uses
  %i.akw = lshr i64 %i.akv, 3
  %i.akx = add nuw nsw i64 %i.akw, 1              ; 2 uses
  %min.iters.check684 = icmp ult i64 %i.akv, 24
  %i.aky = sub i64 %i.aki, %i.akt
  %diff.check682 = icmp ugt i64 %i.aky, -32
  %or.cond699 = or i1 %min.iters.check684, %diff.check682
  br i1 %or.cond699, label %.lr.ph.i.i.i.i.i319.preheader701, label %vector.ph685

vector.ph685:                                     ; preds = %.lr.ph.i.i.i.i.i319.preheader
  %n.vec687 = and i64 %i.akx, 4611686018427387900 ; 3 uses
  %i.akz = shl i64 %n.vec687, 3                   ; 2 uses
  %i.ala = getelementptr i8, ptr %i.akr, i64 %i.akz ; 2 uses
  %i.alb = getelementptr i8, ptr %i.akg, i64 %i.akz
  br label %vector.body688

vector.body688:                                   ; preds = %vector.body688, %vector.ph685
  %index689 = phi i64 [ 0, %vector.ph685 ], [ %index.next694, %vector.body688 ] ; 2 uses
  %i.alc = shl i64 %index689, 3                   ; 2 uses
  %next.gep690 = getelementptr i8, ptr %i.akr, i64 %i.alc ; 2 uses
  %next.gep691 = getelementptr i8, ptr %i.akg, i64 %i.alc ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.ald = getelementptr i8, ptr %next.gep691, i64 16
  %wide.load692 = load <2 x i64>, ptr %next.gep691, align 4, !alias.scope !73, !noalias !70
  %wide.load693 = load <2 x i64>, ptr %i.ald, align 4, !alias.scope !73, !noalias !70
  %i.ale = getelementptr i8, ptr %next.gep690, i64 16
  store <2 x i64> %wide.load692, ptr %next.gep690, align 4, !alias.scope !70, !noalias !73
  store <2 x i64> %wide.load693, ptr %i.ale, align 4, !alias.scope !70, !noalias !73
  %index.next694 = add nuw i64 %index689, 4       ; 2 uses
  %i.alf = icmp eq i64 %index.next694, %n.vec687
  br i1 %i.alf, label %middle.block695, label %vector.body688, !llvm.loop !75

middle.block695:                                  ; preds = %vector.body688
  %cmp.n696 = icmp eq i64 %i.akx, %n.vec687
  br i1 %cmp.n696, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i319.preheader701

.lr.ph.i.i.i.i.i319.preheader701:                 ; preds = %.lr.ph.i.i.i.i.i319.preheader, %middle.block695
  %.012.i.i.i.i.i320.ph = phi ptr [ %i.akr, %.lr.ph.i.i.i.i.i319.preheader ], [ %i.ala, %middle.block695 ]
  %.0911.i.i.i.i.i321.ph = phi ptr [ %i.akg, %.lr.ph.i.i.i.i.i319.preheader ], [ %i.alb, %middle.block695 ]
  br label %.lr.ph.i.i.i.i.i319

.lr.ph.i.i.i.i.i319:                              ; preds = %.lr.ph.i.i.i.i.i319.preheader701, %.lr.ph.i.i.i.i.i319
  %.012.i.i.i.i.i320 = phi ptr [ %i.ali, %.lr.ph.i.i.i.i.i319 ], [ %.012.i.i.i.i.i320.ph, %.lr.ph.i.i.i.i.i319.preheader701 ] ; 2 uses
  %.0911.i.i.i.i.i321 = phi ptr [ %i.alh, %.lr.ph.i.i.i.i.i319 ], [ %.0911.i.i.i.i.i321.ph, %.lr.ph.i.i.i.i.i319.preheader701 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.alg = load i64, ptr %.0911.i.i.i.i.i321, align 4, !alias.scope !73, !noalias !70
  store i64 %i.alg, ptr %.012.i.i.i.i.i320, align 4, !alias.scope !70, !noalias !73
  %i.alh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i321, i64 8 ; 2 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i320, i64 8 ; 2 uses
  %.not.i.i.i.i.i322 = icmp eq ptr %i.alh, %i.akb
  br i1 %.not.i.i.i.i.i322, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i319, !llvm.loop !76

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i319, %middle.block695, %.noexc325
  %.0.lcssa.i.i.i.i.i323 = phi ptr [ %i.akr, %.noexc325 ], [ %i.ala, %middle.block695 ], [ %i.ali, %.lr.ph.i.i.i.i.i319 ]
  %i.alj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i323, i64 8
  %.not.i23.i.i = icmp eq ptr %i.akg, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.akg, i64 noundef %i.akj) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.cw, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  store ptr %i.akr, ptr %i.ajz, align 8
  store ptr %i.alj, ptr %i.aka, align 8
  %i.alk = getelementptr inbounds nuw [8 x i8], ptr %i.akr, i64 %i.akp
  store ptr %i.alk, ptr %i.akc, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.ct
  %i.all = getelementptr inbounds nuw i8, ptr %.sroa.0334.0511, i64 8 ; 2 uses
  %i.alm = load ptr, ptr %i.ajq, align 8
  %.not428 = icmp eq ptr %i.all, %i.alm
  br i1 %.not428, label %._crit_edge514.loopexit, label %.lr.ph513, !llvm.loop !77

.loopexit429:                                     ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

.loopexit.split-lp:                               ; preds = %bb.cv
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

._crit_edge523.loopexit:                          ; preds = %bb.cy
  %i.aln = zext i32 %i.alz to i64
  %i.alo = shl nuw nsw i64 %i.aln, 3
  br label %._crit_edge523

._crit_edge523:                                   ; preds = %._crit_edge523.loopexit, %._crit_edge519
  %i.alp = phi i64 [ %i.alo, %._crit_edge523.loopexit ], [ 0, %._crit_edge519 ]
  %i.alq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.alp) #25
          to label %bb.cz unwind label %bb.dc     ; 2 uses

.lr.ph522:                                        ; preds = %._crit_edge519, %bb.cy
  %i.alr = phi i32 [ %i.alz, %bb.cy ], [ 0, %._crit_edge519 ] ; 2 uses
  %i.als = phi i64 [ %7, %bb.cy ], [ 0, %._crit_edge519 ]
  %.0203520 = phi i32 [ %6, %bb.cy ], [ 0, %._crit_edge519 ]
  %i.alt = getelementptr inbounds nuw [24 x i8], ptr %i.aji, i64 %i.als ; 2 uses
  %i.alu = load ptr, ptr %i.alt, align 8
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alt, i64 8
  %i.alw = load ptr, ptr %i.alv, align 8
  %i.alx = icmp eq ptr %i.alu, %i.alw
  br i1 %i.alx, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph522
  %i.aly = add i32 %i.alr, 1                      ; 2 uses
  store i32 %i.aly, ptr %i.ajm, align 8
  br label %bb.cy

bb.cy:                                            ; preds = %.lr.ph522, %bb.cx
  %i.alz = phi i32 [ %i.alr, %.lr.ph522 ], [ %i.aly, %bb.cx ] ; 2 uses
  %6 = add i32 %.0203520, 1                       ; 2 uses
  %7 = zext i32 %6 to i64                         ; 2 uses
  %i.ama = icmp ugt i64 %.pre583.a, %7
  br i1 %i.ama, label %.lr.ph522, label %._crit_edge523.loopexit, !llvm.loop !78

bb.cz:                                            ; preds = %._crit_edge523
  store ptr %i.alq, ptr %i.vi, align 8
  br i1 %.not537, label %._crit_edge528, label %.lr.ph527

._crit_edge528.loopexit:                          ; preds = %bb.di
  %.pre574 = load ptr, ptr %i.ajk, align 8
  br label %._crit_edge528

._crit_edge528:                                   ; preds = %._crit_edge528.loopexit, %bb.cz
  %i.amb = phi ptr [ %.pre574, %._crit_edge528.loopexit ], [ %scevgep.i.i.i.i.i, %bb.cz ] ; 2 uses
  %.pr.i = phi ptr [ %i.aok, %._crit_edge528.loopexit ], [ %i.aji, %bb.cz ] ; 5 uses
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.amb
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge528, %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ami, %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i ], [ %.pr.i, %._crit_edge528 ] ; 3 uses
  %i.amc = load ptr, ptr %.05.i.i.i, align 8      ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.amc, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i, label %bb.da

bb.da:                                            ; preds = %.lr.ph.i.i.i
  %i.amd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ame = load ptr, ptr %i.amd, align 8
  %i.amf = ptrtoint ptr %i.ame to i64
  %i.amg = ptrtoint ptr %i.amc to i64
  %i.amh = sub i64 %i.amf, %i.amg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.amc, i64 noundef %i.amh) #23
  br label %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i: ; preds = %bb.da, %.lr.ph.i.i.i
  %i.ami = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i326 = icmp eq ptr %i.ami, %i.amb
  br i1 %.not.i.i.i326, label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !79

_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i, %._crit_edge528
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit, label %bb.db

bb.db:                                            ; preds = %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i
  %i.amj = load ptr, ptr %i.ajl, align 8
  %i.amk = ptrtoint ptr %i.amj to i64
  %i.aml = ptrtoint ptr %.pr.i to i64
  %i.amm = sub i64 %i.amk, %i.aml
  tail call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.amm) #23
  br label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit

_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.dl

bb.dc:                                            ; preds = %._crit_edge523
  %i.amn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

.lr.ph527:                                        ; preds = %bb.cz, %bb.di
  %i.amo = phi ptr [ %i.aoi, %bb.di ], [ %.pre572, %bb.cz ]
  %i.amp = phi ptr [ %i.aoj, %bb.di ], [ %.pre571, %bb.cz ]
  %i.amq = phi ptr [ %i.aok, %bb.di ], [ %i.aji, %bb.cz ] ; 2 uses
  %i.amr = phi i64 [ %i.aom, %bb.di ], [ 0, %bb.cz ] ; 3 uses
  %.0200525 = phi i32 [ %i.aol, %bb.di ], [ 0, %bb.cz ]
  %.0201524 = phi ptr [ %.1202, %bb.di ], [ %i.alq, %bb.cz ] ; 3 uses
  %i.ams = getelementptr inbounds nuw [24 x i8], ptr %i.amq, i64 %i.amr ; 2 uses
  %i.amt = load ptr, ptr %i.ams, align 8
  %i.amu = getelementptr inbounds nuw i8, ptr %i.ams, i64 8
  %i.amv = load ptr, ptr %i.amu, align 8
  %i.amw = icmp eq ptr %i.amt, %i.amv
  br i1 %i.amw, label %bb.di, label %bb.dd

bb.dd:                                            ; preds = %.lr.ph527
  %i.amx = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #25
          to label %bb.de unwind label %bb.dh     ; 13 uses

bb.de:                                            ; preds = %bb.dd
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 1056
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.amx, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.amy, align 4
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amx, i64 1060
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amx, i64 1076
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.amz, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ana, align 4
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amx, i64 1080
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amx, i64 1096
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.anb, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.anc, align 4
  %i.and = getelementptr inbounds nuw i8, ptr %i.amx, i64 1100
  %i.ane = getelementptr inbounds nuw i8, ptr %i.amx, i64 1116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.and, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ane, align 4
  store ptr %i.amx, ptr %.0201524, align 8
  %i.anf = load ptr, ptr %i.ahk, align 8          ; 2 uses
  %i.ang = getelementptr inbounds nuw [32 x i8], ptr %i.anf, i64 %i.amr ; 2 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ang, i64 8
  %i.ani = load i64, ptr %i.anh, align 8          ; 4 uses
  %i.anj = icmp ugt i64 %i.ani, 1023
  br i1 %i.anj, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit327, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ank = trunc nuw nsw i64 %i.ani to i32
  store i32 %i.ank, ptr %i.amx, align 4
  %i.anl = getelementptr inbounds nuw i8, ptr %i.amx, i64 4 ; 2 uses
  %i.anm = load ptr, ptr %i.ang, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.anl, ptr align 1 %i.anm, i64 %i.ani, i1 false)
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anl, i64 %i.ani
  store i8 0, ptr %i.ann, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit327

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit327: ; preds = %bb.de, %bb.df
  %i.ano = load ptr, ptr %3, align 8              ; 2 uses
  %i.anp = getelementptr inbounds nuw [24 x i8], ptr %i.ano, i64 %i.amr ; 3 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anp, i64 8
  %i.anr = load ptr, ptr %i.anq, align 8
  %i.ans = load ptr, ptr %i.anp, align 8
  %i.ant = ptrtoint ptr %i.anr to i64
  %i.anu = ptrtoint ptr %i.ans to i64
  %i.anv = sub i64 %i.ant, %i.anu                 ; 2 uses
  %i.anw = ashr exact i64 %i.anv, 3               ; 2 uses
  %i.anx = trunc i64 %i.anw to i32
  %i.any = getelementptr inbounds nuw i8, ptr %i.amx, i64 1028
  store i32 %i.anx, ptr %i.any, align 4
  %i.anz = and i64 %i.anw, 4294967295             ; 2 uses
  %i.aoa = shl nuw nsw i64 %i.anz, 3              ; 2 uses
  %i.aob = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aoa) #25
          to label %bb.dg unwind label %bb.dh     ; 3 uses

bb.dg:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit327
  %i.aoc = icmp eq i64 %i.anz, 0
  br i1 %i.aoc, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.dg
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aob, i8 0, i64 %i.aoa, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.dg
  %i.aod = getelementptr inbounds nuw i8, ptr %i.amx, i64 1048
  store ptr %i.aob, ptr %i.aod, align 8
  %i.aoe = load ptr, ptr %i.anp, align 8
  %i.aof = and i64 %i.anv, 34359738360
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aob, ptr nonnull align 4 %i.aoe, i64 %i.aof, i1 false)
  %i.aog = getelementptr inbounds nuw i8, ptr %.0201524, i64 8
  %.pre573 = load ptr, ptr %i.ahm, align 8
  br label %bb.di

bb.dh:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit327, %bb.dd
  %i.aoh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.di:                                            ; preds = %.lr.ph527, %.loopexit
  %i.aoi = phi ptr [ %i.amo, %.lr.ph527 ], [ %i.anf, %.loopexit ] ; 2 uses
  %i.aoj = phi ptr [ %i.amp, %.lr.ph527 ], [ %.pre573, %.loopexit ] ; 2 uses
  %i.aok = phi ptr [ %i.amq, %.lr.ph527 ], [ %i.ano, %.loopexit ] ; 2 uses
  %.1202 = phi ptr [ %.0201524, %.lr.ph527 ], [ %i.aog, %.loopexit ]
  %i.aol = add i32 %.0200525, 1                   ; 2 uses
  %i.aom = zext i32 %i.aol to i64                 ; 2 uses
  %i.aon = ptrtoint ptr %i.aoj to i64
  %i.aoo = ptrtoint ptr %i.aoi to i64
  %i.aop = sub i64 %i.aon, %i.aoo
  %i.aoq = ashr exact i64 %i.aop, 5
  %i.aor = icmp ugt i64 %i.aoq, %i.aom
  br i1 %i.aor, label %.lr.ph527, label %._crit_edge528.loopexit, !llvm.loop !80

bb.dj:                                            ; preds = %.loopexit429, %.loopexit.split-lp, %bb.dh, %bb.dc
  %.pn268 = phi { ptr, i32 } [ %i.amn, %bb.dc ], [ %i.aoh, %bb.dh ], [ %lpad.loopexit, %.loopexit429 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #22
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.cs
  %.pn268.pn = phi { ptr, i32 } [ %.pn268, %bb.dj ], [ %i.ajn, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %common.resume

bb.dl:                                            ; preds = %bb.bu, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit310, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit, %bb.cp, %._crit_edge509, %_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EED2Ev.exit
  ret void
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #3

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11ASEImporter20BuildMaterialIndicesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %._crit_edge68, label %.lr.ph67

end_hunk_1
begin_hunk_2_@_ZN6Assimp11ASEImporter10BuildNodesERSt6vectorIPNS_3ASE8BaseNodeESaIS4_EE:bb.a

bb.ag:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit61
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fm, i64 4 ; 3 uses
  store ptr %i.ew, ptr %5, align 8
  %i.ga = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fz) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.ga, ptr %i.a, align 8
  %i.gb = icmp ugt i64 %i.ga, 15
  br i1 %i.gb, label %.noexc.i63, label %._crit_edge.i.i62

.noexc.i63:                                       ; preds = %bb.ag
  %i.gc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc64 unwind label %bb.ar  ; 2 uses

.noexc64:                                         ; preds = %.noexc.i63
  store ptr %i.gc, ptr %5, align 8
  %i.gd = load i64, ptr %i.a, align 8
  store i64 %i.gd, ptr %i.ew, align 8
  br label %._crit_edge.i.i62

._crit_edge.i.i62:                                ; preds = %.noexc64, %bb.ag
  %i.ge = phi ptr [ %i.gc, %.noexc64 ], [ %i.ew, %bb.ag ] ; 2 uses
  switch i64 %i.ga, label %bb.ai [
    i64 1, label %bb.ah
    i64 0, label %bb.aj
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i62
  %i.gf = load i8, ptr %i.fz, align 4
  store i8 %i.gf, ptr %i.ge, align 1
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i.i62
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ge, ptr nonnull align 1 %i.fz, i64 %i.ga, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %._crit_edge.i.i62
  %i.gg = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.gg, ptr %i.ex, align 8
  %i.gh = load ptr, ptr %5, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gg
  store i8 0, ptr %i.gi, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store float 1.000000e+00, ptr %2, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ey, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ez, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fa, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.fb, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fc, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.fd, align 4
  invoke void @_ZN6Assimp11ASEImporter8AddNodesERKSt6vectorIPNS_3ASE8BaseNodeESaIS4_EEP6aiNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK12aiMatrix4x4tIfE(ptr noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noundef nonnull %i.fm, ptr noundef nonnull readonly align 8 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(64) %2)
          to label %bb.ak unwind label %bb.as

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.gj = load ptr, ptr %5, align 8               ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.ew
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.ak
  %i.gl = load i64, ptr %i.ew, align 8
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %.not.i70 = icmp eq ptr %.sroa.16106.1251, %.sroa.29.2250
  br i1 %.not.i70, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  store ptr %i.fm, ptr %.sroa.16106.1251, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit79

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.gn = ptrtoint ptr %.sroa.16106.1251 to i64
  %i.go = ptrtoint ptr %.sroa.097.2252 to i64
  %i.gp = sub i64 %i.gn, %i.go                    ; 6 uses
  %i.gq = icmp eq i64 %i.gp, 9223372036854775800
  br i1 %i.gq, label %bb.an, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i71

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #24
          to label %.noexc77 unwind label %.loopexit.split-lp

.noexc77:                                         ; preds = %bb.an
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i71: ; preds = %bb.am
  %i.gr = ashr exact i64 %i.gp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i72 = call i64 @llvm.umax.i64(i64 %i.gr, i64 1)
  %i.gs = add nsw i64 %.sroa.speculated.i.i.i72, %i.gr ; 2 uses
  %i.gt = icmp ult i64 %i.gs, %i.gr
  %i.gu = call i64 @llvm.umin.i64(i64 %i.gs, i64 1152921504606846975)
  %i.gv = select i1 %i.gt, i64 1152921504606846975, i64 %i.gu ; 3 uses
  %.not.i.i.i73 = icmp ne i64 %i.gv, 0
  call void @llvm.assume(i1 %.not.i.i.i73)
  %i.gw = shl nuw nsw i64 %i.gv, 3
  %i.gx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gw) #25
          to label %.noexc78 unwind label %.loopexit ; 4 uses

.noexc78:                                         ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i71
  %i.gy = getelementptr inbounds i8, ptr %i.gx, i64 %i.gp ; 2 uses
  store ptr %i.fm, ptr %i.gy, align 8
  %i.gz = icmp sgt i64 %i.gp, 0
  br i1 %i.gz, label %bb.ao, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i74

bb.ao:                                            ; preds = %.noexc78
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gx, ptr align 8 %.sroa.097.2252, i64 %i.gp, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i74

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i74: ; preds = %bb.ao, %.noexc78
  %.not.i17.i.i75 = icmp eq ptr %.sroa.097.2252, null
  br i1 %.not.i17.i.i75, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i76, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i74
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.097.2252, i64 noundef %i.gp) #23
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i76

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i76: ; preds = %bb.ap, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i74
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.gv
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit79

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit79: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i76, %bb.al
  %.sroa.29.6 = phi ptr [ %i.ha, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i76 ], [ %.sroa.29.2250, %bb.al ] ; 3 uses
  %.pn155 = phi ptr [ %i.gy, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i76 ], [ %.sroa.16106.1251, %bb.al ]
  %.sroa.097.6 = phi ptr [ %i.gx, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i76 ], [ %.sroa.097.2252, %bb.al ] ; 7 uses
  %.sroa.16106.4 = getelementptr inbounds nuw i8, ptr %.pn155, i64 8 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.094.0249, i64 8 ; 2 uses
  %.not154 = icmp eq ptr %i.hb, %.sroa.11137.1
  br i1 %.not154, label %._crit_edge255, label %bb.ac, !llvm.loop !91

.loopexit:                                        ; preds = %bb.ac, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit61, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i71
  %.sroa.29.2250.lcssa = phi ptr [ %.sroa.29.2250, %bb.ac ], [ %.sroa.29.2250, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit61 ], [ %.sroa.16106.1251, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i71 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit.split-lp:                               ; preds = %bb.an
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.aq:                                            ; preds = %bb.ad
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef 1144) #23
  br label %bb.av

bb.ar:                                            ; preds = %.noexc.i63
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

bb.as:                                            ; preds = %bb.aj
  %i.he = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hf = load ptr, ptr %5, align 8               ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.ew
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.as
  %i.hh = load i64, ptr %i.ew, align 8
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hi) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80, %bb.ar
  %.pn = phi { ptr, i32 } [ %i.hd, %bb.ar ], [ %i.he, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %i.he, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.av

bb.at:                                            ; preds = %._crit_edge255
  %i.hj = load ptr, ptr %i.c, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 1112
  store ptr %i.fk, ptr %i.hm, align 8
  %.not268 = icmp eq ptr %.sroa.16106.4, %.sroa.097.6
  br i1 %.not268, label %._crit_edge262, label %.lr.ph261

._crit_edge262:                                   ; preds = %bb.at
  %i.hn = trunc nuw nsw i64 %i.fh to i32
  %i.ho = load ptr, ptr %i.c, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 1104
  store i32 %i.hn, ptr %i.hr, align 8
  %.not.i.i.i83 = icmp eq ptr %.sroa.097.6, null
  br i1 %.not.i.i.i83, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %._crit_edge262.thread, %._crit_edge262
  %i.hs = ptrtoint ptr %.sroa.29.6 to i64
  %i.ht = sub i64 %i.hs, %i.ff
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.097.6, i64 noundef %i.ht) #23
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit

.lr.ph261:                                        ; preds = %bb.at, %.lr.ph261
  %i.hu = phi i64 [ %7, %.lr.ph261 ], [ 0, %bb.at ] ; 2 uses
  %.029259 = phi i32 [ %6, %.lr.ph261 ], [ 0, %bb.at ]
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.097.6, i64 %i.hu
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = load ptr, ptr %i.c, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 1112
  %i.ib = load ptr, ptr %i.ia, align 8
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.hu
  store ptr %i.hw, ptr %i.ic, align 8
  %6 = add i32 %.029259, 1                        ; 2 uses
  %7 = zext i32 %6 to i64                         ; 2 uses
  %i.id = icmp ugt i64 %i.fh, %7
  br i1 %i.id, label %.lr.ph261, label %._crit_edge262.thread, !llvm.loop !92

._crit_edge262.thread:                            ; preds = %.lr.ph261
  %i.ie = trunc nuw i64 %i.fh to i32
  %i.if = load ptr, ptr %i.c, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 1104
  store i32 %i.ie, ptr %i.ii, align 8
  br label %bb.au

bb.av:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit158, %.loopexit.split-lp159, %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %bb.v
  %.sroa.29.3 = phi ptr [ %.sroa.29.1, %bb.v ], [ %.sroa.16106.0239, %.loopexit.split-lp159 ], [ %.sroa.29.2250, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ], [ %.sroa.29.2250, %bb.aq ], [ %.sroa.16106.0239, %.loopexit158 ], [ %.sroa.29.2250.lcssa, %.loopexit ], [ %.sroa.16106.1251, %.loopexit.split-lp ]
  %.sroa.097.3 = phi ptr [ %.sroa.097.1, %bb.v ], [ %.sroa.097.0240, %.loopexit.split-lp159 ], [ %.sroa.097.2252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ], [ %.sroa.097.2252, %bb.aq ], [ %.sroa.097.0240, %.loopexit158 ], [ %.sroa.097.2252, %.loopexit ], [ %.sroa.097.2252, %.loopexit.split-lp ] ; 3 uses
  %.pn44 = phi { ptr, i32 } [ %i.du, %bb.v ], [ %lpad.loopexit.split-lp161, %.loopexit.split-lp159 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ], [ %i.hc, %bb.aq ], [ %lpad.loopexit160, %.loopexit158 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i84 = icmp eq ptr %.sroa.097.3, null
  br i1 %.not.i.i.i84, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit85, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ij = ptrtoint ptr %.sroa.29.3 to i64
  %i.ik = ptrtoint ptr %.sroa.097.3 to i64
  %i.il = sub i64 %i.ij, %i.ik
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.097.3, i64 noundef %i.il) #23
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit85

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit:           ; preds = %bb.h, %bb.au, %._crit_edge262, %._crit_edge235
  %.sroa.0131.0.lcssa325 = phi ptr [ %.sroa.0131.1, %._crit_edge235 ], [ %.sroa.0131.1, %bb.au ], [ %.sroa.0131.1, %._crit_edge262 ], [ null, %bb.h ] ; 5 uses
  %.sroa.18142.0.lcssa323 = phi ptr [ %.sroa.18142.1, %._crit_edge235 ], [ %.sroa.18142.1, %bb.au ], [ %.sroa.18142.1, %._crit_edge262 ], [ null, %bb.h ] ; 3 uses
  %i.im = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.io = load i32, ptr %i.in, align 8
  %.not269 = icmp eq i32 %i.io, 0
  br i1 %.not269, label %._crit_edge265, label %.lr.ph264

._crit_edge265:                                   ; preds = %.lr.ph264, %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit
  %.lcssa = phi ptr [ %i.im, %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit ], [ %i.iz, %.lr.ph264 ]
  %i.ip = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8            ; 6 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 1104
  %i.is = load i32, ptr %i.ir, align 8
  %.not46 = icmp eq i32 %i.is, 0
  br i1 %.not46, label %bb.ax, label %bb.bb

.lr.ph264:                                        ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit, %.lr.ph264
  %indvars.iv298 = phi i64 [ %indvars.iv.next299.a, %.lr.ph264 ], [ 0, %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit ] ; 2 uses
  %i.it = phi ptr [ %i.iz, %.lr.ph264 ], [ %i.im, %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit ]
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv298
  %i.ix = load ptr, ptr %i.iw, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 64
  store ptr null, ptr %i.iy, align 8
  %indvars.iv.next299.a = add nuw nsw i64 %indvars.iv298, 1 ; 2 uses
  %i.iz = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load i32, ptr %i.ja, align 8
  %i.jc = zext i32 %i.jb to i64
  %i.jd = icmp samesign ult i64 %indvars.iv.next299.a, %i.jc
  br i1 %i.jd, label %.lr.ph264, label %._crit_edge265, !llvm.loop !93

bb.ax:                                            ; preds = %._crit_edge265
  %i.je = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.je, ptr noundef nonnull @.str.16)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  invoke void @__cxa_throw(ptr nonnull %i.je, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.be unwind label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.je) #22
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit85

bb.ba:                                            ; preds = %bb.ay
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit85

bb.bb:                                            ; preds = %._crit_edge265
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iq, i64 1028
  store float 1.000000e+00, ptr %i.jh, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iq, i64 1032
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iq, i64 1052
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx, i8 0, i64 20, i1 false)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iq, i64 1068
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iq, i64 1088
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.13.0..sroa_idx, i8 0, i64 20, i1 false)
  store float 1.000000e+00, ptr %.sroa.18.0..sroa_idx, align 8
  %.not.i.i.i86 = icmp eq ptr %.sroa.0131.0.lcssa325, null
  br i1 %.not.i.i.i86, label %_ZNSt6vectorIPKN6Assimp3ASE8BaseNodeESaIS4_EED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ji = ptrtoint ptr %.sroa.18142.0.lcssa323 to i64
  %i.jj = ptrtoint ptr %.sroa.0131.0.lcssa325 to i64
  %i.jk = sub i64 %i.ji, %i.jj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0131.0.lcssa325, i64 noundef %i.jk) #23
  br label %_ZNSt6vectorIPKN6Assimp3ASE8BaseNodeESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6Assimp3ASE8BaseNodeESaIS4_EED2Ev.exit: ; preds = %bb.bb, %bb.bc
  ret void

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit85:         ; preds = %.loopexit163, %.loopexit.split-lp164, %bb.aw, %bb.av, %bb.ba, %bb.az
  %.sroa.18142.0217 = phi ptr [ %.sroa.18142.1, %bb.aw ], [ %.sroa.18142.0.lcssa323, %bb.ba ], [ %.sroa.18142.0.lcssa323, %bb.az ], [ %.sroa.18142.1, %bb.av ], [ %.sroa.11137.0231, %.loopexit163 ], [ %.sroa.11137.0231, %.loopexit.split-lp164 ]
  %.sroa.0131.0209 = phi ptr [ %.sroa.0131.1, %bb.aw ], [ %.sroa.0131.0.lcssa325, %bb.ba ], [ %.sroa.0131.0.lcssa325, %bb.az ], [ %.sroa.0131.1, %bb.av ], [ %.sroa.0131.0232, %.loopexit163 ], [ %.sroa.0131.0232, %.loopexit.split-lp164 ] ; 3 uses
  %.pn47 = phi { ptr, i32 } [ %.pn44, %bb.aw ], [ %i.jg, %bb.ba ], [ %i.jf, %bb.az ], [ %.pn44, %bb.av ], [ %lpad.loopexit165, %.loopexit163 ], [ %lpad.loopexit.split-lp166, %.loopexit.split-lp164 ] ; 2 uses
  %.not.i.i.i87 = icmp eq ptr %.sroa.0131.0209, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorIPKN6Assimp3ASE8BaseNodeESaIS4_EED2Ev.exit88, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit85
  %i.jl = ptrtoint ptr %.sroa.18142.0217 to i64
  %i.jm = ptrtoint ptr %.sroa.0131.0209 to i64
  %i.jn = sub i64 %i.jl, %i.jm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0131.0209, i64 noundef %i.jn) #23
  br label %_ZNSt6vectorIPKN6Assimp3ASE8BaseNodeESaIS4_EED2Ev.exit88

_ZNSt6vectorIPKN6Assimp3ASE8BaseNodeESaIS4_EED2Ev.exit88: ; preds = %bb.bd, %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit85, %bb.d, %bb.i, %bb.c
  %.pn47.pn.pn = phi { ptr, i32 } [ %i.ab, %bb.c ], [ %.pn47, %bb.bd ], [ %i.ac, %bb.d ], [ %i.bo, %bb.i ], [ %.pn47, %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit85 ]
  resume { ptr, i32 } %.pn47.pn.pn

bb.be:                                            ; preds = %bb.ay
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11ASEImporter15BuildAnimationsERKSt6vectorIPNS_3ASE8BaseNodeESaIS4_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not124136 = icmp eq ptr %i.a, %i.c
  br i1 %.not124136, label %.loopexit130, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.m
  %.067138 = phi i32 [ %.2, %bb.m ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0111.0137 = phi ptr [ %i.be, %bb.m ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = load ptr, ptr %.sroa.0111.0137, align 8  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.f = load i32, ptr %i.e, align 8
  %.not73 = icmp eq i32 %i.f, 0
  br i1 %.not73, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.g, ptr noundef nonnull @.str.8)
  %.pre = load ptr, ptr %.sroa.0111.0137, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.h = phi ptr [ %.pre, %bb.b ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.j = load i32, ptr %i.i, align 8
  %.not74 = icmp eq i32 %i.j, 0
  br i1 %.not74, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.k, ptr noundef nonnull @.str.9)
  %.pre156 = load ptr, ptr %.sroa.0111.0137, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi ptr [ %.pre156, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 164
  %i.n = load i32, ptr %i.m, align 4
  %.not75 = icmp eq i32 %i.n, 0
  br i1 %.not75, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.o, ptr noundef nonnull @.str.8)
  %.pre157 = load ptr, ptr %.sroa.0111.0137, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = phi ptr [ %.pre157, %bb.f ], [ %i.l, %bb.e ] ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 200
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load ptr, ptr %i.q, align 8
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 24
  %i.y = icmp ugt i64 %i.x, 1
  br i1 %i.y, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 176
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 184
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.z, align 8
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = icmp ugt i64 %i.af, 32
  br i1 %i.ag, label %bb.j, label %bb.i
end_hunk_2
begin_hunk_3_@_ZN6Assimp11ASEImporter8AddNodesERKSt6vectorIPNS_3ASE8BaseNodeESaIS4_EEP6aiNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK12aiMatrix4x4tIfE:bb.a

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.fx = load ptr, ptr %i.au, align 8, !noalias !114
  %i.fy = load i64, ptr %i.av, align 8, !noalias !114 ; 3 uses
  store ptr %i.l, ptr %8, align 8, !alias.scope !117
  store i64 0, ptr %i.m, align 8, !alias.scope !117
  store i8 0, ptr %i.l, align 8, !alias.scope !117
  %i.fz = add i64 %i.fy, 7
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.fz)
          to label %bb.an unwind label %.loopexit187

bb.an:                                            ; preds = %bb.am
  %i.ga = load i64, ptr %i.m, align 8, !alias.scope !117
  %i.gb = sub i64 4611686018427387903, %i.ga
  %i.gc = icmp ult i64 %i.gb, %i.fy
  br i1 %i.gc, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.an
  %i.gd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.fx, i64 noundef %i.fy)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit187 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ge = load i64, ptr %i.m, align 8, !alias.scope !117
  %i.gf = add i64 %i.ge, -4611686018427387897
  %i.gg = icmp ult i64 %i.gf, 7
  br i1 %i.gg, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.cont.i.i unwind label %.loopexit.split-lp188

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.gh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.10, i64 noundef 7)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %.loopexit187 ; 0 uses

.loopexit187:                                     ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit189 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp188:                            ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp190 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp188, %.loopexit187
  %lpad.phi191 = phi { ptr, i32 } [ %lpad.loopexit189, %.loopexit187 ], [ %lpad.loopexit.split-lp190, %.loopexit.split-lp188 ]
  %i.gi = load ptr, ptr %8, align 8, !alias.scope !117 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.l
  br i1 %i.gj, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ao
  %i.gk = load i64, ptr %i.l, align 8, !alias.scope !117
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #23
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.gm = load i64, ptr %i.m, align 8             ; 5 uses
  %i.gn = icmp ugt i64 %i.gm, 1023
  %.pre352 = load ptr, ptr %8, align 8            ; 3 uses
  br i1 %i.gn, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit107, label %bb.ap

bb.ap:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.go = trunc nuw nsw i64 %i.gm to i32
  store i32 %i.go, ptr %i.fw, align 4
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fw, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gp, ptr align 1 %.pre352, i64 %i.gm, i1 false)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gm
  store i8 0, ptr %i.gq, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit107

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit107: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit, %bb.ap
  %i.gr = icmp eq ptr %.pre352, %i.l
  br i1 %i.gr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit107
  %i.gs = icmp ult i64 %i.gm, 16
  call void @llvm.assume(i1 %i.gs)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit107
  %i.gt = load i64, ptr %i.l, align 8
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %.pre352, i64 noundef %i.gu) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.gv = load float, ptr %i.fp, align 8
  %i.gw = load float, ptr %i.cm, align 4
  %i.gx = fsub float %i.gv, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fw, i64 1040
  store float %i.gx, ptr %i.gy, align 4
  %i.gz = getelementptr inbounds nuw i8, ptr %i.t, i64 140
  %i.ha = load float, ptr %i.gz, align 4
  %i.hb = load float, ptr %i.cn, align 4
  %i.hc = fsub float %i.ha, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fw, i64 1056
  store float %i.hc, ptr %i.hd, align 4
  %i.he = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.hf = load float, ptr %i.he, align 8
  %i.hg = load float, ptr %i.co, align 4
  %i.hh = fsub float %i.hf, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fw, i64 1072
  store float %i.hh, ptr %i.hi, align 4
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fw, i64 1096
  store ptr %i.at, ptr %i.hj, align 8
  %i.hk = load i32, ptr %i.fs, align 8
  %.not288 = icmp eq i32 %i.hk, 0
  br i1 %.not288, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.hl = getelementptr inbounds nuw i8, ptr %i.at, i64 1112
  br label %bb.as

._crit_edge:                                      ; preds = %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.hm = getelementptr inbounds nuw i8, ptr %i.at, i64 1112
  %i.hn = load ptr, ptr %i.hm, align 8
  store ptr %i.fw, ptr %i.hn, align 8
  %i.ho = load i32, ptr %i.fs, align 8
  %i.hp = add i32 %i.ho, 1
  store i32 %i.hp, ptr %i.fs, align 8
  %i.hq = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.at unwind label %bb.aq

bb.aq:                                            ; preds = %bb.at, %._crit_edge, %bb.ak
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ar:                                            ; preds = %bb.al
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef 1144) #23
  br label %bb.av

.body:                                            ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.av

bb.as:                                            ; preds = %.lr.ph, %bb.as
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.as ] ; 2 uses
  %i.ht = load ptr, ptr %i.hl, align 8            ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv
  %i.hv = load ptr, ptr %i.hu, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv.next
  store ptr %i.hv, ptr %i.hw, align 8
  %i.hx = load i32, ptr %i.fs, align 8
  %i.hy = zext i32 %i.hx to i64
  %i.hz = icmp samesign ult i64 %indvars.iv.next, %i.hy
  br i1 %i.hz, label %bb.as, label %._crit_edge, !llvm.loop !120

bb.at:                                            ; preds = %._crit_edge
  invoke void @_ZN6Assimp6Logger12verboseDebugIJRA39_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.hq, ptr noundef nonnull align 1 dereferenceable(39) @.str.12, ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 1 dereferenceable(2) @.str.13)
          to label %bb.au unwind label %bb.aq

bb.au:                                            ; preds = %bb.at, %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.d, %bb.e, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.au
  %.sroa.20.1 = phi ptr [ %.sroa.20.4, %bb.au ], [ %.sroa.20.0277, %bb.e ], [ %.sroa.20.0277, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.20.0277, %bb.c ], [ %.sroa.20.0277, %bb.d ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.2, %bb.au ], [ %.sroa.12.0278, %bb.e ], [ %.sroa.12.0278, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.12.0278, %bb.c ], [ %.sroa.12.0278, %bb.d ] ; 2 uses
  %.sroa.0152.1 = phi ptr [ %.sroa.0152.4, %bb.au ], [ %.sroa.0152.0279, %bb.e ], [ %.sroa.0152.0279, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.0152.0279, %bb.c ], [ %.sroa.0152.0279, %bb.d ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0148.0276, i64 8 ; 2 uses
  %.not177 = icmp eq ptr %i.ia, %i.g
  br i1 %.not177, label %._crit_edge282, label %bb.b, !llvm.loop !121

bb.av:                                            ; preds = %bb.aq, %bb.ar, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %bb.ab
  %.pn84 = phi { ptr, i32 } [ %i.fg, %bb.ab ], [ %i.hs, %bb.ar ], [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ], [ %i.hr, %bb.aq ], [ %lpad.phi191, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.az

bb.aw:                                            ; preds = %._crit_edge282
  %i.ib = add nsw i64 %i.q, 1                     ; 2 uses
  %i.ic = icmp ugt i64 %i.ib, 2305843009213693951
  %i.id = shl i64 %i.ib, 3
  %i.ie = select i1 %i.ic, i64 -1, i64 %i.id
  %i.if = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ie) #25
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 1112 ; 2 uses
  store ptr %i.if, ptr %i.ig, align 8
  %.not289 = icmp eq ptr %.sroa.12.0.lcssa, %.sroa.0152.0.lcssa
  br i1 %.not289, label %.loopexit, label %.lr.ph287

bb.ay:                                            ; preds = %bb.aw
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.lr.ph287:                                        ; preds = %bb.ax, %.lr.ph287
  %i.ii = phi i64 [ %10, %.lr.ph287 ], [ 0, %bb.ax ] ; 2 uses
  %.0285 = phi i32 [ %9, %.lr.ph287 ], [ 0, %bb.ax ]
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0152.0.lcssa, i64 %i.ii
  %i.ik = load ptr, ptr %i.ij, align 8
  %i.il = load ptr, ptr %i.ig, align 8
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.ii
  store ptr %i.ik, ptr %i.im, align 8
  %9 = add i32 %.0285, 1                          ; 2 uses
  %10 = zext i32 %9 to i64                        ; 2 uses
  %i.in = icmp ugt i64 %i.q, %10
  br i1 %i.in, label %.lr.ph287, label %.loopexit.thread, !llvm.loop !122

.loopexit:                                        ; preds = %bb.ax, %._crit_edge282
  %.not.i.i.i = icmp eq ptr %.sroa.0152.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.lr.ph287, %.loopexit
  %i.io = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.ip = sub i64 %i.io, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0152.0.lcssa, i64 noundef %i.ip) #23
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit:           ; preds = %.loopexit, %.loopexit.thread
  ret void

bb.az:                                            ; preds = %.loopexit181, %.loopexit.split-lp, %bb.av, %bb.aa, %bb.z, %bb.ay
  %.sroa.20.3 = phi ptr [ %.sroa.20.0.lcssa, %bb.ay ], [ %.sroa.20.0277, %bb.z ], [ %.sroa.20.4, %bb.aa ], [ %.sroa.20.4, %bb.av ], [ %.sroa.20.0277.lcssa, %.loopexit181 ], [ %.sroa.12.0278, %.loopexit.split-lp ]
  %.sroa.0152.3 = phi ptr [ %.sroa.0152.0.lcssa, %bb.ay ], [ %.sroa.0152.0279, %bb.z ], [ %.sroa.0152.4, %bb.aa ], [ %.sroa.0152.4, %bb.av ], [ %.sroa.0152.0279, %.loopexit181 ], [ %.sroa.0152.0279, %.loopexit.split-lp ] ; 3 uses
  %.pn84.pn.pn.pn = phi { ptr, i32 } [ %i.ih, %bb.ay ], [ %i.ff, %bb.z ], [ %lpad.phi186, %bb.aa ], [ %.pn84, %bb.av ], [ %lpad.loopexit, %.loopexit181 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i111 = icmp eq ptr %.sroa.0152.3, null
  br i1 %.not.i.i.i111, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit112, label %.thread168

.thread168:                                       ; preds = %bb.az
  %i.iq = ptrtoint ptr %.sroa.20.3 to i64
  %i.ir = ptrtoint ptr %.sroa.0152.3 to i64
  %i.is = sub i64 %i.iq, %i.ir
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0152.3, i64 noundef %i.is) #23
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit112

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit112:        ; preds = %bb.az, %.thread168
  resume { ptr, i32 } %.pn84.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11ASEImporter9AddMeshesEPKNS_3ASE8BaseNodeEP6aiNode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #9 align 2 {
bb.a:
  %3 = alloca %class.aiMatrix4x4t, align 4        ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %.not79 = icmp eq i32 %i.d, 0
  br i1 %.not79, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 1120 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1120
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.loopexit64, label %bb.e

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.h = phi ptr [ %i.b, %.lr.ph ], [ %i.t, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %spec.select = select i1 %i.o, ptr null, ptr %i.p
  %i.q = icmp eq ptr %spec.select, %1
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.e, align 8
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.e, align 8
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = phi ptr [ %.pre, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i32, ptr %i.u, align 8
  %i.w = zext i32 %i.v to i64
  %i.x = icmp samesign ult i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %bb.b, label %._crit_edge, !llvm.loop !123

bb.e:                                             ; preds = %._crit_edge
  %i.y = zext i32 %i.g to i64
  %i.z = shl nuw nsw i64 %i.y, 2
  %i.aa = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #25
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 1128 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 8
  %.not80 = icmp eq i32 %i.ae, 0
  br i1 %.not80, label %.loopexit64, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 44
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph78, %bb.i
  %i.aj = phi ptr [ %i.ac, %.lr.ph78 ], [ %i.dr, %bb.i ] ; 2 uses
  %indvars.iv83 = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next84, %bb.i ] ; 3 uses
  %.04775 = phi i32 [ 0, %.lr.ph78 ], [ %.1, %bb.i ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv83
  %i.an = load ptr, ptr %i.am, align 8            ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8            ; 8 uses
  %i.aq = icmp eq ptr %i.ap, null
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %spec.select1 = select i1 %i.aq, ptr null, ptr %i.ar
  %i.as = icmp eq ptr %spec.select1, %1
  br i1 %i.as, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %i.ab, align 8
  %i.au = add i32 %.04775, 1
  %i.av = zext i32 %.04775 to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.av
  %i.ax = trunc nuw i64 %indvars.iv83 to i32
  store i32 %i.ax, ptr %i.aw, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 144 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.ay, i64 64, i1 false)
  %i.az = call noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %3) ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %.idx = mul nuw nsw i64 %i.be, 12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx
  %.not5166 = icmp eq i32 %i.bd, 0
  br i1 %.not5166, label %._crit_edge70, label %.lr.ph69

.lr.ph69:                                         ; preds = %bb.g, %.lr.ph69
  %.04867 = phi ptr [ %i.ci, %.lr.ph69 ], [ %i.bb, %bb.g ] ; 5 uses
  %i.bg = load float, ptr %.04867, align 4        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.04867, i64 4
  %i.bi = load float, ptr %i.bh, align 4          ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.04867, i64 8 ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4          ; 2 uses
  %i.bl = load <8 x float>, ptr %3, align 4       ; 4 uses
  %i.bm = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = shufflevector <8 x float> %i.bl, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.bp = fmul <2 x float> %i.bn, %i.bo
  %i.bq = shufflevector <8 x float> %i.bl, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.br = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.bs, <2 x float> %i.bp)
  %i.bu = shufflevector <8 x float> %i.bl, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.bv = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bw, <2 x float> %i.bt)
  %i.by = shufflevector <8 x float> %i.bl, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.bz = fadd <2 x float> %i.bx, %i.by
  %i.ca = load float, ptr %i.af, align 4
  %i.cb = load float, ptr %i.ag, align 4
  %i.cc = fmul float %i.bi, %i.cb
  %i.cd = call float @llvm.fmuladd.f32(float %i.ca, float %i.bg, float %i.cc)
  %i.ce = load float, ptr %i.ah, align 4
  %i.cf = call float @llvm.fmuladd.f32(float %i.ce, float %i.bk, float %i.cd)
  %i.cg = load float, ptr %i.ai, align 4
  %i.ch = fadd float %i.cg, %i.cf
  store <2 x float> %i.bz, ptr %.04867, align 4
  store float %i.ch, ptr %i.bj, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %.04867, i64 12 ; 2 uses
  %.not51 = icmp eq ptr %i.ci, %i.bf
  br i1 %.not51, label %._crit_edge70, label %.lr.ph69, !llvm.loop !124

._crit_edge70:                                    ; preds = %.lr.ph69, %bb.g
  %i.cj = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8            ; 3 uses
  %.not52 = icmp eq ptr %i.ck, null
  br i1 %.not52, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %._crit_edge70
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ap, i64 152
  %i.cm = load float, ptr %i.cl, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ap, i64 160
  %i.co = getelementptr inbounds nuw i8, ptr %i.ap, i64 168
  %i.cp = load float, ptr %i.co, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ap, i64 176
  %i.cr = load <2 x float>, ptr %i.ay, align 4
  %i.cs = load <2 x float>, ptr %i.cn, align 4
  %i.ct = load <2 x float>, ptr %i.cq, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ap, i64 184
  %i.cv = load float, ptr %i.cu, align 4
  %i.cw = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.cx = zext i32 %i.cw to i64
  %.idx81 = mul nuw nsw i64 %i.cx, 12
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx81
  %.not5371 = icmp eq i32 %i.cw, 0
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #23
  br label %_ZNSt12_Vector_baseISt6vectorI14aiVertexWeightSaIS1_EESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorI14aiVertexWeightSaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z34ComputeNormalsWithSmoothingsGroupsIN6Assimp3ASE4FaceEEvR23MeshWithSmoothingGroupsIT_E(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.aiVector3t, align 8          ; 5 uses
  %2 = alloca %"class.std::vector.38", align 8    ; 12 uses
  %3 = alloca %"class.Assimp::SGSpatialSort", align 8 ; 15 uses
  %4 = alloca %"class.std::vector.112", align 8   ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = sdiv exact i64 %i.g, 12                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store <2 x float> zeroinitializer, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float 0.000000e+00, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 12                  ; 3 uses
  %i.q = icmp ugt i64 %i.h, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = sub nuw nsw i64 %i.h, %i.p
  call void @_ZNSt6vectorI10aiVector3tIfESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.k, i64 noundef %i.r, ptr noundef nonnull align 4 dereferenceable(12) %1)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.s = icmp ult i64 %i.h, %i.p
  br i1 %i.s, label %bb.d, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.t
  br i1 %.not.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit, label %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.t, ptr %i.j, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not253 = icmp eq ptr %i.w, %i.x
  br i1 %.not253, label %.preheader212, label %.lr.ph

.preheader212:                                    ; preds = %.lr.ph, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit
  %i.y = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.z = load ptr, ptr %0, align 8                ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 12
  %.not254 = icmp eq ptr %i.y, %i.z
  br i1 %.not254, label %._crit_edge, label %.lr.ph224

.lr.ph:                                           ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit, %.lr.ph
  %i.ae = phi ptr [ %i.cj, %.lr.ph ], [ %i.x, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit ]
  %i.af = phi i64 [ %i.ch, %.lr.ph ], [ 0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit ]
  %.082216 = phi i32 [ %i.cg, %.lr.ph ], [ 0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit ]
  %i.ag = getelementptr inbounds nuw [132 x i8], ptr %i.ae, i64 %i.af ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = load ptr, ptr %0, align 8               ; 3 uses
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.ai ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.ar ; 2 uses
  %i.at = load float, ptr %i.ao, align 4
  %i.au = load float, ptr %i.ak, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ax = load float, ptr %i.as, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.az = load <2 x float>, ptr %i.av, align 4    ; 2 uses
  %i.ba = load <2 x float>, ptr %i.aw, align 4    ; 3 uses
  %i.bb = fsub <2 x float> %i.az, %i.ba           ; 2 uses
  %i.bc = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bd = insertelement <2 x float> %i.bc, float %i.at, i64 1
  %i.be = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bf = insertelement <2 x float> %i.be, float %i.au, i64 1 ; 2 uses
  %i.bg = fsub <2 x float> %i.bd, %i.bf           ; 2 uses
  %i.bh = load <2 x float>, ptr %i.ay, align 4    ; 2 uses
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bj = insertelement <2 x float> %i.bi, float %i.ax, i64 1
  %i.bk = fsub <2 x float> %i.bj, %i.bf           ; 2 uses
  %i.bl = fsub <2 x float> %i.bh, %i.ba           ; 2 uses
  %i.bm = fneg <2 x float> %i.bl
  %i.bn = fmul <2 x float> %i.bg, %i.bm
  %i.bo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.bk, <2 x float> %i.bn) ; 3 uses
  %i.bp = extractelement <2 x float> %i.bk, i64 1
  %i.bq = fneg float %i.bp
  %i.br = extractelement <2 x float> %i.bb, i64 0
  %i.bs = fmul float %i.br, %i.bq
  %i.bt = extractelement <2 x float> %i.bg, i64 1
  %i.bu = extractelement <2 x float> %i.bl, i64 0
  %i.bv = call float @llvm.fmuladd.f32(float %i.bt, float %i.bu, float %i.bs) ; 3 uses
  %i.bw = load ptr, ptr %i.a, align 8
  %i.bx = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %i.ai ; 2 uses
  store <2 x float> %i.bo, ptr %i.bx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store float %i.bv, ptr %.sroa.4.0..sroa_idx, align 4
  %i.by = load i32, ptr %i.al, align 4
  %i.bz = zext i32 %i.by to i64
  %i.ca = load ptr, ptr %i.a, align 8
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %i.ca, i64 %i.bz ; 2 uses
  store <2 x float> %i.bo, ptr %i.cb, align 4
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store float %i.bv, ptr %.sroa.4.0..sroa_idx.1, align 4
  %i.cc = load i32, ptr %i.ap, align 4
  %i.cd = zext i32 %i.cc to i64
  %i.ce = load ptr, ptr %i.a, align 8
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %i.cd ; 2 uses
  store <2 x float> %i.bo, ptr %i.cf, align 4
  %.sroa.4.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store float %i.bv, ptr %.sroa.4.0..sroa_idx.2, align 4
  %i.cg = add i32 %.082216, 1                     ; 2 uses
  %i.ch = zext i32 %i.cg to i64                   ; 2 uses
  %i.ci = load ptr, ptr %i.v, align 8
  %i.cj = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = sdiv exact i64 %i.cm, 132
  %i.co = icmp ugt i64 %i.cn, %i.ch
  br i1 %i.co, label %.lr.ph, label %.preheader212, !llvm.loop !130

._crit_edge.loopexit:                             ; preds = %.lr.ph224
  %foldExtExtBinop = fsub <2 x float> %i.ds, %i.dq
  %i.cp = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop315 = fsub <2 x float> %i.ds, %i.dq ; 2 uses
  %i.cq = fsub float %.sroa.speculated, %.sroa.speculated191 ; 2 uses
  %foldExtExtBinop317 = fmul <2 x float> %foldExtExtBinop315, %foldExtExtBinop315
  %i.cr = extractelement <2 x float> %foldExtExtBinop317, i64 1
  %i.cs = call float @llvm.fmuladd.f32(float %i.cp, float %i.cp, float %i.cr)
  %i.ct = call float @llvm.fmuladd.f32(float %i.cq, float %i.cq, float %i.cs)
  %i.cu = call float @llvm.sqrt.f32(float %i.ct)
  %i.cv = fmul float %i.cu, f0x3727C5AC
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader212
  %sqrt.i = phi float [ f0x48A92544, %.preheader212 ], [ %i.cv, %._crit_edge.loopexit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.cw = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.cx = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not293 = icmp eq ptr %i.cw, %i.cx
  br i1 %.not293, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.dc = sdiv exact i64 %i.da, 12
  %i.dd = icmp ugt i64 %i.dc, 768614336404564650
  br i1 %i.dd, label %.noexc133, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i

.noexc133:                                        ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.df = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #25 ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.df, i8 0, i64 %i.da, i1 false)
  store ptr %i.df, ptr %2, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.da ; 2 uses
  store ptr %i.dg, ptr %i.db, align 8
  store ptr %i.dg, ptr %i.de, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

.lr.ph224:                                        ; preds = %.preheader212, %.lr.ph224
  %i.dh = phi i64 [ %6, %.lr.ph224 ], [ 0, %.preheader212 ]
  %.084223 = phi i32 [ %5, %.lr.ph224 ], [ 0, %.preheader212 ]
  %.sroa.13188.0220 = phi float [ %.sroa.speculated191, %.lr.ph224 ], [ 1.000000e+10, %.preheader212 ] ; 2 uses
  %.sroa.13176.0217 = phi float [ %.sroa.speculated, %.lr.ph224 ], [ -1.000000e+10, %.preheader212 ] ; 2 uses
  %i.di = phi <2 x float> [ %i.ds, %.lr.ph224 ], [ splat (float -1.000000e+10), %.preheader212 ] ; 2 uses
  %i.dj = phi <2 x float> [ %i.dq, %.lr.ph224 ], [ splat (float 1.000000e+10), %.preheader212 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %i.dh ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load float, ptr %i.dl, align 4          ; 4 uses
  %i.dn = fcmp olt float %i.dm, %.sroa.13188.0220
  %.sroa.speculated191 = select i1 %i.dn, float %i.dm, float %.sroa.13188.0220 ; 2 uses
  %i.do = load <2 x float>, ptr %i.dk, align 4    ; 4 uses
  %i.dp = fcmp olt <2 x float> %i.do, %i.dj
  %i.dq = select <2 x i1> %i.dp, <2 x float> %i.do, <2 x float> %i.dj ; 3 uses
  %i.dr = fcmp olt <2 x float> %i.di, %i.do
  %i.ds = select <2 x i1> %i.dr, <2 x float> %i.do, <2 x float> %i.di ; 3 uses
  %i.dt = fcmp olt float %.sroa.13176.0217, %i.dm
  %.sroa.speculated = select i1 %i.dt, float %i.dm, float %.sroa.13176.0217 ; 2 uses
  %5 = add i32 %.084223, 1                        ; 2 uses
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.du = icmp ugt i64 %i.ad, %6
  br i1 %i.du, label %.lr.ph224, label %._crit_edge.loopexit, !llvm.loop !131

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit: ; preds = %._crit_edge, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.dv = phi ptr [ %i.df, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ null, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZN6Assimp13SGSpatialSortC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %i.dw = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.dx = load ptr, ptr %i.v, align 8
  %.not231 = icmp eq ptr %i.dw, %i.dx
  br i1 %.not231, label %._crit_edge233, label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.j
  %.sroa.0166.0232 = phi ptr [ %i.er, %bb.j ], [ %i.dw, %bb.f ] ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0166.0232, i64 12 ; 3 uses
  %i.dz = load i32, ptr %.sroa.0166.0232, align 4 ; 2 uses
  %i.ea = zext i32 %i.dz to i64
  %i.eb = load ptr, ptr %0, align 8
  %i.ec = getelementptr inbounds nuw [12 x i8], ptr %i.eb, i64 %i.ea
  %i.ed = load i32, ptr %i.dy, align 4
  invoke void @_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.ec, i32 noundef %i.dz, i32 noundef %i.ed)
          to label %bb.h unwind label %bb.k

._crit_edge233:                                   ; preds = %bb.j, %bb.f
  invoke void @_ZN6Assimp13SGSpatialSort7PrepareEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.l unwind label %bb.n

bb.g:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.h:                                             ; preds = %.preheader
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0166.0232, i64 4
  %i.eg = load i32, ptr %i.ef, align 4            ; 2 uses
  %i.eh = zext i32 %i.eg to i64
  %i.ei = load ptr, ptr %0, align 8
  %i.ej = getelementptr inbounds nuw [12 x i8], ptr %i.ei, i64 %i.eh
  %i.ek = load i32, ptr %i.dy, align 4
  invoke void @_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.ej, i32 noundef %i.eg, i32 noundef %i.ek)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0166.0232, i64 8
  %i.em = load i32, ptr %i.el, align 4            ; 2 uses
  %i.en = zext i32 %i.em to i64
  %i.eo = load ptr, ptr %0, align 8
  %i.ep = getelementptr inbounds nuw [12 x i8], ptr %i.eo, i64 %i.en
  %i.eq = load i32, ptr %i.dy, align 4
  invoke void @_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.ep, i32 noundef %i.em, i32 noundef %i.eq)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0166.0232, i64 132 ; 2 uses
  %i.es = load ptr, ptr %i.v, align 8
  %.not = icmp eq ptr %i.er, %i.es
  br i1 %.not, label %._crit_edge233, label %.preheader, !llvm.loop !132

bb.k:                                             ; preds = %bb.i, %bb.h, %.preheader
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit127

bb.l:                                             ; preds = %._crit_edge233
  %i.eu = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ev = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i114 = icmp eq ptr %i.eu, %i.ev
  br i1 %.not.i.i114, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = sdiv exact i64 %i.ey, 12
  %i.fa = add nsw i64 %i.ez, 63                   ; 2 uses
  %i.fb = lshr i64 %i.fa, 3
  %i.fc = and i64 %i.fb, 2305843009213693944
  %i.fd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fc) #25
          to label %.noexc115 unwind label %bb.o  ; 3 uses

.noexc115:                                        ; preds = %bb.m
  %i.fe = lshr i64 %i.fa, 6                       ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fe
  %.idx.i = shl nuw nsw i64 %i.fe, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fd, i8 0, i64 %.idx.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %.noexc115, %bb.l
  %.sroa.0157.0 = phi ptr [ null, %bb.l ], [ %i.fd, %.noexc115 ] ; 10 uses
  %.sroa.15163.0 = phi ptr [ null, %bb.l ], [ %i.ff, %.noexc115 ] ; 4 uses
  %i.fg = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.fh = load ptr, ptr %i.v, align 8
  %.not208249 = icmp eq ptr %i.fg, %i.fh
  br i1 %.not208249, label %._crit_edge252, label %.lr.ph251

.lr.ph251:                                        ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.p

._crit_edge252:                                   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.fk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIfESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ac unwind label %bb.ag     ; 0 uses

bb.n:                                             ; preds = %._crit_edge233
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit127

bb.o:                                             ; preds = %bb.m
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit127

bb.p:                                             ; preds = %.lr.ph251, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.sroa.0152.0250 = phi ptr [ %i.fg, %.lr.ph251 ], [ %i.ga, %_ZNSt6vectorIjSaIjEED2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0152.0250, i64 12 ; 3 uses
  %i.fo = load i32, ptr %.sroa.0152.0250, align 4 ; 2 uses
  %i.fp = zext i32 %i.fo to i64                   ; 2 uses
  %i.fq = lshr i32 %i.fo, 6
  %.zext = zext nneg i32 %i.fq to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0157.0, i64 %.zext
  %i.fs = and i64 %i.fp, 63
  %i.ft = shl nuw i64 1, %i.fs
  %i.fu = load i64, ptr %i.fr, align 8
  %i.fv = and i64 %i.ft, %i.fu
  %.not209 = icmp eq i64 %i.fv, 0
  br i1 %.not209, label %bb.r, label %.loopexit

bb.q:                                             ; preds = %.loopexit.2
  %i.fw = load ptr, ptr %i.fj, align 8
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = ptrtoint ptr %i.lm to i64
  %i.fz = sub i64 %i.fx, %i.fy
  call void @_ZdlPvm(ptr noundef nonnull %i.lm, i64 noundef %i.fz) #23
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %.loopexit.2, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0152.0250, i64 132 ; 2 uses
  %i.gb = load ptr, ptr %i.v, align 8
  %.not208 = icmp eq ptr %i.ga, %i.gb
  br i1 %.not208, label %._crit_edge252, label %bb.p, !llvm.loop !133

bb.r:                                             ; preds = %bb.p
  %i.gc = load ptr, ptr %0, align 8
  %i.gd = getelementptr inbounds nuw [12 x i8], ptr %i.gc, i64 %i.fp
  %i.ge = load i32, ptr %i.fn, align 4
  invoke void @_ZNK6Assimp13SGSpatialSort13FindPositionsERK10aiVector3tIfEjfRSt6vectorIjSaIjEEb(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.gd, i32 noundef %i.ge, float noundef %sqrt.i, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext false)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gf = load ptr, ptr %4, align 8               ; 3 uses
  %i.gg = load ptr, ptr %i.fi, align 8            ; 2 uses
  %.not210234 = icmp eq ptr %i.gf, %i.gg          ; 2 uses
  br i1 %.not210234, label %._crit_edge241, label %.lr.ph240

.lr.ph240:                                        ; preds = %bb.s
  %i.gh = load ptr, ptr %i.a, align 8
  br label %bb.u

._crit_edge241:                                   ; preds = %bb.u, %bb.s
  %.sroa.14.0.lcssa = phi float [ 0.000000e+00, %bb.s ], [ %i.hd, %bb.u ] ; 4 uses
  %i.gi = phi <2 x float> [ zeroinitializer, %bb.s ], [ %i.ha, %bb.u ] ; 5 uses
  %foldExtExtBinop319 = fmul <2 x float> %i.gi, %i.gi
  %i.gj = extractelement <2 x float> %foldExtExtBinop319, i64 1
  %i.gk = extractelement <2 x float> %i.gi, i64 0 ; 2 uses
  %i.gl = call float @llvm.fmuladd.f32(float %i.gk, float %i.gk, float %i.gj)
  %i.gm = call noundef float @llvm.fmuladd.f32(float %.sroa.14.0.lcssa, float %.sroa.14.0.lcssa, float %i.gl) ; 2 uses
  %i.gn = fcmp ogt float %i.gm, 0.000000e+00
  br i1 %i.gn, label %_ZN10aiVector3tIfEdVEf.exit.i, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %._crit_edge241
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.gm)
  %i.go = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.gp = insertelement <2 x float> poison, float %i.go, i64 0
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gr = fmul <2 x float> %i.gi, %i.gq
  %i.gs = fmul float %.sroa.14.0.lcssa, %i.go
  br label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit

bb.t:                                             ; preds = %bb.y, %bb.v, %bb.r
  %i.gt = landingpad { ptr, i32 }
          cleanup
  %i.gu = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i122 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i122, label %.thread, label %bb.ab

bb.u:                                             ; preds = %.lr.ph240, %bb.u
  %.sroa.0142.0238 = phi ptr [ %i.gf, %.lr.ph240 ], [ %i.he, %bb.u ] ; 2 uses
  %.sroa.14.0235 = phi float [ 0.000000e+00, %.lr.ph240 ], [ %i.hd, %bb.u ]
  %i.gv = phi <2 x float> [ zeroinitializer, %.lr.ph240 ], [ %i.ha, %bb.u ]
  %i.gw = load i32, ptr %.sroa.0142.0238, align 4
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [12 x i8], ptr %i.gh, i64 %i.gx ; 2 uses
  %i.gz = load <2 x float>, ptr %i.gy, align 4
end_hunk_4
