Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_hash?download=true
inline.NumInlined: 31
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@zend_hash_rehash:bb.a
  br i1 %.not192, label %bb.q, label %bb.n, !prof !30

bb.n:                                             ; preds = %bb.m
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !31
  store ptr %i.cw, ptr %.0169238, align 8, !tbaa !31
  %i.cx = getelementptr inbounds nuw i8, ptr %.0169238, i64 8
  store i32 %i.cv, ptr %i.cx, align 8, !tbaa !31
  %i.cy = getelementptr inbounds nuw i8, ptr %.2239, i64 48
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !46 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0169238, i64 16
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !46
  %i.db = load i32, ptr %i.ba, align 4, !tbaa !39
  %i.dc = trunc i64 %i.cz to i32
  %i.dd = or i32 %i.db, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %.2239, i64 56
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !44
  %i.dg = getelementptr inbounds nuw i8, ptr %.0169238, i64 24
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !44
  %i.dh = load ptr, ptr %i.ay, align 8, !tbaa !31
  %i.di = sext i32 %i.dd to i64                   ; 2 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !40
  %i.dl = getelementptr inbounds nuw i8, ptr %.0169238, i64 12
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !31
  %i.dm = load ptr, ptr %i.ay, align 8, !tbaa !31
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.di
  store i32 %.0173237, ptr %i.dn, align 4, !tbaa !40
  %i.do = load i32, ptr %i.cq, align 4, !tbaa !52 ; 2 uses
  %i.dp = icmp ugt i32 %i.do, %.0173237
  %i.dq = icmp ule i32 %i.do, %i.cs
  %spec.select = and i1 %i.dp, %i.dq
  br i1 %spec.select, label %bb.o, label %bb.p, !prof !30

bb.o:                                             ; preds = %bb.n
  store i32 %.0173237, ptr %i.cq, align 4, !tbaa !52
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dr = getelementptr inbounds nuw i8, ptr %.0169238, i64 32
  %i.ds = add i32 %.0173237, 1
  %.pre251 = load i32, ptr %i.bl, align 8, !tbaa !50
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %i.dt = phi i32 [ %.pre251, %bb.p ], [ %i.cr, %bb.m ] ; 2 uses
  %.1174 = phi i32 [ %i.ds, %bb.p ], [ %.0173237, %bb.m ] ; 2 uses
  %.1170 = phi ptr [ %i.dr, %bb.p ], [ %.0169238, %bb.m ]
  %i.du = add nuw i32 %i.cs, 1                    ; 2 uses
  %i.dv = icmp ult i32 %i.du, %i.dt
  br i1 %i.dv, label %bb.m, label %.loopexit, !llvm.loop !107

bb.r:                                             ; preds = %.preheader227._crit_edge
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1112), align 8, !tbaa !86 ; 5 uses
  %i.dx = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1108), align 4, !tbaa !87 ; 2 uses
  %i.dy = zext i32 %i.dx to i64
  %.idx.i = shl nuw nsw i64 %i.dy, 4              ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.idx.i
  %.not15.i = icmp eq i32 %i.dx, 0
  br i1 %.not15.i, label %zend_hash_iterators_lower_pos.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.r
  %i.ea = add nsw i64 %.idx.i, -16                ; 2 uses
  %i.eb = and i64 %i.ea, 16
  %lcmp.mod.not.not = icmp eq i64 %i.eb, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ec = load ptr, ptr %i.dw, align 8, !tbaa !89
  %i.ed = icmp eq ptr %i.ec, %0
  br i1 %i.ed, label %bb.s, label %.lr.ph.i.prol.loopexit.unr-lcssa

