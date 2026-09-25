Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/autoit?download=true
inline.NumInlined: 33
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 17
begin_hunk_0_@cli_scanautoit:bb.a
  %i.ng = zext i32 %.sroa.46.8.9.i to i64
  %i.nh = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ng
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !10
  %i.nj = zext i8 %i.ni to i32
  %i.nk = shl nuw nsw i32 %i.nj, 8
  %i.nl = add i32 %.sroa.46.8.9.i, 2
  %i.nm = zext i32 %i.nf to i64
  %i.nn = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.nm
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !10
  %i.np = zext i8 %i.no to i32
  %i.nq = or disjoint i32 %i.nk, %i.np
  %i.nr = or i32 %i.nq, %.sroa.125.sroa.0.0.insert.ext329.9.i ; 2 uses
  %.sroa.125.sroa.0.0.insert.ext329.10853.i = shl nuw nsw i32 %i.nr, 1
  br label %.preheader602.12.i

.preheader602.11.i:                               ; preds = %.preheader602.10.i
  %.sroa.125.sroa.0.0.insert.ext329.10.i = shl nuw nsw i32 %.sroa.125.sroa.0.8.9.i, 2 ; 2 uses
  %i.ns = add i32 %i.mx, -2                       ; 2 uses
  %.not24.i197.11.i = icmp eq i32 %i.ns, 0
  br i1 %.not24.i197.11.i, label %bb.aw, label %.preheader602.12.i

bb.aw:                                            ; preds = %.preheader602.11.i
  %i.nt = add i32 %.sroa.46.8.9.i, 1
  %i.nu = zext i32 %.sroa.46.8.9.i to i64
  %i.nv = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.nu
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !10
  %i.nx = zext i8 %i.nw to i32
  %i.ny = shl nuw nsw i32 %i.nx, 8
  %i.nz = add i32 %.sroa.46.8.9.i, 2
  %i.oa = zext i32 %i.nt to i64
  %i.ob = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.oa
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !10
  %i.od = zext i8 %i.oc to i32
  %i.oe = or disjoint i32 %i.ny, %i.od
  %i.of = or i32 %i.oe, %.sroa.125.sroa.0.0.insert.ext329.10.i
  br label %.preheader602.12.i

.preheader602.12.i:                               ; preds = %bb.aw, %.preheader602.11.i, %.preheader602.11.thread.i
  %.sroa.125.sroa.0.8.10855.i = phi i32 [ %.sroa.125.sroa.0.0.insert.ext329.9.i, %bb.aw ], [ %.sroa.125.sroa.0.0.insert.ext329.9.i, %.preheader602.11.i ], [ %i.nr, %.preheader602.11.thread.i ]
  %.sroa.46.8.11.i = phi i32 [ %i.nz, %bb.aw ], [ %.sroa.46.8.9.i, %.preheader602.11.i ], [ %i.nl, %.preheader602.11.thread.i ] ; 9 uses
  %.sroa.125.sroa.0.8.11.i = phi i32 [ %i.of, %bb.aw ], [ %.sroa.125.sroa.0.0.insert.ext329.10.i, %.preheader602.11.i ], [ %.sroa.125.sroa.0.0.insert.ext329.10853.i, %.preheader602.11.thread.i ] ; 3 uses
  %i.og = phi i32 [ 16, %bb.aw ], [ %i.ns, %.preheader602.11.i ], [ 15, %.preheader602.11.thread.i ] ; 3 uses
  %i.oh = and i32 %.sroa.125.sroa.0.8.10855.i, 32768
  %i.oi = or i32 %i.oh, %i.ne
  %i.oj = shl nuw nsw i32 %i.oi, 2
  %i.ok = and i32 %i.oj, 536739840
  %.sroa.125.sroa.0.0.insert.ext329.11.i = shl nuw nsw i32 %.sroa.125.sroa.0.8.11.i, 1 ; 5 uses
  %i.ol = and i32 %.sroa.125.sroa.0.0.insert.ext329.11.i, 65536
  %i.om = or disjoint i32 %i.ol, %i.ok
  %.not24.i197.12.i = icmp eq i32 %i.og, 1
  br i1 %.not24.i197.12.i, label %.preheader602.13.thread.i, label %.preheader602.13.i

.preheader602.13.thread.i:                        ; preds = %.preheader602.12.i
  %i.on = add i32 %.sroa.46.8.11.i, 1
  %i.oo = zext i32 %.sroa.46.8.11.i to i64
  %i.op = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.oo
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !10
  %i.or = zext i8 %i.oq to i32
  %i.os = shl nuw nsw i32 %i.or, 8
  %i.ot = zext i32 %i.on to i64
  %i.ou = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ot
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !10
  %i.ow = zext i8 %i.ov to i32
  %i.ox = or disjoint i32 %i.os, %i.ow
  %i.oy = or i32 %i.ox, %.sroa.125.sroa.0.0.insert.ext329.11.i ; 2 uses
  %.sroa.125.sroa.0.0.insert.ext329.12858.i = shl nuw nsw i32 %i.oy, 1
  br label %.preheader602.14.thread.i

.preheader602.13.i:                               ; preds = %.preheader602.12.i
  %.sroa.125.sroa.0.0.insert.ext329.12.i = shl nuw nsw i32 %.sroa.125.sroa.0.8.11.i, 2 ; 3 uses
  %.not24.i197.13.i = icmp eq i32 %i.og, 2
  br i1 %.not24.i197.13.i, label %bb.ax, label %.preheader602.14.i

bb.ax:                                            ; preds = %.preheader602.13.i
  %i.oz = add i32 %.sroa.46.8.11.i, 1
  %i.pa = zext i32 %.sroa.46.8.11.i to i64
  %i.pb = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.pa
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !10
  %i.pd = zext i8 %i.pc to i32
  %i.pe = shl nuw nsw i32 %i.pd, 8
  %i.pf = zext i32 %i.oz to i64
  %i.pg = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.pf
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !10
  %i.pi = zext i8 %i.ph to i32
  %i.pj = or disjoint i32 %i.pe, %i.pi
  %i.pk = or i32 %i.pj, %.sroa.125.sroa.0.0.insert.ext329.12.i
  br label %.preheader602.14.thread.i

.preheader602.14.thread.i:                        ; preds = %bb.ax, %.preheader602.13.thread.i
  %.sroa.125.sroa.0.8.12860.ph.i = phi i32 [ %i.oy, %.preheader602.13.thread.i ], [ %.sroa.125.sroa.0.0.insert.ext329.11.i, %bb.ax ]
  %.sroa.125.sroa.0.8.13.ph.i = phi i32 [ %.sroa.125.sroa.0.0.insert.ext329.12858.i, %.preheader602.13.thread.i ], [ %i.pk, %bb.ax ] ; 2 uses
  %.ph861.i = phi i32 [ 14, %.preheader602.13.thread.i ], [ 15, %bb.ax ]
  %.sroa.46.8.13.ph.i = add i32 %.sroa.46.8.11.i, 2
  %.sroa.125.sroa.0.0.insert.ext329.13865.i = shl nuw nsw i32 %.sroa.125.sroa.0.8.13.ph.i, 1
  br label %getbits.exit200.loopexit.i

.preheader602.14.i:                               ; preds = %.preheader602.13.i
  %.sroa.125.sroa.0.0.insert.ext329.13.i = shl nuw nsw i32 %.sroa.125.sroa.0.8.11.i, 3 ; 2 uses
  %i.pl = add i32 %i.og, -3                       ; 2 uses
  %.not24.i197.14.i = icmp eq i32 %i.pl, 0
  br i1 %.not24.i197.14.i, label %bb.ay, label %getbits.exit200.loopexit.i

bb.ay:                                            ; preds = %.preheader602.14.i
  %i.pm = add i32 %.sroa.46.8.11.i, 1
  %i.pn = zext i32 %.sroa.46.8.11.i to i64
  %i.po = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.pn
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !10
  %i.pq = zext i8 %i.pp to i32
  %i.pr = shl nuw nsw i32 %i.pq, 8
  %i.ps = add i32 %.sroa.46.8.11.i, 2
  %i.pt = zext i32 %i.pm to i64
  %i.pu = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.pt
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !10
  %i.pw = zext i8 %i.pv to i32
  %i.px = or disjoint i32 %i.pr, %i.pw
  %i.py = or i32 %i.px, %.sroa.125.sroa.0.0.insert.ext329.13.i
  br label %getbits.exit200.loopexit.i