bb.s:                                             ; preds = %.lr.ph.i.prol
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i.not.prol = icmp ugt i32 %i.ef, %.1159.lcssa
  %i.eg = tail call i32 @llvm.umin.i32(i32 %i.ef, i32 %.lcssa)
  %spec.select.i.prol = select i1 %.not14.not.i.not.prol, i32 %i.eg, i32 %.lcssa
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.s, %.lr.ph.i.prol
  %.1.i.prol = phi i32 [ %spec.select.i.prol, %bb.s ], [ %.lcssa, %.lr.ph.i.prol ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.1.i.lcssa.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %.1.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.017.i.unr = phi i32 [ %.lcssa, %.lr.ph.i.preheader ], [ %.1.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.01216.i.unr = phi ptr [ %i.dw, %.lr.ph.i.preheader ], [ %i.eh, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.ei = icmp eq i64 %i.ea, 0
  br i1 %i.ei, label %zend_hash_iterators_lower_pos.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.v
  %.017.i = phi i32 [ %.1.i.1, %bb.v ], [ %.017.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.01216.i = phi ptr [ %i.eu, %bb.v ], [ %.01216.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ej = load ptr, ptr %.01216.i, align 8, !tbaa !89
  %i.ek = icmp eq ptr %i.ej, %0
  br i1 %i.ek, label %bb.t, label %.lr.ph.i.1

bb.t:                                             ; preds = %.lr.ph.i
  %i.el = getelementptr inbounds nuw i8, ptr %.01216.i, i64 8
  %i.em = load i32, ptr %i.el, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i.not = icmp ugt i32 %i.em, %.1159.lcssa
  %i.en = tail call i32 @llvm.umin.i32(i32 %i.em, i32 %.017.i)
  %spec.select.i = select i1 %.not14.not.i.not, i32 %i.en, i32 %.017.i
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.t, %.lr.ph.i
  %.1.i = phi i32 [ %spec.select.i, %bb.t ], [ %.017.i, %.lr.ph.i ] ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.01216.i, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !89
  %i.eq = icmp eq ptr %i.ep, %0
  br i1 %i.eq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.1
  %i.er = getelementptr inbounds nuw i8, ptr %.01216.i, i64 24
  %i.es = load i32, ptr %i.er, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i.not.1 = icmp ugt i32 %i.es, %.1159.lcssa
  %i.et = tail call i32 @llvm.umin.i32(i32 %i.es, i32 %.1.i)
  %spec.select.i.1 = select i1 %.not14.not.i.not.1, i32 %i.et, i32 %.1.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.1
  %.1.i.1 = phi i32 [ %spec.select.i.1, %bb.u ], [ %.1.i, %.lr.ph.i.1 ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.01216.i, i64 32 ; 2 uses
  %.not.i198.1 = icmp eq ptr %i.eu, %i.dz
  br i1 %.not.i198.1, label %zend_hash_iterators_lower_pos.exit, label %.lr.ph.i, !llvm.loop !0

zend_hash_iterators_lower_pos.exit:               ; preds = %.lr.ph.i.prol.loopexit, %bb.v, %bb.r
  %.0.lcssa.i = phi i32 [ %.lcssa, %bb.r ], [ %.1.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.1.i.1, %bb.v ]
  %i.ev = add i32 %.1159.lcssa, 1                 ; 2 uses
  %i.ew = icmp ult i32 %i.ev, %.lcssa
  br i1 %i.ew, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %zend_hash_iterators_lower_pos.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %bb.aq
  %i.ey = phi i32 [ %.lcssa, %.lr.ph ], [ %i.iy, %bb.aq ]
  %i.ez = phi i32 [ %i.ev, %.lr.ph ], [ %i.iz, %bb.aq ] ; 6 uses
  %.3236 = phi ptr [ %.1.lcssa, %.lr.ph ], [ %i.fa, %bb.aq ] ; 4 uses
  %.0163235 = phi i32 [ %.0.lcssa.i, %.lr.ph ], [ %.3166, %bb.aq ] ; 5 uses
  %.2171234 = phi ptr [ %.1.lcssa, %.lr.ph ], [ %.3172, %bb.aq ] ; 7 uses
  %.2175232 = phi i32 [ %.1159.lcssa, %.lr.ph ], [ %.3176, %bb.aq ] ; 8 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.3236, i64 32 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.3236, i64 40
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !31 ; 2 uses
  %.not189 = icmp eq i32 %i.fc, 0
  br i1 %.not189, label %bb.aq, label %bb.x, !prof !30

bb.x:                                             ; preds = %bb.w
  %i.fd = load ptr, ptr %i.fa, align 8, !tbaa !31
  store ptr %i.fd, ptr %.2171234, align 8, !tbaa !31
  %i.fe = getelementptr inbounds nuw i8, ptr %.2171234, i64 8
  store i32 %i.fc, ptr %i.fe, align 8, !tbaa !31
  %i.ff = getelementptr inbounds nuw i8, ptr %.3236, i64 48
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !46 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.2171234, i64 16
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !46
  %i.fi = load i32, ptr %i.ba, align 4, !tbaa !39
  %i.fj = trunc i64 %i.fg to i32
  %i.fk = or i32 %i.fi, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %.3236, i64 56
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !44
  %i.fn = getelementptr inbounds nuw i8, ptr %.2171234, i64 24
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !44
  %i.fo = load ptr, ptr %i.ay, align 8, !tbaa !31
  %i.fp = sext i32 %i.fk to i64                   ; 2 uses
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !40
  %i.fs = getelementptr inbounds nuw i8, ptr %.2171234, i64 12
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !31
  %i.ft = load ptr, ptr %i.ay, align 8, !tbaa !31
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.fp
  store i32 %.2175232, ptr %i.fu, align 4, !tbaa !40
  %i.fv = load i32, ptr %i.ex, align 4, !tbaa !52 ; 2 uses
  %i.fw = icmp ugt i32 %i.fv, %.2175232
  %i.fx = icmp ule i32 %i.fv, %i.ez
  %spec.select197 = and i1 %i.fw, %i.fx
  br i1 %spec.select197, label %bb.y, label %bb.z, !prof !30

bb.y:                                             ; preds = %bb.x
  store i32 %.2175232, ptr %i.ex, align 4, !tbaa !52
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.not190 = icmp ult i32 %i.ez, %.0163235
  br i1 %.not190, label %..loopexit225_crit_edge, label %.preheader224, !prof !45

..loopexit225_crit_edge:                          ; preds = %bb.z
  %.pre.pre = load i32, ptr %i.bl, align 8, !tbaa !50
  br label %.loopexit225

.preheader224:                                    ; preds = %bb.z
  %i.fy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1112), align 8 ; 13 uses
  %i.fz = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1108), align 4 ; 2 uses
  %i.ga = zext i32 %i.fz to i64
  %.idx.i199 = shl nuw nsw i64 %i.ga, 4           ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.idx.i199 ; 3 uses
  %.not9.i = icmp eq i32 %i.fz, 0                 ; 3 uses
  %i.gc = load i8, ptr %i.cm, align 2, !tbaa !31
  %i.gd = icmp eq i8 %i.gc, 0
  br i1 %i.gd, label %.preheader224.split.us, label %.preheader224.split.preheader, !prof !45

.preheader224.split.preheader:                    ; preds = %.preheader224
  %i.ge = add nsw i64 %.idx.i199, -16             ; 4 uses
  %i.gf = and i64 %i.ge, 16
  %lcmp.mod307.not.not = icmp eq i64 %i.gf, 0
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 3 uses
  %i.gi = icmp eq i64 %i.ge, 0
  %i.gj = and i64 %i.ge, 16
  %lcmp.mod309.not.not = icmp eq i64 %i.gj, 0
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  %i.gm = icmp eq i64 %i.ge, 0
  br label %.preheader224.split

.preheader224.split.us:                           ; preds = %.preheader224
  %i.gn = load i32, ptr %i.bl, align 8, !tbaa !50 ; 9 uses
  br i1 %.not9.i, label %.preheader224.split.us.split.us, label %zend_hash_iterators_update.exit.us.preheader

zend_hash_iterators_update.exit.us.preheader:     ; preds = %.preheader224.split.us
  %i.go = add nsw i64 %.idx.i199, -16             ; 2 uses
  %i.gp = and i64 %i.go, 16
  %lcmp.mod311.not.not = icmp eq i64 %i.gp, 0
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  %i.gs = icmp eq i64 %i.go, 0
  br label %zend_hash_iterators_update.exit.us

.preheader224.split.us.split.us:                  ; preds = %.preheader224.split.us
  %i.gt = icmp ult i32 %i.gn, %i.ez
  br i1 %i.gt, label %zend_hash_iterators_update.exit.us.us, label %.loopexit225, !llvm.loop !108

zend_hash_iterators_update.exit.us.us:            ; preds = %.preheader224.split.us.split.us, %zend_hash_iterators_update.exit.us.us
  br label %zend_hash_iterators_update.exit.us.us

zend_hash_iterators_update.exit.us:               ; preds = %zend_hash_iterators_update.exit.us.preheader, %zend_hash_iterators_lower_pos.exit212.loopexit.us
  %.1164.us = phi i32 [ %.1.i207.us.lcssa, %zend_hash_iterators_lower_pos.exit212.loopexit.us ], [ %.0163235, %zend_hash_iterators_update.exit.us.preheader ] ; 3 uses
  br i1 %lcmp.mod311.not.not, label %.lr.ph.i204.us.prol, label %.lr.ph.i204.us.prol.loopexit

.lr.ph.i204.us.prol:                              ; preds = %zend_hash_iterators_update.exit.us
  %i.gu = load ptr, ptr %i.fy, align 8, !tbaa !89
  %i.gv = icmp eq ptr %i.gu, %0
  br i1 %i.gv, label %bb.aa, label %.lr.ph.i204.us.prol.loopexit

bb.aa:                                            ; preds = %.lr.ph.i204.us.prol
  %i.gw = load i32, ptr %i.gq, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i210.us.not.prol = icmp ugt i32 %i.gw, %.1164.us
  %i.gx = tail call i32 @llvm.umin.i32(i32 %i.gw, i32 %i.gn)
  %spec.select.i211.us.prol = select i1 %.not14.not.i210.us.not.prol, i32 %i.gx, i32 %i.gn ; 2 uses
  br label %.lr.ph.i204.us.prol.loopexit

.lr.ph.i204.us.prol.loopexit:                     ; preds = %.lr.ph.i204.us.prol, %bb.aa, %zend_hash_iterators_update.exit.us
  %.1.i207.us.lcssa.unr = phi i32 [ poison, %zend_hash_iterators_update.exit.us ], [ %spec.select.i211.us.prol, %bb.aa ], [ %i.gn, %.lr.ph.i204.us.prol ]
  %.017.i205.us.unr = phi i32 [ %i.gn, %zend_hash_iterators_update.exit.us ], [ %spec.select.i211.us.prol, %bb.aa ], [ %i.gn, %.lr.ph.i204.us.prol ]
  %.01216.i206.us.unr = phi ptr [ %i.fy, %zend_hash_iterators_update.exit.us ], [ %i.gr, %bb.aa ], [ %i.gr, %.lr.ph.i204.us.prol ]
  br i1 %i.gs, label %zend_hash_iterators_lower_pos.exit212.loopexit.us, label %.lr.ph.i204.us

.lr.ph.i204.us:                                   ; preds = %.lr.ph.i204.us.prol.loopexit, %bb.ad
  %.017.i205.us = phi i32 [ %.1.i207.us.1, %bb.ad ], [ %.017.i205.us.unr, %.lr.ph.i204.us.prol.loopexit ] ; 3 uses
  %.01216.i206.us = phi ptr [ %i.hj, %bb.ad ], [ %.01216.i206.us.unr, %.lr.ph.i204.us.prol.loopexit ] ; 5 uses
  %i.gy = load ptr, ptr %.01216.i206.us, align 8, !tbaa !89
  %i.gz = icmp eq ptr %i.gy, %0
  br i1 %i.gz, label %bb.ab, label %.lr.ph.i204.us.1

bb.ab:                                            ; preds = %.lr.ph.i204.us
  %i.ha = getelementptr inbounds nuw i8, ptr %.01216.i206.us, i64 8
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i210.us.not = icmp ugt i32 %i.hb, %.1164.us
  %i.hc = tail call i32 @llvm.umin.i32(i32 %i.hb, i32 %.017.i205.us)
  %spec.select.i211.us = select i1 %.not14.not.i210.us.not, i32 %i.hc, i32 %.017.i205.us
  br label %.lr.ph.i204.us.1

.lr.ph.i204.us.1:                                 ; preds = %bb.ab, %.lr.ph.i204.us
  %.1.i207.us = phi i32 [ %spec.select.i211.us, %bb.ab ], [ %.017.i205.us, %.lr.ph.i204.us ] ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.01216.i206.us, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !89
  %i.hf = icmp eq ptr %i.he, %0
  br i1 %i.hf, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i204.us.1
  %i.hg = getelementptr inbounds nuw i8, ptr %.01216.i206.us, i64 24
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i210.us.not.1 = icmp ugt i32 %i.hh, %.1164.us
  %i.hi = tail call i32 @llvm.umin.i32(i32 %i.hh, i32 %.1.i207.us)
  %spec.select.i211.us.1 = select i1 %.not14.not.i210.us.not.1, i32 %i.hi, i32 %.1.i207.us
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i204.us.1
  %.1.i207.us.1 = phi i32 [ %spec.select.i211.us.1, %bb.ac ], [ %.1.i207.us, %.lr.ph.i204.us.1 ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.01216.i206.us, i64 32 ; 2 uses
  %.not.i208.us.1 = icmp eq ptr %i.hj, %i.gb
  br i1 %.not.i208.us.1, label %zend_hash_iterators_lower_pos.exit212.loopexit.us, label %.lr.ph.i204.us, !llvm.loop !0

zend_hash_iterators_lower_pos.exit212.loopexit.us: ; preds = %bb.ad, %.lr.ph.i204.us.prol.loopexit
  %.1.i207.us.lcssa = phi i32 [ %.1.i207.us.lcssa.unr, %.lr.ph.i204.us.prol.loopexit ], [ %.1.i207.us.1, %bb.ad ] ; 3 uses
  %i.hk = icmp ult i32 %.1.i207.us.lcssa, %i.ez
  br i1 %i.hk, label %zend_hash_iterators_update.exit.us, label %.loopexit225, !llvm.loop !108

.preheader224.splitthread-pre-split:              ; preds = %zend_hash_iterators_lower_pos.exit212
  %.pr = load i8, ptr %i.cm, align 2, !tbaa !31
  br label %.preheader224.split

.preheader224.split:                              ; preds = %.preheader224.split.preheader, %.preheader224.splitthread-pre-split
  %i.hl = phi i8 [ %.pr, %.preheader224.splitthread-pre-split ], [ 1, %.preheader224.split.preheader ]
  %.1164 = phi i32 [ %.0.lcssa.i209, %.preheader224.splitthread-pre-split ], [ %.0163235, %.preheader224.split.preheader ] ; 4 uses
  %.not.i = icmp eq i8 %i.hl, 0
  br i1 %.not.i, label %zend_hash_iterators_update.exit, label %bb.ae, !prof !45

bb.ae:                                            ; preds = %.preheader224.split
  br i1 %.not9.i, label %zend_hash_iterators_update.exit.thread, label %.lr.ph.i200.preheader

.lr.ph.i200.preheader:                            ; preds = %bb.ae
  br i1 %lcmp.mod307.not.not, label %.lr.ph.i200.prol, label %.lr.ph.i200.prol.loopexit

.lr.ph.i200.prol:                                 ; preds = %.lr.ph.i200.preheader
  %i.hm = load ptr, ptr %i.fy, align 8, !tbaa !89
  %i.hn = icmp eq ptr %i.hm, %0
  br i1 %i.hn, label %bb.af, label %.lr.ph.i200.prol.loopexit

bb.af:                                            ; preds = %.lr.ph.i200.prol
  %i.ho = load i32, ptr %i.gg, align 8, !tbaa !90
  %i.hp = icmp eq i32 %i.ho, %.1164
  br i1 %i.hp, label %bb.ag, label %.lr.ph.i200.prol.loopexit

bb.ag:                                            ; preds = %bb.af
  store i32 %.2175232, ptr %i.gg, align 8, !tbaa !90
  br label %.lr.ph.i200.prol.loopexit

.lr.ph.i200.prol.loopexit:                        ; preds = %.lr.ph.i200.prol, %bb.af, %bb.ag, %.lr.ph.i200.preheader
  %.010.i.unr = phi ptr [ %i.fy, %.lr.ph.i200.preheader ], [ %i.gh, %bb.ag ], [ %i.gh, %bb.af ], [ %i.gh, %.lr.ph.i200.prol ]
  br i1 %i.gi, label %zend_hash_iterators_update.exit, label %.lr.ph.i200

zend_hash_iterators_update.exit.thread:           ; preds = %bb.ae
  %i.hq = load i32, ptr %i.bl, align 8, !tbaa !50 ; 2 uses
  br label %zend_hash_iterators_lower_pos.exit212

.lr.ph.i200:                                      ; preds = %.lr.ph.i200.prol.loopexit, %bb.al
  %.010.i = phi ptr [ %i.ic, %bb.al ], [ %.010.i.unr, %.lr.ph.i200.prol.loopexit ] ; 5 uses
  %i.hr = load ptr, ptr %.010.i, align 8, !tbaa !89
  %i.hs = icmp eq ptr %i.hr, %0
  br i1 %i.hs, label %bb.ah, label %.lr.ph.i200.1

bb.ah:                                            ; preds = %.lr.ph.i200
  %i.ht = getelementptr inbounds nuw i8, ptr %.010.i, i64 8 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !90
  %i.hv = icmp eq i32 %i.hu, %.1164
  br i1 %i.hv, label %bb.ai, label %.lr.ph.i200.1

bb.ai:                                            ; preds = %bb.ah
  store i32 %.2175232, ptr %i.ht, align 8, !tbaa !90
  br label %.lr.ph.i200.1

.lr.ph.i200.1:                                    ; preds = %bb.ai, %bb.ah, %.lr.ph.i200
  %i.hw = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !89
  %i.hy = icmp eq ptr %i.hx, %0
  br i1 %i.hy, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %.lr.ph.i200.1
  %i.hz = getelementptr inbounds nuw i8, ptr %.010.i, i64 24 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !90
  %i.ib = icmp eq i32 %i.ia, %.1164
  br i1 %i.ib, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 %.2175232, ptr %i.hz, align 8, !tbaa !90
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %.lr.ph.i200.1
  %i.ic = getelementptr inbounds nuw i8, ptr %.010.i, i64 32 ; 2 uses
  %.not.i201.1 = icmp eq ptr %i.ic, %i.gb
  br i1 %.not.i201.1, label %zend_hash_iterators_update.exit, label %.lr.ph.i200, !llvm.loop !1

zend_hash_iterators_update.exit:                  ; preds = %.lr.ph.i200.prol.loopexit, %bb.al, %.preheader224.split
  %i.id = add i32 %.1164, 1                       ; 3 uses
  %i.ie = load i32, ptr %i.bl, align 8, !tbaa !50 ; 9 uses
  br i1 %.not9.i, label %zend_hash_iterators_lower_pos.exit212, label %.lr.ph.i204.preheader

.lr.ph.i204.preheader:                            ; preds = %zend_hash_iterators_update.exit
  br i1 %lcmp.mod309.not.not, label %.lr.ph.i204.prol, label %.lr.ph.i204.prol.loopexit

.lr.ph.i204.prol:                                 ; preds = %.lr.ph.i204.preheader
  %i.if = load ptr, ptr %i.fy, align 8, !tbaa !89
  %i.ig = icmp eq ptr %i.if, %0
  br i1 %i.ig, label %bb.am, label %.lr.ph.i204.prol.loopexit

bb.am:                                            ; preds = %.lr.ph.i204.prol
  %i.ih = load i32, ptr %i.gk, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i210.prol = icmp ult i32 %i.ih, %i.id
  %i.ii = tail call i32 @llvm.umin.i32(i32 %i.ih, i32 %i.ie)
  %spec.select.i211.prol = select i1 %.not14.not.i210.prol, i32 %i.ie, i32 %i.ii ; 2 uses
  br label %.lr.ph.i204.prol.loopexit

.lr.ph.i204.prol.loopexit:                        ; preds = %.lr.ph.i204.prol, %bb.am, %.lr.ph.i204.preheader
  %.1.i207.lcssa.unr = phi i32 [ poison, %.lr.ph.i204.preheader ], [ %spec.select.i211.prol, %bb.am ], [ %i.ie, %.lr.ph.i204.prol ]
  %.017.i205.unr = phi i32 [ %i.ie, %.lr.ph.i204.preheader ], [ %spec.select.i211.prol, %bb.am ], [ %i.ie, %.lr.ph.i204.prol ]
  %.01216.i206.unr = phi ptr [ %i.fy, %.lr.ph.i204.preheader ], [ %i.gl, %bb.am ], [ %i.gl, %.lr.ph.i204.prol ]
  br i1 %i.gm, label %zend_hash_iterators_lower_pos.exit212, label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %.lr.ph.i204.prol.loopexit, %bb.ap
  %.017.i205 = phi i32 [ %.1.i207.1, %bb.ap ], [ %.017.i205.unr, %.lr.ph.i204.prol.loopexit ] ; 3 uses
  %.01216.i206 = phi ptr [ %i.iu, %bb.ap ], [ %.01216.i206.unr, %.lr.ph.i204.prol.loopexit ] ; 5 uses
  %i.ij = load ptr, ptr %.01216.i206, align 8, !tbaa !89
  %i.ik = icmp eq ptr %i.ij, %0
  br i1 %i.ik, label %bb.an, label %.lr.ph.i204.1

bb.an:                                            ; preds = %.lr.ph.i204
  %i.il = getelementptr inbounds nuw i8, ptr %.01216.i206, i64 8
  %i.im = load i32, ptr %i.il, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i210 = icmp ult i32 %i.im, %i.id
  %i.in = tail call i32 @llvm.umin.i32(i32 %i.im, i32 %.017.i205)
  %spec.select.i211 = select i1 %.not14.not.i210, i32 %.017.i205, i32 %i.in
  br label %.lr.ph.i204.1

.lr.ph.i204.1:                                    ; preds = %bb.an, %.lr.ph.i204
  %.1.i207 = phi i32 [ %spec.select.i211, %bb.an ], [ %.017.i205, %.lr.ph.i204 ] ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.01216.i206, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !89
  %i.iq = icmp eq ptr %i.ip, %0
  br i1 %i.iq, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph.i204.1
  %i.ir = getelementptr inbounds nuw i8, ptr %.01216.i206, i64 24
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i210.1 = icmp ult i32 %i.is, %i.id
  %i.it = tail call i32 @llvm.umin.i32(i32 %i.is, i32 %.1.i207)
  %spec.select.i211.1 = select i1 %.not14.not.i210.1, i32 %.1.i207, i32 %i.it
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph.i204.1
  %.1.i207.1 = phi i32 [ %spec.select.i211.1, %bb.ao ], [ %.1.i207, %.lr.ph.i204.1 ] ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.01216.i206, i64 32 ; 2 uses
  %.not.i208.1 = icmp eq ptr %i.iu, %i.gb
  br i1 %.not.i208.1, label %zend_hash_iterators_lower_pos.exit212, label %.lr.ph.i204, !llvm.loop !0

zend_hash_iterators_lower_pos.exit212:            ; preds = %.lr.ph.i204.prol.loopexit, %bb.ap, %zend_hash_iterators_update.exit.thread, %zend_hash_iterators_update.exit
  %.pre253 = phi i32 [ %i.ie, %zend_hash_iterators_update.exit ], [ %i.hq, %zend_hash_iterators_update.exit.thread ], [ %i.ie, %bb.ap ], [ %i.ie, %.lr.ph.i204.prol.loopexit ]
  %.0.lcssa.i209 = phi i32 [ %i.ie, %zend_hash_iterators_update.exit ], [ %i.hq, %zend_hash_iterators_update.exit.thread ], [ %.1.i207.lcssa.unr, %.lr.ph.i204.prol.loopexit ], [ %.1.i207.1, %bb.ap ] ; 3 uses
  %i.iv = icmp ult i32 %.0.lcssa.i209, %i.ez
  br i1 %i.iv, label %.preheader224.splitthread-pre-split, label %.loopexit225, !llvm.loop !109

.loopexit225:                                     ; preds = %zend_hash_iterators_lower_pos.exit212, %zend_hash_iterators_lower_pos.exit212.loopexit.us, %..loopexit225_crit_edge, %.preheader224.split.us.split.us
  %.pre.a = phi i32 [ %.pre.pre, %..loopexit225_crit_edge ], [ %i.gn, %zend_hash_iterators_lower_pos.exit212.loopexit.us ], [ %i.gn, %.preheader224.split.us.split.us ], [ %.pre253, %zend_hash_iterators_lower_pos.exit212 ]
  %.2165 = phi i32 [ %.0163235, %..loopexit225_crit_edge ], [ %.1.i207.us.lcssa, %zend_hash_iterators_lower_pos.exit212.loopexit.us ], [ %i.gn, %.preheader224.split.us.split.us ], [ %.0.lcssa.i209, %zend_hash_iterators_lower_pos.exit212 ]
  %i.iw = getelementptr inbounds nuw i8, ptr %.2171234, i64 32
  %i.ix = add i32 %.2175232, 1
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit225, %bb.w
  %i.iy = phi i32 [ %.pre.a, %.loopexit225 ], [ %i.ey, %bb.w ] ; 2 uses
  %.3176 = phi i32 [ %i.ix, %.loopexit225 ], [ %.2175232, %bb.w ] ; 2 uses
  %.3172 = phi ptr [ %i.iw, %.loopexit225 ], [ %.2171234, %bb.w ]
  %.3166 = phi i32 [ %.2165, %.loopexit225 ], [ %.0163235, %bb.w ]
  %i.iz = add nuw i32 %i.ez, 1                    ; 2 uses
  %i.ja = icmp ult i32 %i.iz, %i.iy
  br i1 %i.ja, label %bb.w, label %.loopexit, !llvm.loop !110

.loopexit:                                        ; preds = %bb.aq, %bb.q, %zend_hash_iterators_lower_pos.exit, %.preheader223
  %.4 = phi i32 [ %.1174, %bb.q ], [ %.1159.lcssa, %.preheader223 ], [ %.1159.lcssa, %zend_hash_iterators_lower_pos.exit ], [ %.3176, %bb.aq ] ; 2 uses
  store i32 %.4, ptr %i.bl, align 8, !tbaa !50
  br label %.loopexit228

.lr.ph294:                                        ; preds = %.preheader227.preheader, %.preheader227
  %.1293 = phi ptr [ %i.ci, %.preheader227 ], [ %i.bk, %.preheader227.preheader ] ; 4 uses
  %.1159292 = phi i32 [ %i.jn, %.preheader227 ], [ 0, %.preheader227.preheader ] ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.1293, i64 16
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !46
  %i.jd = load i32, ptr %i.ba, align 4, !tbaa !39
  %i.je = trunc i64 %i.jc to i32
  %i.jf = or i32 %i.jd, %i.je
  %i.jg = load ptr, ptr %i.ay, align 8, !tbaa !31
  %i.jh = sext i32 %i.jf to i64                   ; 2 uses
  %i.ji = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %i.jh
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !40
  %i.jk = getelementptr inbounds nuw i8, ptr %.1293, i64 12
  store i32 %i.jj, ptr %i.jk, align 4, !tbaa !31
  %i.jl = load ptr, ptr %i.ay, align 8, !tbaa !31
  %i.jm = getelementptr inbounds [4 x i8], ptr %i.jl, i64 %i.jh
  store i32 %.1159292, ptr %i.jm, align 4, !tbaa !40
  %i.jn = add nuw i32 %.1159292, 1                ; 3 uses
  %i.jo = load i32, ptr %i.bl, align 8, !tbaa !50 ; 3 uses
  %i.jp = icmp ult i32 %i.jn, %i.jo
  br i1 %i.jp, label %.preheader227, label %.loopexit228, !llvm.loop !106

.loopexit228:                                     ; preds = %.lr.ph294, %.loopexit
  %i.jq = phi i32 [ %.4, %.loopexit ], [ %i.jo, %.lr.ph294 ] ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.js = load i8, ptr %i.jr, align 2, !tbaa !31
  %.not191 = icmp eq i8 %i.js, 0
  br i1 %.not191, label %_zend_hash_iterators_update.exit218, label %bb.ar, !prof !45

bb.ar:                                            ; preds = %.loopexit228
  %i.jt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1112), align 8, !tbaa !86 ; 5 uses
  %i.ju = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1108), align 4, !tbaa !87 ; 2 uses
  %i.jv = zext i32 %i.ju to i64
  %.idx.i213 = shl nuw nsw i64 %i.jv, 4           ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 %.idx.i213
  %.not9.i214 = icmp eq i32 %i.ju, 0
  br i1 %.not9.i214, label %_zend_hash_iterators_update.exit218, label %.lr.ph.i215.preheader

.lr.ph.i215.preheader:                            ; preds = %bb.ar
  %i.jx = add nsw i64 %.idx.i213, -16             ; 2 uses
  %i.jy = and i64 %i.jx, 16
  %lcmp.mod313.not.not = icmp eq i64 %i.jy, 0
  br i1 %lcmp.mod313.not.not, label %.lr.ph.i215.prol, label %.lr.ph.i215.prol.loopexit

.lr.ph.i215.prol:                                 ; preds = %.lr.ph.i215.preheader
  %i.jz = load ptr, ptr %i.jt, align 8, !tbaa !89
  %i.ka = icmp eq ptr %i.jz, %0
  br i1 %i.ka, label %bb.as, label %.lr.ph.i215.prol.loopexit.unr-lcssa

bb.as:                                            ; preds = %.lr.ph.i215.prol
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jt, i64 8 ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !90
  %i.kd = icmp eq i32 %i.kc, %i.bm
  br i1 %i.kd, label %bb.at, label %.lr.ph.i215.prol.loopexit.unr-lcssa

bb.at:                                            ; preds = %bb.as
  store i32 %i.jq, ptr %i.kb, align 8, !tbaa !90
  br label %.lr.ph.i215.prol.loopexit.unr-lcssa

.lr.ph.i215.prol.loopexit.unr-lcssa:              ; preds = %bb.at, %bb.as, %.lr.ph.i215.prol
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  br label %.lr.ph.i215.prol.loopexit

.lr.ph.i215.prol.loopexit:                        ; preds = %.lr.ph.i215.prol.loopexit.unr-lcssa, %.lr.ph.i215.preheader
  %.010.i216.unr = phi ptr [ %i.jt, %.lr.ph.i215.preheader ], [ %i.ke, %.lr.ph.i215.prol.loopexit.unr-lcssa ]
  %i.kf = icmp eq i64 %i.jx, 0
  br i1 %i.kf, label %_zend_hash_iterators_update.exit218, label %.lr.ph.i215

.lr.ph.i215:                                      ; preds = %.lr.ph.i215.prol.loopexit, %bb.ay
  %.010.i216 = phi ptr [ %i.kr, %bb.ay ], [ %.010.i216.unr, %.lr.ph.i215.prol.loopexit ] ; 5 uses
  %i.kg = load ptr, ptr %.010.i216, align 8, !tbaa !89
  %i.kh = icmp eq ptr %i.kg, %0
  br i1 %i.kh, label %bb.au, label %.lr.ph.i215.1

bb.au:                                            ; preds = %.lr.ph.i215
  %i.ki = getelementptr inbounds nuw i8, ptr %.010.i216, i64 8 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !90
  %i.kk = icmp eq i32 %i.kj, %i.bm
  br i1 %i.kk, label %bb.av, label %.lr.ph.i215.1

bb.av:                                            ; preds = %bb.au
  store i32 %i.jq, ptr %i.ki, align 8, !tbaa !90
  br label %.lr.ph.i215.1

.lr.ph.i215.1:                                    ; preds = %bb.av, %bb.au, %.lr.ph.i215
  %i.kl = getelementptr inbounds nuw i8, ptr %.010.i216, i64 16
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !89
  %i.kn = icmp eq ptr %i.km, %0
  br i1 %i.kn, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %.lr.ph.i215.1
  %i.ko = getelementptr inbounds nuw i8, ptr %.010.i216, i64 24 ; 2 uses
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !90
  %i.kq = icmp eq i32 %i.kp, %i.bm
  br i1 %i.kq, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 %i.jq, ptr %i.ko, align 8, !tbaa !90
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %.lr.ph.i215.1
  %i.kr = getelementptr inbounds nuw i8, ptr %.010.i216, i64 32 ; 2 uses
  %.not.i217.1 = icmp eq ptr %i.kr, %i.jw
  br i1 %.not.i217.1, label %_zend_hash_iterators_update.exit218, label %.lr.ph.i215, !llvm.loop !1

_zend_hash_iterators_update.exit218:              ; preds = %.lr.ph.i215.prol.loopexit, %bb.ay, %.preheader, %.lr.ph244.prol.loopexit, %bb.k, %bb.d, %bb.ar, %.loopexit228, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zend_hash_to_packed(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !39
  %i.e = sub i32 0, %i.d
  %i.f = zext i32 %i.e to i64
  %.neg = mul nsw i64 %i.f, -4
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %.neg ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !31
  %i.j = and i32 %i.i, 128
  %.not = icmp eq i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !55
  %i.m = zext i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 4
  %i.o = or disjoint i64 %i.n, 8                  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noalias ptr @__zend_malloc(i64 noundef %i.o) #26
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = tail call noalias ptr @_emalloc(i64 noundef %i.o) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi ptr [ %i.p, %bb.b ], [ %i.q, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !31
  %i.u = or i32 %i.t, 20
  store i32 %i.u, ptr %i.s, align 8, !tbaa !31
  store i32 -2, ptr %i.c, align 4, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  store ptr %i.v, ptr %i.a, align 8, !tbaa !31
  store i32 -1, ptr %i.r, align 4, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 -1, ptr %i.w, align 4, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !50   ; 4 uses
  %.not70 = icmp eq i32 %i.y, 0
  br i1 %.not70, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i32 %i.y, 3                     ; 3 uses
  %i.z = icmp ult i32 %i.y, 4
  br i1 %i.z, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.y, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.069 = phi ptr [ %i.b, %.lr.ph.preheader.new ], [ %i.ax, %.lr.ph ] ; 9 uses
  %.06368 = phi ptr [ %i.v, %.lr.ph.preheader.new ], [ %i.aw, %.lr.ph ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.aa = load ptr, ptr %.069, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %.069, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !31
  store ptr %i.aa, ptr %.06368, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %.06368, i64 8
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %.06368, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %.069, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31
end_hunk_0
begin_hunk_1_@zend_array_dup:bb.a
  %.278.i477 = phi ptr [ %i.ki, %bb.ax ], [ %.177.i474877, %bb.an ]
  %.173.i478 = phi i32 [ %i.kh, %bb.ax ], [ %.072.i475878, %bb.an ] ; 2 uses
  %i.kj = add i32 %.185.i472875, 1
  %i.kk = getelementptr inbounds nuw i8, ptr %.182.i473876, i64 32 ; 2 uses
  %.not93.i476 = icmp eq ptr %i.kk, %i.hk
  br i1 %.not93.i476, label %zend_array_dup_elements.exit480, label %.lr.ph879, !llvm.loop !121

bb.ay:                                            ; preds = %zend_array_dup_element.exit520
  %i.kl = load i32, ptr %i.gd, align 8, !tbaa !50 ; 6 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  store i32 %i.kl, ptr %i.km, align 8, !tbaa !50
  %i.kn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1112), align 8, !tbaa !86 ; 5 uses
  %i.ko = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1108), align 4, !tbaa !87 ; 2 uses
  %i.kp = zext i32 %i.ko to i64
  %.idx.i = shl nuw nsw i64 %i.kp, 4              ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 %.idx.i
  %.not15.i = icmp eq i32 %i.ko, 0
  br i1 %.not15.i, label %zend_hash_iterators_lower_pos.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.ay
  %i.kr = add nsw i64 %.idx.i, -16                ; 2 uses
  %i.ks = and i64 %i.kr, 16
  %lcmp.mod1158.not.not = icmp eq i64 %i.ks, 0
  br i1 %lcmp.mod1158.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.kt = load ptr, ptr %i.kn, align 8, !tbaa !89
  %i.ku = icmp eq ptr %i.kt, %i.a
  br i1 %i.ku, label %bb.az, label %.lr.ph.i.prol.loopexit.unr-lcssa

bb.az:                                            ; preds = %.lr.ph.i.prol
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i.prol = icmp ult i32 %i.kw, %i.ik
  %i.kx = tail call i32 @llvm.umin.i32(i32 %i.kw, i32 %i.kl)
  %spec.select.i.prol = select i1 %.not14.not.i.prol, i32 %i.kl, i32 %i.kx
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.az, %.lr.ph.i.prol
  %.1.i645.prol = phi i32 [ %spec.select.i.prol, %bb.az ], [ %i.kl, %.lr.ph.i.prol ] ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.1.i645.lcssa.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %.1.i645.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.017.i644.unr = phi i32 [ %i.kl, %.lr.ph.i.preheader ], [ %.1.i645.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.01216.i.unr = phi ptr [ %i.kn, %.lr.ph.i.preheader ], [ %i.ky, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.kz = icmp eq i64 %i.kr, 0
  br i1 %i.kz, label %zend_hash_iterators_lower_pos.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.bc
  %.017.i644 = phi i32 [ %.1.i645.1, %bb.bc ], [ %.017.i644.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.01216.i = phi ptr [ %i.ll, %bb.bc ], [ %.01216.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.la = load ptr, ptr %.01216.i, align 8, !tbaa !89
  %i.lb = icmp eq ptr %i.la, %i.a
  br i1 %i.lb, label %bb.ba, label %.lr.ph.i.1

bb.ba:                                            ; preds = %.lr.ph.i
  %i.lc = getelementptr inbounds nuw i8, ptr %.01216.i, i64 8
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i = icmp ult i32 %i.ld, %i.ik
  %i.le = tail call i32 @llvm.umin.i32(i32 %i.ld, i32 %.017.i644)
  %spec.select.i = select i1 %.not14.not.i, i32 %.017.i644, i32 %i.le
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.ba, %.lr.ph.i
  %.1.i645 = phi i32 [ %spec.select.i, %bb.ba ], [ %.017.i644, %.lr.ph.i ] ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.01216.i, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !89
  %i.lh = icmp eq ptr %i.lg, %i.a
  br i1 %i.lh, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph.i.1
  %i.li = getelementptr inbounds nuw i8, ptr %.01216.i, i64 24
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i.1 = icmp ult i32 %i.lj, %i.ik
  %i.lk = tail call i32 @llvm.umin.i32(i32 %i.lj, i32 %.1.i645)
  %spec.select.i.1 = select i1 %.not14.not.i.1, i32 %.1.i645, i32 %i.lk
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.lr.ph.i.1
  %.1.i645.1 = phi i32 [ %spec.select.i.1, %bb.bb ], [ %.1.i645, %.lr.ph.i.1 ] ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.01216.i, i64 32 ; 2 uses
  %.not.i646.1 = icmp eq ptr %i.ll, %i.kq
  br i1 %.not.i646.1, label %zend_hash_iterators_lower_pos.exit, label %.lr.ph.i, !llvm.loop !0

zend_hash_iterators_lower_pos.exit:               ; preds = %.lr.ph.i.prol.loopexit, %bb.bc, %bb.ay
  %.0.lcssa.i = phi i32 [ %i.kl, %bb.ay ], [ %.1.i645.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.1.i645.1, %bb.bc ]
  %.not91.i462862 = icmp eq ptr %i.il, %i.hk
  br i1 %.not91.i462862, label %zend_array_dup_elements.exit480, label %.lr.ph872

.lr.ph872:                                        ; preds = %zend_hash_iterators_lower_pos.exit, %zend_array_dup_element.exit508
  %.0.i461871 = phi i32 [ %.3.i465, %zend_array_dup_element.exit508 ], [ %.0.lcssa.i, %zend_hash_iterators_lower_pos.exit ] ; 5 uses
  %.274.i460869 = phi i32 [ %.375.i464, %zend_array_dup_element.exit508 ], [ %.084.i453, %zend_hash_iterators_lower_pos.exit ] ; 7 uses
  %.379.i459868 = phi ptr [ %.480.i463, %zend_array_dup_element.exit508 ], [ %.076.i455, %zend_hash_iterators_lower_pos.exit ] ; 7 uses
  %.283.i458867 = phi ptr [ %i.qh, %zend_array_dup_element.exit508 ], [ %i.il, %zend_hash_iterators_lower_pos.exit ] ; 6 uses
  %.286.i457863 = phi i32 [ %i.qg, %zend_array_dup_element.exit508 ], [ %i.ik, %zend_hash_iterators_lower_pos.exit ] ; 6 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.283.i458867, i64 8
  %i.ln = load i32, ptr %i.lm, align 8            ; 2 uses
  %i.lo = icmp eq i32 %i.ln, 12
  br i1 %i.lo, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph872
  %i.lp = load ptr, ptr %.283.i458867, align 8, !tbaa !31 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lr = load i32, ptr %i.lq, align 8            ; 2 uses
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %zend_array_dup_element.exit508, label %bb.be, !prof !30

bb.be:                                            ; preds = %bb.bd, %.lr.ph872
  %i.lt = phi i32 [ %i.lr, %bb.bd ], [ %i.ln, %.lr.ph872 ] ; 2 uses
  %.1.i.i497 = phi ptr [ %i.lp, %bb.bd ], [ %.283.i458867, %.lr.ph872 ] ; 5 uses
  %i.lu = and i32 %i.lt, 65280
  %.not.i22.i498 = icmp eq i32 %i.lu, 0
  br i1 %.not.i22.i498, label %bb.bl, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lv = and i32 %i.lt, 255
  %i.lw = icmp eq i32 %i.lv, 10
  br i1 %i.lw, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  %i.lx = load ptr, ptr %.1.i.i497, align 8, !tbaa !31 ; 3 uses
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !49
  %i.lz = icmp eq i32 %i.ly, 1
  br i1 %i.lz, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 8 ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 16 ; 2 uses
  %i.mc = load i8, ptr %i.mb, align 8, !tbaa !31
  %.not27.i.i505 = icmp eq i8 %i.mc, 7
  br i1 %.not27.i.i505, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.md = load ptr, ptr %i.ma, align 8, !tbaa !31
  %.not28.i.i507 = icmp eq ptr %i.md, %0
  br i1 %.not28.i.i507, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.me = load i32, ptr %i.mb, align 8, !tbaa !31
  %i.mf = and i32 %i.me, 65280
  %.not29.i.i506 = icmp eq i32 %i.mf, 0
  br i1 %.not29.i.i506, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bg, %bb.bf
  %.2.i.i499 = phi ptr [ %i.ma, %bb.bj ], [ %.1.i.i497, %bb.bi ], [ %.1.i.i497, %bb.bg ], [ %.1.i.i497, %bb.bf ] ; 2 uses
  %i.mg = load ptr, ptr %.2.i.i499, align 8, !tbaa !31 ; 2 uses
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !49
  %i.mi = add i32 %i.mh, 1
  store i32 %i.mi, ptr %i.mg, align 4, !tbaa !49
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.be
  %.3.i.i500 = phi ptr [ %.2.i.i499, %bb.bk ], [ %i.ma, %bb.bj ], [ %.1.i.i497, %bb.be ] ; 2 uses
  %i.mj = load ptr, ptr %.3.i.i500, align 8, !tbaa !31
  %i.mk = getelementptr inbounds nuw i8, ptr %.3.i.i500, i64 8
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !31
  store ptr %i.mj, ptr %.379.i459868, align 8, !tbaa !31
  %i.mm = getelementptr inbounds nuw i8, ptr %.379.i459868, i64 8
  store i32 %i.ml, ptr %i.mm, align 8, !tbaa !31
  %i.mn = getelementptr inbounds nuw i8, ptr %.283.i458867, i64 16
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !46 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.379.i459868, i64 16
  store i64 %i.mo, ptr %i.mp, align 8, !tbaa !46
  %i.mq = getelementptr inbounds nuw i8, ptr %.283.i458867, i64 24
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !44
  %i.ms = getelementptr inbounds nuw i8, ptr %.379.i459868, i64 24
  store ptr %i.mr, ptr %i.ms, align 8, !tbaa !44
  %i.mt = load i32, ptr %i.fx, align 4, !tbaa !39
  %i.mu = trunc i64 %i.mo to i32
  %i.mv = or i32 %i.mt, %i.mu
  %i.mw = load ptr, ptr %i.gw, align 8, !tbaa !31
  %i.mx = sext i32 %i.mv to i64                   ; 2 uses
  %i.my = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.mx
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !40
  %i.na = getelementptr inbounds nuw i8, ptr %.379.i459868, i64 12
  store i32 %i.mz, ptr %i.na, align 4, !tbaa !31
  %i.nb = load ptr, ptr %i.gw, align 8, !tbaa !31
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.nb, i64 %i.mx
  store i32 %.274.i460869, ptr %i.nc, align 4, !tbaa !40
  %i.nd = load i32, ptr %i.gb, align 4, !tbaa !52
  %i.ne = icmp eq i32 %i.nd, %.286.i457863
  br i1 %i.ne, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 %.274.i460869, ptr %i.gg, align 4, !tbaa !52
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.not92.i466 = icmp ult i32 %.286.i457863, %.0.i461871
  br i1 %.not92.i466, label %.loopexit818, label %.preheader817, !prof !45

.preheader817:                                    ; preds = %bb.bn
  %i.nf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1112), align 8 ; 13 uses
  %i.ng = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1108), align 4 ; 2 uses
  %i.nh = zext i32 %i.ng to i64
  %.idx.i647 = shl nuw nsw i64 %i.nh, 4           ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nf, i64 %.idx.i647 ; 3 uses
  %.not9.i = icmp eq i32 %i.ng, 0                 ; 3 uses
  %i.nj = load i8, ptr %i.im, align 2, !tbaa !31
  %i.nk = icmp eq i8 %i.nj, 0
  br i1 %i.nk, label %.preheader817.split.us, label %.preheader817.split.preheader, !prof !45

.preheader817.split.preheader:                    ; preds = %.preheader817
  %i.nl = add nsw i64 %.idx.i647, -16             ; 4 uses
  %i.nm = and i64 %i.nl, 16
  %lcmp.mod1160.not.not = icmp eq i64 %i.nm, 0
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nf, i64 8 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nf, i64 16 ; 3 uses
  %i.np = icmp eq i64 %i.nl, 0
  %i.nq = and i64 %i.nl, 16
  %lcmp.mod1162.not.not = icmp eq i64 %i.nq, 0
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nf, i64 16 ; 2 uses
  %i.nt = icmp eq i64 %i.nl, 0
  br label %.preheader817.split

.preheader817.split.us:                           ; preds = %.preheader817
  %i.nu = load i32, ptr %i.km, align 8, !tbaa !50 ; 7 uses
  br i1 %.not9.i, label %.preheader817.split.us.split.us, label %zend_hash_iterators_update.exit.i469.us.preheader

zend_hash_iterators_update.exit.i469.us.preheader: ; preds = %.preheader817.split.us
  %i.nv = add nsw i64 %.idx.i647, -16             ; 2 uses
  %i.nw = and i64 %i.nv, 16
  %lcmp.mod1164.not.not = icmp eq i64 %i.nw, 0
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nf, i64 16 ; 2 uses
  %i.nz = icmp eq i64 %i.nv, 0
  br label %zend_hash_iterators_update.exit.i469.us

.preheader817.split.us.split.us:                  ; preds = %.preheader817.split.us
  %i.oa = icmp ult i32 %i.nu, %.286.i457863
  br i1 %i.oa, label %zend_hash_iterators_update.exit.i469.us.us, label %.loopexit818, !llvm.loop !122

zend_hash_iterators_update.exit.i469.us.us:       ; preds = %.preheader817.split.us.split.us, %zend_hash_iterators_update.exit.i469.us.us
  br label %zend_hash_iterators_update.exit.i469.us.us

zend_hash_iterators_update.exit.i469.us:          ; preds = %zend_hash_iterators_update.exit.i469.us.preheader, %zend_hash_iterators_lower_pos.exit660.loopexit.us
  %.1.i467.us = phi i32 [ %.1.i655.us.lcssa, %zend_hash_iterators_lower_pos.exit660.loopexit.us ], [ %.0.i461871, %zend_hash_iterators_update.exit.i469.us.preheader ]
  %i.ob = add i32 %.1.i467.us, 1                  ; 3 uses
  br i1 %lcmp.mod1164.not.not, label %.lr.ph.i652.us.prol, label %.lr.ph.i652.us.prol.loopexit

.lr.ph.i652.us.prol:                              ; preds = %zend_hash_iterators_update.exit.i469.us
  %i.oc = load ptr, ptr %i.nf, align 8, !tbaa !89
  %i.od = icmp eq ptr %i.oc, %i.a
  br i1 %i.od, label %bb.bo, label %.lr.ph.i652.us.prol.loopexit

bb.bo:                                            ; preds = %.lr.ph.i652.us.prol
  %i.oe = load i32, ptr %i.nx, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i658.us.prol = icmp ult i32 %i.oe, %i.ob
  %i.of = tail call i32 @llvm.umin.i32(i32 %i.oe, i32 %i.nu)
  %spec.select.i659.us.prol = select i1 %.not14.not.i658.us.prol, i32 %i.nu, i32 %i.of ; 2 uses
  br label %.lr.ph.i652.us.prol.loopexit

.lr.ph.i652.us.prol.loopexit:                     ; preds = %.lr.ph.i652.us.prol, %bb.bo, %zend_hash_iterators_update.exit.i469.us
  %.1.i655.us.lcssa.unr = phi i32 [ poison, %zend_hash_iterators_update.exit.i469.us ], [ %spec.select.i659.us.prol, %bb.bo ], [ %i.nu, %.lr.ph.i652.us.prol ]
  %.017.i653.us.unr = phi i32 [ %i.nu, %zend_hash_iterators_update.exit.i469.us ], [ %spec.select.i659.us.prol, %bb.bo ], [ %i.nu, %.lr.ph.i652.us.prol ]
  %.01216.i654.us.unr = phi ptr [ %i.nf, %zend_hash_iterators_update.exit.i469.us ], [ %i.ny, %bb.bo ], [ %i.ny, %.lr.ph.i652.us.prol ]
  br i1 %i.nz, label %zend_hash_iterators_lower_pos.exit660.loopexit.us, label %.lr.ph.i652.us

.lr.ph.i652.us:                                   ; preds = %.lr.ph.i652.us.prol.loopexit, %bb.br
  %.017.i653.us = phi i32 [ %.1.i655.us.1, %bb.br ], [ %.017.i653.us.unr, %.lr.ph.i652.us.prol.loopexit ] ; 3 uses
  %.01216.i654.us = phi ptr [ %i.or, %bb.br ], [ %.01216.i654.us.unr, %.lr.ph.i652.us.prol.loopexit ] ; 5 uses
  %i.og = load ptr, ptr %.01216.i654.us, align 8, !tbaa !89
  %i.oh = icmp eq ptr %i.og, %i.a
  br i1 %i.oh, label %bb.bp, label %.lr.ph.i652.us.1

bb.bp:                                            ; preds = %.lr.ph.i652.us
  %i.oi = getelementptr inbounds nuw i8, ptr %.01216.i654.us, i64 8
  %i.oj = load i32, ptr %i.oi, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i658.us = icmp ult i32 %i.oj, %i.ob
  %i.ok = tail call i32 @llvm.umin.i32(i32 %i.oj, i32 %.017.i653.us)
  %spec.select.i659.us = select i1 %.not14.not.i658.us, i32 %.017.i653.us, i32 %i.ok
  br label %.lr.ph.i652.us.1

.lr.ph.i652.us.1:                                 ; preds = %bb.bp, %.lr.ph.i652.us
  %.1.i655.us = phi i32 [ %spec.select.i659.us, %bb.bp ], [ %.017.i653.us, %.lr.ph.i652.us ] ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.01216.i654.us, i64 16
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !89
  %i.on = icmp eq ptr %i.om, %i.a
  br i1 %i.on, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %.lr.ph.i652.us.1
  %i.oo = getelementptr inbounds nuw i8, ptr %.01216.i654.us, i64 24
  %i.op = load i32, ptr %i.oo, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i658.us.1 = icmp ult i32 %i.op, %i.ob
  %i.oq = tail call i32 @llvm.umin.i32(i32 %i.op, i32 %.1.i655.us)
  %spec.select.i659.us.1 = select i1 %.not14.not.i658.us.1, i32 %.1.i655.us, i32 %i.oq
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.lr.ph.i652.us.1
  %.1.i655.us.1 = phi i32 [ %spec.select.i659.us.1, %bb.bq ], [ %.1.i655.us, %.lr.ph.i652.us.1 ] ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.01216.i654.us, i64 32 ; 2 uses
  %.not.i656.us.1 = icmp eq ptr %i.or, %i.ni
  br i1 %.not.i656.us.1, label %zend_hash_iterators_lower_pos.exit660.loopexit.us, label %.lr.ph.i652.us, !llvm.loop !0

zend_hash_iterators_lower_pos.exit660.loopexit.us: ; preds = %bb.br, %.lr.ph.i652.us.prol.loopexit
  %.1.i655.us.lcssa = phi i32 [ %.1.i655.us.lcssa.unr, %.lr.ph.i652.us.prol.loopexit ], [ %.1.i655.us.1, %bb.br ] ; 3 uses
  %i.os = icmp ult i32 %.1.i655.us.lcssa, %.286.i457863
  br i1 %i.os, label %zend_hash_iterators_update.exit.i469.us, label %.loopexit818, !llvm.loop !122

.preheader817.splitthread-pre-split:              ; preds = %zend_hash_iterators_lower_pos.exit660
  %.pr = load i8, ptr %i.im, align 2, !tbaa !31
  br label %.preheader817.split

.preheader817.split:                              ; preds = %.preheader817.split.preheader, %.preheader817.splitthread-pre-split
  %i.ot = phi i8 [ %.pr, %.preheader817.splitthread-pre-split ], [ 1, %.preheader817.split.preheader ]
  %.1.i467 = phi i32 [ %.0.lcssa.i657, %.preheader817.splitthread-pre-split ], [ %.0.i461871, %.preheader817.split.preheader ] ; 4 uses
  %.not.i.i468 = icmp eq i8 %i.ot, 0
  br i1 %.not.i.i468, label %zend_hash_iterators_update.exit.i469, label %bb.bs, !prof !45

bb.bs:                                            ; preds = %.preheader817.split
  br i1 %.not9.i, label %zend_hash_iterators_update.exit.i469.thread, label %.lr.ph.i648.preheader

.lr.ph.i648.preheader:                            ; preds = %bb.bs
  br i1 %lcmp.mod1160.not.not, label %.lr.ph.i648.prol, label %.lr.ph.i648.prol.loopexit

.lr.ph.i648.prol:                                 ; preds = %.lr.ph.i648.preheader
  %i.ou = load ptr, ptr %i.nf, align 8, !tbaa !89
  %i.ov = icmp eq ptr %i.ou, %i.a
  br i1 %i.ov, label %bb.bt, label %.lr.ph.i648.prol.loopexit

bb.bt:                                            ; preds = %.lr.ph.i648.prol
  %i.ow = load i32, ptr %i.nn, align 8, !tbaa !90
  %i.ox = icmp eq i32 %i.ow, %.1.i467
  br i1 %i.ox, label %bb.bu, label %.lr.ph.i648.prol.loopexit

bb.bu:                                            ; preds = %bb.bt
  store i32 %.274.i460869, ptr %i.nn, align 8, !tbaa !90
  br label %.lr.ph.i648.prol.loopexit

.lr.ph.i648.prol.loopexit:                        ; preds = %.lr.ph.i648.prol, %bb.bt, %bb.bu, %.lr.ph.i648.preheader
  %.010.i.unr = phi ptr [ %i.nf, %.lr.ph.i648.preheader ], [ %i.no, %bb.bu ], [ %i.no, %bb.bt ], [ %i.no, %.lr.ph.i648.prol ]
  br i1 %i.np, label %zend_hash_iterators_update.exit.i469, label %.lr.ph.i648

zend_hash_iterators_update.exit.i469.thread:      ; preds = %bb.bs
  %i.oy = load i32, ptr %i.km, align 8, !tbaa !50
  br label %zend_hash_iterators_lower_pos.exit660

.lr.ph.i648:                                      ; preds = %.lr.ph.i648.prol.loopexit, %bb.bz
  %.010.i = phi ptr [ %i.pk, %bb.bz ], [ %.010.i.unr, %.lr.ph.i648.prol.loopexit ] ; 5 uses
  %i.oz = load ptr, ptr %.010.i, align 8, !tbaa !89
  %i.pa = icmp eq ptr %i.oz, %i.a
  br i1 %i.pa, label %bb.bv, label %.lr.ph.i648.1

bb.bv:                                            ; preds = %.lr.ph.i648
  %i.pb = getelementptr inbounds nuw i8, ptr %.010.i, i64 8 ; 2 uses
  %i.pc = load i32, ptr %i.pb, align 8, !tbaa !90
  %i.pd = icmp eq i32 %i.pc, %.1.i467
  br i1 %i.pd, label %bb.bw, label %.lr.ph.i648.1

bb.bw:                                            ; preds = %bb.bv
  store i32 %.274.i460869, ptr %i.pb, align 8, !tbaa !90
  br label %.lr.ph.i648.1

.lr.ph.i648.1:                                    ; preds = %bb.bw, %bb.bv, %.lr.ph.i648
  %i.pe = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !89
  %i.pg = icmp eq ptr %i.pf, %i.a
  br i1 %i.pg, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %.lr.ph.i648.1
  %i.ph = getelementptr inbounds nuw i8, ptr %.010.i, i64 24 ; 2 uses
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !90
  %i.pj = icmp eq i32 %i.pi, %.1.i467
  br i1 %i.pj, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store i32 %.274.i460869, ptr %i.ph, align 8, !tbaa !90
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %.lr.ph.i648.1
  %i.pk = getelementptr inbounds nuw i8, ptr %.010.i, i64 32 ; 2 uses
  %.not.i649.1 = icmp eq ptr %i.pk, %i.ni
  br i1 %.not.i649.1, label %zend_hash_iterators_update.exit.i469, label %.lr.ph.i648, !llvm.loop !1

zend_hash_iterators_update.exit.i469:             ; preds = %.lr.ph.i648.prol.loopexit, %bb.bz, %.preheader817.split
  %i.pl = add i32 %.1.i467, 1                     ; 3 uses
  %i.pm = load i32, ptr %i.km, align 8, !tbaa !50 ; 6 uses
  br i1 %.not9.i, label %zend_hash_iterators_lower_pos.exit660, label %.lr.ph.i652.preheader

.lr.ph.i652.preheader:                            ; preds = %zend_hash_iterators_update.exit.i469
  br i1 %lcmp.mod1162.not.not, label %.lr.ph.i652.prol, label %.lr.ph.i652.prol.loopexit

.lr.ph.i652.prol:                                 ; preds = %.lr.ph.i652.preheader
  %i.pn = load ptr, ptr %i.nf, align 8, !tbaa !89
  %i.po = icmp eq ptr %i.pn, %i.a
  br i1 %i.po, label %bb.ca, label %.lr.ph.i652.prol.loopexit

bb.ca:                                            ; preds = %.lr.ph.i652.prol
  %i.pp = load i32, ptr %i.nr, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i658.prol = icmp ult i32 %i.pp, %i.pl
  %i.pq = tail call i32 @llvm.umin.i32(i32 %i.pp, i32 %i.pm)
  %spec.select.i659.prol = select i1 %.not14.not.i658.prol, i32 %i.pm, i32 %i.pq ; 2 uses
  br label %.lr.ph.i652.prol.loopexit

.lr.ph.i652.prol.loopexit:                        ; preds = %.lr.ph.i652.prol, %bb.ca, %.lr.ph.i652.preheader
  %.1.i655.lcssa.unr = phi i32 [ poison, %.lr.ph.i652.preheader ], [ %spec.select.i659.prol, %bb.ca ], [ %i.pm, %.lr.ph.i652.prol ]
  %.017.i653.unr = phi i32 [ %i.pm, %.lr.ph.i652.preheader ], [ %spec.select.i659.prol, %bb.ca ], [ %i.pm, %.lr.ph.i652.prol ]
  %.01216.i654.unr = phi ptr [ %i.nf, %.lr.ph.i652.preheader ], [ %i.ns, %bb.ca ], [ %i.ns, %.lr.ph.i652.prol ]
  br i1 %i.nt, label %zend_hash_iterators_lower_pos.exit660, label %.lr.ph.i652

.lr.ph.i652:                                      ; preds = %.lr.ph.i652.prol.loopexit, %bb.cd
  %.017.i653 = phi i32 [ %.1.i655.1, %bb.cd ], [ %.017.i653.unr, %.lr.ph.i652.prol.loopexit ] ; 3 uses
  %.01216.i654 = phi ptr [ %i.qc, %bb.cd ], [ %.01216.i654.unr, %.lr.ph.i652.prol.loopexit ] ; 5 uses
  %i.pr = load ptr, ptr %.01216.i654, align 8, !tbaa !89
  %i.ps = icmp eq ptr %i.pr, %i.a
  br i1 %i.ps, label %bb.cb, label %.lr.ph.i652.1

bb.cb:                                            ; preds = %.lr.ph.i652
  %i.pt = getelementptr inbounds nuw i8, ptr %.01216.i654, i64 8
  %i.pu = load i32, ptr %i.pt, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i658 = icmp ult i32 %i.pu, %i.pl
  %i.pv = tail call i32 @llvm.umin.i32(i32 %i.pu, i32 %.017.i653)
  %spec.select.i659 = select i1 %.not14.not.i658, i32 %.017.i653, i32 %i.pv
  br label %.lr.ph.i652.1

.lr.ph.i652.1:                                    ; preds = %bb.cb, %.lr.ph.i652
  %.1.i655 = phi i32 [ %spec.select.i659, %bb.cb ], [ %.017.i653, %.lr.ph.i652 ] ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %.01216.i654, i64 16
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !89
  %i.py = icmp eq ptr %i.px, %i.a
  br i1 %i.py, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %.lr.ph.i652.1
  %i.pz = getelementptr inbounds nuw i8, ptr %.01216.i654, i64 24
  %i.qa = load i32, ptr %i.pz, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i658.1 = icmp ult i32 %i.qa, %i.pl
  %i.qb = tail call i32 @llvm.umin.i32(i32 %i.qa, i32 %.1.i655)
  %spec.select.i659.1 = select i1 %.not14.not.i658.1, i32 %.1.i655, i32 %i.qb
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %.lr.ph.i652.1
  %.1.i655.1 = phi i32 [ %spec.select.i659.1, %bb.cc ], [ %.1.i655, %.lr.ph.i652.1 ] ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.01216.i654, i64 32 ; 2 uses
  %.not.i656.1 = icmp eq ptr %i.qc, %i.ni
  br i1 %.not.i656.1, label %zend_hash_iterators_lower_pos.exit660, label %.lr.ph.i652, !llvm.loop !0

zend_hash_iterators_lower_pos.exit660:            ; preds = %.lr.ph.i652.prol.loopexit, %bb.cd, %zend_hash_iterators_update.exit.i469.thread, %zend_hash_iterators_update.exit.i469
  %.0.lcssa.i657 = phi i32 [ %i.pm, %zend_hash_iterators_update.exit.i469 ], [ %i.oy, %zend_hash_iterators_update.exit.i469.thread ], [ %.1.i655.lcssa.unr, %.lr.ph.i652.prol.loopexit ], [ %.1.i655.1, %bb.cd ] ; 3 uses
  %i.qd = icmp ult i32 %.0.lcssa.i657, %.286.i457863
  br i1 %i.qd, label %.preheader817.splitthread-pre-split, label %.loopexit818, !llvm.loop !123

.loopexit818:                                     ; preds = %zend_hash_iterators_lower_pos.exit660, %zend_hash_iterators_lower_pos.exit660.loopexit.us, %.preheader817.split.us.split.us, %bb.bn
  %.2.i470 = phi i32 [ %.0.i461871, %bb.bn ], [ %.1.i655.us.lcssa, %zend_hash_iterators_lower_pos.exit660.loopexit.us ], [ %i.nu, %.preheader817.split.us.split.us ], [ %.0.lcssa.i657, %zend_hash_iterators_lower_pos.exit660 ]
  %i.qe = add i32 %.274.i460869, 1
  %i.qf = getelementptr inbounds nuw i8, ptr %.379.i459868, i64 32
  br label %zend_array_dup_element.exit508

zend_array_dup_element.exit508:                   ; preds = %bb.bd, %.loopexit818
  %.480.i463 = phi ptr [ %i.qf, %.loopexit818 ], [ %.379.i459868, %bb.bd ]
  %.375.i464 = phi i32 [ %i.qe, %.loopexit818 ], [ %.274.i460869, %bb.bd ] ; 2 uses
  %.3.i465 = phi i32 [ %.2.i470, %.loopexit818 ], [ %.0.i461871, %bb.bd ]
  %i.qg = add i32 %.286.i457863, 1
  %i.qh = getelementptr inbounds nuw i8, ptr %.283.i458867, i64 32 ; 2 uses
  %.not91.i462 = icmp eq ptr %i.qh, %i.hk
  br i1 %.not91.i462, label %zend_array_dup_elements.exit480, label %.lr.ph872, !llvm.loop !124

bb.ce:                                            ; preds = %bb.am, %bb.al, %bb.ag
  %.3.i.i512 = phi ptr [ %.2.i.i511, %bb.am ], [ %i.ib, %bb.al ], [ %.1.i.i509, %bb.ag ] ; 2 uses
  %i.qi = load ptr, ptr %.3.i.i512, align 8, !tbaa !31
  %i.qj = getelementptr inbounds nuw i8, ptr %.3.i.i512, i64 8
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !31
  store ptr %i.qi, ptr %.076.i455, align 8, !tbaa !31
  %i.ql = getelementptr inbounds nuw i8, ptr %.076.i455, i64 8
  store i32 %i.qk, ptr %i.ql, align 8, !tbaa !31
  %i.qm = getelementptr inbounds nuw i8, ptr %.081.i454, i64 16
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !46 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.076.i455, i64 16
  store i64 %i.qn, ptr %i.qo, align 8, !tbaa !46
  %i.qp = getelementptr inbounds nuw i8, ptr %.081.i454, i64 24
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !44
  %i.qr = getelementptr inbounds nuw i8, ptr %.076.i455, i64 24
  store ptr %i.qq, ptr %i.qr, align 8, !tbaa !44
  %i.qs = load i32, ptr %i.fx, align 4, !tbaa !39
  %i.qt = trunc i64 %i.qn to i32
  %i.qu = or i32 %i.qs, %i.qt
  %i.qv = load ptr, ptr %i.gw, align 8, !tbaa !31
  %i.qw = sext i32 %i.qu to i64
  %i.qx = getelementptr inbounds [4 x i8], ptr %i.qv, i64 %i.qw ; 2 uses
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !40
  %i.qz = getelementptr inbounds nuw i8, ptr %.076.i455, i64 12
  store i32 %i.qy, ptr %i.qz, align 4, !tbaa !31
  store i32 %.084.i453, ptr %i.qx, align 4, !tbaa !40
  %i.ra = add i32 %.084.i453, 1                   ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %.081.i454, i64 32 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.076.i455, i64 32
  %.not94.i479 = icmp eq ptr %i.rb, %i.hk
  br i1 %.not94.i479, label %zend_array_dup_elements.exit480, label %bb.ae, !llvm.loop !125

bb.cf:                                            ; preds = %bb.ab
  br i1 %.not.i394, label %.preheader1145, label %bb.cg, !prof !45

bb.cg:                                            ; preds = %bb.cf
  tail call fastcc void @zend_array_dup_ht_iterators(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  br label %.preheader1145

.preheader1145:                                   ; preds = %bb.cg, %bb.cf
  br label %bb.ch

bb.ch:                                            ; preds = %.preheader1145, %bb.ek
  %.084.i424 = phi i32 [ %i.aak, %bb.ek ], [ 0, %.preheader1145 ] ; 7 uses
  %.081.i425 = phi ptr [ %i.aal, %bb.ek ], [ %i.hi, %.preheader1145 ] ; 7 uses
  %.076.i426 = phi ptr [ %i.aam, %bb.ek ], [ %i.gv, %.preheader1145 ] ; 8 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.081.i425, i64 8
  %i.re = load i32, ptr %i.rd, align 8            ; 2 uses
  %i.rf = icmp eq i32 %i.re, 12
  br i1 %i.rf, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.rg = load ptr, ptr %.081.i425, align 8, !tbaa !31 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.rh = phi i32 [ %i.re, %bb.ch ], [ %.pre, %bb.ci ] ; 3 uses
  %.026.i.i546 = phi ptr [ %.081.i425, %bb.ch ], [ %i.rg, %bb.ci ] ; 5 uses
  %i.ri = icmp eq i32 %i.rh, 0
  br i1 %i.ri, label %zend_array_dup_element.exit558, label %bb.ck, !prof !30

bb.ck:                                            ; preds = %bb.cj
  %i.rj = and i32 %i.rh, 65280
  %.not.i22.i548 = icmp eq i32 %i.rj, 0
  br i1 %.not.i22.i548, label %bb.ek, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.rk = and i32 %i.rh, 255
  %i.rl = icmp eq i32 %i.rk, 10
  br i1 %i.rl, label %bb.cm, label %bb.cq

bb.cm:                                            ; preds = %bb.cl
  %i.rm = load ptr, ptr %.026.i.i546, align 8, !tbaa !31 ; 3 uses
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !49
  %i.ro = icmp eq i32 %i.rn, 1
  br i1 %i.ro, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rm, i64 8 ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rm, i64 16 ; 2 uses
  %i.rr = load i8, ptr %i.rq, align 8, !tbaa !31
  %.not27.i.i555 = icmp eq i8 %i.rr, 7
  br i1 %.not27.i.i555, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.rs = load ptr, ptr %i.rp, align 8, !tbaa !31
  %.not28.i.i557 = icmp eq ptr %i.rs, %0
  br i1 %.not28.i.i557, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.rt = load i32, ptr %i.rq, align 8, !tbaa !31
  %i.ru = and i32 %i.rt, 65280
  %.not29.i.i556 = icmp eq i32 %i.ru, 0
  br i1 %.not29.i.i556, label %bb.ek, label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.cm, %bb.cl
  %.2.i.i549 = phi ptr [ %i.rp, %bb.cp ], [ %.026.i.i546, %bb.co ], [ %.026.i.i546, %bb.cm ], [ %.026.i.i546, %bb.cl ] ; 2 uses
  %i.rv = load ptr, ptr %.2.i.i549, align 8, !tbaa !31 ; 2 uses
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !49
  %i.rx = add i32 %i.rw, 1
  store i32 %i.rx, ptr %i.rv, align 4, !tbaa !49
  br label %bb.ek

zend_array_dup_element.exit558:                   ; preds = %bb.cj
  %i.ry = add i32 %.084.i424, 1                   ; 5 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.081.i425, i64 32 ; 4 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 3 uses
  %i.sb = load i8, ptr %i.sa, align 2, !tbaa !31
  %.not90.i427 = icmp eq i8 %i.sb, 0
  br i1 %.not90.i427, label %.preheader821, label %bb.dd, !prof !45

.preheader821:                                    ; preds = %zend_array_dup_element.exit558
  %.not93.i447853 = icmp eq ptr %i.rz, %i.hk
  br i1 %.not93.i447853, label %zend_array_dup_elements.exit480, label %.lr.ph858

.lr.ph858:                                        ; preds = %.preheader821, %zend_array_dup_element.exit532
  %.072.i446857 = phi i32 [ %.173.i449, %zend_array_dup_element.exit532 ], [ %.084.i424, %.preheader821 ] ; 4 uses
  %.177.i445856 = phi ptr [ %.278.i448, %zend_array_dup_element.exit532 ], [ %.076.i426, %.preheader821 ] ; 7 uses
  %.182.i444855 = phi ptr [ %i.tw, %zend_array_dup_element.exit532 ], [ %i.rz, %.preheader821 ] ; 6 uses
  %.185.i443854 = phi i32 [ %i.tv, %zend_array_dup_element.exit532 ], [ %i.ry, %.preheader821 ] ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.182.i444855, i64 8
  %i.sd = load i32, ptr %i.sc, align 8            ; 2 uses
  %i.se = icmp eq i32 %i.sd, 12
  br i1 %i.se, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %.lr.ph858
  %i.sf = load ptr, ptr %.182.i444855, align 8, !tbaa !31 ; 2 uses
  %.phi.trans.insert955 = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %.pre956 = load i32, ptr %.phi.trans.insert955, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %.lr.ph858
  %i.sg = phi i32 [ %i.sd, %.lr.ph858 ], [ %.pre956, %bb.cr ] ; 3 uses
  %.026.i.i = phi ptr [ %.182.i444855, %.lr.ph858 ], [ %i.sf, %bb.cr ] ; 5 uses
  %i.sh = icmp eq i32 %i.sg, 0
  br i1 %i.sh, label %zend_array_dup_element.exit532, label %bb.ct, !prof !30

bb.ct:                                            ; preds = %bb.cs
  %i.si = and i32 %i.sg, 65280
  %.not.i22.i522 = icmp eq i32 %i.si, 0
  br i1 %.not.i22.i522, label %bb.da, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.sj = and i32 %i.sg, 255
  %i.sk = icmp eq i32 %i.sj, 10
  br i1 %i.sk, label %bb.cv, label %bb.cz

bb.cv:                                            ; preds = %bb.cu
  %i.sl = load ptr, ptr %.026.i.i, align 8, !tbaa !31 ; 3 uses
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !49
  %i.sn = icmp eq i32 %i.sm, 1
  br i1 %i.sn, label %bb.cw, label %bb.cz

bb.cw:                                            ; preds = %bb.cv
  %i.so = getelementptr inbounds nuw i8, ptr %i.sl, i64 8 ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sl, i64 16 ; 2 uses
  %i.sq = load i8, ptr %i.sp, align 8, !tbaa !31
  %.not27.i.i529 = icmp eq i8 %i.sq, 7
  br i1 %.not27.i.i529, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.sr = load ptr, ptr %i.so, align 8, !tbaa !31
  %.not28.i.i531 = icmp eq ptr %i.sr, %0
  br i1 %.not28.i.i531, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.ss = load i32, ptr %i.sp, align 8, !tbaa !31
  %i.st = and i32 %i.ss, 65280
  %.not29.i.i530 = icmp eq i32 %i.st, 0
  br i1 %.not29.i.i530, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cv, %bb.cu
  %.2.i.i523 = phi ptr [ %i.so, %bb.cy ], [ %.026.i.i, %bb.cx ], [ %.026.i.i, %bb.cv ], [ %.026.i.i, %bb.cu ] ; 2 uses
  %i.su = load ptr, ptr %.2.i.i523, align 8, !tbaa !31 ; 2 uses
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !49
  %i.sw = add i32 %i.sv, 1
  store i32 %i.sw, ptr %i.su, align 4, !tbaa !49
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %bb.ct
  %.3.i.i524 = phi ptr [ %.2.i.i523, %bb.cz ], [ %i.so, %bb.cy ], [ %.026.i.i, %bb.ct ] ; 2 uses
  %i.sx = load ptr, ptr %.3.i.i524, align 8, !tbaa !31
end_hunk_1
begin_hunk_2_@zend_array_dup:bb.a
  %i.tw = getelementptr inbounds nuw i8, ptr %.182.i444855, i64 32 ; 2 uses
  %.not93.i447 = icmp eq ptr %i.tw, %i.hk
  br i1 %.not93.i447, label %zend_array_dup_elements.exit480, label %.lr.ph858, !llvm.loop !121

bb.dd:                                            ; preds = %zend_array_dup_element.exit558
  %i.tx = load i32, ptr %i.gd, align 8, !tbaa !50 ; 6 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  store i32 %i.tx, ptr %i.ty, align 8, !tbaa !50
  %i.tz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1112), align 8, !tbaa !86 ; 5 uses
  %i.ua = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1108), align 4, !tbaa !87 ; 2 uses
  %i.ub = zext i32 %i.ua to i64
  %.idx.i661 = shl nuw nsw i64 %i.ub, 4           ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tz, i64 %.idx.i661
  %.not15.i662 = icmp eq i32 %i.ua, 0
  br i1 %.not15.i662, label %zend_hash_iterators_lower_pos.exit671, label %.lr.ph.i663.preheader

.lr.ph.i663.preheader:                            ; preds = %bb.dd
  %i.ud = add nsw i64 %.idx.i661, -16             ; 2 uses
  %i.ue = and i64 %i.ud, 16
  %lcmp.mod.not.not = icmp eq i64 %i.ue, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i663.prol, label %.lr.ph.i663.prol.loopexit

.lr.ph.i663.prol:                                 ; preds = %.lr.ph.i663.preheader
  %i.uf = load ptr, ptr %i.tz, align 8, !tbaa !89
  %i.ug = icmp eq ptr %i.uf, %i.a
  br i1 %i.ug, label %bb.de, label %.lr.ph.i663.prol.loopexit.unr-lcssa

bb.de:                                            ; preds = %.lr.ph.i663.prol
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.ui = load i32, ptr %i.uh, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i669.prol = icmp ult i32 %i.ui, %i.ry
  %i.uj = tail call i32 @llvm.umin.i32(i32 %i.ui, i32 %i.tx)
  %spec.select.i670.prol = select i1 %.not14.not.i669.prol, i32 %i.tx, i32 %i.uj
  br label %.lr.ph.i663.prol.loopexit.unr-lcssa

.lr.ph.i663.prol.loopexit.unr-lcssa:              ; preds = %bb.de, %.lr.ph.i663.prol
  %.1.i666.prol = phi i32 [ %spec.select.i670.prol, %bb.de ], [ %i.tx, %.lr.ph.i663.prol ] ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  br label %.lr.ph.i663.prol.loopexit

.lr.ph.i663.prol.loopexit:                        ; preds = %.lr.ph.i663.prol.loopexit.unr-lcssa, %.lr.ph.i663.preheader
  %.1.i666.lcssa.unr = phi i32 [ poison, %.lr.ph.i663.preheader ], [ %.1.i666.prol, %.lr.ph.i663.prol.loopexit.unr-lcssa ]
  %.017.i664.unr = phi i32 [ %i.tx, %.lr.ph.i663.preheader ], [ %.1.i666.prol, %.lr.ph.i663.prol.loopexit.unr-lcssa ]
  %.01216.i665.unr = phi ptr [ %i.tz, %.lr.ph.i663.preheader ], [ %i.uk, %.lr.ph.i663.prol.loopexit.unr-lcssa ]
  %i.ul = icmp eq i64 %i.ud, 0
  br i1 %i.ul, label %zend_hash_iterators_lower_pos.exit671, label %.lr.ph.i663

.lr.ph.i663:                                      ; preds = %.lr.ph.i663.prol.loopexit, %bb.dh
  %.017.i664 = phi i32 [ %.1.i666.1, %bb.dh ], [ %.017.i664.unr, %.lr.ph.i663.prol.loopexit ] ; 3 uses
  %.01216.i665 = phi ptr [ %i.ux, %bb.dh ], [ %.01216.i665.unr, %.lr.ph.i663.prol.loopexit ] ; 5 uses
  %i.um = load ptr, ptr %.01216.i665, align 8, !tbaa !89
  %i.un = icmp eq ptr %i.um, %i.a
  br i1 %i.un, label %bb.df, label %.lr.ph.i663.1

bb.df:                                            ; preds = %.lr.ph.i663
  %i.uo = getelementptr inbounds nuw i8, ptr %.01216.i665, i64 8
  %i.up = load i32, ptr %i.uo, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i669 = icmp ult i32 %i.up, %i.ry
  %i.uq = tail call i32 @llvm.umin.i32(i32 %i.up, i32 %.017.i664)
  %spec.select.i670 = select i1 %.not14.not.i669, i32 %.017.i664, i32 %i.uq
  br label %.lr.ph.i663.1

.lr.ph.i663.1:                                    ; preds = %bb.df, %.lr.ph.i663
  %.1.i666 = phi i32 [ %spec.select.i670, %bb.df ], [ %.017.i664, %.lr.ph.i663 ] ; 3 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %.01216.i665, i64 16
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !89
  %i.ut = icmp eq ptr %i.us, %i.a
  br i1 %i.ut, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %.lr.ph.i663.1
  %i.uu = getelementptr inbounds nuw i8, ptr %.01216.i665, i64 24
  %i.uv = load i32, ptr %i.uu, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i669.1 = icmp ult i32 %i.uv, %i.ry
  %i.uw = tail call i32 @llvm.umin.i32(i32 %i.uv, i32 %.1.i666)
  %spec.select.i670.1 = select i1 %.not14.not.i669.1, i32 %.1.i666, i32 %i.uw
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %.lr.ph.i663.1
  %.1.i666.1 = phi i32 [ %spec.select.i670.1, %bb.dg ], [ %.1.i666, %.lr.ph.i663.1 ] ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.01216.i665, i64 32 ; 2 uses
  %.not.i667.1 = icmp eq ptr %i.ux, %i.uc
  br i1 %.not.i667.1, label %zend_hash_iterators_lower_pos.exit671, label %.lr.ph.i663, !llvm.loop !0

zend_hash_iterators_lower_pos.exit671:            ; preds = %.lr.ph.i663.prol.loopexit, %bb.dh, %bb.dd
  %.0.lcssa.i668 = phi i32 [ %i.tx, %bb.dd ], [ %.1.i666.lcssa.unr, %.lr.ph.i663.prol.loopexit ], [ %.1.i666.1, %bb.dh ]
  %.not91.i433843 = icmp eq ptr %i.rz, %i.hk
  br i1 %.not91.i433843, label %zend_array_dup_elements.exit480, label %.lr.ph

.lr.ph:                                           ; preds = %zend_hash_iterators_lower_pos.exit671, %zend_array_dup_element.exit545
  %.0.i432852 = phi i32 [ %.3.i436, %zend_array_dup_element.exit545 ], [ %.0.lcssa.i668, %zend_hash_iterators_lower_pos.exit671 ] ; 5 uses
  %.274.i431850 = phi i32 [ %.375.i435, %zend_array_dup_element.exit545 ], [ %.084.i424, %zend_hash_iterators_lower_pos.exit671 ] ; 7 uses
  %.379.i430849 = phi ptr [ %.480.i434, %zend_array_dup_element.exit545 ], [ %.076.i426, %zend_hash_iterators_lower_pos.exit671 ] ; 7 uses
  %.283.i429848 = phi ptr [ %i.zr, %zend_array_dup_element.exit545 ], [ %i.rz, %zend_hash_iterators_lower_pos.exit671 ] ; 6 uses
  %.286.i428844 = phi i32 [ %i.zq, %zend_array_dup_element.exit545 ], [ %i.ry, %zend_hash_iterators_lower_pos.exit671 ] ; 6 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %.283.i429848, i64 8
  %i.uz = load i32, ptr %i.uy, align 8            ; 2 uses
  %i.va = icmp eq i32 %i.uz, 12
  br i1 %i.va, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %.lr.ph
  %i.vb = load ptr, ptr %.283.i429848, align 8, !tbaa !31 ; 2 uses
  %.phi.trans.insert953 = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  %.pre954 = load i32, ptr %.phi.trans.insert953, align 8
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %.lr.ph
  %i.vc = phi i32 [ %i.uz, %.lr.ph ], [ %.pre954, %bb.di ] ; 3 uses
  %.026.i.i533 = phi ptr [ %.283.i429848, %.lr.ph ], [ %i.vb, %bb.di ] ; 5 uses
  %i.vd = icmp eq i32 %i.vc, 0
  br i1 %i.vd, label %zend_array_dup_element.exit545, label %bb.dk, !prof !30

bb.dk:                                            ; preds = %bb.dj
  %i.ve = and i32 %i.vc, 65280
  %.not.i22.i535 = icmp eq i32 %i.ve, 0
  br i1 %.not.i22.i535, label %bb.dr, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.vf = and i32 %i.vc, 255
  %i.vg = icmp eq i32 %i.vf, 10
  br i1 %i.vg, label %bb.dm, label %bb.dq

bb.dm:                                            ; preds = %bb.dl
  %i.vh = load ptr, ptr %.026.i.i533, align 8, !tbaa !31 ; 3 uses
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !49
  %i.vj = icmp eq i32 %i.vi, 1
  br i1 %i.vj, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vh, i64 8 ; 3 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vh, i64 16 ; 2 uses
  %i.vm = load i8, ptr %i.vl, align 8, !tbaa !31
  %.not27.i.i542 = icmp eq i8 %i.vm, 7
  br i1 %.not27.i.i542, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.vn = load ptr, ptr %i.vk, align 8, !tbaa !31
  %.not28.i.i544 = icmp eq ptr %i.vn, %0
  br i1 %.not28.i.i544, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.vo = load i32, ptr %i.vl, align 8, !tbaa !31
  %i.vp = and i32 %i.vo, 65280
  %.not29.i.i543 = icmp eq i32 %i.vp, 0
  br i1 %.not29.i.i543, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do, %bb.dm, %bb.dl
  %.2.i.i536 = phi ptr [ %i.vk, %bb.dp ], [ %.026.i.i533, %bb.do ], [ %.026.i.i533, %bb.dm ], [ %.026.i.i533, %bb.dl ] ; 2 uses
  %i.vq = load ptr, ptr %.2.i.i536, align 8, !tbaa !31 ; 2 uses
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !49
  %i.vs = add i32 %i.vr, 1
  store i32 %i.vs, ptr %i.vq, align 4, !tbaa !49
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %bb.dk
  %.3.i.i537 = phi ptr [ %.2.i.i536, %bb.dq ], [ %i.vk, %bb.dp ], [ %.026.i.i533, %bb.dk ] ; 2 uses
  %i.vt = load ptr, ptr %.3.i.i537, align 8, !tbaa !31
  %i.vu = getelementptr inbounds nuw i8, ptr %.3.i.i537, i64 8
  %i.vv = load i32, ptr %i.vu, align 8, !tbaa !31
  store ptr %i.vt, ptr %.379.i430849, align 8, !tbaa !31
  %i.vw = getelementptr inbounds nuw i8, ptr %.379.i430849, i64 8
  store i32 %i.vv, ptr %i.vw, align 8, !tbaa !31
  %i.vx = getelementptr inbounds nuw i8, ptr %.283.i429848, i64 16
  %i.vy = load i64, ptr %i.vx, align 8, !tbaa !46 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.379.i430849, i64 16
  store i64 %i.vy, ptr %i.vz, align 8, !tbaa !46
  %i.wa = getelementptr inbounds nuw i8, ptr %.283.i429848, i64 24
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !44
  %i.wc = getelementptr inbounds nuw i8, ptr %.379.i430849, i64 24
  store ptr %i.wb, ptr %i.wc, align 8, !tbaa !44
  %i.wd = load i32, ptr %i.fx, align 4, !tbaa !39
  %i.we = trunc i64 %i.vy to i32
  %i.wf = or i32 %i.wd, %i.we
  %i.wg = load ptr, ptr %i.gw, align 8, !tbaa !31
  %i.wh = sext i32 %i.wf to i64                   ; 2 uses
  %i.wi = getelementptr inbounds [4 x i8], ptr %i.wg, i64 %i.wh
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !40
  %i.wk = getelementptr inbounds nuw i8, ptr %.379.i430849, i64 12
  store i32 %i.wj, ptr %i.wk, align 4, !tbaa !31
  %i.wl = load ptr, ptr %i.gw, align 8, !tbaa !31
  %i.wm = getelementptr inbounds [4 x i8], ptr %i.wl, i64 %i.wh
  store i32 %.274.i431850, ptr %i.wm, align 4, !tbaa !40
  %i.wn = load i32, ptr %i.gb, align 4, !tbaa !52
  %i.wo = icmp eq i32 %i.wn, %.286.i428844
  br i1 %i.wo, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  store i32 %.274.i431850, ptr %i.gg, align 4, !tbaa !52
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.not92.i437 = icmp ult i32 %.286.i428844, %.0.i432852
  br i1 %.not92.i437, label %.loopexit824, label %.preheader823, !prof !45

.preheader823:                                    ; preds = %bb.dt
  %i.wp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1112), align 8 ; 13 uses
  %i.wq = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1108), align 4 ; 2 uses
  %i.wr = zext i32 %i.wq to i64
  %.idx.i672 = shl nuw nsw i64 %i.wr, 4           ; 3 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wp, i64 %.idx.i672 ; 3 uses
  %.not9.i673 = icmp eq i32 %i.wq, 0              ; 3 uses
  %i.wt = load i8, ptr %i.sa, align 2, !tbaa !31
  %i.wu = icmp eq i8 %i.wt, 0
  br i1 %i.wu, label %.preheader823.split.us, label %.preheader823.split.preheader, !prof !45

.preheader823.split.preheader:                    ; preds = %.preheader823
  %i.wv = add nsw i64 %.idx.i672, -16             ; 4 uses
  %i.ww = and i64 %i.wv, 16
  %lcmp.mod1152.not.not = icmp eq i64 %i.ww, 0
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wp, i64 8 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wp, i64 16 ; 3 uses
  %i.wz = icmp eq i64 %i.wv, 0
  %i.xa = and i64 %i.wv, 16
  %lcmp.mod1154.not.not = icmp eq i64 %i.xa, 0
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wp, i64 16 ; 2 uses
  %i.xd = icmp eq i64 %i.wv, 0
  br label %.preheader823.split

.preheader823.split.us:                           ; preds = %.preheader823
  %i.xe = load i32, ptr %i.ty, align 8, !tbaa !50 ; 7 uses
  br i1 %.not9.i673, label %.preheader823.split.us.split.us, label %zend_hash_iterators_update.exit.i440.us.preheader

zend_hash_iterators_update.exit.i440.us.preheader: ; preds = %.preheader823.split.us
  %i.xf = add nsw i64 %.idx.i672, -16             ; 2 uses
  %i.xg = and i64 %i.xf, 16
  %lcmp.mod1156.not.not = icmp eq i64 %i.xg, 0
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wp, i64 16 ; 2 uses
  %i.xj = icmp eq i64 %i.xf, 0
  br label %zend_hash_iterators_update.exit.i440.us

.preheader823.split.us.split.us:                  ; preds = %.preheader823.split.us
  %i.xk = icmp ult i32 %i.xe, %.286.i428844
  br i1 %i.xk, label %zend_hash_iterators_update.exit.i440.us.us, label %.loopexit824, !llvm.loop !122

zend_hash_iterators_update.exit.i440.us.us:       ; preds = %.preheader823.split.us.split.us, %zend_hash_iterators_update.exit.i440.us.us
  br label %zend_hash_iterators_update.exit.i440.us.us

zend_hash_iterators_update.exit.i440.us:          ; preds = %zend_hash_iterators_update.exit.i440.us.preheader, %zend_hash_iterators_lower_pos.exit688.loopexit.us
  %.1.i438.us = phi i32 [ %.1.i683.us.lcssa, %zend_hash_iterators_lower_pos.exit688.loopexit.us ], [ %.0.i432852, %zend_hash_iterators_update.exit.i440.us.preheader ]
  %i.xl = add i32 %.1.i438.us, 1                  ; 3 uses
  br i1 %lcmp.mod1156.not.not, label %.lr.ph.i680.us.prol, label %.lr.ph.i680.us.prol.loopexit

.lr.ph.i680.us.prol:                              ; preds = %zend_hash_iterators_update.exit.i440.us
  %i.xm = load ptr, ptr %i.wp, align 8, !tbaa !89
  %i.xn = icmp eq ptr %i.xm, %i.a
  br i1 %i.xn, label %bb.du, label %.lr.ph.i680.us.prol.loopexit

bb.du:                                            ; preds = %.lr.ph.i680.us.prol
  %i.xo = load i32, ptr %i.xh, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i686.us.prol = icmp ult i32 %i.xo, %i.xl
  %i.xp = tail call i32 @llvm.umin.i32(i32 %i.xo, i32 %i.xe)
  %spec.select.i687.us.prol = select i1 %.not14.not.i686.us.prol, i32 %i.xe, i32 %i.xp ; 2 uses
  br label %.lr.ph.i680.us.prol.loopexit

.lr.ph.i680.us.prol.loopexit:                     ; preds = %.lr.ph.i680.us.prol, %bb.du, %zend_hash_iterators_update.exit.i440.us
  %.1.i683.us.lcssa.unr = phi i32 [ poison, %zend_hash_iterators_update.exit.i440.us ], [ %spec.select.i687.us.prol, %bb.du ], [ %i.xe, %.lr.ph.i680.us.prol ]
  %.017.i681.us.unr = phi i32 [ %i.xe, %zend_hash_iterators_update.exit.i440.us ], [ %spec.select.i687.us.prol, %bb.du ], [ %i.xe, %.lr.ph.i680.us.prol ]
  %.01216.i682.us.unr = phi ptr [ %i.wp, %zend_hash_iterators_update.exit.i440.us ], [ %i.xi, %bb.du ], [ %i.xi, %.lr.ph.i680.us.prol ]
  br i1 %i.xj, label %zend_hash_iterators_lower_pos.exit688.loopexit.us, label %.lr.ph.i680.us

.lr.ph.i680.us:                                   ; preds = %.lr.ph.i680.us.prol.loopexit, %bb.dx
  %.017.i681.us = phi i32 [ %.1.i683.us.1, %bb.dx ], [ %.017.i681.us.unr, %.lr.ph.i680.us.prol.loopexit ] ; 3 uses
  %.01216.i682.us = phi ptr [ %i.yb, %bb.dx ], [ %.01216.i682.us.unr, %.lr.ph.i680.us.prol.loopexit ] ; 5 uses
  %i.xq = load ptr, ptr %.01216.i682.us, align 8, !tbaa !89
  %i.xr = icmp eq ptr %i.xq, %i.a
  br i1 %i.xr, label %bb.dv, label %.lr.ph.i680.us.1

bb.dv:                                            ; preds = %.lr.ph.i680.us
  %i.xs = getelementptr inbounds nuw i8, ptr %.01216.i682.us, i64 8
  %i.xt = load i32, ptr %i.xs, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i686.us = icmp ult i32 %i.xt, %i.xl
  %i.xu = tail call i32 @llvm.umin.i32(i32 %i.xt, i32 %.017.i681.us)
  %spec.select.i687.us = select i1 %.not14.not.i686.us, i32 %.017.i681.us, i32 %i.xu
  br label %.lr.ph.i680.us.1

.lr.ph.i680.us.1:                                 ; preds = %bb.dv, %.lr.ph.i680.us
  %.1.i683.us = phi i32 [ %spec.select.i687.us, %bb.dv ], [ %.017.i681.us, %.lr.ph.i680.us ] ; 3 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %.01216.i682.us, i64 16
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !89
  %i.xx = icmp eq ptr %i.xw, %i.a
  br i1 %i.xx, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %.lr.ph.i680.us.1
  %i.xy = getelementptr inbounds nuw i8, ptr %.01216.i682.us, i64 24
  %i.xz = load i32, ptr %i.xy, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i686.us.1 = icmp ult i32 %i.xz, %i.xl
  %i.ya = tail call i32 @llvm.umin.i32(i32 %i.xz, i32 %.1.i683.us)
  %spec.select.i687.us.1 = select i1 %.not14.not.i686.us.1, i32 %.1.i683.us, i32 %i.ya
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %.lr.ph.i680.us.1
  %.1.i683.us.1 = phi i32 [ %spec.select.i687.us.1, %bb.dw ], [ %.1.i683.us, %.lr.ph.i680.us.1 ] ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %.01216.i682.us, i64 32 ; 2 uses
  %.not.i684.us.1 = icmp eq ptr %i.yb, %i.ws
  br i1 %.not.i684.us.1, label %zend_hash_iterators_lower_pos.exit688.loopexit.us, label %.lr.ph.i680.us, !llvm.loop !0

zend_hash_iterators_lower_pos.exit688.loopexit.us: ; preds = %bb.dx, %.lr.ph.i680.us.prol.loopexit
  %.1.i683.us.lcssa = phi i32 [ %.1.i683.us.lcssa.unr, %.lr.ph.i680.us.prol.loopexit ], [ %.1.i683.us.1, %bb.dx ] ; 3 uses
  %i.yc = icmp ult i32 %.1.i683.us.lcssa, %.286.i428844
  br i1 %i.yc, label %zend_hash_iterators_update.exit.i440.us, label %.loopexit824, !llvm.loop !122

.preheader823.splitthread-pre-split:              ; preds = %zend_hash_iterators_lower_pos.exit688
  %.pr1051 = load i8, ptr %i.sa, align 2, !tbaa !31
  br label %.preheader823.split

.preheader823.split:                              ; preds = %.preheader823.split.preheader, %.preheader823.splitthread-pre-split
  %i.yd = phi i8 [ %.pr1051, %.preheader823.splitthread-pre-split ], [ 1, %.preheader823.split.preheader ]
  %.1.i438 = phi i32 [ %.0.lcssa.i685, %.preheader823.splitthread-pre-split ], [ %.0.i432852, %.preheader823.split.preheader ] ; 4 uses
  %.not.i.i439 = icmp eq i8 %i.yd, 0
  br i1 %.not.i.i439, label %zend_hash_iterators_update.exit.i440, label %bb.dy, !prof !45

bb.dy:                                            ; preds = %.preheader823.split
  br i1 %.not9.i673, label %zend_hash_iterators_update.exit.i440.thread, label %.lr.ph.i674.preheader

.lr.ph.i674.preheader:                            ; preds = %bb.dy
  br i1 %lcmp.mod1152.not.not, label %.lr.ph.i674.prol, label %.lr.ph.i674.prol.loopexit

.lr.ph.i674.prol:                                 ; preds = %.lr.ph.i674.preheader
  %i.ye = load ptr, ptr %i.wp, align 8, !tbaa !89
  %i.yf = icmp eq ptr %i.ye, %i.a
  br i1 %i.yf, label %bb.dz, label %.lr.ph.i674.prol.loopexit

bb.dz:                                            ; preds = %.lr.ph.i674.prol
  %i.yg = load i32, ptr %i.wx, align 8, !tbaa !90
  %i.yh = icmp eq i32 %i.yg, %.1.i438
  br i1 %i.yh, label %bb.ea, label %.lr.ph.i674.prol.loopexit

bb.ea:                                            ; preds = %bb.dz
  store i32 %.274.i431850, ptr %i.wx, align 8, !tbaa !90
  br label %.lr.ph.i674.prol.loopexit

.lr.ph.i674.prol.loopexit:                        ; preds = %.lr.ph.i674.prol, %bb.dz, %bb.ea, %.lr.ph.i674.preheader
  %.010.i675.unr = phi ptr [ %i.wp, %.lr.ph.i674.preheader ], [ %i.wy, %bb.ea ], [ %i.wy, %bb.dz ], [ %i.wy, %.lr.ph.i674.prol ]
  br i1 %i.wz, label %zend_hash_iterators_update.exit.i440, label %.lr.ph.i674

zend_hash_iterators_update.exit.i440.thread:      ; preds = %bb.dy
  %i.yi = load i32, ptr %i.ty, align 8, !tbaa !50
  br label %zend_hash_iterators_lower_pos.exit688

.lr.ph.i674:                                      ; preds = %.lr.ph.i674.prol.loopexit, %bb.ef
  %.010.i675 = phi ptr [ %i.yu, %bb.ef ], [ %.010.i675.unr, %.lr.ph.i674.prol.loopexit ] ; 5 uses
  %i.yj = load ptr, ptr %.010.i675, align 8, !tbaa !89
  %i.yk = icmp eq ptr %i.yj, %i.a
  br i1 %i.yk, label %bb.eb, label %.lr.ph.i674.1

bb.eb:                                            ; preds = %.lr.ph.i674
  %i.yl = getelementptr inbounds nuw i8, ptr %.010.i675, i64 8 ; 2 uses
  %i.ym = load i32, ptr %i.yl, align 8, !tbaa !90
  %i.yn = icmp eq i32 %i.ym, %.1.i438
  br i1 %i.yn, label %bb.ec, label %.lr.ph.i674.1

bb.ec:                                            ; preds = %bb.eb
  store i32 %.274.i431850, ptr %i.yl, align 8, !tbaa !90
  br label %.lr.ph.i674.1

.lr.ph.i674.1:                                    ; preds = %bb.ec, %bb.eb, %.lr.ph.i674
  %i.yo = getelementptr inbounds nuw i8, ptr %.010.i675, i64 16
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !89
  %i.yq = icmp eq ptr %i.yp, %i.a
  br i1 %i.yq, label %bb.ed, label %bb.ef

bb.ed:                                            ; preds = %.lr.ph.i674.1
  %i.yr = getelementptr inbounds nuw i8, ptr %.010.i675, i64 24 ; 2 uses
  %i.ys = load i32, ptr %i.yr, align 8, !tbaa !90
  %i.yt = icmp eq i32 %i.ys, %.1.i438
  br i1 %i.yt, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  store i32 %.274.i431850, ptr %i.yr, align 8, !tbaa !90
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed, %.lr.ph.i674.1
  %i.yu = getelementptr inbounds nuw i8, ptr %.010.i675, i64 32 ; 2 uses
  %.not.i676.1 = icmp eq ptr %i.yu, %i.ws
  br i1 %.not.i676.1, label %zend_hash_iterators_update.exit.i440, label %.lr.ph.i674, !llvm.loop !1

zend_hash_iterators_update.exit.i440:             ; preds = %.lr.ph.i674.prol.loopexit, %bb.ef, %.preheader823.split
  %i.yv = add i32 %.1.i438, 1                     ; 3 uses
  %i.yw = load i32, ptr %i.ty, align 8, !tbaa !50 ; 6 uses
  br i1 %.not9.i673, label %zend_hash_iterators_lower_pos.exit688, label %.lr.ph.i680.preheader

.lr.ph.i680.preheader:                            ; preds = %zend_hash_iterators_update.exit.i440
  br i1 %lcmp.mod1154.not.not, label %.lr.ph.i680.prol, label %.lr.ph.i680.prol.loopexit

.lr.ph.i680.prol:                                 ; preds = %.lr.ph.i680.preheader
  %i.yx = load ptr, ptr %i.wp, align 8, !tbaa !89
  %i.yy = icmp eq ptr %i.yx, %i.a
  br i1 %i.yy, label %bb.eg, label %.lr.ph.i680.prol.loopexit

bb.eg:                                            ; preds = %.lr.ph.i680.prol
  %i.yz = load i32, ptr %i.xb, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i686.prol = icmp ult i32 %i.yz, %i.yv
  %i.za = tail call i32 @llvm.umin.i32(i32 %i.yz, i32 %i.yw)
  %spec.select.i687.prol = select i1 %.not14.not.i686.prol, i32 %i.yw, i32 %i.za ; 2 uses
  br label %.lr.ph.i680.prol.loopexit

.lr.ph.i680.prol.loopexit:                        ; preds = %.lr.ph.i680.prol, %bb.eg, %.lr.ph.i680.preheader
  %.1.i683.lcssa.unr = phi i32 [ poison, %.lr.ph.i680.preheader ], [ %spec.select.i687.prol, %bb.eg ], [ %i.yw, %.lr.ph.i680.prol ]
  %.017.i681.unr = phi i32 [ %i.yw, %.lr.ph.i680.preheader ], [ %spec.select.i687.prol, %bb.eg ], [ %i.yw, %.lr.ph.i680.prol ]
  %.01216.i682.unr = phi ptr [ %i.wp, %.lr.ph.i680.preheader ], [ %i.xc, %bb.eg ], [ %i.xc, %.lr.ph.i680.prol ]
  br i1 %i.xd, label %zend_hash_iterators_lower_pos.exit688, label %.lr.ph.i680

.lr.ph.i680:                                      ; preds = %.lr.ph.i680.prol.loopexit, %bb.ej
  %.017.i681 = phi i32 [ %.1.i683.1, %bb.ej ], [ %.017.i681.unr, %.lr.ph.i680.prol.loopexit ] ; 3 uses
  %.01216.i682 = phi ptr [ %i.zm, %bb.ej ], [ %.01216.i682.unr, %.lr.ph.i680.prol.loopexit ] ; 5 uses
  %i.zb = load ptr, ptr %.01216.i682, align 8, !tbaa !89
  %i.zc = icmp eq ptr %i.zb, %i.a
  br i1 %i.zc, label %bb.eh, label %.lr.ph.i680.1

bb.eh:                                            ; preds = %.lr.ph.i680
  %i.zd = getelementptr inbounds nuw i8, ptr %.01216.i682, i64 8
  %i.ze = load i32, ptr %i.zd, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i686 = icmp ult i32 %i.ze, %i.yv
  %i.zf = tail call i32 @llvm.umin.i32(i32 %i.ze, i32 %.017.i681)
  %spec.select.i687 = select i1 %.not14.not.i686, i32 %.017.i681, i32 %i.zf
  br label %.lr.ph.i680.1

.lr.ph.i680.1:                                    ; preds = %bb.eh, %.lr.ph.i680
  %.1.i683 = phi i32 [ %spec.select.i687, %bb.eh ], [ %.017.i681, %.lr.ph.i680 ] ; 3 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.01216.i682, i64 16
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !89
  %i.zi = icmp eq ptr %i.zh, %i.a
  br i1 %i.zi, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %.lr.ph.i680.1
  %i.zj = getelementptr inbounds nuw i8, ptr %.01216.i682, i64 24
  %i.zk = load i32, ptr %i.zj, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i686.1 = icmp ult i32 %i.zk, %i.yv
  %i.zl = tail call i32 @llvm.umin.i32(i32 %i.zk, i32 %.1.i683)
  %spec.select.i687.1 = select i1 %.not14.not.i686.1, i32 %.1.i683, i32 %i.zl
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %.lr.ph.i680.1
  %.1.i683.1 = phi i32 [ %spec.select.i687.1, %bb.ei ], [ %.1.i683, %.lr.ph.i680.1 ] ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %.01216.i682, i64 32 ; 2 uses
  %.not.i684.1 = icmp eq ptr %i.zm, %i.ws
  br i1 %.not.i684.1, label %zend_hash_iterators_lower_pos.exit688, label %.lr.ph.i680, !llvm.loop !0

zend_hash_iterators_lower_pos.exit688:            ; preds = %.lr.ph.i680.prol.loopexit, %bb.ej, %zend_hash_iterators_update.exit.i440.thread, %zend_hash_iterators_update.exit.i440
  %.0.lcssa.i685 = phi i32 [ %i.yw, %zend_hash_iterators_update.exit.i440 ], [ %i.yi, %zend_hash_iterators_update.exit.i440.thread ], [ %.1.i683.lcssa.unr, %.lr.ph.i680.prol.loopexit ], [ %.1.i683.1, %bb.ej ] ; 3 uses
  %i.zn = icmp ult i32 %.0.lcssa.i685, %.286.i428844
  br i1 %i.zn, label %.preheader823.splitthread-pre-split, label %.loopexit824, !llvm.loop !126

.loopexit824:                                     ; preds = %zend_hash_iterators_lower_pos.exit688, %zend_hash_iterators_lower_pos.exit688.loopexit.us, %.preheader823.split.us.split.us, %bb.dt
  %.2.i441 = phi i32 [ %.0.i432852, %bb.dt ], [ %.1.i683.us.lcssa, %zend_hash_iterators_lower_pos.exit688.loopexit.us ], [ %i.xe, %.preheader823.split.us.split.us ], [ %.0.lcssa.i685, %zend_hash_iterators_lower_pos.exit688 ]
  %i.zo = add i32 %.274.i431850, 1
  %i.zp = getelementptr inbounds nuw i8, ptr %.379.i430849, i64 32
  br label %zend_array_dup_element.exit545

zend_array_dup_element.exit545:                   ; preds = %bb.dj, %.loopexit824
  %.480.i434 = phi ptr [ %i.zp, %.loopexit824 ], [ %.379.i430849, %bb.dj ]
  %.375.i435 = phi i32 [ %i.zo, %.loopexit824 ], [ %.274.i431850, %bb.dj ] ; 2 uses
  %.3.i436 = phi i32 [ %.2.i441, %.loopexit824 ], [ %.0.i432852, %bb.dj ]
  %i.zq = add i32 %.286.i428844, 1
  %i.zr = getelementptr inbounds nuw i8, ptr %.283.i429848, i64 32 ; 2 uses
  %.not91.i433 = icmp eq ptr %i.zr, %i.hk
  br i1 %.not91.i433, label %zend_array_dup_elements.exit480, label %.lr.ph, !llvm.loop !124

bb.ek:                                            ; preds = %bb.cq, %bb.cp, %bb.ck
  %.3.i.i550 = phi ptr [ %.2.i.i549, %bb.cq ], [ %i.rp, %bb.cp ], [ %.026.i.i546, %bb.ck ] ; 2 uses
  %i.zs = load ptr, ptr %.3.i.i550, align 8, !tbaa !31
  %i.zt = getelementptr inbounds nuw i8, ptr %.3.i.i550, i64 8
  %i.zu = load i32, ptr %i.zt, align 8, !tbaa !31
  store ptr %i.zs, ptr %.076.i426, align 8, !tbaa !31
  %i.zv = getelementptr inbounds nuw i8, ptr %.076.i426, i64 8
  store i32 %i.zu, ptr %i.zv, align 8, !tbaa !31
  %i.zw = getelementptr inbounds nuw i8, ptr %.081.i425, i64 16
  %i.zx = load i64, ptr %i.zw, align 8, !tbaa !46 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %.076.i426, i64 16
  store i64 %i.zx, ptr %i.zy, align 8, !tbaa !46
  %i.zz = getelementptr inbounds nuw i8, ptr %.081.i425, i64 24
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !44
  %i.aab = getelementptr inbounds nuw i8, ptr %.076.i426, i64 24
  store ptr %i.aaa, ptr %i.aab, align 8, !tbaa !44
  %i.aac = load i32, ptr %i.fx, align 4, !tbaa !39
  %i.aad = trunc i64 %i.zx to i32
  %i.aae = or i32 %i.aac, %i.aad
  %i.aaf = load ptr, ptr %i.gw, align 8, !tbaa !31
  %i.aag = sext i32 %i.aae to i64
  %i.aah = getelementptr inbounds [4 x i8], ptr %i.aaf, i64 %i.aag ; 2 uses
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !40
  %i.aaj = getelementptr inbounds nuw i8, ptr %.076.i426, i64 12
  store i32 %i.aai, ptr %i.aaj, align 4, !tbaa !31
  store i32 %.084.i424, ptr %i.aah, align 4, !tbaa !40
  %i.aak = add i32 %.084.i424, 1                  ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.081.i425, i64 32 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %.076.i426, i64 32
  %.not94.i450 = icmp eq ptr %i.aal, %i.hk
  br i1 %.not94.i450, label %zend_array_dup_elements.exit480, label %bb.ch, !llvm.loop !125

bb.el:                                            ; preds = %bb.aa
  br i1 %i.hg, label %bb.em, label %bb.gy

bb.em:                                            ; preds = %bb.el
  br i1 %.not.i394, label %.preheader1119, label %bb.en, !prof !45

bb.en:                                            ; preds = %bb.em
  tail call fastcc void @zend_array_dup_ht_iterators(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  br label %.preheader1119

.preheader1119:                                   ; preds = %bb.en, %bb.em
  br label %bb.eo

bb.eo:                                            ; preds = %.preheader1119, %bb.gx
  %.084.i395 = phi i32 [ %i.akp, %bb.gx ], [ 0, %.preheader1119 ] ; 7 uses
  %.081.i396 = phi ptr [ %i.akq, %bb.gx ], [ %i.hi, %.preheader1119 ] ; 7 uses
  %.076.i397 = phi ptr [ %i.akr, %bb.gx ], [ %i.gv, %.preheader1119 ] ; 8 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %.081.i396, i64 8
  %i.aao = load i32, ptr %i.aan, align 8          ; 2 uses
  %i.aap = icmp eq i32 %i.aao, 12
  br i1 %i.aap, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.aaq = load ptr, ptr %.081.i396, align 8, !tbaa !31 ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 8
  %i.aas = load i32, ptr %i.aar, align 8          ; 2 uses
  %i.aat = icmp eq i32 %i.aas, 0
  br i1 %i.aat, label %zend_array_dup_element.exit598, label %bb.eq, !prof !30

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %i.aau = phi i32 [ %i.aas, %bb.ep ], [ %i.aao, %bb.eo ] ; 2 uses
  %.1.i.i585 = phi ptr [ %i.aaq, %bb.ep ], [ %.081.i396, %bb.eo ] ; 5 uses
  %i.aav = and i32 %i.aau, 65280
  %.not.i22.i586 = icmp eq i32 %i.aav, 0
  br i1 %.not.i22.i586, label %bb.ex, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.aaw = and i32 %i.aau, 255
  %i.aax = icmp eq i32 %i.aaw, 10
  br i1 %i.aax, label %bb.es, label %bb.ew

bb.es:                                            ; preds = %bb.er
  %i.aay = load ptr, ptr %.1.i.i585, align 8, !tbaa !31 ; 3 uses
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !49
  %i.aba = icmp eq i32 %i.aaz, 1
  br i1 %i.aba, label %bb.et, label %bb.ew

bb.et:                                            ; preds = %bb.es
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aay, i64 8 ; 3 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aay, i64 16 ; 2 uses
  %i.abd = load i8, ptr %i.abc, align 8, !tbaa !31
  %.not27.i.i595 = icmp eq i8 %i.abd, 7
  br i1 %.not27.i.i595, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.abe = load ptr, ptr %i.abb, align 8, !tbaa !31
  %.not28.i.i597 = icmp eq ptr %i.abe, %0
  br i1 %.not28.i.i597, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.abf = load i32, ptr %i.abc, align 8, !tbaa !31
  %i.abg = and i32 %i.abf, 65280
  %.not29.i.i596 = icmp eq i32 %i.abg, 0
  br i1 %.not29.i.i596, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu, %bb.es, %bb.er
  %.2.i.i587 = phi ptr [ %i.abb, %bb.ev ], [ %.1.i.i585, %bb.eu ], [ %.1.i.i585, %bb.es ], [ %.1.i.i585, %bb.er ] ; 2 uses
  %i.abh = load ptr, ptr %.2.i.i587, align 8, !tbaa !31 ; 2 uses
  %i.abi = load i32, ptr %i.abh, align 4, !tbaa !49
  %i.abj = add i32 %i.abi, 1
  store i32 %i.abj, ptr %i.abh, align 4, !tbaa !49
  br label %bb.ex

bb.ex:                                            ; preds = %bb.eq, %bb.ev, %bb.ew
  %.3.i.i588 = phi ptr [ %.2.i.i587, %bb.ew ], [ %i.abb, %bb.ev ], [ %.1.i.i585, %bb.eq ] ; 2 uses
  %i.abk = load ptr, ptr %.3.i.i588, align 8, !tbaa !31
  %i.abl = getelementptr inbounds nuw i8, ptr %.3.i.i588, i64 8
  %i.abm = load i32, ptr %i.abl, align 8, !tbaa !31
  store ptr %i.abk, ptr %.076.i397, align 8, !tbaa !31
  %i.abn = getelementptr inbounds nuw i8, ptr %.076.i397, i64 8
  store i32 %i.abm, ptr %i.abn, align 8, !tbaa !31
  %i.abo = getelementptr inbounds nuw i8, ptr %.081.i396, i64 16
  %i.abp = load i64, ptr %i.abo, align 8, !tbaa !46 ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %.076.i397, i64 16
  store i64 %i.abp, ptr %i.abq, align 8, !tbaa !46
  %i.abr = getelementptr inbounds nuw i8, ptr %.081.i396, i64 24
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !44 ; 5 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %.076.i397, i64 24
  store ptr %i.abs, ptr %i.abt, align 8, !tbaa !44
  %.not.i591 = icmp eq ptr %i.abs, null
  br i1 %.not.i591, label %bb.gx, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abs, i64 4
  %i.abv = load i32, ptr %i.abu, align 4, !tbaa !31
  %i.abw = and i32 %i.abv, 64
  %.not.i.i592 = icmp eq i32 %i.abw, 0
  br i1 %.not.i.i592, label %bb.ez, label %bb.gx

bb.ez:                                            ; preds = %bb.ey
  %i.abx = load i32, ptr %i.abs, align 4, !tbaa !49
  %i.aby = add i32 %i.abx, 1
  store i32 %i.aby, ptr %i.abs, align 4, !tbaa !49
  br label %bb.gx

zend_array_dup_element.exit598:                   ; preds = %bb.ep
  %i.abz = add i32 %.084.i395, 1                  ; 5 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %.081.i396, i64 32 ; 4 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 3 uses
  %i.acc = load i8, ptr %i.acb, align 2, !tbaa !31
  %.not90.i398 = icmp eq i8 %i.acc, 0
  br i1 %.not90.i398, label %.preheader, label %bb.fo, !prof !45

.preheader:                                       ; preds = %zend_array_dup_element.exit598
  %.not93.i418916 = icmp eq ptr %i.aca, %i.hk
  br i1 %.not93.i418916, label %zend_array_dup_elements.exit480, label %.lr.ph921

.lr.ph921:                                        ; preds = %.preheader, %zend_array_dup_element.exit570
  %.072.i417920 = phi i32 [ %.173.i420, %zend_array_dup_element.exit570 ], [ %.084.i395, %.preheader ] ; 4 uses
  %.177.i416919 = phi ptr [ %.278.i419, %zend_array_dup_element.exit570 ], [ %.076.i397, %.preheader ] ; 7 uses
  %.182.i415918 = phi ptr [ %i.aee, %zend_array_dup_element.exit570 ], [ %i.aca, %.preheader ] ; 6 uses
  %.185.i414917 = phi i32 [ %i.aed, %zend_array_dup_element.exit570 ], [ %i.abz, %.preheader ] ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %.182.i415918, i64 8
  %i.ace = load i32, ptr %i.acd, align 8          ; 2 uses
  %i.acf = icmp eq i32 %i.ace, 12
  br i1 %i.acf, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %.lr.ph921
  %i.acg = load ptr, ptr %.182.i415918, align 8, !tbaa !31 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 8
  %i.aci = load i32, ptr %i.ach, align 8          ; 2 uses
  %i.acj = icmp eq i32 %i.aci, 0
  br i1 %i.acj, label %zend_array_dup_element.exit570, label %bb.fb, !prof !30

bb.fb:                                            ; preds = %bb.fa, %.lr.ph921
  %i.ack = phi i32 [ %i.aci, %bb.fa ], [ %i.ace, %.lr.ph921 ] ; 2 uses
  %.1.i.i559 = phi ptr [ %i.acg, %bb.fa ], [ %.182.i415918, %.lr.ph921 ] ; 5 uses
  %i.acl = and i32 %i.ack, 65280
  %.not.i22.i560 = icmp eq i32 %i.acl, 0
  br i1 %.not.i22.i560, label %bb.fi, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.acm = and i32 %i.ack, 255
  %i.acn = icmp eq i32 %i.acm, 10
  br i1 %i.acn, label %bb.fd, label %bb.fh

bb.fd:                                            ; preds = %bb.fc
  %i.aco = load ptr, ptr %.1.i.i559, align 8, !tbaa !31 ; 3 uses
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !49
  %i.acq = icmp eq i32 %i.acp, 1
  br i1 %i.acq, label %bb.fe, label %bb.fh

end_hunk_2
begin_hunk_3_@zend_array_dup:bb.a
  br i1 %.not15.i690, label %zend_hash_iterators_lower_pos.exit699, label %.lr.ph.i691.preheader

.lr.ph.i691.preheader:                            ; preds = %bb.fo
  %i.ael = add nsw i64 %.idx.i689, -16            ; 2 uses
  %i.aem = and i64 %i.ael, 16
  %lcmp.mod1174.not.not = icmp eq i64 %i.aem, 0
  br i1 %lcmp.mod1174.not.not, label %.lr.ph.i691.prol, label %.lr.ph.i691.prol.loopexit

.lr.ph.i691.prol:                                 ; preds = %.lr.ph.i691.preheader
  %i.aen = load ptr, ptr %i.aeh, align 8, !tbaa !89
  %i.aeo = icmp eq ptr %i.aen, %i.a
  br i1 %i.aeo, label %bb.fp, label %.lr.ph.i691.prol.loopexit.unr-lcssa

bb.fp:                                            ; preds = %.lr.ph.i691.prol
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeh, i64 8
  %i.aeq = load i32, ptr %i.aep, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i697.prol = icmp ult i32 %i.aeq, %i.abz
  %i.aer = tail call i32 @llvm.umin.i32(i32 %i.aeq, i32 %i.aef)
  %spec.select.i698.prol = select i1 %.not14.not.i697.prol, i32 %i.aef, i32 %i.aer
  br label %.lr.ph.i691.prol.loopexit.unr-lcssa

.lr.ph.i691.prol.loopexit.unr-lcssa:              ; preds = %bb.fp, %.lr.ph.i691.prol
  %.1.i694.prol = phi i32 [ %spec.select.i698.prol, %bb.fp ], [ %i.aef, %.lr.ph.i691.prol ] ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aeh, i64 16
  br label %.lr.ph.i691.prol.loopexit

.lr.ph.i691.prol.loopexit:                        ; preds = %.lr.ph.i691.prol.loopexit.unr-lcssa, %.lr.ph.i691.preheader
  %.1.i694.lcssa.unr = phi i32 [ poison, %.lr.ph.i691.preheader ], [ %.1.i694.prol, %.lr.ph.i691.prol.loopexit.unr-lcssa ]
  %.017.i692.unr = phi i32 [ %i.aef, %.lr.ph.i691.preheader ], [ %.1.i694.prol, %.lr.ph.i691.prol.loopexit.unr-lcssa ]
  %.01216.i693.unr = phi ptr [ %i.aeh, %.lr.ph.i691.preheader ], [ %i.aes, %.lr.ph.i691.prol.loopexit.unr-lcssa ]
  %i.aet = icmp eq i64 %i.ael, 0
  br i1 %i.aet, label %zend_hash_iterators_lower_pos.exit699, label %.lr.ph.i691

.lr.ph.i691:                                      ; preds = %.lr.ph.i691.prol.loopexit, %bb.fs
  %.017.i692 = phi i32 [ %.1.i694.1, %bb.fs ], [ %.017.i692.unr, %.lr.ph.i691.prol.loopexit ] ; 3 uses
  %.01216.i693 = phi ptr [ %i.aff, %bb.fs ], [ %.01216.i693.unr, %.lr.ph.i691.prol.loopexit ] ; 5 uses
  %i.aeu = load ptr, ptr %.01216.i693, align 8, !tbaa !89
  %i.aev = icmp eq ptr %i.aeu, %i.a
  br i1 %i.aev, label %bb.fq, label %.lr.ph.i691.1

bb.fq:                                            ; preds = %.lr.ph.i691
  %i.aew = getelementptr inbounds nuw i8, ptr %.01216.i693, i64 8
  %i.aex = load i32, ptr %i.aew, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i697 = icmp ult i32 %i.aex, %i.abz
  %i.aey = tail call i32 @llvm.umin.i32(i32 %i.aex, i32 %.017.i692)
  %spec.select.i698 = select i1 %.not14.not.i697, i32 %.017.i692, i32 %i.aey
  br label %.lr.ph.i691.1

.lr.ph.i691.1:                                    ; preds = %bb.fq, %.lr.ph.i691
  %.1.i694 = phi i32 [ %spec.select.i698, %bb.fq ], [ %.017.i692, %.lr.ph.i691 ] ; 3 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %.01216.i693, i64 16
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !89
  %i.afb = icmp eq ptr %i.afa, %i.a
  br i1 %i.afb, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %.lr.ph.i691.1
  %i.afc = getelementptr inbounds nuw i8, ptr %.01216.i693, i64 24
  %i.afd = load i32, ptr %i.afc, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i697.1 = icmp ult i32 %i.afd, %i.abz
  %i.afe = tail call i32 @llvm.umin.i32(i32 %i.afd, i32 %.1.i694)
  %spec.select.i698.1 = select i1 %.not14.not.i697.1, i32 %.1.i694, i32 %i.afe
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %.lr.ph.i691.1
  %.1.i694.1 = phi i32 [ %spec.select.i698.1, %bb.fr ], [ %.1.i694, %.lr.ph.i691.1 ] ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %.01216.i693, i64 32 ; 2 uses
  %.not.i695.1 = icmp eq ptr %i.aff, %i.aek
  br i1 %.not.i695.1, label %zend_hash_iterators_lower_pos.exit699, label %.lr.ph.i691, !llvm.loop !0

zend_hash_iterators_lower_pos.exit699:            ; preds = %.lr.ph.i691.prol.loopexit, %bb.fs, %bb.fo
  %.0.lcssa.i696 = phi i32 [ %i.aef, %bb.fo ], [ %.1.i694.lcssa.unr, %.lr.ph.i691.prol.loopexit ], [ %.1.i694.1, %bb.fs ]
  %.not91.i404904 = icmp eq ptr %i.aca, %i.hk
  br i1 %.not91.i404904, label %zend_array_dup_elements.exit480, label %.lr.ph914

.lr.ph914:                                        ; preds = %zend_hash_iterators_lower_pos.exit699, %zend_array_dup_element.exit584
  %.0.i403913 = phi i32 [ %.3.i407, %zend_array_dup_element.exit584 ], [ %.0.lcssa.i696, %zend_hash_iterators_lower_pos.exit699 ] ; 5 uses
  %.274.i402911 = phi i32 [ %.375.i406, %zend_array_dup_element.exit584 ], [ %.084.i395, %zend_hash_iterators_lower_pos.exit699 ] ; 7 uses
  %.379.i401910 = phi ptr [ %.480.i405, %zend_array_dup_element.exit584 ], [ %.076.i397, %zend_hash_iterators_lower_pos.exit699 ] ; 7 uses
  %.283.i400909 = phi ptr [ %i.akg, %zend_array_dup_element.exit584 ], [ %i.aca, %zend_hash_iterators_lower_pos.exit699 ] ; 6 uses
  %.286.i399905 = phi i32 [ %i.akf, %zend_array_dup_element.exit584 ], [ %i.abz, %zend_hash_iterators_lower_pos.exit699 ] ; 6 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %.283.i400909, i64 8
  %i.afh = load i32, ptr %i.afg, align 8          ; 2 uses
  %i.afi = icmp eq i32 %i.afh, 12
  br i1 %i.afi, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %.lr.ph914
  %i.afj = load ptr, ptr %.283.i400909, align 8, !tbaa !31 ; 2 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 8
  %i.afl = load i32, ptr %i.afk, align 8          ; 2 uses
  %i.afm = icmp eq i32 %i.afl, 0
  br i1 %i.afm, label %zend_array_dup_element.exit584, label %bb.fu, !prof !30

bb.fu:                                            ; preds = %bb.ft, %.lr.ph914
  %i.afn = phi i32 [ %i.afl, %bb.ft ], [ %i.afh, %.lr.ph914 ] ; 2 uses
  %.1.i.i571 = phi ptr [ %i.afj, %bb.ft ], [ %.283.i400909, %.lr.ph914 ] ; 5 uses
  %i.afo = and i32 %i.afn, 65280
  %.not.i22.i572 = icmp eq i32 %i.afo, 0
  br i1 %.not.i22.i572, label %bb.gb, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.afp = and i32 %i.afn, 255
  %i.afq = icmp eq i32 %i.afp, 10
  br i1 %i.afq, label %bb.fw, label %bb.ga

bb.fw:                                            ; preds = %bb.fv
  %i.afr = load ptr, ptr %.1.i.i571, align 8, !tbaa !31 ; 3 uses
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !49
  %i.aft = icmp eq i32 %i.afs, 1
  br i1 %i.aft, label %bb.fx, label %bb.ga

bb.fx:                                            ; preds = %bb.fw
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afr, i64 8 ; 3 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afr, i64 16 ; 2 uses
  %i.afw = load i8, ptr %i.afv, align 8, !tbaa !31
  %.not27.i.i581 = icmp eq i8 %i.afw, 7
  br i1 %.not27.i.i581, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.afx = load ptr, ptr %i.afu, align 8, !tbaa !31
  %.not28.i.i583 = icmp eq ptr %i.afx, %0
  br i1 %.not28.i.i583, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %i.afy = load i32, ptr %i.afv, align 8, !tbaa !31
  %i.afz = and i32 %i.afy, 65280
  %.not29.i.i582 = icmp eq i32 %i.afz, 0
  br i1 %.not29.i.i582, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy, %bb.fw, %bb.fv
  %.2.i.i573 = phi ptr [ %i.afu, %bb.fz ], [ %.1.i.i571, %bb.fy ], [ %.1.i.i571, %bb.fw ], [ %.1.i.i571, %bb.fv ] ; 2 uses
  %i.aga = load ptr, ptr %.2.i.i573, align 8, !tbaa !31 ; 2 uses
  %i.agb = load i32, ptr %i.aga, align 4, !tbaa !49
  %i.agc = add i32 %i.agb, 1
  store i32 %i.agc, ptr %i.aga, align 4, !tbaa !49
  br label %bb.gb

bb.gb:                                            ; preds = %bb.fu, %bb.fz, %bb.ga
  %.3.i.i574 = phi ptr [ %.2.i.i573, %bb.ga ], [ %i.afu, %bb.fz ], [ %.1.i.i571, %bb.fu ] ; 2 uses
  %i.agd = load ptr, ptr %.3.i.i574, align 8, !tbaa !31
  %i.age = getelementptr inbounds nuw i8, ptr %.3.i.i574, i64 8
  %i.agf = load i32, ptr %i.age, align 8, !tbaa !31
  store ptr %i.agd, ptr %.379.i401910, align 8, !tbaa !31
  %i.agg = getelementptr inbounds nuw i8, ptr %.379.i401910, i64 8
  store i32 %i.agf, ptr %i.agg, align 8, !tbaa !31
  %i.agh = getelementptr inbounds nuw i8, ptr %.283.i400909, i64 16
  %i.agi = load i64, ptr %i.agh, align 8, !tbaa !46 ; 2 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %.379.i401910, i64 16
  store i64 %i.agi, ptr %i.agj, align 8, !tbaa !46
  %i.agk = getelementptr inbounds nuw i8, ptr %.283.i400909, i64 24
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !44 ; 5 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %.379.i401910, i64 24
  store ptr %i.agl, ptr %i.agm, align 8, !tbaa !44
  %.not.i577 = icmp eq ptr %i.agl, null
  br i1 %.not.i577, label %bb.ge, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agl, i64 4
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !31
  %i.agp = and i32 %i.ago, 64
  %.not.i.i578 = icmp eq i32 %i.agp, 0
  br i1 %.not.i.i578, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.agq = load i32, ptr %i.agl, align 4, !tbaa !49
  %i.agr = add i32 %i.agq, 1
  store i32 %i.agr, ptr %i.agl, align 4, !tbaa !49
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gb, %bb.gd, %bb.gc
  %i.ags = load i32, ptr %i.fx, align 4, !tbaa !39
  %i.agt = trunc i64 %i.agi to i32
  %i.agu = or i32 %i.ags, %i.agt
  %i.agv = load ptr, ptr %i.gw, align 8, !tbaa !31
  %i.agw = sext i32 %i.agu to i64                 ; 2 uses
  %i.agx = getelementptr inbounds [4 x i8], ptr %i.agv, i64 %i.agw
  %i.agy = load i32, ptr %i.agx, align 4, !tbaa !40
  %i.agz = getelementptr inbounds nuw i8, ptr %.379.i401910, i64 12
  store i32 %i.agy, ptr %i.agz, align 4, !tbaa !31
  %i.aha = load ptr, ptr %i.gw, align 8, !tbaa !31
  %i.ahb = getelementptr inbounds [4 x i8], ptr %i.aha, i64 %i.agw
  store i32 %.274.i402911, ptr %i.ahb, align 4, !tbaa !40
  %i.ahc = load i32, ptr %i.gb, align 4, !tbaa !52
  %i.ahd = icmp eq i32 %i.ahc, %.286.i399905
  br i1 %i.ahd, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  store i32 %.274.i402911, ptr %i.gg, align 4, !tbaa !52
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %.not92.i408 = icmp ult i32 %.286.i399905, %.0.i403913
  br i1 %.not92.i408, label %.loopexit, label %.preheader806, !prof !45

.preheader806:                                    ; preds = %bb.gg
  %i.ahe = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1112), align 8 ; 13 uses
  %i.ahf = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1108), align 4 ; 2 uses
  %i.ahg = zext i32 %i.ahf to i64
  %.idx.i700 = shl nuw nsw i64 %i.ahg, 4          ; 3 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahe, i64 %.idx.i700 ; 3 uses
  %.not9.i701 = icmp eq i32 %i.ahf, 0             ; 3 uses
  %i.ahi = load i8, ptr %i.acb, align 2, !tbaa !31
  %i.ahj = icmp eq i8 %i.ahi, 0
  br i1 %i.ahj, label %.preheader806.split.us, label %.preheader806.split.preheader, !prof !45

.preheader806.split.preheader:                    ; preds = %.preheader806
  %i.ahk = add nsw i64 %.idx.i700, -16            ; 4 uses
  %i.ahl = and i64 %i.ahk, 16
  %lcmp.mod1176.not.not = icmp eq i64 %i.ahl, 0
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahe, i64 8 ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahe, i64 16 ; 3 uses
  %i.aho = icmp eq i64 %i.ahk, 0
  %i.ahp = and i64 %i.ahk, 16
  %lcmp.mod1178.not.not = icmp eq i64 %i.ahp, 0
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahe, i64 8
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahe, i64 16 ; 2 uses
  %i.ahs = icmp eq i64 %i.ahk, 0
  br label %.preheader806.split

.preheader806.split.us:                           ; preds = %.preheader806
  %i.aht = load i32, ptr %i.aeg, align 8, !tbaa !50 ; 7 uses
  br i1 %.not9.i701, label %.preheader806.split.us.split.us, label %zend_hash_iterators_update.exit.i411.us.preheader

zend_hash_iterators_update.exit.i411.us.preheader: ; preds = %.preheader806.split.us
  %i.ahu = add nsw i64 %.idx.i700, -16            ; 2 uses
  %i.ahv = and i64 %i.ahu, 16
  %lcmp.mod1180.not.not = icmp eq i64 %i.ahv, 0
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahe, i64 8
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahe, i64 16 ; 2 uses
  %i.ahy = icmp eq i64 %i.ahu, 0
  br label %zend_hash_iterators_update.exit.i411.us

.preheader806.split.us.split.us:                  ; preds = %.preheader806.split.us
  %i.ahz = icmp ult i32 %i.aht, %.286.i399905
  br i1 %i.ahz, label %zend_hash_iterators_update.exit.i411.us.us, label %.loopexit, !llvm.loop !122

zend_hash_iterators_update.exit.i411.us.us:       ; preds = %.preheader806.split.us.split.us, %zend_hash_iterators_update.exit.i411.us.us
  br label %zend_hash_iterators_update.exit.i411.us.us

zend_hash_iterators_update.exit.i411.us:          ; preds = %zend_hash_iterators_update.exit.i411.us.preheader, %zend_hash_iterators_lower_pos.exit716.loopexit.us
  %.1.i409.us = phi i32 [ %.1.i711.us.lcssa, %zend_hash_iterators_lower_pos.exit716.loopexit.us ], [ %.0.i403913, %zend_hash_iterators_update.exit.i411.us.preheader ]
  %i.aia = add i32 %.1.i409.us, 1                 ; 3 uses
  br i1 %lcmp.mod1180.not.not, label %.lr.ph.i708.us.prol, label %.lr.ph.i708.us.prol.loopexit

.lr.ph.i708.us.prol:                              ; preds = %zend_hash_iterators_update.exit.i411.us
  %i.aib = load ptr, ptr %i.ahe, align 8, !tbaa !89
  %i.aic = icmp eq ptr %i.aib, %i.a
  br i1 %i.aic, label %bb.gh, label %.lr.ph.i708.us.prol.loopexit

bb.gh:                                            ; preds = %.lr.ph.i708.us.prol
  %i.aid = load i32, ptr %i.ahw, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i714.us.prol = icmp ult i32 %i.aid, %i.aia
  %i.aie = tail call i32 @llvm.umin.i32(i32 %i.aid, i32 %i.aht)
  %spec.select.i715.us.prol = select i1 %.not14.not.i714.us.prol, i32 %i.aht, i32 %i.aie ; 2 uses
  br label %.lr.ph.i708.us.prol.loopexit

.lr.ph.i708.us.prol.loopexit:                     ; preds = %.lr.ph.i708.us.prol, %bb.gh, %zend_hash_iterators_update.exit.i411.us
  %.1.i711.us.lcssa.unr = phi i32 [ poison, %zend_hash_iterators_update.exit.i411.us ], [ %spec.select.i715.us.prol, %bb.gh ], [ %i.aht, %.lr.ph.i708.us.prol ]
  %.017.i709.us.unr = phi i32 [ %i.aht, %zend_hash_iterators_update.exit.i411.us ], [ %spec.select.i715.us.prol, %bb.gh ], [ %i.aht, %.lr.ph.i708.us.prol ]
  %.01216.i710.us.unr = phi ptr [ %i.ahe, %zend_hash_iterators_update.exit.i411.us ], [ %i.ahx, %bb.gh ], [ %i.ahx, %.lr.ph.i708.us.prol ]
  br i1 %i.ahy, label %zend_hash_iterators_lower_pos.exit716.loopexit.us, label %.lr.ph.i708.us

.lr.ph.i708.us:                                   ; preds = %.lr.ph.i708.us.prol.loopexit, %bb.gk
  %.017.i709.us = phi i32 [ %.1.i711.us.1, %bb.gk ], [ %.017.i709.us.unr, %.lr.ph.i708.us.prol.loopexit ] ; 3 uses
  %.01216.i710.us = phi ptr [ %i.aiq, %bb.gk ], [ %.01216.i710.us.unr, %.lr.ph.i708.us.prol.loopexit ] ; 5 uses
  %i.aif = load ptr, ptr %.01216.i710.us, align 8, !tbaa !89
  %i.aig = icmp eq ptr %i.aif, %i.a
  br i1 %i.aig, label %bb.gi, label %.lr.ph.i708.us.1

bb.gi:                                            ; preds = %.lr.ph.i708.us
  %i.aih = getelementptr inbounds nuw i8, ptr %.01216.i710.us, i64 8
  %i.aii = load i32, ptr %i.aih, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i714.us = icmp ult i32 %i.aii, %i.aia
  %i.aij = tail call i32 @llvm.umin.i32(i32 %i.aii, i32 %.017.i709.us)
  %spec.select.i715.us = select i1 %.not14.not.i714.us, i32 %.017.i709.us, i32 %i.aij
  br label %.lr.ph.i708.us.1

.lr.ph.i708.us.1:                                 ; preds = %bb.gi, %.lr.ph.i708.us
  %.1.i711.us = phi i32 [ %spec.select.i715.us, %bb.gi ], [ %.017.i709.us, %.lr.ph.i708.us ] ; 3 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %.01216.i710.us, i64 16
  %i.ail = load ptr, ptr %i.aik, align 8, !tbaa !89
  %i.aim = icmp eq ptr %i.ail, %i.a
  br i1 %i.aim, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %.lr.ph.i708.us.1
  %i.ain = getelementptr inbounds nuw i8, ptr %.01216.i710.us, i64 24
  %i.aio = load i32, ptr %i.ain, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i714.us.1 = icmp ult i32 %i.aio, %i.aia
  %i.aip = tail call i32 @llvm.umin.i32(i32 %i.aio, i32 %.1.i711.us)
  %spec.select.i715.us.1 = select i1 %.not14.not.i714.us.1, i32 %.1.i711.us, i32 %i.aip
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %.lr.ph.i708.us.1
  %.1.i711.us.1 = phi i32 [ %spec.select.i715.us.1, %bb.gj ], [ %.1.i711.us, %.lr.ph.i708.us.1 ] ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %.01216.i710.us, i64 32 ; 2 uses
  %.not.i712.us.1 = icmp eq ptr %i.aiq, %i.ahh
  br i1 %.not.i712.us.1, label %zend_hash_iterators_lower_pos.exit716.loopexit.us, label %.lr.ph.i708.us, !llvm.loop !0

zend_hash_iterators_lower_pos.exit716.loopexit.us: ; preds = %bb.gk, %.lr.ph.i708.us.prol.loopexit
  %.1.i711.us.lcssa = phi i32 [ %.1.i711.us.lcssa.unr, %.lr.ph.i708.us.prol.loopexit ], [ %.1.i711.us.1, %bb.gk ] ; 3 uses
  %i.air = icmp ult i32 %.1.i711.us.lcssa, %.286.i399905
  br i1 %i.air, label %zend_hash_iterators_update.exit.i411.us, label %.loopexit, !llvm.loop !122

.preheader806.splitthread-pre-split:              ; preds = %zend_hash_iterators_lower_pos.exit716
  %.pr1052 = load i8, ptr %i.acb, align 2, !tbaa !31
  br label %.preheader806.split

.preheader806.split:                              ; preds = %.preheader806.split.preheader, %.preheader806.splitthread-pre-split
  %i.ais = phi i8 [ %.pr1052, %.preheader806.splitthread-pre-split ], [ 1, %.preheader806.split.preheader ]
  %.1.i409 = phi i32 [ %.0.lcssa.i713, %.preheader806.splitthread-pre-split ], [ %.0.i403913, %.preheader806.split.preheader ] ; 4 uses
  %.not.i.i410 = icmp eq i8 %i.ais, 0
  br i1 %.not.i.i410, label %zend_hash_iterators_update.exit.i411, label %bb.gl, !prof !45

bb.gl:                                            ; preds = %.preheader806.split
  br i1 %.not9.i701, label %zend_hash_iterators_update.exit.i411.thread, label %.lr.ph.i702.preheader

.lr.ph.i702.preheader:                            ; preds = %bb.gl
  br i1 %lcmp.mod1176.not.not, label %.lr.ph.i702.prol, label %.lr.ph.i702.prol.loopexit

.lr.ph.i702.prol:                                 ; preds = %.lr.ph.i702.preheader
  %i.ait = load ptr, ptr %i.ahe, align 8, !tbaa !89
  %i.aiu = icmp eq ptr %i.ait, %i.a
  br i1 %i.aiu, label %bb.gm, label %.lr.ph.i702.prol.loopexit

bb.gm:                                            ; preds = %.lr.ph.i702.prol
  %i.aiv = load i32, ptr %i.ahm, align 8, !tbaa !90
  %i.aiw = icmp eq i32 %i.aiv, %.1.i409
  br i1 %i.aiw, label %bb.gn, label %.lr.ph.i702.prol.loopexit

bb.gn:                                            ; preds = %bb.gm
  store i32 %.274.i402911, ptr %i.ahm, align 8, !tbaa !90
  br label %.lr.ph.i702.prol.loopexit

.lr.ph.i702.prol.loopexit:                        ; preds = %.lr.ph.i702.prol, %bb.gm, %bb.gn, %.lr.ph.i702.preheader
  %.010.i703.unr = phi ptr [ %i.ahe, %.lr.ph.i702.preheader ], [ %i.ahn, %bb.gn ], [ %i.ahn, %bb.gm ], [ %i.ahn, %.lr.ph.i702.prol ]
  br i1 %i.aho, label %zend_hash_iterators_update.exit.i411, label %.lr.ph.i702

zend_hash_iterators_update.exit.i411.thread:      ; preds = %bb.gl
  %i.aix = load i32, ptr %i.aeg, align 8, !tbaa !50
  br label %zend_hash_iterators_lower_pos.exit716

.lr.ph.i702:                                      ; preds = %.lr.ph.i702.prol.loopexit, %bb.gs
  %.010.i703 = phi ptr [ %i.ajj, %bb.gs ], [ %.010.i703.unr, %.lr.ph.i702.prol.loopexit ] ; 5 uses
  %i.aiy = load ptr, ptr %.010.i703, align 8, !tbaa !89
  %i.aiz = icmp eq ptr %i.aiy, %i.a
  br i1 %i.aiz, label %bb.go, label %.lr.ph.i702.1

bb.go:                                            ; preds = %.lr.ph.i702
  %i.aja = getelementptr inbounds nuw i8, ptr %.010.i703, i64 8 ; 2 uses
  %i.ajb = load i32, ptr %i.aja, align 8, !tbaa !90
  %i.ajc = icmp eq i32 %i.ajb, %.1.i409
  br i1 %i.ajc, label %bb.gp, label %.lr.ph.i702.1

bb.gp:                                            ; preds = %bb.go
  store i32 %.274.i402911, ptr %i.aja, align 8, !tbaa !90
  br label %.lr.ph.i702.1

.lr.ph.i702.1:                                    ; preds = %bb.gp, %bb.go, %.lr.ph.i702
  %i.ajd = getelementptr inbounds nuw i8, ptr %.010.i703, i64 16
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !89
  %i.ajf = icmp eq ptr %i.aje, %i.a
  br i1 %i.ajf, label %bb.gq, label %bb.gs

bb.gq:                                            ; preds = %.lr.ph.i702.1
  %i.ajg = getelementptr inbounds nuw i8, ptr %.010.i703, i64 24 ; 2 uses
  %i.ajh = load i32, ptr %i.ajg, align 8, !tbaa !90
  %i.aji = icmp eq i32 %i.ajh, %.1.i409
  br i1 %i.aji, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  store i32 %.274.i402911, ptr %i.ajg, align 8, !tbaa !90
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq, %.lr.ph.i702.1
  %i.ajj = getelementptr inbounds nuw i8, ptr %.010.i703, i64 32 ; 2 uses
  %.not.i704.1 = icmp eq ptr %i.ajj, %i.ahh
  br i1 %.not.i704.1, label %zend_hash_iterators_update.exit.i411, label %.lr.ph.i702, !llvm.loop !1

zend_hash_iterators_update.exit.i411:             ; preds = %.lr.ph.i702.prol.loopexit, %bb.gs, %.preheader806.split
  %i.ajk = add i32 %.1.i409, 1                    ; 3 uses
  %i.ajl = load i32, ptr %i.aeg, align 8, !tbaa !50 ; 6 uses
  br i1 %.not9.i701, label %zend_hash_iterators_lower_pos.exit716, label %.lr.ph.i708.preheader

.lr.ph.i708.preheader:                            ; preds = %zend_hash_iterators_update.exit.i411
  br i1 %lcmp.mod1178.not.not, label %.lr.ph.i708.prol, label %.lr.ph.i708.prol.loopexit

.lr.ph.i708.prol:                                 ; preds = %.lr.ph.i708.preheader
  %i.ajm = load ptr, ptr %i.ahe, align 8, !tbaa !89
  %i.ajn = icmp eq ptr %i.ajm, %i.a
  br i1 %i.ajn, label %bb.gt, label %.lr.ph.i708.prol.loopexit

bb.gt:                                            ; preds = %.lr.ph.i708.prol
  %i.ajo = load i32, ptr %i.ahq, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i714.prol = icmp ult i32 %i.ajo, %i.ajk
  %i.ajp = tail call i32 @llvm.umin.i32(i32 %i.ajo, i32 %i.ajl)
  %spec.select.i715.prol = select i1 %.not14.not.i714.prol, i32 %i.ajl, i32 %i.ajp ; 2 uses
  br label %.lr.ph.i708.prol.loopexit

.lr.ph.i708.prol.loopexit:                        ; preds = %.lr.ph.i708.prol, %bb.gt, %.lr.ph.i708.preheader
  %.1.i711.lcssa.unr = phi i32 [ poison, %.lr.ph.i708.preheader ], [ %spec.select.i715.prol, %bb.gt ], [ %i.ajl, %.lr.ph.i708.prol ]
  %.017.i709.unr = phi i32 [ %i.ajl, %.lr.ph.i708.preheader ], [ %spec.select.i715.prol, %bb.gt ], [ %i.ajl, %.lr.ph.i708.prol ]
  %.01216.i710.unr = phi ptr [ %i.ahe, %.lr.ph.i708.preheader ], [ %i.ahr, %bb.gt ], [ %i.ahr, %.lr.ph.i708.prol ]
  br i1 %i.ahs, label %zend_hash_iterators_lower_pos.exit716, label %.lr.ph.i708

.lr.ph.i708:                                      ; preds = %.lr.ph.i708.prol.loopexit, %bb.gw
  %.017.i709 = phi i32 [ %.1.i711.1, %bb.gw ], [ %.017.i709.unr, %.lr.ph.i708.prol.loopexit ] ; 3 uses
  %.01216.i710 = phi ptr [ %i.akb, %bb.gw ], [ %.01216.i710.unr, %.lr.ph.i708.prol.loopexit ] ; 5 uses
  %i.ajq = load ptr, ptr %.01216.i710, align 8, !tbaa !89
  %i.ajr = icmp eq ptr %i.ajq, %i.a
  br i1 %i.ajr, label %bb.gu, label %.lr.ph.i708.1

bb.gu:                                            ; preds = %.lr.ph.i708
  %i.ajs = getelementptr inbounds nuw i8, ptr %.01216.i710, i64 8
  %i.ajt = load i32, ptr %i.ajs, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i714 = icmp ult i32 %i.ajt, %i.ajk
  %i.aju = tail call i32 @llvm.umin.i32(i32 %i.ajt, i32 %.017.i709)
  %spec.select.i715 = select i1 %.not14.not.i714, i32 %.017.i709, i32 %i.aju
  br label %.lr.ph.i708.1

.lr.ph.i708.1:                                    ; preds = %bb.gu, %.lr.ph.i708
  %.1.i711 = phi i32 [ %spec.select.i715, %bb.gu ], [ %.017.i709, %.lr.ph.i708 ] ; 3 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %.01216.i710, i64 16
  %i.ajw = load ptr, ptr %i.ajv, align 8, !tbaa !89
  %i.ajx = icmp eq ptr %i.ajw, %i.a
  br i1 %i.ajx, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %.lr.ph.i708.1
  %i.ajy = getelementptr inbounds nuw i8, ptr %.01216.i710, i64 24
  %i.ajz = load i32, ptr %i.ajy, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i714.1 = icmp ult i32 %i.ajz, %i.ajk
  %i.aka = tail call i32 @llvm.umin.i32(i32 %i.ajz, i32 %.1.i711)
  %spec.select.i715.1 = select i1 %.not14.not.i714.1, i32 %.1.i711, i32 %i.aka
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %.lr.ph.i708.1
  %.1.i711.1 = phi i32 [ %spec.select.i715.1, %bb.gv ], [ %.1.i711, %.lr.ph.i708.1 ] ; 2 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %.01216.i710, i64 32 ; 2 uses
  %.not.i712.1 = icmp eq ptr %i.akb, %i.ahh
  br i1 %.not.i712.1, label %zend_hash_iterators_lower_pos.exit716, label %.lr.ph.i708, !llvm.loop !0

zend_hash_iterators_lower_pos.exit716:            ; preds = %.lr.ph.i708.prol.loopexit, %bb.gw, %zend_hash_iterators_update.exit.i411.thread, %zend_hash_iterators_update.exit.i411
  %.0.lcssa.i713 = phi i32 [ %i.ajl, %zend_hash_iterators_update.exit.i411 ], [ %i.aix, %zend_hash_iterators_update.exit.i411.thread ], [ %.1.i711.lcssa.unr, %.lr.ph.i708.prol.loopexit ], [ %.1.i711.1, %bb.gw ] ; 3 uses
  %i.akc = icmp ult i32 %.0.lcssa.i713, %.286.i399905
  br i1 %i.akc, label %.preheader806.splitthread-pre-split, label %.loopexit, !llvm.loop !127

.loopexit:                                        ; preds = %zend_hash_iterators_lower_pos.exit716, %zend_hash_iterators_lower_pos.exit716.loopexit.us, %.preheader806.split.us.split.us, %bb.gg
  %.2.i412 = phi i32 [ %.0.i403913, %bb.gg ], [ %.1.i711.us.lcssa, %zend_hash_iterators_lower_pos.exit716.loopexit.us ], [ %i.aht, %.preheader806.split.us.split.us ], [ %.0.lcssa.i713, %zend_hash_iterators_lower_pos.exit716 ]
  %i.akd = add i32 %.274.i402911, 1
  %i.ake = getelementptr inbounds nuw i8, ptr %.379.i401910, i64 32
  br label %zend_array_dup_element.exit584

zend_array_dup_element.exit584:                   ; preds = %bb.ft, %.loopexit
  %.480.i405 = phi ptr [ %i.ake, %.loopexit ], [ %.379.i401910, %bb.ft ]
  %.375.i406 = phi i32 [ %i.akd, %.loopexit ], [ %.274.i402911, %bb.ft ] ; 2 uses
  %.3.i407 = phi i32 [ %.2.i412, %.loopexit ], [ %.0.i403913, %bb.ft ]
  %i.akf = add i32 %.286.i399905, 1
  %i.akg = getelementptr inbounds nuw i8, ptr %.283.i400909, i64 32 ; 2 uses
  %.not91.i404 = icmp eq ptr %i.akg, %i.hk
  br i1 %.not91.i404, label %zend_array_dup_elements.exit480, label %.lr.ph914, !llvm.loop !124

bb.gx:                                            ; preds = %bb.ex, %bb.ez, %bb.ey
  %i.akh = load i32, ptr %i.fx, align 4, !tbaa !39
  %i.aki = trunc i64 %i.abp to i32
  %i.akj = or i32 %i.akh, %i.aki
  %i.akk = load ptr, ptr %i.gw, align 8, !tbaa !31
  %i.akl = sext i32 %i.akj to i64
  %i.akm = getelementptr inbounds [4 x i8], ptr %i.akk, i64 %i.akl ; 2 uses
  %i.akn = load i32, ptr %i.akm, align 4, !tbaa !40
  %i.ako = getelementptr inbounds nuw i8, ptr %.076.i397, i64 12
  store i32 %i.akn, ptr %i.ako, align 4, !tbaa !31
  store i32 %.084.i395, ptr %i.akm, align 4, !tbaa !40
  %i.akp = add i32 %.084.i395, 1                  ; 2 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %.081.i396, i64 32 ; 2 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %.076.i397, i64 32
  %.not94.i421 = icmp eq ptr %i.akq, %i.hk
  br i1 %.not94.i421, label %zend_array_dup_elements.exit480, label %bb.eo, !llvm.loop !125

bb.gy:                                            ; preds = %bb.el
  br i1 %.not.i394, label %.preheader1127, label %bb.gz, !prof !45

bb.gz:                                            ; preds = %bb.gy
  tail call fastcc void @zend_array_dup_ht_iterators(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  br label %.preheader1127

.preheader1127:                                   ; preds = %bb.gz, %bb.gy
  br label %bb.ha

bb.ha:                                            ; preds = %.preheader1127, %bb.jm
  %.084.i = phi i32 [ %i.auo, %bb.jm ], [ 0, %.preheader1127 ] ; 7 uses
  %.081.i = phi ptr [ %i.aup, %bb.jm ], [ %i.hi, %.preheader1127 ] ; 7 uses
  %.076.i = phi ptr [ %i.auq, %bb.jm ], [ %i.gv, %.preheader1127 ] ; 8 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %.081.i, i64 8
  %i.akt = load i32, ptr %i.aks, align 8          ; 2 uses
  %i.aku = icmp eq i32 %i.akt, 12
  br i1 %i.aku, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.akv = load ptr, ptr %.081.i, align 8, !tbaa !31 ; 2 uses
  %.phi.trans.insert957 = getelementptr inbounds nuw i8, ptr %i.akv, i64 8
  %.pre958 = load i32, ptr %.phi.trans.insert957, align 8
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %i.akw = phi i32 [ %i.akt, %bb.ha ], [ %.pre958, %bb.hb ] ; 3 uses
  %.026.i.i629 = phi ptr [ %.081.i, %bb.ha ], [ %i.akv, %bb.hb ] ; 5 uses
  %i.akx = icmp eq i32 %i.akw, 0
  br i1 %i.akx, label %zend_array_dup_element.exit643, label %bb.hd, !prof !30

bb.hd:                                            ; preds = %bb.hc
  %i.aky = and i32 %i.akw, 65280
  %.not.i22.i631 = icmp eq i32 %i.aky, 0
  br i1 %.not.i22.i631, label %bb.hk, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.akz = and i32 %i.akw, 255
  %i.ala = icmp eq i32 %i.akz, 10
  br i1 %i.ala, label %bb.hf, label %bb.hj

bb.hf:                                            ; preds = %bb.he
  %i.alb = load ptr, ptr %.026.i.i629, align 8, !tbaa !31 ; 3 uses
  %i.alc = load i32, ptr %i.alb, align 4, !tbaa !49
  %i.ald = icmp eq i32 %i.alc, 1
  br i1 %i.ald, label %bb.hg, label %bb.hj

bb.hg:                                            ; preds = %bb.hf
  %i.ale = getelementptr inbounds nuw i8, ptr %i.alb, i64 8 ; 3 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %i.alb, i64 16 ; 2 uses
  %i.alg = load i8, ptr %i.alf, align 8, !tbaa !31
  %.not27.i.i640 = icmp eq i8 %i.alg, 7
  br i1 %.not27.i.i640, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.alh = load ptr, ptr %i.ale, align 8, !tbaa !31
  %.not28.i.i642 = icmp eq ptr %i.alh, %0
  br i1 %.not28.i.i642, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %i.ali = load i32, ptr %i.alf, align 8, !tbaa !31
  %i.alj = and i32 %i.ali, 65280
  %.not29.i.i641 = icmp eq i32 %i.alj, 0
  br i1 %.not29.i.i641, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh, %bb.hf, %bb.he
  %.2.i.i632 = phi ptr [ %i.ale, %bb.hi ], [ %.026.i.i629, %bb.hh ], [ %.026.i.i629, %bb.hf ], [ %.026.i.i629, %bb.he ] ; 2 uses
  %i.alk = load ptr, ptr %.2.i.i632, align 8, !tbaa !31 ; 2 uses
  %i.all = load i32, ptr %i.alk, align 4, !tbaa !49
  %i.alm = add i32 %i.all, 1
  store i32 %i.alm, ptr %i.alk, align 4, !tbaa !49
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hd, %bb.hi, %bb.hj
  %.3.i.i633 = phi ptr [ %.2.i.i632, %bb.hj ], [ %i.ale, %bb.hi ], [ %.026.i.i629, %bb.hd ] ; 2 uses
  %i.aln = load ptr, ptr %.3.i.i633, align 8, !tbaa !31
  %i.alo = getelementptr inbounds nuw i8, ptr %.3.i.i633, i64 8
  %i.alp = load i32, ptr %i.alo, align 8, !tbaa !31
  store ptr %i.aln, ptr %.076.i, align 8, !tbaa !31
  %i.alq = getelementptr inbounds nuw i8, ptr %.076.i, i64 8
  store i32 %i.alp, ptr %i.alq, align 8, !tbaa !31
  %i.alr = getelementptr inbounds nuw i8, ptr %.081.i, i64 16
  %i.als = load i64, ptr %i.alr, align 8, !tbaa !46 ; 2 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %.076.i, i64 16
  store i64 %i.als, ptr %i.alt, align 8, !tbaa !46
  %i.alu = getelementptr inbounds nuw i8, ptr %.081.i, i64 24
  %i.alv = load ptr, ptr %i.alu, align 8, !tbaa !44 ; 5 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %.076.i, i64 24
  store ptr %i.alv, ptr %i.alw, align 8, !tbaa !44
  %.not.i636 = icmp eq ptr %i.alv, null
  br i1 %.not.i636, label %bb.jm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alv, i64 4
  %i.aly = load i32, ptr %i.alx, align 4, !tbaa !31
  %i.alz = and i32 %i.aly, 64
  %.not.i.i637 = icmp eq i32 %i.alz, 0
  br i1 %.not.i.i637, label %bb.hm, label %bb.jm

bb.hm:                                            ; preds = %bb.hl
  %i.ama = load i32, ptr %i.alv, align 4, !tbaa !49
  %i.amb = add i32 %i.ama, 1
  store i32 %i.amb, ptr %i.alv, align 4, !tbaa !49
  br label %bb.jm

zend_array_dup_element.exit643:                   ; preds = %bb.hc
  %i.amc = add i32 %.084.i, 1                     ; 5 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %.081.i, i64 32 ; 4 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 3 uses
  %i.amf = load i8, ptr %i.ame, align 2, !tbaa !31
  %.not90.i = icmp eq i8 %i.amf, 0
  br i1 %.not90.i, label %.preheader809, label %bb.ic, !prof !45

.preheader809:                                    ; preds = %zend_array_dup_element.exit643
  %.not93.i895 = icmp eq ptr %i.amd, %i.hk
  br i1 %.not93.i895, label %zend_array_dup_elements.exit480, label %.lr.ph900

.lr.ph900:                                        ; preds = %.preheader809, %zend_array_dup_element.exit613
  %.072.i899 = phi i32 [ %.173.i, %zend_array_dup_element.exit613 ], [ %.084.i, %.preheader809 ] ; 4 uses
  %.177.i898 = phi ptr [ %.278.i, %zend_array_dup_element.exit613 ], [ %.076.i, %.preheader809 ] ; 7 uses
  %.182.i897 = phi ptr [ %i.aof, %zend_array_dup_element.exit613 ], [ %i.amd, %.preheader809 ] ; 6 uses
  %.185.i896 = phi i32 [ %i.aoe, %zend_array_dup_element.exit613 ], [ %i.amc, %.preheader809 ] ; 2 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %.182.i897, i64 8
  %i.amh = load i32, ptr %i.amg, align 8          ; 2 uses
  %i.ami = icmp eq i32 %i.amh, 12
  br i1 %i.ami, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %.lr.ph900
  %i.amj = load ptr, ptr %.182.i897, align 8, !tbaa !31 ; 2 uses
  %.phi.trans.insert961 = getelementptr inbounds nuw i8, ptr %i.amj, i64 8
  %.pre962 = load i32, ptr %.phi.trans.insert961, align 8
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %.lr.ph900
  %i.amk = phi i32 [ %i.amh, %.lr.ph900 ], [ %.pre962, %bb.hn ] ; 3 uses
  %.026.i.i599 = phi ptr [ %.182.i897, %.lr.ph900 ], [ %i.amj, %bb.hn ] ; 5 uses
  %i.aml = icmp eq i32 %i.amk, 0
  br i1 %i.aml, label %zend_array_dup_element.exit613, label %bb.hp, !prof !30

bb.hp:                                            ; preds = %bb.ho
  %i.amm = and i32 %i.amk, 65280
  %.not.i22.i601 = icmp eq i32 %i.amm, 0
  br i1 %.not.i22.i601, label %bb.hw, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.amn = and i32 %i.amk, 255
  %i.amo = icmp eq i32 %i.amn, 10
  br i1 %i.amo, label %bb.hr, label %bb.hv

bb.hr:                                            ; preds = %bb.hq
  %i.amp = load ptr, ptr %.026.i.i599, align 8, !tbaa !31 ; 3 uses
  %i.amq = load i32, ptr %i.amp, align 4, !tbaa !49
  %i.amr = icmp eq i32 %i.amq, 1
  br i1 %i.amr, label %bb.hs, label %bb.hv

bb.hs:                                            ; preds = %bb.hr
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amp, i64 8 ; 3 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amp, i64 16 ; 2 uses
  %i.amu = load i8, ptr %i.amt, align 8, !tbaa !31
  %.not27.i.i610 = icmp eq i8 %i.amu, 7
  br i1 %.not27.i.i610, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.amv = load ptr, ptr %i.ams, align 8, !tbaa !31
  %.not28.i.i612 = icmp eq ptr %i.amv, %0
  br i1 %.not28.i.i612, label %bb.hv, label %bb.hu

end_hunk_3
begin_hunk_4_@zend_array_dup:bb.a
  %i.aom = add nsw i64 %.idx.i717, -16            ; 2 uses
  %i.aon = and i64 %i.aom, 16
  %lcmp.mod1166.not.not = icmp eq i64 %i.aon, 0
  br i1 %lcmp.mod1166.not.not, label %.lr.ph.i719.prol, label %.lr.ph.i719.prol.loopexit

.lr.ph.i719.prol:                                 ; preds = %.lr.ph.i719.preheader
  %i.aoo = load ptr, ptr %i.aoi, align 8, !tbaa !89
  %i.aop = icmp eq ptr %i.aoo, %i.a
  br i1 %i.aop, label %bb.id, label %.lr.ph.i719.prol.loopexit.unr-lcssa

bb.id:                                            ; preds = %.lr.ph.i719.prol
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aoi, i64 8
  %i.aor = load i32, ptr %i.aoq, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i725.prol = icmp ult i32 %i.aor, %i.amc
  %i.aos = tail call i32 @llvm.umin.i32(i32 %i.aor, i32 %i.aog)
  %spec.select.i726.prol = select i1 %.not14.not.i725.prol, i32 %i.aog, i32 %i.aos
  br label %.lr.ph.i719.prol.loopexit.unr-lcssa

.lr.ph.i719.prol.loopexit.unr-lcssa:              ; preds = %bb.id, %.lr.ph.i719.prol
  %.1.i722.prol = phi i32 [ %spec.select.i726.prol, %bb.id ], [ %i.aog, %.lr.ph.i719.prol ] ; 2 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aoi, i64 16
  br label %.lr.ph.i719.prol.loopexit

.lr.ph.i719.prol.loopexit:                        ; preds = %.lr.ph.i719.prol.loopexit.unr-lcssa, %.lr.ph.i719.preheader
  %.1.i722.lcssa.unr = phi i32 [ poison, %.lr.ph.i719.preheader ], [ %.1.i722.prol, %.lr.ph.i719.prol.loopexit.unr-lcssa ]
  %.017.i720.unr = phi i32 [ %i.aog, %.lr.ph.i719.preheader ], [ %.1.i722.prol, %.lr.ph.i719.prol.loopexit.unr-lcssa ]
  %.01216.i721.unr = phi ptr [ %i.aoi, %.lr.ph.i719.preheader ], [ %i.aot, %.lr.ph.i719.prol.loopexit.unr-lcssa ]
  %i.aou = icmp eq i64 %i.aom, 0
  br i1 %i.aou, label %zend_hash_iterators_lower_pos.exit727, label %.lr.ph.i719

.lr.ph.i719:                                      ; preds = %.lr.ph.i719.prol.loopexit, %bb.ig
  %.017.i720 = phi i32 [ %.1.i722.1, %bb.ig ], [ %.017.i720.unr, %.lr.ph.i719.prol.loopexit ] ; 3 uses
  %.01216.i721 = phi ptr [ %i.apg, %bb.ig ], [ %.01216.i721.unr, %.lr.ph.i719.prol.loopexit ] ; 5 uses
  %i.aov = load ptr, ptr %.01216.i721, align 8, !tbaa !89
  %i.aow = icmp eq ptr %i.aov, %i.a
  br i1 %i.aow, label %bb.ie, label %.lr.ph.i719.1

bb.ie:                                            ; preds = %.lr.ph.i719
  %i.aox = getelementptr inbounds nuw i8, ptr %.01216.i721, i64 8
  %i.aoy = load i32, ptr %i.aox, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i725 = icmp ult i32 %i.aoy, %i.amc
  %i.aoz = tail call i32 @llvm.umin.i32(i32 %i.aoy, i32 %.017.i720)
  %spec.select.i726 = select i1 %.not14.not.i725, i32 %.017.i720, i32 %i.aoz
  br label %.lr.ph.i719.1

.lr.ph.i719.1:                                    ; preds = %bb.ie, %.lr.ph.i719
  %.1.i722 = phi i32 [ %spec.select.i726, %bb.ie ], [ %.017.i720, %.lr.ph.i719 ] ; 3 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %.01216.i721, i64 16
  %i.apb = load ptr, ptr %i.apa, align 8, !tbaa !89
  %i.apc = icmp eq ptr %i.apb, %i.a
  br i1 %i.apc, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %.lr.ph.i719.1
  %i.apd = getelementptr inbounds nuw i8, ptr %.01216.i721, i64 24
  %i.ape = load i32, ptr %i.apd, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i725.1 = icmp ult i32 %i.ape, %i.amc
  %i.apf = tail call i32 @llvm.umin.i32(i32 %i.ape, i32 %.1.i722)
  %spec.select.i726.1 = select i1 %.not14.not.i725.1, i32 %.1.i722, i32 %i.apf
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %.lr.ph.i719.1
  %.1.i722.1 = phi i32 [ %spec.select.i726.1, %bb.if ], [ %.1.i722, %.lr.ph.i719.1 ] ; 2 uses
  %i.apg = getelementptr inbounds nuw i8, ptr %.01216.i721, i64 32 ; 2 uses
  %.not.i723.1 = icmp eq ptr %i.apg, %i.aol
  br i1 %.not.i723.1, label %zend_hash_iterators_lower_pos.exit727, label %.lr.ph.i719, !llvm.loop !0

zend_hash_iterators_lower_pos.exit727:            ; preds = %.lr.ph.i719.prol.loopexit, %bb.ig, %bb.ic
  %.0.lcssa.i724 = phi i32 [ %i.aog, %bb.ic ], [ %.1.i722.lcssa.unr, %.lr.ph.i719.prol.loopexit ], [ %.1.i722.1, %bb.ig ]
  %.not91.i883 = icmp eq ptr %i.amd, %i.hk
  br i1 %.not91.i883, label %zend_array_dup_elements.exit480, label %.lr.ph893

.lr.ph893:                                        ; preds = %zend_hash_iterators_lower_pos.exit727, %zend_array_dup_element.exit628
  %.0.i393892 = phi i32 [ %.3.i, %zend_array_dup_element.exit628 ], [ %.0.lcssa.i724, %zend_hash_iterators_lower_pos.exit727 ] ; 5 uses
  %.274.i890 = phi i32 [ %.375.i, %zend_array_dup_element.exit628 ], [ %.084.i, %zend_hash_iterators_lower_pos.exit727 ] ; 7 uses
  %.379.i889 = phi ptr [ %.480.i, %zend_array_dup_element.exit628 ], [ %.076.i, %zend_hash_iterators_lower_pos.exit727 ] ; 7 uses
  %.283.i888 = phi ptr [ %i.auf, %zend_array_dup_element.exit628 ], [ %i.amd, %zend_hash_iterators_lower_pos.exit727 ] ; 6 uses
  %.286.i884 = phi i32 [ %i.aue, %zend_array_dup_element.exit628 ], [ %i.amc, %zend_hash_iterators_lower_pos.exit727 ] ; 6 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %.283.i888, i64 8
  %i.api = load i32, ptr %i.aph, align 8          ; 2 uses
  %i.apj = icmp eq i32 %i.api, 12
  br i1 %i.apj, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %.lr.ph893
  %i.apk = load ptr, ptr %.283.i888, align 8, !tbaa !31 ; 2 uses
  %.phi.trans.insert959 = getelementptr inbounds nuw i8, ptr %i.apk, i64 8
  %.pre960 = load i32, ptr %.phi.trans.insert959, align 8
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %.lr.ph893
  %i.apl = phi i32 [ %i.api, %.lr.ph893 ], [ %.pre960, %bb.ih ] ; 3 uses
  %.026.i.i614 = phi ptr [ %.283.i888, %.lr.ph893 ], [ %i.apk, %bb.ih ] ; 5 uses
  %i.apm = icmp eq i32 %i.apl, 0
  br i1 %i.apm, label %zend_array_dup_element.exit628, label %bb.ij, !prof !30

bb.ij:                                            ; preds = %bb.ii
  %i.apn = and i32 %i.apl, 65280
  %.not.i22.i616 = icmp eq i32 %i.apn, 0
  br i1 %.not.i22.i616, label %bb.iq, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.apo = and i32 %i.apl, 255
  %i.app = icmp eq i32 %i.apo, 10
  br i1 %i.app, label %bb.il, label %bb.ip

bb.il:                                            ; preds = %bb.ik
  %i.apq = load ptr, ptr %.026.i.i614, align 8, !tbaa !31 ; 3 uses
  %i.apr = load i32, ptr %i.apq, align 4, !tbaa !49
  %i.aps = icmp eq i32 %i.apr, 1
  br i1 %i.aps, label %bb.im, label %bb.ip

bb.im:                                            ; preds = %bb.il
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apq, i64 8 ; 3 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apq, i64 16 ; 2 uses
  %i.apv = load i8, ptr %i.apu, align 8, !tbaa !31
  %.not27.i.i625 = icmp eq i8 %i.apv, 7
  br i1 %.not27.i.i625, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  %i.apw = load ptr, ptr %i.apt, align 8, !tbaa !31
  %.not28.i.i627 = icmp eq ptr %i.apw, %0
  br i1 %.not28.i.i627, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im
  %i.apx = load i32, ptr %i.apu, align 8, !tbaa !31
  %i.apy = and i32 %i.apx, 65280
  %.not29.i.i626 = icmp eq i32 %i.apy, 0
  br i1 %.not29.i.i626, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.in, %bb.il, %bb.ik
  %.2.i.i617 = phi ptr [ %i.apt, %bb.io ], [ %.026.i.i614, %bb.in ], [ %.026.i.i614, %bb.il ], [ %.026.i.i614, %bb.ik ] ; 2 uses
  %i.apz = load ptr, ptr %.2.i.i617, align 8, !tbaa !31 ; 2 uses
  %i.aqa = load i32, ptr %i.apz, align 4, !tbaa !49
  %i.aqb = add i32 %i.aqa, 1
  store i32 %i.aqb, ptr %i.apz, align 4, !tbaa !49
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ij, %bb.io, %bb.ip
  %.3.i.i618 = phi ptr [ %.2.i.i617, %bb.ip ], [ %i.apt, %bb.io ], [ %.026.i.i614, %bb.ij ] ; 2 uses
  %i.aqc = load ptr, ptr %.3.i.i618, align 8, !tbaa !31
  %i.aqd = getelementptr inbounds nuw i8, ptr %.3.i.i618, i64 8
  %i.aqe = load i32, ptr %i.aqd, align 8, !tbaa !31
  store ptr %i.aqc, ptr %.379.i889, align 8, !tbaa !31
  %i.aqf = getelementptr inbounds nuw i8, ptr %.379.i889, i64 8
  store i32 %i.aqe, ptr %i.aqf, align 8, !tbaa !31
  %i.aqg = getelementptr inbounds nuw i8, ptr %.283.i888, i64 16
  %i.aqh = load i64, ptr %i.aqg, align 8, !tbaa !46 ; 2 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %.379.i889, i64 16
  store i64 %i.aqh, ptr %i.aqi, align 8, !tbaa !46
  %i.aqj = getelementptr inbounds nuw i8, ptr %.283.i888, i64 24
  %i.aqk = load ptr, ptr %i.aqj, align 8, !tbaa !44 ; 5 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %.379.i889, i64 24
  store ptr %i.aqk, ptr %i.aql, align 8, !tbaa !44
  %.not.i621 = icmp eq ptr %i.aqk, null
  br i1 %.not.i621, label %bb.it, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqk, i64 4
  %i.aqn = load i32, ptr %i.aqm, align 4, !tbaa !31
  %i.aqo = and i32 %i.aqn, 64
  %.not.i.i622 = icmp eq i32 %i.aqo, 0
  br i1 %.not.i.i622, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  %i.aqp = load i32, ptr %i.aqk, align 4, !tbaa !49
  %i.aqq = add i32 %i.aqp, 1
  store i32 %i.aqq, ptr %i.aqk, align 4, !tbaa !49
  br label %bb.it

bb.it:                                            ; preds = %bb.iq, %bb.is, %bb.ir
  %i.aqr = load i32, ptr %i.fx, align 4, !tbaa !39
  %i.aqs = trunc i64 %i.aqh to i32
  %i.aqt = or i32 %i.aqr, %i.aqs
  %i.aqu = load ptr, ptr %i.gw, align 8, !tbaa !31
  %i.aqv = sext i32 %i.aqt to i64                 ; 2 uses
  %i.aqw = getelementptr inbounds [4 x i8], ptr %i.aqu, i64 %i.aqv
  %i.aqx = load i32, ptr %i.aqw, align 4, !tbaa !40
  %i.aqy = getelementptr inbounds nuw i8, ptr %.379.i889, i64 12
  store i32 %i.aqx, ptr %i.aqy, align 4, !tbaa !31
  %i.aqz = load ptr, ptr %i.gw, align 8, !tbaa !31
  %i.ara = getelementptr inbounds [4 x i8], ptr %i.aqz, i64 %i.aqv
  store i32 %.274.i890, ptr %i.ara, align 4, !tbaa !40
  %i.arb = load i32, ptr %i.gb, align 4, !tbaa !52
  %i.arc = icmp eq i32 %i.arb, %.286.i884
  br i1 %i.arc, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  store i32 %.274.i890, ptr %i.gg, align 4, !tbaa !52
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iu, %bb.it
  %.not92.i = icmp ult i32 %.286.i884, %.0.i393892
  br i1 %.not92.i, label %.loopexit812, label %.preheader811, !prof !45

.preheader811:                                    ; preds = %bb.iv
  %i.ard = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1112), align 8 ; 13 uses
  %i.are = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1108), align 4 ; 2 uses
  %i.arf = zext i32 %i.are to i64
  %.idx.i728 = shl nuw nsw i64 %i.arf, 4          ; 3 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %i.ard, i64 %.idx.i728 ; 3 uses
  %.not9.i729 = icmp eq i32 %i.are, 0             ; 3 uses
  %i.arh = load i8, ptr %i.ame, align 2, !tbaa !31
  %i.ari = icmp eq i8 %i.arh, 0
  br i1 %i.ari, label %.preheader811.split.us, label %.preheader811.split.preheader, !prof !45

.preheader811.split.preheader:                    ; preds = %.preheader811
  %i.arj = add nsw i64 %.idx.i728, -16            ; 4 uses
  %i.ark = and i64 %i.arj, 16
  %lcmp.mod1168.not.not = icmp eq i64 %i.ark, 0
  %i.arl = getelementptr inbounds nuw i8, ptr %i.ard, i64 8 ; 2 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %i.ard, i64 16 ; 3 uses
  %i.arn = icmp eq i64 %i.arj, 0
  %i.aro = and i64 %i.arj, 16
  %lcmp.mod1170.not.not = icmp eq i64 %i.aro, 0
  %i.arp = getelementptr inbounds nuw i8, ptr %i.ard, i64 8
  %i.arq = getelementptr inbounds nuw i8, ptr %i.ard, i64 16 ; 2 uses
  %i.arr = icmp eq i64 %i.arj, 0
  br label %.preheader811.split

.preheader811.split.us:                           ; preds = %.preheader811
  %i.ars = load i32, ptr %i.aoh, align 8, !tbaa !50 ; 7 uses
  br i1 %.not9.i729, label %.preheader811.split.us.split.us, label %zend_hash_iterators_update.exit.i.us.preheader

zend_hash_iterators_update.exit.i.us.preheader:   ; preds = %.preheader811.split.us
  %i.art = add nsw i64 %.idx.i728, -16            ; 2 uses
  %i.aru = and i64 %i.art, 16
  %lcmp.mod1172.not.not = icmp eq i64 %i.aru, 0
  %i.arv = getelementptr inbounds nuw i8, ptr %i.ard, i64 8
  %i.arw = getelementptr inbounds nuw i8, ptr %i.ard, i64 16 ; 2 uses
  %i.arx = icmp eq i64 %i.art, 0
  br label %zend_hash_iterators_update.exit.i.us

.preheader811.split.us.split.us:                  ; preds = %.preheader811.split.us
  %i.ary = icmp ult i32 %i.ars, %.286.i884
  br i1 %i.ary, label %zend_hash_iterators_update.exit.i.us.us, label %.loopexit812, !llvm.loop !122

zend_hash_iterators_update.exit.i.us.us:          ; preds = %.preheader811.split.us.split.us, %zend_hash_iterators_update.exit.i.us.us
  br label %zend_hash_iterators_update.exit.i.us.us

zend_hash_iterators_update.exit.i.us:             ; preds = %zend_hash_iterators_update.exit.i.us.preheader, %zend_hash_iterators_lower_pos.exit744.loopexit.us
  %.1.i.us = phi i32 [ %.1.i739.us.lcssa, %zend_hash_iterators_lower_pos.exit744.loopexit.us ], [ %.0.i393892, %zend_hash_iterators_update.exit.i.us.preheader ]
  %i.arz = add i32 %.1.i.us, 1                    ; 3 uses
  br i1 %lcmp.mod1172.not.not, label %.lr.ph.i736.us.prol, label %.lr.ph.i736.us.prol.loopexit

.lr.ph.i736.us.prol:                              ; preds = %zend_hash_iterators_update.exit.i.us
  %i.asa = load ptr, ptr %i.ard, align 8, !tbaa !89
  %i.asb = icmp eq ptr %i.asa, %i.a
  br i1 %i.asb, label %bb.iw, label %.lr.ph.i736.us.prol.loopexit

bb.iw:                                            ; preds = %.lr.ph.i736.us.prol
  %i.asc = load i32, ptr %i.arv, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i742.us.prol = icmp ult i32 %i.asc, %i.arz
  %i.asd = tail call i32 @llvm.umin.i32(i32 %i.asc, i32 %i.ars)
  %spec.select.i743.us.prol = select i1 %.not14.not.i742.us.prol, i32 %i.ars, i32 %i.asd ; 2 uses
  br label %.lr.ph.i736.us.prol.loopexit

.lr.ph.i736.us.prol.loopexit:                     ; preds = %.lr.ph.i736.us.prol, %bb.iw, %zend_hash_iterators_update.exit.i.us
  %.1.i739.us.lcssa.unr = phi i32 [ poison, %zend_hash_iterators_update.exit.i.us ], [ %spec.select.i743.us.prol, %bb.iw ], [ %i.ars, %.lr.ph.i736.us.prol ]
  %.017.i737.us.unr = phi i32 [ %i.ars, %zend_hash_iterators_update.exit.i.us ], [ %spec.select.i743.us.prol, %bb.iw ], [ %i.ars, %.lr.ph.i736.us.prol ]
  %.01216.i738.us.unr = phi ptr [ %i.ard, %zend_hash_iterators_update.exit.i.us ], [ %i.arw, %bb.iw ], [ %i.arw, %.lr.ph.i736.us.prol ]
  br i1 %i.arx, label %zend_hash_iterators_lower_pos.exit744.loopexit.us, label %.lr.ph.i736.us

.lr.ph.i736.us:                                   ; preds = %.lr.ph.i736.us.prol.loopexit, %bb.iz
  %.017.i737.us = phi i32 [ %.1.i739.us.1, %bb.iz ], [ %.017.i737.us.unr, %.lr.ph.i736.us.prol.loopexit ] ; 3 uses
  %.01216.i738.us = phi ptr [ %i.asp, %bb.iz ], [ %.01216.i738.us.unr, %.lr.ph.i736.us.prol.loopexit ] ; 5 uses
  %i.ase = load ptr, ptr %.01216.i738.us, align 8, !tbaa !89
  %i.asf = icmp eq ptr %i.ase, %i.a
  br i1 %i.asf, label %bb.ix, label %.lr.ph.i736.us.1

bb.ix:                                            ; preds = %.lr.ph.i736.us
  %i.asg = getelementptr inbounds nuw i8, ptr %.01216.i738.us, i64 8
  %i.ash = load i32, ptr %i.asg, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i742.us = icmp ult i32 %i.ash, %i.arz
  %i.asi = tail call i32 @llvm.umin.i32(i32 %i.ash, i32 %.017.i737.us)
  %spec.select.i743.us = select i1 %.not14.not.i742.us, i32 %.017.i737.us, i32 %i.asi
  br label %.lr.ph.i736.us.1

.lr.ph.i736.us.1:                                 ; preds = %bb.ix, %.lr.ph.i736.us
  %.1.i739.us = phi i32 [ %spec.select.i743.us, %bb.ix ], [ %.017.i737.us, %.lr.ph.i736.us ] ; 3 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %.01216.i738.us, i64 16
  %i.ask = load ptr, ptr %i.asj, align 8, !tbaa !89
  %i.asl = icmp eq ptr %i.ask, %i.a
  br i1 %i.asl, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %.lr.ph.i736.us.1
  %i.asm = getelementptr inbounds nuw i8, ptr %.01216.i738.us, i64 24
  %i.asn = load i32, ptr %i.asm, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i742.us.1 = icmp ult i32 %i.asn, %i.arz
  %i.aso = tail call i32 @llvm.umin.i32(i32 %i.asn, i32 %.1.i739.us)
  %spec.select.i743.us.1 = select i1 %.not14.not.i742.us.1, i32 %.1.i739.us, i32 %i.aso
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %.lr.ph.i736.us.1
  %.1.i739.us.1 = phi i32 [ %spec.select.i743.us.1, %bb.iy ], [ %.1.i739.us, %.lr.ph.i736.us.1 ] ; 2 uses
  %i.asp = getelementptr inbounds nuw i8, ptr %.01216.i738.us, i64 32 ; 2 uses
  %.not.i740.us.1 = icmp eq ptr %i.asp, %i.arg
  br i1 %.not.i740.us.1, label %zend_hash_iterators_lower_pos.exit744.loopexit.us, label %.lr.ph.i736.us, !llvm.loop !0

zend_hash_iterators_lower_pos.exit744.loopexit.us: ; preds = %bb.iz, %.lr.ph.i736.us.prol.loopexit
  %.1.i739.us.lcssa = phi i32 [ %.1.i739.us.lcssa.unr, %.lr.ph.i736.us.prol.loopexit ], [ %.1.i739.us.1, %bb.iz ] ; 3 uses
  %i.asq = icmp ult i32 %.1.i739.us.lcssa, %.286.i884
  br i1 %i.asq, label %zend_hash_iterators_update.exit.i.us, label %.loopexit812, !llvm.loop !122

.preheader811.splitthread-pre-split:              ; preds = %zend_hash_iterators_lower_pos.exit744
  %.pr1053 = load i8, ptr %i.ame, align 2, !tbaa !31
  br label %.preheader811.split

.preheader811.split:                              ; preds = %.preheader811.split.preheader, %.preheader811.splitthread-pre-split
  %i.asr = phi i8 [ %.pr1053, %.preheader811.splitthread-pre-split ], [ 1, %.preheader811.split.preheader ]
  %.1.i = phi i32 [ %.0.lcssa.i741, %.preheader811.splitthread-pre-split ], [ %.0.i393892, %.preheader811.split.preheader ] ; 4 uses
  %.not.i.i = icmp eq i8 %i.asr, 0
  br i1 %.not.i.i, label %zend_hash_iterators_update.exit.i, label %bb.ja, !prof !45

bb.ja:                                            ; preds = %.preheader811.split
  br i1 %.not9.i729, label %zend_hash_iterators_update.exit.i.thread, label %.lr.ph.i730.preheader

.lr.ph.i730.preheader:                            ; preds = %bb.ja
  br i1 %lcmp.mod1168.not.not, label %.lr.ph.i730.prol, label %.lr.ph.i730.prol.loopexit

.lr.ph.i730.prol:                                 ; preds = %.lr.ph.i730.preheader
  %i.ass = load ptr, ptr %i.ard, align 8, !tbaa !89
  %i.ast = icmp eq ptr %i.ass, %i.a
  br i1 %i.ast, label %bb.jb, label %.lr.ph.i730.prol.loopexit

bb.jb:                                            ; preds = %.lr.ph.i730.prol
  %i.asu = load i32, ptr %i.arl, align 8, !tbaa !90
  %i.asv = icmp eq i32 %i.asu, %.1.i
  br i1 %i.asv, label %bb.jc, label %.lr.ph.i730.prol.loopexit

bb.jc:                                            ; preds = %bb.jb
  store i32 %.274.i890, ptr %i.arl, align 8, !tbaa !90
  br label %.lr.ph.i730.prol.loopexit

.lr.ph.i730.prol.loopexit:                        ; preds = %.lr.ph.i730.prol, %bb.jb, %bb.jc, %.lr.ph.i730.preheader
  %.010.i731.unr = phi ptr [ %i.ard, %.lr.ph.i730.preheader ], [ %i.arm, %bb.jc ], [ %i.arm, %bb.jb ], [ %i.arm, %.lr.ph.i730.prol ]
  br i1 %i.arn, label %zend_hash_iterators_update.exit.i, label %.lr.ph.i730

zend_hash_iterators_update.exit.i.thread:         ; preds = %bb.ja
  %i.asw = load i32, ptr %i.aoh, align 8, !tbaa !50
  br label %zend_hash_iterators_lower_pos.exit744

.lr.ph.i730:                                      ; preds = %.lr.ph.i730.prol.loopexit, %bb.jh
  %.010.i731 = phi ptr [ %i.ati, %bb.jh ], [ %.010.i731.unr, %.lr.ph.i730.prol.loopexit ] ; 5 uses
  %i.asx = load ptr, ptr %.010.i731, align 8, !tbaa !89
  %i.asy = icmp eq ptr %i.asx, %i.a
  br i1 %i.asy, label %bb.jd, label %.lr.ph.i730.1

bb.jd:                                            ; preds = %.lr.ph.i730
  %i.asz = getelementptr inbounds nuw i8, ptr %.010.i731, i64 8 ; 2 uses
  %i.ata = load i32, ptr %i.asz, align 8, !tbaa !90
  %i.atb = icmp eq i32 %i.ata, %.1.i
  br i1 %i.atb, label %bb.je, label %.lr.ph.i730.1

bb.je:                                            ; preds = %bb.jd
  store i32 %.274.i890, ptr %i.asz, align 8, !tbaa !90
  br label %.lr.ph.i730.1

.lr.ph.i730.1:                                    ; preds = %bb.je, %bb.jd, %.lr.ph.i730
  %i.atc = getelementptr inbounds nuw i8, ptr %.010.i731, i64 16
  %i.atd = load ptr, ptr %i.atc, align 8, !tbaa !89
  %i.ate = icmp eq ptr %i.atd, %i.a
  br i1 %i.ate, label %bb.jf, label %bb.jh

bb.jf:                                            ; preds = %.lr.ph.i730.1
  %i.atf = getelementptr inbounds nuw i8, ptr %.010.i731, i64 24 ; 2 uses
  %i.atg = load i32, ptr %i.atf, align 8, !tbaa !90
  %i.ath = icmp eq i32 %i.atg, %.1.i
  br i1 %i.ath, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %bb.jf
  store i32 %.274.i890, ptr %i.atf, align 8, !tbaa !90
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %bb.jf, %.lr.ph.i730.1
  %i.ati = getelementptr inbounds nuw i8, ptr %.010.i731, i64 32 ; 2 uses
  %.not.i732.1 = icmp eq ptr %i.ati, %i.arg
  br i1 %.not.i732.1, label %zend_hash_iterators_update.exit.i, label %.lr.ph.i730, !llvm.loop !1

zend_hash_iterators_update.exit.i:                ; preds = %.lr.ph.i730.prol.loopexit, %bb.jh, %.preheader811.split
  %i.atj = add i32 %.1.i, 1                       ; 3 uses
  %i.atk = load i32, ptr %i.aoh, align 8, !tbaa !50 ; 6 uses
  br i1 %.not9.i729, label %zend_hash_iterators_lower_pos.exit744, label %.lr.ph.i736.preheader

.lr.ph.i736.preheader:                            ; preds = %zend_hash_iterators_update.exit.i
  br i1 %lcmp.mod1170.not.not, label %.lr.ph.i736.prol, label %.lr.ph.i736.prol.loopexit

.lr.ph.i736.prol:                                 ; preds = %.lr.ph.i736.preheader
  %i.atl = load ptr, ptr %i.ard, align 8, !tbaa !89
  %i.atm = icmp eq ptr %i.atl, %i.a
  br i1 %i.atm, label %bb.ji, label %.lr.ph.i736.prol.loopexit

bb.ji:                                            ; preds = %.lr.ph.i736.prol
  %i.atn = load i32, ptr %i.arp, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i742.prol = icmp ult i32 %i.atn, %i.atj
  %i.ato = tail call i32 @llvm.umin.i32(i32 %i.atn, i32 %i.atk)
  %spec.select.i743.prol = select i1 %.not14.not.i742.prol, i32 %i.atk, i32 %i.ato ; 2 uses
  br label %.lr.ph.i736.prol.loopexit

.lr.ph.i736.prol.loopexit:                        ; preds = %.lr.ph.i736.prol, %bb.ji, %.lr.ph.i736.preheader
  %.1.i739.lcssa.unr = phi i32 [ poison, %.lr.ph.i736.preheader ], [ %spec.select.i743.prol, %bb.ji ], [ %i.atk, %.lr.ph.i736.prol ]
  %.017.i737.unr = phi i32 [ %i.atk, %.lr.ph.i736.preheader ], [ %spec.select.i743.prol, %bb.ji ], [ %i.atk, %.lr.ph.i736.prol ]
  %.01216.i738.unr = phi ptr [ %i.ard, %.lr.ph.i736.preheader ], [ %i.arq, %bb.ji ], [ %i.arq, %.lr.ph.i736.prol ]
  br i1 %i.arr, label %zend_hash_iterators_lower_pos.exit744, label %.lr.ph.i736

.lr.ph.i736:                                      ; preds = %.lr.ph.i736.prol.loopexit, %bb.jl
  %.017.i737 = phi i32 [ %.1.i739.1, %bb.jl ], [ %.017.i737.unr, %.lr.ph.i736.prol.loopexit ] ; 3 uses
  %.01216.i738 = phi ptr [ %i.aua, %bb.jl ], [ %.01216.i738.unr, %.lr.ph.i736.prol.loopexit ] ; 5 uses
  %i.atp = load ptr, ptr %.01216.i738, align 8, !tbaa !89
  %i.atq = icmp eq ptr %i.atp, %i.a
  br i1 %i.atq, label %bb.jj, label %.lr.ph.i736.1

bb.jj:                                            ; preds = %.lr.ph.i736
  %i.atr = getelementptr inbounds nuw i8, ptr %.01216.i738, i64 8
  %i.ats = load i32, ptr %i.atr, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i742 = icmp ult i32 %i.ats, %i.atj
  %i.att = tail call i32 @llvm.umin.i32(i32 %i.ats, i32 %.017.i737)
  %spec.select.i743 = select i1 %.not14.not.i742, i32 %.017.i737, i32 %i.att
  br label %.lr.ph.i736.1

.lr.ph.i736.1:                                    ; preds = %bb.jj, %.lr.ph.i736
  %.1.i739 = phi i32 [ %spec.select.i743, %bb.jj ], [ %.017.i737, %.lr.ph.i736 ] ; 3 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %.01216.i738, i64 16
  %i.atv = load ptr, ptr %i.atu, align 8, !tbaa !89
  %i.atw = icmp eq ptr %i.atv, %i.a
  br i1 %i.atw, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %.lr.ph.i736.1
  %i.atx = getelementptr inbounds nuw i8, ptr %.01216.i738, i64 24
  %i.aty = load i32, ptr %i.atx, align 8, !tbaa !90 ; 2 uses
  %.not14.not.i742.1 = icmp ult i32 %i.aty, %i.atj
  %i.atz = tail call i32 @llvm.umin.i32(i32 %i.aty, i32 %.1.i739)
  %spec.select.i743.1 = select i1 %.not14.not.i742.1, i32 %.1.i739, i32 %i.atz
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %.lr.ph.i736.1
  %.1.i739.1 = phi i32 [ %spec.select.i743.1, %bb.jk ], [ %.1.i739, %.lr.ph.i736.1 ] ; 2 uses
  %i.aua = getelementptr inbounds nuw i8, ptr %.01216.i738, i64 32 ; 2 uses
  %.not.i740.1 = icmp eq ptr %i.aua, %i.arg
  br i1 %.not.i740.1, label %zend_hash_iterators_lower_pos.exit744, label %.lr.ph.i736, !llvm.loop !0

zend_hash_iterators_lower_pos.exit744:            ; preds = %.lr.ph.i736.prol.loopexit, %bb.jl, %zend_hash_iterators_update.exit.i.thread, %zend_hash_iterators_update.exit.i
  %.0.lcssa.i741 = phi i32 [ %i.atk, %zend_hash_iterators_update.exit.i ], [ %i.asw, %zend_hash_iterators_update.exit.i.thread ], [ %.1.i739.lcssa.unr, %.lr.ph.i736.prol.loopexit ], [ %.1.i739.1, %bb.jl ] ; 3 uses
  %i.aub = icmp ult i32 %.0.lcssa.i741, %.286.i884
  br i1 %i.aub, label %.preheader811.splitthread-pre-split, label %.loopexit812, !llvm.loop !128

.loopexit812:                                     ; preds = %zend_hash_iterators_lower_pos.exit744, %zend_hash_iterators_lower_pos.exit744.loopexit.us, %.preheader811.split.us.split.us, %bb.iv
  %.2.i = phi i32 [ %.0.i393892, %bb.iv ], [ %.1.i739.us.lcssa, %zend_hash_iterators_lower_pos.exit744.loopexit.us ], [ %i.ars, %.preheader811.split.us.split.us ], [ %.0.lcssa.i741, %zend_hash_iterators_lower_pos.exit744 ]
  %i.auc = add i32 %.274.i890, 1
  %i.aud = getelementptr inbounds nuw i8, ptr %.379.i889, i64 32
  br label %zend_array_dup_element.exit628

zend_array_dup_element.exit628:                   ; preds = %bb.ii, %.loopexit812
  %.480.i = phi ptr [ %i.aud, %.loopexit812 ], [ %.379.i889, %bb.ii ]
  %.375.i = phi i32 [ %i.auc, %.loopexit812 ], [ %.274.i890, %bb.ii ] ; 2 uses
  %.3.i = phi i32 [ %.2.i, %.loopexit812 ], [ %.0.i393892, %bb.ii ]
  %i.aue = add i32 %.286.i884, 1
  %i.auf = getelementptr inbounds nuw i8, ptr %.283.i888, i64 32 ; 2 uses
  %.not91.i = icmp eq ptr %i.auf, %i.hk
  br i1 %.not91.i, label %zend_array_dup_elements.exit480, label %.lr.ph893, !llvm.loop !124

bb.jm:                                            ; preds = %bb.hk, %bb.hm, %bb.hl
  %i.aug = load i32, ptr %i.fx, align 4, !tbaa !39
  %i.auh = trunc i64 %i.als to i32
  %i.aui = or i32 %i.aug, %i.auh
  %i.auj = load ptr, ptr %i.gw, align 8, !tbaa !31
  %i.auk = sext i32 %i.aui to i64
  %i.aul = getelementptr inbounds [4 x i8], ptr %i.auj, i64 %i.auk ; 2 uses
  %i.aum = load i32, ptr %i.aul, align 4, !tbaa !40
  %i.aun = getelementptr inbounds nuw i8, ptr %.076.i, i64 12
  store i32 %i.aum, ptr %i.aun, align 4, !tbaa !31
  store i32 %.084.i, ptr %i.aul, align 4, !tbaa !40
  %i.auo = add i32 %.084.i, 1                     ; 2 uses
  %i.aup = getelementptr inbounds nuw i8, ptr %.081.i, i64 32 ; 2 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %.076.i, i64 32
  %.not94.i = icmp eq ptr %i.aup, %i.hk
  br i1 %.not94.i, label %zend_array_dup_elements.exit480, label %bb.ha, !llvm.loop !125

zend_array_dup_elements.exit480:                  ; preds = %bb.ek, %zend_array_dup_element.exit545, %zend_array_dup_element.exit532, %bb.ce, %zend_array_dup_element.exit508, %zend_array_dup_element.exit, %bb.jm, %zend_array_dup_element.exit628, %zend_array_dup_element.exit613, %bb.gx, %zend_array_dup_element.exit584, %zend_array_dup_element.exit570, %zend_hash_iterators_lower_pos.exit671, %.preheader821, %zend_hash_iterators_lower_pos.exit, %.preheader815, %zend_hash_iterators_lower_pos.exit727, %.preheader809, %zend_hash_iterators_lower_pos.exit699, %.preheader
  %.0371 = phi i32 [ %.173.i, %zend_array_dup_element.exit613 ], [ %.173.i449, %zend_array_dup_element.exit532 ], [ %.375.i406, %zend_array_dup_element.exit584 ], [ %i.ra, %bb.ce ], [ %.375.i464, %zend_array_dup_element.exit508 ], [ %.173.i420, %zend_array_dup_element.exit570 ], [ %.375.i435, %zend_array_dup_element.exit545 ], [ %i.akp, %bb.gx ], [ %.173.i478, %zend_array_dup_element.exit ], [ %i.auo, %bb.jm ], [ %.375.i, %zend_array_dup_element.exit628 ], [ %.084.i395, %.preheader ], [ %.084.i395, %zend_hash_iterators_lower_pos.exit699 ], [ %.084.i, %.preheader809 ], [ %.084.i, %zend_hash_iterators_lower_pos.exit727 ], [ %.084.i453, %.preheader815 ], [ %.084.i453, %zend_hash_iterators_lower_pos.exit ], [ %.084.i424, %.preheader821 ], [ %.084.i424, %zend_hash_iterators_lower_pos.exit671 ], [ %i.aak, %bb.ek ] ; 2 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %.0371, ptr %i.aur, align 8, !tbaa !50
  %i.aus = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %.0371, ptr %i.aus, align 4, !tbaa !51
  br label %zend_array_dup_packed_elements.exit391

zend_array_dup_packed_elements.exit391:           ; preds = %bb.z, %bb.y, %bb.p, %bb.o, %bb.f, %bb.e, %zend_array_dup_elements.exit480, %bb.b
  ret ptr %i.a
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @zend_hash_iterator_del(i32 noundef %0) local_unnamed_addr #15 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1112), align 8, !tbaa !86
  %i.b = zext i32 %0 to i64                       ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.b ; 3 uses
  %i.d = icmp ne i32 %0, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !89   ; 2 uses
  %magicptr = ptrtoint ptr %i.e to i64
  %magicptr.off = add i64 %magicptr, -1
  %switch = icmp ult i64 %magicptr.off, -2
  br i1 %switch, label %bb.b, label %bb.d, !prof !94

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 10 ; 2 uses
  %i.g = load i8, ptr %i.f, align 2, !tbaa !31    ; 3 uses
  %.not19 = icmp eq i8 %i.g, -1
  br i1 %.not19, label %bb.d, label %bb.c, !prof !30

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ne i8 %i.g, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add i8 %i.g, -1
  store i8 %i.i, ptr %i.f, align 2, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  store ptr null, ptr %i.c, align 8, !tbaa !89
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !93
  %.not20 = icmp eq i32 %i.k, %0
  br i1 %.not20, label %bb.f, label %bb.e, !prof !45

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @zend_hash_remove_iterator_copies(i32 noundef %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1108), align 4, !tbaa !87
  %i.m = add i32 %i.l, -1
  %i.n = icmp eq i32 %0, %i.m
  br i1 %i.n, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.f
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1112), align 8
  %.not2127 = icmp eq i32 %0, 0
  br i1 %.not2127, label %.critedge, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %.not21 = icmp eq i64 %i.p, 0
  br i1 %.not21, label %.critedge, label %.lr.ph, !llvm.loop !5

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %indvars.iv28 = phi i64 [ %i.p, %bb.g ], [ %i.b, %.preheader ] ; 2 uses
  %i.p = add nsw i64 %indvars.iv28, -1            ; 3 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !89
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %.critedge.split.loop.exit24, !llvm.loop !5