getbits.exit200.loopexit.i:                       ; preds = %bb.ay, %.preheader602.14.i, %.preheader602.14.thread.i
  %.pn1040.in.i = phi i32 [ %.sroa.125.sroa.0.0.insert.ext329.11.i, %bb.ay ], [ %.sroa.125.sroa.0.0.insert.ext329.11.i, %.preheader602.14.i ], [ %.sroa.125.sroa.0.8.12860.ph.i, %.preheader602.14.thread.i ]
  %.sroa.125.sroa.0.8.13867.i = phi i32 [ %.sroa.125.sroa.0.0.insert.ext329.12.i, %bb.ay ], [ %.sroa.125.sroa.0.0.insert.ext329.12.i, %.preheader602.14.i ], [ %.sroa.125.sroa.0.8.13.ph.i, %.preheader602.14.thread.i ]
  %.sroa.46.8.14.i = phi i32 [ %i.ps, %bb.ay ], [ %.sroa.46.8.11.i, %.preheader602.14.i ], [ %.sroa.46.8.13.ph.i, %.preheader602.14.thread.i ] ; 2 uses
  %.sroa.125.sroa.0.8.14.i = phi i32 [ %i.py, %bb.ay ], [ %.sroa.125.sroa.0.0.insert.ext329.13.i, %.preheader602.14.i ], [ %.sroa.125.sroa.0.0.insert.ext329.13865.i, %.preheader602.14.thread.i ]
  %i.pz = phi i32 [ 16, %bb.ay ], [ %i.pl, %.preheader602.14.i ], [ %.ph861.i, %.preheader602.14.thread.i ]
  %.pn1040.i = and i32 %.pn1040.in.i, 32768
  %i.qa = or disjoint i32 %.pn1040.i, %i.om
  %i.qb = shl nuw nsw i32 %i.qa, 3
  %i.qc = shl nuw nsw i32 %.sroa.125.sroa.0.8.13867.i, 2
  %i.qd = and i32 %i.qc, 131072
  %i.qe = or disjoint i32 %i.qb, %i.qd
  %.sroa.125.sroa.0.0.insert.ext329.14.i = shl nuw nsw i32 %.sroa.125.sroa.0.8.14.i, 1 ; 2 uses
  %i.qf = and i32 %.sroa.125.sroa.0.0.insert.ext329.14.i, 65536
  %i.qg = or disjoint i32 %i.qf, %i.qe
  %.sroa.125.sroa.0.0.extract.trunc332.14.i = trunc i32 %.sroa.125.sroa.0.0.insert.ext329.14.i to i16
  %.sroa.125.sroa.44.0.extract.shift361.14.i = lshr exact i32 %i.qg, 16
  %i.qh = add i32 %i.pz, -1
  %.pre.i = sub i32 %i.ew, %.sroa.46.8.14.i
  %i.qi = icmp ult i32 %.pre.i, 2
  br label %getbits.exit200.i

getbits.exit200.i:                                ; preds = %getbits.exit200.loopexit.i, %bb.ap
  %.pre-phi.i = phi i1 [ %i.qi, %getbits.exit200.loopexit.i ], [ true, %bb.ap ]
  %.sroa.46.9.i = phi i32 [ %.sroa.46.8.14.i, %getbits.exit200.loopexit.i ], [ %.sroa.46.5.i, %bb.ap ] ; 7 uses
  %.sroa.108.5.i = phi i32 [ %i.qh, %getbits.exit200.loopexit.i ], [ %i.gu, %bb.ap ] ; 3 uses
  %.sroa.125.sroa.0.9.i = phi i16 [ %.sroa.125.sroa.0.0.extract.trunc332.14.i, %getbits.exit200.loopexit.i ], [ %.sroa.125.sroa.0.0.extract.trunc.i, %bb.ap ] ; 4 uses
  %.021.i199.i = phi i32 [ %.sroa.125.sroa.44.0.extract.shift361.14.i, %getbits.exit200.loopexit.i ], [ 0, %bb.ap ] ; 8 uses
  %i.qj = icmp ult i32 %.sroa.108.5.i, 2
  %or.cond570.i = select i1 %i.qj, i1 %.pre-phi.i, i1 false
  br i1 %or.cond570.i, label %.thread525.sink.split.i, label %.preheader601.preheader.i

.preheader601.preheader.i:                        ; preds = %getbits.exit200.i
  %.not24.i202.i = icmp eq i32 %.sroa.108.5.i, 0
  br i1 %.not24.i202.i, label %.preheader601.1.thread.i, label %.preheader601.1.i

.preheader601.1.thread.i:                         ; preds = %.preheader601.preheader.i
  %i.qk = add i32 %.sroa.46.9.i, 1
  %i.ql = zext i32 %.sroa.46.9.i to i64
  %i.qm = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ql
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !10
  %i.qo = zext i8 %i.qn to i16
  %i.qp = shl nuw i16 %i.qo, 8
  %i.qq = add i32 %.sroa.46.9.i, 2
  %i.qr = zext i32 %i.qk to i64
  %i.qs = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.qr
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !10
  %i.qu = zext i8 %i.qt to i16
  %i.qv = or disjoint i16 %i.qp, %i.qu
  %i.qw = or i16 %i.qv, %.sroa.125.sroa.0.9.i     ; 2 uses
  %.sroa.125.sroa.0.0.extract.trunc336870.i = shl i16 %i.qw, 1
  br label %getbits.exit205.i

.preheader601.1.i:                                ; preds = %.preheader601.preheader.i
  %.sroa.125.sroa.0.0.extract.trunc336.i = shl i16 %.sroa.125.sroa.0.9.i, 1 ; 2 uses
  %i.qx = add i32 %.sroa.108.5.i, -1              ; 2 uses
  %.not24.i202.1.i = icmp eq i32 %i.qx, 0
  br i1 %.not24.i202.1.i, label %bb.az, label %getbits.exit205.i

bb.az:                                            ; preds = %.preheader601.1.i
  %i.qy = add i32 %.sroa.46.9.i, 1
  %i.qz = zext i32 %.sroa.46.9.i to i64
  %i.ra = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.qz
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !10
  %i.rc = zext i8 %i.rb to i16
  %i.rd = shl nuw i16 %i.rc, 8
  %i.re = add i32 %.sroa.46.9.i, 2
  %i.rf = zext i32 %i.qy to i64
  %i.rg = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.rf
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !10
  %i.ri = zext i8 %i.rh to i16
  %i.rj = or disjoint i16 %i.rd, %i.ri
  %i.rk = or i16 %i.rj, %.sroa.125.sroa.0.0.extract.trunc336.i
  br label %getbits.exit205.i

getbits.exit205.i:                                ; preds = %bb.az, %.preheader601.1.i, %.preheader601.1.thread.i
  %.sroa.125.sroa.44.0.extract.shift367873.in.in.i = phi i16 [ %.sroa.125.sroa.0.9.i, %bb.az ], [ %.sroa.125.sroa.0.9.i, %.preheader601.1.i ], [ %i.qw, %.preheader601.1.thread.i ]
  %.sroa.46.11.1.i = phi i32 [ %i.re, %bb.az ], [ %.sroa.46.9.i, %.preheader601.1.i ], [ %i.qq, %.preheader601.1.thread.i ] ; 9 uses
  %.sroa.125.sroa.0.11.1.i = phi i16 [ %i.rk, %bb.az ], [ %.sroa.125.sroa.0.0.extract.trunc336.i, %.preheader601.1.i ], [ %.sroa.125.sroa.0.0.extract.trunc336870.i, %.preheader601.1.thread.i ]
  %i.rl = phi i32 [ 16, %bb.az ], [ %i.qx, %.preheader601.1.i ], [ 15, %.preheader601.1.thread.i ] ; 3 uses
  %.sroa.125.sroa.44.0.extract.shift367873.in.i = lshr i16 %.sroa.125.sroa.44.0.extract.shift367873.in.in.i, 15
  %.sroa.125.sroa.44.0.extract.shift367873.i = zext nneg i16 %.sroa.125.sroa.44.0.extract.shift367873.in.i to i32
  %.sroa.125.sroa.0.0.insert.ext333.1.i = zext i16 %.sroa.125.sroa.0.11.1.i to i32 ; 2 uses
  %i.rm = shl nuw nsw i32 %.sroa.125.sroa.44.0.extract.shift367873.i, 17
  %i.rn = shl nuw nsw i32 %.sroa.125.sroa.0.0.insert.ext333.1.i, 1 ; 5 uses
  %i.ro = or disjoint i32 %i.rn, %i.rm
  %.sroa.125.sroa.0.0.extract.trunc336.1.i = trunc i32 %i.rn to i16
  %.sroa.125.sroa.44.0.extract.shift367.1.i = lshr i32 %i.ro, 16 ; 2 uses
  %i.rp = add i32 %i.rl, -1                       ; 2 uses
  %i.rq = icmp eq i32 %.sroa.125.sroa.44.0.extract.shift367.1.i, 3
  br i1 %i.rq, label %bb.ba, label %.loopexit597.i

bb.ba:                                            ; preds = %getbits.exit205.i
  %i.rr = icmp ult i32 %i.rl, 4
  %i.rs = sub i32 %i.ew, %.sroa.46.11.1.i
  %i.rt = icmp ult i32 %i.rs, 2
  %or.cond572.i = select i1 %i.rr, i1 %i.rt, i1 false
  br i1 %or.cond572.i, label %.thread525.sink.split.i, label %.preheader600.preheader.i

.preheader600.preheader.i:                        ; preds = %bb.ba
  %.not24.i207.i = icmp eq i32 %i.rp, 0
  br i1 %.not24.i207.i, label %.preheader600.1.thread.i, label %.preheader600.1.i