.critedge.split.loop.exit24:                      ; preds = %.lr.ph
  %i.t = trunc nuw i64 %indvars.iv28 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %.preheader, %.critedge.split.loop.exit24
  %.0.lcssa = phi i32 [ %i.t, %.critedge.split.loop.exit24 ], [ 0, %.preheader ], [ 0, %bb.g ]
  store i32 %.0.lcssa, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1108), align 4, !tbaa !87
  br label %bb.h

bb.h:                                             ; preds = %.critedge, %bb.f
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @zend_hash_remove_iterator_copies(i32 noundef range(i32 0, -1) %0) unnamed_addr #15 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1112), align 8, !tbaa !86 ; 2 uses
  %i.b = zext i32 %0 to i64
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !93   ; 2 uses
  %.not14 = icmp eq i32 %i.e, %0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %zend_hash_iterator_del.exit
  %.015 = phi i32 [ %i.i, %zend_hash_iterator_del.exit ], [ %i.e, %bb.a ] ; 7 uses
  %i.f = zext i32 %.015 to i64                    ; 3 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !93   ; 2 uses
  store i32 %.015, ptr %i.h, align 4, !tbaa !93
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1112), align 8, !tbaa !86
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.f ; 3 uses
  %i.l = icmp ne i32 %.015, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !89   ; 2 uses
  %magicptr.i = ptrtoint ptr %i.m to i64
  %magicptr.off.i = add i64 %magicptr.i, -1
  %switch.i = icmp ult i64 %magicptr.off.i, -2
  br i1 %switch.i, label %bb.b, label %bb.d, !prof !94