.preheader600.1.thread.i:                         ; preds = %.preheader600.preheader.i
  %i.ru = add i32 %.sroa.46.11.1.i, 1
  %i.rv = zext i32 %.sroa.46.11.1.i to i64
  %i.rw = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.rv
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !10
  %i.ry = zext i8 %i.rx to i32
  %i.rz = shl nuw nsw i32 %i.ry, 8
  %i.sa = add i32 %.sroa.46.11.1.i, 2
  %i.sb = zext i32 %i.ru to i64
  %i.sc = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.sb
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !10
  %i.se = zext i8 %i.sd to i32
  %i.sf = or disjoint i32 %i.rz, %i.se
  %i.sg = or i32 %i.sf, %i.rn                     ; 2 uses
  %.sroa.125.sroa.0.0.insert.ext337876.i = shl nuw nsw i32 %i.sg, 1
  br label %.preheader600.2.i

.preheader600.1.i:                                ; preds = %.preheader600.preheader.i
  %.sroa.125.sroa.0.0.insert.ext337.i = shl nuw nsw i32 %.sroa.125.sroa.0.0.insert.ext333.1.i, 2 ; 2 uses
  %i.sh = add i32 %i.rl, -2                       ; 2 uses
  %.not24.i207.1.i = icmp eq i32 %i.sh, 0
  br i1 %.not24.i207.1.i, label %bb.bb, label %.preheader600.2.i

bb.bb:                                            ; preds = %.preheader600.1.i
  %i.si = add i32 %.sroa.46.11.1.i, 1
  %i.sj = zext i32 %.sroa.46.11.1.i to i64
  %i.sk = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.sj
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !10
  %3 = zext i8 %i.sl to i32
  %4 = shl nuw nsw i32 %3, 8
  %i.sm = add i32 %.sroa.46.11.1.i, 2
  %i.sn = zext i32 %i.si to i64
  %i.so = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.sn
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !10
  %5 = zext i8 %i.sp to i32
  %6 = or disjoint i32 %4, %5
  %7 = or i32 %6, %.sroa.125.sroa.0.0.insert.ext337.i
  br label %.preheader600.2.i

.preheader600.2.i:                                ; preds = %bb.bb, %.preheader600.1.i, %.preheader600.1.thread.i
  %.sroa.125.sroa.0.14878.i = phi i32 [ %i.rn, %bb.bb ], [ %i.rn, %.preheader600.1.i ], [ %i.sg, %.preheader600.1.thread.i ]
  %.sroa.46.14.1.i = phi i32 [ %i.sm, %bb.bb ], [ %.sroa.46.11.1.i, %.preheader600.1.i ], [ %i.sa, %.preheader600.1.thread.i ] ; 4 uses
  %.sroa.125.sroa.0.14.1.i = phi i32 [ %7, %bb.bb ], [ %.sroa.125.sroa.0.0.insert.ext337.i, %.preheader600.1.i ], [ %.sroa.125.sroa.0.0.insert.ext337876.i, %.preheader600.1.thread.i ]
  %i.sq = phi i32 [ 16, %bb.bb ], [ %i.sh, %.preheader600.1.i ], [ 15, %.preheader600.1.thread.i ]
  %i.sr = shl nuw nsw i32 %.sroa.125.sroa.0.14878.i, 2
  %i.ss = and i32 %i.sr, 131072
  %.sroa.125.sroa.0.0.insert.ext337.1.i.a = shl nuw nsw i32 %.sroa.125.sroa.0.14.1.i, 1 ; 3 uses
  %8 = and i32 %.sroa.125.sroa.0.0.insert.ext337.1.i.a, 65536
  %i.st = or disjoint i32 %8, %i.ss
  %i.su = add i32 %i.sq, -1                       ; 2 uses
  %.not24.i207.2.i = icmp eq i32 %i.su, 0
  br i1 %.not24.i207.2.i, label %bb.bc, label %getbits.exit210.i

bb.bc:                                            ; preds = %.preheader600.2.i
  %i.sv = add i32 %.sroa.46.14.1.i, 1
  %i.sw = zext i32 %.sroa.46.14.1.i to i64
  %i.sx = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.sw
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !10
  %i.sz = zext i8 %i.sy to i32
  %i.ta = shl nuw nsw i32 %i.sz, 8
  %i.tb = add i32 %.sroa.46.14.1.i, 2
  %i.tc = zext i32 %i.sv to i64
  %i.td = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.tc
  %i.te = load i8, ptr %i.td, align 1, !tbaa !10
  %i.tf = zext i8 %i.te to i32
  %i.tg = or disjoint i32 %i.ta, %i.tf
  %i.th = or i32 %i.tg, %.sroa.125.sroa.0.0.insert.ext337.1.i.a
  br label %getbits.exit210.i

getbits.exit210.i:                                ; preds = %bb.bc, %.preheader600.2.i
  %.sroa.46.14.2.i = phi i32 [ %i.tb, %bb.bc ], [ %.sroa.46.14.1.i, %.preheader600.2.i ] ; 13 uses
  %.sroa.125.sroa.0.14.2.i = phi i32 [ %i.th, %bb.bc ], [ %.sroa.125.sroa.0.0.insert.ext337.1.i.a, %.preheader600.2.i ] ; 4 uses
  %i.ti = phi i32 [ 16, %bb.bc ], [ %i.su, %.preheader600.2.i ] ; 3 uses
  %i.tj = shl nuw nsw i32 %i.st, 1
  %.sroa.125.sroa.0.0.insert.ext337.2.i = shl nuw nsw i32 %.sroa.125.sroa.0.14.2.i, 1 ; 4 uses
  %i.tk = and i32 %.sroa.125.sroa.0.0.insert.ext337.2.i, 65536
  %i.tl = or disjoint i32 %i.tk, %i.tj            ; 2 uses
  %.sroa.125.sroa.0.0.extract.trunc340.2.i = trunc i32 %.sroa.125.sroa.0.0.insert.ext337.2.i to i16
  %.sroa.125.sroa.44.0.extract.shift373.2.i = lshr exact i32 %i.tl, 16
  %i.tm = add i32 %i.ti, -1                       ; 2 uses
  %i.tn = icmp eq i32 %i.tl, 458752
  br i1 %i.tn, label %bb.bd, label %.loopexit597.i

bb.bd:                                            ; preds = %getbits.exit210.i
  %i.to = icmp ult i32 %i.ti, 6
  %i.tp = sub i32 %i.ew, %.sroa.46.14.2.i
  %i.tq = icmp ult i32 %i.tp, 2
  %or.cond574.i = select i1 %i.to, i1 %i.tq, i1 false
  br i1 %or.cond574.i, label %.thread525.sink.split.i, label %.preheader599.preheader.i

.preheader599.preheader.i:                        ; preds = %bb.bd
  %.not24.i212.i = icmp eq i32 %i.tm, 0
  br i1 %.not24.i212.i, label %.preheader599.1.thread.i, label %.preheader599.1.i

.preheader599.1.thread.i:                         ; preds = %.preheader599.preheader.i
  %i.tr = add i32 %.sroa.46.14.2.i, 1
  %i.ts = zext i32 %.sroa.46.14.2.i to i64
  %i.tt = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ts
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !10
  %i.tv = zext i8 %i.tu to i32
  %i.tw = shl nuw nsw i32 %i.tv, 8
  %i.tx = zext i32 %i.tr to i64
  %i.ty = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.tx
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !10
  %i.ua = zext i8 %i.tz to i32
  %i.ub = or disjoint i32 %i.tw, %i.ua
  %i.uc = or i32 %i.ub, %.sroa.125.sroa.0.0.insert.ext337.2.i ; 2 uses
  %.sroa.125.sroa.0.0.insert.ext341881.i = shl nuw nsw i32 %i.uc, 1
  br label %.preheader599.3.i.thread

.preheader599.1.i:                                ; preds = %.preheader599.preheader.i
  %.sroa.125.sroa.0.0.insert.ext341.i = shl nuw nsw i32 %.sroa.125.sroa.0.14.2.i, 2 ; 2 uses
  %i.ud = add i32 %i.ti, -2                       ; 4 uses
  %.not24.i212.1.i = icmp eq i32 %i.ud, 0
  br i1 %.not24.i212.1.i, label %bb.be, label %.preheader599.2.i

bb.be:                                            ; preds = %.preheader599.1.i
  %i.ue = add i32 %.sroa.46.14.2.i, 1
  %i.uf = zext i32 %.sroa.46.14.2.i to i64
  %i.ug = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.uf
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !10
  %i.ui = zext i8 %i.uh to i32
  %i.uj = shl nuw nsw i32 %i.ui, 8
  %i.uk = zext i32 %i.ue to i64
  %i.ul = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.uk
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !10
  %i.un = zext i8 %i.um to i32
  %i.uo = or disjoint i32 %i.uj, %i.un
  %i.up = or i32 %i.uo, %.sroa.125.sroa.0.0.insert.ext341.i
  br label %.preheader599.3.i.thread

.preheader599.3.i.thread:                         ; preds = %.preheader599.1.thread.i, %bb.be
  %.sroa.125.sroa.0.17883.i.ph = phi i32 [ %i.uc, %.preheader599.1.thread.i ], [ %.sroa.125.sroa.0.0.insert.ext337.2.i, %bb.be ]
  %.sroa.125.sroa.0.17.1.i.ph = phi i32 [ %.sroa.125.sroa.0.0.insert.ext341881.i, %.preheader599.1.thread.i ], [ %i.up, %bb.be ] ; 3 uses
  %.ph = phi i32 [ 15, %.preheader599.1.thread.i ], [ 16, %bb.be ]
  %.sroa.46.17.1.i.ph = add i32 %.sroa.46.14.2.i, 2
  %i.uq = shl nuw nsw i32 %.sroa.125.sroa.0.17883.i.ph, 2
  %i.ur = and i32 %i.uq, 131072
  %.sroa.125.sroa.0.0.insert.ext341.1.i67 = shl nuw nsw i32 %.sroa.125.sroa.0.17.1.i.ph, 1 ; 2 uses
  %i.us = and i32 %.sroa.125.sroa.0.0.insert.ext341.1.i67, 65536
  %i.ut = or disjoint i32 %i.us, %i.ur
  %.sroa.125.sroa.0.0.insert.ext341.2.i76 = shl nuw nsw i32 %.sroa.125.sroa.0.17.1.i.ph, 2
  br label %.preheader599.4.i

.preheader599.2.i:                                ; preds = %.preheader599.1.i
  %i.uu = shl nuw nsw i32 %.sroa.125.sroa.0.14.2.i, 3 ; 4 uses
  %i.uv = and i32 %i.uu, 196608                   ; 2 uses
  %.not24.i212.2.i = icmp eq i32 %i.ud, 1
  br i1 %.not24.i212.2.i, label %.preheader599.3.thread.i, label %.preheader599.3.i

.preheader599.3.thread.i:                         ; preds = %.preheader599.2.i
  %i.uw = add i32 %.sroa.46.14.2.i, 1
  %i.ux = zext i32 %.sroa.46.14.2.i to i64
  %i.uy = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ux
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !10
  %i.va = zext i8 %i.uz to i32
  %i.vb = shl nuw nsw i32 %i.va, 8
  %i.vc = zext i32 %i.uw to i64
  %i.vd = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.vc
  %i.ve = load i8, ptr %i.vd, align 1, !tbaa !10
  %i.vf = zext i8 %i.ve to i32
  %i.vg = or disjoint i32 %i.vb, %i.vf
  %i.vh = or i32 %i.vg, %i.uu                     ; 2 uses
  %.sroa.125.sroa.0.0.insert.ext341.2886.i = shl nuw nsw i32 %i.vh, 1
  br label %.preheader599.4.thread.i

.preheader599.3.i:                                ; preds = %.preheader599.2.i
  %.sroa.125.sroa.0.0.insert.ext341.2.i = shl nuw nsw i32 %.sroa.125.sroa.0.14.2.i, 4 ; 2 uses
  %.not24.i212.3.i = icmp eq i32 %i.ud, 2
  br i1 %.not24.i212.3.i, label %bb.bf, label %.preheader599.4.i

bb.bf:                                            ; preds = %.preheader599.3.i
  %i.vi = add i32 %.sroa.46.14.2.i, 1
  %i.vj = zext i32 %.sroa.46.14.2.i to i64
  %i.vk = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.vj
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !10
  %i.vm = zext i8 %i.vl to i32
  %i.vn = shl nuw nsw i32 %i.vm, 8
  %i.vo = zext i32 %i.vi to i64
  %i.vp = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.vo
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !10
  %i.vr = zext i8 %i.vq to i32
  %i.vs = or disjoint i32 %i.vn, %i.vr
  %i.vt = or i32 %i.vs, %.sroa.125.sroa.0.0.insert.ext341.2.i
  br label %.preheader599.4.thread.i

.preheader599.4.thread.i:                         ; preds = %bb.bf, %.preheader599.3.thread.i
  %.sroa.125.sroa.0.17.2888.ph.i = phi i32 [ %i.vh, %.preheader599.3.thread.i ], [ %i.uu, %bb.bf ]
  %.sroa.125.sroa.0.17.3.ph.i = phi i32 [ %.sroa.125.sroa.0.0.insert.ext341.2886.i, %.preheader599.3.thread.i ], [ %i.vt, %bb.bf ] ; 2 uses
  %.ph889.i = phi i32 [ 14, %.preheader599.3.thread.i ], [ 15, %bb.bf ]
  %.sroa.46.17.3.ph.i = add i32 %.sroa.46.14.2.i, 2
  %.sroa.125.sroa.0.0.insert.ext341.3893.i = shl nuw nsw i32 %.sroa.125.sroa.0.17.3.ph.i, 1
  br label %getbits.exit215.i

.preheader599.4.i:                                ; preds = %.preheader599.3.i.thread, %.preheader599.3.i
  %.sroa.125.sroa.0.0.insert.ext341.2.i81 = phi i32 [ %.sroa.125.sroa.0.0.insert.ext341.2.i76, %.preheader599.3.i.thread ], [ %.sroa.125.sroa.0.0.insert.ext341.2.i, %.preheader599.3.i ] ; 2 uses
  %.sroa.46.17.1.i6980 = phi i32 [ %.sroa.46.17.1.i.ph, %.preheader599.3.i.thread ], [ %.sroa.46.14.2.i, %.preheader599.3.i ] ; 4 uses
  %.sroa.125.sroa.0.17.1.i7179 = phi i32 [ %.sroa.125.sroa.0.17.1.i.ph, %.preheader599.3.i.thread ], [ %.sroa.125.sroa.0.0.insert.ext341.i, %.preheader599.3.i ]
  %i.vu = phi i32 [ %.ph, %.preheader599.3.i.thread ], [ %i.ud, %.preheader599.3.i ]
  %.sroa.125.sroa.0.0.insert.ext341.1.i7278 = phi i32 [ %.sroa.125.sroa.0.0.insert.ext341.1.i67, %.preheader599.3.i.thread ], [ %i.uu, %.preheader599.3.i ] ; 2 uses
  %i.vv = phi i32 [ %i.ut, %.preheader599.3.i.thread ], [ %i.uv, %.preheader599.3.i ] ; 2 uses
  %.sroa.125.sroa.0.0.insert.ext341.3.i = shl nuw nsw i32 %.sroa.125.sroa.0.17.1.i7179, 3 ; 2 uses
  %i.vw = add i32 %i.vu, -3                       ; 2 uses
  %.not24.i212.4.i = icmp eq i32 %i.vw, 0
  br i1 %.not24.i212.4.i, label %bb.bg, label %getbits.exit215.i

bb.bg:                                            ; preds = %.preheader599.4.i
  %i.vx = add i32 %.sroa.46.17.1.i6980, 1
  %i.vy = zext i32 %.sroa.46.17.1.i6980 to i64
  %i.vz = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.vy
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !10
  %i.wb = zext i8 %i.wa to i32
  %i.wc = shl nuw nsw i32 %i.wb, 8
  %i.wd = add i32 %.sroa.46.17.1.i6980, 2
  %i.we = zext i32 %i.vx to i64
  %i.wf = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.we
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !10
  %i.wh = zext i8 %i.wg to i32
  %i.wi = or disjoint i32 %i.wc, %i.wh
  %i.wj = or i32 %i.wi, %.sroa.125.sroa.0.0.insert.ext341.3.i
  br label %getbits.exit215.i

getbits.exit215.i:                                ; preds = %bb.bg, %.preheader599.4.i, %.preheader599.4.thread.i
  %i.wk = phi i32 [ %i.vv, %bb.bg ], [ %i.vv, %.preheader599.4.i ], [ %i.uv, %.preheader599.4.thread.i ]
  %.pn1041.in.i = phi i32 [ %.sroa.125.sroa.0.0.insert.ext341.1.i7278, %bb.bg ], [ %.sroa.125.sroa.0.0.insert.ext341.1.i7278, %.preheader599.4.i ], [ %.sroa.125.sroa.0.17.2888.ph.i, %.preheader599.4.thread.i ]
  %.sroa.125.sroa.0.17.3895.i = phi i32 [ %.sroa.125.sroa.0.0.insert.ext341.2.i81, %bb.bg ], [ %.sroa.125.sroa.0.0.insert.ext341.2.i81, %.preheader599.4.i ], [ %.sroa.125.sroa.0.17.3.ph.i, %.preheader599.4.thread.i ]
  %.sroa.46.17.4.i = phi i32 [ %i.wd, %bb.bg ], [ %.sroa.46.17.1.i6980, %.preheader599.4.i ], [ %.sroa.46.17.3.ph.i, %.preheader599.4.thread.i ] ; 13 uses
  %.sroa.125.sroa.0.17.4.i = phi i32 [ %i.wj, %bb.bg ], [ %.sroa.125.sroa.0.0.insert.ext341.3.i, %.preheader599.4.i ], [ %.sroa.125.sroa.0.0.insert.ext341.3893.i, %.preheader599.4.thread.i ] ; 4 uses
  %i.wl = phi i32 [ 16, %bb.bg ], [ %i.vw, %.preheader599.4.i ], [ %.ph889.i, %.preheader599.4.thread.i ] ; 3 uses
  %.pn1041.i = and i32 %.pn1041.in.i, 32768
  %i.wm = add nuw nsw i32 %.pn1041.i, %i.wk
  %i.wn = shl nuw nsw i32 %i.wm, 3
  %i.wo = shl nuw nsw i32 %.sroa.125.sroa.0.17.3895.i, 2
  %i.wp = and i32 %i.wo, 131072
  %i.wq = add nuw nsw i32 %i.wn, %i.wp
  %.sroa.125.sroa.0.0.insert.ext341.4.i = shl nuw nsw i32 %.sroa.125.sroa.0.17.4.i, 1 ; 4 uses
  %i.wr = and i32 %.sroa.125.sroa.0.0.insert.ext341.4.i, 65536
  %i.ws = add nuw nsw i32 %i.wr, %i.wq            ; 2 uses
  %.sroa.125.sroa.0.0.extract.trunc344.4.i = trunc i32 %.sroa.125.sroa.0.0.insert.ext341.4.i to i16
  %.sroa.125.sroa.44.0.extract.shift379.4.i = lshr exact i32 %i.ws, 16
  %i.wt = add i32 %i.wl, -1                       ; 2 uses
  %i.wu = icmp eq i32 %i.ws, 2031616
  br i1 %i.wu, label %bb.bh, label %.loopexit597.i