bb.b:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 10 ; 2 uses
  %i.o = load i8, ptr %i.n, align 2, !tbaa !31    ; 3 uses
  %.not19.i = icmp eq i8 %i.o, -1
  br i1 %.not19.i, label %bb.d, label %bb.c, !prof !30

bb.c:                                             ; preds = %bb.b
  %i.p = icmp ne i8 %i.o, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = add i8 %i.o, -1
  store i8 %i.q, ptr %i.n, align 2, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  store ptr null, ptr %i.k, align 8, !tbaa !89
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !93
  %.not20.i = icmp eq i32 %i.s, %.015
  br i1 %.not20.i, label %bb.f, label %bb.e, !prof !45

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @zend_hash_remove_iterator_copies(i32 noundef %.015), !inline_history !130
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1108), align 4, !tbaa !87
  %i.u = add i32 %i.t, -1
  %i.v = icmp eq i32 %.015, %i.u
  br i1 %i.v, label %.preheader, label %zend_hash_iterator_del.exit

.preheader:                                       ; preds = %bb.f
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1112), align 8
  %.not21.i24 = icmp eq i32 %.015, 0
  br i1 %.not21.i24, label %.critedge.i, label %.lr.ph26

bb.g:                                             ; preds = %.lr.ph26
  %.not21.i = icmp eq i64 %i.x, 0
  br i1 %.not21.i, label %.critedge.i, label %.lr.ph26, !llvm.loop !5

.lr.ph26:                                         ; preds = %.preheader, %bb.g
  %indvars.iv25 = phi i64 [ %i.x, %bb.g ], [ %i.f, %.preheader ] ; 2 uses
  %i.x = add nsw i64 %indvars.iv25, -1            ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !89
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.g, label %.critedge.i.split.loop.exit, !llvm.loop !5

.critedge.i.split.loop.exit:                      ; preds = %.lr.ph26
  %i.ab = trunc nuw i64 %indvars.iv25 to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %.preheader, %.critedge.i.split.loop.exit
  %.0.i.lcssa = phi i32 [ %i.ab, %.critedge.i.split.loop.exit ], [ 0, %.preheader ], [ 0, %bb.g ]
end_hunk_4