bb.bh:                                            ; preds = %getbits.exit215.i
  %i.wv = icmp ult i32 %i.wl, 9
  %i.ww = sub i32 %i.ew, %.sroa.46.17.4.i
  %i.wx = icmp ult i32 %i.ww, 2
  %or.cond576.i = select i1 %i.wv, i1 %i.wx, i1 false
  br i1 %or.cond576.i, label %.thread525.sink.split.i, label %.preheader598.preheader.i

.preheader598.preheader.i:                        ; preds = %bb.bh
  %.not24.i217.i = icmp eq i32 %i.wt, 0
  br i1 %.not24.i217.i, label %.preheader598.1.thread.i, label %.preheader598.1.i

.preheader598.1.thread.i:                         ; preds = %.preheader598.preheader.i
  %i.wy = add i32 %.sroa.46.17.4.i, 1
  %i.wz = zext i32 %.sroa.46.17.4.i to i64
  %i.xa = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.wz
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !10
  %i.xc = zext i8 %i.xb to i32
  %i.xd = shl nuw nsw i32 %i.xc, 8
  %i.xe = zext i32 %i.wy to i64
  %i.xf = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.xe
  %i.xg = load i8, ptr %i.xf, align 1, !tbaa !10
  %i.xh = zext i8 %i.xg to i32
  %i.xi = or disjoint i32 %i.xd, %i.xh
  %i.xj = or i32 %i.xi, %.sroa.125.sroa.0.0.insert.ext341.4.i ; 2 uses
  %.sroa.125.sroa.0.0.insert.ext345898.i = shl nuw nsw i32 %i.xj, 1
  br label %.preheader598.3.i.thread

.preheader598.1.i:                                ; preds = %.preheader598.preheader.i
  %.sroa.125.sroa.0.0.insert.ext345.i = shl nuw nsw i32 %.sroa.125.sroa.0.17.4.i, 2 ; 2 uses
  %i.xk = add i32 %i.wl, -2                       ; 4 uses
  %.not24.i217.1.i = icmp eq i32 %i.xk, 0
  br i1 %.not24.i217.1.i, label %bb.bi, label %.preheader598.2.i

bb.bi:                                            ; preds = %.preheader598.1.i
  %i.xl = add i32 %.sroa.46.17.4.i, 1
  %i.xm = zext i32 %.sroa.46.17.4.i to i64
  %i.xn = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.xm
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !10
  %i.xp = zext i8 %i.xo to i32
  %i.xq = shl nuw nsw i32 %i.xp, 8
  %i.xr = zext i32 %i.xl to i64
  %i.xs = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.xr
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !10
  %i.xu = zext i8 %i.xt to i32
  %i.xv = or disjoint i32 %i.xq, %i.xu
  %i.xw = or i32 %i.xv, %.sroa.125.sroa.0.0.insert.ext345.i
  br label %.preheader598.3.i.thread

.preheader598.3.i.thread:                         ; preds = %.preheader598.1.thread.i, %bb.bi
  %.sroa.125.sroa.0.20900.i.ph = phi i32 [ %i.xj, %.preheader598.1.thread.i ], [ %.sroa.125.sroa.0.0.insert.ext341.4.i, %bb.bi ]
  %.sroa.125.sroa.0.20.1.i.ph = phi i32 [ %.sroa.125.sroa.0.0.insert.ext345898.i, %.preheader598.1.thread.i ], [ %i.xw, %bb.bi ] ; 3 uses
  %.ph82 = phi i32 [ 15, %.preheader598.1.thread.i ], [ 16, %bb.bi ]
  %.sroa.46.20.1.i.ph = add i32 %.sroa.46.17.4.i, 2
  %i.xx = shl nuw nsw i32 %.sroa.125.sroa.0.20900.i.ph, 2
  %i.xy = and i32 %i.xx, 131072
  %.sroa.125.sroa.0.0.insert.ext345.1.i86 = shl nuw nsw i32 %.sroa.125.sroa.0.20.1.i.ph, 1 ; 2 uses
  %i.xz = and i32 %.sroa.125.sroa.0.0.insert.ext345.1.i86, 65536
  %i.ya = or disjoint i32 %i.xz, %i.xy
  %.sroa.125.sroa.0.0.insert.ext345.2.i95 = shl nuw nsw i32 %.sroa.125.sroa.0.20.1.i.ph, 2
  br label %.preheader598.4.i

.preheader598.2.i:                                ; preds = %.preheader598.1.i
  %i.yb = shl nuw nsw i32 %.sroa.125.sroa.0.17.4.i, 3 ; 4 uses
  %i.yc = and i32 %i.yb, 196608                   ; 2 uses
  %.not24.i217.2.i = icmp eq i32 %i.xk, 1
  br i1 %.not24.i217.2.i, label %.preheader598.3.thread.i, label %.preheader598.3.i

.preheader598.3.thread.i:                         ; preds = %.preheader598.2.i
  %i.yd = add i32 %.sroa.46.17.4.i, 1
  %i.ye = zext i32 %.sroa.46.17.4.i to i64
  %i.yf = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ye
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !10
  %i.yh = zext i8 %i.yg to i32
  %i.yi = shl nuw nsw i32 %i.yh, 8
  %i.yj = zext i32 %i.yd to i64
  %i.yk = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.yj
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !10
  %i.ym = zext i8 %i.yl to i32
  %i.yn = or disjoint i32 %i.yi, %i.ym
  %i.yo = or i32 %i.yn, %i.yb                     ; 2 uses
  %.sroa.125.sroa.0.0.insert.ext345.2903.i = shl nuw nsw i32 %i.yo, 1
  br label %.preheader598.4.thread.i

.preheader598.3.i:                                ; preds = %.preheader598.2.i
  %.sroa.125.sroa.0.0.insert.ext345.2.i = shl nuw nsw i32 %.sroa.125.sroa.0.17.4.i, 4 ; 2 uses
  %.not24.i217.3.i = icmp eq i32 %i.xk, 2
  br i1 %.not24.i217.3.i, label %bb.bj, label %.preheader598.4.i

bb.bj:                                            ; preds = %.preheader598.3.i
  %i.yp = add i32 %.sroa.46.17.4.i, 1
  %i.yq = zext i32 %.sroa.46.17.4.i to i64
  %i.yr = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.yq
  %i.ys = load i8, ptr %i.yr, align 1, !tbaa !10
  %i.yt = zext i8 %i.ys to i32
  %i.yu = shl nuw nsw i32 %i.yt, 8
  %i.yv = zext i32 %i.yp to i64
  %i.yw = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.yv
  %i.yx = load i8, ptr %i.yw, align 1, !tbaa !10
  %i.yy = zext i8 %i.yx to i32
  %i.yz = or disjoint i32 %i.yu, %i.yy
  %i.za = or i32 %i.yz, %.sroa.125.sroa.0.0.insert.ext345.2.i
  br label %.preheader598.4.thread.i

.preheader598.4.thread.i:                         ; preds = %bb.bj, %.preheader598.3.thread.i
  %.sroa.125.sroa.0.20.2905.ph.i = phi i32 [ %i.yo, %.preheader598.3.thread.i ], [ %i.yb, %bb.bj ]
  %.sroa.125.sroa.0.20.3.ph.i = phi i32 [ %.sroa.125.sroa.0.0.insert.ext345.2903.i, %.preheader598.3.thread.i ], [ %i.za, %bb.bj ] ; 2 uses
  %.ph906.i = phi i32 [ 14, %.preheader598.3.thread.i ], [ 15, %bb.bj ]
  %.sroa.46.20.3.ph.i = add i32 %.sroa.46.17.4.i, 2
  %.sroa.125.sroa.0.0.insert.ext345.3910.i = shl nuw nsw i32 %.sroa.125.sroa.0.20.3.ph.i, 1
  br label %.preheader598.5.i

.preheader598.4.i:                                ; preds = %.preheader598.3.i.thread, %.preheader598.3.i
  %.sroa.125.sroa.0.0.insert.ext345.2.i100 = phi i32 [ %.sroa.125.sroa.0.0.insert.ext345.2.i95, %.preheader598.3.i.thread ], [ %.sroa.125.sroa.0.0.insert.ext345.2.i, %.preheader598.3.i ] ; 2 uses
  %.sroa.46.20.1.i8899 = phi i32 [ %.sroa.46.20.1.i.ph, %.preheader598.3.i.thread ], [ %.sroa.46.17.4.i, %.preheader598.3.i ] ; 4 uses
  %.sroa.125.sroa.0.20.1.i9098 = phi i32 [ %.sroa.125.sroa.0.20.1.i.ph, %.preheader598.3.i.thread ], [ %.sroa.125.sroa.0.0.insert.ext345.i, %.preheader598.3.i ]
  %i.zb = phi i32 [ %.ph82, %.preheader598.3.i.thread ], [ %i.xk, %.preheader598.3.i ]
  %.sroa.125.sroa.0.0.insert.ext345.1.i9197 = phi i32 [ %.sroa.125.sroa.0.0.insert.ext345.1.i86, %.preheader598.3.i.thread ], [ %i.yb, %.preheader598.3.i ] ; 2 uses
  %i.zc = phi i32 [ %i.ya, %.preheader598.3.i.thread ], [ %i.yc, %.preheader598.3.i ] ; 2 uses
  %.sroa.125.sroa.0.0.insert.ext345.3.i = shl nuw nsw i32 %.sroa.125.sroa.0.20.1.i9098, 3 ; 2 uses
  %i.zd = add i32 %i.zb, -3                       ; 2 uses
  %.not24.i217.4.i = icmp eq i32 %i.zd, 0
  br i1 %.not24.i217.4.i, label %bb.bk, label %.preheader598.5.i

bb.bk:                                            ; preds = %.preheader598.4.i
  %i.ze = add i32 %.sroa.46.20.1.i8899, 1
  %i.zf = zext i32 %.sroa.46.20.1.i8899 to i64
  %i.zg = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.zf
  %i.zh = load i8, ptr %i.zg, align 1, !tbaa !10
  %i.zi = zext i8 %i.zh to i32
  %i.zj = shl nuw nsw i32 %i.zi, 8
  %i.zk = add i32 %.sroa.46.20.1.i8899, 2
  %i.zl = zext i32 %i.ze to i64
  %i.zm = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.zl
  %i.zn = load i8, ptr %i.zm, align 1, !tbaa !10
  %i.zo = zext i8 %i.zn to i32
  %i.zp = or disjoint i32 %i.zj, %i.zo
  %i.zq = or i32 %i.zp, %.sroa.125.sroa.0.0.insert.ext345.3.i
  br label %.preheader598.5.i

.preheader598.5.i:                                ; preds = %bb.bk, %.preheader598.4.i, %.preheader598.4.thread.i
  %i.zr = phi i32 [ %i.zc, %bb.bk ], [ %i.zc, %.preheader598.4.i ], [ %i.yc, %.preheader598.4.thread.i ]
  %.pn1042.in.i = phi i32 [ %.sroa.125.sroa.0.0.insert.ext345.1.i9197, %bb.bk ], [ %.sroa.125.sroa.0.0.insert.ext345.1.i9197, %.preheader598.4.i ], [ %.sroa.125.sroa.0.20.2905.ph.i, %.preheader598.4.thread.i ]
  %.sroa.125.sroa.0.20.3912.i = phi i32 [ %.sroa.125.sroa.0.0.insert.ext345.2.i100, %bb.bk ], [ %.sroa.125.sroa.0.0.insert.ext345.2.i100, %.preheader598.4.i ], [ %.sroa.125.sroa.0.20.3.ph.i, %.preheader598.4.thread.i ]
  %.sroa.46.20.4.i = phi i32 [ %i.zk, %bb.bk ], [ %.sroa.46.20.1.i8899, %.preheader598.4.i ], [ %.sroa.46.20.3.ph.i, %.preheader598.4.thread.i ] ; 7 uses
  %.sroa.125.sroa.0.20.4.i = phi i32 [ %i.zq, %bb.bk ], [ %.sroa.125.sroa.0.0.insert.ext345.3.i, %.preheader598.4.i ], [ %.sroa.125.sroa.0.0.insert.ext345.3910.i, %.preheader598.4.thread.i ] ; 2 uses
  %i.zs = phi i32 [ 16, %bb.bk ], [ %i.zd, %.preheader598.4.i ], [ %.ph906.i, %.preheader598.4.thread.i ] ; 2 uses
  %.pn1042.i = and i32 %.pn1042.in.i, 32768
  %i.zt = add nuw nsw i32 %.pn1042.i, %i.zr
  %i.zu = shl nuw nsw i32 %i.zt, 3
  %i.zv = shl nuw nsw i32 %.sroa.125.sroa.0.20.3912.i, 2
  %i.zw = and i32 %i.zv, 131072
  %i.zx = add nuw nsw i32 %i.zu, %i.zw
  %.sroa.125.sroa.0.0.insert.ext345.4.i = shl nuw nsw i32 %.sroa.125.sroa.0.20.4.i, 1 ; 4 uses
  %i.zy = and i32 %.sroa.125.sroa.0.0.insert.ext345.4.i, 65536
  %i.zz = add nuw nsw i32 %i.zy, %i.zx
  %.not24.i217.5.i = icmp eq i32 %i.zs, 1
  br i1 %.not24.i217.5.i, label %.preheader598.6.thread.i, label %.preheader598.6.i

.preheader598.6.thread.i:                         ; preds = %.preheader598.5.i
  %i.aaa = add i32 %.sroa.46.20.4.i, 1
  %i.aab = zext i32 %.sroa.46.20.4.i to i64
  %i.aac = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.aab
  %i.aad = load i8, ptr %i.aac, align 1, !tbaa !10
  %i.aae = zext i8 %i.aad to i32
  %i.aaf = shl nuw nsw i32 %i.aae, 8
  %i.aag = add i32 %.sroa.46.20.4.i, 2
  %i.aah = zext i32 %i.aaa to i64
  %i.aai = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.aah
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !10
  %i.aak = zext i8 %i.aaj to i32
  %i.aal = or disjoint i32 %i.aaf, %i.aak
  %i.aam = or i32 %i.aal, %.sroa.125.sroa.0.0.insert.ext345.4.i ; 2 uses
  %.sroa.125.sroa.0.0.insert.ext345.5915.i = shl nuw nsw i32 %i.aam, 1
  br label %.preheader598.7.i

.preheader598.6.i:                                ; preds = %.preheader598.5.i
  %.sroa.125.sroa.0.0.insert.ext345.5.i = shl nuw nsw i32 %.sroa.125.sroa.0.20.4.i, 2 ; 2 uses
  %i.aan = add i32 %i.zs, -2                      ; 2 uses
  %.not24.i217.6.i = icmp eq i32 %i.aan, 0
  br i1 %.not24.i217.6.i, label %bb.bl, label %.preheader598.7.i

bb.bl:                                            ; preds = %.preheader598.6.i
  %i.aao = add i32 %.sroa.46.20.4.i, 1
  %i.aap = zext i32 %.sroa.46.20.4.i to i64
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.aap
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !10
  %i.aas = zext i8 %i.aar to i32
  %i.aat = shl nuw nsw i32 %i.aas, 8
  %i.aau = add i32 %.sroa.46.20.4.i, 2
  %i.aav = zext i32 %i.aao to i64
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.aav
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !10
  %i.aay = zext i8 %i.aax to i32
  %i.aaz = or disjoint i32 %i.aat, %i.aay
  %i.aba = or i32 %i.aaz, %.sroa.125.sroa.0.0.insert.ext345.5.i
  br label %.preheader598.7.i

.preheader598.7.i:                                ; preds = %bb.bl, %.preheader598.6.i, %.preheader598.6.thread.i
  %.sroa.125.sroa.0.20.5917.i = phi i32 [ %.sroa.125.sroa.0.0.insert.ext345.4.i, %bb.bl ], [ %.sroa.125.sroa.0.0.insert.ext345.4.i, %.preheader598.6.i ], [ %i.aam, %.preheader598.6.thread.i ]
  %.sroa.46.20.6.i = phi i32 [ %i.aau, %bb.bl ], [ %.sroa.46.20.4.i, %.preheader598.6.i ], [ %i.aag, %.preheader598.6.thread.i ] ; 4 uses
  %.sroa.125.sroa.0.20.6.i = phi i32 [ %i.aba, %bb.bl ], [ %.sroa.125.sroa.0.0.insert.ext345.5.i, %.preheader598.6.i ], [ %.sroa.125.sroa.0.0.insert.ext345.5915.i, %.preheader598.6.thread.i ]
  %i.abb = phi i32 [ 16, %bb.bl ], [ %i.aan, %.preheader598.6.i ], [ 15, %.preheader598.6.thread.i ]
  %i.abc = and i32 %.sroa.125.sroa.0.20.5917.i, 32768
  %i.abd = or i32 %i.abc, %i.zz
  %i.abe = shl nuw nsw i32 %i.abd, 2
  %i.abf = and i32 %i.abe, 2147352576
  %.sroa.125.sroa.0.0.insert.ext345.6.i = shl nuw i32 %.sroa.125.sroa.0.20.6.i, 1 ; 3 uses
  %i.abg = and i32 %.sroa.125.sroa.0.0.insert.ext345.6.i, 65536
  %i.abh = or disjoint i32 %i.abg, %i.abf
  %i.abi = add i32 %i.abb, -1                     ; 2 uses
  %.not24.i217.7.i = icmp eq i32 %i.abi, 0
  br i1 %.not24.i217.7.i, label %bb.bm, label %getbits.exit220.i

bb.bm:                                            ; preds = %.preheader598.7.i
  %i.abj = add i32 %.sroa.46.20.6.i, 1
  %i.abk = zext i32 %.sroa.46.20.6.i to i64
  %i.abl = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.abk
  %i.abm = load i8, ptr %i.abl, align 1, !tbaa !10
  %i.abn = zext i8 %i.abm to i32
  %i.abo = shl nuw nsw i32 %i.abn, 8
  %i.abp = add i32 %.sroa.46.20.6.i, 2
  %i.abq = zext i32 %i.abj to i64
  %i.abr = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.abq
  %i.abs = load i8, ptr %i.abr, align 1, !tbaa !10
  %i.abt = zext i8 %i.abs to i32
  %i.abu = or disjoint i32 %i.abo, %i.abt
  %i.abv = or i32 %i.abu, %.sroa.125.sroa.0.0.insert.ext345.6.i
  br label %getbits.exit220.i

getbits.exit220.i:                                ; preds = %bb.bm, %.preheader598.7.i
  %.sroa.46.20.7.i = phi i32 [ %i.abp, %bb.bm ], [ %.sroa.46.20.6.i, %.preheader598.7.i ] ; 3 uses
  %.sroa.125.sroa.0.20.7.i = phi i32 [ %i.abv, %bb.bm ], [ %.sroa.125.sroa.0.0.insert.ext345.6.i, %.preheader598.7.i ]
  %i.abw = phi i32 [ 16, %bb.bm ], [ %i.abi, %.preheader598.7.i ] ; 2 uses
  %i.abx = shl nuw nsw i32 %i.abh, 1
  %.sroa.125.sroa.0.0.insert.ext345.7.i = shl i32 %.sroa.125.sroa.0.20.7.i, 1 ; 2 uses
  %i.aby = and i32 %.sroa.125.sroa.0.0.insert.ext345.7.i, 65536
  %i.abz = or disjoint i32 %i.aby, %i.abx         ; 2 uses
  %.sroa.125.sroa.0.0.extract.trunc348.7.i = trunc i32 %.sroa.125.sroa.0.0.insert.ext345.7.i to i16 ; 2 uses
  %.sroa.125.sroa.44.0.extract.shift385.7.i = lshr exact i32 %i.abz, 16
  %i.aca = add i32 %i.abw, -1                     ; 2 uses
  %i.acb = icmp eq i32 %i.abz, 16711680
  br i1 %i.acb, label %.preheader596.i, label %.loopexit597.i

.preheader596.i:                                  ; preds = %getbits.exit220.i
  %i.acc = icmp ult i32 %i.abw, 9
  %i.acd = sub i32 %i.ew, %.sroa.46.20.7.i
  %i.ace = icmp ult i32 %i.acd, 2
  %or.cond578652.i = select i1 %i.acc, i1 %i.ace, i1 false
  br i1 %or.cond578652.i, label %.thread525.sink.split.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader596.i, %bb.ca
  %.0112656.i = phi i32 [ %i.ahi, %bb.ca ], [ 296, %.preheader596.i ] ; 2 uses
  %.sroa.125.sroa.0.1655.i = phi i16 [ %.sroa.125.sroa.0.0.extract.trunc352.7.i, %bb.ca ], [ %.sroa.125.sroa.0.0.extract.trunc348.7.i, %.preheader596.i ] ; 3 uses
  %.sroa.108.1654.i = phi i32 [ %i.ahg, %bb.ca ], [ %i.aca, %.preheader596.i ] ; 3 uses
  %.sroa.46.1653.i = phi i32 [ %.sroa.46.23.7.i, %bb.ca ], [ %.sroa.46.20.7.i, %.preheader596.i ] ; 9 uses
  %.not24.i222.i = icmp eq i32 %.sroa.108.1654.i, 0
  br i1 %.not24.i222.i, label %.thread.i, label %bb.bn

.thread.i:                                        ; preds = %.preheader.i
  %i.acf = add i32 %.sroa.46.1653.i, 1
  %i.acg = zext i32 %.sroa.46.1653.i to i64
  %i.ach = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.acg
  %i.aci = load i8, ptr %i.ach, align 1, !tbaa !10
  %i.acj = zext i8 %i.aci to i16
  %i.ack = shl nuw i16 %i.acj, 8
  %i.acl = zext i32 %i.acf to i64
  %i.acm = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.acl
  %i.acn = load i8, ptr %i.acm, align 1, !tbaa !10
  %i.aco = zext i8 %i.acn to i16
  %i.acp = or disjoint i16 %i.ack, %i.aco
  %i.acq = or i16 %i.acp, %.sroa.125.sroa.0.1655.i ; 2 uses
  %.sroa.125.sroa.0.0.extract.trunc352920.i = shl i16 %i.acq, 1
  %i.acr = lshr i16 %i.acq, 15
  %.sroa.125.sroa.44.0.extract.shift391921.i = zext nneg i16 %i.acr to i32
  br label %.thread925.i

bb.bn:                                            ; preds = %.preheader.i
  %.sroa.125.sroa.0.0.extract.trunc352.i = shl i16 %.sroa.125.sroa.0.1655.i, 1 ; 2 uses
  %i.acs = lshr i16 %.sroa.125.sroa.0.1655.i, 15
  %.sroa.125.sroa.44.0.extract.shift391.i = zext nneg i16 %i.acs to i32 ; 3 uses
  %.not24.i222.1.i = icmp eq i32 %.sroa.108.1654.i, 1
  br i1 %.not24.i222.1.i, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.act = add i32 %.sroa.46.1653.i, 1
  %i.acu = zext i32 %.sroa.46.1653.i to i64
  %i.acv = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.acu
  %i.acw = load i8, ptr %i.acv, align 1, !tbaa !10
  %i.acx = zext i8 %i.acw to i16
  %i.acy = shl nuw i16 %i.acx, 8
  %i.acz = zext i32 %i.act to i64
  %i.ada = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.acz
  %i.adb = load i8, ptr %i.ada, align 1, !tbaa !10
  %i.adc = zext i8 %i.adb to i16
  %i.add = or disjoint i16 %i.acy, %i.adc
  %i.ade = or i16 %i.add, %.sroa.125.sroa.0.0.extract.trunc352.i
  br label %.thread925.i

.thread925.i:                                     ; preds = %bb.bo, %.thread.i
  %.sroa.125.sroa.44.0.extract.shift391923.ph.i = phi i32 [ %.sroa.125.sroa.44.0.extract.shift391921.i, %.thread.i ], [ %.sroa.125.sroa.44.0.extract.shift391.i, %bb.bo ]
  %.sroa.125.sroa.0.23.1.ph.i = phi i16 [ %.sroa.125.sroa.0.0.extract.trunc352920.i, %.thread.i ], [ %i.ade, %bb.bo ]
  %.ph924.i = phi i32 [ 14, %.thread.i ], [ 15, %bb.bo ]
  %.sroa.46.23.1.ph.i = add i32 %.sroa.46.1653.i, 2
  %.sroa.125.sroa.0.0.insert.ext349.1929.i = zext i16 %.sroa.125.sroa.0.23.1.ph.i to i32 ; 2 uses
  %i.adf = shl nuw nsw i32 %.sroa.125.sroa.0.0.insert.ext349.1929.i, 1
  br label %bb.br

bb.bp:                                            ; preds = %bb.bn
  %.sroa.125.sroa.0.0.insert.ext349.1.i = zext i16 %.sroa.125.sroa.0.0.extract.trunc352.i to i32 ; 3 uses
  %i.adg = shl nuw nsw i32 %.sroa.125.sroa.0.0.insert.ext349.1.i, 1 ; 2 uses
  %i.adh = add i32 %.sroa.108.1654.i, -2          ; 2 uses
  %.not24.i222.2.i = icmp eq i32 %i.adh, 0
  br i1 %.not24.i222.2.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.adi = add i32 %.sroa.46.1653.i, 1
  %i.adj = zext i32 %.sroa.46.1653.i to i64
  %i.adk = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.adj
  %i.adl = load i8, ptr %i.adk, align 1, !tbaa !10
  %i.adm = zext i8 %i.adl to i32
  %i.adn = shl nuw nsw i32 %i.adm, 8
  %i.ado = add i32 %.sroa.46.1653.i, 2
  %i.adp = zext i32 %i.adi to i64
  %i.adq = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.adp
  %i.adr = load i8, ptr %i.adq, align 1, !tbaa !10
  %i.ads = zext i8 %i.adr to i32
  %i.adt = or disjoint i32 %i.adn, %i.ads
  %i.adu = or i32 %i.adt, %i.adg
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %.thread925.i
  %.sroa.125.sroa.0.0.insert.ext349.1932.i = phi i32 [ %.sroa.125.sroa.0.0.insert.ext349.1.i, %bb.bq ], [ %.sroa.125.sroa.0.0.insert.ext349.1.i, %bb.bp ], [ %.sroa.125.sroa.0.0.insert.ext349.1929.i, %.thread925.i ]
  %.sroa.125.sroa.44.0.extract.shift391923931.i = phi i32 [ %.sroa.125.sroa.44.0.extract.shift391.i, %bb.bq ], [ %.sroa.125.sroa.44.0.extract.shift391.i, %bb.bp ], [ %.sroa.125.sroa.44.0.extract.shift391923.ph.i, %.thread925.i ]
  %.sroa.46.23.2.i = phi i32 [ %i.ado, %bb.bq ], [ %.sroa.46.1653.i, %bb.bp ], [ %.sroa.46.23.1.ph.i, %.thread925.i ] ; 9 uses
  %.sroa.125.sroa.0.23.2.i = phi i32 [ %i.adu, %bb.bq ], [ %i.adg, %bb.bp ], [ %i.adf, %.thread925.i ] ; 3 uses
  %i.adv = phi i32 [ 16, %bb.bq ], [ %i.adh, %bb.bp ], [ %.ph924.i, %.thread925.i ] ; 3 uses
  %i.adw = shl nuw nsw i32 %.sroa.125.sroa.44.0.extract.shift391923931.i, 18
  %i.adx = shl nuw nsw i32 %.sroa.125.sroa.0.0.insert.ext349.1932.i, 2
  %.masked808.i = and i32 %i.adx, 131072
  %i.ady = or disjoint i32 %i.adw, %.masked808.i
  %.sroa.125.sroa.0.0.insert.ext349.2.i = shl nuw nsw i32 %.sroa.125.sroa.0.23.2.i, 1 ; 5 uses
  %i.adz = and i32 %.sroa.125.sroa.0.0.insert.ext349.2.i, 65536
  %i.aea = or disjoint i32 %i.adz, %i.ady
  %.not24.i222.3.i = icmp eq i32 %i.adv, 1
  br i1 %.not24.i222.3.i, label %.thread933.i, label %bb.bs

.thread933.i:                                     ; preds = %bb.br
  %i.aeb = add i32 %.sroa.46.23.2.i, 1
  %i.aec = zext i32 %.sroa.46.23.2.i to i64
  %i.aed = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.aec
  %i.aee = load i8, ptr %i.aed, align 1, !tbaa !10
  %i.aef = zext i8 %i.aee to i32
  %i.aeg = shl nuw nsw i32 %i.aef, 8
  %i.aeh = zext i32 %i.aeb to i64
  %i.aei = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.aeh
  %i.aej = load i8, ptr %i.aei, align 1, !tbaa !10
  %i.aek = zext i8 %i.aej to i32
  %i.ael = or disjoint i32 %i.aeg, %i.aek
  %i.aem = or i32 %i.ael, %.sroa.125.sroa.0.0.insert.ext349.2.i ; 2 uses
  %.sroa.125.sroa.0.0.insert.ext349.3936.i = shl nuw nsw i32 %i.aem, 1
  br label %.thread941.i

bb.bs:                                            ; preds = %bb.br
  %.sroa.125.sroa.0.0.insert.ext349.3.i = shl nuw nsw i32 %.sroa.125.sroa.0.23.2.i, 2 ; 3 uses
  %.not24.i222.4.i = icmp eq i32 %i.adv, 2
  br i1 %.not24.i222.4.i, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.aen = add i32 %.sroa.46.23.2.i, 1
  %i.aeo = zext i32 %.sroa.46.23.2.i to i64
  %i.aep = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.aeo
  %i.aeq = load i8, ptr %i.aep, align 1, !tbaa !10
  %i.aer = zext i8 %i.aeq to i32
  %i.aes = shl nuw nsw i32 %i.aer, 8
  %i.aet = zext i32 %i.aen to i64
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.aet
  %i.aev = load i8, ptr %i.aeu, align 1, !tbaa !10
  %i.aew = zext i8 %i.aev to i32
  %i.aex = or disjoint i32 %i.aes, %i.aew
  %i.aey = or i32 %i.aex, %.sroa.125.sroa.0.0.insert.ext349.3.i
  br label %.thread941.i

.thread941.i:                                     ; preds = %bb.bt, %.thread933.i
  %.sroa.125.sroa.0.23.3938.ph.i = phi i32 [ %i.aem, %.thread933.i ], [ %.sroa.125.sroa.0.0.insert.ext349.2.i, %bb.bt ]
  %.sroa.125.sroa.0.23.4.ph.i = phi i32 [ %.sroa.125.sroa.0.0.insert.ext349.3936.i, %.thread933.i ], [ %i.aey, %bb.bt ] ; 2 uses
  %.ph940.i = phi i32 [ 14, %.thread933.i ], [ 15, %bb.bt ]
  %.sroa.46.23.4.ph.i = add i32 %.sroa.46.23.2.i, 2
  %.sroa.125.sroa.0.0.insert.ext349.4945.i = shl nuw nsw i32 %.sroa.125.sroa.0.23.4.ph.i, 1
  br label %bb.bw

bb.bu:                                            ; preds = %bb.bs
  %.sroa.125.sroa.0.0.insert.ext349.4.i = shl nuw nsw i32 %.sroa.125.sroa.0.23.2.i, 3 ; 2 uses
  %i.aez = add i32 %i.adv, -3                     ; 2 uses
  %.not24.i222.5.i = icmp eq i32 %i.aez, 0
  br i1 %.not24.i222.5.i, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.afa = add i32 %.sroa.46.23.2.i, 1
  %i.afb = zext i32 %.sroa.46.23.2.i to i64
  %i.afc = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.afb
  %i.afd = load i8, ptr %i.afc, align 1, !tbaa !10
  %i.afe = zext i8 %i.afd to i32
  %i.aff = shl nuw nsw i32 %i.afe, 8
  %i.afg = add i32 %.sroa.46.23.2.i, 2
  %i.afh = zext i32 %i.afa to i64
  %i.afi = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.afh
  %i.afj = load i8, ptr %i.afi, align 1, !tbaa !10
  %i.afk = zext i8 %i.afj to i32
  %i.afl = or disjoint i32 %i.aff, %i.afk
  %i.afm = or i32 %i.afl, %.sroa.125.sroa.0.0.insert.ext349.4.i
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %.thread941.i
  %.pn1043.in.i = phi i32 [ %.sroa.125.sroa.0.0.insert.ext349.2.i, %bb.bv ], [ %.sroa.125.sroa.0.0.insert.ext349.2.i, %bb.bu ], [ %.sroa.125.sroa.0.23.3938.ph.i, %.thread941.i ]
  %.sroa.125.sroa.0.23.4947.i = phi i32 [ %.sroa.125.sroa.0.0.insert.ext349.3.i, %bb.bv ], [ %.sroa.125.sroa.0.0.insert.ext349.3.i, %bb.bu ], [ %.sroa.125.sroa.0.23.4.ph.i, %.thread941.i ]
  %.sroa.46.23.5.i = phi i32 [ %i.afg, %bb.bv ], [ %.sroa.46.23.2.i, %bb.bu ], [ %.sroa.46.23.4.ph.i, %.thread941.i ] ; 4 uses
  %.sroa.125.sroa.0.23.5.i = phi i32 [ %i.afm, %bb.bv ], [ %.sroa.125.sroa.0.0.insert.ext349.4.i, %bb.bu ], [ %.sroa.125.sroa.0.0.insert.ext349.4945.i, %.thread941.i ]
  %i.afn = phi i32 [ 16, %bb.bv ], [ %i.aez, %bb.bu ], [ %.ph940.i, %.thread941.i ]
  %.pn1043.i = and i32 %.pn1043.in.i, 32768
  %i.afo = or disjoint i32 %.pn1043.i, %i.aea
  %i.afp = shl nuw nsw i32 %i.afo, 3
  %i.afq = shl nuw nsw i32 %.sroa.125.sroa.0.23.4947.i, 2
  %i.afr = and i32 %i.afq, 131072
  %i.afs = or disjoint i32 %i.afp, %i.afr
  %.sroa.125.sroa.0.0.insert.ext349.5.i = shl nuw nsw i32 %.sroa.125.sroa.0.23.5.i, 1 ; 3 uses
  %i.aft = and i32 %.sroa.125.sroa.0.0.insert.ext349.5.i, 65536
  %i.afu = or disjoint i32 %i.aft, %i.afs
  %i.afv = add i32 %i.afn, -1                     ; 2 uses
  %.not24.i222.6.i = icmp eq i32 %i.afv, 0
  br i1 %.not24.i222.6.i, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.afw = add i32 %.sroa.46.23.5.i, 1
  %i.afx = zext i32 %.sroa.46.23.5.i to i64
  %i.afy = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.afx
end_hunk_0
